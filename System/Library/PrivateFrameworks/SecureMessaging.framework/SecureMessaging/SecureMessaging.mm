id sub_100001038()
{
  result = [objc_allocWithZone(type metadata accessor for MLSDaemon()) init];
  qword_100008150 = result;
  return result;
}

uint64_t sub_10000106C()
{
  if (qword_100008098 != -1)
  {
    swift_once();
  }

  v0 = qword_100008150;
  v1 = objc_allocWithZone(type metadata accessor for KDSRegistrationDaemon());
  v2 = v0;
  result = KDSRegistrationDaemon.init(mlsDaemon:)();
  qword_100008158 = result;
  return result;
}

uint64_t sub_1000010E0()
{
  if (qword_100008098 != -1)
  {
    swift_once();
  }

  v0 = qword_1000080A0;
  v1 = qword_100008150;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_100008158;
  v3 = objc_allocWithZone(type metadata accessor for XPCServer());
  v4 = v2;
  result = XPCServer.init(xpcDaemons:deliveryDaemon:registrationDaemon:)();
  qword_100008160 = result;
  return result;
}

uint64_t sub_1000011AC()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100001240, v2, v1);
}

uint64_t sub_100001240()
{
  sub_100002388();
  if (qword_1000080A0 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_100008158;
  v1 = *(&async function pointer to dispatch thunk of KDSRegistrationDaemon.start() + 1);
  v4 = (&async function pointer to dispatch thunk of KDSRegistrationDaemon.start() + async function pointer to dispatch thunk of KDSRegistrationDaemon.start());
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100001338;

  return v4();
}

uint64_t sub_100001338()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_10000174C;
  }

  else
  {
    v7 = sub_100001474;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100001474()
{
  if (qword_100008098 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_100008150;
  v1 = *(&async function pointer to dispatch thunk of MLSDaemon.start() + 1);
  v4 = (&async function pointer to dispatch thunk of MLSDaemon.start() + async function pointer to dispatch thunk of MLSDaemon.start());
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100001550;

  return v4();
}

uint64_t sub_100001550()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1000017B0;
  }

  else
  {
    v7 = sub_10000168C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000168C()
{
  v1 = v0[2];

  if (qword_1000080A8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = v0[5];
  dispatch thunk of XPCServer.setupXPCListener()();
  dispatch thunk of MLSDaemon.setupXPCNotificationPoster()();
  dispatch thunk of KDSRegistrationDaemon.setupXPCNotificationPoster()();
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000174C()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000017B0()
{
  v1 = v0[10];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100001814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100001BA0(&qword_1000080B0, &qword_100002950) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100001DEC(a3, v23 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100001E5C(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100001E5C(a3);

      return v21;
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

  sub_100001E5C(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = (*(*(sub_100001BA0(&qword_1000080B0, &qword_100002950) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = type metadata accessor for SecureMessagingAgentMain();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_100001814(0, 0, v5, &unk_100002960, v9);

  dispatch_main();
}

uint64_t sub_100001BA0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001C0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100001C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100001CF8;

  return sub_1000011AC();
}

uint64_t sub_100001CF8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001BA0(&qword_1000080B0, &qword_100002950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001E5C(uint64_t a1)
{
  v2 = sub_100001BA0(&qword_1000080B0, &qword_100002950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001EC4(uint64_t *a1, int a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000024E0(v6, v5);
      *v20 = v6;
      *&v20[8] = v5;
      v20[10] = BYTE2(v5);
      v20[11] = BYTE3(v5);
      v20[12] = BYTE4(v5);
      v20[13] = BYTE5(v5);
      v20[14] = BYTE6(v5);
      result = sub_100002534(v20, a2, &v21);
      if (!v2)
      {
        result = v21;
      }

      v9 = *&v20[8] | ((*&v20[12] | (v20[14] << 16)) << 32);
      *a1 = *v20;
      a1[1] = v9;
      return result;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000024E0(v6, v5);
    *a1 = xmmword_100002930;
    sub_1000024E0(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_24:
        __break(1u);
      }

      v14 = type metadata accessor for __DataStorage();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_100002234(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        return v18;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_1000024E0(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_100002930;
    sub_1000024E0(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = v21;
    result = sub_100002234(*(v21 + 16), *(v21 + 24), v22, a2);
    v11 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v21;
      a1[1] = v11;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v11;
    return result;
  }

  memset(v20, 0, 15);
  result = sub_100002534(v20, a2, &v21);
  if (!v2)
  {
    return v21;
  }

  return result;
}

uint64_t sub_100002234(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_100002534((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_1000022E0(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t sub_100002388()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = type metadata accessor for __DataStorage();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v7 = 0x40000000000;
  v8 = __DataStorage.init(length:)();
  sub_1000022E0(&v7, 0);
  v8 |= 0x4000000000000000uLL;
  sub_100001EC4(&v7, 65537);
  v5 = v4;
  sub_1000024E0(v7, v8);
  if (v5)
  {
  }

  else
  {
LABEL_6:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000024E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002534@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = String.init(cString:)();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}