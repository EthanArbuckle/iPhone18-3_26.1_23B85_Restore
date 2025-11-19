uint64_t sub_10001AEF8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "activate Daemon", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 40);
  v11 = swift_allocObject();
  v12 = *(v1 + 24);
  *(v11 + 16) = v12;
  *(v11 + 32) = v10;
  v13 = v12;

  PreviewsServiceConnection.Listener.activate(handler:)();

  v14 = *(*(v1 + 48) + 16);

  PreviewsServiceConnection.Listener.activate(handler:)();

  v15 = *(*(v1 + 56) + 16);

  PreviewsServiceConnection.Listener.activate(handler:)();

  v16 = *(v1 + 104);
  v17 = swift_allocObject();
  v18 = *(v1 + 88);
  *(v17 + 16) = v18;
  *(v17 + 32) = v16;
  v19 = v18;

  PreviewsServiceConnection.Listener.activate(handler:)();

  v20 = *(v1 + 80);
  v21 = swift_allocObject();
  v22 = *(v1 + 64);
  *(v21 + 16) = v22;
  *(v21 + 32) = v20;
  v23 = v22;

  PreviewsServiceConnection.Listener.activate(handler:)();

  v24 = *(*(v1 + 136) + 16);

  PreviewsServiceConnection.Listener.activate(handler:)();

  v25 = *(*(v1 + 144) + 16);

  PreviewsServiceConnection.Listener.activate(handler:)();

  v26 = *(v1 + 168);
  v27 = swift_allocObject();
  v28 = *(v1 + 152);
  *(v27 + 16) = v28;
  *(v27 + 32) = v26;
  v28;

  PreviewsServiceConnection.Listener.activate(handler:)();

  v29 = *(v1 + 128);
  v30 = swift_allocObject();
  v31 = *(v1 + 112);
  *(v30 + 16) = v31;
  *(v30 + 32) = v29;
  v31;

  PreviewsServiceConnection.Listener.activate(handler:)();
}

uint64_t sub_10001B2FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);
  v6 = *(v0 + 80);

  v7 = *(v0 + 88);
  v8 = *(v0 + 104);

  v9 = *(v0 + 112);
  v10 = *(v0 + 128);

  v11 = *(v0 + 136);

  v12 = *(v0 + 144);

  v13 = *(v0 + 152);
  v14 = *(v0 + 168);

  return v0;
}

uint64_t sub_10001B394()
{
  sub_10001B2FC();

  return _swift_deallocClassInstance(v0, 176, 7);
}

uint64_t sub_10001B424()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DADC;

  return sub_100013570(a1, v4, v5, v7, v6);
}

uint64_t sub_10001B530(uint64_t a1)
{
  v4 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DADC;

  return sub_100019C44(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10001B654(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001B74C;

  return v7(a1);
}

uint64_t sub_10001B74C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_10001B944, 0, 0);
}

uint64_t sub_10001B944()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100020440(&qword_10003D9C8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100020440(&qword_10003D9D0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10001BAD4;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10001BAD4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10001BC90, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10001BC90()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_10001BD24(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10001BD80(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10001BD80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001BE4C(v11, 0, 0, 1, a1, a2);
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
    sub_10001DEEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000041C8(v11);
  return v7;
}

unint64_t sub_10001BE4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001BF58(a5, a6);
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

char *sub_10001BF58(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001BFA4(a1, a2);
  sub_10001C0D4(&off_100039390);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001BFA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001C1C0(v5, 0);
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
        v7 = sub_10001C1C0(v10, 0);
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

uint64_t sub_10001C0D4(uint64_t result)
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

  result = sub_10001C234(result, v12, 1, v3);
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

void *sub_10001C1C0(uint64_t a1, uint64_t a2)
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

  sub_100001CC8(&qword_10003D970, &qword_10002EF98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001C234(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CC8(&qword_10003D970, &qword_10002EF98);
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

_BYTE **sub_10001C328(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10001C338@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10001C368(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10001C45C;

  return v6(v2 + 32);
}

uint64_t sub_10001C45C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v4 = *(v1 + 36);
  *v3 = *(v1 + 32);
  *(v3 + 4) = v4;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10001C578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100001CC8(&qword_10003CE40, &qword_10002E4E8);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for DaemonToShell.TwoWayMessage();
  v3[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  CrashRequest = type metadata accessor for NextCrashRequest();
  v3[15] = CrashRequest;
  v10 = *(CrashRequest - 8);
  v3[16] = v10;
  v11 = *(v10 + 64) + 15;
  v3[17] = swift_task_alloc();
  v12 = type metadata accessor for TransportReply();
  v3[18] = v12;
  v13 = *(v12 - 8);
  v3[19] = v13;
  v14 = *(v13 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v15 = *(*(type metadata accessor for CrashListenerInterface.TwoWayMessage() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v16 = sub_100001CC8(&qword_10003D938, &qword_10002EF70);
  v3[23] = v16;
  v17 = *(v16 - 8);
  v3[24] = v17;
  v18 = *(v17 + 64) + 15;
  v3[25] = swift_task_alloc();
  v19 = *(*(sub_100001CC8(&qword_10003D940, &qword_10002EF78) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v20 = sub_100001CC8(&qword_10003D948, &qword_10002EF80);
  v3[27] = v20;
  v21 = *(v20 - 8);
  v3[28] = v21;
  v22 = *(v21 + 64) + 15;
  v3[29] = swift_task_alloc();
  v23 = *(*(type metadata accessor for CrashListenerService() - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v24 = sub_100001CC8(&qword_10003D950, &qword_10002EF88);
  v3[31] = v24;
  v25 = *(v24 - 8);
  v3[32] = v25;
  v26 = *(v25 + 64) + 15;
  v3[33] = swift_task_alloc();
  v27 = sub_100001CC8(&qword_10003D958, &qword_10002EF90);
  v3[34] = v27;
  v28 = *(v27 - 8);
  v3[35] = v28;
  v29 = *(v28 + 64) + 15;
  v3[36] = swift_task_alloc();
  v30 = type metadata accessor for Logger();
  v3[37] = v30;
  v31 = *(v30 - 8);
  v3[38] = v31;
  v32 = *(v31 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_10001C9D4, 0, 0);
}

uint64_t sub_10001C9D4()
{
  v26 = v0;
  v1 = v0[40];
  v2 = v0[7];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v23 = v0[37];
    v24 = v0[40];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001BD80(0xD000000000000014, 0x8000000100030A50, &v25);
    *(v7 + 12) = 2080;
    v0[6] = v6;
    sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_10001BD80(v8, v9, &v25);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating %s service for connection: %s", v7, 0x16u);
    swift_arrayDestroy();

    v11 = *(v5 + 8);
    v11(v24, v23);
  }

  else
  {
    v12 = v0[40];
    v13 = v0[37];
    v14 = v0[38];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v0[41] = v11;
  v15 = v0[36];
  v16 = v0[7];
  v0[2] = v16;
  type metadata accessor for CrashListenerInterface();
  v17 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  v0[42] = v17;
  v18 = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68);
  Transport.activate<A>(forReceivingMessages:)();
  v0[3] = v16;
  v19 = async function pointer to Transport.transportSender<A>(for:)[1];
  v20 = swift_task_alloc();
  v0[43] = v20;
  *v20 = v0;
  v20[1] = sub_10001CCF4;
  v21 = v0[33];

  return Transport.transportSender<A>(for:)(v21, &type metadata for Never, v17, &type metadata for Never, v18, &protocol witness table for Never);
}

uint64_t sub_10001CCF4()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_10001CF18;
  }

  else
  {
    v3 = sub_10001CE08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001CE08()
{
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  v9 = DaemonConnection.invalidationHandle.getter();
  v7(v3, v9);

  AsyncStream.makeAsyncIterator()();
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  v11[1] = sub_10001D23C;
  v12 = v0[29];
  v13 = v0[26];
  v14 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v14);
}

uint64_t sub_10001CF18()
{
  v44 = v0;
  v1 = v0[39];
  v2 = v0[7];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = v0[42];
    v33 = v0[38];
    v34 = v0[37];
    v35 = v0[39];
    v39 = v0[41];
    v41 = v0[36];
    v7 = v0[35];
    v37 = v0[34];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10001BD80(0xD000000000000014, 0x8000000100030A50, &v43);
    *(v9 + 12) = 2080;
    v0[4] = v8;
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_10001BD80(v10, v11, &v43);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not activate %s service for connection: %s", v9, 0x16u);
    swift_arrayDestroy();

    v39(v35, v34);
    (*(v7 + 8))(v41, v37);
  }

  else
  {
    v13 = v0[44];
    v14 = v0[41];
    v16 = v0[38];
    v15 = v0[39];
    v18 = v0[36];
    v17 = v0[37];
    v19 = v0[34];
    v20 = v0[35];

    v14(v15, v17);
    (*(v20 + 8))(v18, v19);
  }

  v22 = v0[39];
  v21 = v0[40];
  v23 = v0[36];
  v24 = v0[33];
  v26 = v0[29];
  v25 = v0[30];
  v28 = v0[25];
  v27 = v0[26];
  v30 = v0[21];
  v29 = v0[22];
  v36 = v0[20];
  v38 = v0[17];
  v40 = v0[14];
  v42 = v0[12];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10001D23C()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_10001D338, 0, 0);
}

uint64_t sub_10001D338()
{
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v3 = v0[35];
    v2 = v0[36];
    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[31];
    v7 = v0[32];
    v8 = v0[30];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_100021C10(v8, type metadata accessor for CrashListenerService);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    v10 = v0[39];
    v9 = v0[40];
    v11 = v0[36];
    v12 = v0[33];
    v14 = v0[29];
    v13 = v0[30];
    v16 = v0[25];
    v15 = v0[26];
    v18 = v0[21];
    v17 = v0[22];
    v46 = v0[20];
    v47 = v0[17];
    v48 = v0[14];
    v49 = v0[12];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[22];
    v22 = v0[15];
    v23 = v0[16];
    sub_100021C70(v1, v0[25], &qword_10003D938, &qword_10002EF70);
    TransportMessage<>.body.getter();
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      v24 = v0[25];
      v25 = v0[23];
      v26 = v0[21];
      v27 = v0[18];
      v28 = v0[19];
      TransportMessage<>.reply.getter();
      TransportReply.send(file:line:column:function:)();
      (*(v28 + 8))(v26, v27);
      sub_10000D330(v0[25], &qword_10003D938, &qword_10002EF70);
      v29 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v30 = swift_task_alloc();
      v0[45] = v30;
      *v30 = v0;
      v30[1] = sub_10001D23C;
      v31 = v0[29];
      v32 = v0[26];
      v33 = v0[27];

      return AsyncStream.Iterator.next(isolation:)(v32, 0, 0, v33);
    }

    else
    {
      v34 = v0[30];
      v35 = v0[25];
      v36 = v0[23];
      v37 = v0[20];
      v39 = v0[16];
      v38 = v0[17];
      v41 = v0[14];
      v40 = v0[15];
      v42 = v0[13];
      (*(v39 + 32))(v38, v0[22], v40);
      (*(v39 + 16))(v41, v38, v40);
      swift_storeEnumTagMultiPayload();
      TransportMessage<>.reply.getter();
      LODWORD(v35) = *(type metadata accessor for PreviewShellProxy() + 20);
      v43 = async function pointer to ConcurrentOnDemand.value.getter[1];
      v44 = swift_task_alloc();
      v0[46] = v44;
      v45 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
      *v44 = v0;
      v44[1] = sub_10001D760;

      return ConcurrentOnDemand.value.getter(v0 + 5, v45);
    }
  }
}

uint64_t sub_10001D760()
{
  v2 = *(*v1 + 368);
  v3 = *v1;
  v3[47] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001DA50, 0, 0);
  }

  else
  {
    v3[48] = v3[5];
    v4 = type metadata accessor for DaemonToShell();
    v5 = async function pointer to ShellConnection.makeSender<A>(for:)[1];
    v6 = swift_task_alloc();
    v3[49] = v6;
    v7 = sub_100020440(&qword_10003CE48, &type metadata accessor for DaemonToShell);
    *v6 = v3;
    v6[1] = sub_10001D934;
    v8 = v3[12];

    return ShellConnection.makeSender<A>(for:)(v8, v4, v4, v7);
  }
}

uint64_t sub_10001D934()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_10001DD80;
  }

  else
  {
    v5 = *(v2 + 384);

    v4 = sub_10001DBB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001DA50()
{
  v1 = v0[47];
  v2 = v0[20];
  TransportReply.send(error:file:line:column:function:)();

  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_100021C10(v6, &type metadata accessor for DaemonToShell.TwoWayMessage);
  (*(v5 + 8))(v3, v4);
  sub_10000D330(v0[25], &qword_10003D938, &qword_10002EF70);
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_10001D23C;
  v9 = v0[29];
  v10 = v0[26];
  v11 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v10, 0, 0, v11);
}

uint64_t sub_10001DBB4()
{
  v1 = v0[20];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_100004334(&qword_10003CE50, &qword_10003CE40, &qword_10002E4E8);
  sub_100020440(&qword_10003CE58, &type metadata accessor for DaemonToShell.TwoWayMessage);
  TransportSenderProtocol<>.send(message:reply:)();
  (*(v4 + 8))(v3, v5);
  v6 = v0[17];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_100021C10(v9, &type metadata accessor for DaemonToShell.TwoWayMessage);
  (*(v8 + 8))(v6, v7);
  sub_10000D330(v0[25], &qword_10003D938, &qword_10002EF70);
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  v11[1] = sub_10001D23C;
  v12 = v0[29];
  v13 = v0[26];
  v14 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v14);
}

uint64_t sub_10001DD80()
{
  v1 = v0[48];

  v2 = v0[50];
  v3 = v0[20];
  TransportReply.send(error:file:line:column:function:)();

  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_100021C10(v7, &type metadata accessor for DaemonToShell.TwoWayMessage);
  (*(v6 + 8))(v4, v5);
  sub_10000D330(v0[25], &qword_10003D938, &qword_10002EF70);
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[45] = v9;
  *v9 = v0;
  v9[1] = sub_10001D23C;
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[27];

  return AsyncStream.Iterator.next(isolation:)(v11, 0, 0, v12);
}

uint64_t sub_10001DEEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001DF4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DF84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DADC;

  return sub_10001B654(a1, v5);
}

uint64_t sub_10001E03C(uint64_t a1)
{
  v4 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DADC;

  return sub_100019E28(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10001E160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_100001CC8(&qword_10003D2A8, &qword_10002EAB8);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(sub_100001CC8(&qword_10003D978, &qword_10002EFD8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = sub_100001CC8(&qword_10003D980, &qword_10002EFE0);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ShellPreviewService() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = sub_100001CC8(&qword_10003D950, &qword_10002EF88);
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = sub_100001CC8(&qword_10003D988, &qword_10002EFE8);
  v3[20] = v15;
  v16 = *(v15 - 8);
  v3[21] = v16;
  v17 = *(v16 + 64) + 15;
  v3[22] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v3[23] = v18;
  v19 = *(v18 - 8);
  v3[24] = v19;
  v20 = *(v19 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10001E434, 0, 0);
}

uint64_t sub_10001E434()
{
  v26 = v0;
  v1 = v0[26];
  v2 = v0[6];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v23 = v0[23];
    v24 = v0[26];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001BD80(0xD000000000000013, 0x8000000100030B30, &v25);
    *(v7 + 12) = 2080;
    v0[5] = v6;
    sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_10001BD80(v8, v9, &v25);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating %s service for connection: %s", v7, 0x16u);
    swift_arrayDestroy();

    v11 = *(v5 + 8);
    v11(v24, v23);
  }

  else
  {
    v12 = v0[26];
    v13 = v0[23];
    v14 = v0[24];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v0[27] = v11;
  v15 = v0[22];
  v16 = v0[6];
  v0[2] = v16;
  type metadata accessor for PreviewServiceInterface();
  v17 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  v0[28] = v17;
  v18 = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68);
  Transport.activate<A>(forReceivingMessages:)();
  v0[3] = v16;
  v19 = async function pointer to Transport.transportSender<A>(for:)[1];
  v20 = swift_task_alloc();
  v0[29] = v20;
  *v20 = v0;
  v20[1] = sub_10001E754;
  v21 = v0[19];

  return Transport.transportSender<A>(for:)(v21, &type metadata for Never, v17, &type metadata for Never, v18, &protocol witness table for Never);
}

uint64_t sub_10001E754()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10001E978;
  }

  else
  {
    v3 = sub_10001E868;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001E868()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = DaemonConnection.invalidationHandle.getter();
  v7(v3, v9);

  AsyncStream.makeAsyncIterator()();
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_10001EC50;
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v14);
}

uint64_t sub_10001E978()
{
  v38 = v0;
  v1 = v0[25];
  v2 = v0[6];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v6 = v0[28];
    v31 = v0[24];
    v32 = v0[23];
    v33 = v0[25];
    v35 = v0[27];
    v36 = v0[22];
    v7 = v0[21];
    v34 = v0[20];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10001BD80(0xD000000000000013, 0x8000000100030B30, &v37);
    *(v9 + 12) = 2080;
    v0[4] = v8;
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_10001BD80(v10, v11, &v37);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not activate %s service for connection: %s", v9, 0x16u);
    swift_arrayDestroy();

    v35(v33, v32);
    (*(v7 + 8))(v36, v34);
  }

  else
  {
    v13 = v0[30];
    v14 = v0[27];
    v16 = v0[24];
    v15 = v0[25];
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[20];
    v20 = v0[21];

    v14(v15, v17);
    (*(v20 + 8))(v18, v19);
  }

  v22 = v0[25];
  v21 = v0[26];
  v23 = v0[22];
  v24 = v0[19];
  v26 = v0[15];
  v25 = v0[16];
  v28 = v0[11];
  v27 = v0[12];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10001EC50()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_10001ED4C, 0, 0);
}

uint64_t sub_10001ED4C()
{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[21];
    v2 = v0[22];
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_100021C10(v8, type metadata accessor for ShellPreviewService);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[22];
    v12 = v0[19];
    v14 = v0[15];
    v13 = v0[16];
    v16 = v0[11];
    v15 = v0[12];

    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_100021C70(v1, v0[11], &qword_10003D2A8, &qword_10002EAB8);
    v19 = swift_task_alloc();
    v0[32] = v19;
    *v19 = v0;
    v19[1] = sub_10001EF3C;
    v20 = v0[16];
    v21 = v0[11];

    return sub_100009ECC(v21);
  }
}

uint64_t sub_10001EF3C()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_10001F038, 0, 0);
}

uint64_t sub_10001F038()
{
  sub_10000D330(v0[11], &qword_10003D2A8, &qword_10002EAB8);
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_10001EC50;
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v4, 0, 0, v5);
}

uint64_t sub_10001F0F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DADC;

  return sub_10001C368(a1, v5);
}

uint64_t sub_10001F1AC(uint64_t a1)
{
  v4 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DADC;

  return sub_100019F10(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10001F2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_100001CC8(&qword_10003D190, &qword_10002E7D8);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(sub_100001CC8(&qword_10003D998, &qword_10002F030) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = sub_100001CC8(&qword_10003D9A0, &qword_10002F038);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = *(*(type metadata accessor for AppManagerDaemon() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = sub_100001CC8(&qword_10003D950, &qword_10002EF88);
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = sub_100001CC8(&qword_10003D9A8, &qword_10002F040);
  v3[20] = v15;
  v16 = *(v15 - 8);
  v3[21] = v16;
  v17 = *(v16 + 64) + 15;
  v3[22] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v3[23] = v18;
  v19 = *(v18 - 8);
  v3[24] = v19;
  v20 = *(v19 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10001F5A4, 0, 0);
}

uint64_t sub_10001F5A4()
{
  v26 = v0;
  v1 = v0[26];
  v2 = v0[6];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v23 = v0[23];
    v24 = v0[26];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001BD80(0xD000000000000010, 0x8000000100030B70, &v25);
    *(v7 + 12) = 2080;
    v0[5] = v6;
    sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_10001BD80(v8, v9, &v25);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating %s service for connection: %s", v7, 0x16u);
    swift_arrayDestroy();

    v11 = *(v5 + 8);
    v11(v24, v23);
  }

  else
  {
    v12 = v0[26];
    v13 = v0[23];
    v14 = v0[24];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v0[27] = v11;
  v15 = v0[22];
  v16 = v0[6];
  v0[2] = v16;
  type metadata accessor for AppManagerInterface();
  v17 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  v0[28] = v17;
  v18 = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68);
  Transport.activate<A>(forReceivingMessages:)();
  v0[3] = v16;
  v19 = async function pointer to Transport.transportSender<A>(for:)[1];
  v20 = swift_task_alloc();
  v0[29] = v20;
  *v20 = v0;
  v20[1] = sub_10001F8C4;
  v21 = v0[19];

  return Transport.transportSender<A>(for:)(v21, &type metadata for Never, v17, &type metadata for Never, v18, &protocol witness table for Never);
}

uint64_t sub_10001F8C4()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_10001FAE8;
  }

  else
  {
    v3 = sub_10001F9D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001F9D8()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = DaemonConnection.invalidationHandle.getter();
  v7(v3, v9);

  AsyncStream.makeAsyncIterator()();
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_10001FDC0;
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v14);
}

uint64_t sub_10001FAE8()
{
  v38 = v0;
  v1 = v0[25];
  v2 = v0[6];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v6 = v0[28];
    v31 = v0[24];
    v32 = v0[23];
    v33 = v0[25];
    v35 = v0[27];
    v36 = v0[22];
    v7 = v0[21];
    v34 = v0[20];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10001BD80(0xD000000000000010, 0x8000000100030B70, &v37);
    *(v9 + 12) = 2080;
    v0[4] = v8;
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_10001BD80(v10, v11, &v37);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not activate %s service for connection: %s", v9, 0x16u);
    swift_arrayDestroy();

    v35(v33, v32);
    (*(v7 + 8))(v36, v34);
  }

  else
  {
    v13 = v0[30];
    v14 = v0[27];
    v16 = v0[24];
    v15 = v0[25];
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[20];
    v20 = v0[21];

    v14(v15, v17);
    (*(v20 + 8))(v18, v19);
  }

  v22 = v0[25];
  v21 = v0[26];
  v23 = v0[22];
  v24 = v0[19];
  v26 = v0[15];
  v25 = v0[16];
  v28 = v0[11];
  v27 = v0[12];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10001FDC0()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return _swift_task_switch(sub_10001FEBC, 0, 0);
}

uint64_t sub_10001FEBC()
{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[21];
    v2 = v0[22];
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_100021C10(v8, type metadata accessor for AppManagerDaemon);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[22];
    v12 = v0[19];
    v14 = v0[15];
    v13 = v0[16];
    v16 = v0[11];
    v15 = v0[12];

    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_100021C70(v1, v0[11], &qword_10003D190, &qword_10002E7D8);
    v19 = swift_task_alloc();
    v0[32] = v19;
    *v19 = v0;
    v19[1] = sub_1000200AC;
    v20 = v0[16];
    v21 = v0[11];

    return sub_100006690(v21);
  }
}

uint64_t sub_1000200AC()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_1000201A8, 0, 0);
}

uint64_t sub_1000201A8()
{
  sub_10000D330(v0[11], &qword_10003D190, &qword_10002E7D8);
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_10001FDC0;
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v4, 0, 0, v5);
}

uint64_t sub_1000202CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DADC;

  return sub_10001709C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002038C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DADC;

  return sub_100017B6C(a1, v4, v5, v6);
}

uint64_t sub_100020440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002048C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002538;

  return sub_100013570(a1, v4, v5, v7, v6);
}

uint64_t sub_100020588()
{
  v1 = type metadata accessor for CancellationToken();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100020714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DADC;

  return sub_100017424(a1, v4, v5, v7, v6);
}

uint64_t sub_1000207D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002538;

  return sub_1000181C8(a1, v4, v5, v6);
}

uint64_t sub_1000208CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020918()
{
  v1 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 48);

  v7 = *(v0 + 56);

  v8 = type metadata accessor for CancellationToken();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100020A50(uint64_t a1)
{
  v4 = *(sub_100001CC8(&qword_10003D930, "~)") - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DADC;

  return sub_10001A244(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_100020B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_100001CC8(&qword_10003D9E8, &qword_10002F0D8);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(sub_100001CC8(&qword_10003D9F0, &qword_10002F0E0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = sub_100001CC8(&qword_10003D9F8, &qword_10002F0E8);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = *(*(type metadata accessor for ProcessExitService() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = sub_100001CC8(&qword_10003DA08, &qword_10002F0F0);
  v3[20] = v15;
  v16 = *(v15 - 8);
  v3[21] = v16;
  v17 = *(v16 + 64) + 15;
  v3[22] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v3[23] = v18;
  v19 = *(v18 - 8);
  v3[24] = v19;
  v20 = *(v19 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_100020E54, 0, 0);
}

uint64_t sub_100020E54()
{
  v27 = v0;
  v1 = v0[27];
  v2 = v0[6];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v24 = v0[23];
    v25 = v0[27];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10001BD80(0xD000000000000012, 0x8000000100030C30, &v26);
    *(v7 + 12) = 2080;
    v0[5] = v6;
    sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_10001BD80(v8, v9, &v26);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating %s service for connection: %s", v7, 0x16u);
    swift_arrayDestroy();

    v11 = *(v5 + 8);
    v11(v25, v24);
  }

  else
  {
    v12 = v0[27];
    v13 = v0[23];
    v14 = v0[24];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v0[28] = v11;
  v15 = v0[22];
  v16 = v0[6];
  v0[2] = v16;
  type metadata accessor for HostToProcessExitService();
  v17 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  v0[29] = v17;
  v18 = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68);
  Transport.activate<A>(forReceivingMessages:)();
  v0[3] = v16;
  v19 = type metadata accessor for ProcessExitServiceToHost();
  v20 = async function pointer to Transport.transportSender<A>(for:)[1];
  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  v21[1] = sub_10002117C;
  v22 = v0[19];

  return Transport.transportSender<A>(for:)(v22, v19, v17, v19, v18, &protocol witness table for ProcessExitServiceToHost);
}

uint64_t sub_10002117C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1000213A0;
  }

  else
  {
    v3 = sub_100021290;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100021290()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = DaemonConnection.invalidationHandle.getter();
  v7(v3, v9);

  AsyncStream.makeAsyncIterator()();
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = sub_10002168C;
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v14);
}

uint64_t sub_1000213A0()
{
  v39 = v0;
  v1 = v0[26];
  v2 = v0[6];
  static Logger.uv.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = v0[29];
    v32 = v0[24];
    v33 = v0[23];
    v34 = v0[26];
    v7 = v0[21];
    v36 = v0[28];
    v37 = v0[22];
    v35 = v0[20];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10001BD80(0xD000000000000012, 0x8000000100030C30, &v38);
    *(v9 + 12) = 2080;
    v0[4] = v8;
    sub_100004334(&qword_10003D968, &qword_10003D7D0, qword_10002EE68);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_10001BD80(v10, v11, &v38);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not activate %s service for connection: %s", v9, 0x16u);
    swift_arrayDestroy();

    v36(v34, v33);
    (*(v7 + 8))(v37, v35);
  }

  else
  {
    v13 = v0[31];
    v14 = v0[28];
    v15 = v0[26];
    v16 = v0[23];
    v17 = v0[24];
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[20];

    v14(v15, v16);
    (*(v19 + 8))(v18, v20);
  }

  v22 = v0[26];
  v21 = v0[27];
  v23 = v0[25];
  v24 = v0[22];
  v25 = v0[19];
  v27 = v0[15];
  v26 = v0[16];
  v29 = v0[11];
  v28 = v0[12];

  v30 = v0[1];

  return v30();
}

uint64_t sub_10002168C()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_100021788, 0, 0);
}

uint64_t sub_100021788()
{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v3 = v0[21];
    v2 = v0[22];
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_100021C10(v8, type metadata accessor for ProcessExitService);
    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);
    v10 = v0[26];
    v9 = v0[27];
    v11 = v0[25];
    v12 = v0[22];
    v13 = v0[19];
    v15 = v0[15];
    v14 = v0[16];
    v17 = v0[11];
    v16 = v0[12];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[25];
    sub_100021C70(v1, v0[11], &qword_10003D9E8, &qword_10002F0D8);
    TransportMessage<>.body.getter();
    static Logger.uv.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67240192;
      *(v23 + 4) = ProcessID.pid.getter();
      _os_log_impl(&_mh_execute_header, v21, v22, "ProcessExitService received request to monitor %{public}d", v23, 8u);
    }

    v24 = v0[28];
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[23];

    v24(v25, v27);
    v28 = ProcessID.pid.getter();
    v29 = swift_task_alloc();
    v0[33] = v29;
    *v29 = v0;
    v29[1] = sub_100021A58;
    v30 = v0[16];

    return sub_100023EF8(v28);
  }
}

uint64_t sub_100021A58()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100021B54, 0, 0);
}

uint64_t sub_100021B54()
{
  sub_10000D330(v0[11], &qword_10003D9E8, &qword_10002F0D8);
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_10002168C;
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v4, 0, 0, v5);
}

uint64_t sub_100021C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100021C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001CC8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100021CF0(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DADC;

  return sub_100015620(a1, v1 + v5);
}

uint64_t sub_100021DCC(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DADC;

  return sub_100014DAC(a1, v1 + v5);
}

uint64_t sub_100021EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100021F8C(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DADC;

  return sub_1000044D0(a1, v1 + v5);
}

uint64_t sub_100022084(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100022114()
{
  v0 = *(*(type metadata accessor for CancellationToken() - 8) + 80);

  return sub_100004830();
}

void sub_100022248(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for TransportReply();
  v149 = *(v140 - 8);
  v7 = *(v149 + 64);
  __chkstk_darwin(v140);
  v146 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for URL();
  v145 = *(v138 - 8);
  v9 = *(v145 + 64);
  v10 = __chkstk_darwin(v138);
  v147 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v148 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v139 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v137 = &v128 - v17;
  __chkstk_darwin(v16);
  v152 = &v128 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v141 = (&v128 - v26);
  v27 = __chkstk_darwin(v25);
  v135 = &v128 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v128 - v30;
  v32 = __chkstk_darwin(v29);
  v134 = &v128 - v33;
  v34 = __chkstk_darwin(v32);
  v142 = &v128 - v35;
  __chkstk_darwin(v34);
  v37 = &v128 - v36;
  v155 = 0;
  v156 = 0xE000000000000000;
  v38 = [objc_opt_self() sharedManager];
  if (!v38)
  {
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v39 = v38;
  v136 = v6;
  v40 = [v38 currentUser];

  if (!v40)
  {
    goto LABEL_33;
  }

  v133 = v31;
  v132 = v1;
  v41 = [v40 uid];

  LODWORD(v154) = v41;
  v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v42);

  v44 = v155;
  v43 = v156;
  static Logger.uv.getter();

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v47 = os_log_type_enabled(v45, v46);
  v150 = a1;
  v143 = v44;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = v20;
    v50 = swift_slowAlloc();
    v155 = v50;
    *v48 = 136315138;
    *(v48 + 4) = sub_10001BD80(v44, v43, &v155);
    _os_log_impl(&_mh_execute_header, v45, v46, "Performing prewarm for user %s", v48, 0xCu);
    sub_1000041C8(v50);
    v20 = v49;

    v51 = v49;
  }

  else
  {

    v51 = v20;
  }

  v52 = *(v51 + 8);
  v52(v37, v19);
  v154 = 1;
  v53 = container_system_group_path_for_identifier();
  if (v53)
  {
    v54 = [objc_allocWithZone(NSURL) initFileURLWithFileSystemRepresentation:v53 isDirectory:1 relativeToURL:0];
    v55 = String._bridgeToObjectiveC()();
    v56 = [v54 URLByAppendingPathComponent:v55 isDirectory:1];

    if (v56)
    {
      v131 = v54;
      v141 = v52;
      v144 = v20;
      v151 = v19;
      v57 = v152;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = v142;
      static Logger.uv.getter();
      v59 = v145;
      v60 = v137;
      v61 = v138;
      v130 = *(v145 + 16);
      v130(v137, v57, v138);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = v60;
        v129 = v43;
        v66 = v59;
        v67 = v64;
        v68 = swift_slowAlloc();
        v155 = v68;
        *v67 = 136315138;
        v69 = URL.path.getter();
        v71 = v70;
        v72 = v66;
        v43 = v129;
        v137 = *(v72 + 8);
        (v137)(v65, v61);
        v73 = sub_10001BD80(v69, v71, &v155);

        *(v67 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v62, v63, "Got preview's system container at %s", v67, 0xCu);
        sub_1000041C8(v68);

        v74 = v142;
      }

      else
      {

        v137 = *(v59 + 8);
        (v137)(v60, v61);
        v74 = v58;
      }

      v141(v74, v151);
      v102 = v61;
      v104 = v139;
      v103 = v140;
      v105 = v152;
      URL.appendingPathComponent(_:isDirectory:)();
      v106 = v130;
      v130(v148, v105, v102);
      v106(v147, v104, v102);
      v107 = v150;
      (*(v149 + 16))(v146, v150, v103);
      URL.path.getter();
      static String.Encoding.utf8.getter();
      v109 = String.init(contentsOfFile:encoding:)();
      v111 = v110;

      v112 = v143;
      if (v109 == v143 && v111 == v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        (*(v149 + 8))(v146, v103);
        v113 = v137;
        (v137)(v147, v102);
        v113(v148, v102);
        v114 = v134;
        static Logger.uv.getter();
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&_mh_execute_header, v115, v116, "User is unchanged from last prewarm", v117, 2u);
        }

        v141(v114, v151);
        TransportReply.send(file:line:column:function:)();
      }

      else
      {
        static Logger.uv.getter();

        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          *v121 = 136315394;
          v122 = sub_10001BD80(v109, v111, &v155);

          *(v121 + 4) = v122;
          *(v121 + 12) = 2080;
          *(v121 + 14) = sub_10001BD80(v143, v43, &v155);
          _os_log_impl(&_mh_execute_header, v119, v120, "User has changed from %s to %s, so clearing out old apps", v121, 0x16u);
          swift_arrayDestroy();
          v103 = v140;

          v112 = v143;
        }

        else
        {
        }

        v141(v133, v151);
        v123 = sub_1000071B4();
        sub_10002B4A8(v123, v107);

        v124 = v112;
        v126 = v147;
        v125 = v148;
        v127 = v146;
        sub_100023498(v124, v43, v148, v147, v146);

        (*(v149 + 8))(v127, v103);
        v113 = v137;
        (v137)(v126, v102);
        v113(v125, v102);
      }

      v113(v104, v102);
      v113(v152, v102);
    }

    else
    {
      v88 = v141;
      static Logger.uv.getter();

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v144 = v20;
        v93 = v92;
        v94 = swift_slowAlloc();
        v151 = v19;
        v95 = v94;
        v155 = v94;
        *v91 = 136315394;
        v96 = v54;
        v97 = sub_10001BD80(v143, v43, &v155);

        *(v91 + 4) = v97;
        v54 = v96;
        *(v91 + 12) = 2112;
        sub_1000086E8();
        swift_allocError();
        *v98 = 1;
        *(v98 + 8) = 0xD000000000000032;
        *(v98 + 16) = 0x8000000100030D90;
        v99 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 14) = v99;
        *v93 = v99;
        _os_log_impl(&_mh_execute_header, v89, v90, "prewarm for %s failed: %@", v91, 0x16u);
        sub_100004160(v93);

        sub_1000041C8(v95);

        v100 = v141;
        v101 = v151;
      }

      else
      {

        v100 = v88;
        v101 = v19;
      }

      v52(v100, v101);
      sub_1000086E8();
      swift_allocError();
      *v118 = 1;
      *(v118 + 8) = 0xD000000000000032;
      *(v118 + 16) = 0x8000000100030D90;
      TransportReply.send(error:file:line:column:function:)();
    }
  }

  else
  {
    v151 = v19;
    v155 = 0;
    v156 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v155 = 0xD000000000000026;
    v156 = 0x8000000100030CC0;
    error_description = container_get_error_description();
    sub_100001CC8(&qword_10003DA48, &unk_10002F170);
    v75._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v75);

    v77 = v155;
    v76 = v156;
    static Logger.uv.getter();

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v141 = v52;
      v82 = v81;
      v83 = swift_slowAlloc();
      v144 = v20;
      v84 = v83;
      v155 = v83;
      *v80 = 136315394;
      v85 = sub_10001BD80(v143, v43, &v155);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2112;
      sub_1000086E8();
      swift_allocError();
      *v86 = 1;
      *(v86 + 8) = v77;
      *(v86 + 16) = v76;

      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 14) = v87;
      *v82 = v87;
      _os_log_impl(&_mh_execute_header, v78, v79, "prewarm for %s failed: %@", v80, 0x16u);
      sub_100004160(v82);

      sub_1000041C8(v84);

      v141(v24, v151);
    }

    else
    {

      v52(v24, v151);
    }

    sub_1000086E8();
    swift_allocError();
    *v108 = 1;
    *(v108 + 8) = v77;
    *(v108 + 16) = v76;
    TransportReply.send(error:file:line:column:function:)();
  }
}

uint64_t sub_100023498(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v58 = a5;
  v7 = type metadata accessor for String.Encoding();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  static Logger.uv.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v59 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v54 = v10;
    v22 = v21;
    v23 = v11;
    v24 = v12;
    v25 = swift_slowAlloc();
    v64[0] = v25;
    *v22 = 136315138;
    *(v22 + 4) = sub_10001BD80(a1, a2, v64);
    _os_log_impl(&_mh_execute_header, v18, v19, "Setting current user to %s", v22, 0xCu);
    sub_1000041C8(v25);
    v12 = v24;
    v11 = v23;

    v10 = v54;

    v26 = *(v12 + 8);
    v26(v17, v23);
  }

  else
  {

    v26 = *(v12 + 8);
    v26(v17, v11);
  }

  v27 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v64[0] = 0;
  v31 = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v64];

  v32 = v64[0];
  v33 = v60;
  if (v31)
  {
    v64[0] = v59;
    v64[1] = a2;
    v34 = v32;
    static String.Encoding.utf8.getter();
    sub_100023BA8();
    StringProtocol.write(to:atomically:encoding:)();
    return (*(v55 + 8))(v10, v56);
  }

  else
  {
    v35 = v64[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.uv.getter();

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57 = v12;
      v41 = v40;
      v64[0] = v40;
      *v38 = 136315394;
      *(v38 + 4) = sub_10001BD80(v59, a2, v64);
      *(v38 + 12) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v42;
      *v39 = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "prewarm for %s failed: %@", v38, 0x16u);
      sub_100004160(v39);

      sub_1000041C8(v41);
    }

    v26(v33, v11);
    v61 = 1;
    v62 = 0xD000000000000022;
    v63 = 0x8000000100030DD0;
    swift_errorRetain();
    sub_1000089B0();
    HumanReadableError.withUnderlying(_:)();

    v43 = v65;
    v44 = v66;
    v45 = sub_100023B64(v64, v65);
    v46 = *(v43 - 8);
    v47 = *(v46 + 64);
    __chkstk_darwin(v45);
    v49 = &v53 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v49);
    v50 = *(*(v44 + 8) + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v46 + 8))(v49, v43);
    }

    else
    {
      swift_allocError();
      (*(v46 + 32))(v51, v49, v43);
    }

    TransportReply.send(error:file:line:column:function:)();

    return sub_1000041C8(v64);
  }
}

void *sub_100023B64(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100023BA8()
{
  result = qword_10003DA50;
  if (!qword_10003DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA50);
  }

  return result;
}

uint64_t sub_100023C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100023CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ProcessExitService()
{
  result = qword_10003DAB0;
  if (!qword_10003DAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023DFC()
{
  sub_100023E80();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConcurrentInvalidationHandle();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100023E80()
{
  if (!qword_10003DAC0)
  {
    type metadata accessor for ProcessExitServiceToHost();
    v0 = type metadata accessor for TransportSender();
    if (!v1)
    {
      atomic_store(v0, &qword_10003DAC0);
    }
  }
}

uint64_t sub_100023EF8(int a1)
{
  *(v2 + 96) = v1;
  *(v2 + 208) = a1;
  v3 = type metadata accessor for Identifier();
  *(v2 + 104) = v3;
  v4 = *(v3 - 8);
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 + 64);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  v5 = type metadata accessor for ProcessExitService();
  *(v2 + 144) = v5;
  v6 = *(v5 - 8);
  *(v2 + 152) = v6;
  *(v2 + 160) = *(v6 + 64);
  *(v2 + 168) = swift_task_alloc();
  v7 = *(*(sub_100001CC8(&qword_10003D7B8, &unk_10002F1D0) - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();

  return _swift_task_switch(sub_100024078, 0, 0);
}

uint64_t sub_100024078()
{
  if (qword_10003CC20 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  v5 = *(v0 + 208);
  v6 = qword_10003DC18;
  *(v0 + 192) = qword_10003DC18;
  sub_100024798(v4, v1);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = (v2 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  sub_1000248FC(v1, v9 + v7);
  *(v9 + v8) = v5;

  return _swift_task_switch(sub_100024180, v6, 0);
}

uint64_t sub_100024180()
{
  v1 = [objc_opt_self() identifierWithPid:*(v0 + 52)];
  if (v1)
  {
    v2 = v1;
    v3 = v0[25];
    v4 = *(v0 + 52);
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = 1;
    *(v5 + 28) = v4;
    *(v5 + 32) = sub_100024960;
    *(v5 + 40) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100013F24;
    *(v6 + 24) = v5;
    v0[6] = sub_1000249FC;
    v0[7] = v6;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100013164;
    v0[5] = &unk_10003A1A8;
    v7 = _Block_copy(v0 + 2);
    v8 = objc_opt_self();

    v9 = [v8 monitorWithConfiguration:v7];
    _Block_release(v7);
    v10 = v0[7];

    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
      return _swift_task_switch(v11, v12, v13);
    }

    v14 = v0[24];
    v31 = v0[23];
    v32 = v0[25];
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[14];
    v30 = v0[15];
    v18 = v0[13];

    Identifier.init()();
    swift_beginAccess();
    v19 = v9;
    v20 = *(v14 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v14 + 112);
    *(v14 + 112) = 0x8000000000000000;
    sub_100011EF4(v19, v15, isUniquelyReferenced_nonNull_native);
    *(v14 + 112) = v33;
    swift_endAccess();
    (*(v17 + 16))(v16, v15, v18);
    v22 = v2;
    v23 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v14;
    (*(v17 + 32))(v24 + v23, v16, v18);

    CancelationToken<>.init(dsoHandle:file:line:column:function:_:)();

    (*(v17 + 8))(v15, v18);
    v25 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
    (*(*(v25 - 8) + 56))(v31, 0, 1, v25);
  }

  else
  {
    v26 = v0[25];
    v27 = v0[23];

    v28 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  }

  v11 = sub_100024584;
  v12 = 0;
  v13 = 0;

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100024584()
{
  v1 = v0[22];
  sub_100013E4C(v0[23], v1);
  v2 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[22];
    sub_100013EBC(v0[23]);
    sub_100013EBC(v4);
  }

  else
  {
    v0[11] = *(v0[12] + *(v0[18] + 20));
    v6 = v0[22];
    v5 = v0[23];
    type metadata accessor for ConcurrentInvalidationHandle();

    CancelationToken<>.cancel<A>(onInvalidationOf:)();

    sub_100013EBC(v5);
    (*(v3 + 8))(v6, v2);
  }

  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v11 = v0[16];
  v10 = v0[17];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002471C()
{
  sub_100001CC8(&qword_10003DA00, qword_10002F180);
  sub_100024B7C();
  sub_100024BE0();
  return TransportSenderProtocol<>.send(oneWay:)();
}

uint64_t sub_100024798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessExitService();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000247FC()
{
  v1 = (type metadata accessor for ProcessExitService() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = v0 + v3;
  v6 = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  return _swift_deallocObject(v0, v4 + 4, v2 | 7);
}

uint64_t sub_1000248FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessExitService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024960()
{
  v1 = *(type metadata accessor for ProcessExitService() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 3) & 0xFFFFFFFFFFFFFFFCLL));

  return sub_10002471C();
}

uint64_t sub_100024A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100024A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001CC8(&qword_10003DA00, qword_10002F180);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(type metadata accessor for ProcessExitService() + 20)) = a2;
}

uint64_t sub_100024AB8()
{
  v1 = type metadata accessor for Identifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100024B7C()
{
  result = qword_10003DB28;
  if (!qword_10003DB28)
  {
    sub_100001D74(&qword_10003DA00, qword_10002F180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB28);
  }

  return result;
}

unint64_t sub_100024BE0()
{
  result = qword_10003DB30;
  if (!qword_10003DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB30);
  }

  return result;
}

void sub_100024C34(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 34;
  v37 = 0xE100000000000000;
  v11._countAndFlagsBits = URL.lastPathComponent.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = aBlock;
  v14 = v37;
  static Logger.uv.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v35 = v13;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v34 = a2;
    v19 = a1;
    v20 = v18;
    v21 = swift_slowAlloc();
    v22 = v13;
    v23 = a3;
    v24 = v21;
    aBlock = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10001BD80(v22, v14, &aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "Attempting installation of %s", v20, 0xCu);
    sub_1000041C8(v24);
    a3 = v23;

    a1 = v19;
  }

  (*(v7 + 8))(v10, v6);
  v25 = [objc_allocWithZone(MIInstallOptions) init];
  [v25 setInstallTargetType:1];
  [v25 setDeveloperInstall:a3 & 1];
  [v25 setUserInitiated:1];
  if (a3)
  {
    sub_100007C00();
    static LSBundleRecord.playgroundsBundleID.getter();
    v26 = String._bridgeToObjectiveC()();

    [v25 setLinkedParentBundleID:v26];
  }

  v27 = objc_opt_self();
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v31 = swift_allocObject();
  v31[2] = v35;
  v31[3] = v14;
  v31[4] = a1;
  v40 = sub_100026DB0;
  v41 = v31;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100025504;
  v39 = &unk_10003A330;
  v32 = _Block_copy(&aBlock);
  v33 = v25;

  [v27 installApplication:v30 forPersonaUniqueString:0 consumeSource:0 options:v33 completion:v32];
  _Block_release(v32);
}

uint64_t sub_100024FC4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (a1)
  {
    v15 = [a1 bundleID];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    static Logger.uv.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v39 = v7;
      v22 = v21;
      v41 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_10001BD80(v40, a4, &v41);
      *(v22 + 12) = 2080;
      v23 = sub_10001BD80(v16, v18, &v41);

      *(v22 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Installation of %s (%s) succeeded", v22, 0x16u);
      swift_arrayDestroy();

      (*(v8 + 8))(v14, v39);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    return Promise<A>.succeed()();
  }

  else
  {
    if (!a2)
    {
      v25 = IXErrorDomain;
      sub_100001CC8(&qword_10003DB40, &qword_10002F1F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10002F1E0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v27;
      *(inited + 48) = 0xD000000000000015;
      *(inited + 56) = 0x8000000100030F50;
      v28 = v25;
      sub_100005A5C(inited);
      swift_setDeallocating();
      sub_10000D330(inited + 32, &qword_10003D0A0, &unk_10002F200);
      v29 = objc_allocWithZone(NSError);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v29 initWithDomain:v28 code:-98 userInfo:isa];
    }

    swift_errorRetain();
    static Logger.uv.getter();

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v7;
      v36 = v35;
      v41 = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_10001BD80(v40, a4, &v41);
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Installation of %s failed due to: %@", v33, 0x16u);
      sub_10000D330(v34, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v36);

      (*(v8 + 8))(v12, v39);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    Promise.fail(with:)();
  }
}

void sub_100025504(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100025590(uint64_t a1)
{
  v50 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - v7;
  __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = type metadata accessor for AgentDescriptor.Bundle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ResetAppRequest.agentDescriptorBundle.getter();
  v16 = AgentDescriptor.Bundle.bundleID.getter();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  static Logger.uv.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v49 = v2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = v1;
    v24 = swift_slowAlloc();
    v51 = v24;
    *v22 = 136315138;
    *(v22 + 4) = sub_10001BD80(v16, v18, &v51);
    _os_log_impl(&_mh_execute_header, v19, v20, "Attempting reset of %s", v22, 0xCu);
    sub_1000041C8(v24);
    v1 = v23;
  }

  v25 = *(v2 + 8);
  v25(v10, v1);
  v26 = objc_opt_self();
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  v51 = 0;
  v29 = [v26 refreshContainerTypes:1 forBundleID:v27 reason:v28 error:&v51];

  if (v29)
  {
    v30 = v51;
    static Logger.uv.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315138;
      v35 = sub_10001BD80(v16, v18, &v51);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Reset of %s succeeded", v33, 0xCu);
      sub_1000041C8(v34);
    }

    else
    {
    }

    v25(v8, v1);
    return Promise<A>.succeed()();
  }

  else
  {
    v47 = v1;
    v36 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v37 = v48;
    static Logger.uv.getter();

    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v40 = 136315394;
      v43 = sub_10001BD80(v16, v18, &v51);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2112;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v44;
      *v41 = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Reset of %s failed due to: %@", v40, 0x16u);
      sub_10000D330(v41, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v42);
    }

    else
    {
    }

    v25(v37, v47);
    Promise.fail(with:)();
  }
}

uint64_t sub_100025B9C(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(IXUninstallOptions) init];
  if (v4)
  {
    v5 = v4;
    [v4 setRequestUserConfirmation:0];
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    v6[4] = v5;

    v7 = v5;
    default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
    v8 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();

    return v8;
  }

  else
  {
    sub_100001CC8(&qword_10003DB38, &qword_10002F1F0);
    v10 = IXErrorDomain;
    sub_100001CC8(&qword_10003DB40, &qword_10002F1F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10002F1E0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    v13 = v10;
    _StringGuts.grow(_:)(29);

    v14._countAndFlagsBits = a1;
    v14._object = a2;
    String.append(_:)(v14);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x8000000100030E90;
    sub_100005A5C(inited);
    swift_setDeallocating();
    sub_10000D330(inited + 32, &qword_10003D0A0, &unk_10002F200);
    v15 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v15 initWithDomain:v13 code:-99 userInfo:isa];

    v18 = static Future.failed(dsoHandle:file:line:column:function:_:)();
    return v18;
  }
}

void sub_100025E38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = a4;
    v17 = v15;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10001BD80(a2, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "Attempting uninstall of %s", v17, 0xCu);
    sub_1000041C8(v18);

    a4 = v16;
    a1 = v26;
  }

  (*(v9 + 8))(v12, v8);
  v19 = objc_opt_self();
  v20 = objc_allocWithZone(IXApplicationIdentity);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithBundleID:v21];

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a1;
  aBlock[4] = sub_100026B24;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000267A4;
  aBlock[3] = &unk_10003A248;
  v24 = _Block_copy(aBlock);

  [v19 uninstallAppWithIdentity:v22 options:a4 completion:v24];
  _Block_release(v24);
}

void sub_100026108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v59 = type metadata accessor for Logger();
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v59);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v56 - v16;
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  if (a2)
  {
    swift_errorRetain();
    static Logger.uv.getter();
    swift_errorRetain();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v58 = a5;
      v25 = v24;
      v60 = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_10001BD80(a3, a4, &v60);
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Uninstall of %s failed due to: %@", v22, 0x16u);
      sub_10000D330(v23, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v25);
    }

    (*(v10 + 8))(v19, v59);
    Promise.fail(with:)();
  }

  else
  {
    v57 = a3;
    if (a1 == 3)
    {
      static Logger.uv.getter();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v60 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10001BD80(v57, a4, &v60);
        _os_log_impl(&_mh_execute_header, v27, v28, "Uninstall of %s succeeded", v29, 0xCu);
        sub_1000041C8(v30);
      }

      (*(v10 + 8))(v17, v59);
      Promise<A>.succeed()();
    }

    else
    {
      v58 = a5;
      v31 = IXErrorDomain;
      sub_100001CC8(&qword_10003DB40, &qword_10002F1F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10002F1E0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v33;
      v60 = 0;
      v61 = 0xE000000000000000;
      v34 = v31;
      _StringGuts.grow(_:)(33);

      v60 = 0xD000000000000014;
      v61 = 0x8000000100030ED0;
      v35._countAndFlagsBits = v57;
      v35._object = a4;
      String.append(_:)(v35);
      v36._countAndFlagsBits = 0x3A6F742065756420;
      v36._object = 0xE900000000000020;
      String.append(_:)(v36);
      v37 = IXStringForUninstallDisposition();
      if (v37)
      {
        v38 = v37;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
      }

      else
      {
        v41 = 0xE700000000000000;
        v39 = 0x6E776F6E6B6E55;
      }

      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      v43 = v60;
      v44 = v61;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v43;
      *(inited + 56) = v44;
      sub_100005A5C(inited);
      swift_setDeallocating();
      sub_10000D330(inited + 32, &qword_10003D0A0, &unk_10002F200);
      v45 = objc_allocWithZone(NSError);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v47 = [v45 initWithDomain:v34 code:-98 userInfo:isa];

      static Logger.uv.getter();

      v48 = v47;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v60 = v53;
        *v51 = 136315394;
        *(v51 + 4) = sub_10001BD80(v57, a4, &v60);
        *(v51 + 12) = 2112;
        *(v51 + 14) = v48;
        *v52 = v48;
        v54 = v48;
        _os_log_impl(&_mh_execute_header, v49, v50, "Uninstall of %s failed due to: %@", v51, 0x16u);
        sub_10000D330(v52, &qword_10003CE68, &unk_10002EE00);

        sub_1000041C8(v53);
      }

      (*(v10 + 8))(v14, v59);
      v55 = v48;
      Promise.fail(with:)();
    }
  }
}

void sub_1000267A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10002681C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *v2;
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v10 + v9 + v7) = a2;
  default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
  v11 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();

  return v11;
}

uint64_t sub_100026980(uint64_t a1)
{
  v3 = type metadata accessor for ResetAppRequest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
  v9 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();

  return v9;
}

uint64_t sub_100026AD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026B58()
{
  v1 = type metadata accessor for ResetAppRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100026BE0(uint64_t a1)
{
  v2 = *(*(type metadata accessor for ResetAppRequest() - 8) + 80);

  return sub_100025590(a1);
}

uint64_t sub_100026C50()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

void sub_100026CDC(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  sub_100024C34(a1, v4, v5);
}

uint64_t sub_100026D70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100026DC8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 368) = a4;
  *(v5 + 376) = a5;
  *(v5 + 517) = a3;
  *(v5 + 516) = a2;
  v6 = type metadata accessor for Logger();
  *(v5 + 384) = v6;
  v7 = *(v6 - 8);
  *(v5 + 392) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  *(v5 + 440) = v9;
  v10 = *(v9 - 8);
  *(v5 + 448) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_100026F1C, 0, 0);
}

uint64_t sub_100026F1C()
{
  v100 = v0;
  v1 = *(v0 + 456);
  *(v0 + 464) = sub_10002837C();
  static OS_os_log.connectivity.getter();
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v2 = static OS_os_log.connectivity.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v3 = sub_1000056F8(&_swiftEmptyArrayStorage);
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 BOOLForKey:v6];

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v3;
    sub_1000120C0(49, 0xE100000000000000, 0xD000000000000016, 0x8000000100031030, isUniquelyReferenced_nonNull_native);
  }

  v9 = [v4 standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 BOOLForKey:v10];

  if (v11)
  {
    v12 = *(v0 + 432);
    static Logger.uv.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Enable full PreviewShell MallocStackLogging", v15, 2u);
    }

    v16 = *(v0 + 432);
    v17 = *(v0 + 384);
    v18 = *(v0 + 392);

    (*(v18 + 8))(v16, v17);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v3;
    v20 = 49;
    v21 = 0xE100000000000000;
  }

  else
  {
    v22 = [v4 standardUserDefaults];
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 BOOLForKey:v23];

    if (!v24)
    {
      goto LABEL_12;
    }

    v25 = *(v0 + 424);
    static Logger.uv.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Enable lite PreviewShell MallocStackLogging", v28, 2u);
    }

    v29 = *(v0 + 424);
    v30 = *(v0 + 384);
    v31 = *(v0 + 392);

    (*(v31 + 8))(v29, v30);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v3;
    v20 = 1702127980;
    v21 = 0xE400000000000000;
  }

  sub_1000120C0(v20, v21, 0xD000000000000012, 0x8000000100031010, v19);
  v3 = v99[0];
LABEL_12:
  if (*(v0 + 517) == 1)
  {
    v32 = *(v0 + 416);
    static Logger.uv.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Propagating XTP env value to PreviewShell", v35, 2u);
    }

    v36 = *(v0 + 416);
    v37 = *(v0 + 384);
    v38 = *(v0 + 392);

    (*(v38 + 8))(v36, v37);
    v39 = xtpProcessEnvironmentKey.getter();
    v41 = v40;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v3;
    sub_1000120C0(1702195828, 0xE400000000000000, v39, v41, v42);
  }

  v43 = *(v0 + 408);
  v44 = *(v0 + 376);
  v45 = *(v0 + 516);
  sub_100001CC8(&qword_10003DB50, &qword_10002F288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002F270;
  *(v0 + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 328) = v47;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = (v45 & 1) == 0;
  *(v0 + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 344) = v48;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(v0 + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 360) = v49;
  AnyHashable.init<A>(_:)();
  sub_100001CC8(&qword_10003DB58, &qword_10002F290);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_10002F1E0;
  *(v50 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v50 + 40) = v51;
  *(v50 + 48) = v3;
  v52 = sub_10000580C(v50);
  swift_setDeallocating();
  sub_10000D330(v50 + 32, &qword_10003DB60, &qword_10002F298);
  *(inited + 240) = sub_100001CC8(&qword_10003DB68, &qword_10002F2A0);
  *(inited + 216) = v52;
  sub_100005910(inited);
  swift_setDeallocating();
  sub_100001CC8(&qword_10003D088, &qword_10002E6E8);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v54 = [objc_opt_self() optionsWithDictionary:isa];
  *(v0 + 472) = v54;

  static Logger.uv.getter();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 408);
  v60 = *(v0 + 384);
  v59 = *(v0 + 392);
  if (v57)
  {
    v95 = *(v0 + 408);
    v97 = v54;
    v62 = *(v0 + 368);
    v61 = *(v0 + 376);
    v63 = *(v0 + 516);
    v64 = swift_slowAlloc();
    v99[0] = swift_slowAlloc();
    *v64 = 136315394;
    *(v64 + 4) = sub_10001BD80(v62, v61, v99);
    *(v64 + 12) = 2080;
    if (v63)
    {
      v65 = 0x756F726765726F66;
    }

    else
    {
      v65 = 0x756F72676B636162;
    }

    v66 = sub_10001BD80(v65, 0xEA0000000000646ELL, v99);

    *(v64 + 14) = v66;
    v54 = v97;
    _os_log_impl(&_mh_execute_header, v55, v56, "Calling into FBSOpenApplicationService to launch %s in %s", v64, 0x16u);
    swift_arrayDestroy();

    v67 = *(v59 + 8);
    v67(v95, v60);
  }

  else
  {

    v67 = *(v59 + 8);
    v67(v58, v60);
  }

  v68 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 480) = v68;
  if (v68)
  {
    v69 = v68;
    v71 = *(v0 + 368);
    v70 = *(v0 + 376);
    v72 = *(v0 + 517);
    v73 = swift_task_alloc();
    *(v0 + 488) = v73;
    *(v73 + 16) = v69;
    *(v73 + 24) = v72;
    *(v73 + 32) = v71;
    *(v73 + 40) = v70;
    *(v73 + 48) = v54;
    v74 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v75 = swift_task_alloc();
    *(v0 + 496) = v75;
    *v75 = v0;
    v75[1] = sub_100027A38;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 512, 0, 0, 0xD00000000000001BLL, 0x8000000100030380, sub_10002841C, v73, &type metadata for Int32);
  }

  else
  {
    v76 = *(v0 + 400);
    static Logger.uv.getter();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      sub_1000283C8();
      swift_allocError();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v81;
      *v80 = v81;
      _os_log_impl(&_mh_execute_header, v77, v78, "Unable to create open application service: %@", v79, 0xCu);
      sub_10000D330(v80, &qword_10003CE68, &unk_10002EE00);
    }

    v82 = *(v0 + 392);
    v83 = *(v0 + 400);
    v84 = *(v0 + 384);

    v67(v83, v84);
    sub_1000283C8();
    swift_allocError();
    swift_willThrow();

    v85 = *(v0 + 456);
    v86 = *(v0 + 464);
    v87 = *(v0 + 440);
    v88 = *(v0 + 448);
    v90 = *(v0 + 424);
    v89 = *(v0 + 432);
    v91 = *(v0 + 416);
    v96 = *(v0 + 408);
    v98 = *(v0 + 400);
    static os_signpost_type_t.end.getter();
    v92 = static OS_os_log.connectivity.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*(v88 + 8))(v85, v87);

    v93 = *(v0 + 8);

    return v93();
  }
}

uint64_t sub_100027A38()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_100027C84;
  }

  else
  {
    v5 = *(v2 + 488);

    v4 = sub_100027B54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100027B54()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 408);
  v9 = *(v0 + 416);
  v14 = *(v0 + 400);

  v13 = *(v0 + 512);
  static os_signpost_type_t.end.getter();
  v10 = static OS_os_log.connectivity.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v4 + 8))(v3, v5);

  v11 = *(v0 + 8);

  return v11(v13);
}

uint64_t sub_100027C84()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);

  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v10 = *(v0 + 408);
  v9 = *(v0 + 416);
  v14 = *(v0 + 400);
  v15 = *(v0 + 504);
  static os_signpost_type_t.end.getter();
  v11 = static OS_os_log.connectivity.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v6 + 8))(v4, v5);

  v12 = *(v0 + 8);

  return v12();
}

void sub_100027DB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - v12;
  v14 = String._bridgeToObjectiveC()();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = sub_1000284C4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100025504;
  aBlock[3] = &unk_10003A380;
  v17 = _Block_copy(aBlock);

  [a2 openApplication:v14 withOptions:a6 completion:v17];
  _Block_release(v17);
}

void sub_100027F98(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Callsite();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100001CC8(&qword_10003DB80, &unk_10002F2B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  if (a1)
  {
    v11 = a1;
    LODWORD(v16) = [v11 pid];
    sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      sub_100028568();
      v12 = swift_allocError();
    }

    v16 = v12;
    swift_errorRetain();
    Callsite.init(_:_:_:_:)();
    sub_100001CC8(&qword_10003D9C0, &qword_10002F068);
    CallsiteError.init(underlying:callsite:)();
    sub_1000285BC();
    v13 = swift_allocError();
    (*(v7 + 16))(v14, v10, v6);
    v16 = v13;
    sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);
    CheckedContinuation.resume(throwing:)();
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_100028254(uint64_t a1)
{
  v2 = sub_10002878C();

  return HumanReadableError.errorDescription.getter(a1, v2);
}

uint64_t sub_100028290(uint64_t a1)
{
  v2 = sub_10002878C();

  return HumanReadableError.description.getter(a1, v2);
}

uint64_t sub_1000282CC()
{
  v0 = byte_10003DC38;
  sub_100001CC8(&qword_10003DB98, &qword_10002F2C0);
  v1 = swift_allocObject();
  sub_100001CC8(&qword_10003DBA0, &qword_10002F2C8);
  result = OSAllocatedUnfairLock.init(value:)();
  *(v1 + 16) = result;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0xD000000000000016;
  *(v1 + 40) = 0x8000000100031100;
  qword_10003DC30 = v1;
  return result;
}

unint64_t sub_10002837C()
{
  result = qword_10003DB48;
  if (!qword_10003DB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003DB48);
  }

  return result;
}

unint64_t sub_1000283C8()
{
  result = qword_10003DB70;
  if (!qword_10003DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB70);
  }

  return result;
}

uint64_t sub_100028430()
{
  v1 = sub_100001CC8(&qword_10003DB78, &qword_10002F2A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000284C4(void *a1, uint64_t a2)
{
  v4 = *(*(sub_100001CC8(&qword_10003DB78, &qword_10002F2A8) - 8) + 80);

  sub_100027F98(a1, a2);
}

uint64_t sub_100028550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100028568()
{
  result = qword_10003DB88;
  if (!qword_10003DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB88);
  }

  return result;
}

unint64_t sub_1000285BC()
{
  result = qword_10003DB90;
  if (!qword_10003DB90)
  {
    sub_100001D74(&qword_10003DB80, &unk_10002F2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB90);
  }

  return result;
}

uint64_t sub_100028640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100028688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000286E0()
{
  result = qword_10003DBA8;
  if (!qword_10003DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DBA8);
  }

  return result;
}

unint64_t sub_100028738()
{
  result = qword_10003DBB0;
  if (!qword_10003DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DBB0);
  }

  return result;
}

unint64_t sub_10002878C()
{
  result = qword_10003DBB8;
  if (!qword_10003DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DBB8);
  }

  return result;
}

uint64_t sub_1000287F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for TransportReply();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for DaemonToShell.TwoWayMessage();
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for CopyURLRequest();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v3[12] = *(v10 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000289B0, 0, 0);
}

uint64_t sub_1000289B0()
{
  v46 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[2];
  static Logger.uv.getter();
  v44 = *(v4 + 16);
  v44(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  if (v8)
  {
    v40 = v0[17];
    v42 = v0[15];
    v13 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45 = v38;
    *v16 = 136315138;
    v44(v13, v11, v15);
    v17 = String.init<A>(describing:)();
    v36 = v7;
    v19 = v18;
    (*(v14 + 8))(v11, v15);
    v20 = sub_10001BD80(v17, v19, &v45);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v36, "Forwarding %s", v16, 0xCu);
    sub_1000041C8(v38);

    (*(v9 + 8))(v40, v42);
  }

  else
  {
    v22 = v0[10];
    v21 = v0[11];

    (*(v21 + 8))(v11, v22);
    (*(v9 + 8))(v10, v12);
  }

  v24 = v0[12];
  v23 = v0[13];
  v25 = v0[10];
  v26 = v0[11];
  v28 = v0[8];
  v27 = v0[9];
  v43 = v0[4];
  v37 = v0[7];
  v39 = v0[3];
  v29 = v0[2];
  v41 = *(type metadata accessor for AppManagerDaemon() + 20);
  v44(v27, v29, v25);
  swift_storeEnumTagMultiPayload();
  v44(v23, v29, v25);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v30, v23, v25);
  TransportReply.wrappingError(_:)();

  v32 = swift_task_alloc();
  v0[18] = v32;
  *v32 = v0;
  v32[1] = sub_100028CF0;
  v33 = v0[9];
  v34 = v0[7];

  return sub_10000262C(v33, v34);
}

uint64_t sub_100028CF0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 56);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 40);
  v11 = *v0;

  (*(v7 + 8))(v6, v8);
  sub_10002989C(v5);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_100028ED0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for TransportReply();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for DaemonToShell.TwoWayMessage();
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for GrantExecutePermissionRequest();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v3[12] = *(v10 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100029090, 0, 0);
}

uint64_t sub_100029090()
{
  v46 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[2];
  static Logger.uv.getter();
  v44 = *(v4 + 16);
  v44(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  if (v8)
  {
    v40 = v0[17];
    v42 = v0[15];
    v13 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    v16 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45 = v38;
    *v16 = 136315138;
    v44(v13, v11, v15);
    v17 = String.init<A>(describing:)();
    v36 = v7;
    v19 = v18;
    (*(v14 + 8))(v11, v15);
    v20 = sub_10001BD80(v17, v19, &v45);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v36, "Forwarding %s", v16, 0xCu);
    sub_1000041C8(v38);

    (*(v9 + 8))(v40, v42);
  }

  else
  {
    v22 = v0[10];
    v21 = v0[11];

    (*(v21 + 8))(v11, v22);
    (*(v9 + 8))(v10, v12);
  }

  v24 = v0[12];
  v23 = v0[13];
  v25 = v0[10];
  v26 = v0[11];
  v28 = v0[8];
  v27 = v0[9];
  v43 = v0[4];
  v37 = v0[7];
  v39 = v0[3];
  v29 = v0[2];
  v41 = *(type metadata accessor for AppManagerDaemon() + 20);
  v44(v27, v29, v25);
  swift_storeEnumTagMultiPayload();
  v44(v23, v29, v25);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v30, v23, v25);
  TransportReply.wrappingError(_:)();

  v32 = swift_task_alloc();
  v0[18] = v32;
  *v32 = v0;
  v32[1] = sub_100029A40;
  v33 = v0[9];
  v34 = v0[7];

  return sub_10000262C(v33, v34);
}

uint64_t sub_1000293D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), int a4)
{
  v45 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v18 = *(v7 + 16);
  v18(v13, a2, v6);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  v44 = a1;

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49[0] = v41;
    *v21 = 136315394;
    v18(v11, v13, v6);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v7 + 8))(v13, v6);
    v25 = sub_10001BD80(v22, v24, v49);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v26;
    v27 = v40;
    *v40 = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s failed: %@", v21, 0x16u);
    sub_100004160(v27);

    sub_1000041C8(v41);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  (*(v42 + 8))(v17, v43);
  v46 = v45;
  sub_1000089B0();
  v47 = 0;
  v48 = 0;
  HumanReadableError.withUnderlying(_:)();
  v28 = v50;
  v29 = v51;
  v30 = sub_100023B64(v49, v50);
  v31 = *(v28 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v40 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v34);
  v35 = *(*(v29 + 8) + 8);
  v36 = _getErrorEmbeddedNSError<A>(_:)();
  if (v36)
  {
    v37 = v36;
    (*(v31 + 8))(v34, v28);
  }

  else
  {
    v37 = swift_allocError();
    (*(v31 + 32))(v38, v34, v28);
  }

  sub_1000041C8(v49);
  return v37;
}

uint64_t sub_10002989C(uint64_t a1)
{
  v2 = type metadata accessor for DaemonToShell.TwoWayMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029910(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100029A44(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v98 = a2;
  v3 = type metadata accessor for TransportReply();
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  __chkstk_darwin(v3);
  v86 = v5;
  v88 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SecurityScopedURLWrapper();
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v91 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = type metadata accessor for URL();
  v99 = *(v95 - 8);
  v9 = *(v99 + 64);
  v10 = __chkstk_darwin(v95);
  v83 = v11;
  v84 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v78 - v12;
  v14 = type metadata accessor for InstallAppRequest();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v94 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v78 - v20;
  __chkstk_darwin(v19);
  v23 = &v78 - v22;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v100 = v24;
  v101 = v25;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v87 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v78 - v29;
  static Logger.uv.getter();
  v31 = v15[2];
  v96 = a1;
  v31(v23, a1, v14);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v13;
  v82 = v15;
  v79 = v21;
  v81 = v15 + 2;
  v80 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v102[0] = v78;
    *v35 = 136315138;
    v31(v21, v23, v14);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = v15[1];
    v39(v23, v14);
    v40 = sub_10001BD80(v36, v38, v102);
    v41 = v101;

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "Received %s", v35, 0xCu);
    sub_1000041C8(v78);

    v13 = v97;

    v42 = v41;
  }

  else
  {

    v39 = v15[1];
    v39(v23, v14);
    v42 = v101;
  }

  v43 = *(v42 + 8);
  v43(v30, v100);
  v44 = v91;
  v45 = v96;
  InstallAppRequest.sourceURLWrapper.getter();
  SecurityScopedURLWrapper.url.getter();
  (*(v92 + 8))(v44, v93);
  v46 = URL.startAccessingSecurityScopedResource()();
  v47 = v94;
  if (v46)
  {
    sub_100023B64(v85, v85[3]);
    v48 = InstallAppRequest.isDevelopment.getter();
    sub_10002681C(v13, v48 & 1);
    v50 = v88;
    v49 = v89;
    v51 = v90;
    (*(v89 + 16))(v88, v98, v90);
    v52 = v99;
    v53 = v84;
    v54 = v95;
    (*(v99 + 16))(v84, v13, v95);
    v55 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v56 = (v86 + *(v52 + 80) + v55) & ~*(v52 + 80);
    v57 = swift_allocObject();
    (*(v49 + 32))(v57 + v55, v50, v51);
    (*(v52 + 32))(v57 + v56, v53, v54);
    Future.observeFinish(_:)();

    return (*(v52 + 8))(v97, v54);
  }

  else
  {
    v92 = 0x80000001000312C0;
    v93 = v39;
    v59 = v87;
    static Logger.uv.getter();
    v60 = v80;
    v80(v47, v45, v14);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v96 = v43;
      v64 = v60;
      v65 = v63;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v102[0] = v91;
      *v65 = 136315394;
      v64(v79, v47, v14);
      v66 = v13;
      v67 = String.init<A>(describing:)();
      v69 = v68;
      v93(v47, v14);
      v70 = v67;
      v13 = v66;
      v71 = sub_10001BD80(v70, v69, v102);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2112;
      sub_1000086E8();
      swift_allocError();
      *v72 = 2;
      v73 = v92;
      *(v72 + 8) = 0xD000000000000023;
      *(v72 + 16) = v73;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 14) = v74;
      v75 = v90;
      *v90 = v74;
      _os_log_impl(&_mh_execute_header, v61, v62, "%s failed: %@", v65, 0x16u);
      sub_10000D330(v75, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v91);

      v96(v59, v100);
      v76 = v73;
    }

    else
    {

      v93(v47, v14);
      v43(v59, v100);
      v76 = v92;
    }

    sub_1000086E8();
    swift_allocError();
    *v77 = 2;
    *(v77 + 8) = 0xD000000000000023;
    *(v77 + 16) = v76;
    TransportReply.send(error:file:line:column:function:)();
    (*(v99 + 8))(v13, v95);
  }
}

uint64_t sub_10002A3B8(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = type metadata accessor for UninstallAppsRequest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v80 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v83 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v89 = &v80 - v16;
  v17 = __chkstk_darwin(v15);
  v84 = &v80 - v18;
  __chkstk_darwin(v17);
  v20 = &v80 - v19;
  static Logger.uv.getter();
  v21 = *(v4 + 16);
  v88 = a1;
  v21(v9, a1, v3);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v82 = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    v86 = v11;
    v81 = v26;
    v90 = v26;
    *v25 = 136315138;
    v21(v85, v9, v3);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    (*(v4 + 8))(v9, v3);
    v30 = sub_10001BD80(v27, v29, &v90);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received %s", v25, 0xCu);
    sub_1000041C8(v81);

    v10 = v82;

    v31 = v86;
    v32 = v86;
  }

  else
  {

    (*(v4 + 8))(v9, v3);
    v32 = v11;
    v31 = v11;
  }

  v33 = *(v32 + 8);
  v33(v20, v10);
  v34 = UninstallAppsRequest.bundleIDs.getter();
  v35 = v89;
  if (!v34)
  {
    v49 = v83;
    static Logger.uv.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Attempting uninstall of all development applications", v52, 2u);
    }

    v33(v49, v10);
    v53 = sub_1000071B4();
    goto LABEL_33;
  }

  v36 = v34;
  if ((UninstallAppsRequest.arePrefixes.getter() & 1) == 0)
  {
    static Logger.uv.getter();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v86 = v31;
      v58 = v57;
      v90 = v57;
      *v56 = 136315138;
      v59 = Array.description.getter();
      v61 = v10;
      v62 = sub_10001BD80(v59, v60, &v90);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Attempting uninstall of specified applications: %s", v56, 0xCu);
      sub_1000041C8(v58);

      v63 = v89;
      v64 = v61;
    }

    else
    {

      v63 = v35;
      v64 = v10;
    }

    v33(v63, v64);
    v53 = v36;
    goto LABEL_33;
  }

  v37 = v84;
  static Logger.uv.getter();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v86 = v31;
    v42 = v41;
    v90 = v41;
    *v40 = 136315138;
    v43 = Array.description.getter();
    v45 = v10;
    v46 = sub_10001BD80(v43, v44, &v90);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "Attempting uninstall of applications matching specified prefixes: %s", v40, 0xCu);
    sub_1000041C8(v42);

    v47 = v84;
    v48 = v45;
  }

  else
  {

    v47 = v37;
    v48 = v10;
  }

  v33(v47, v48);
  result = sub_1000071B4();
  v66 = result;
  v67 = *(result + 16);
  if (!v67)
  {
    v53 = &_swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v68 = 0;
  v69 = (result + 40);
  v88 = v67 - 1;
  v53 = &_swiftEmptyArrayStorage;
  v89 = (result + 40);
  do
  {
    v70 = &v69[16 * v68];
    v71 = v68;
    while (1)
    {
      if (v71 >= *(v66 + 16))
      {
        __break(1u);
        return result;
      }

      if (*(v36 + 2))
      {
        break;
      }

LABEL_17:
      ++v71;
      v70 += 16;
      if (v67 == v71)
      {
        goto LABEL_32;
      }
    }

    v73 = *(v70 - 1);
    v72 = *v70;
    v74 = *(v36 + 4);
    v75 = *(v36 + 5);

    v76._countAndFlagsBits = v74;
    v76._object = v75;
    LOBYTE(v74) = String.hasPrefix(_:)(v76);

    if ((v74 & 1) == 0)
    {

      goto LABEL_17;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v90 = v53;
    if ((result & 1) == 0)
    {
      result = sub_10002C6D4(0, *(v53 + 2) + 1, 1);
      v53 = v90;
    }

    v78 = *(v53 + 2);
    v77 = *(v53 + 3);
    if (v78 >= v77 >> 1)
    {
      result = sub_10002C6D4((v77 > 1), v78 + 1, 1);
      v53 = v90;
    }

    v68 = v71 + 1;
    *(v53 + 2) = v78 + 1;
    v79 = &v53[16 * v78];
    *(v79 + 4) = v73;
    *(v79 + 5) = v72;
    v69 = v89;
  }

  while (v88 != v71);
LABEL_32:

LABEL_33:
  sub_10002B4A8(v53, v87);
}

uint64_t sub_10002AB84(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v94 = a2;
  v3 = type metadata accessor for TransportReply();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  __chkstk_darwin(v3);
  v82 = v5;
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AgentDescriptor.Bundle();
  v90 = *(v6 - 1);
  v91 = v6;
  v7 = *(v90 + 64);
  __chkstk_darwin(v6);
  v89 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ResetAppRequest();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - v15;
  __chkstk_darwin(v14);
  v18 = &v77 - v17;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v95 = v19;
  v96 = v20;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v77 - v25;
  static Logger.uv.getter();
  v27 = v10[2];
  v93 = a1;
  v27(v18, a1, v9);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v88 = v24;
  v85 = v9;
  v83 = v10;
  v78 = v16;
  v79 = v27;
  v80 = v10 + 2;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v97 = v77;
    *v31 = 136315138;
    v27(v16, v18, v9);
    v32 = String.init<A>(describing:)();
    v33 = v9;
    v34 = v32;
    v36 = v35;
    v37 = v10[1];
    v37(v18, v33);
    v38 = v95;
    v39 = v96;
    v40 = sub_10001BD80(v34, v36, &v97);

    *(v31 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v28, v29, "Received %s", v31, 0xCu);
    sub_1000041C8(v77);

    v41 = *(v39 + 8);
    v41(v26, v38);
  }

  else
  {

    v37 = v10[1];
    v37(v18, v9);
    v41 = *(v96 + 8);
    v41(v26, v95);
  }

  v42 = v89;
  v43 = v93;
  ResetAppRequest.agentDescriptorBundle.getter();
  v44 = AgentDescriptor.Bundle.bundleID.getter();
  v46 = v45;
  (*(v90 + 8))(v42, v91);
  v47 = v92;
  v48 = sub_1000071B4();
  v97 = v44;
  v98 = v46;
  __chkstk_darwin(v48);
  v76 = &v97;
  LOBYTE(v42) = sub_10002C800(sub_10002CC40, (&v77 - 4), v48);

  if (v42)
  {

    sub_100023B64(v47, *(v47 + 3));
    sub_100026980(v43);
    LOBYTE(v76) = 2;
    Future.ignoringValue(dsoHandle:file:line:column:function:)();

    v50 = v86;
    v49 = v87;
    v51 = v84;
    (*(v86 + 16))(v84, v94, v87);
    v52 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v53 = swift_allocObject();
    (*(v50 + 32))(v53 + v52, v51, v49);
    Future.observeFinish(_:)();
  }

  else
  {
    v92 = v37;
    v97 = 0;
    v98 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v97 = v44;
    v98 = v46;
    v55._object = 0x8000000100031320;
    v55._countAndFlagsBits = 0xD00000000000002BLL;
    String.append(_:)(v55);
    v57 = v97;
    v56 = v98;
    v58 = v88;
    static Logger.uv.getter();
    v59 = v81;
    v60 = v85;
    v61 = v79;
    v79(v81, v43, v85);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      LODWORD(v90) = v63;
      v65 = v64;
      v89 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v97 = v91;
      *v65 = 136315394;
      v93 = v41;
      v61(v78, v59, v60);
      v66 = v58;
      v67 = String.init<A>(describing:)();
      v68 = v60;
      v70 = v69;
      v92(v59, v68);
      v71 = sub_10001BD80(v67, v70, &v97);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2112;
      sub_1000086E8();
      swift_allocError();
      *v72 = 6;
      *(v72 + 8) = v57;
      *(v72 + 16) = v56;

      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 14) = v73;
      v74 = v89;
      *v89 = v73;
      _os_log_impl(&_mh_execute_header, v62, v90, "%s failed: %@", v65, 0x16u);
      sub_10000D330(v74, &qword_10003CE68, &unk_10002EE00);

      sub_1000041C8(v91);

      v93(v66, v95);
    }

    else
    {

      v92(v59, v60);
      v41(v58, v95);
    }

    sub_1000086E8();
    swift_allocError();
    *v75 = 6;
    *(v75 + 8) = v57;
    *(v75 + 16) = v56;
    LOBYTE(v76) = 2;
    TransportReply.send(error:file:line:column:function:)();
  }
}

uint64_t sub_10002B4A8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = type metadata accessor for TransportReply();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v20);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Callsite();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000071B4();
  v11 = swift_allocObject();
  *(v11 + 16) = &_swiftEmptyArrayStorage;
  v23 = v10;
  v24 = sub_10002BF0C;
  v25 = v11;
  v26 = v2;

  v12 = sub_10002C070(sub_10002C050, v22, a1);

  v27 = v12;
  Callsite.init(_:_:_:_:)();
  sub_100001CC8(&qword_10003DBC0, &qword_10002F510);
  sub_100004334(&qword_10003DBC8, &qword_10003DBC0, &qword_10002F510);
  Sequence.invert<A>(callsite:andAccumulateErrors:)();
  (*(v6 + 8))(v9, v18);

  v14 = v19;
  v13 = v20;
  (*(v4 + 16))(v19, v21, v20);
  v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = sub_10002BF0C;
  *(v16 + 3) = v11;
  *(v16 + 4) = v11;
  (*(v4 + 32))(&v16[v15], v14, v13);
  swift_retain_n();
  Future.observeFinish(_:)();
}

uint64_t sub_10002B7D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002B810()
{
  sub_100001CC8(&qword_10003DC00, &unk_10002F540);
  FutureTermination.result.getter();
  if (v17 == 1)
  {
    v0 = v16;
    v10[0] = 2;
    v11 = 0;
    v12 = 0;
    swift_errorRetain();
    sub_1000089B0();
    HumanReadableError.withUnderlying(_:)();
    sub_10002CAE4(v16, 1);
    v1 = v14;
    v2 = v15;
    v3 = sub_100023B64(v13, v14);
    v4 = *(v1 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin(v3);
    v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v4 + 16))(v7);
    v8 = *(*(v2 + 8) + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v4 + 8))(v7, v1);
    }

    else
    {
      swift_allocError();
      (*(v4 + 32))(v9, v7, v1);
    }

    TransportReply.send(error:file:line:column:function:)();
    sub_10002CAE4(v0, 1);

    sub_1000041C8(v13);
  }

  else
  {
    TransportReply.send(file:line:column:function:)();
  }

  URL.stopAccessingSecurityScopedResource()();
}

uint64_t sub_10002BA74()
{
  sub_100001CC8(&qword_10003DC00, &unk_10002F540);
  FutureTermination.result.getter();
  if (v18 != 1)
  {
    return TransportReply.send(file:line:column:function:)();
  }

  v0 = v17;
  v11[0] = 6;
  v12 = 0;
  v13 = 0;
  swift_errorRetain();
  sub_1000089B0();
  HumanReadableError.withUnderlying(_:)();
  sub_10002CAE4(v17, 1);
  v1 = v15;
  v2 = v16;
  v3 = sub_100023B64(v14, v15);
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7);
  v8 = *(*(v2 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v4 + 8))(v7, v1);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v10, v7, v1);
  }

  TransportReply.send(error:file:line:column:function:)();
  sub_10002CAE4(v0, 1);

  return sub_1000041C8(v14);
}

uint64_t sub_10002BCC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_10002C5C8(0, *(v11 + 2) + 1, 1, v11);
    *(a3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_10002C5C8((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  *(a3 + 16) = v11;
  swift_endAccess();
  static Logger.uv.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10001BD80(a1, a2, &v22);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s", v18, 0xCu);
    sub_1000041C8(v19);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10002BF14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, unint64_t)@<X2>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v16 = *a1;
  v17 = v9;
  v15[2] = &v16;
  if (sub_10002C800(sub_10002C8AC, v15, a2))
  {
    v10 = *sub_100023B64(a4, a4[3]);
    result = sub_100025B9C(v8, v9);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    v12._object = 0x8000000100030ED0;
    v12._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v8;
    v13._object = v9;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0xD000000000000030;
    v14._object = 0x8000000100031280;
    String.append(_:)(v14);
    a3(v16, v17);

    result = 0;
  }

  *a5 = result;
  return result;
}

void *sub_10002C070(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = &_swiftEmptyArrayStorage;
  v13 = &_swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v12[0] = *(i - 1);
      v12[1] = v8;

      a1(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_10002C18C(uint64_t a1, void (*a2)(uint64_t, unint64_t), uint64_t a3, uint64_t a4)
{
  sub_100001CC8(&qword_10003DBD0, &qword_10002F518);
  FutureTermination.result.getter();
  v6 = v23;
  if (v24 == 1)
  {
    v19 = v23;
    swift_errorRetain();
    sub_100001CC8(&qword_10003D9C0, &qword_10002F068);
    sub_100001CC8(&qword_10003DBD8, &qword_10002F520);
    if (swift_dynamicCast())
    {
      sub_10002C5B0(v17, &v20);
      sub_100023B64(&v20, v22);
      v7 = dispatch thunk of HumanReadableError.fullDiagnosticsOutput.getter();
      v9 = v8;
      sub_1000041C8(&v20);
      v10 = v7;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_10000D330(v17, &qword_10003DBE0, &qword_10002F528);
      v20 = 0;
      v21 = 0xE000000000000000;
      *&v17[0] = v6;
      _print_unlocked<A, B>(_:_:)();
      v10 = v20;
      v9 = v21;
    }

    a2(v10, v9);
    sub_10002C5A4(v6, 1);
  }

  else
  {
    sub_10002C5A4(v23, 0);
  }

  swift_beginAccess();
  v11 = *(a4 + 16);
  if (!*(v11 + 16))
  {
    return TransportReply.send(file:line:column:function:)();
  }

  *&v17[0] = v11;

  sub_100001CC8(&qword_10003DBE8, &qword_10002F530);
  sub_100004334(&qword_10003DBF0, &qword_10003DBE8, &qword_10002F530);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  sub_1000086E8();
  swift_allocError();
  *v15 = 3;
  *(v15 + 8) = v12;
  *(v15 + 16) = v14;
  TransportReply.send(error:file:line:column:function:)();
}

uint64_t sub_10002C460()
{
  v1 = type metadata accessor for TransportReply();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002C52C(uint64_t a1)
{
  v3 = *(*(type metadata accessor for TransportReply() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_10002C18C(a1, v4, v5, v6);
}

uint64_t sub_10002C5A4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10002C5B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_10002C5C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CC8(&qword_10003DBF8, &qword_10002F538);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002C6D4(char *a1, int64_t a2, char a3)
{
  result = sub_10002C6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002C6F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CC8(&qword_10003DBF8, &qword_10002F538);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10002C800(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10002C8C8()
{
  v1 = type metadata accessor for TransportReply();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10002CA10()
{
  v1 = *(type metadata accessor for TransportReply() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10002B810();
}

uint64_t sub_10002CAE4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10002CAF0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10002CB48()
{
  v1 = type metadata accessor for TransportReply();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002CBD0()
{
  v0 = *(*(type metadata accessor for TransportReply() - 8) + 80);

  return sub_10002BA74();
}

void sub_10002CC5C(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "_set_user_dir_suffix failed: %{darwin.errno}d", v3, 8u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t TransportMessage<>.body.getter()
{
  return TransportMessage<>.body.getter();
}

{
  return TransportMessage<>.body.getter();
}