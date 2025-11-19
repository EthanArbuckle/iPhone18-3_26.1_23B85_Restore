uint64_t sub_100032A34(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DBC8;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047CFC0;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100032B90(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[64] = *v4;
  return sub_100032C70;
}

void sub_100032C70(void ****a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = (*a1)[6];
  isEscapingClosureAtFileLocation = (*a1)[7];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_100040760;
    *(v7 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v7;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D038;
    v8 = _Block_copy(v2);
    v9 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100040760;
  *(v11 + 24) = v10;
  v2[4] = sub_10004076C;
  v2[5] = v11;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D0B0;
  v12 = _Block_copy(v2);
  v13 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_100032F6C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000404BC;
  *(v6 + 24) = v5;
  v11[4] = sub_10004076C;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047DEB8;
  v7 = _Block_copy(v11);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000330F0(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DC3C;
  *(v5 + 24) = v4;
  v11[4] = sub_10004076C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047D128;
  v6 = _Block_copy(v11);
  v7 = a1;

  v8 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_10003325C(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A7320);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[6] = *v4;
  return sub_100033358;
}

void sub_100033358(void ****a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 6);
  v3 = *v4;
  v6 = (*a1)[7];
  v5 = (*a1)[8];
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100040758;
    *(v15 + 24) = v14;
    v2[4] = sub_10004076C;
    v2[5] = v15;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D218;
    v16 = _Block_copy(v2);
    v17 = v3;

    v18 = v6;

    dispatch_sync(v5, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100040758;
  *(v8 + 24) = v7;
  v2[4] = sub_10004076C;
  v2[5] = v8;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D1A0;
  v9 = _Block_copy(v2);
  v10 = v3;
  v11 = v6;
  v12 = v10;

  dispatch_sync(v5, v9);

  _Block_release(v9);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_10003362C(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DCF8;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047D290;
  v6 = _Block_copy(v10);

  v7 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_10003379C(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A7328);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[6] = *v4;
  return sub_100033898;
}

void sub_100033898(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[7];
  v4 = (*a1)[8];
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10004068C;
    *(v12 + 24) = v11;
    v2[4] = sub_10004076C;
    v2[5] = v12;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D380;
    v13 = _Block_copy(v2);

    v14 = v5;

    dispatch_sync(v4, v13);

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10004068C;
  *(v7 + 24) = v6;
  v2[4] = sub_10004076C;
  v2[5] = v7;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D308;
  v8 = _Block_copy(v2);
  swift_retain_n();
  v9 = v5;

  dispatch_sync(v4, v8);

  _Block_release(v8);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_100033B48()
{
  sub_1000039E8(&qword_1004A7330);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_100033BC8(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10003DDA4;
  *(v7 + 24) = v6;
  v12[4] = sub_10004076C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10003885C;
  v12[3] = &unk_10047D3F8;
  v8 = _Block_copy(v12);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100033D28(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A7330);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[3] = *v4;
  return sub_100033E24;
}

void sub_100033E24(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[8];
  v4 = (*a1)[9];
  v6 = (*a1)[7];
  if ((a2 & 1) == 0)
  {
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v3;
    v12[4] = v6;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000406A8;
    *(v13 + 24) = v12;
    v2[4] = sub_10004076C;
    v2[5] = v13;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D4E8;
    v14 = _Block_copy(v2);
    v15 = v5;

    dispatch_sync(v4, v14);
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000406A8;
  *(v8 + 24) = v7;
  v2[4] = sub_10004076C;
  v2[5] = v8;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D470;
  v9 = _Block_copy(v2);

  v10 = v5;

  dispatch_sync(v4, v9);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1000340D4(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DE00;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047D560;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100034230(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[64] = *v4;
  return sub_100034310;
}

void sub_100034310(void ****a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = (*a1)[6];
  isEscapingClosureAtFileLocation = (*a1)[7];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_100040764;
    *(v7 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v7;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D5D8;
    v8 = _Block_copy(v2);
    v9 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100040764;
  *(v11 + 24) = v10;
  v2[4] = sub_10004076C;
  v2[5] = v11;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D650;
  v12 = _Block_copy(v2);
  v13 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

unint64_t sub_10003459C(unint64_t result)
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__allowedTries) = v2;
  return result;
}

uint64_t *(*sub_1000345B4(void *a1))(uint64_t *result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__allowedTries;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_1000345E8;
}

uint64_t *sub_1000345E8(uint64_t *result)
{
  v1 = *result;
  if (*result <= 1)
  {
    v1 = 1;
  }

  *(result[1] + result[2]) = v1;
  return result;
}

uint64_t sub_100034600()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100034644(int a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000346F4()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100034774(uint64_t *a1)
{
  sub_1000039E8(a1);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

uint64_t sub_1000347D8(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100040444;
  *(v5 + 24) = v4;
  v11[4] = sub_10004076C;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047DD50;
  v6 = _Block_copy(v11);
  v7 = a1;

  v8 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000349C8(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DE6C;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047D6C8;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100034B24(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[64] = *v4;
  return sub_100034C04;
}

void sub_100034C04(void ****a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = (*a1)[6];
  isEscapingClosureAtFileLocation = (*a1)[7];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_100040768;
    *(v7 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v7;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D740;
    v8 = _Block_copy(v2);
    v9 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100040768;
  *(v11 + 24) = v10;
  v2[4] = sub_10004076C;
  v2[5] = v11;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D7B8;
  v12 = _Block_copy(v2);
  v13 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v12);
  _Block_release(v12);
  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_100034EF0(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003DED4;
  *(v5 + 24) = v4;
  v10[4] = sub_10004076C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047D830;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_100035048(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v3);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[6] = *v4;
  return sub_100035128;
}

void sub_100035128(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[7];
  isEscapingClosureAtFileLocation = (*a1)[8];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_100040648;
    *(v3 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v3;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047D8A8;
    v7 = _Block_copy(v2);
    v8 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100040648;
  *(v10 + 24) = v9;
  v2[4] = sub_10004076C;
  v2[5] = v10;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047D920;
  v11 = _Block_copy(v2);
  v12 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1000353A0()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000353E4(char a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000354A4()
{
  if ((*((swift_isaMask & *v0) + 0x2D0))())
  {
    goto LABEL_16;
  }

  v1 = (*((swift_isaMask & *v0) + 0x3D8))();
  if (v1 >= (*((swift_isaMask & *v0) + 0x300))())
  {
    goto LABEL_16;
  }

  v2 = (*((swift_isaMask & *v0) + 0x150))();
  if (v2)
  {
    v3 = *(v2 + 56);
    if (v3 != 18)
    {
      if (v3 == 20)
      {

        LOBYTE(v4) = 1;
        return v4 & 1;
      }

      goto LABEL_15;
    }

    if (!*(v2 + 80))
    {
LABEL_15:

      goto LABEL_16;
    }

    v6 = [*(v2 + 80) code];

    if (v6 + 1009 < 9)
    {
      v4 = 0x151u >> (v6 - 15);
      return v4 & 1;
    }

LABEL_16:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  __chkstk_darwin(0);
  sub_1000039E8(&unk_1004A7340);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v8)
  {
    goto LABEL_16;
  }

  v5 = [v8 statusCode];

  LOBYTE(v4) = 1;
  if (v5 != 408 && v5 != 429 && v5 != 500)
  {
    LOBYTE(v4) = (v5 & 0xFFFFFFFFFFFFFFFELL) == 502;
  }

  return v4 & 1;
}

uint64_t sub_1000356F8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v142 = a2;
  v141 = a1;
  v140 = type metadata accessor for DispatchQoS.QoSClass();
  *&v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v137 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v136 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v135 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000039E8(&qword_1004A6D30);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v127 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v127 - v23;
  v25 = (*((swift_isaMask & **(v4 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client)) + 0x1D0))(v22);
  v26 = [v25 delegate];

  if (!v26 || (v143 = v26, sub_1000039E8(&qword_1004A7388), sub_1000039E8(&qword_1004A7390), (swift_dynamicCast() & 1) == 0))
  {
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
LABEL_10:
    sub_100013F2C(&v144, &qword_1004A7358);
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!*(&v145 + 1))
  {
    goto LABEL_10;
  }

  sub_100003C88(&v144, &v147);
  v27 = *(*sub_10000E2A8(&v147, v149) + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError);
  swift_errorRetain();
  sub_100003C3C(&v147);
  v28 = v27;
  if (v27)
  {
LABEL_12:
    v140 = v28;
    swift_errorRetain();
    sub_1000039E8(&unk_1004A7370);
    v32 = swift_allocObject();
    v139 = xmmword_100376BB0;
    *(v32 + 16) = xmmword_100376BB0;
    *(v32 + 56) = &type metadata for String;
    v33 = sub_10001A9EC();
    *(v32 + 64) = v33;
    *(v32 + 32) = 0xD000000000000034;
    *(v32 + 40) = 0x800000010042AE10;
    swift_getErrorValue();
    v34 = Error.localizedDescription.getter();
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v33;
    *(v32 + 72) = v34;
    *(v32 + 80) = v35;
    sub_10001AA40(0, &qword_1004A7380);
    v36 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v147 = v27;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0);
    type metadata accessor for KnoxServiceClient.ClientError();
    if (swift_dynamicCast())
    {
      v37 = v144;
    }

    else
    {
      v38 = _convertErrorToNSError(_:)();
      swift_allocObject();
      v37 = sub_100059DCC(0xD000000000000034, 0x800000010042AE10, 0xD000000000000062, 0x800000010042AE50, 605, v38);
    }

    v39 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
    swift_beginAccess();
    *(v5 + v39) = v37;
    swift_retain_n();

    if (((*((swift_isaMask & *v5) + 0x438))(v40) & 1) == 0)
    {
      v46 = swift_allocObject();
      *(v46 + 16) = v139;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = v33;
      *(v46 + 32) = 0xD000000000000034;
      *(v46 + 40) = 0x800000010042AE10;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      *(v46 + 96) = &type metadata for String;
      *(v46 + 104) = v33;
      *(v46 + 72) = v47;
      *(v46 + 80) = v48;
      v49 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v45 = v141;
      sub_100031994(v141, v142);

      return v45;
    }

    v41 = swift_allocObject();
    *(v41 + 16) = v139;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v33;
    *(v41 + 32) = 0xD000000000000034;
    *(v41 + 40) = 0x800000010042AE10;
    swift_getErrorValue();
    v42 = Error.localizedDescription.getter();
    *(v41 + 96) = &type metadata for String;
    *(v41 + 104) = v33;
    *(v41 + 72) = v42;
    *(v41 + 80) = v43;
    v44 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  if (a4)
  {
LABEL_11:
    v28 = 0;
    v27 = a4;
    goto LABEL_12;
  }

LABEL_6:
  if (!a3 || (objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) == 0))
  {
    v131 = 0x800000010042AE10;
    v132 = 0x800000010042AE50;
    v147 = 0;
    v148 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v147 = 0xD000000000000024;
    v148 = 0x800000010042AEC0;
    *&v144 = a3;
    v50 = a3;
    sub_1000039E8(&unk_1004A7360);
    v51._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v51);

    v130 = v147;
    v129 = v148;
    type metadata accessor for KnoxServiceClient.ClientError();
    v52 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    static DispatchQoS.userInitiated.getter();
    v147 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v133 + 104))(v137, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v134);
    v53 = v139;
    v54 = v138;
    v55 = v140;
    (*(v139 + 104))(v138, enum case for DispatchQoS.QoSClass.default(_:), v140);
    static OS_dispatch_queue.global(qos:)();
    (*(v53 + 8))(v54, v55);
    v56 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

    v57 = v131;
    *(v52 + 16) = 0xD000000000000034;
    *(v52 + 24) = v57;
    v58 = v132;
    *(v52 + 32) = 0xD000000000000062;
    *(v52 + 40) = v58;
    *(v52 + 56) = 14;
    *(v52 + 48) = 621;
    v59 = v129;
    *(v52 + 64) = v130;
    *(v52 + 72) = v59;
    *(v52 + 80) = 0;
    *(v52 + 88) = v56;
    v45 = v141;
    sub_100031994(v141, v142);
    return v45;
  }

  v30 = v29;
  v132 = a4;
  v31 = a3;
  sub_100039A44(v30, v24);
  v129 = v31;
  v61 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  sub_10001F8D8(v24, v5 + v61, &qword_1004A6D30);
  v62 = swift_endAccess();
  v63 = *((swift_isaMask & *v5) + 0x108);
  v131 = (swift_isaMask & *v5) + 264;
  v130 = v63;
  v64 = (v63)(v62);
  v65 = [v30 statusCode];
  v66 = *(v64 + 16);
  v67 = 32;
  v68 = v142;
  while (v66)
  {
    v69 = *(v64 + v67);
    v67 += 8;
    --v66;
    if (v69 == v65)
    {

      v45 = v141;
      sub_100031994(v141, v68);

      return v45;
    }
  }

  if ((*((swift_isaMask & *v5) + 0x438))(v70))
  {
    v147 = 0;
    v148 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v71._countAndFlagsBits = 0xD00000000000001BLL;
    v71._object = 0x800000010042AF30;
    String.append(_:)(v71);
    *&v144 = [v30 statusCode];
    v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v72);

    v73._countAndFlagsBits = 0x64616574736E6920;
    v73._object = 0xEC00000020666F20;
    String.append(_:)(v73);
    v130();
    v74 = Array.description.getter();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);

    v78._countAndFlagsBits = 0xD000000000000029;
    v78._object = 0x800000010042AF50;
    String.append(_:)(v78);
    v79 = v147;
    v80 = v148;
    sub_1000039E8(&unk_1004A7370);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100376A40;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 64) = sub_10001A9EC();
    *(v81 + 32) = v79;
    *(v81 + 40) = v80;
    sub_10001AA40(0, &qword_1004A7380);
    v82 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  if (v68 >> 60 == 15)
  {
    v129 = 1701736270;
    v83 = 0xE400000000000000;
LABEL_48:
    v147 = 0;
    v148 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v100._countAndFlagsBits = 0x7461747320746F47;
    v100._object = 0xEB00000000207375;
    String.append(_:)(v100);
    *&v144 = [v30 statusCode];
    v101._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v101);

    v102._countAndFlagsBits = 0xD000000000000015;
    v102._object = 0x800000010042AEF0;
    String.append(_:)(v102);
    v130();
    v103 = Array.description.getter();
    v105 = v104;

    v106._countAndFlagsBits = v103;
    v106._object = v105;
    String.append(_:)(v106);

    v107._countAndFlagsBits = 0x20726F6620;
    v107._object = 0xE500000000000000;
    String.append(_:)(v107);
    v108 = [v30 URL];
    if (v108)
    {
      v109 = v108;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = 0;
    }

    else
    {
      v110 = 1;
    }

    v111 = type metadata accessor for URL();
    v112 = *(v111 - 8);
    (*(v112 + 56))(v18, v110, 1, v111);
    sub_10003E154(v18, v21, &qword_1004A6D30);
    if ((*(v112 + 48))(v21, 1, v111) == 1)
    {
      sub_100013F2C(v21, &qword_1004A6D30);
      v113 = 0;
      v114 = 0;
    }

    else
    {
      v113 = URL.absoluteString.getter();
      v114 = v115;
      (*(v112 + 8))(v21, v111);
    }

    v131 = 0x800000010042AE10;
    v130 = 0x800000010042AE50;
    *&v144 = v113;
    *(&v144 + 1) = v114;
    sub_1000039E8(&qword_1004A7330);
    v116._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v116);

    v117._countAndFlagsBits = 0xD000000000000011;
    v117._object = 0x800000010042AF10;
    String.append(_:)(v117);
    v118._countAndFlagsBits = v129;
    v118._object = v83;
    String.append(_:)(v118);

    v129 = v147;
    v128 = v148;
    type metadata accessor for KnoxServiceClient.ClientError();
    v119 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v127 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v147 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v133 + 104))(v137, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v134);
    v120 = v139;
    v121 = v138;
    v122 = v140;
    (*(v139 + 104))(v138, enum case for DispatchQoS.QoSClass.default(_:), v140);
    static OS_dispatch_queue.global(qos:)();
    (*(v120 + 8))(v121, v122);
    v123 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

    v124 = v131;
    *(v119 + 16) = 0xD000000000000034;
    *(v119 + 24) = v124;
    v125 = v130;
    *(v119 + 32) = 0xD000000000000062;
    *(v119 + 40) = v125;
    *(v119 + 56) = 9;
    *(v119 + 48) = 653;
    v126 = v128;
    *(v119 + 64) = v129;
    *(v119 + 72) = v126;
    *(v119 + 80) = 0;
    *(v119 + 88) = v123;
    v45 = v141;
    sub_100031994(v141, v142);
    return v45;
  }

  v84 = v68 >> 62;
  if ((v68 >> 62) > 1)
  {
    v129 = 1701736270;
    if (v84 != 2)
    {
LABEL_43:
      v98 = v141;
      v99 = v68;
LABEL_45:
      sub_100031914(v98, v99);
      v83 = 0xE400000000000000;
      goto LABEL_48;
    }

    result = v141;
    v87 = *(v141 + 16);
    v86 = *(v141 + 24);
    v85 = v86 - v87;
    if (!__OFSUB__(v86, v87))
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
    v129 = 1701736270;
    if (!v84)
    {
      v85 = BYTE6(v68);
      goto LABEL_38;
    }
  }

  result = v141;
  if (__OFSUB__(HIDWORD(v141), v141))
  {
    __break(1u);
    goto LABEL_56;
  }

  v85 = HIDWORD(v141) - v141;
LABEL_37:
  sub_1000318C0(result, v68);
LABEL_38:
  if (v85 <= 0)
  {
    goto LABEL_43;
  }

  static String.Encoding.utf8.getter();
  v88 = v68;
  v89 = v141;
  v90 = String.init(data:encoding:)();
  if (!v91)
  {
    v98 = v89;
    v99 = v88;
    goto LABEL_45;
  }

  v92 = v90;
  v83 = v91;
  v147 = v90;
  v148 = v91;

  v93 = String.count.getter();

  if (v93 <= 200)
  {
    sub_100031914(v141, v142);
    goto LABEL_47;
  }

  v94 = String.count.getter();
  v95 = __OFSUB__(v94, 200);
  result = v94 - 200;
  v96 = v142;
  if (!v95)
  {
    sub_10003A5CC(result);
    v97._countAndFlagsBits = 774778400;
    v97._object = 0xE400000000000000;
    String.append(_:)(v97);
    sub_100031914(v141, v96);
    v92 = v147;
    v83 = v148;
LABEL_47:
    v129 = v92;
    goto LABEL_48;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_100036D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000039E8(&qword_1004A6D30);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  result = (*((swift_isaMask & *v3) + 0x198))(v9);
  if ((result & 1) == 0)
  {
    v13 = *((swift_isaMask & *v3) + 0x140);

    v13(a2, a3);
    if (a1)
    {
      v24[0] = a1;
      swift_errorRetain();
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0);
      type metadata accessor for KnoxServiceClient.ClientError();
      if (swift_dynamicCast() || (v24[0] = a1, swift_errorRetain(), swift_dynamicCast()))
      {

        v14 = v27;
      }

      else
      {
        v16 = _convertErrorToNSError(_:)();
        swift_allocObject();
        v14 = sub_100059DCC(0xD000000000000019, 0x800000010042B770, 0xD000000000000062, 0x800000010042AE50, 721, v16);
      }

      v17 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
      swift_beginAccess();
      *(v4 + v17) = v14;
    }

    else
    {
      v15 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
      swift_beginAccess();
      *(v4 + v15) = 0;
    }

    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
    swift_beginAccess();
    sub_10001F8D8(v11, v4 + v19, &qword_1004A6D30);
    v20 = swift_endAccess();
    v21 = (*((swift_isaMask & *v4) + 0x240))(v20);
    [v21 cancel];

    (*((swift_isaMask & *v4) + 0x2D8))(1);
    (*((swift_isaMask & *v4) + 0x1A0))(1);
    sub_100003B20(*(v4 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v24);
    v22 = v25;
    v23 = v26;
    sub_10000E2A8(v24, v25);
    (*(v23 + 16))(v4, a1, v22, v23);
    return sub_100003C3C(v24);
  }

  return result;
}

id sub_100037198(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session) configuration];
  [v3 setNetworkServiceType:a1];
  v4 = [v3 networkServiceType];
  sub_1000039E8(&unk_1004A7370);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100376F00;
    v6 = [v3 networkServiceType];
    *(v5 + 56) = &type metadata for UInt;
    *(v5 + 64) = &protocol witness table for UInt;
    *(v5 + 32) = v6;
    swift_getObjectType();
    v7 = _typeName(_:qualified:)();
    v9 = v8;
    *(v5 + 96) = &type metadata for String;
    v10 = sub_10001A9EC();
    *(v5 + 72) = v7;
    *(v5 + 80) = v9;
    *(v5 + 136) = &type metadata for String;
    *(v5 + 144) = v10;
    *(v5 + 104) = v10;
    *(v5 + 112) = 0xD000000000000028;
    *(v5 + 120) = 0x800000010042B540;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100376BB0;
    swift_getObjectType();
    v13 = _typeName(_:qualified:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    v16 = sub_10001A9EC();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v16;
    *(v12 + 64) = v16;
    *(v12 + 72) = 0xD000000000000028;
    *(v12 + 80) = 0x800000010042B540;
  }

  sub_10001AA40(0, &qword_1004A7380);
  v11 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v17 = [objc_opt_self() sessionWithConfiguration:v3];
  return v17;
}

double sub_1000374E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v2 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_100037534(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

void (*sub_100037590(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v6 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  return sub_100037630;
}

void sub_100037630(void **a1)
{
  v1 = *a1;
  *(v1[4] + v1[5]) = v1[3];
  free(v1);
}

uint64_t MultiPageCapable<>.paginationLoop()(uint64_t a1, uint64_t a2)
{
  v142 = a2;
  *&v141 = a1;
  v2 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v2 - 8);
  v130 = &v99 - v3;
  v140 = type metadata accessor for DispatchTime();
  v147 = *(v140 - 8);
  v4 = __chkstk_darwin(v140);
  v139 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v138 = &v99 - v6;
  v122 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v122 - 8);
  __chkstk_darwin(v122);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v121 - 8);
  __chkstk_darwin(v121);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001AA40(0, &qword_1004A7840);
  v146 = "error, and we can try again.";
  static DispatchQoS.userInitiated.getter();
  *&aBlock = &_swiftEmptyArrayStorage;
  v20 = sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v21 = sub_1000039E8(&unk_1004A7850);
  v22 = sub_10003DEE8();
  v110 = v21;
  v109 = v22;
  v115 = v13;
  v111 = v20;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = *(v10 + 104);
  v108 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v117 = v10 + 104;
  v107 = v23;
  v23(v12);
  v24 = *(v7 + 104);
  v106 = enum case for DispatchQoS.QoSClass.default(_:);
  v25 = v122;
  v105 = v7 + 104;
  v104 = v24;
  v24(v9);
  static OS_dispatch_queue.global(qos:)();
  v26 = *(v7 + 8);
  v118 = v9;
  v119 = v7 + 8;
  v103 = v26;
  v26(v9, v25);
  v113 = v18;
  v114 = v15;
  v116 = v12;
  v112 = v19;
  v137 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v123 = (v27 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v146 = (v28 + 16);
  v136 = dispatch_semaphore_create(0);
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v29 = v148;
  v143 = sub_100072164(v29);
  v148 = 0;
  v145 = v29;
  v30 = (swift_isaMask & *v29);
  v135 = v30 + 124;
  v134 = v30 + 111;
  v128 = v30 + 45;
  v133 = v147 + 1;
  v132 = v30[124];
  v131 = v30[111];
  v102 = 0x800000010042B0F0;
  v127 = v30[45];
  v101 = 0x800000010042AE50;
  v100 = "hivePointer.swift";
  v99 = v150;
  v144 = v27;
  v120 = v28;
  do
  {
    v36 = v145;
    v132(0);
    v37 = swift_allocObject();
    v38 = v142;
    v37[2] = v141;
    v37[3] = v38;
    v39 = v137;
    v40 = v144;
    v37[4] = v137;
    v37[5] = v40;
    v37[6] = v28;
    v37[7] = v36;
    v41 = v136;
    v37[8] = v136;
    v42 = v36;
    v43 = v39;

    v44 = v41;
    sub_100072A1C(sub_10003E014, v37);

    v45 = v139;
    v46 = static DispatchTime.now()();
    v47 = v42;
    v131(v46);
    v48 = v138;
    + infix(_:_:)();
    isa = v133->isa;
    v50 = v45;
    v51 = v140;
    (v133->isa)(v50, v140);
    v129 = v44;
    OS_dispatch_semaphore.wait(timeout:)();
    v52 = isa(v48, v51);
    __chkstk_darwin(v52);
    *(&v99 - 2) = v146;
    v53 = sub_1000039E8(&unk_1004A73A0);
    v147 = v43;
    v54 = v148;
    OS_dispatch_queue.sync<A>(execute:)();
    if (aBlock)
    {
      v148 = v54;

LABEL_3:
      v32 = v47;
      goto LABEL_4;
    }

    v31 = static DispatchTimeoutResult.== infix(_:_:)();
    if ((v31 & 1) == 0)
    {
      v148 = v54;
      goto LABEL_3;
    }

    v124 = v53;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    strcpy(&aBlock, "getting page ");
    HIWORD(aBlock) = -4864;
    __chkstk_darwin(v55);
    *(&v99 - 2) = v123;
    OS_dispatch_queue.sync<A>(execute:)();
    v148 = v54;
    v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v56);

    v57._countAndFlagsBits = 543584032;
    v57._object = 0xE400000000000000;
    String.append(_:)(v57);
    v32 = v47;
    v58 = [v47 description];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v125 = *(&aBlock + 1);
    v126 = aBlock;
    type metadata accessor for KnoxServiceClient.ClientError();
    v63 = swift_allocObject();
    static DispatchQoS.userInitiated.getter();
    *&aBlock = &_swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v107(v116, v108, v121);
    v64 = v118;
    v65 = v122;
    v104(v118, v106, v122);
    static OS_dispatch_queue.global(qos:)();
    v103(v64, v65);
    v66 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v67 = v102;
    *(v63 + 16) = 0xD000000000000010;
    *(v63 + 24) = v67;
    v68 = v101;
    *(v63 + 32) = 0xD000000000000062;
    *(v63 + 40) = v68;
    *(v63 + 56) = 20;
    *(v63 + 48) = 1161;
    v69 = v125;
    *(v63 + 64) = v126;
    *(v63 + 72) = v69;
    *(v63 + 80) = 0;
    *(v63 + 88) = v66;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v70 = swift_allocError();
    *v71 = v63;
    v72 = swift_allocObject();
    *(v72 + 16) = v146;
    *(v72 + 24) = v70;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_10003E14C;
    *(v73 + 24) = v72;
    v150[2] = sub_10004076C;
    v150[3] = v73;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v150[0] = sub_10003885C;
    v150[1] = &unk_10047DA10;
    v74 = _Block_copy(&aBlock);

    swift_errorRetain();

    dispatch_sync(v147, v74);

    _Block_release(v74);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v77 = swift_allocError();
    *v78 = v63;
    v79 = *((swift_isaMask & *v47) + 0x410);

    v79(v77);

    v28 = v120;
LABEL_4:
    v33 = v130;
    v127(v31);
    v34 = type metadata accessor for URL();
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    sub_100013F2C(v33, &qword_1004A6D30);
  }

  while (v35 != 1);
  v142 = sub_1000039E8(&unk_1004A7370);
  v80 = swift_allocObject();
  v141 = xmmword_100376BB0;
  *(v80 + 16) = xmmword_100376BB0;
  __chkstk_darwin(v80);
  *(&v99 - 2) = v123;
  OS_dispatch_queue.sync<A>(execute:)();
  v81 = aBlock;
  *(v80 + 56) = &type metadata for Int;
  *(v80 + 64) = &protocol witness table for Int;
  *(v80 + 32) = v81;
  v82 = [v32 description];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  *(v80 + 96) = &type metadata for String;
  v86 = sub_10001A9EC();
  *(v80 + 104) = v86;
  *(v80 + 72) = v83;
  *(v80 + 80) = v85;
  sub_10001AA40(0, &qword_1004A7380);
  v87 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  __chkstk_darwin(v88);
  *(&v99 - 2) = v146;
  v89 = OS_dispatch_queue.sync<A>(execute:)();
  if (aBlock)
  {
    static os_log_type_t.error.getter();
    v90 = swift_allocObject();
    *(v90 + 16) = v141;
    v91 = (*((swift_isaMask & *v32) + 0x330))();
    *(v90 + 56) = &type metadata for String;
    *(v90 + 64) = v86;
    *(v90 + 32) = v91;
    *(v90 + 40) = v92;
    swift_getErrorValue();
    v93 = Error.localizedDescription.getter();
    *(v90 + 96) = &type metadata for String;
    *(v90 + 104) = v86;
    *(v90 + 72) = v93;
    *(v90 + 80) = v94;
    v95 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  __chkstk_darwin(v89);
  *(&v99 - 2) = v123;
  v96 = v147;
  v97 = OS_dispatch_queue.sync<A>(execute:)();
  v98 = aBlock;
  __chkstk_darwin(v97);
  *(&v99 - 2) = v146;
  OS_dispatch_queue.sync<A>(execute:)();

  return v98;
}

uint64_t sub_100038884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__interruptionReason);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1000388D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id sub_1000389B0()
{
  v1 = v0;
  v80 = 6369134;
  v2 = sub_1000039E8(&qword_1004A73B0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v72 - v6;
  v75 = sub_1000039E8(&qword_1004A6D30);
  v8 = __chkstk_darwin(v75);
  v74._object = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v72 - v11;
  v13 = (*((swift_isaMask & **(v0 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client)) + 0x1E8))(&v84, v10);
  v14 = v85;
  if (v85 || (__chkstk_darwin(v13), *(&v72 - 2) = v0, sub_1000039E8(&qword_1004A72D8), v13 = OS_dispatch_queue.sync<A>(execute:)(), (v14 = v85) != 0))
  {
    v79._object = v14;
    v15 = v84;
  }

  else
  {
    v79._object = 0xE300000000000000;
    v15 = 6369134;
  }

  v79._countAndFlagsBits = v15;
  v78 = (*((swift_isaMask & *v0) + 0x1C8))(v13);
  v77 = (*((swift_isaMask & *v0) + 0x198))();
  LODWORD(v76) = (*((swift_isaMask & *v0) + 0x2D0))();
  v16 = *((swift_isaMask & *v0) + 0x240);
  v17 = v16();
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 currentRequest];

  if (v19)
  {
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = type metadata accessor for URLRequest();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v5, v20, 1, v21);
  sub_10003E154(v5, v7, &qword_1004A73B0);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    v23 = &qword_1004A73B0;
    v24 = v7;
LABEL_12:
    sub_100013F2C(v24, v23);
LABEL_13:
    v28 = type metadata accessor for URL();
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    goto LABEL_14;
  }

  object = v74._object;
  URLRequest.url.getter();
  (*(v22 + 8))(v7, v21);
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(object, 1, v26) == 1)
  {
    v23 = &qword_1004A6D30;
    v24 = object;
    goto LABEL_12;
  }

  URL.absoluteURL.getter();
  (*(v27 + 8))(object, v26);
  (*(v27 + 56))(v12, 0, 1, v26);
LABEL_14:
  v74._countAndFlagsBits = String.init<A>(describing:)();
  v74._object = v29;
  v30 = v16();
  if (v30)
  {
    v31 = v30;
    v32 = [v30 description];
    v73._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73._object = v33;
  }

  else
  {
    v73._object = 0xE300000000000000;
    v73._countAndFlagsBits = 7104878;
  }

  __chkstk_darwin(v30);
  *(&v72 - 2) = v1;
  sub_1000039E8(&unk_1004A7340);
  OS_dispatch_queue.sync<A>(execute:)();
  v75 = 0;
  v34 = v84;
  if (v84)
  {
    v35 = [v84 allHeaderFields];

    v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = 0xD000000000000014;
    v83 = 0x800000010042B110;
    AnyHashable.init<A>(_:)();
    if (*(v36 + 16) && (v37 = sub_100013470(&v84), (v38 & 1) != 0))
    {
      sub_100003CA0(*(v36 + 56) + 32 * v37, v86);
      sub_1000142F0(&v84);

      if (swift_dynamicCast())
      {
        v39 = v83;
        v80 = v82;
        goto LABEL_24;
      }
    }

    else
    {

      sub_1000142F0(&v84);
    }
  }

  v39 = 0xE300000000000000;
LABEL_24:
  if (v76)
  {
    v40 = 0xE300000000000000;
  }

  else
  {
    v40 = 0xE200000000000000;
  }

  if (v76)
  {
    v41 = 7562585;
  }

  else
  {
    v41 = 28494;
  }

  v76 = v41;
  if (v77)
  {
    v42 = 0xE300000000000000;
  }

  else
  {
    v42 = 0xE200000000000000;
  }

  if (v77)
  {
    v43 = 7562585;
  }

  else
  {
    v43 = 28494;
  }

  if (v78)
  {
    v44 = 0xE300000000000000;
  }

  else
  {
    v44 = 0xE200000000000000;
  }

  if (v78)
  {
    v45 = 7562585;
  }

  else
  {
    v45 = 28494;
  }

  v84 = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(219);
  v46 = type metadata accessor for KnoxTask(0);
  v81.receiver = v1;
  v81.super_class = v46;
  v47 = objc_msgSendSuper2(&v81, "description");
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0xD000000000000016;
  v52._object = 0x800000010042B130;
  String.append(_:)(v52);
  String.append(_:)(v79);

  v53._countAndFlagsBits = 0xD00000000000001ALL;
  v53._object = 0x800000010042B150;
  String.append(_:)(v53);
  v54._countAndFlagsBits = v80;
  v54._object = v39;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0xD000000000000013;
  v55._object = 0x800000010042B170;
  String.append(_:)(v55);
  String.append(_:)(v73);

  v56._countAndFlagsBits = 0xD000000000000015;
  v56._object = 0x800000010042B190;
  String.append(_:)(v56);
  String.append(_:)(v74);

  v57._countAndFlagsBits = 0x726174537369202CLL;
  v57._object = 0xEC0000003D646574;
  String.append(_:)(v57);
  v58._countAndFlagsBits = v45;
  v58._object = v44;
  String.append(_:)(v58);

  v59._countAndFlagsBits = 0x6873696E6966202CLL;
  v59._object = 0xEB000000003D6465;
  String.append(_:)(v59);
  v60._countAndFlagsBits = v43;
  v60._object = v42;
  String.append(_:)(v60);

  v61._countAndFlagsBits = 0x727265746E69202CLL;
  v61._object = 0xEE003D6465747075;
  String.append(_:)(v61);
  v62._countAndFlagsBits = v76;
  v62._object = v40;
  String.append(_:)(v62);

  v63._countAndFlagsBits = 0xD000000000000016;
  v63._object = 0x800000010042B1B0;
  String.append(_:)(v63);
  v64._countAndFlagsBits = (*((swift_isaMask & *v1) + 0x138))();
  String.append(_:)(v64);

  v65._object = 0x800000010042B1D0;
  v65._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v65);
  OS_dispatch_queue.sync<A>(execute:)();
  v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v66);

  v67._countAndFlagsBits = 0x546C61746F74202CLL;
  v67._object = 0xED00003D73656972;
  String.append(_:)(v67);
  v86[0] = (*((swift_isaMask & *v1) + 0x3D8))();
  v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v68);

  v69._countAndFlagsBits = 0x65776F6C6C61202CLL;
  v69._object = 0xEF3D736569725464;
  String.append(_:)(v69);
  v86[0] = (*((swift_isaMask & *v1) + 0x300))();
  v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v70);

  return v84;
}

double sub_1000395A4@<D0>(_OWORD *a1@<X8>)
{
  sub_1000039E8(&qword_1004A72D8);
  OS_dispatch_queue.sync<A>(execute:)();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10003962C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__sessionTraceId);
  v2 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__sessionTraceId + 8);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100039658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__sessionTraceId);
  *v3 = a2;
  v3[1] = a3;
}

id sub_1000396A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask);
  *a2 = v2;
  return v2;
}

uint64_t sub_1000396EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_100039758@<X0>(void *a1@<X8>)
{
  sub_1000039E8(&unk_1004A7340);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a1 = v3;
  return result;
}

id sub_1000397E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse);
  *a2 = v2;
  return v2;
}

void sub_100039818(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse);
  *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse) = a2;
  v2 = a2;
}

uint64_t sub_100039860(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100040768;
  *(v6 + 24) = v5;
  v10[4] = sub_10004076C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003885C;
  v10[3] = &unk_10047DE40;
  v7 = _Block_copy(v10);
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id KnoxTask.__allocating_init(client:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10003D38C(a1);

  return v4;
}

uint64_t sub_100039A44@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v83);
  v91 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v86 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v14 - 8);
  v76 = &v73 - v15;
  v16 = type metadata accessor for CharacterSet();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = String._bridgeToObjectiveC()();
  v20 = [a1 valueForHTTPHeaderField:v19];

  if (!v20)
  {
    v34 = type metadata accessor for URL();
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }

  v75 = a2;
  v79 = v7;
  v80 = v5;
  v81 = v4;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v89 = v21;
  v90 = v23;
  v87 = 59;
  v88 = 0xE100000000000000;
  sub_10000B080();
  v24 = StringProtocol.components<A>(separatedBy:)();
  v25 = v10;
  if (v24[2] != 2)
  {
    goto LABEL_19;
  }

  v26._countAndFlagsBits = 60;
  v26._object = 0xE100000000000000;
  v27 = String.hasPrefix(_:)(v26);

  if (!v27)
  {
    goto LABEL_19;
  }

  v74 = v10;
  v28 = v24[4];
  v29 = v24[5];

  v30 = sub_10003A67C(v28, v29);
  v32 = v31;
  v25 = v74;

  if (!v32)
  {
    goto LABEL_19;
  }

  if (v30 == 62 && v32 == 0xE100000000000000)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v24[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = v24[7];
  v89 = v24[6];
  v90 = v36;

  static CharacterSet.whitespaces.getter();
  v37 = StringProtocol.trimmingCharacters(in:)();
  v39 = v38;
  (*(v77 + 8))(v18, v78);

  if (v37 == 0x78656E223D6C6572 && v39 == 0xEA00000000002274)
  {

    v25 = v74;
    goto LABEL_15;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v25 = v74;
  if (v40)
  {
LABEL_15:
    v41 = v24[5];
    v89 = v24[4];
    v42 = v89;
    v90 = v41;

    result = sub_10003A6FC(60, 0xE100000000000000, v42, v41);
    if ((v43 & 1) == 0)
    {
      String.remove(at:)();

      v87 = 62;
      v88 = 0xE100000000000000;
      __chkstk_darwin(v44);
      *(&v73 - 2) = &v87;
      result = sub_10003D288(sub_100013DA8, (&v73 - 4), v45, v46);
      v47 = v75;
      v48 = v76;
      if ((v49 & 1) == 0)
      {

        String.remove(at:)();

        v51 = v89;
        v50 = v90;
        URL.init(string:)();
        v52 = type metadata accessor for URL();
        v53 = *(v52 - 8);
        if ((*(v53 + 48))(v48, 1, v52) != 1)
        {

          (*(v53 + 32))(v47, v48, v52);
          return (*(v53 + 56))(v47, 0, 1, v52);
        }

        sub_100013F2C(v48, &qword_1004A6D30);
        v78 = 0x800000010042B6C0;
        v82 = 0x800000010042AE50;
        v87 = 0;
        v88 = 0xE000000000000000;
        _StringGuts.grow(_:)(85);
        v54._countAndFlagsBits = 0xD000000000000053;
        v54._object = 0x800000010042B710;
        String.append(_:)(v54);
        v55._countAndFlagsBits = v51;
        v55._object = v50;
        String.append(_:)(v55);

        v75 = v88;
        v76 = v87;
        v77 = type metadata accessor for KnoxServiceClient.ClientError();
        v56 = swift_allocObject();
        sub_10001AA40(0, &qword_1004A7840);
        v74 = "hivePointer.swift";
        static DispatchQoS.userInitiated.getter();
        v87 = &_swiftEmptyArrayStorage;
        sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
        sub_1000039E8(&unk_1004A7850);
        sub_10003DEE8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        (*(v84 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
        v58 = v80;
        v57 = v81;
        v59 = v79;
        (*(v80 + 104))(v79, enum case for DispatchQoS.QoSClass.default(_:), v81);
        static OS_dispatch_queue.global(qos:)();
        (*(v58 + 8))(v59, v57);
        v60 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
        v61 = v78;
        *(v56 + 16) = 0xD000000000000019;
        *(v56 + 24) = v61;
        v62 = v82;
        *(v56 + 32) = 0xD000000000000062;
        *(v56 + 40) = v62;
        *(v56 + 56) = 4;
        v63 = 702;
        goto LABEL_20;
      }

LABEL_25:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v78 = 0x800000010042B6C0;
  v82 = 0x800000010042AE50;
  v89 = 0;
  v90 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v89 = 0xD00000000000002ELL;
  v90 = 0x800000010042B6E0;
  v64._countAndFlagsBits = v21;
  v64._object = v23;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 39;
  v65._object = 0xE100000000000000;
  String.append(_:)(v65);
  v75 = v90;
  v76 = v89;
  v77 = type metadata accessor for KnoxServiceClient.ClientError();
  v56 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v74 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v89 = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v84 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v85);
  v67 = v80;
  v66 = v81;
  v68 = v79;
  (*(v80 + 104))(v79, enum case for DispatchQoS.QoSClass.default(_:), v81);
  static OS_dispatch_queue.global(qos:)();
  (*(v67 + 8))(v68, v66);
  v60 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v69 = v78;
  *(v56 + 16) = 0xD000000000000019;
  *(v56 + 24) = v69;
  v70 = v82;
  *(v56 + 32) = 0xD000000000000062;
  *(v56 + 40) = v70;
  *(v56 + 56) = 4;
  v63 = 692;
LABEL_20:
  *(v56 + 48) = v63;
  v71 = v75;
  *(v56 + 64) = v76;
  *(v56 + 72) = v71;
  *(v56 + 80) = 0;
  *(v56 + 88) = v60;
  sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v72 = v56;
  return swift_willThrow();
}

unint64_t sub_10003A5CC(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    goto LABEL_14;
  }

  if (4 * v3 < result >> 14)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  return String.removeSubrange(_:)();
}

uint64_t sub_10003A67C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

unint64_t sub_10003A6FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void sub_10003A834(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10003A890(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_task;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10003A928;
}

void sub_10003A928(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_10003A9A4()
{
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v14 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *(v0 + 16) = 1232348160;
  Date.init()();
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesTransferred) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTime) = 0;
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTimeSinceLastUpdate) = 0;
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__recentBytesTransferred) = 0;
  *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesSinceLastUpdate) = 0;
  v13 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
  sub_10001AA40(0, &qword_1004A7840);
  v12 = "- subclass should override";
  static DispatchQoS.userInitiated.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  v10 = v16;
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v16);
  static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v10);
  *(v0 + v13) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_10003AD9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100031D1C;
  *(v6 + 24) = v5;
  v9[4] = sub_10004076C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10003885C;
  v9[3] = &unk_10047DDC8;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003AF28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100027124;
  *(v6 + 24) = v5;
  v9[4] = sub_10004076C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10003885C;
  v9[3] = &unk_10047DA88;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003B088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesTransferred);
  v13 = __OFSUB__(a1, v12);
  v14 = a1 - v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesTransferred) = a1;
  v15 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesSinceLastUpdate;
  v16 = *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesSinceLastUpdate);
  v13 = __OFADD__(v16, v14);
  v17 = v16 + v14;
  if (v13)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__bytesSinceLastUpdate) = v17;
  Date.init()();
  v18 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__lastUpdated;
  swift_beginAccess();
  (*(v5 + 16))(v8, a2 + v18, v4);
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v11, v4);
  v22 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  if (*(a2 + v22) < v20)
  {
    *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__recentBytesTransferred) = *(a2 + v15);
    *(a2 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTimeSinceLastUpdate) = v20;
    *(a2 + v15) = 0;
    Date.init()();
    swift_beginAccess();
    (*(v5 + 40))(a2 + v18, v11, v4);
    return swift_endAccess();
  }

  return result;
}

void (*sub_10003B2B4(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  OS_dispatch_queue.sync<A>(execute:)();
  return sub_10003B36C;
}

void sub_10003B36C(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v5 = (*a1)[7];
  isEscapingClosureAtFileLocation = (*a1)[8];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_100031D1C;
    *(v3 + 24) = v6;
    v2[4] = sub_10004076C;
    v2[5] = v3;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047DB00;
    v7 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100031D1C;
  *(v9 + 24) = v8;
  v2[4] = sub_10004076C;
  v2[5] = v9;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047DB78;
  v10 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v10);
  _Block_release(v10);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

double sub_10003B654@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (((*((swift_isaMask & *Strong) + 0x198))() & 1) == 0)
    {
      v16 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
      swift_beginAccess();
      sub_100013E54(a1 + v16, v6, &qword_1004A73C0);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v13, v6, v7);
        Date.init()();
        Date.timeIntervalSince(_:)();
        v21 = v20;

        v22 = *(v8 + 8);
        v22(v11, v7);
        v22(v13, v7);
        *(a1 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTime) = v21;
        goto LABEL_7;
      }

      sub_100013F2C(v6, &qword_1004A73C0);
      static os_log_type_t.error.getter();
      sub_10001AA40(0, &qword_1004A7380);
      v17 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10001AA40(0, &qword_1004A7380);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

LABEL_7:
  result = *(a1 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTime);
  *a2 = result;
  return result;
}

double sub_10003B9C4()
{
  v1 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10003BA08(double a1)
{
  v3 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10003BBA4()
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (v1 > 0.0)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  return result;
}

uint64_t KnoxTask.TaskMetrics.deinit()
{
  v1 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__lastUpdated;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();
  sub_100013F2C(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime, &qword_1004A73C0);

  return v0;
}

uint64_t KnoxTask.TaskMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__lastUpdated;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();
  sub_100013F2C(v0 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime, &qword_1004A73C0);

  return swift_deallocClassInstance();
}

id KnoxTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KnoxTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003BFB4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = a2;
  swift_errorRetain();
}

uint64_t sub_10003C010(char *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v87 = a6;
  v84 = a5;
  v12 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v12 - 8);
  v14 = v83 - v13;
  v15 = a4 + 16;
  v89 = a4 + 16;
  result = OS_dispatch_queue.sync<A>(execute:)();
  v17 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v86 = 0;
  v85 = a7;
  v18 = swift_allocObject();
  v88 = v15;
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100040518;
  *(v19 + 24) = v18;
  v97 = sub_10004076C;
  v98 = v19;
  aBlock = _NSConcreteStackBlock;
  v94 = 1107296256;
  v95 = sub_10003885C;
  v96 = &unk_10047DF30;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(a3, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!a2)
  {
    v45 = v87;
    v46 = *(v87 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
    v47 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate;
    sub_100003B20(v46 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v92);
    sub_1000039E8(&qword_1004A76A8);
    sub_1000039E8(&qword_1004A76B0);
    v48 = a1;
    if (swift_dynamicCast())
    {
      v49 = sub_100003C88(v90, &aBlock);
      (*((swift_isaMask & *v45) + 0x168))(v49);
      v50 = type metadata accessor for URL();
      v51 = (*(*(v50 - 8) + 48))(v14, 1, v50);
      v52 = sub_100013F2C(v14, &qword_1004A6D30);
      if (v51 == 1 && (__chkstk_darwin(v52), *&v83[-4] = v53, OS_dispatch_queue.sync<A>(execute:)(), v92[0] < 2))
      {
        sub_1000039E8(&unk_1004A7370);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_100376BB0;
        v55 = &a1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
        swift_beginAccess();
        v57 = *v55;
        v56 = *(v55 + 1);
        *(v54 + 56) = &type metadata for String;
        v58 = sub_10001A9EC();
        *(v54 + 64) = v58;
        *(v54 + 32) = v57;
        *(v54 + 40) = v56;

        v59 = [a1 description];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        *(v54 + 96) = &type metadata for String;
        *(v54 + 104) = v58;
        *(v54 + 72) = v60;
        *(v54 + 80) = v62;
        v48 = a1;
        sub_10001AA40(0, &qword_1004A7380);
        v63 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }

      else
      {
        v69 = v96;
        v70 = v97;
        v71 = sub_10000E2A8(&aBlock, v96);
        __chkstk_darwin(v71);
        *&v83[-4] = v88;
        OS_dispatch_queue.sync<A>(execute:)();
        (*(v70 + 1))(a1, v92[0], v69, v70);
      }

      sub_100003C3C(&aBlock);
    }

    else
    {
      v91 = 0;
      memset(v90, 0, sizeof(v90));
      sub_100013F2C(v90, &qword_1004A76B8);
      sub_1000039E8(&unk_1004A7370);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_100376A40;
      sub_100003B20(v46 + v47, &aBlock);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      *(v64 + 56) = &type metadata for String;
      *(v64 + 64) = sub_10001A9EC();
      *(v64 + 32) = v65;
      *(v64 + 40) = v67;
      sub_10001AA40(0, &qword_1004A7380);
      v68 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    sub_1000039E8(&unk_1004A7370);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100376F00;
    __chkstk_darwin(v72);
    *&v83[-4] = v88;
    OS_dispatch_queue.sync<A>(execute:)();
    v73 = aBlock;
    *(v72 + 56) = &type metadata for Int;
    *(v72 + 64) = &protocol witness table for Int;
    *(v72 + 32) = v73;
    v74 = &v48[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    v76 = *v74;
    v75 = *(v74 + 1);
    *(v72 + 96) = &type metadata for String;
    v77 = sub_10001A9EC();
    *(v72 + 104) = v77;
    *(v72 + 72) = v76;
    *(v72 + 80) = v75;

    v78 = [v48 description];
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    *(v72 + 136) = &type metadata for String;
    *(v72 + 144) = v77;
    *(v72 + 112) = v79;
    *(v72 + 120) = v81;
    sub_10001AA40(0, &qword_1004A7380);
    v82 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return OS_dispatch_semaphore.signal()();
  }

  v83[1] = static os_log_type_t.error.getter();
  sub_1000039E8(&unk_1004A7370);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100376260;
  v23 = &a1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v25 = *v23;
  v24 = *(v23 + 1);
  *(v22 + 56) = &type metadata for String;
  v26 = sub_10001A9EC();
  *(v22 + 64) = v26;
  *(v22 + 32) = v25;
  *(v22 + 40) = v24;
  __chkstk_darwin(v26);
  *&v83[-4] = v88;

  v27 = OS_dispatch_queue.sync<A>(execute:)();
  v28 = aBlock;
  *(v22 + 96) = &type metadata for Int;
  *(v22 + 104) = &protocol witness table for Int;
  *(v22 + 72) = v28;
  result = (*(*a2 + 168))(v27);
  if (v29)
  {
    *(v22 + 136) = &type metadata for String;
    *(v22 + 144) = v26;
    *(v22 + 112) = result;
    *(v22 + 120) = v29;
    v30 = [a1 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *(v22 + 176) = &type metadata for String;
    *(v22 + 184) = v26;
    *(v22 + 152) = v31;
    *(v22 + 160) = v33;
    sub_10001AA40(0, &qword_1004A7380);
    v34 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v35 = swift_allocError();
    *v36 = a2;
    v37 = v84 + 16;
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_100040770;
    *(v39 + 24) = v38;
    v97 = sub_10004076C;
    v98 = v39;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_10003885C;
    v96 = &unk_10047DFA8;
    v40 = _Block_copy(&aBlock);

    swift_errorRetain();

    dispatch_sync(a3, v40);

    _Block_release(v40);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if ((v37 & 1) == 0)
    {
      v41 = swift_allocError();
      v42 = v87;
      *v43 = a2;
      v44 = *((swift_isaMask & *v42) + 0x410);

      v44(v41);

      return OS_dispatch_semaphore.signal()();
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t Restartable.canBeRestarted.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 8))() & 1) != 0 || ((*(a2 + 56))(a1, a2) & 1) == 0)
  {
    return 0;
  }

  result = (*((swift_isaMask & *v2) + 0x150))();
  if (result)
  {

    return 1;
  }

  return result;
}

Swift::Void __swiftcall Restartable.execute(withMaxiumRestarts:retryDelay:)(Swift::UInt withMaxiumRestarts, Swift::UInt32 retryDelay)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v40 = retryDelay;
  v9 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v9 - 8);
  v11 = v33 - v10;
  v12 = *(v4 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  Date.init()();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  v14 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10001F8D8(v11, v12 + v14, &qword_1004A73C0);
  swift_endAccess();
  (*(v6 + 40))(0, v7, v6);
  v16 = v6 + 32;
  v15 = *(v6 + 32);
  if (v15(v7, v6) <= withMaxiumRestarts)
  {
    v38 = *(v6 + 48);
    v35 = withMaxiumRestarts + 1;
    v37 = withMaxiumRestarts == -1;
    v17 = &swift_isaMask;
    v39 = v6 + 48;
    v33[1] = v6 + 64;
    v36 = xmmword_100376F00;
    v34 = v6;
    while (1)
    {
      v18 = v38(v41, v7, v6);
      if (*v19 == -1)
      {
        break;
      }

      ++*v19;
      v20 = v18(v41, 0);

      if (v15(v7, v6) > withMaxiumRestarts || (Restartable.canBeRestarted.getter(v7, v6) & 1) == 0)
      {
        return;
      }

      sub_1000039E8(&unk_1004A7370);
      v21 = swift_allocObject();
      *(v21 + 16) = v36;
      v22 = v15(v7, v6);
      *(v21 + 56) = &type metadata for UInt;
      *(v21 + 64) = &protocol witness table for UInt;
      *(v21 + 32) = v22;
      if (v37)
      {
        goto LABEL_10;
      }

      *(v21 + 96) = &type metadata for UInt;
      *(v21 + 104) = &protocol witness table for UInt;
      *(v21 + 72) = v35;
      v23 = [v5 description];
      v24 = v17;
      v25 = v15;
      v26 = withMaxiumRestarts;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v7;
      v29 = v16;
      v31 = v30;

      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = sub_10001A9EC();
      *(v21 + 112) = v27;
      withMaxiumRestarts = v26;
      v15 = v25;
      v17 = v24;
      *(v21 + 120) = v31;
      v16 = v29;
      v7 = v28;
      v6 = v34;
      sub_10001AA40(0, &qword_1004A7380);
      v32 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      (*((*v24 & *v5) + 0x1A0))(0);
      (*((*v24 & *v5) + 0x1D0))(0);
      (*((*v24 & *v5) + 0x158))(0);
      (*((*v24 & *v5) + 0x3E0))(0);
      (*((*v24 & *v5) + 0x2D8))(0);
      (*((*v24 & *v5) + 0x140))(0, 0xE000000000000000);
      (*(v6 + 64))(v7, v6);
      sleep(v40);
      if (v15(v7, v6) > withMaxiumRestarts)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

unint64_t sub_10003D288(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

id sub_10003D38C(void *a1)
{
  v2 = v1;
  v36 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_allowedStatusCodes] = &off_10047A748;
  v11 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__interruptionReason];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError] = 0;
  v12 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__isFinished] = 0;
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__isStarted] = 0;
  v14 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__sessionTraceId];
  *v14 = 0;
  v14[1] = 0;
  v30 = v14;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask] = 0;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__ahcHttpTask] = 0;
  v15 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__currentRequestURL];
  *v15 = 0;
  v15[1] = 0;
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__wasInterrupted] = 0;
  v16 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  *v16 = 0xD00000000000002ALL;
  v16[1] = 0x800000010042B790;
  v32 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue;
  sub_10001AA40(0, &qword_1004A7840);
  v31 = "- subclass should override";
  static DispatchQoS.userInitiated.getter();
  v40 = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  v17 = v36;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v36);
  static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v6, v17);
  *&v1[v32] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse] = 0;
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__status] = 0;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__totalTries] = 0;
  v18 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay] = 0;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__allowedTries] = (*((swift_isaMask & *a1) + 0x140))();
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] = a1;
  v19 = *((swift_isaMask & *a1) + 0x170);
  v20 = a1;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay] = v19();
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session] = (*((swift_isaMask & *v20) + 0x1D0))();
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_timeoutSeconds] = (*((swift_isaMask & *v20) + 0x200))();
  v21 = (*((swift_isaMask & *v20) + 0x188))();
  swift_beginAccess();
  v2[v18] = v21 & 1;
  type metadata accessor for KnoxTask.TaskMetrics(0);
  v22 = swift_allocObject();
  v23 = sub_10003A9A4();
  *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics] = v22;
  (*((swift_isaMask & *v20) + 0x1E8))(&v37, v23);
  v24 = v38;
  if (v38)
  {
    v25 = v30;
    *v30 = v37;
    v25[1] = v24;
  }

  v26 = type metadata accessor for KnoxTask(0);
  v39.receiver = v2;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, "init");
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v27;
}

uint64_t sub_10003DAD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003DAF0@<X0>(void *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__interruptionReason);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_10003DB30()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__interruptionReason);
  *v2 = v0[3];
  v2[1] = v1;
}

id sub_10003DC00@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask);
  *a1 = v2;
  return v2;
}

void sub_10003DC3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask);
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__urlSessionTask) = v2;
  v3 = v2;
}

uint64_t sub_10003DC88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DCFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DD3C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__ahcHttpTask) = *(v0 + 24);
}

uint64_t sub_10003DDC8()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10003DE18@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse);
  *a1 = v2;
  return v2;
}

uint64_t sub_10003DE9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10003DEE8()
{
  result = qword_1004A6B70;
  if (!qword_1004A6B70)
  {
    sub_100003A94(&unk_1004A7850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6B70);
  }

  return result;
}

uint64_t sub_10003DF84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003DFBC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003E060@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  *a1 = *v3;
  return result;
}

uint64_t sub_10003E0B8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;
  return swift_errorRetain();
}

uint64_t sub_10003E114()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E154(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000039E8(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003E1DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10003E214@<D0>(double *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics__elapsedTimeSinceLastUpdate);
  *a1 = result;
  return result;
}

uint64_t sub_10003E228@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x108))();
  *a2 = result;
  return result;
}

uint64_t sub_10003E28C(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x110);

  return v2(v3);
}

uint64_t sub_10003E2F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x138))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10003E35C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x140);

  return v4(v2, v3);
}

uint64_t sub_10003E3DC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x150))();
  *a2 = result;
  return result;
}

uint64_t sub_10003E444@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x198))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10003E50C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1C8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10003E5D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_100032F6C(v4);
}

uint64_t sub_10003E614@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x240))();
  *a2 = result;
  return result;
}

uint64_t sub_10003E678(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x248);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10003E6E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x270))();
  *a2 = result;
  return result;
}

uint64_t sub_10003E74C(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x278);

  return v2(v3);
}

uint64_t sub_10003E7B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x2A0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10003E81C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x2A8);

  return v4(v2, v3);
}

uint64_t sub_10003E89C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x2D0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10003E964@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x300))();
  *a2 = result;
  return result;
}

uint64_t sub_10003EA28@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10003EA80(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10003EAD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10003EB34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1000347D8(v1);
}

uint64_t sub_10003EB64@<X0>(_BYTE *a1@<X8>)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a1 = v3;
  return result;
}

uint64_t sub_10003EBE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x3D8))();
  *a2 = result;
  return result;
}

uint64_t sub_10003ECA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10003ECFC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_10003ED50@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_10003EDB4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10003EE14@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_10003EECC@<X0>(void *a1@<X8>)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a1 = v3;
  return result;
}

double sub_10003EF40@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_10003EF98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_lookbackSecondsForRecentBytes;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_10003EFF4()
{
  sub_100040314(319, &qword_1004A6E28, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10003FF7C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003FFB4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100040314(319, &qword_1004A74C0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100040314(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100040444()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse);
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask__lastHTTPResponse) = v2;
  v3 = v2;
}

uint64_t sub_100040490@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*(v2 + 16) + *a1);
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1000404C8(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_100040518()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *v1 = v2;
  return result;
}

void sub_100040948(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1000409A8()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000409F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *WestgateTokenTask.__allocating_init(client:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken] = 0;
  v4 = sub_10003D38C(a1);

  v5 = &v4[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  strcpy(v5, "WestgateToken");
  *(v5 + 7) = -4864;

  return v4;
}

char *WestgateTokenTask.init(client:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken) = 0;
  v3 = sub_10003D38C(a1);

  v4 = &v3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  strcpy(v4, "WestgateToken");
  *(v4 + 7) = -4864;

  return v3;
}

void sub_100040C0C(unint64_t a1@<X8>)
{
  v3 = v2;
  v48 = a1;
  v4 = type metadata accessor for URLRequest();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v57 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v45 - v20;
  v22 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  (*(v16 + 16))(v19, v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v15);
  v58 = v21;
  URL.appendingPathComponent(_:)();
  v23 = *(v16 + 8);
  v23(v19, v15);
  v24 = *(v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders);
  v25 = *(v24 + 16);

  if (v25)
  {
    sub_100013364(0x7A69726F68747541, 0xED00006E6F697461);
    if (v26)
    {
LABEL_8:
      v43 = v58;
      LOBYTE(v59) = 2;
      v44 = v56;
      sub_10005ADB0(v58, v24, 1, v56);
      v23(v43, v15);
      if (!v3)
      {
        (*(v46 + 4))(v48, v44, v47);
      }

      goto LABEL_10;
    }
  }

  v55 = v23;
  v27 = *(v22 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v27)
  {
    v28 = *((swift_isaMask & *v27) + 0x60);
    v29 = v27;
    v30 = v28(0);
    if (v3)
    {
      v55(v58, v15);

      return;
    }

    v40 = v30;
    v41 = v31;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v24;
    sub_100026BFC(v40, v41, 0x7A69726F68747541, 0xED00006E6F697461, isUniquelyReferenced_nonNull_native);
    v24 = v59;
    v23 = v55;
    goto LABEL_8;
  }

  v47 = 0x800000010042B890;
  v48 = 0x800000010042B900;
  v56 = type metadata accessor for KnoxServiceClient.ClientError();
  v32 = swift_allocObject();
  v45[1] = sub_10001AA40(0, &qword_1004A7840);
  v45[2] = v14;
  v46 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v59 = &_swiftEmptyArrayStorage;
  sub_1000441D0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v50 + 104))(v49, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  v34 = v52;
  v33 = v53;
  v35 = v54;
  (*(v53 + 104))(v52, enum case for DispatchQoS.QoSClass.default(_:), v54);
  static OS_dispatch_queue.global(qos:)();
  v51 = v15;
  (*(v33 + 8))(v34, v35);
  v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  strcpy((v32 + 16), "urlRequest()");
  *(v32 + 29) = 0;
  *(v32 + 30) = -5120;
  v37 = v47;
  *(v32 + 32) = 0xD00000000000006BLL;
  *(v32 + 40) = v37;
  *(v32 + 56) = 14;
  *(v32 + 48) = 37;
  v38 = v48;
  *(v32 + 64) = 0xD000000000000017;
  *(v32 + 72) = v38;
  *(v32 + 80) = 0;
  *(v32 + 88) = v36;
  sub_1000441D0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v39 = v32;
  swift_willThrow();
  v55(v58, v51);
LABEL_10:
}

uint64_t sub_1000413A4(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v62);
  v64 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v12 - 8);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v17 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v18 = a2 >> 62;
  v66 = v10;
  if ((a2 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_10;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v19 = HIDWORD(a1) - a1;
LABEL_10:
  v58 = v15;
  v59 = v8;
  v60 = v6;
  v61 = v5;
  v22 = *(v17 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100027124;
  *(v24 + 24) = v23;
  v71 = sub_10001F874;
  v72 = v24;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10003885C;
  v70 = &unk_10047E020;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v22, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = sub_100041C98(&aBlock, a1, a2, type metadata accessor for WestgateToken, &qword_1004A7718, type metadata accessor for WestgateToken, &protocol conformance descriptor for AuthToken, 0x6574616774736557);
  v28 = v27;
  v29 = aBlock;
  v30 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v31 = *&v16[v30];
  *&v16[v30] = v29;
  v32 = v29;

  if (v28)
  {
    v54 = 0x800000010042A530;
    v53 = 0x800000010042B890;
    v55 = type metadata accessor for KnoxServiceClient.ClientError();
    v33 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v51[1] = "hivePointer.swift";
    v52 = v26;
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_1000441D0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    v56 = v16;
    v57 = v32;
    v51[0] = v28;
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v63 + 104))(v66, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v65);
    v35 = v60;
    v34 = v61;
    v36 = v59;
    (*(v60 + 104))(v59, enum case for DispatchQoS.QoSClass.default(_:), v61);
    static OS_dispatch_queue.global(qos:)();
    (*(v35 + 8))(v36, v34);
    v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v38 = v54;
    *(v33 + 16) = 0xD00000000000001ALL;
    *(v33 + 24) = v38;
    v39 = v53;
    *(v33 + 32) = 0xD00000000000006BLL;
    *(v33 + 40) = v39;
    *(v33 + 56) = 7;
    *(v33 + 48) = 59;
    v40 = v51[0];
    *(v33 + 64) = v52;
    *(v33 + 72) = v40;
    *(v33 + 80) = 0;
    *(v33 + 88) = v37;
    sub_1000441D0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v41 = swift_allocError();
    *v42 = v33;
    swift_getErrorValue();

    v43 = Error.localizedDescription.getter();
    sub_100036D50(v41, v43, v44);
  }

  v45 = *&v16[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v46 = swift_allocObject();
  *(v46 + 16) = v16;
  *(v46 + 24) = 1;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_10001F9F8;
  *(v47 + 24) = v46;
  v71 = sub_10001FA40;
  v72 = v47;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10003885C;
  v70 = &unk_10047E098;
  v48 = _Block_copy(&aBlock);
  v49 = v16;

  dispatch_sync(v45, v48);
  _Block_release(v48);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100041C98(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v19[0] = a8;
  v20 = a1;
  v12 = type metadata accessor for DecodingError.Context();
  v13 = *(v12 - 8);
  v19[3] = v12;
  v19[4] = v13;
  v14 = __chkstk_darwin(v12);
  v19[1] = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v19[2] = v19 - v16;
  v17 = type metadata accessor for DecodingError();
  __chkstk_darwin(v17);
  a4(0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a3 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v21);
    __break(1u);
  }

  else
  {
    sub_1000441D0(a5, a6);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *v20 = v21;
    return 0;
  }

  return result;
}

uint64_t sub_100042404(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DecodingError();
  __chkstk_darwin(v6);
  type metadata accessor for ImageDecryptionComponents();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a3 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v9);
    __break(1u);
  }

  else
  {
    sub_1000441D0(&qword_1004A7708, type metadata accessor for ImageDecryptionComponents);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a1 = v9;
    return 0;
  }

  return result;
}

uint64_t sub_100042B58(_OWORD *a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DecodingError();
  __chkstk_darwin(v6);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a3 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v9);
    __break(1u);
  }

  else
  {
    sub_10004417C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a1 = v9;
    return 0;
  }

  return result;
}

uint64_t sub_10004325C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for DecodingError.Context();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DecodingError();
  __chkstk_darwin(v6);
  type metadata accessor for ArchiveDecryptionComponents();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a3 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v9);
    __break(1u);
  }

  else
  {
    sub_1000441D0(&qword_1004A7700, type metadata accessor for ArchiveDecryptionComponents);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    *a1 = v9;
    return 0;
  }

  return result;
}

char *sub_1000439B0()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v5 = v0;
  v6 = sub_100072164(v5);
  v7 = dispatch_semaphore_create(0);
  v8 = v5;
  sub_100078AAC(v6, v7, v8);

  static DispatchTime.distantFuture.getter();
  OS_dispatch_semaphore.wait(timeout:)();
  (*(v2 + 8))(v4, v1);
  sub_1000039E8(&unk_1004A7370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100376BB0;
  v10 = &v8[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v12 = *v10;
  v11 = *(v10 + 1);
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_10001A9EC();
  *(v9 + 32) = v12;
  *(v9 + 40) = v11;
  v18 = v8;

  OS_dispatch_queue.sync<A>(execute:)();
  v13 = v19;
  *(v9 + 96) = &type metadata for UInt;
  *(v9 + 104) = &protocol witness table for UInt;
  *(v9 + 72) = v13;
  sub_10001AA40(0, &qword_1004A7380);
  v14 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v15 = v8;

  return v15;
}

Swift::Int sub_100043C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WestgateTokenTask();
  v6 = swift_dynamicCastClassUnconditional();
  if (a2)
  {
    v7 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
    v8 = v6;
    swift_beginAccess();
    v9 = *(v8 + v7);
    *(v8 + v7) = 0;

    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100376A40;
    result = (*(*a2 + 168))();
    if (!v12)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    v14 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_10001A9EC();
    *(v10 + 32) = v13;
    *(v10 + 40) = v14;
    sub_10001AA40(0, &qword_1004A7380);
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  sub_100003B20(*(a4 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v21);
  v16 = v22;
  v17 = v23;
  sub_10000E2A8(v21, v22);
  if (a2)
  {
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_1000441D0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v18 = swift_allocError();
    *v19 = a2;
  }

  else
  {
    v18 = 0;
  }

  v20 = *(v17 + 16);

  v20(a4, v18, v16, v17);

  sub_100003C3C(v21);
  return OS_dispatch_semaphore.signal()();
}

id WestgateTokenTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WestgateTokenTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100043EF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100043F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100043F58()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t type metadata accessor for WestgateTokenTask()
{
  result = qword_1004A76E8;
  if (!qword_1004A76E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100043FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17WestgateTokenTask_westgateToken;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

unint64_t sub_10004417C()
{
  result = qword_1004A76F8;
  if (!qword_1004A76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A76F8);
  }

  return result;
}

uint64_t sub_1000441D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100044224(uint64_t a1, void *a2, void *a3)
{
  v77 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v85 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v86 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v80);
  v84 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v83 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption);
  v16 = OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms;
  if (*(v15 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_kms) == 2)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      if (*(v15 + v16) <= 1u && *(v15 + v16))
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          v76 = 0x800000010042BBF0;
          v77 = 0x800000010042BA70;
          v78 = 0x800000010042BC20;
          v79 = type metadata accessor for KnoxServiceClient.ClientError();
          v26 = swift_allocObject();
          sub_10001AA40(0, &qword_1004A7840);
          v75 = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          v98 = &_swiftEmptyArrayStorage;
          sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850);
          sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*(v81 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
          v36 = v87;
          v35 = v88;
          v37 = v85;
          (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
          static OS_dispatch_queue.global(qos:)();
          (*(v36 + 8))(v37, v35);
          v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          v38 = v76;
          *(v26 + 16) = 0xD000000000000026;
          *(v26 + 24) = v38;
          *(v26 + 32) = 0xD000000000000066;
          v39 = v77;
          *(v26 + 56) = 4;
          *(v26 + 40) = v39;
          *(v26 + 48) = 135;
          v33 = 0xD000000000000027;
          goto LABEL_14;
        }
      }

      v50 = *(v15 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_key);
      v49 = *(v15 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_key + 8);

      v51 = v50;
      v52 = v78;
      v53 = sub_100060488(v51, v49);

      if (v52)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  if (!a2)
  {
    v76 = 0x800000010042BBF0;
    v77 = 0x800000010042BA70;
    v78 = 0x800000010042BC50;
    v79 = type metadata accessor for KnoxServiceClient.ClientError();
    v26 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v75 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v98 = &_swiftEmptyArrayStorage;
    sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v81 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
    v28 = v87;
    v27 = v88;
    v29 = v85;
    (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
    static OS_dispatch_queue.global(qos:)();
    (*(v28 + 8))(v29, v27);
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v31 = v76;
    *(v26 + 16) = 0xD000000000000026;
    *(v26 + 24) = v31;
    *(v26 + 32) = 0xD000000000000066;
    v32 = v77;
    *(v26 + 56) = 12;
    *(v26 + 40) = v32;
    *(v26 + 48) = 102;
    v33 = 0xD000000000000050;
LABEL_14:
    *(v26 + 64) = v33;
    *(v26 + 72) = v78;
    *(v26 + 80) = 0;
    *(v26 + 88) = v30;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v40 = v26;
    swift_willThrow();
    return;
  }

  v18 = v79[2];
  v19 = a2;
  v20 = AEAAuthDataCreateWithContext(v18);
  if (!v20)
  {
    v75 = 0x800000010042BBF0;
    v76 = 0x800000010042BA70;
    v77 = 0x800000010042BAE0;
    v78 = type metadata accessor for KnoxServiceClient.ClientError();
    v41 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v74 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v98 = &_swiftEmptyArrayStorage;
    sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    v79 = v19;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v81 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
    v43 = v87;
    v42 = v88;
    v44 = v85;
    (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
    static OS_dispatch_queue.global(qos:)();
    (*(v43 + 8))(v44, v42);
    v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v46 = v75;
    *(v41 + 16) = 0xD000000000000026;
    *(v41 + 24) = v46;
    *(v41 + 32) = 0xD000000000000066;
    v47 = v76;
    *(v41 + 56) = 0;
    *(v41 + 40) = v47;
    *(v41 + 48) = 107;
    *(v41 + 64) = 0xD00000000000002BLL;
    *(v41 + 72) = v77;
    *(v41 + 80) = 0;
    *(v41 + 88) = v45;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v48 = v41;
    swift_willThrow();
LABEL_16:

    return;
  }

  v21 = v20;
  (*(v12 + 16))(v14, a1 + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt, v11);
  v22 = v78;
  sub_10008835C(v21, v14);
  if (v22)
  {
    AEAAuthDataDestroy(v21);

    return;
  }

  v56 = v23;
  v57 = v25;
  v58 = v24;
  v59 = v24;

  sub_100067B44(v60, v58, v57, &v89);
  if (!v90)
  {
    v72 = 0x800000010042BBF0;
    v74 = 0x800000010042BA70;
    v76 = 0x800000010042BCB0;
    v77 = type metadata accessor for KnoxServiceClient.ClientError();
    v61 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v71[0] = "hivePointer.swift";
    v78 = v59;
    static DispatchQoS.userInitiated.getter();
    v98 = &_swiftEmptyArrayStorage;
    sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    v73 = v56;
    v75 = v21;
    v71[1] = v57;
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    v79 = v19;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v81 + 104))(v86, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v82);
    v63 = v87;
    v62 = v88;
    v64 = v85;
    (*(v87 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v88);
    static OS_dispatch_queue.global(qos:)();
    (*(v63 + 8))(v64, v62);
    v65 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v66 = v72;
    *(v61 + 16) = 0xD000000000000026;
    *(v61 + 24) = v66;
    *(v61 + 32) = 0xD000000000000066;
    v67 = v74;
    *(v61 + 56) = 12;
    *(v61 + 40) = v67;
    *(v61 + 48) = 120;
    v68 = v76;
    *(v61 + 64) = 0xD000000000000028;
    *(v61 + 72) = v68;
    *(v61 + 80) = 0;
    *(v61 + 88) = v65;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v69 = v61;
    swift_willThrow();

    AEAAuthDataDestroy(v75);
    goto LABEL_16;
  }

  v94[0] = v89;
  v94[1] = v90;
  v95 = v91;
  v96 = v92;
  v97 = v93;
  sub_100046ABC(v94, v19, v77);
  v53 = v70;

  sub_100047544(&v89);
  AEAAuthDataDestroy(v21);

LABEL_19:
  v54 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v54 + 16) = 32;
  v98 = v53;
  sub_1000039E8(&qword_1004A71E0);
  sub_10000E720(&qword_1004A71E8, &qword_1004A71E0);
  DataProtocol.copyBytes<A>(to:)();
  v55 = *(v53 + 2);
  if (v55 > 0x20)
  {
    __break(1u);
  }

  else
  {
    *(v54 + 16) = v55;

    sub_100045314((v54 + 32), v54 + 32 + *(v54 + 16), v79);
  }
}

uint64_t sub_100045314(const uint8_t *a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v33);
  v35 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v13 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = v16;
    result = AEAContextSetFieldBlob(*(a3 + 16), 9u, 0, a1, a2 - a1);
    if (result)
    {
      v18 = result;
      v31 = 0x800000010042BD80;
      v32 = 0x800000010042BA70;
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v37 = 0xD000000000000030;
      v38 = 0x800000010042BDA0;
      v39 = v18;
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v28 = v38;
      v29 = v37;
      v30 = type metadata accessor for KnoxServiceClient.ClientError();
      v20 = swift_allocObject();
      v27[0] = sub_10001AA40(0, &qword_1004A7840);
      v27[1] = v17;
      v27[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v37 = &_swiftEmptyArrayStorage;
      sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v36 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
      v21 = v34;
      (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v34);
      static OS_dispatch_queue.global(qos:)();
      (*(v6 + 8))(v8, v21);
      v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v23 = v31;
      *(v20 + 16) = 0xD000000000000013;
      *(v20 + 24) = v23;
      v24 = v32;
      *(v20 + 32) = 0xD000000000000066;
      *(v20 + 40) = v24;
      *(v20 + 56) = 0;
      *(v20 + 48) = 156;
      v25 = v28;
      *(v20 + 64) = v29;
      *(v20 + 72) = v25;
      *(v20 + 80) = 0;
      *(v20 + 88) = v22;
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v26 = v20;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000457E4@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  if (result && result != a2)
  {
    v3 = result;
    result = sub_100011D30(0, 1, 1, &_swiftEmptyArrayStorage);
    v6 = a2;
    v7 = a3;
    v8 = result;
    v9 = v3;
    v10 = *(result + 2);
    do
    {
      v11 = *v9;
      v12 = *(v8 + 3);
      if (v10 >= v12 >> 1)
      {
        v13 = v9;
        result = sub_100011D30((v12 > 1), v10 + 1, 1, v8);
        v6 = a2;
        v7 = a3;
        v8 = result;
        v9 = v13;
      }

      ++v9;
      *(v8 + 2) = v10 + 1;
      v8[v10++ + 32] = v11;
    }

    while (v9 != v6);
    *v7 = v8;
  }

  else
  {
    *a3 = &_swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1000458E0()
{
  v2 = v0;
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v67 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = AEAAuthDataCreateWithContext(*(v2 + 16));
  if (!v70)
  {
    v62 = 0x800000010042BA50;
    v61 = 0x800000010042BA70;
    v63 = 0x800000010042BAE0;
    v70 = type metadata accessor for KnoxServiceClient.ClientError();
    v23 = swift_allocObject();
    v59 = sub_10001AA40(0, &qword_1004A7840);
    v60 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v69 = &_swiftEmptyArrayStorage;
    v58 = sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    v24 = v68;
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v64 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v65);
    v25 = v66;
    (*(v24 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v66);
    static OS_dispatch_queue.global(qos:)();
    (*(v24 + 8))(v4, v25);
    v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v27 = v62;
    *(v23 + 16) = 0xD000000000000015;
    *(v23 + 24) = v27;
    v28 = v61;
    *(v23 + 32) = 0xD000000000000066;
    *(v23 + 40) = v28;
    *(v23 + 56) = 0;
    *(v23 + 48) = 222;
    v29 = v63;
    *(v23 + 64) = 0xD00000000000002BLL;
    *(v23 + 72) = v29;
    *(v23 + 80) = 0;
    *(v23 + 88) = v26;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v30 = v23;
    swift_willThrow();
    return;
  }

  v62 = v7;
  v63 = v4;
  (*(v10 + 16))(v12, *(v2 + 24) + OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_createdAt, v9);
  sub_10008835C(v70, v12);
  if (v1)
  {
    goto LABEL_16;
  }

  v60 = v15;
  v61 = v13;
  if (!v14)
  {
    v31 = v66;
    v32 = v68;
    v56 = 0x800000010042BA70;
    v57 = 0x800000010042BA50;
    v58 = 0x800000010042BB10;
    v59 = type metadata accessor for KnoxServiceClient.ClientError();
    v33 = swift_allocObject();
    v54 = sub_10001AA40(0, &qword_1004A7840);
    v55 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v69 = &_swiftEmptyArrayStorage;
    v53 = sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v64 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v65);
    v34 = v63;
    (*(v32 + 104))(v63, enum case for DispatchQoS.QoSClass.default(_:), v31);
    static OS_dispatch_queue.global(qos:)();
    (*(v32 + 8))(v34, v31);
    v35 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v36 = v57;
    *(v33 + 16) = 0xD000000000000015;
    *(v33 + 24) = v36;
    v37 = v56;
    *(v33 + 32) = 0xD000000000000066;
    *(v33 + 40) = v37;
    *(v33 + 56) = 0;
    *(v33 + 48) = 234;
    v38 = v58;
    *(v33 + 64) = 0xD000000000000040;
    *(v33 + 72) = v38;
    *(v33 + 80) = 0;
    *(v33 + 88) = v35;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v39 = v33;
    swift_willThrow();

LABEL_15:

LABEL_16:
    AEAAuthDataDestroy(v70);
    return;
  }

  v16 = v14;
  v17 = SecKeyCopyExternalRepresentation(v16, 0);
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_13;
  }

  v69 = xmmword_100376D40;
  static Data._conditionallyBridgeFromObjectiveC(_:result:)();

  v19 = *(&v69 + 1);
  if (*(&v69 + 1) >> 60 == 15)
  {
LABEL_13:
    v40 = v66;
    v41 = v68;
    v56 = 0x800000010042BA70;
    v57 = 0x800000010042BA50;
    v58 = 0x800000010042BB60;
    v59 = type metadata accessor for KnoxServiceClient.ClientError();
    v42 = swift_allocObject();
    v53 = sub_10001AA40(0, &qword_1004A7840);
    v54 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v69 = &_swiftEmptyArrayStorage;
    v52[1] = sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    v55 = v16;
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v64 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v65);
    v43 = v63;
    (*(v41 + 104))(v63, enum case for DispatchQoS.QoSClass.default(_:), v40);
    static OS_dispatch_queue.global(qos:)();
    (*(v41 + 8))(v43, v40);
    v44 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v45 = v57;
    *(v42 + 16) = 0xD000000000000015;
    *(v42 + 24) = v45;
    v46 = v56;
    *(v42 + 32) = 0xD000000000000066;
    *(v42 + 40) = v46;
    *(v42 + 56) = 0;
    *(v42 + 48) = 239;
    v47 = v58;
    *(v42 + 64) = 0xD000000000000030;
    *(v42 + 72) = v47;
    *(v42 + 80) = 0;
    *(v42 + 88) = v44;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v48 = v42;
    swift_willThrow();

    v16 = v55;
LABEL_14:

    goto LABEL_15;
  }

  v20 = v69;
  v21 = *(&v69 + 1) >> 62;
  if ((*(&v69 + 1) >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_24;
    }

    v50 = *(v69 + 16);
    v49 = *(v69 + 24);
    v22 = v49 - v50;
    if (!__OFSUB__(v49, v50))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE14(v69);
LABEL_24:
    sub_100031994(v20, v19);
    v51 = sub_1000469F0(v22, v20, v19);
    sub_100031914(v20, v19);
    sub_100046534((v51 + 32), v51 + 32 + *(v51 + 16), v2, v51);
    sub_100031914(v20, v19);

    goto LABEL_14;
  }

  if (!__OFSUB__(HIDWORD(v20), v20))
  {
    v22 = HIDWORD(v20) - v20;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_100046418(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a3 + 16);
      v9 = *(a3 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v8 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_21:
    v14 = 0;
LABEL_25:
    *a2 = v14;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v8 < v6)
  {
    v6 = v8;
  }

  v13 = v12 + v6;
  if (__OFADD__(v12, v6))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v13 < v12)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v12 == v13)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v15 = a2;
    result = Data._copyBytesHelper(to:from:)();
    v14 = v13 - v12;
    if (!__OFSUB__(v13, v12))
    {
      a2 = v15;
      goto LABEL_25;
    }

    goto LABEL_30;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100046534(const uint8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v33 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v14 - 8);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = v17;
    result = AEAContextSetFieldBlob(*(a3 + 16), 7u, 1u, a1, *(a4 + 16));
    if (result)
    {
      v27 = 0x800000010042BA70;
      v28 = 0x800000010042BA50;
      v29 = 0x800000010042BBA0;
      v30 = type metadata accessor for KnoxServiceClient.ClientError();
      v19 = swift_allocObject();
      v26[1] = sub_10001AA40(0, &qword_1004A7840);
      v26[2] = v18;
      v26[3] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v35 = &_swiftEmptyArrayStorage;
      sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v32 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
      v20 = v31;
      (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v31);
      static OS_dispatch_queue.global(qos:)();
      (*(v7 + 8))(v9, v20);
      v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v22 = v28;
      *(v19 + 16) = 0xD000000000000015;
      *(v19 + 24) = v22;
      v23 = v27;
      *(v19 + 32) = 0xD000000000000066;
      *(v19 + 40) = v23;
      *(v19 + 56) = 0;
      *(v19 + 48) = 257;
      v24 = v29;
      *(v19 + 64) = 0xD000000000000040;
      *(v19 + 72) = v24;
      *(v19 + 80) = 0;
      *(v19 + 88) = v21;
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v25 = v19;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100046994()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000469F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (result)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7[2] = v6;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v8[1] = v6;
  v9 = 0;
  v8[0] = (v7 + 4);
  result = sub_100046418(v8, &v9, a2, a3);
  if (v3)
  {
    if (v9 <= v6)
    {
      v7[2] = v9;

      return v7;
    }

    goto LABEL_12;
  }

  if (v9 <= v6)
  {
    v7[2] = v9;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_100046ABC(uint64_t a1, void *a2, void *a3)
{
  v65 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v57);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SHA256();
  v55 = *(v13 - 1);
  __chkstk_darwin(v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SHA256Digest();
  v56 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(type metadata accessor for SAKSDecryptionTask());
  v20 = a2;
  sub_1000475AC(a1, &v66);
  v21 = v65;
  v22 = v65;
  v23 = v67;
  v24 = sub_100089F34(v20, a1, v21);
  if (!v23)
  {
    v25 = v24;
    v52 = v15;
    v53 = v18;
    v54 = v12;
    v65 = v13;
    v67 = v16;
    v26 = v64;

    v27 = *((swift_isaMask & *v25) + 0x150);
    v28 = v25;
    v29 = v27();

    if (v29)
    {
      type metadata accessor for KnoxServiceClient.ClientError();
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v30 = v29;
    }

    else if (*(v28 + OBJC_IVAR____TtC16KnoxClientPublic18SAKSDecryptionTask_serverResponse + 8))
    {
      v51 = v28;

      v31 = Data.init(base64Encoded:options:)();
      v33 = v32;

      if (v33 >> 60 != 15)
      {
        sub_100047608(&unk_1004A7820, &type metadata accessor for SHA256);
        v48 = v52;
        v49 = v65;
        dispatch thunk of HashFunction.init()();
        sub_1000318C0(v31, v33);
        sub_100093720(v31, v33);
        sub_100031914(v31, v33);
        v50 = v53;
        dispatch thunk of HashFunction.finalize()();
        (*(v55 + 8))(v48, v49);
        sub_1000039E8(&qword_1004A71E0);
        SHA256Digest.withUnsafeBytes<A>(_:)();
        sub_100031914(v31, v33);

        (*(v56 + 8))(v50, v67);
        return;
      }

      v55 = 0x800000010042BCE0;
      v56 = 0x800000010042BA70;
      v65 = 0x800000010042BD50;
      v67 = type metadata accessor for KnoxServiceClient.ClientError();
      v34 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v53 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v66 = &_swiftEmptyArrayStorage;
      sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v58 + 104))(v61, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
      v36 = v62;
      v35 = v63;
      (*(v63 + 104))(v62, enum case for DispatchQoS.QoSClass.default(_:), v26);
      static OS_dispatch_queue.global(qos:)();
      (*(v35 + 8))(v36, v26);
      v37 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v34 + 16) = 0xD000000000000036;
      *(v34 + 24) = v55;
      *(v34 + 32) = 0xD000000000000066;
      v38 = v56;
      *(v34 + 56) = 7;
      *(v34 + 40) = v38;
      *(v34 + 48) = 198;
      v39 = v65;
      *(v34 + 64) = 0xD000000000000020;
      *(v34 + 72) = v39;
      *(v34 + 80) = 0;
      *(v34 + 88) = v37;
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v40 = v34;
      v28 = v51;
    }

    else
    {
      v55 = 0x800000010042BCE0;
      v56 = 0x800000010042BA70;
      v65 = 0x800000010042BD20;
      v67 = type metadata accessor for KnoxServiceClient.ClientError();
      v41 = swift_allocObject();
      v52 = sub_10001AA40(0, &qword_1004A7840);
      v53 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v66 = &_swiftEmptyArrayStorage;
      sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v58 + 104))(v61, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
      v43 = v62;
      v42 = v63;
      (*(v63 + 104))(v62, enum case for DispatchQoS.QoSClass.default(_:), v26);
      static OS_dispatch_queue.global(qos:)();
      (*(v42 + 8))(v43, v26);
      v44 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v41 + 16) = 0xD000000000000036;
      *(v41 + 24) = v55;
      *(v41 + 32) = 0xD000000000000066;
      v45 = v56;
      *(v41 + 56) = 12;
      *(v41 + 40) = v45;
      *(v41 + 48) = 193;
      v46 = v65;
      *(v41 + 64) = 0xD000000000000020;
      *(v41 + 72) = v46;
      *(v41 + 80) = 0;
      *(v41 + 88) = v44;
      sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v47 = v41;
    }

    swift_willThrow();
  }
}

uint64_t sub_100047544(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A7818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100047608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100047650(AAByteStream_impl *a1, void *a2, char *a3, void *a4)
{
  v46 = a4;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v43 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v14 = AEAContextCreateWithEncryptedStream(a1);
  if (v14)
  {
    v15 = v14;
    type metadata accessor for AEAContextWrapper();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a2;
    v17 = a2;
    v18 = v45;
    sub_1000458E0();
    if (v18)
    {
      v44 = v18;
      LODWORD(v45) = static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100376F00;
      v20 = *&v17[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest];
      v21 = *&v17[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest + 8];
      *(v19 + 56) = &type metadata for String;
      v22 = sub_10001A9EC();
      v43 = a3;
      v23 = v22;
      *(v19 + 64) = v22;
      *(v19 + 32) = v20;
      *(v19 + 40) = v21;
      v24 = *&v17[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm];
      v25 = *&v17[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digestAlgorithm + 8];
      *(v19 + 96) = &type metadata for String;
      *(v19 + 104) = v22;
      *(v19 + 72) = v24;
      *(v19 + 80) = v25;
      swift_getErrorValue();

      v26 = Error.localizedDescription.getter();
      *(v19 + 136) = &type metadata for String;
      *(v19 + 144) = v23;
      a3 = v43;
      *(v19 + 112) = v26;
      *(v19 + 120) = v27;
      sub_10001AA40(0, &qword_1004A7380);
      v28 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    sub_100044224(v17, a3, v46);
  }

  else
  {
    v38 = 0x800000010042BDE0;
    v39 = 0x800000010042BA70;
    v40 = 0x800000010042BE20;
    v45 = type metadata accessor for KnoxServiceClient.ClientError();
    v29 = swift_allocObject();
    v37[1] = sub_10001AA40(0, &qword_1004A7840);
    v37[2] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v47 = &_swiftEmptyArrayStorage;
    sub_100047608(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    v37[0] = v7;
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v43;
    (*(v41 + 104))(v43, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
    v30 = v44;
    v31 = v37[0];
    (*(v44 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v37[0]);
    static OS_dispatch_queue.global(qos:)();
    (*(v30 + 8))(v9, v31);
    v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v33 = v38;
    *(v29 + 16) = 0xD00000000000003ELL;
    *(v29 + 24) = v33;
    *(v29 + 32) = 0xD000000000000066;
    v34 = v39;
    *(v29 + 56) = 0;
    *(v29 + 40) = v34;
    *(v29 + 48) = 82;
    *(v29 + 64) = 0xD000000000000031;
    *(v29 + 72) = v40;
    *(v29 + 80) = 0;
    *(v29 + 88) = v32;
    sub_100047608(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v35 = v29;
    swift_willThrow();
  }

  return v16;
}

void sub_100047C50(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  v75 = a4;
  v76 = a3;
  v77 = type metadata accessor for DispatchQoS.QoSClass();
  v74 = *(v77 - 1);
  __chkstk_darwin(v77);
  v73 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v72 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v69 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v68 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError;
  *(v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = 0;

  v14 = [a2 protectionSpace];
  v15 = [v14 host];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = (v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost);
  if (v16 == *(v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost) && v18 == *(v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost + 8))
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v65 = 0x800000010042BED0;
      v66 = 0x800000010042BF00;
      v78 = 0;
      v79 = 0xE000000000000000;
      v67 = v4;
      _StringGuts.grow(_:)(53);
      v32._countAndFlagsBits = 0xD00000000000001ALL;
      v32._object = 0x800000010042BF70;
      String.append(_:)(v32);
      v33 = [a2 protectionSpace];
      v34 = [v33 host];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._object = 0x800000010042BF90;
      v39._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v39);
      v40 = *v19;
      v41 = v19[1];

      v42._countAndFlagsBits = v40;
      v42._object = v41;
      String.append(_:)(v42);

      v62 = v79;
      v63 = v78;
      v64 = type metadata accessor for KnoxServiceClient.ClientError();
      v43 = swift_allocObject();
      v61[1] = sub_10001AA40(0, &qword_1004A7840);
      v61[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v78 = &_swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v70 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
      v44 = v73;
      v45 = v74;
      v46 = v77;
      (*(v74 + 104))(v73, enum case for DispatchQoS.QoSClass.default(_:), v77);
      static OS_dispatch_queue.global(qos:)();
      (*(v45 + 8))(v44, v46);
      v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v48 = v65;
      *(v43 + 16) = 0xD00000000000002BLL;
      *(v43 + 24) = v48;
      v49 = v66;
      *(v43 + 32) = 0xD00000000000006ELL;
      *(v43 + 40) = v49;
      *(v43 + 56) = 19;
      *(v43 + 48) = 83;
      v50 = v62;
      *(v43 + 64) = v63;
      *(v43 + 72) = v50;
      *(v43 + 80) = 0;
      *(v43 + 88) = v47;
      sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v51 = swift_allocError();
      *v52 = v43;
      *(v67 + v13) = v51;

      static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100376A40;
      v54 = sub_10005A570();
      if (v55)
      {
        v56 = v54;
        v57 = v55;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_10001A9EC();
        *(v53 + 32) = v56;
        *(v53 + 40) = v57;
        sub_10001AA40(0, &qword_1004A7380);
        v58 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v76(2, 0);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v21 = [a2 protectionSpace];
  v22 = [v21 authenticationMethod];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v23 && v26 == v25)
  {

LABEL_9:

    v29 = sub_10004850C(a2);
    v77 = v28;
    goto LABEL_10;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_9;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v23 && v59 == v25)
  {
  }

  else
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v60 & 1) == 0)
    {
      v77 = 0;
      v29 = 1;
      goto LABEL_11;
    }
  }

  v77 = *(v4 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
  v28 = v77;
  v29 = 0;
LABEL_10:
  v30 = v28;
LABEL_11:
  v76(v29, v77);

  v31 = v77;
}

uint64_t sub_10004850C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v107 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v102 = *(v7 - 8);
  v103 = v7;
  __chkstk_darwin(v7);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v101);
  v105 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v104 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 protectionSpace];
  v13 = [v12 host];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [a1 protectionSpace];
  v18 = [v17 serverTrust];

  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = [a1 protectionSpace];
  v20 = [v19 authenticationMethod];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    goto LABEL_6;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {

LABEL_15:
    v99 = 0x800000010042C070;
    v100 = 0x800000010042BF00;
    v109 = 0;
    v110 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    v52._countAndFlagsBits = 0xD00000000000001ALL;
    v52._object = 0x800000010042BF70;
    String.append(_:)(v52);
    v53._countAndFlagsBits = v14;
    v53._object = v16;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 0xD000000000000031;
    v54._object = 0x800000010042C090;
    String.append(_:)(v54);
    v96 = v110;
    v97 = v109;
    v98 = type metadata accessor for KnoxServiceClient.ClientError();
    v55 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v95 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v109 = &_swiftEmptyArrayStorage;
    sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v102 + 104))(v106, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v103);
    v56 = v107;
    (*(v5 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v4);
    static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v56, v4);
    v57 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v58 = v99;
    *(v55 + 16) = 0xD000000000000015;
    *(v55 + 24) = v58;
    v59 = v100;
    *(v55 + 32) = 0xD00000000000006ELL;
    *(v55 + 40) = v59;
    *(v55 + 56) = 19;
    *(v55 + 48) = 139;
    v60 = v96;
    *(v55 + 64) = v97;
    *(v55 + 72) = v60;
    *(v55 + 80) = 0;
    *(v55 + 88) = v57;
    sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v61 = swift_allocError();
    *v62 = v55;
    *(v2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = v61;

    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100376A40;
    result = sub_10005A570();
    if (v64)
    {
      v65 = result;
      v66 = v64;
      *(v63 + 56) = &type metadata for String;
      *(v63 + 64) = sub_10001A9EC();
      *(v63 + 32) = v65;
      *(v63 + 40) = v66;
      sub_10001AA40(0, &qword_1004A7380);
      v67 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return 1;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_6:
  sub_10004980C();
  type metadata accessor for SecCertificate(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = SecTrustSetAnchorCertificates(v18, isa);

  v93 = v4;
  v94 = v2;
  v100 = v18;
  v92 = v5;
  if (v27)
  {
    v28 = SecCopyErrorMessageString(v27, 0);
    if (!v28)
    {
      v28 = String._bridgeToObjectiveC()();
    }

    v98 = 0x800000010042C070;
    v99 = 0x800000010042BF00;
    v109 = 0;
    v110 = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v29._countAndFlagsBits = 0xD00000000000002ELL;
    v29._object = 0x800000010042C0D0;
    String.append(_:)(v29);
    v91 = v28;
    v108 = v28;
    type metadata accessor for CFString(0);
    _print_unlocked<A, B>(_:_:)();
    v30._countAndFlagsBits = 0x2072657672655320;
    v30._object = 0xED0000203A736177;
    String.append(_:)(v30);
    v31._countAndFlagsBits = v14;
    v31._object = v16;
    String.append(_:)(v31);

    v95 = v110;
    v96 = v109;
    v97 = type metadata accessor for KnoxServiceClient.ClientError();
    v32 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    static DispatchQoS.userInitiated.getter();
    v109 = &_swiftEmptyArrayStorage;
    sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v102 + 104))(v106, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v103);
    v34 = v92;
    v33 = v93;
    v35 = v107;
    (*(v92 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v93);
    static OS_dispatch_queue.global(qos:)();
    (*(v34 + 8))(v35, v33);
    v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v37 = v98;
    *(v32 + 16) = 0xD000000000000015;
    *(v32 + 24) = v37;
    v38 = v99;
    *(v32 + 32) = 0xD00000000000006ELL;
    *(v32 + 40) = v38;
    *(v32 + 56) = 19;
    *(v32 + 48) = 152;
    v39 = v95;
    *(v32 + 64) = v96;
    *(v32 + 72) = v39;
    *(v32 + 80) = 0;
    *(v32 + 88) = v36;
    sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v40 = swift_allocError();
    *v41 = v32;
    *(v94 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = v40;

    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100376A40;
    result = sub_10005A570();
    if (v44)
    {
      v45 = result;
      v46 = v44;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_10001A9EC();
      *(v42 + 32) = v45;
      *(v42 + 40) = v46;
      sub_10001AA40(0, &qword_1004A7380);
      v47 = static OS_os_log.default.getter();
      v48 = 2;
      os_log(_:dso:log:_:_:)();

      return v48;
    }

    goto LABEL_24;
  }

  v49 = swift_slowAlloc();
  v50 = SecTrustEvaluateWithError(v18, v49);
  v51 = *v49;
  if (v50)
  {
    if (!v51)
    {

      [objc_allocWithZone(NSURLCredential) initWithTrust:v18];

      return 0;
    }

    goto LABEL_18;
  }

  if (v51)
  {
LABEL_18:
    v91 = v49;
    v109 = v51;
    type metadata accessor for CFError(0);
    sub_10004A230(&qword_1004A7910, type metadata accessor for CFError);
    v68 = Error.localizedDescription.getter();
    v70 = v69;
    goto LABEL_20;
  }

  v91 = v49;
  v70 = 0xED0000726F727265;
  v68 = 0x206E776F6E6B6E55;
LABEL_20:
  v98 = 0x800000010042C070;
  v99 = 0x800000010042BF00;
  v109 = 0;
  v110 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v71._countAndFlagsBits = 0xD000000000000025;
  v71._object = 0x800000010042C100;
  String.append(_:)(v71);
  v72._countAndFlagsBits = v14;
  v72._object = v16;
  String.append(_:)(v72);

  v73._countAndFlagsBits = 0x7265206874697720;
  v73._object = 0xED0000203A726F72;
  String.append(_:)(v73);
  v74._countAndFlagsBits = v68;
  v74._object = v70;
  String.append(_:)(v74);

  v95 = v110;
  v96 = v109;
  v97 = type metadata accessor for KnoxServiceClient.ClientError();
  v75 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  static DispatchQoS.userInitiated.getter();
  v109 = &_swiftEmptyArrayStorage;
  sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v102 + 104))(v106, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v103);
  v77 = v92;
  v76 = v93;
  v78 = v107;
  (*(v92 + 104))(v107, enum case for DispatchQoS.QoSClass.default(_:), v93);
  static OS_dispatch_queue.global(qos:)();
  (*(v77 + 8))(v78, v76);
  v79 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v80 = v98;
  *(v75 + 16) = 0xD000000000000015;
  *(v75 + 24) = v80;
  v81 = v99;
  *(v75 + 32) = 0xD00000000000006ELL;
  *(v75 + 40) = v81;
  *(v75 + 56) = 19;
  *(v75 + 48) = 177;
  v82 = v95;
  *(v75 + 64) = v96;
  *(v75 + 72) = v82;
  *(v75 + 80) = 0;
  *(v75 + 88) = v79;
  sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  v83 = swift_allocError();
  *v84 = v75;
  *(v94 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = v83;

  static os_log_type_t.error.getter();
  sub_1000039E8(&unk_1004A7370);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100376A40;
  result = sub_10005A570();
  if (v86)
  {
    v87 = result;
    v88 = v86;
    *(v85 + 56) = &type metadata for String;
    *(v85 + 64) = sub_10001A9EC();
    *(v85 + 32) = v87;
    *(v85 + 40) = v88;
    sub_10001AA40(0, &qword_1004A7380);
    v89 = static OS_os_log.default.getter();
    v48 = 2;
    os_log(_:dso:log:_:_:)();

    return v48;
  }

LABEL_25:
  __break(1u);
  return result;
}

id KnoxURLSessionPinningDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KnoxURLSessionPinningDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000495B8()
{
  sub_10000B080();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v0 = Data.init(base64Encoded:options:)();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1004E29E0 = v0;
    *algn_1004E29E8 = v2;
  }

  return result;
}

uint64_t sub_100049684()
{
  sub_10000B080();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v0 = Data.init(base64Encoded:options:)();
  v2 = v1;

  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1004E29F0 = v0;
    *algn_1004E29F8 = v2;
  }

  return result;
}

void sub_10004980C()
{
  if (qword_1004A6A78 != -1)
  {
    swift_once();
  }

  v0 = qword_1004E29E0;
  v1 = *algn_1004E29E8;
  sub_1000318C0(qword_1004E29E0, *algn_1004E29E8);
  if (qword_1004A6A80 != -1)
  {
    swift_once();
  }

  v2 = qword_1004E29F0;
  v3 = *algn_1004E29F8;
  sub_1000318C0(qword_1004E29F0, *algn_1004E29F8);
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_1000318C0(v0, v1);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = SecCertificateCreateWithData(kCFAllocatorDefault, isa);

  if (v5 && (sub_100031928(v0, v1), specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(), specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(), specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(), specialized ContiguousArray._endMutation()(), sub_1000318C0(v2, v3), v6 = Data._bridgeToObjectiveC()().super.isa, v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v6), v6, v7))
  {
    sub_100031928(v2, v3);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    swift_arrayDestroy();
  }

  else
  {
    __break(1u);
  }
}

void sub_100049A0C(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v74 = a3;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v71 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v70 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v67 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v75 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError;
  *(a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_sessionError) = 0;

  v14 = [a1 protectionSpace];
  v15 = [v14 host];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = (a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost);
  if (v16 == *(a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost) && v18 == *(a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_expectedHost + 8))
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v65 = 0x800000010042BED0;
      v66 = 0x800000010042BF00;
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v32._countAndFlagsBits = 0xD00000000000001ALL;
      v32._object = 0x800000010042BF70;
      String.append(_:)(v32);
      v33 = [a1 protectionSpace];
      v34 = [v33 host];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._object = 0x800000010042BF90;
      v39._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v39);
      v40 = *v19;
      v41 = v19[1];

      v42._countAndFlagsBits = v40;
      v42._object = v41;
      String.append(_:)(v42);

      v62 = v77;
      v63 = v76;
      v64 = type metadata accessor for KnoxServiceClient.ClientError();
      v43 = swift_allocObject();
      v61[0] = sub_10001AA40(0, &qword_1004A7840);
      v61[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v76 = &_swiftEmptyArrayStorage;
      sub_10004A230(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v68 + 104))(v70, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v69);
      v44 = v71;
      v45 = v72;
      v46 = v73;
      (*(v72 + 104))(v71, enum case for DispatchQoS.QoSClass.default(_:), v73);
      static OS_dispatch_queue.global(qos:)();
      (*(v45 + 8))(v44, v46);
      v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v48 = v65;
      *(v43 + 16) = 0xD00000000000002BLL;
      *(v43 + 24) = v48;
      v49 = v66;
      *(v43 + 32) = 0xD00000000000006ELL;
      *(v43 + 40) = v49;
      *(v43 + 56) = 19;
      *(v43 + 48) = 83;
      v50 = v62;
      *(v43 + 64) = v63;
      *(v43 + 72) = v50;
      *(v43 + 80) = 0;
      *(v43 + 88) = v47;
      sub_10004A230(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v51 = swift_allocError();
      *v52 = v43;
      *(a2 + v13) = v51;

      static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100376A40;
      v54 = sub_10005A570();
      if (v55)
      {
        v56 = v54;
        v57 = v55;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_10001A9EC();
        *(v53 + 32) = v56;
        *(v53 + 40) = v57;
        sub_10001AA40(0, &qword_1004A7380);
        v58 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v74[2](v74, 2, 0);
      }

      else
      {
        _Block_release(v74);
        __break(1u);
      }

      return;
    }
  }

  v21 = [a1 protectionSpace];
  v22 = [v21 authenticationMethod];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v23 && v26 == v25)
  {

LABEL_9:

    v29 = sub_10004850C(a1);
    v75 = v28;
    goto LABEL_10;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_9;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v23 && v59 == v25)
  {
  }

  else
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v60 & 1) == 0)
    {
      v75 = 0;
      v29 = 1;
      goto LABEL_11;
    }
  }

  v75 = *(a2 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
  v28 = v75;
  v29 = 0;
LABEL_10:
  v30 = v28;
LABEL_11:
  (v74)[2](v74, v29, v75);

  v31 = v75;
}

uint64_t sub_10004A230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004A28C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_10004A2F8()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10004A350(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *RawRequestTask.init(client:url:)(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawData) = &_swiftEmptyArrayStorage;
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawURL;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + v6, a2, v7);
  v9 = sub_10003D38C(a1);
  sub_1000039E8(&qword_1004A6B08);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100376BB0;
  v11 = v9;
  *(v10 + 32) = URL.path.getter();
  *(v10 + 40) = v12;
  v13 = URL.query.getter();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(v10 + 48) = v15;
  *(v10 + 56) = v16;
  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  BidirectionalCollection<>.joined(separator:)();

  v17 = String.count.getter();
  v18 = String._bridgeToObjectiveC()();

  if (v17 >= 60)
  {
    v19 = 60;
  }

  else
  {
    v19 = v17;
  }

  v20 = [v18 substringToIndex:v19];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25 = String.count.getter();

  if (v25 < v17)
  {
    v26._countAndFlagsBits = 3026478;
    v26._object = 0xE300000000000000;
    String.append(_:)(v26);
  }

  sub_10004AFE0();
  String.insert<A>(contentsOf:at:)();

  (*(v8 + 8))(a2, v7);
  v27 = &v11[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;

  return v11;
}

uint64_t sub_10004A720@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for URLRequest();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = __chkstk_darwin(v3);
  v38 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v6;
  v7 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v36 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v35 = &v30 - v15;
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = *(v11 + 16);
  v33 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawURL;
  v34 = v18;
  v18(&v30 - v16, v2 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawURL, v10);
  URL.path.getter();
  v39 = *(v11 + 8);
  v39(v17, v10);
  v19._object = 0x800000010042C960;
  v19._countAndFlagsBits = 0xD000000000000016;
  LOBYTE(v17) = String.hasSuffix(_:)(v19);

  if (v17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  sub_10001FB20(v2 + v21, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10004B034(v9);
    v22 = v2 + v33;
    v23 = v36;
    v34(v36, v22, v10);
    v41 = v20;
    v24 = v38;
    v25 = v40;
    sub_10005ADB0(v23, 0, 1, v38);
    v26 = v23;
    if (v25)
    {
      return (v39)(v26, v10);
    }
  }

  else
  {
    v28 = v35;
    (*(v11 + 32))(v35, v9, v10);
    v41 = v20;
    v24 = v37;
    v29 = v40;
    sub_10005ADB0(v28, 0, 1, v37);
    v26 = v28;
    if (v29)
    {
      return (v39)(v26, v10);
    }
  }

  v39(v26, v10);
  return (*(v30 + 32))(v32, v24, v31);
}

uint64_t sub_10004AB14(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = result;
  isEscapingClosureAtFileLocation = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v8 = HIDWORD(result) - result;
  }

LABEL_11:
  v11 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
  OS_dispatch_queue.sync<A>(execute:)();
  v12 = v20[0] + v8;
  if (__OFADD__(v20[0], v8))
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = *(isEscapingClosureAtFileLocation + v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = isEscapingClosureAtFileLocation;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100027124;
  *(v11 + 24) = v14;
  v20[4] = sub_10001F874;
  v20[5] = v11;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10003885C;
  v20[3] = &unk_10047E1B8;
  v15 = _Block_copy(v20);

  dispatch_sync(v13, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawData;
  swift_beginAccess();
  isEscapingClosureAtFileLocation = *(v3 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v11) = isEscapingClosureAtFileLocation;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    isEscapingClosureAtFileLocation = sub_100011F34(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
    *(v3 + v11) = isEscapingClosureAtFileLocation;
  }

  v18 = *(isEscapingClosureAtFileLocation + 16);
  v17 = *(isEscapingClosureAtFileLocation + 24);
  if (v18 >= v17 >> 1)
  {
    isEscapingClosureAtFileLocation = sub_100011F34((v17 > 1), v18 + 1, 1, isEscapingClosureAtFileLocation);
  }

  *(isEscapingClosureAtFileLocation + 16) = v18 + 1;
  v19 = isEscapingClosureAtFileLocation + 16 * v18;
  *(v19 + 32) = v5;
  *(v19 + 40) = a2;
  *(v3 + v11) = isEscapingClosureAtFileLocation;
  swift_endAccess();
  return sub_1000318C0(v5, a2);
}

id sub_10004ADCC()
{
  v0 = sub_10004B0FC();

  return v0;
}

uint64_t sub_10004AE28()
{

  v1 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id RawRequestTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RawRequestTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10004AF7C()
{
  result = qword_1004A6B50;
  if (!qword_1004A6B50)
  {
    sub_100003A94(&qword_1004A6B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6B50);
  }

  return result;
}

unint64_t sub_10004AFE0()
{
  result = qword_1004A7920;
  if (!qword_1004A7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7920);
  }

  return result;
}

uint64_t sub_10004B034(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A6D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004B09C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B0E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B0FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v69 = type metadata accessor for CharacterSet();
  v3 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10004BC84;
  *(v9 + 24) = v8;
  v74 = sub_10001FA40;
  v75 = v9;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10003885C;
  v73 = &unk_10047E250;
  v10 = _Block_copy(&aBlock);
  v11 = v1;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  MultiPageCapable<>.paginationLoop()(ObjectType, &protocol witness table for RawRequestTask);
  v15 = v14;
  v16 = OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_rawData;
  swift_beginAccess();
  v17 = *(*&v11[v16] + 16);
  if (v17)
  {
    v62 = v11;
    v63 = v15;
    v64 = v7;
    v18 = (v3 + 8);

    v66 = 0;
    v20 = &_swiftEmptyArrayStorage;
    v61 = v19;
    v21 = (v19 + 40);
    v65 = (v3 + 8);
    do
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      sub_1000318C0(v23, *v21);
      static String.Encoding.utf8.getter();
      v24 = String.init(data:encoding:)();
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0xE000000000000000;
      }

      aBlock = v26;
      v71 = v27;
      v28 = v68;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10000B080();
      v29 = StringProtocol.trimmingCharacters(in:)();
      v31 = v30;
      (*v18)(v28, v69);

      aBlock = v29;
      v71 = v31;

      v32._countAndFlagsBits = 91;
      v32._object = 0xE100000000000000;
      v33 = String.hasPrefix(_:)(v32);

      if (v33)
      {
        if ((v31 & 0x2000000000000000) != 0)
        {
          if ((v31 & 0xF00000000000000) == 0)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        else if ((v29 & 0xFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_40;
        }

        String.subscript.getter();

        result = String.index(_:offsetBy:limitedBy:)();
        if (v34)
        {
          goto LABEL_46;
        }

        result = String.removeSubrange(_:)();
        v18 = v65;
        if ((v71 & 0x2000000000000000) != 0)
        {
          if ((v71 & 0xF00000000000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else if ((aBlock & 0xFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_41;
        }

        String.index(before:)();
        String.remove(at:)();

        v66 = 1;
      }

      v36 = aBlock;
      v35 = v71;
      v37 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v37 = aBlock & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100011A4C(0, *(v20 + 2) + 1, 1, v20);
        }

        v39 = *(v20 + 2);
        v38 = *(v20 + 3);
        if (v39 >= v38 >> 1)
        {
          v20 = sub_100011A4C((v38 > 1), v39 + 1, 1, v20);
        }

        sub_100031928(v23, v22);
        *(v20 + 2) = v39 + 1;
        v40 = &v20[16 * v39];
        *(v40 + 4) = v36;
        *(v40 + 5) = v35;
      }

      else
      {
        sub_100031928(v23, v22);
      }

      v21 += 2;
      --v17;
    }

    while (v17);

    v7 = v64;
    if (v66)
    {
      aBlock = v20;
      sub_1000039E8(&qword_1004A6B48);
      sub_10004AF7C();
      v41 = BidirectionalCollection<>.joined(separator:)();
      v43 = v42;

      aBlock = 91;
      v71 = 0xE100000000000000;
      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);

      v45._countAndFlagsBits = 93;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);

      v46 = aBlock;
      v47 = v71;
      v15 = v63;
      v11 = v62;
      goto LABEL_36;
    }

    v15 = v63;
    v11 = v62;
  }

  else
  {
    v20 = &_swiftEmptyArrayStorage;
  }

  aBlock = v20;
  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  v46 = BidirectionalCollection<>.joined(separator:)();
  v47 = v48;

LABEL_36:
  v49 = v11;
  v50 = &v11[OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json];
  swift_beginAccess();
  *v50 = v46;
  v50[1] = v47;

  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = 1;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10001F8CC;
  *(v52 + 24) = v51;
  v74 = sub_10001FA40;
  v75 = v52;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10003885C;
  v73 = &unk_10047E2C8;
  v53 = _Block_copy(&aBlock);
  v54 = v49;

  dispatch_sync(v7, v53);
  _Block_release(v53);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    goto LABEL_44;
  }

  sub_100003B20(*&v54[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &aBlock);
  v55 = v73;
  v56 = v74;
  sub_10000E2A8(&aBlock, v73);
  (*(v56 + 2))(v54, v15, v55, v56);
  sub_100003C3C(&aBlock);
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  *(v57 + 24) = v15 == 0;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_10001F9F8;
  *(v58 + 24) = v57;
  v74 = sub_10001FA40;
  v75 = v58;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10003885C;
  v73 = &unk_10047E340;
  v59 = _Block_copy(&aBlock);
  v60 = v54;

  dispatch_sync(v7, v59);
  _Block_release(v59);
  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

  if ((v59 & 1) == 0)
  {
    return v60;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RawRequestTask()
{
  result = qword_1004A7950;
  if (!qword_1004A7950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BA60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic14RawRequestTask_json);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10004BAC4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10004BC4C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004BCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v69 = a1;
  v92 = type metadata accessor for ArchiveHeader.FieldKey();
  v4 = *(v92 - 8);
  v5 = __chkstk_darwin(v92);
  v78 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v67 = &v59 - v8;
  __chkstk_darwin(v7);
  v10 = &v59 - v9;
  v11 = type metadata accessor for ArchiveHeader.FieldType();
  v12 = *(v11 - 8);
  v90 = v11;
  v91 = v12;
  v13 = __chkstk_darwin(v11);
  v89 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88 = &v59 - v15;
  v70 = type metadata accessor for ArchiveHeader.Field();
  v16 = *(v70 - 8);
  v17 = __chkstk_darwin(v70);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v59 - v21;
  __chkstk_darwin(v20);
  v87 = &v59 - v23;
  v94 = a3;
  v24 = type metadata accessor for ArchiveHeader();
  v25 = sub_10004D30C(&qword_1004A7960, &type metadata accessor for ArchiveHeader);
  dispatch thunk of Collection.startIndex.getter();
  v96 = a3;
  v63 = a3;

  dispatch thunk of Collection.endIndex.getter();
  if (v95 == v94)
  {
  }

  v65 = v10;
  v77 = v19;
  v62 = v19 + 8;
  v85 = (v16 + 32);
  v86 = (v16 + 16);
  v84 = v91 + 1;
  v91 = (v16 + 8);
  v76 = (v16 + 88);
  v75 = enum case for ArchiveHeader.Field.uint(_:);
  v73 = (v16 + 96);
  v66 = enum case for ArchiveHeader.Field.string(_:);
  v61 = enum case for ArchiveHeader.Field.timespec(_:);
  v60 = enum case for ArchiveHeader.Field.blob(_:);
  v72 = xmmword_100376A40;
  v27 = v70;
  v80 = v22;
  v82 = v25;
  v83 = v24;
  v74 = (v4 + 8);
  while (1)
  {
    v28 = dispatch thunk of Collection.subscript.read();
    v29 = v87;
    v30 = *v86;
    (*v86)(v87);
    v28(&v94, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v85)(v22, v29, v27);
    v31 = v88;
    ArchiveHeader.Field.type.getter();
    v32 = v22;
    v33 = v89;
    static ArchiveHeader.FieldType.blob.getter();
    sub_10004D30C(&qword_1004A7968, &type metadata accessor for ArchiveHeader.FieldType);
    v34 = v90;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v35 = *v84;
    (*v84)(v33, v34);
    v35(v31, v34);
    if (v94 != v93)
    {
      v22 = v32;
      goto LABEL_5;
    }

    v36 = v77;
    (v30)(v77, v32, v27);
    v37 = (*v76)(v36, v27);
    v22 = v32;
    if (v37 == v75)
    {
      (*v73)(v36, v27);
      v38 = v74;
LABEL_13:
      v39 = v38;
      v40 = v92;
LABEL_14:
      (*v39)(v36, v40);
      static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370);
      v41 = swift_allocObject();
      *(v41 + 16) = v72;
      v42 = v78;
      ArchiveHeader.Field.key.getter();
      v43 = ArchiveHeader.FieldKey.description.getter();
      v45 = v44;
      (*v38)(v42, v92);
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_10001A9EC();
      *(v41 + 32) = v43;
      *(v41 + 40) = v45;
      v22 = v80;
      sub_10001AA40(0, &qword_1004A7380);
      v46 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      goto LABEL_5;
    }

    v38 = v74;
    if (v37 == v66)
    {
      (*v73)(v36, v27);
      sub_1000039E8(&qword_1004A7970);

      goto LABEL_13;
    }

    if (v37 == v61)
    {
      (*v73)(v36, v27);
      goto LABEL_13;
    }

    v39 = v91;
    v40 = v27;
    if (v37 != v60)
    {
      goto LABEL_14;
    }

    (*v73)(v36, v27);
    v47 = *&v36[*(sub_1000039E8(&qword_1004A7978) + 48)];
    v48 = *v38;
    result = (*v38)(v36, v92);
    if ((v47 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v64 = v48;
    if (v47)
    {
      break;
    }

LABEL_5:
    (*v91)(v22, v27);
    dispatch thunk of Collection.endIndex.getter();
    if (v95 == v94)
    {
    }
  }

  while (1)
  {
    v49 = v92;
    if (v47 >= 0xF4240)
    {
      v50 = 1000000;
    }

    else
    {
      v50 = v47;
    }

    v51 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v51 + 16) = v50;
    v79 = v51;
    bzero((v51 + 32), v50);
    v52 = v65;
    ArchiveHeader.Field.key.getter();
    v53 = v81;
    dispatch thunk of ArchiveStream.readBlob(key:into:)();
    v81 = v53;
    if (v53)
    {
      v64(v52, v49);

      return (*v91)(v80, v70);
    }

    v54 = v64;
    v64(v52, v49);
    v55 = v38;
    v56 = v67;
    v71 = *(v79 + 16);
    ArchiveHeader.Field.key.getter();
    v57 = v81;
    dispatch thunk of ArchiveStream.writeBlob(key:from:)();
    v81 = v57;
    if (v57)
    {
      break;
    }

    v54(v56, v49);

    v58 = v47 <= v50;
    v47 -= v50;
    v22 = v80;
    v38 = v55;
    v27 = v70;
    if (v58)
    {
      goto LABEL_5;
    }
  }

  v54(v56, v49);

  return (*v91)(v80, v70);
}

uint64_t sub_10004C684(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v94 = a4;
  v95 = a5;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v92 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v89 = *(v14 - 8);
  v90 = v14;
  __chkstk_darwin(v14);
  v91 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v85);
  v88 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ArchiveHeader.Field();
  v84 = *(v86 - 1);
  v19 = __chkstk_darwin(v86);
  v82 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v83 = &v77 - v21;
  v22 = type metadata accessor for ArchiveHeader.FieldKey();
  result = __chkstk_darwin(v22);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a3 + 16);
  if (v27)
  {
    v78 = v12;
    v79 = v11;
    v80 = v24;
    v93 = a6;
    v96 = v26;
    v97 = v6;
    v81 = result;
    v28 = 0;
    v29 = a3 + 40;
    v100 = &_swiftEmptyArrayStorage;
    while (2)
    {
      v30 = (v29 + 16 * v28);
      v31 = v28;
      while (1)
      {
        if (v31 >= v27)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_26;
        }

        v32 = *(v30 - 1);
        v33 = *v30;

        v34._countAndFlagsBits = v32;
        v34._object = v33;
        if (String.hasPrefix(_:)(v34))
        {
          break;
        }

        ++v31;
        v30 += 2;
        if (v28 == v27)
        {
          v38 = *(v100 + 2);
          if (!v38)
          {
          }

          goto LABEL_16;
        }
      }

      v35 = v100;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100011A4C(0, *(v35 + 2) + 1, 1, v35);
        v35 = result;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      v100 = v35;
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        result = sub_100011A4C((v36 > 1), v37 + 1, 1, v100);
        v100 = result;
      }

      v39 = v100;
      *(v100 + 2) = v38;
      v40 = &v39[16 * v37];
      *(v40 + 4) = v32;
      *(v40 + 5) = v33;
      if (v28 != v27)
      {
        continue;
      }

      break;
    }

LABEL_16:
    v41 = v95;

    v42 = v96;
    v43 = v94;
    v44 = ArchiveHeader.FieldKey.init(_:)();
    __chkstk_darwin(v44);
    *(&v77 - 2) = v42;
    v45 = v97;
    v46 = sub_10004D098(sub_10004D2EC, (&v77 - 4));
    if (v47)
    {

      v97 = 0x800000010042CA40;
      v98 = 0;
      v100 = 0x800000010042CA70;
      v99 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v98 = 0xD000000000000019;
      v99 = 0x800000010042CAE0;
      v48._countAndFlagsBits = v43;
      v48._object = v41;
      String.append(_:)(v48);
      v49._object = 0x800000010042CB00;
      v49._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v49);
      v93 = v99;
      v94 = v98;
      v95 = type metadata accessor for KnoxServiceClient.ClientError();
      v50 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v86 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v98 = &_swiftEmptyArrayStorage;
      sub_10004D30C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v89 + 104))(v91, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v90);
      v51 = v78;
      v52 = v92;
      v53 = v79;
      (*(v78 + 104))(v92, enum case for DispatchQoS.QoSClass.default(_:), v79);
      static OS_dispatch_queue.global(qos:)();
      (*(v51 + 8))(v52, v53);
      v54 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v55 = v97;
      *(v50 + 16) = 0xD000000000000026;
      *(v50 + 24) = v55;
      v56 = v100;
      *(v50 + 32) = 0xD000000000000067;
      *(v50 + 40) = v56;
      *(v50 + 56) = 0;
      *(v50 + 48) = 100;
      v57 = v93;
      *(v50 + 64) = v94;
      *(v50 + 72) = v57;
      *(v50 + 80) = 0;
      *(v50 + 88) = v54;
      sub_10004D30C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v58 = v50;
      swift_willThrow();
      return (*(v80 + 8))(v96, v81);
    }

    else
    {
      v95 = v46;
      v97 = v45;

      v59 = (v100 + 40);
      v60 = a1;
      v61 = a2;
      do
      {
        v63 = *(v59 - 1);
        v62 = *v59;

        v64._countAndFlagsBits = v63;
        v64._object = v62;
        if (String.hasPrefix(_:)(v64))
        {

          v65 = String.count.getter();

          sub_10004D354(v65, a1, a2);

          v60 = static String._fromSubstring(_:)();
          v61 = v66;
        }

        v59 += 2;
        --v38;
      }

      while (v38);

      v67 = sub_1000039E8(&qword_1004A7970);
      v68 = v83;
      v69 = &v83[*(v67 + 48)];
      v71 = v80;
      v70 = v81;
      v72 = v96;
      (*(v80 + 16))(v83, v96, v81);
      *v69 = v60;
      v69[1] = v61;
      v73 = v84;
      v74 = v86;
      (*(v84 + 104))(v68, enum case for ArchiveHeader.Field.string(_:), v86);
      v75 = v82;
      ArchiveHeader.remove(at:)();
      v76 = *(v73 + 8);
      v76(v75, v74);
      ArchiveHeader.append(_:)();
      v76(v68, v74);
      return (*(v71 + 8))(v72, v70);
    }
  }

  return result;
}

uint64_t sub_10004CFAC()
{
  v0 = type metadata accessor for ArchiveHeader.FieldKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArchiveHeader.Field.key.getter();
  v4 = static ArchiveHeader.FieldKey.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_10004D098(uint64_t (*a1)(char *), uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v4 = type metadata accessor for ArchiveHeader.Field();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  type metadata accessor for ArchiveHeader();
  sub_10004D30C(&qword_1004A7960, &type metadata accessor for ArchiveHeader);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v8 = v21;
  if (v21 == v20[0])
  {
    return 0;
  }

  v9 = (v5 + 16);
  v16 = (v5 + 8);
  v17 = v4;
  while (1)
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v11 = v17;
    (*v9)(v7);
    v10(v20, 0);
    v12 = v18(v7);
    if (v3)
    {
      break;
    }

    v13 = v12;
    (*v16)(v7, v11);
    if (v13)
    {
      return v8;
    }

    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v8 = v21;
    if (v21 == v20[0])
    {
      return 0;
    }
  }

  (*v16)(v7, v11);
  return v8;
}

uint64_t sub_10004D30C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004D354(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t KnoxServiceClient.ClientError.__allocating_init(function:file:line:kind:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v16 = swift_allocObject();
  v26 = *a6;
  v25[1] = sub_10001AA40(0, &qword_1004A7840);
  v25[2] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v38 = &_swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  v18 = v29;
  v17 = v30;
  (*(v29 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v30);
  static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v11, v17);
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = v32;
  *(v16 + 16) = v31;
  *(v16 + 24) = v20;
  v21 = v34;
  *(v16 + 32) = v33;
  *(v16 + 40) = v21;
  *(v16 + 56) = v26;
  v22 = v36;
  *(v16 + 48) = v35;
  v23 = v37;
  *(v16 + 64) = v22;
  *(v16 + 72) = v23;
  *(v16 + 80) = 0;
  *(v16 + 88) = v19;
  return v16;
}

uint64_t static KnoxServiceClient.ClientError.withError(function:file:line:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  type metadata accessor for KnoxServiceClient.ClientError();
  if (swift_dynamicCast())
  {
    return v12;
  }

  v11 = _convertErrorToNSError(_:)();
  swift_allocObject();
  return sub_100059DCC(a1, a2, a3, a4, a5, v11);
}

void sub_10004D8C4(unint64_t a1, unsigned int a2)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10001F8D8(v7, v8 + v10, &qword_1004A73C0);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_startCount;
  swift_beginAccess();
  *&v2[v11] = 0;
  v12 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  v46 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue;
  v47 = OBJC_IVAR____TtC16KnoxClientPublic12DownloadTask_wasCancelled;
  swift_beginAccess();
  v48 = v12;
  swift_beginAccess();
  v13 = *&v3[v11];
  if (v13 <= a1)
  {
    v42 = a1 + 1;
    v44 = a1 == -1;
    v43 = xmmword_100376F00;
    v41 = a1;
    while (1)
    {
      v14 = __CFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        break;
      }

      *&v3[v11] = v15;

      if (*&v3[v11] > a1 || (v3[v47] & 1) != 0 || (sub_100029970() & 1) == 0 || !*&v3[v48])
      {
        return;
      }

      sub_1000039E8(&unk_1004A7370);
      v16 = swift_allocObject();
      *(v16 + 16) = v43;
      v17 = *&v3[v11];
      *(v16 + 56) = &type metadata for UInt;
      *(v16 + 64) = &protocol witness table for UInt;
      *(v16 + 32) = v17;
      if (v44)
      {
        goto LABEL_17;
      }

      *(v16 + 96) = &type metadata for UInt;
      *(v16 + 104) = &protocol witness table for UInt;
      *(v16 + 72) = v42;
      v18 = v16;
      v19 = [v3 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v18[17] = &type metadata for String;
      v18[18] = sub_10001A9EC();
      v18[14] = v20;
      v18[15] = v22;
      sub_10001AA40(0, &qword_1004A7380);
      v23 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_10002A7AC(0);
      v24 = *&v3[v46];
      v25 = swift_allocObject();
      *(v25 + 16) = v3;
      *(v25 + 24) = 0;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_100064E34;
      *(v26 + 24) = v25;
      v53 = sub_10001FA40;
      v54 = v26;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10003885C;
      v52 = &unk_10047EF68;
      v27 = _Block_copy(&aBlock);
      v28 = v3;

      dispatch_sync(v24, v27);
      _Block_release(v27);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if (v27)
      {
        goto LABEL_18;
      }

      *&v3[v48] = 0;

      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_100064E38;
      *(v30 + 24) = v29;
      v53 = sub_10001FA40;
      v54 = v30;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10003885C;
      v52 = &unk_10047EFE0;
      v31 = _Block_copy(&aBlock);
      v32 = v28;

      dispatch_sync(v24, v31);
      _Block_release(v31);
      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if (v31)
      {
        goto LABEL_19;
      }

      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_100064E3C;
      *(v34 + 24) = v33;
      v53 = sub_10001FA40;
      v54 = v34;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10003885C;
      v52 = &unk_10047F058;
      v35 = _Block_copy(&aBlock);
      v36 = v32;

      dispatch_sync(v24, v35);
      _Block_release(v35);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if (v35)
      {
        goto LABEL_20;
      }

      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = 0;
      v37[4] = 0xE000000000000000;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_100064EEC;
      *(v38 + 24) = v37;
      v53 = sub_10001FA40;
      v54 = v38;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10003885C;
      v52 = &unk_10047F0D0;
      v39 = _Block_copy(&aBlock);
      v36;

      dispatch_sync(v24, v39);
      _Block_release(v39);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_21;
      }

      sub_10002D264();
      sleep(v45);
      v13 = *&v3[v11];
      a1 = v41;
      if (v13 > v41)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_10004E0A8(unint64_t a1, unsigned int a2)
{
  v3 = v2;
  v54 = a2;
  v5 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v5 - 8);
  v7 = v49 - v6;
  v8 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  v49[1] = v8;
  sub_10001F8D8(v7, v8 + v10, &qword_1004A73C0);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount;
  swift_beginAccess();
  *&v2[v11] = 0;
  v12 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  v55 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue;
  v49[0] = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
  v56 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled;
  swift_beginAccess();
  v58 = v12;
  result = swift_beginAccess();
  v14 = *&v3[v11];
  if (v14 > a1)
  {
    return result;
  }

  v57 = 0;
  v51 = a1 + 1;
  v53 = a1 == -1;
  v52 = xmmword_100376F00;
  v50 = a1;
  while (1)
  {
    v15 = __CFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    *&v3[v11] = v16;
    result = sub_10001AA88();
    if (*&v3[v11] > a1 || (v3[v56] & 1) != 0)
    {
      return result;
    }

    v17 = *&v3[v58];
    if (v17)
    {
      v18 = *(v17 + 56);
      if (v18 == 9)
      {
        goto LABEL_15;
      }

      if (v18 == 13 || v18 == 16)
      {
        return result;
      }
    }

    v20 = v57;
    result = OS_dispatch_queue.sync<A>(execute:)();
    v57 = v20;
    if (!aBlock || !*&v3[v58])
    {
      return result;
    }

LABEL_15:
    sub_1000039E8(&unk_1004A7370);
    result = swift_allocObject();
    *(result + 16) = v52;
    v21 = *&v3[v11];
    *(result + 56) = &type metadata for UInt;
    *(result + 64) = &protocol witness table for UInt;
    *(result + 32) = v21;
    if (v53)
    {
      goto LABEL_24;
    }

    *(result + 96) = &type metadata for UInt;
    *(result + 104) = &protocol witness table for UInt;
    *(result + 72) = v51;
    v22 = result;
    v23 = [v3 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v22[17] = &type metadata for String;
    v22[18] = sub_10001A9EC();
    v22[14] = v24;
    v22[15] = v26;
    sub_10001AA40(0, &qword_1004A7380);
    v27 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v28 = *&v3[v55];
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_10001F8CC;
    *(v30 + 24) = v29;
    v63 = sub_10001FA40;
    v64 = v30;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_10003885C;
    v62 = &unk_10047ED10;
    v31 = _Block_copy(&aBlock);
    v32 = v3;

    dispatch_sync(v28, v31);
    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      goto LABEL_25;
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10004BC84;
    *(v34 + 24) = v33;
    v63 = sub_10001FA40;
    v64 = v34;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_10003885C;
    v62 = &unk_10047ED88;
    v35 = _Block_copy(&aBlock);
    v36 = v32;

    dispatch_sync(v28, v35);
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      goto LABEL_26;
    }

    *&v3[v58] = 0;

    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_100064CCC;
    *(v38 + 24) = v37;
    v63 = sub_10001FA40;
    v64 = v38;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_10003885C;
    v62 = &unk_10047EE00;
    v39 = _Block_copy(&aBlock);
    v40 = v36;

    dispatch_sync(v28, v39);
    _Block_release(v39);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if (v39)
    {
      goto LABEL_27;
    }

    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_100064CD4;
    *(v42 + 24) = v41;
    v63 = sub_10001FA40;
    v64 = v42;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_10003885C;
    v62 = &unk_10047EE78;
    v43 = _Block_copy(&aBlock);
    v44 = v40;

    dispatch_sync(v28, v43);
    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      goto LABEL_28;
    }

    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = 0;
    v45[4] = 0xE000000000000000;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_100064CE4;
    *(v46 + 24) = v45;
    v63 = sub_10001FA40;
    v64 = v46;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_10003885C;
    v62 = &unk_10047EEF0;
    v47 = _Block_copy(&aBlock);
    v44;

    dispatch_sync(v28, v47);
    _Block_release(v47);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_29;
    }

    sub_1000180C8();
    result = sleep(v54);
    v14 = *&v3[v11];
    a1 = v50;
    if (v14 > v50)
    {
      return result;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t static KnoxServiceClient.decodeJSONData<A>(decodableType:jsonData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a6;
  v10 = type metadata accessor for DecodingError.Context();
  v21[4] = *(v10 - 8);
  v21[5] = v10;
  v11 = __chkstk_darwin(v10);
  v21[1] = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v21[2] = v21 - v13;
  v22 = type metadata accessor for DecodingError();
  v21[3] = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v21 - v17;
  v19 = *(*(a5 - 8) + 56);
  v19(a1, 1, 1, a5);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  if (a4 >> 60 == 15)
  {
    __break(1u);

    result = sub_100003C3C(&v26);
    __break(1u);
  }

  else
  {
    v21[0] = a2;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*(v16 + 8))(a1, v15);

    v19(v18, 0, 1, a5);
    (*(v16 + 32))(a1, v18, v15);
    return 0;
  }

  return result;
}

uint64_t sub_10004F28C()
{
  v0 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, qword_1004A7980);
  v4 = sub_1000270B4(v3, qword_1004A7980);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F3E0()
{
  v0 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000279B4(v3, qword_1004A7998);
  v4 = sub_1000270B4(v3, qword_1004A7998);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F534@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for URL();
  v6 = sub_1000270B4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void sub_10004F5F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = sub_100013364(0x656C646E75424643, 0xEF6E6F6973726556), (v4 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_100003CA0(*(v2 + 56) + 32 * v3, v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v5 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_8;
  }

  v5 = v7;
  v6 = v8;
LABEL_8:
  qword_1004A79B0 = v5;
  qword_1004A79B8 = v6;
}

uint64_t static KnoxServiceClient.userAgentVersion.getter()
{
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1004A79B0;

  return v0;
}

uint64_t static KnoxServiceClient.userAgentVersion.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1004A79B0 = a1;
  qword_1004A79B8 = a2;
}

uint64_t (*static KnoxServiceClient.userAgentVersion.modify())()
{
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10004F8B4@<X0>(void *a1@<X8>)
{
  if (qword_1004A6A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1004A79B8;
  *a1 = qword_1004A79B0;
  a1[1] = v2;
}

uint64_t sub_10004F934(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1004A6A98;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1004A79B0 = v2;
  qword_1004A79B8 = v1;
}

uint64_t sub_10004F9DC(uint64_t result)
{
  if (result >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = result;
  }

  if (result < 1)
  {
    v2 = 1;
  }

  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount) = v2;
  return result;
}

uint64_t (*sub_10004FA00(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_10004FA34;
}

uint64_t sub_10004FA34(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 16)
  {
    v1 = 16;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  *(*result + *(result + 8)) = v1;
  return result;
}

unint64_t sub_10004FA68(unint64_t result)
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount) = v2;
  return result;
}

uint64_t *(*sub_10004FA80(void *a1))(uint64_t *result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_1000345E8;
}

uint64_t sub_10004FAC4(uint64_t result)
{
  if (result)
  {
    if (result < 0xB)
    {
      *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay) = result;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay) = 10;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay) = 1;
  }

  return result;
}

uint64_t (*sub_10004FAFC(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_10004FB30;
}

uint64_t sub_10004FB30(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 0xA)
  {
    v2 = 10;
  }

  else
  {
    v2 = *(result + 16);
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  *(*result + *(result + 8)) = v3;
  return result;
}

uint64_t sub_10004FB54()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10004FB98(char a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_10004FC58(unint64_t result)
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount) = v2;
  return result;
}

uint64_t *(*sub_10004FC70(void *a1))(uint64_t *result)
{
  v2 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_100064EE8;
}

id sub_10004FCA4()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10004FCF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10004FDB0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t sub_10004FE04(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

double sub_10004FEC0()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10004FF04(double a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t KnoxServiceClient.knoxHostURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10005003C(uint64_t a1)
{
  v73 = type metadata accessor for CharacterSet();
  __chkstk_darwin(v73);
  v72 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 64);
  v68 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v67 = (v5 + 63) >> 6;
  v71 = (v2 + 8);

  v8 = 0;
  v70 = &_swiftEmptyDictionarySingleton;
  v66 = xmmword_100376A40;
  v69 = a1;
  while (v7)
  {
LABEL_9:
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v7)))));
    v11 = *v10;
    v12 = v10[1];
    v7 &= v7 - 1;
    v76 = *v10;
    v77 = v12;

    v13 = v72;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10000B080();
    v14 = StringProtocol.trimmingCharacters(in:)();
    v16 = v15;
    v17 = *v71;
    v18 = v13;
    v19 = v14;
    (*v71)(v18, v73);
    if (String.count.getter())
    {
      if (!*(a1 + 16))
      {

        goto LABEL_20;
      }

      v20 = sub_100013364(v11, v12);
      v22 = v21;

      if (v22)
      {
        v23 = (*(v69 + 56) + 16 * v20);
        v24 = v23[1];
        v76 = *v23;
        v77 = v24;

        v25 = v19;
        v26 = v72;
        static CharacterSet.whitespacesAndNewlines.getter();
        v65[0] = StringProtocol.trimmingCharacters(in:)();
        v28 = v27;
        v17(v26, v73);

        v29 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v29;
        v31 = sub_100013364(v25, v16);
        v33 = v29[2];
        v34 = (v32 & 1) == 0;
        v35 = __OFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          goto LABEL_35;
        }

        v37 = v32;
        if (v29[3] >= v36)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_28;
          }

          v58 = v31;
          sub_10005D7B4();
          v31 = v58;
          v55 = v65[0];
          if ((v37 & 1) == 0)
          {
            goto LABEL_31;
          }

LABEL_29:
          v56 = v31;

          v70 = v76;
          v57 = (v76[7] + 16 * v56);
          *v57 = v55;
          v57[1] = v28;

          a1 = v69;
        }

        else
        {
          sub_10005CB64(v36, isUniquelyReferenced_nonNull_native);
          v31 = sub_100013364(v25, v16);
          if ((v37 & 1) != (v38 & 1))
          {
            goto LABEL_37;
          }

LABEL_28:
          v55 = v65[0];
          if (v37)
          {
            goto LABEL_29;
          }

LABEL_31:
          v59 = v76;
          v76[(v31 >> 6) + 8] |= 1 << v31;
          v60 = (v59[6] + 16 * v31);
          *v60 = v25;
          v60[1] = v16;
          v61 = (v59[7] + 16 * v31);
          *v61 = v55;
          v61[1] = v28;
          v62 = v59[2];
          v35 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v35)
          {
            goto LABEL_36;
          }

          v70 = v59;
          v59[2] = v63;
          a1 = v69;
        }
      }

      else
      {
LABEL_20:
        v46 = sub_100013364(v19, v16);
        v48 = v47;

        a1 = v69;
        if (v48)
        {
          v49 = v70;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v76 = v49;
          if (!v50)
          {
            sub_10005D7B4();
            v49 = v76;
          }

          v70 = v49;
          sub_10005D37C(v46, v49);
        }
      }
    }

    else
    {

      sub_1000039E8(&unk_1004A7370);
      v39 = swift_allocObject();
      *(v39 + 16) = v66;
      v76 = v11;
      v77 = v12;

      v40._countAndFlagsBits = 58;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      if (*(a1 + 16))
      {
        v41 = sub_100013364(v11, v12);
        v43 = v42;

        if (v43)
        {
          v44 = *(*(a1 + 56) + 16 * v41);

          goto LABEL_26;
        }
      }

      else
      {
      }

      v44 = 0;
      v45 = 0;
LABEL_26:
      v74 = v44;
      v75 = v45;
      sub_1000039E8(&qword_1004A7330);
      v51._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v51);

      v52 = v76;
      v53 = v77;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_10001A9EC();
      *(v39 + 32) = v52;
      *(v39 + 40) = v53;
      sub_10001AA40(0, &qword_1004A7380);
      v54 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v67)
    {

      *(v65[1] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders) = v70;
    }

    v7 = *(v68 + 8 * v9);
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t (*sub_10005060C(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders);
  a1[1] = v1;

  return sub_100050660;
}

uint64_t sub_100050660(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_10005003C(*a1);
  }

  sub_10005003C(v2);
}

__n128 sub_1000506C4(uint64_t a1)
{
  v14 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v12;
  *(v4 + 2) = v14;
  v4[6] = v3;
  sub_10005D990(v5, v6, v7, v8, v9, v10, v11);
  return result;
}

uint64_t sub_1000507A8@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  *a3 = *v4;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  a3[4] = v9;
  a3[5] = v10;
  a3[6] = v11;
  return sub_10005D92C(v5, v6, v7, v8, v9, v10, v11);
}

void sub_100050814(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = (*a2 + *a5);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v18 = v12[3];
  v19 = v12[2];
  v16 = v12[5];
  v17 = v12[4];
  v15 = v12[6];
  *v12 = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = v11;
  sub_10005D92C(v5, v6, v7, v8, v9, v10, v11);
  sub_10005D990(v13, v14, v19, v18, v17, v16, v15);
}

uint64_t sub_1000508F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  *a2 = *v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  return sub_10005D92C(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100050960(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1000509CC()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_100050A24(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t static KnoxServiceClient.trustRootPEMPath.getter()
{
  swift_beginAccess();
  v0 = qword_1004A79C0;

  return v0;
}

uint64_t static KnoxServiceClient.trustRootPEMPath.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1004A79C0 = a1;
  off_1004A79C8 = a2;
}

uint64_t sub_100050C08(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1004A79C0 = v2;
  off_1004A79C8 = v1;
}

void *sub_100050C6C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *(*result + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v3)
  {
    type metadata accessor for WestgateToken();
    result = swift_dynamicCastClass();
    v4 = result;
    if (result)
    {
      result = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_100050CD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for WestgateToken();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t sub_100050D2C(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10005DA38;
  *(v5 + 24) = v4;
  v11[4] = sub_10001F874;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047E3B8;
  v6 = _Block_copy(v11);
  v7 = a1;

  v8 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100050E98(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken;
  v5 = a2;
  v9 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v9)
  {
    type metadata accessor for WestgateToken();
    v6 = swift_dynamicCastClass();
    v5 = a2;
    if (v6)
    {
      if (a2)
      {
        v7 = v9;
        v9 = a2;
        sub_100066238(v9);

        goto LABEL_7;
      }

      v5 = 0;
    }
  }

  *(a1 + v4) = v5;
  v8 = a2;
LABEL_7:
}

void (*sub_100050F4C(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken);
  if (v5)
  {
    type metadata accessor for WestgateToken();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 48) = v6;
  return sub_100050FF8;
}

void sub_100050FF8(void ****a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 6);
  v3 = *v4;
  v5 = (*a1)[7];
  v6 = *(v5 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue);
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100064E30;
    *(v15 + 24) = v14;
    v2[4] = sub_10001FA40;
    v2[5] = v15;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047E4A8;
    v16 = _Block_copy(v2);
    v17 = v3;

    v18 = v5;

    dispatch_sync(v6, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100064E30;
  *(v8 + 24) = v7;
  v2[4] = sub_10001FA40;
  v2[5] = v8;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047E430;
  v9 = _Block_copy(v2);
  v10 = v3;
  v11 = v5;
  v12 = v10;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

id KnoxServiceClient.__allocating_init(authToken:delegate:knoxHostURL:trustRootPEMPath:useAsyncHttpClient:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = sub_10005F210(a1, a2, a3, a4, a5);

  return v6;
}

id KnoxServiceClient.init(from:)(void *a1)
{
  v84 = a1;
  v2 = v1;
  v3 = type metadata accessor for URL();
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Date();
  v67 = *(v68 - 8);
  v5 = __chkstk_darwin(v68);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v64 - v7;
  v71 = sub_1000039E8(&qword_1004A7A20);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  *&v87 = &v64 - v8;
  v86 = type metadata accessor for DispatchQoS.QoSClass();
  v83 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  *&v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  *&v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_httpMaximumConnectionsPerHost] = 16;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__decryptionThreadCount] = 4;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationTryCount] = 2;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__networkOperationRetryDelay] = 3;
  v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useExponentialRetryDelay] = 0;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__maximumDownloadStartCount] = 5;
  v14 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_globalSessionTraceId];
  *v14 = 0;
  *(v14 + 1) = 0;
  v72 = v14;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_timeoutSeconds] = 0x4092C00000000000;
  v73 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__knoxExtraHeaders] = &_swiftEmptyDictionarySingleton;
  v15 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_SAKSmTLSAuth];
  *v15 = xmmword_1003772E0;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  v74 = v15;
  *(v15 + 6) = 0;
  v16 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxMtlsAuth];
  *v16 = xmmword_1003772E0;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v80 = v16;
  *(v16 + 6) = 0;
  v17 = &v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost];
  *v17 = 0;
  *(v17 + 1) = 0;
  v75 = v17;
  v18 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_synchronizationQueue;
  sub_10001AA40(0, &qword_1004A7840);
  v77 = "r name: '%{public}s'";
  static DispatchQoS.userInitiated.getter();
  *&v92 = &_swiftEmptyArrayStorage;
  sub_100061B64(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v79 + 104))(v78, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v81);
  v19 = v83;
  v20 = v82;
  v21 = v86;
  (*(v83 + 104))(v82, enum case for DispatchQoS.QoSClass.default(_:), v86);
  static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v20, v21);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v82 = v18;
  *&v1[v18] = v22;
  v86 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_authToken] = 0;
  v23 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__rfc7617ControlCharacters;
  v24 = type metadata accessor for CharacterSet();
  v25 = *(*(v24 - 8) + 56);
  v81 = v23;
  v25(v2 + v23, 1, 1, v24);
  *(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_urlSessionTimeoutIntervalForRequest) = 0x405E000000000000;
  v26 = v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient__dawTokenFactory;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  if (qword_1004A6A88 != -1)
  {
    swift_once();
  }

  v27 = v89;
  v28 = sub_1000270B4(v89, qword_1004A7980);
  v29 = *(v88 + 16);
  v83 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v29(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v28, v27);
  v30 = v84;
  sub_10000E2A8(v84, v84[3]);
  sub_10005FC78();
  v31 = v85;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v32 = v80;
  if (v31)
  {
    v55 = v88;
    v54 = v89;
    sub_100003C3C(v30);

    (*(v55 + 8))(v2 + v83, v54);

    sub_10005D990(*v74, *(v74 + 1), *(v74 + 2), *(v74 + 3), *(v74 + 4), *(v74 + 5), *(v74 + 6));
    sub_10005D990(*v32, *(v32 + 1), *(v32 + 2), *(v32 + 3), *(v32 + 4), *(v32 + 5), *(v32 + 6));

    sub_100013F2C(v2 + v81, &qword_1004A7A48);
    sub_100013F2C(v26, &qword_1004A7A50);
    type metadata accessor for KnoxServiceClient();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v85 = v29;
    LOBYTE(v92) = 0;
    v33 = v71;
    v34 = v87;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v36)
    {
      v37 = v66;
      v38 = v35;
      v39 = v36;
      Date.init()();
      Date.addingTimeInterval(_:)();
      (*(v67 + 8))(v37, v68);
      v40 = objc_allocWithZone(type metadata accessor for DAWToken());
      v41 = v38;
      v34 = v87;
      v42 = v39;
      v33 = v71;
      v43 = DAWToken.init(token:expirationDate:)(v41, v42, v69);
      v44 = *(v2 + v86);
      *(v2 + v86) = v43;
    }

    v91 = 1;
    sub_10005FD18();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v87 = v94;
    v45 = v95;
    v79 = v93;
    v78 = v92;
    swift_beginAccess();
    v46 = *v32;
    v47 = *(v32 + 1);
    v48 = *(v32 + 2);
    v49 = *(v32 + 3);
    v50 = *(v32 + 4);
    v51 = *(v32 + 5);
    v52 = *(v32 + 6);
    v53 = v79;
    *v32 = v78;
    *(v32 + 1) = v53;
    *(v32 + 2) = v87;
    *(v32 + 6) = v45;
    sub_10005D990(v46, v47, v48, v49, v50, v51, v52);
    type metadata accessor for AuthToken();
    v96 = 2;
    sub_100061B64(&qword_1004A7A60, 255, type metadata accessor for AuthToken);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v57 = *(v2 + v86);
    *(v2 + v86) = v92;

    v58 = type metadata accessor for KnoxDelegateSimple();
    v96 = 3;
    *(&v93 + 1) = v58;
    *&v94 = &protocol witness table for KnoxDelegateSimple;
    sub_100061B64(&qword_1004A7A68, 255, type metadata accessor for KnoxDelegateSimple);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100003C88(&v92, v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate);
    v59 = v65;
    v60 = v33;
    v61 = v89;
    v85(v65, v2 + v83, v89);
    v62 = sub_10005E530(120.0, v59, 16);
    (*(v88 + 8))(v59, v61);
    (*(v70 + 8))(v34, v60);
    *(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_session) = v62;
    *(v2 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_useAHC) = 0;
    v63 = type metadata accessor for KnoxServiceClient();
    v90.receiver = v2;
    v90.super_class = v63;
    v2 = objc_msgSendSuper2(&v90, "init");
    sub_100003C3C(v30);
  }

  return v2;
}