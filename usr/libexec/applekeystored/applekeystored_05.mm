uint64_t sub_10006BDA0(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  v3 = 0;
  if (v1)
  {
    v4 = &_swiftEmptyArrayStorage[4];
    v5 = (result + 32);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v5[3];
      v28 = v5[2];
      v29[0] = v7;
      *(v29 + 9) = *(v5 + 57);
      v8 = v5[1];
      v26 = *v5;
      v27 = v8;
      if (v3)
      {
        result = sub_10006B5BC(&v26, v25);
        v2 = v6;
        v9 = __OFSUB__(v3--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v6[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
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

        sub_10000A0C8(&qword_1000A4AC0, &qword_1000790E8);
        v2 = swift_allocObject();
        v13 = (j__malloc_size(v2) - 32) / 80;
        v2[2] = v12;
        v2[3] = 2 * v13;
        v14 = v6[3] >> 1;
        v15 = 10 * v14;
        v16 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v14;
        v4 = &v2[10 * v14 + 4];
        if (v6[2])
        {
          v17 = v2 < v6 || v2 + 4 >= &v6[v15 + 4];
          if (!v17 && v2 == v6)
          {
            sub_10006B5BC(&v26, v25);
          }

          else
          {
            sub_10006B5BC(&v26, v25);
            memmove(v2 + 4, v6 + 4, v15 * 8);
          }

          v6[2] = 0;
        }

        else
        {
          sub_10006B5BC(&v26, v25);
        }

        v9 = __OFSUB__(v16, 1);
        v3 = v16 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      v18 = v26;
      v19 = v27;
      v20 = v28;
      v21 = v29[0];
      *(v4 + 57) = *(v29 + 9);
      v4[2] = v20;
      v4[3] = v21;
      *v4 = v18;
      v4[1] = v19;
      v4 += 5;
      v5 += 5;
      v6 = v2;
      --v1;
    }

    while (v1);
  }

  v22 = v2[3];
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v9 = __OFSUB__(v23, v3);
    v24 = v23 - v3;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v24;
  }

  return v2;
}

uint64_t sub_10006BFBC@<X0>(char *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10001147C(a1, *(v2 + 48), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_10006C0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C140(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10006C188()
{
  result = qword_1000A4B20;
  if (!qword_1000A4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B20);
  }

  return result;
}

uint64_t sub_10006C1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10006C2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006C344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10006C38C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006C3E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10006C40C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10006C454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006C4CC()
{
  result = qword_1000A4B28;
  if (!qword_1000A4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B28);
  }

  return result;
}

unint64_t sub_10006C524()
{
  result = qword_1000A4B30;
  if (!qword_1000A4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B30);
  }

  return result;
}

unint64_t sub_10006C57C()
{
  result = qword_1000A4B38;
  if (!qword_1000A4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B38);
  }

  return result;
}

unint64_t sub_10006C5D0()
{
  result = qword_1000A4B40;
  if (!qword_1000A4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B40);
  }

  return result;
}

unint64_t sub_10006C624()
{
  result = qword_1000A4B50;
  if (!qword_1000A4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B50);
  }

  return result;
}

unint64_t sub_10006C678()
{
  result = qword_1000A4B58;
  if (!qword_1000A4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B58);
  }

  return result;
}

unint64_t sub_10006C6CC()
{
  result = qword_1000A4B80;
  if (!qword_1000A4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B80);
  }

  return result;
}

unint64_t sub_10006C720()
{
  result = qword_1000A4B88;
  if (!qword_1000A4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B88);
  }

  return result;
}

unint64_t sub_10006C774()
{
  result = qword_1000A4B90;
  if (!qword_1000A4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B90);
  }

  return result;
}

unint64_t sub_10006C7C8()
{
  result = qword_1000A4B98;
  if (!qword_1000A4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B98);
  }

  return result;
}

unint64_t sub_10006C81C()
{
  result = qword_1000A4BA0;
  if (!qword_1000A4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BA0);
  }

  return result;
}

unint64_t sub_10006C870()
{
  result = qword_1000A4BB0;
  if (!qword_1000A4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BB0);
  }

  return result;
}

unint64_t sub_10006C928()
{
  result = qword_1000A4BB8;
  if (!qword_1000A4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BB8);
  }

  return result;
}

unint64_t sub_10006C980()
{
  result = qword_1000A4BC0;
  if (!qword_1000A4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BC0);
  }

  return result;
}

unint64_t sub_10006C9D8()
{
  result = qword_1000A4BC8;
  if (!qword_1000A4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BC8);
  }

  return result;
}

unint64_t sub_10006CA30()
{
  result = qword_1000A4BD0;
  if (!qword_1000A4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BD0);
  }

  return result;
}

unint64_t sub_10006CA88()
{
  result = qword_1000A4BD8;
  if (!qword_1000A4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BD8);
  }

  return result;
}

unint64_t sub_10006CAE0()
{
  result = qword_1000A4BE0;
  if (!qword_1000A4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BE0);
  }

  return result;
}

unint64_t sub_10006CB38()
{
  result = qword_1000A4BE8;
  if (!qword_1000A4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BE8);
  }

  return result;
}

unint64_t sub_10006CB90()
{
  result = qword_1000A4BF0;
  if (!qword_1000A4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BF0);
  }

  return result;
}

unint64_t sub_10006CBE8()
{
  result = qword_1000A4BF8;
  if (!qword_1000A4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4BF8);
  }

  return result;
}

unint64_t sub_10006CC40()
{
  result = qword_1000A4C00;
  if (!qword_1000A4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C00);
  }

  return result;
}

unint64_t sub_10006CC98()
{
  result = qword_1000A4C08;
  if (!qword_1000A4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C08);
  }

  return result;
}

unint64_t sub_10006CCF0()
{
  result = qword_1000A4C10;
  if (!qword_1000A4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C10);
  }

  return result;
}

unint64_t sub_10006CD48()
{
  result = qword_1000A4C18;
  if (!qword_1000A4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C18);
  }

  return result;
}

unint64_t sub_10006CDA0()
{
  result = qword_1000A4C20;
  if (!qword_1000A4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C20);
  }

  return result;
}

unint64_t sub_10006CDF8()
{
  result = qword_1000A4C28;
  if (!qword_1000A4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C28);
  }

  return result;
}

unint64_t sub_10006CE50()
{
  result = qword_1000A4C30;
  if (!qword_1000A4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C30);
  }

  return result;
}

unint64_t sub_10006CEA8()
{
  result = qword_1000A4C38;
  if (!qword_1000A4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C38);
  }

  return result;
}

unint64_t sub_10006CF00()
{
  result = qword_1000A4C40;
  if (!qword_1000A4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4C40);
  }

  return result;
}

void *sub_10006CF8C(int a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 88) = 256;
  *(v1 + 32) = a1;
  *(v1 + 64) = xmmword_100079C40;
  result = calloc(1uLL, 0x20uLL);
  if (result)
  {
    *(v1 + 80) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006CFE0()
{
  free(*(v0 + 80));
  v1 = *(v0 + 24);
  sub_1000021A0(*(v0 + 16));

  v2 = *(v0 + 64);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_10006D054()
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 56))
  {
    __break(1u);
    goto LABEL_17;
  }

  v49 = v15;
  v50 = v14;
  NotificationPort = IODataQueueAllocateNotificationPort();
  *(v0 + 56) = NotificationPort;
  if (!NotificationPort)
  {
    if (qword_1000A2178 == -1)
    {
LABEL_6:
      v24 = type metadata accessor for Logger();
      sub_100002DB8(v24, qword_1000B1908);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "failed to allocate mach port", v27, 2u);
      }

      sub_10000EEA4();
      swift_allocError();
      *v22 = 1;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      v23 = 22;
      goto LABEL_9;
    }

LABEL_17:
    swift_once();
    goto LABEL_6;
  }

  v19 = *(v0 + 32);
  atAddress[0] = 0;
  ofSize = 0;
  v20 = IOConnectMapMemory64(v19, 0, mach_task_self_, atAddress, &ofSize, 1u);
  if (v20)
  {
    v21 = v20;
    sub_10000EEA4();
    swift_allocError();
    *v22 = v21;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v23 = 2;
LABEL_9:
    *(v22 + 32) = v23;
    return swift_willThrow();
  }

  v46[0] = v1;
  *(v0 + 40) = atAddress[0];
  v29 = sub_10006D730(0, &qword_1000A2110, OS_dispatch_queue_ptr);
  v46[2] = "achMsg";
  v46[3] = v29;
  static DispatchQoS.unspecified.getter();
  atAddress[0] = &_swiftEmptyArrayStorage;
  v46[1] = sub_10006DAC0(&unk_1000A4E70, &type metadata accessor for OS_dispatch_queue.Attributes);
  v47 = v3;
  v48 = v2;
  sub_10000A0C8(&qword_1000A3570, &unk_100076E90);
  sub_10006DB08(&qword_1000A4E80, &qword_1000A3570, &unk_100076E90);
  v30 = v0;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v51 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = *(v0 + 48);
  *(v30 + 48) = v31;
  v33 = v31;

  sub_10006D730(0, &qword_1000A4E88, OS_dispatch_source_ptr);
  v34 = *(v30 + 56);
  v35 = static OS_dispatch_source.makeMachReceiveSource(port:queue:)();

  v36 = *(v30 + 64);
  *(v30 + 64) = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  atAddress[4] = sub_100001D34;
  atAddress[5] = v30;
  atAddress[0] = _NSConcreteStackBlock;
  atAddress[1] = 1107296256;
  atAddress[2] = sub_100001840;
  atAddress[3] = &unk_100098F10;
  v37 = _Block_copy(atAddress);

  static DispatchQoS.unspecified.getter();
  v38 = v52;
  sub_10006D778();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v37);
  (*(v47 + 8))(v38, v48);
  (*(v49 + 8))(v17, v50);

  OS_dispatch_source.activate()();
  v39 = IOConnectSetNotificationPort(*(v30 + 32), 0, *(v30 + 56), 0);
  if (v39)
  {
    v40 = v39;
    sub_10000EEA4();
    swift_allocError();
    *v41 = v40;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v42 = 3;
LABEL_14:
    *(v41 + 32) = v42;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v43 = *(v30 + 32);
  atAddress[0] = 1;
  v44 = IOConnectCallScalarMethod(v43, 0, atAddress, 1u, 0, 0);
  if (v44)
  {
    v45 = v44;
    sub_10000EEA4();
    swift_allocError();
    *v41 = v45;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v42 = 4;
    goto LABEL_14;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10006D730(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10006D778()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10006DAC0(&qword_1000A4E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A0C8(&qword_1000A4E98, &qword_100079CD8);
  sub_10006DB08(&unk_1000A4EA0, &qword_1000A4E98, &qword_100079CD8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10006D850(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A0C8(&qword_1000A4EB8, &unk_100079CE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  (*(v5 + 16))(&v14[-v7], a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  *(a2 + 16) = sub_100002020;
  *(a2 + 24) = v10;
  sub_1000021A0(v11);
  return sub_10006D054();
}

uint64_t sub_10006DAC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006DB08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A738(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006DB5C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_10006DBBC()
{
  result = qword_1000A4EB0;
  if (!qword_1000A4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4EB0);
  }

  return result;
}

void sub_10006DC10(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10006DC84()
{
  if (*(v0 + 16))
  {
    AKSEventsUnregister();
  }

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10006DCE4@<X0>(uint64_t a1@<X8>)
{
  result = aks_get_extended_device_state();
  if (result)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002DB8(v3, qword_1000B1908);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "aks_get_extended_device_state failed", v6, 2u);
    }

    sub_10000EEA4();
    swift_allocError();
    *v7 = 5;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 22;
    return swift_willThrow();
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_10006DF4C()
{
  sub_10000A0C8(&qword_1000A4AC0, &qword_1000790E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076F90;
  *(v0 + 32) = os_variant_has_internal_diagnostics();
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001000840A0;
  *(v0 + 56) = 0xD000000000000041;
  *(v0 + 64) = 0x80000001000840C0;
  *(v0 + 72) = xmmword_100079D60;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 4;
  *(v0 + 112) = os_variant_has_internal_diagnostics();
  *(v0 + 120) = 0x616D6F4474736554;
  *(v0 + 128) = 0xEF656C6946206E69;
  *(v0 + 136) = 0xD00000000000003CLL;
  *(v0 + 144) = 0x8000000100084110;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 4;
  *(v0 + 192) = os_variant_has_internal_diagnostics();
  *(v0 + 200) = 0xD000000000000010;
  *(v0 + 208) = 0x8000000100084150;
  *(v0 + 216) = 0xD000000000000032;
  *(v0 + 224) = 0x8000000100084170;
  *(v0 + 232) = xmmword_100079D70;
  *(v0 + 248) = xmmword_100079D80;
  *(v0 + 264) = 4;
  *(v0 + 272) = os_variant_has_internal_diagnostics();
  *(v0 + 280) = 0xD00000000000001BLL;
  *(v0 + 288) = 0x80000001000841B0;
  *(v0 + 296) = 0xD000000000000032;
  *(v0 + 304) = 0x8000000100084170;
  *(v0 + 312) = 1;
  *(v0 + 320) = xmmword_100079D90;
  *(v0 + 336) = 0xED00005D392D305BLL;
  *(v0 + 344) = 4;
  v2 = v0;

  sub_100068550(&v2);

  qword_1000B1A80 = v2;
  return result;
}

uint64_t static_policy_lookup_path(uint64_t result, _WORD *a2, void *a3)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!*result)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = &(&aks_path_index)[3 * v6];
    v10 = *(v9 + 6);
    v11 = v9;
    if (v10 >= 0xC)
    {
      v11 = *v9;
    }

    v12 = strncmp((v3 + v5), v11, *(v9 + 6));
    if (v12 < 0)
    {
      v13 = 14;
      goto LABEL_17;
    }

    if (v12)
    {
      v13 = 16;
      goto LABEL_17;
    }

    v5 += v10;
    if (!*(v9 + 10))
    {
      if (!*(v3 + v5))
      {
        break;
      }

      goto LABEL_15;
    }

    if (*(v3 + v5) != 47)
    {
      if (!*(v3 + v5))
      {
        v4 = v6;
        v7 = v5;
        goto LABEL_19;
      }

LABEL_15:
      v13 = 18;
      goto LABEL_17;
    }

    v8 = 1;
    v13 = 18;
    v4 = v6;
    v7 = v5;
LABEL_17:
    v6 = *(v9 + v13);
  }

  while (*(v9 + v13));
  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  *a2 = v4;
  if (a3)
  {
    *a3 = v7;
  }

  return 1;
}

uint64_t domain_name_for_path(uint64_t a1)
{
  v3 = 0;
  v1 = static_policy_lookup_path(a1, &v3, 0);
  result = 0;
  if (v1)
  {
    return *(&aks_domain_names + *(&aks_path_index + 12 * v3 + 11));
  }

  return result;
}

const char *get_domain_name(char *__s2)
{
  v1 = 378;
  for (i = &aks_domain_names; ; ++i)
  {
    v4 = *i;
    if (!strcmp(*i, __s2))
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t domain_policy_applies_to_path(uint64_t a1, const char *a2, void *a3, _DWORD *a4, _DWORD *a5, BOOL *a6, _BYTE *a7)
{
  v26 = 0;
  v13 = static_policy_lookup_path(a1, &v26, 0);
  if (v13)
  {
    v25 = a4;
    v24 = &(&aks_path_index)[3 * v26];
    v14 = &aks_domain_policies + 16 * *(v24 + 10);
    v15 = *v14;
    if (*v14)
    {
      v22 = a6;
      v23 = a3;
      v16 = 0;
      v17 = 0;
      do
      {
        if (a2)
        {
          v18 = *(v14 + 4);
          if (*(v14 + 4))
          {
            do
            {
              if (!strcmp(a2, *v15))
              {
                v16 = *(v14 + 3);
                v17 = 1;
              }

              ++v15;
              --v18;
            }

            while (v18);
          }
        }

        v14 = &aks_domain_policies + 16 * *(v14 + 5);
        v15 = *v14;
      }

      while (*v14);
      v19 = *(v14 + 3);
      if (v17)
      {
        v20 = v16;
      }

      else
      {
        v20 = *(v14 + 3);
      }

      a6 = v22;
      a3 = v23;
    }

    else
    {
      v17 = 0;
      v19 = *(v14 + 3);
      v20 = v19;
    }

    *v25 = v20;
    if (a5)
    {
      *a5 = v19;
    }

    if (a7)
    {
      *a7 = v17 & 1;
    }

    if (a6)
    {
      *a6 = *(v24 + 11) != 0;
    }

    if (a3)
    {
      *a3 = *(&aks_domain_names + *(v24 + 11));
    }
  }

  return v13;
}

BOOL domain_policy_is_same_for_paths(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v11 = 0;
  v5 = static_policy_lookup_path(a1, &v11 + 1, 0);
  v6 = static_policy_lookup_path(a2, &v11, 0);
  result = 0;
  if (v5 && v6)
  {
    v8 = &(&aks_path_index)[3 * HIWORD(v11)];
    v9 = &(&aks_path_index)[3 * v11];
    if (a3)
    {
      v10 = *(v8 + 11);
      if (v10)
      {
        v10 = *(v9 + 11) != 0;
      }

      *a3 = v10;
    }

    return *(v8 + 10) == *(v9 + 10);
  }

  return result;
}

uint64_t ProtectionDomainMatch.domain.setter(__int128 *a1)
{
  sub_100005E9C(v1);

  return sub_100008FD8(a1, v1);
}

uint64_t ProtectionDomainMatch.path.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[7];
  v3 = v0[8];

  return v1;
}

uint64_t ProtectionDomainMatch.path.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[8];

  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return result;
}

uint64_t ProtectionDomainMatch.init(domain:path:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_100008FD8(a1, a6);
  a6[5] = a2;
  a6[6] = a3;
  a6[7] = a4;
  a6[8] = a5;
  return result;
}

uint64_t ProtectionDomain.name.getter(unint64_t a1)
{
  v2 = aks_domain_names_base;
  v3 = sub_100071150(378, 0);
  memcpy(v3 + 4, v2, 0xBD0uLL);
  v4 = aks_path_index_base;
  v5 = sub_1000711D4(567, 0);
  result = memcpy(v5 + 4, v4, 0x3528uLL);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5[2] <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = HIWORD(v5[3 * a1 + 6]);

  if (v3[2] <= v7)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = v3[v7 + 4];

  return String.init(cString:)();
}

void *sub_10006E804()
{
  v0 = aks_domain_names_base;
  v1 = sub_100071150(378, 0);
  memcpy(v1 + 4, v0, 0xBD0uLL);
  return v1;
}

void *sub_10006E874()
{
  v0 = aks_path_index_base;
  v1 = sub_1000711D4(567, 0);
  memcpy(v1 + 4, v0, 0x3528uLL);
  return v1;
}

void *ProtectionDomain.enabled.getter(unint64_t a1)
{
  v2 = aks_path_index_base;
  v3 = sub_1000711D4(567, 0);
  result = memcpy(v3 + 4, v2, 0x3528uLL);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3[2] > a1)
  {
    v5 = BYTE3(v3[3 * a1 + 5]);

    return (v5 != 0);
  }

  __break(1u);
  return result;
}

uint64_t ProtectionDomain.minimumProtectionClass.getter(unint64_t a1)
{
  v1 = ProtectionDomain.policies.getter(a1);
  if (!v1)
  {
    return 3;
  }

  v2 = v1;
  while (1)
  {
    v3 = aks_domain_policies_base;
    sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
    v4 = swift_allocObject();
    v5 = j__malloc_size(v4);
    v6 = v5 - 32;
    if (v5 < 32)
    {
      v6 = v5 - 17;
    }

    v4[2] = 329;
    v4[3] = 2 * (v6 >> 4);
    result = memcpy(v4 + 4, v3, 0x1490uLL);
    if (v2 >= 0x149)
    {
      __break(1u);
      __break(1u);
      return result;
    }

    v8 = WORD1(v4[2 * v2 + 5]);

    v9 = aks_domain_policies_base;
    sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = 329;
    v10[3] = 2 * (v12 >> 4);
    memcpy(v10 + 4, v9, 0x1490uLL);
    v13 = LOWORD(v10[2 * v2 + 5]);

    if (!v13)
    {
      break;
    }

    v2 = v8;
    if (!v8)
    {
      return 3;
    }
  }

  return ProtectionDomainPolicy.minimumProtectionClass.getter(v2);
}

void *ProtectionDomain.policies.getter(unint64_t a1)
{
  v2 = aks_path_index_base;
  v3 = sub_1000711D4(567, 0);
  result = memcpy(v3 + 4, v2, 0x3528uLL);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3[2] > a1)
  {
    v5 = WORD2(v3[3 * a1 + 6]);

    return v5;
  }

  __break(1u);
  return result;
}

libdomainpolicy::ProtectionDomainPolicy_optional __swiftcall ProtectionDomainPolicyIterator.next()()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_5;
  }

  v2 = aks_domain_policies_base;
  v3 = sub_1000710CC(329, 0);
  v4 = memcpy(v3 + 4, v2, 0x1490uLL);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= v3[2])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = WORD1(v3[2 * v1 + 5]);

  *v0 = v6;
LABEL_5:
  v5 = v1 == 0;
  v4 = v1;
LABEL_8:
  result.value.policyIndex = v4;
  result.is_nil = v5;
  return result;
}

uint64_t ProtectionDomainPolicy.minimumProtectionClass.getter(unint64_t a1)
{
  v2 = aks_domain_policies_base;
  v3 = sub_1000710CC(329, 0);
  result = memcpy(v3 + 4, v2, 0x1490uLL);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3[2] <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = HIDWORD(v3[2 * a1 + 5]);

  result = _s15libdomainpolicy15ProtectionClassO5valueACSgs6UInt32V_tcfC_0(v5);
  if (result == 9)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t ProtectionDomain.hasExceptions.getter(unint64_t a1)
{
  result = ProtectionDomain.policies.getter(a1);
  if (result)
  {
    v2 = result;
    while (1)
    {
      v3 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v4 = swift_allocObject();
      v5 = j__malloc_size(v4);
      v6 = v5 - 32;
      if (v5 < 32)
      {
        v6 = v5 - 17;
      }

      v4[2] = 329;
      v4[3] = 2 * (v6 >> 4);
      result = memcpy(v4 + 4, v3, 0x1490uLL);
      if (v2 >= 0x149)
      {
        break;
      }

      v7 = WORD1(v4[2 * v2 + 5]);

      v8 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 17;
      }

      v9[2] = 329;
      v9[3] = 2 * (v11 >> 4);
      memcpy(v9 + 4, v8, 0x1490uLL);
      v12 = LOWORD(v9[2 * v2 + 5]);

      result = v12 != 0;
      if (!v12)
      {
        v2 = v7;
        if (v7)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
    __break(1u);
  }

  return result;
}

libdomainpolicy::ProtectionClass __swiftcall ProtectionDomain.getMinimumProtectionClass(forProcess:)(Swift::String forProcess)
{
  object = forProcess._object;
  countAndFlagsBits = forProcess._countAndFlagsBits;
  v4 = ProtectionDomain.policies.getter(v1);
  if (v4)
  {
    v5 = v4;
    v6 = 3;
    while (1)
    {
      v7 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = 329;
      v8[3] = 2 * (v10 >> 4);
      LOBYTE(v11) = memcpy(v8 + 4, v7, 0x1490uLL);
      if (v5 >= 0x149)
      {
        __break(1u);
        __break(1u);
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return v11;
      }

      v38 = WORD1(v8[2 * v5 + 5]);

      v12 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v13 = swift_allocObject();
      v14 = j__malloc_size(v13);
      v15 = v14 - 32;
      if (v14 < 32)
      {
        v15 = v14 - 17;
      }

      v13[2] = 329;
      v13[3] = 2 * (v15 >> 4);
      memcpy(v13 + 4, v12, 0x1490uLL);
      v37 = v6;
      v16 = LOWORD(v13[2 * v5 + 5]);

      if (v16)
      {
        break;
      }

      v31 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v32 = swift_allocObject();
      v33 = j__malloc_size(v32);
      v34 = v33 - 32;
      if (v33 < 32)
      {
        v34 = v33 - 17;
      }

      v32[2] = 329;
      v32[3] = 2 * (v34 >> 4);
      memcpy(v32 + 4, v31, 0x1490uLL);
      v35 = HIDWORD(v32[2 * v5 + 5]);

      if ((v35 + 1) >= 9)
      {
        goto LABEL_38;
      }

      v6 = byte_10007A2EC[v35 + 1];
LABEL_28:
      v5 = v38;
      if (!v38)
      {
        goto LABEL_31;
      }
    }

    v17 = 0;
    while (1)
    {
      v18 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v19 = swift_allocObject();
      v20 = j__malloc_size(v19);
      v21 = v20 - 32;
      if (v20 < 32)
      {
        v21 = v20 - 17;
      }

      v19[2] = 329;
      v19[3] = 2 * (v21 >> 4);
      memcpy(v19 + 4, v18, 0x1490uLL);
      v22 = LOWORD(v19[2 * v5 + 5]);

      if (v17 >= v22)
      {
        v6 = v37;
        goto LABEL_28;
      }

      v23 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v24 = swift_allocObject();
      v25 = j__malloc_size(v24);
      v26 = v25 - 32;
      if (v25 < 32)
      {
        v26 = v25 - 17;
      }

      v24[2] = 329;
      v24[3] = 2 * (v26 >> 4);
      memcpy(v24 + 4, v23, 0x1490uLL);
      v27 = v24[2 * v5 + 4];

      v11 = *(v27 + 8 * v17);
      if (!v11)
      {
        goto LABEL_37;
      }

      if (String.init(cString:)() == countAndFlagsBits && v28 == object)
      {
        break;
      }

      ++v17;
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_33;
      }
    }

LABEL_33:

    LOBYTE(v11) = ProtectionDomainPolicy.minimumProtectionClass.getter(v5);
  }

  else
  {
    LOBYTE(v6) = 3;
LABEL_31:
    LOBYTE(v11) = v6;
  }

  return v11;
}

Swift::String_optional __swiftcall ProtectionDomainProcessIterator.next()()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 >= ProtectionDomainPolicy.processCount.getter(*v0))
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v3 = aks_domain_policies_base;
  v4 = sub_1000710CC(329, 0);
  v5 = memcpy(v4 + 4, v3, 0x1490uLL);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 >= v4[2])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v4[2 * v1 + 4];

  v5 = *(v7 + 8 * v2);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v0[1] = v2 + 1;
  v5 = String.init(cString:)();
LABEL_10:
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::Bool __swiftcall ProtectionDomain.allowed(_:forProcess:)(libdomainpolicy::ProtectionClass _, Swift::String forProcess)
{
  v2 = ProtectionDomain.getMinimumProtectionClass(forProcess:)(forProcess);

  return ProtectionClass.allowed(forMinimumProtection:)(v2);
}

Swift::Bool __swiftcall ProtectionClass.allowed(forMinimumProtection:)(libdomainpolicy::ProtectionClass forMinimumProtection)
{
  v2 = v1;
  if (v1 == 6)
  {
    goto LABEL_27;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return 1;
  }

  if (forMinimumProtection > libdomainpolicy_ProtectionClass_classC)
  {
    if (forMinimumProtection == libdomainpolicy_ProtectionClass_classD)
    {
      return 1;
    }

    if (forMinimumProtection == libdomainpolicy_ProtectionClass_classCX)
    {
      if (v2 != 1)
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v8)
        {
          return 1;
        }

        if (v2 != 2)
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 1;
          }

          if (v2 != 7)
          {
            goto LABEL_38;
          }
        }
      }

      goto LABEL_27;
    }

    return 0;
  }

  if (forMinimumProtection != libdomainpolicy_ProtectionClass_classA)
  {
    if (forMinimumProtection == libdomainpolicy_ProtectionClass_classC)
    {
      if (v2 != 1)
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {
          return 1;
        }

        if (v2 != 2)
        {
          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v9)
          {
            return 1;
          }

          if (v2 != 7)
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 1;
            }

            if (v2 > 3u || v2 <= 1u || v2 == 2)
            {
LABEL_38:
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              return v12 & 1;
            }
          }
        }
      }

LABEL_27:

      return 1;
    }

    return 0;
  }

  v6 = sub_1000613F8(v2, 1u);
  result = 1;
  if ((v6 & 1) == 0)
  {
    if (v2 > 3u || v2 != 2)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  return result;
}

char *ProtectionDomain.subdomains()(unint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A0C8(&qword_1000A85B0, &qword_100079DB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100076380;
  v7 = (inited + 16);
  v8 = aks_path_index_base;
  v9 = sub_1000711D4(567, 0);
  memcpy(v9 + 4, v8, 0x3528uLL);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v9[2] <= a1)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v10 = WORD1(v9[3 * a1 + 6]);

    *(inited + 32) = v10;
    *(inited + 40) = 0;
    *(inited + 48) = 0xE000000000000000;
    v11 = *(inited + 16);
    if (v11)
    {
      v61 = 567;
      v56 = v5;
      v57 = 13608;
      v62 = _swiftEmptyArrayStorage;
      while (1)
      {
        while (1)
        {
          v12 = v11 - 1;
          v13 = (inited + 32 + 24 * v12);
          v14 = *v13;
          v15 = v13[1];
          v16 = v13[2];
          *v7 = v12;
          if (v14)
          {
            break;
          }

          v11 = *v7;
          if (!*v7)
          {
            goto LABEL_33;
          }
        }

        v17 = v61;
        if (v61)
        {
          v18 = aks_path_index_base;
          sub_10000A0C8(&qword_1000A85B8, &qword_100079DC0);
          v19 = v57;
          v20 = swift_allocObject();
          v21 = j__malloc_size(v20);
          v20[2] = v17;
          v20[3] = 2 * ((v21 - 32) / 24);
          memcpy(v20 + 4, v18, v19);
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v20 = _swiftEmptyArrayStorage;
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }
        }

        if (v14 >= v20[2])
        {
          goto LABEL_36;
        }

        v22 = &v20[3 * v14];
        v23 = v22[4];
        v55 = *(v22 + 42);
        v24 = *(v22 + 20);
        v25 = *(v22 + 22);
        v59 = *(v22 + 23);
        v60 = *(v22 + 24);
        v54 = *(v22 + 25);
        LODWORD(v58) = *(v22 + 26);

        if (v25 < 0xC)
        {
          v63 = v23;
          v64 = v24;
          v65 = (v24 | (v55 << 16)) >> 16;
          *&v66 = &v63;
          *(&v66 + 1) = &v63 + v25;

          static String.Encoding.utf8.getter();
          result = String.init<A>(bytes:encoding:)();
          if (!v27)
          {
            __break(1u);
            return result;
          }
        }

        else
        {

          result = String.init(cString:)();
        }

        v28 = result;
        v29 = v27;
        *&v66 = v15;
        *(&v66 + 1) = v16;

        v30._countAndFlagsBits = v28;
        v30._object = v29;
        String.append(_:)(v30);

        v31 = v66;
        if (v58)
        {

          v32 = String.count.getter();

          v58 = sub_100071758(v32);
          v34 = v33;
          v36 = v35;
          v38 = v37;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_100070FA4(0, *(v62 + 2) + 1, 1, v62);
          }

          v40 = *(v62 + 2);
          v39 = *(v62 + 3);
          if (v40 >= v39 >> 1)
          {
            v62 = sub_100070FA4((v39 > 1), v40 + 1, 1, v62);
          }

          v41 = v62;
          *(v62 + 2) = v40 + 1;
          v42 = &v41[72 * v40];
          *(v42 + 4) = v14;
          *(v42 + 40) = v66;
          *(v42 + 7) = &type metadata for ProtectionDomain;
          *(v42 + 8) = &protocol witness table for ProtectionDomain;
          *(v42 + 9) = v58;
          *(v42 + 10) = v34;
          *(v42 + 11) = v36;
          *(v42 + 12) = v38;
        }

        else
        {

          v43 = *v7;
          v44 = *(inited + 24);

          if (v43 >= v44 >> 1)
          {
            inited = sub_100070E84((v44 > 1), v43 + 1, 1, inited);
          }

          *(inited + 16) = v43 + 1;
          v45 = inited + 24 * v43;
          *(v45 + 32) = v54;
          *(v45 + 40) = v31;
        }

        v46 = *(inited + 16);
        v47 = *(inited + 24);
        v48 = v47 >> 1;
        v49 = v46 + 1;

        if (v47 >> 1 <= v46)
        {
          inited = sub_100070E84((v47 > 1), v46 + 1, 1, inited);
          v47 = *(inited + 24);
          v48 = v47 >> 1;
        }

        *(inited + 16) = v49;
        v50 = inited + 24 * v46;
        *(v50 + 32) = v59;
        *(v50 + 40) = v31;
        v51 = v46 + 2;
        if (v48 < v51)
        {
          inited = sub_100070E84((v47 > 1), v51, 1, inited);
        }

        v52 = v60;
        *(inited + 16) = v51;
        v7 = (inited + 16);
        v53 = inited + 24 * v49;
        *(v53 + 32) = v52;
        *(v53 + 40) = v31;
        v11 = *(inited + 16);
        if (!v11)
        {
          goto LABEL_33;
        }
      }
    }
  }

  v62 = _swiftEmptyArrayStorage;
LABEL_33:

  return v62;
}

uint64_t sub_100070320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if ((a2 & 0xFFFC00000000uLL) > 0xB00000000)
  {
    return String.init(cString:)();
  }

  v8 = a1;
  v9 = a2;
  v10 = BYTE2(a2);
  v11 = &v8;
  v12 = &v8 + WORD2(a2);
  static String.Encoding.utf8.getter();
  result = String.init<A>(bytes:encoding:)();
  if (!v7)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10007045C(int a1, Swift::String forProcess)
{
  object = forProcess._object;
  forProcess._object = *v2;
  v4._countAndFlagsBits = forProcess._countAndFlagsBits;
  v4._object = object;
  v5 = ProtectionDomain.getMinimumProtectionClass(forProcess:)(v4);

  return ProtectionClass.allowed(forMinimumProtection:)(v5);
}

uint64_t ProtectionDomainIndex.find(_:)@<X0>(uint64_t a1@<X8>)
{
  v15 = 0;
  v14 = 0;
  v2 = String.utf8CString.getter();
  v3 = static_policy_lookup_path(v2 + 32, &v15, &v14);

  if (v3)
  {
    v5 = v15;
    *(a1 + 24) = &type metadata for ProtectionDomain;
    *(a1 + 32) = &protocol witness table for ProtectionDomain;
    *a1 = v5;
    v6 = v14;

    v7 = sub_100071758(v6);
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13;
  return result;
}

uint64_t ProtectionClass.analyticsCode.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v2 = a1;
    v3 = 2;
    if (a1 != 2)
    {
      v3 = 3;
    }

    if (a1)
    {
      v2 = 1;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (a1 == 6)
  {
    return 6;
  }

  else if (a1 == 7)
  {
    return 7;
  }

  else
  {
    return 127;
  }
}

uint64_t ProtectionClass.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7269447373616C63;
    v6 = 0x427373616C63;
    if (a1 != 2)
    {
      v6 = 0x437373616C63;
    }

    if (a1)
    {
      v5 = 0x417373616C63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x467373616C63;
    v2 = 0x58437373616C63;
    if (a1 != 7)
    {
      v2 = 0x6365746F72506F6ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x447373616C63;
    if (a1 != 4)
    {
      v3 = 0x457373616C63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1000707A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10003173C();
  return Hasher._finalize()();
}

Swift::Int sub_1000707F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10003173C();
  return Hasher._finalize()();
}

unint64_t sub_10007083C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10007086C@<X0>(uint64_t *a1@<X8>)
{
  result = ProtectionClass.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100070948()
{
  v0 = aks_domain_policies_base;
  v1 = sub_1000710CC(329, 0);
  memcpy(v1 + 4, v0, 0x1490uLL);
  return v1;
}

void *ProtectionDomainPolicy.processCount.getter(unint64_t a1)
{
  v2 = aks_domain_policies_base;
  v3 = sub_1000710CC(329, 0);
  result = memcpy(v3 + 4, v2, 0x1490uLL);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3[2] > a1)
  {
    v5 = LOWORD(v3[2 * a1 + 5]);

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_100070A70(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
LABEL_15:
    v7 = 0;
LABEL_19:
    *result = a4;
    return v7;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = result;
    v7 = 0;
    v8 = a3 - 1;
    while (1)
    {
      if (!a4)
      {
        goto LABEL_18;
      }

      v9 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 17;
      }

      v10[2] = 329;
      v10[3] = 2 * (v12 >> 4);
      result = memcpy(v10 + 4, v9, 0x1490uLL);
      if ((a4 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (a4 >= v10[2])
      {
        goto LABEL_20;
      }

      v13 = WORD1(v10[2 * a4 + 5]);

      *(a2 + 8 * v7) = a4;
      if (v8 == v7)
      {
        a4 = v13;
        v7 = a3;
LABEL_18:
        result = v14;
        goto LABEL_19;
      }

      ++v7;
      a4 = v13;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100070BD4(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (!a2)
  {
LABEL_18:
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
LABEL_22:
    *result = a4;
    result[1] = v5;
    return a3;
  }

  if (a3 < 0)
  {
LABEL_23:
    __break(1u);
  }

  else if ((a4 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v24 = result;
    v8 = 8 * a5;
    v9 = 1;
    v25 = a3;
    while (1)
    {
      v10 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 17;
      }

      v11[2] = 329;
      v11[3] = 2 * (v13 >> 4);
      result = memcpy(v11 + 4, v10, 0x1490uLL);
      if (a4 >= 329)
      {
        __break(1u);
        __break(1u);
        goto LABEL_23;
      }

      v14 = v5;
      v15 = v5 + v9 - 1;
      v16 = LOWORD(v11[2 * a4 + 5]);

      if (v15 >= v16)
      {
        a3 = v9 - 1;
        v5 = v9 - 1 + v14;
        goto LABEL_21;
      }

      v17 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v18 = swift_allocObject();
      v19 = j__malloc_size(v18);
      v20 = v19 - 32;
      if (v19 < 32)
      {
        v20 = v19 - 17;
      }

      v18[2] = 329;
      v18[3] = 2 * (v20 >> 4);
      memcpy(v18 + 4, v17, 0x1490uLL);
      v21 = v18[2 * a4 + 4];

      result = *(v21 + v8);
      if (!result)
      {
        goto LABEL_25;
      }

      result = String.init(cString:)();
      *v7 = result;
      v7[1] = v22;
      a3 = v25;
      v5 = v14;
      if (v25 == v9)
      {
        break;
      }

      v7 += 2;
      v8 += 8;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v5 = v14 + v9;
LABEL_21:
    result = v24;
    goto LABEL_22;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

libdomainpolicy::ProtectionDomainPolicy sub_100070E00@<X0>(uint64_t a1@<X8>)
{
  v3 = ProtectionDomainPolicyIterator.next()();
  *a1 = v3.value.policyIndex;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

__n128 sub_100070E40@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100070E5C@<X0>(Swift::String_optional *a1@<X8>)
{
  v3 = ProtectionDomainProcessIterator.next()();
  result = v3.value._countAndFlagsBits;
  *a1 = v3;
  return result;
}

char *sub_100070E84(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A0C8(&qword_1000A85B0, &qword_100079DB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100070FA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A0C8(&qword_1000A85F8, &qword_10007A288);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000710CC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100071150(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000A0C8(&qword_1000A8600, &unk_10007A290);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1000711D4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000A0C8(&qword_1000A85B8, &qword_100079DC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_100071264(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    for (i = &_swiftEmptyArrayStorage[4]; ; i += 2)
    {
      v7 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = 329;
      v8[3] = 2 * (v10 >> 4);
      result = memcpy(v8 + 4, v7, 0x1490uLL);
      if (v3 >= 329)
      {
        __break(1u);
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v11 = LOWORD(v8[2 * v3 + 5]);

      if (a2 >= v11)
      {
        break;
      }

      v12 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v13 = swift_allocObject();
      v14 = j__malloc_size(v13);
      v15 = v14 - 32;
      if (v14 < 32)
      {
        v15 = v14 - 17;
      }

      v13[2] = 329;
      v13[3] = 2 * (v15 >> 4);
      memcpy(v13 + 4, v12, 0x1490uLL);
      v16 = v13[2 * v3 + 4];

      result = *(v16 + 8 * a2);
      if (!result)
      {
        goto LABEL_34;
      }

      result = String.init(cString:)();
      if (!v4)
      {
        v18 = v5[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v32 = result;
        v33 = v17;
        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        sub_10000A0C8(&qword_1000A2B50, &qword_100075A20);
        v21 = swift_allocObject();
        v22 = j__malloc_size(v21);
        v23 = v22 - 32;
        if (v22 < 32)
        {
          v23 = v22 - 17;
        }

        v24 = v23 >> 4;
        v21[2] = v20;
        v21[3] = 2 * (v23 >> 4);
        v25 = (v21 + 4);
        v26 = v5[3] >> 1;
        if (v5[2])
        {
          v27 = v5 + 4;
          if (v21 != v5 || v25 >= v27 + 16 * v26)
          {
            memmove(v21 + 4, v27, 16 * v26);
          }

          v5[2] = 0;
        }

        i = (v25 + 16 * v26);
        v4 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;

        v5 = v21;
        result = v32;
        v17 = v33;
      }

      v28 = __OFSUB__(v4--, 1);
      if (v28)
      {
        goto LABEL_30;
      }

      *i = result;
      i[1] = v17;
      ++a2;
    }

    v29 = v5[3];
    if (v29 >= 2)
    {
      v30 = v29 >> 1;
      v28 = __OFSUB__(v30, v4);
      v31 = v30 - v4;
      if (v28)
      {
        goto LABEL_33;
      }

      v5[2] = v31;
    }

    return v5;
  }

  return result;
}

uint64_t sub_100071520(uint64_t result)
{
  v1 = _swiftEmptyArrayStorage;
  if (result)
  {
    v2 = result;
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage[4];
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v6 = aks_domain_policies_base;
      sub_10000A0C8(&qword_1000A85A8, &qword_100079DB0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = 329;
      v7[3] = 2 * (v9 >> 4);
      result = memcpy(v7 + 4, v6, 0x1490uLL);
      if ((v2 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v2 >= v7[2])
      {
        goto LABEL_29;
      }

      v10 = WORD1(v7[2 * v2 + 5]);

      if (!v3)
      {
        v11 = v5[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v12 = v1;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_10000A0C8(&qword_1000A85E8, &qword_10007A280);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 3);
        v19 = (v15 + 4);
        v20 = v5[3] >> 1;
        if (v5[2])
        {
          v21 = v5 + 4;
          if (v15 != v5 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v5[2] = 0;
        }

        v4 = (v19 + 8 * v20);
        v3 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v5 = v15;
        v1 = v12;
      }

      v22 = __OFSUB__(v3--, 1);
      if (v22)
      {
        goto LABEL_30;
      }

      *v4++ = v2;
      v2 = v10;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v3 = 0;
  v5 = _swiftEmptyArrayStorage;
LABEL_25:
  v23 = v5[3];
  if (v23 < 2)
  {
    return v5;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v3);
  v25 = v24 - v3;
  if (!v22)
  {
    v5[2] = v25;
    return v5;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t _s15libdomainpolicy15ProtectionClassO5valueACSgs6UInt32V_tcfC_0(int a1)
{
  if ((a1 + 1) > 8)
  {
    return 9;
  }

  else
  {
    return byte_10007A2EC[a1 + 1];
  }
}

uint64_t sub_100071758(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t sub_1000717F8()
{
  result = qword_1000A85C0;
  if (!qword_1000A85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A85C0);
  }

  return result;
}

unint64_t sub_100071850()
{
  result = qword_1000A85C8;
  if (!qword_1000A85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A85C8);
  }

  return result;
}

unint64_t sub_1000718A8()
{
  result = qword_1000A85D0;
  if (!qword_1000A85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A85D0);
  }

  return result;
}

uint64_t sub_1000718FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100071944(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ProtectionDomainProcessList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProtectionDomainProcessList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100071A6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100071AA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_100071AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_100071B38()
{
  result = qword_1000A85F0;
  if (!qword_1000A85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A85F0);
  }

  return result;
}

uint64_t sub_100071B8C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_100071BA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100071BC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 11) = v3;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}