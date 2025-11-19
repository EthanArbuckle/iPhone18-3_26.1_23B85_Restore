uint64_t sub_100001490()
{
  v0 = sub_10000408C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000403C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000241C(0, &qword_10000C0E0, &qword_10000C0E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100004670;
  v11 = sub_100003FEC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_100003FDC();
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_100002534(&qword_10000C0F0, &type metadata accessor for Assembly);
  *(v10 + 32) = v14;
  *(v10 + 96) = sub_1000041AC();
  *(v10 + 104) = sub_100002534(&qword_10000C0F8, &type metadata accessor for Assembly);
  sub_100002474((v10 + 72));
  sub_10000419C();
  sub_10000241C(0, &qword_10000C100, &qword_10000C108);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100004680;
  v16 = type metadata accessor for Assembly();
  v17 = swift_allocObject();
  *(v15 + 56) = v16;
  *(v15 + 64) = sub_100002534(&qword_10000C110, type metadata accessor for Assembly);
  *(v15 + 32) = v17;
  v18 = sub_10000405C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_10000404C();
  *v9 = [objc_allocWithZone(NSRecursiveLock) init];
  (*(v6 + 104))(v9, enum case for ContainerLock.lock(_:), v5);
  (*(v1 + 104))(v4, enum case for Container.Environment.normal(_:), v0);
  v21 = sub_1000040BC();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  result = sub_10000409C();
  qword_10000C0B0 = result;
  return result;
}

uint64_t sub_10000180C()
{
  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000040EC();
  sub_100002224(v0, qword_10000C1E0);
  v1 = sub_1000040CC();
  v2 = sub_10000428C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Handling request", v3, 2u);
  }

  sub_10000418C();
  sub_100002534(&qword_10000C0D0, &type metadata accessor for PeerHandler);
  return sub_10000413C();
}

uint64_t sub_100001964@<X0>(uint64_t a1@<X8>)
{
  sub_100002330(0, &qword_10000C0D8, &type metadata accessor for PeerHandler);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18[-1] - v4;
  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1000040EC();
  sub_100002224(v6, qword_10000C1E0);

  v7 = sub_1000040CC();
  v8 = sub_10000428C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    v11 = sub_1000040FC();
    v13 = sub_100002660(v11, v12, v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Accepted request %s", v9, 0xCu);
    sub_1000023D0(v10);
  }

  sub_1000040AC();
  sub_100002384(v18, v18[3]);
  v14 = sub_10000418C();

  sub_10000400C();

  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v5, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(a1, v5, v14);
    return sub_1000023D0(v18);
  }

  return result;
}

uint64_t sub_100001C10(void *a1)
{
  v1 = a1[4];
  sub_100002384(a1, a1[3]);
  sub_10000410C();
  return sub_100003FFC();
}

void sub_100001C84()
{
  v0 = *(*(sub_10000412C() - 8) + 64);
  __chkstk_darwin();
  sub_100002EB8(1uLL, 3);
  v1 = sub_1000031D0();
  v3 = v2;
  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000040EC();
  sub_100002224(v4, qword_10000C1E0);

  v5 = sub_1000040CC();
  v6 = sub_10000428C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100002660(v1, v3, v21);
    _os_log_impl(&_mh_execute_header, v5, v6, "Overriding $HOME path in XPC with: %s", v7, 0xCu);
    sub_1000023D0(v8);
  }

  v9 = sub_1000041FC();
  setenv("HOME", (v9 + 32), 1);

  v10 = sub_1000041FC();
  setenv("CFFIXED_USER_HOME", (v10 + 32), 1);

  v21[0] = 7368052;
  v21[1] = 0xE300000000000000;
  sub_10000424C();
  sub_10000420C();
  v11 = sub_1000041FC();

  setenv("TMPDIR", (v11 + 32), 1);

  v12 = sub_1000040CC();
  v13 = sub_10000428C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting XPCListener", v14, 2u);
  }

  if (qword_10000C0A8 != -1)
  {
    swift_once();
  }

  sub_10000416C();

  sub_10000411C();
  v15 = sub_10000415C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_10000414C();
  v18 = sub_1000040CC();
  v19 = sub_10000428C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting XPCListener dispatchMain", v20, 2u);
  }

  dispatch_main();
}

uint64_t sub_100002224(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000225C(uint64_t a1)
{
  sub_100002330(0, &qword_10000C0C0, sub_1000022D4);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000022D4()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

void sub_100002330(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10000429C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_100002384(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000023D0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_10000241C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1000024D8(255, a3);
    v4 = sub_1000042EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *sub_100002474(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000024D8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100002534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000257C()
{
  v0 = sub_1000040EC();
  sub_1000025EC(v0, qword_10000C1E0);
  sub_100002224(v0, qword_10000C1E0);
  return sub_1000040DC();
}

uint64_t *sub_1000025EC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002660(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000272C(v11, 0, 0, 1, a1, a2);
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
    sub_1000037F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000023D0(v11);
  return v7;
}

unint64_t sub_10000272C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002838(a5, a6);
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
    result = sub_1000042CC();
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

char *sub_100002838(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002884(a1, a2);
  sub_1000029B4(&off_100008598);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002884(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002AA0(v5, 0);
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

  result = sub_1000042CC();
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
        v10 = sub_10000423C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002AA0(v10, 0);
        result = sub_1000042AC();
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

uint64_t sub_1000029B4(uint64_t result)
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

  result = sub_100002B2C(result, v12, 1, v3);
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

void *sub_100002AA0(uint64_t a1, uint64_t a2)
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

  sub_100003854(0, &qword_10000C128, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002B2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003854(0, &qword_10000C128, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

uint64_t sub_100002C38()
{
  v0 = [objc_opt_self() currentPersona];
  if (!v0)
  {
    if (qword_10000C0B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1000040EC();
    sub_100002224(v7, qword_10000C1E0);
    v1 = sub_1000040CC();
    v8 = sub_10000428C();
    if (os_log_type_enabled(v1, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v1, v8, "Personas are not supported, using primary persona", v9, 2u);
    }

    goto LABEL_17;
  }

  v1 = v0;
  if (![v0 isDataSeparatedPersona])
  {
    if (qword_10000C0B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1000040EC();
    sub_100002224(v10, qword_10000C1E0);
    v11 = sub_1000040CC();
    v12 = sub_10000428C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Current user persona is not data-separated, using primary persona", v13, 2u);
    }

LABEL_17:
    v6 = 1;
    goto LABEL_18;
  }

  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000040EC();
  sub_100002224(v2, qword_10000C1E0);
  v3 = sub_1000040CC();
  v4 = sub_10000428C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Current user persona is data-separated, leaving query persona to be inferred by container manager", v5, 2u);
  }

  v6 = 0;
LABEL_18:

  return v6;
}

unint64_t sub_100002EB8(unint64_t a1, char a2)
{
  if (!container_query_create())
  {
    sub_1000037A0();
    swift_allocError();
    *v6 = 0xD000000000000020;
    v6[1] = 0x8000000100004B40;
    swift_willThrow();
    return a1;
  }

  v4 = qword_100004758[a2];
  container_query_set_class();
  if (sub_100002C38())
  {
    container_query_set_persona_unique_string();
  }

  container_query_operation_set_flags();
  if (!container_query_get_single_result())
  {
    if (qword_10000C0B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1000040EC();
    sub_100002224(v7, qword_10000C1E0);
    v8 = sub_1000040CC();
    v9 = sub_10000426C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "container_query_get_single_result() failure", v10, 2u);
    }

    container_query_get_last_error();
    if (container_error_copy_unlocalized_description())
    {
      sub_1000042BC(19);

      v11._countAndFlagsBits = sub_10000422C();
    }

    else
    {
      sub_1000042BC(19);

      sub_100003854(0, &qword_10000C130, &type metadata for OpaquePointer, &type metadata accessor for Optional);
      v11._countAndFlagsBits = sub_1000041EC();
    }

    sub_10000421C(v11);

    a1 = 0xD000000000000011;
    sub_1000037A0();
    swift_allocError();
    *v13 = 0xD000000000000011;
    v13[1] = 0x8000000100004B70;
    goto LABEL_17;
  }

  v5 = container_copy_object();
  if (!v5)
  {
    a1 = 0x8000000100004B90;
    sub_1000037A0();
    swift_allocError();
    *v12 = 0xD000000000000018;
    v12[1] = 0x8000000100004B90;
LABEL_17:
    swift_willThrow();
    container_query_free();
    return a1;
  }

  a1 = v5;
  container_query_free();
  return a1;
}

uint64_t sub_1000031D0()
{
  v0 = *(*(sub_1000041DC() - 8) + 64);
  __chkstk_darwin();
  if (!container_get_path() || !container_get_identifier() || (sub_1000041CC(), v1 = sub_1000041BC(), !v2))
  {
    v12 = 0x8000000100004A90;
    v13 = 0xD000000000000030;
LABEL_9:
    sub_1000037A0();
    swift_allocError();
    *v14 = v13;
    v14[1] = v12;
    return swift_willThrow();
  }

  v3 = v2;
  v27 = v1;
  v4 = sub_10000422C();
  v6 = v5;
  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v7 = sub_1000040EC();
  sub_100002224(v7, qword_10000C1E0);

  v8 = sub_1000040CC();
  v9 = sub_10000425C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_100002660(v4, v6, &v28);

    *(v10 + 4) = v11;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100002660(v27, v3, &v28);
    _os_log_impl(&_mh_execute_header, v8, v9, "Found container %s with path: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = container_copy_sandbox_token();
  if (!v16)
  {

    v12 = 0x8000000100004AD0;
    v13 = 0xD00000000000003ALL;
    goto LABEL_9;
  }

  v17 = v16;
  v18 = sub_1000040CC();
  v19 = sub_10000425C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    v30 = v17;
    sub_100003854(0, &qword_10000C120, &type metadata for Int8, &type metadata accessor for UnsafeMutablePointer);
    v22 = sub_1000041EC();
    v24 = sub_100002660(v22, v23, &v28);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "extensionToken: %s", v20, 0xCu);
    sub_1000023D0(v21);
  }

  v25 = sandbox_extension_consume();
  if (v25 < 0)
  {
    v26 = v25;

    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1000042BC(46);

    v28 = 0xD00000000000002CLL;
    v29 = 0x8000000100004B10;
    v30 = v26;
    v31._countAndFlagsBits = sub_1000042DC();
    sub_10000421C(v31);

    v13 = v28;
    v12 = v29;
    goto LABEL_9;
  }

  return v27;
}

unint64_t sub_1000037A0()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

uint64_t sub_1000037F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100003854(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_1000038A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000038B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000038F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003944(void *a1)
{
  v2 = a1[4];
  sub_100002384(a1, a1[3]);
  sub_10000410C();
  result = sub_10000401C();
  if (result)
  {
    v4 = a1[4];
    sub_100002384(a1, a1[3]);
    sub_100003F18();
    result = sub_10000402C();
    if (v5)
    {
      return sub_10000417C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003A08@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_100003F7C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  (__chkstk_darwin)();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003FAC();
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  result = sub_100003624();
  if (v14)
  {
    sub_100003F8C();

    v24 = 0x7972617262694CLL;
    v25 = 0xE700000000000000;
    v15 = enum case for URL.DirectoryHint.isDirectory(_:);
    v16 = v2[13];
    v16(v5, enum case for URL.DirectoryHint.isDirectory(_:), v1);
    sub_100003EC4();
    sub_100003F9C();
    v17 = v2[1];
    v17(v5, v1);
    v24 = 0x736568636143;
    v25 = 0xE600000000000000;
    v16(v5, v15, v1);
    sub_100003F9C();
    v17(v5, v1);
    v18 = *(v21 + 8);
    v19 = v22;
    v18(v10, v22);
    return (v18)(v12, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003C98@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for UserIdentitySource.cache(_:);
  v3 = sub_100003FBC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100003D44()
{
  sub_10000406C();
  sub_10000418C();
  sub_10000407C();

  sub_10000406C();
  sub_10000407C();

  sub_10000406C();
  sub_100003FAC();
  sub_100003FCC();
  sub_10000407C();

  sub_10000406C();
  sub_100003FBC();
  sub_10000407C();
}

unint64_t sub_100003EC4()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

unint64_t sub_100003F18()
{
  result = qword_10000C1D8;
  if (!qword_10000C1D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10000C1D8);
  }

  return result;
}