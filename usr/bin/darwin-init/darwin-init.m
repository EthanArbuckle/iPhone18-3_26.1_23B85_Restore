uint64_t sub_100001F40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return sub_100002C68();
}

uint64_t sub_100001FE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000020D4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10000218C;

  return sub_100002C68();
}

uint64_t sub_10000218C()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10000234C;
  }

  else
  {
    v4 = sub_1000022E8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000022E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000234C()
{

  v1 = *(v0 + 8);

  return v1();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_10000241C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000024D4;

  return sub_100002C68();
}

uint64_t sub_1000024D4()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100002668;
  }

  else
  {
    v4 = sub_100002630;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100002668()
{
  v1 = *(v0 + 40);

  return _swift_errorInMain(v1);
}

unint64_t sub_1000026C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000278C(v11, 0, 0, 1, a1, a2);
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
    sub_100003CA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003C3C(v11);
  return v7;
}

unint64_t sub_10000278C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002898(a5, a6);
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

char *sub_100002898(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000028E4(a1, a2);
  sub_100002A14(&off_100478CB8);
  return v3;
}

char *sub_1000028E4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002B00(v5, 0);
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
        v7 = sub_100002B00(v10, 0);
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

uint64_t sub_100002A14(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100002B74(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100002B00(uint64_t a1, uint64_t a2)
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

  sub_1000039E8(&qword_1004A6148);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002B74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004A6148);
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

uint64_t sub_100002C68()
{
  v1 = type metadata accessor for Logger();
  v0[30] = v1;
  v0[31] = *(v1 - 8);
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[35] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[36] = v3;
  v0[37] = v2;

  return _swift_task_switch(sub_100002D70, v3, v2);
}

uint64_t sub_100002D70()
{
  v40 = v0;
  v1 = *(v0 + 272);
  v2 = static CommandLine.arguments.getter();
  v3 = *(v2 + 16);
  *(v0 + 176) = v2;
  v4 = v0 + 16;
  *(v0 + 184) = v2 + 32;
  *(v0 + 192) = v3 != 0;
  *(v0 + 200) = (2 * v3) | 1;
  sub_1000039E8(&qword_1004A6110);
  sub_100003A30();
  v5 = BidirectionalCollection<>.joined(separator:)();
  v7 = v6;

  *(v0 + 304) = v5;
  *(v0 + 312) = v7;
  logger.getter(v1);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 272);
  v13 = *(v0 + 240);
  v12 = *(v0 + 248);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v36 = v11;
    v15 = swift_slowAlloc();
    v39[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000026C0(v5, v7, v39);
    _os_log_impl(&_mh_execute_header, v8, v9, "Running darwin-init %s", v14, 0xCu);
    sub_100003C3C(v15);

    v4 = v0 + 16;

    v16 = *(v12 + 8);
    v16(v36, v13);
  }

  else
  {

    v16 = *(v12 + 8);
    v16(v11, v13);
  }

  *(v0 + 320) = v16;
  *(v0 + 328) = type metadata accessor for DarwinInitCommand();
  sub_100003ADC(&qword_1004A6120);
  static ParsableCommand.parseAsRoot(_:)();
  sub_100003B20(v4, v0 + 96);
  sub_1000039E8(&qword_1004A6130);
  sub_1000039E8(&qword_1004A6138);
  if (swift_dynamicCast())
  {
    sub_100003C88((v0 + 136), v0 + 56);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    sub_100003BEC(v0 + 56, v17);
    v19 = swift_task_alloc();
    *(v0 + 336) = v19;
    *v19 = v0;
    v19[1] = sub_10000346C;

    return dispatch thunk of AsyncParsableCommand.run()(v17, v18);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    sub_100003B84(v0 + 136);
    sub_100003BEC(v4, *(v0 + 40));
    dispatch thunk of ParsableCommand.run()();
    v38 = v4;

    logger.getter(*(v0 + 264));

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 312);
    v24 = *(v0 + 320);
    if (v22)
    {
      v25 = *(v0 + 304);
      v37 = *(v0 + 264);
      v26 = *(v0 + 240);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[0] = v28;
      *v27 = 136315138;
      v29 = sub_1000026C0(v25, v23, v39);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Completed darwin-init %s", v27, 0xCu);
      sub_100003C3C(v28);

      v30 = v37;
      v31 = v26;
    }

    else
    {
      v32 = *(v0 + 264);
      v33 = *(v0 + 240);

      v30 = v32;
      v31 = v33;
    }

    v24(v30, v31);
    sub_100003C3C(v38);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_10000346C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_100003788;
  }

  else
  {
    v5 = sub_1000035A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000035A8()
{
  v17 = v0;

  sub_100003C3C((v0 + 7));
  logger.getter(v0[33]);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[39];
  v5 = v0[40];
  if (v3)
  {
    v6 = v0[38];
    v15 = v0[33];
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_1000026C0(v6, v4, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Completed darwin-init %s", v8, 0xCu);
    sub_100003C3C(v9);

    v11 = v15;
  }

  else
  {
    v12 = v0[33];
    v7 = v0[30];

    v11 = v12;
  }

  v5(v11, v7);
  sub_100003C3C((v0 + 2));

  v13 = v0[1];

  return v13();
}

uint64_t sub_100003788()
{
  v21 = v0;
  sub_100003C3C((v0 + 7));
  sub_100003C3C((v0 + 2));
  v1 = v0[43];
  logger.getter(v0[32]);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[39];
    v5 = v0[38];
    v18 = v0[32];
    v19 = v0[40];
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_1000026C0(v5, v4, &v20);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1000026C0(v9, v10, &v20);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed darwin-init %s: %s", v7, 0x16u);
    swift_arrayDestroy();

    v19(v18, v6);
  }

  else
  {
    v12 = v0[40];
    v13 = v0[32];
    v14 = v0[30];

    v12(v13, v14);
  }

  v15 = v0[41];
  swift_errorRetain();
  v16 = sub_100003ADC(&qword_1004A6128);

  return static ParsableArguments.exit(withError:)(v1, v15, v16);
}

uint64_t sub_1000039E8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003A30()
{
  result = qword_1004A6118;
  if (!qword_1004A6118)
  {
    sub_100003A94(&qword_1004A6110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6118);
  }

  return result;
}

uint64_t sub_100003A94(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003ADC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DarwinInitCommand();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003B20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003B84(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A6140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003BEC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100003C3C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100003C88(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100003CA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003D00()
{
  v0 = ccrng();
  sub_100008C14(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  sub_100008C14(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t sub_100003D70(uint64_t a1, unsigned int a2)
{
  v4 = sub_100009BCC();
  v5 = (*v4)(v4, a2, a1) == 0;

  return sub_100008C14(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t sub_100003DCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v43 = a1;
  v44 = a3;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  __chkstk_darwin(v14);
  v45 = &v36 - v15;
  bzero(&v36 - v15, v15);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  bzero(&v36 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v38 = &v36;
  v39 = a8;
  v40 = a6;
  v37 = a7;
  if (!a4)
  {
    v20 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v20 || !a8 || *a8 < a6 + 8)
    {
      sub_10035E01C(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v39 >= v40 + 8)
  {
LABEL_15:
    v21 = v40 >> 3;
    if (v40 >> 3 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 8;
    v24 = v22;
    do
    {
      v25 = *a5++;
      *(__s + v23) = v25;
      v23 += 16;
      --v24;
    }

    while (v24);
    v26 = 0;
    *&__s[0] = v44;
    v27 = 1;
    v41 = v21;
    v42 = v22;
    do
    {
      v43 = v27;
      v44 = v26;
      v28 = __s;
      v29 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &unk_1004E28B0, v28, v28, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          cccbc_clear_iv();
          sub_100008F78(v14, v45, v18, 0x10uLL);
        }

        v30 = *v28;
        v28 += 2;
        *&__s[v29 % v21] = v30 ^ bswap64(v27++);
        ++v29;
        --v22;
      }

      while (v22);
      v26 = v44 + 1;
      v22 = v42;
      v27 = v43 + v41;
    }

    while (v44 != 5);
    v31 = v37;
    *v37 = *&__s[0];
    v32 = v31 + 1;
    v33 = __s + 1;
    do
    {
      v34 = *v33;
      v33 += 2;
      *v32++ = v34;
      --v22;
    }

    while (v22);
    v19 = 0;
    *v39 = (v40 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_32:
    cc_clear();
    return v19;
  }

LABEL_6:
  sub_10035E01C(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000040CC(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_100003DCC(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_100008C14(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t sub_100004138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v39 = a3;
  v45 = a1;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  __chkstk_darwin();
  v46 = &v37 - v15;
  bzero(&v37 - v15, v15);
  __chkstk_darwin();
  v17 = &v37 - v16;
  bzero(&v37 - v16, v16);
  v18 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v44 = a6;
  v19 = a6 >> 3;
  if (v19 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v40 = &v37;
  v41 = a8;
  v38 = a7;
  if (!a4)
  {
    v20 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v20 || !a8 || *a8 < v44 - 8)
    {
      sub_10035E01C(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v41 >= v44 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v21 = v19 - 1;
    if (v19 != 1)
    {
      v22 = __s + 1;
      v23 = a5 + 1;
      v24 = v19 - 1;
      do
      {
        v25 = *v23++;
        *v22 = v25;
        v22 += 2;
        --v24;
      }

      while (v24);
    }

    v26 = 6 * v19 - 6;
    v43 = 1 - v19;
    v27 = 5;
    v42 = &__s[v19 - 2];
    do
    {
      LODWORD(v45) = v27;
      if (v44 >= 0x10)
      {
        v28 = v42;
        v29 = v19 - 1;
        v30 = v26;
        do
        {
          *v28 = *&__s[v29 % v21] ^ bswap64(v30);
          if (a4)
          {
            if ((a4(0, &unk_1004E28B0, v28, v28, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            cccbc_clear_iv();
            sub_100008F78(v14, v46, v17, 0x10uLL);
          }

          --v30;
          v28 -= 2;
          v31 = __OFSUB__(v29--, 1);
        }

        while (!((v29 < 0) ^ v31 | (v29 == 0)));
      }

      v27 = v45 - 1;
      v26 += v43;
    }

    while (v45);
    if (*&__s[0] == v39)
    {
      v32 = v38;
      if (v19 != 1)
      {
        v33 = __s + 1;
        v34 = v19 - 1;
        do
        {
          v35 = *v33;
          v33 += 2;
          *v32++ = v35;
          --v34;
        }

        while (v34);
      }

      v18 = 0;
      *v41 = 8 * v21;
    }

    else
    {
      v18 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v18;
    }

LABEL_34:
    cc_clear();
    return v18;
  }

LABEL_6:
  sub_10035E01C(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100004480(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_100004138(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_100008C14(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL sub_1000044EC(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL sub_100004500(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t sub_100004514(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t sub_100004530()
{
  if (qword_1004B1750 != -1)
  {
    sub_10035FB30();
  }

  dispatch_sync(qword_1004B1758, &stru_10047A2F8);
  return dword_1004B1740;
}

uint64_t sub_100004578(unsigned int a1, const void *a2)
{
  input = a1;
  v3 = sub_100004530();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x6Cu, &input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  sub_10035FB44();
  return 3758097084;
}

char *sub_100004610(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return sub_10035FBAC(result, a2, a3);
    }
  }

  return result;
}

char *sub_100004690(char *result, int a2)
{
  if (result)
  {
    v3 = result;
    bzero(v8, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v8);
    if (result)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 0x40000000;
      v6[2] = sub_1000047A8;
      v6[3] = &unk_10047A238;
      v7 = a2;
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = sub_10035E464;
      v4[3] = &unk_10047A258;
      v5 = a2;
      return sub_100004610(v8, v6, v4);
    }
  }

  return result;
}

uint64_t sub_1000047A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10035E408(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || v4 == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), v4);
  }

  return 1;
}

uint64_t sub_100004804()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", kCFAllocatorDefault, 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((byte_1004B1748 & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      byte_1004B1749 = 1;
    }

    byte_1004B1748 = 1;
  }

  v4 = byte_1004B1749;
  fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 438, "", v3, byte_1004B1749, "");
  return v3 | v4;
}

void sub_100004988(const char *a1, uint64_t a2, uint64_t a3)
{
  bzero(__str, 0x400uLL);
  memset(&v7, 0, sizeof(v7));
  if (a3)
  {
    v6 = a2 + 16;
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 16));
      if (stat(__str, &v7))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        sub_10035E408(__str);
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 48;
      --a3;
    }

    while (a3);
  }
}

uint64_t sub_100004AD0()
{
  puts("shared allow list:");
  v0 = &byte_100478DF8;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_1004794B8;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void sub_100004B94(const char *a1, char a2)
{
  if (a1)
  {
    bzero(&v13, 0x878uLL);
    bzero(v12, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v12))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = sub_10035F010;
      v11[3] = &unk_10047A2B8;
      v11[4] = v4;
      sub_100004610(v12, &stru_10047A298, v11);
      if (!statfs(v12, &v13))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", off_1004A6150[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }
}

uint64_t sub_100004E1C(unsigned int a1, uint64_t a2)
{
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  v2 = sub_100004530();
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  sub_10035FC68();
  return 3758097084;
}

uint64_t sub_100004EB8()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_10035FCD0();
  return 3758097084;
}

uint64_t sub_100004F10(unsigned int a1)
{
  v2 = sub_100004530();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x86u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_10035FD38();
    return 3758097084;
  }
}

void sub_100004FA8(id a1)
{
  if (!dword_1004B1740)
  {
    dword_1004B1740 = sub_100005280("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t sub_100004FE8()
{
  if (qword_1004B1750 != -1)
  {
    sub_10035FB30();
  }

  dispatch_sync(qword_1004B1758, &stru_10047A338);
  return dword_1004B1744;
}

void sub_100005030(id a1)
{
  if (!dword_1004B1744)
  {
    dword_1004B1744 = sub_100005280("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t sub_100005070(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_10000ABA8(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, &input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  return v11;
}

uint64_t sub_1000051A4(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_10000ABA8(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, &input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  return v9;
}

uint64_t sub_100005280(char *path, const char *a2)
{
  connect = 0;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3 || (v4 = v3, v5 = IOServiceOpen(v3, mach_task_self_, 0, &connect), IOObjectRelease(v4), v5))
  {
    v6 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      IOObjectRelease(v8);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t sub_1000053C8(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_1000053F4(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t sub_10000545C(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_100005520()
{
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_1000055A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_1000055D0(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return sub_100360378(a1, 1, &v4);
  }

  *a2 = 0;
  result = sub_100360378(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_10000562C()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100367EF4();
  return 3758097084;
}

uint64_t sub_100005684(int a1)
{
  v2 = sub_100004530();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x24u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100367F5C();
    return 3758097084;
  }
}

uint64_t sub_10000571C(int a1)
{
  v2 = sub_100004530();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x33u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100367FC4();
    return 3758097084;
  }
}

uint64_t sub_1000057B4(int a1)
{
  v2 = sub_100004530();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x35u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_10036802C();
    return 3758097084;
  }
}

uint64_t sub_100005870()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100368094();
  return 3758097084;
}

uint64_t sub_1000058D4(int a1)
{
  v2 = sub_100004530();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 4u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1003680FC();
    return 3758097084;
  }
}

uint64_t sub_10000596C(int a1)
{
  v2 = sub_100004530();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x37u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100368164();
    return 3758097084;
  }
}

uint64_t sub_100005A04(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  v22 = sub_100004530();
  if (v22)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(v22, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13)
    {
      if (!result)
      {
        *a13 = output;
      }
    }
  }

  else
  {
    sub_1003681CC();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100005C24(int a1)
{
  v2 = sub_100004530();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0xDu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100368234();
    return 3758097084;
  }
}

uint64_t sub_100005CBC(int a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = sub_100004530();
  if (v8)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(v8, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_10036829C();
    return 3758097084;
  }
}

uint64_t sub_100005D84(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  v10 = sub_100004530();
  if (v10)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    return IOConnectCallMethod(v10, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_100368304();
    return 3758097084;
  }
}

uint64_t sub_100005EB4(_OWORD *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  memset(&v12[16], 0, 112);
  *v12 = 0u;
  v6 = a1[1];
  *&v12[4] = *a1;
  *&v12[20] = v6;
  v7 = a1[3];
  *&v12[36] = a1[2];
  v13 = 0;
  *&v12[52] = v7;
  v10 = *a5;
  __s = 1;
  v8 = sub_100369BE4(&__s, 0, 0, a2, a3, a4, &v10);
  *a5 = v10;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  return sub_100008BF8(v8);
}

void sub_100005FA8(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = sub_10036A1EC();
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v9 = sub_10036A468();
      v10 = &kCFBooleanTrue;
      if (!v9)
      {
        v10 = &kCFBooleanFalse;
      }

      v11 = *v10;

      CFDictionaryAddValue(a1, a2, v11);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v12 = ccder_decode_tl();
      if (v12)
      {
        v8 = CFDataCreate(kCFAllocatorDefault, v12, valuePtr);
        CFDictionaryAddValue(a1, a2, v8);
        if (v8)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t sub_100006108(int a1, unsigned int a2, uint64_t a3)
{
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  v3 = sub_100004530();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_10036836C();
  return 3758097084;
}

uint64_t sub_10000619C(int a1, unsigned int a2)
{
  input[0] = a2;
  input[1] = a1;
  v2 = sub_100004530();
  if (v2)
  {
    return IOConnectCallMethod(v2, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_1003683D4();
  return 3758097084;
}

uint64_t sub_10000622C(int a1, unsigned int a2)
{
  v4 = sub_100004530();
  if (v4)
  {
    input[0] = a2;
    input[1] = a1;
    return IOConnectCallMethod(v4, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_10036843C();
    return 3758097084;
  }
}

uint64_t sub_1000062CC(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x91u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1003684A4();
  return 3758097084;
}

uint64_t sub_100006358(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x65u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_10036850C();
  return 3758097084;
}

uint64_t sub_1000063EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v22 = 0;
  v21 = 0;
  v11 = sub_100004530();
  if (v11)
  {
    v17 = v11;
    sub_10000ABA8(&v22, &v21, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v22;
    input[2] = v21;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v22;
  }

  else
  {
    sub_100368574();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  return v18;
}

uint64_t sub_100006518(int a1, unsigned int a2, _DWORD *a3)
{
  v6 = sub_100004530();
  if (v6)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(v6, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3)
    {
      if (!result)
      {
        *a3 = output;
      }
    }
  }

  else
  {
    sub_1003685DC();
    return 3758097084;
  }

  return result;
}

uint64_t sub_1000065E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return sub_100363B14(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_10000665C(mach_port_t a1, uintptr_t a2)
{
  v4 = sub_100004530();
  if (v4)
  {

    return IOConnectSetNotificationPort(v4, 0, a1, a2);
  }

  else
  {
    sub_100368644();
    return 3758097084;
  }
}

uint64_t sub_1000066D4(int a1)
{
  v2 = sub_100004530();
  if (v2)
  {
    input = a1;
    return IOConnectCallMethod(v2, 0x16u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1003686AC();
    return 3758097084;
  }
}

uint64_t sub_10000676C(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0xA2u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368714();
  return 3758097084;
}

uint64_t sub_100006804(int a1, const void *a2, size_t a3)
{
  input = a1;
  v5 = sub_100004530();
  if (v5)
  {
    return IOConnectCallMethod(v5, 0x3Au, &input, 1u, a2, a3, 0, 0, 0, 0);
  }

  sub_10036877C();
  return 3758097084;
}

uint64_t sub_1000068A0(int a1, int a2)
{
  input = a1;
  v3 = sub_100004530();
  if (v3)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    return IOConnectCallMethod(v3, v4, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    sub_1003687E4();
    return 3758097084;
  }
}

uint64_t sub_100006944(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x8Du, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_10036884C();
  return 3758097084;
}

uint64_t sub_1000069D0(int a1, uint64_t a2, int a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_100004530();
  if (v3)
  {
    return IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_1003688B4();
  return 3758097084;
}

uint64_t sub_100006A64(int a1, uint64_t a2, int a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_100004530();
  if (v3)
  {
    return IOConnectCallMethod(v3, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_10036891C();
  return 3758097084;
}

uint64_t sub_100006AFC(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return sub_100006A64(a2, a3, a4);
  }

  else
  {
    return sub_1000069D0(a2, a3, a4);
  }
}

uint64_t sub_100006B20()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100368984();
  return 3758097084;
}

uint64_t sub_100006B78(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  v12 = sub_100004530();
  if (v12)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    return IOConnectCallMethod(v12, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    sub_1003689EC();
    return 3758097084;
  }
}

uint64_t sub_100006C40(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x3Cu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368A54();
  return 3758097084;
}

uint64_t sub_100006CCC(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x47u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368ABC();
  return 3758097084;
}

uint64_t sub_100006D58(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x49u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368B24();
  return 3758097084;
}

uint64_t sub_100006DEC(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v5 = sub_100004530();
  if (v5)
  {
    return IOConnectCallMethod(v5, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368B8C();
  return 3758097084;
}

uint64_t sub_100006E90(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  v3 = sub_100004530();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368BF4();
  return 3758097084;
}

uint64_t sub_100006F20(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  v3 = sub_100004530();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368C5C();
  return 3758097084;
}

uint64_t sub_100006FB4(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return sub_100006F20(a2, a3, a4);
  }

  else
  {
    return sub_100006E90(a2, a3, a4);
  }
}

uint64_t sub_100006FD8(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  v4 = sub_100004530();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368CC4();
  return 3758097084;
}

uint64_t sub_1000070A4(int a1, const void *a2, size_t a3)
{
  input = a1;
  v5 = sub_100004530();
  if (v5)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    return IOConnectCallMethod(v5, 0x58u, &input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    sub_100368D2C();
    return 3758097084;
  }
}

uint64_t sub_100007144(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x5Bu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368D94();
  return 3758097084;
}

uint64_t sub_1000071D0(unsigned int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x5Eu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368DFC();
  return 3758097084;
}

uint64_t sub_10000725C(BOOL *a1)
{
  output = 0;
  outputCnt = 1;
  v2 = sub_100004530();
  if (v2)
  {
    result = IOConnectCallMethod(v2, 0x6Bu, 0, 0, 0, 0, &output, &outputCnt, 0, 0);
    if (a1)
    {
      if (!result)
      {
        *a1 = output != 0;
      }
    }
  }

  else
  {
    sub_100368E64();
    return 3758097084;
  }

  return result;
}

uint64_t sub_100007310()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100368ECC();
  return 3758097084;
}

uint64_t sub_100007368(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0xA0u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368F34();
  return 3758097084;
}

uint64_t sub_1000075EC(int a1)
{
  v1 = 8;
  if (a1)
  {
    v1 = 12;
  }

  v5 = v1;
  sub_10035EC00();
  v3 = v2;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v5, v2);
  return v3;
}

uint64_t sub_100007668()
{
  sub_10035EC00();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t sub_1000076C8()
{
  sub_10035EC00();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t sub_100007768(unsigned int a1)
{
  input[0] = 0;
  input[1] = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_100368F9C();
  return 3758097084;
}

uint64_t sub_1000077F4(int a1)
{
  input[0] = 1;
  input[1] = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  sub_100369004();
  return 3758097084;
}

uint64_t sub_100007884()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_10036906C();
  return 3758097084;
}

uint64_t sub_1000078DC()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1003690D4();
  return 3758097084;
}

uint64_t sub_100007934(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x6Au, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_10036913C();
  return 3758097084;
}

uint64_t sub_1000079C0(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x9Cu, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1003691A4();
  return 3758097084;
}

uint64_t sub_100007A70()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_10036920C();
  return 3758097084;
}

uint64_t sub_100007AC8(const void *a1, size_t a2)
{
  v4 = sub_100004530();
  if (v4)
  {
    return IOConnectCallMethod(v4, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  sub_100369274();
  return 3758097084;
}

uint64_t sub_100007B30()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_1003692DC();
  return 3758097084;
}

uint64_t sub_100007B88(int a1, uint64_t a2, uint64_t a3)
{
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  v3 = sub_100004530();
  if (v3)
  {
    return IOConnectCallMethod(v3, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  sub_100369344();
  return 3758097084;
}

uint64_t sub_100007C18(int a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x8Au, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_1003693AC();
  return 3758097084;
}

uint64_t sub_100007CA4()
{
  v0 = sub_100004530();
  if (v0)
  {
    return IOConnectCallMethod(v0, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  sub_100369414();
  return 3758097084;
}

uint64_t sub_100007CFC(uint64_t a1)
{
  input = a1;
  v1 = sub_100004530();
  if (v1)
  {
    return IOConnectCallMethod(v1, 0x97u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  sub_10036947C();
  return 3758097084;
}

uint64_t sub_100007DA4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

void sub_100007DF4()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t sub_100007E68(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_100007E94(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_100007EB4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t sub_100007F10(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void sub_100007F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  bzero(va, 0x8000uLL);
}

uint64_t sub_100007F8C(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_100007FB4(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void sub_100007FD8(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t sub_1000080B8(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t sub_1000081B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *sub_100008200(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, char __src)
{

  return memcpy(a1, &__src, __n);
}

void sub_100008218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  bzero(va, 0x1000uLL);
}

const char *sub_10000827C(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&byte_1004B1760, 0x20uLL, __format, va);
  }

  byte_1004B1760 = 0;
  return __format;
}

uint64_t sub_1000082D0()
{
  ccsha256_di();
  ccdigest();
  return 0;
}

unint64_t sub_100008344(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t sub_100008390(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t sub_1000083D0()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t sub_100008424()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *sub_100008488(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    sub_10036983C();
    return 0;
  }

  return v5;
}

uint64_t sub_100008504(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t sub_100008520(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t sub_10000858C(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t sub_10000861C(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t sub_100008668(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t sub_100008798(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void sub_1000087B8(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL sub_10000883C(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL sub_100008880(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *sub_1000088AC(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t sub_1000088F4(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t sub_100008944(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v5 = &__stdoutp;
  if (a3 >= 0x41)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 844, "", "", a1, a3, "", "");
    v4 = "";
  }

  else if (!a3)
  {
    return memset_s(__str, 0x81uLL, 0, 0x81uLL);
  }

  v6 = 0;
  v15 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 854, "", "", v4, "", v6, v8 + v6, "", __str, "", "");
    v6 += v8;
    v3 = v15;
  }

  while (v6 < v15);
  return memset_s(__str, 0x81uLL, 0, 0x81uLL);
}

_BYTE *sub_100008B34(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = byte_1004B1780;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  byte_1004B1780[2 * v2] = 0;
  return byte_1004B1780;
}

char *sub_100008BC8(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100008BF8(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_100376120[(result + 38)];
  }

  return result;
}

uint64_t sub_100008C14(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", "", -1, "", "", "", "", "REQUIRE_func", ":", 1134, "", a3, a2, "");
    abort();
  }

  return result;
}

uint64_t sub_100008C8C(__int128 *a1, __int128 *a2)
{
  memset(v15, 0, sizeof(v15));
  sub_100009C84(v15, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  sub_100008C14(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v9 = 0u;
  v10 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v11 = *a2;
  v12 = v5;
  v6 = a1[1];
  v13 = *a1;
  v14 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v15, 0x20uLL, 0, 0x20uLL);
  return 0;
}

uint64_t sub_100008D90(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v8 = 0u;
  v7 = 0u;
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v4 = a3[1];
  v11 = *a3;
  __s = 0x1000000;
  v12 = v4;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  return 0;
}

uint64_t sub_100008E50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _cchkdf(a1, 32, a3, 0, 0, v4, v3, 32);
}

uint64_t sub_100008EB0()
{

  return sub_100008D90(v0, v1 + 8, (v1 + 40));
}

uint64_t sub_100008FB8(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = sub_1000090BC(*(*(a5 + 24) + v9), *(*(a5 + 24) + v9) + *(*(*(a5 + 24) + v9) + 1) + 2, a1);
      if (v11)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v10 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v14 = (*(a5 + 24) + v9);
    if (v14[1])
    {
      v12 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v14[1] = a3;
      v14[2] = a3 + a4;
      v14[3] = a3;
      v14[4] = a3 + a4;
      v12 = 1;
    }

LABEL_10:
    v13 = v12 | !v11;
  }

  return v13 & 1;
}

BOOL sub_100009128(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000090BC(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t sub_100009190(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t sub_100009210(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = sub_1000092AC(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *sub_1000092AC(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && sub_1000090BC(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t sub_100009338(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  v8 = sub_1000092AC(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = v8[1] + v8[2];
      v15[0] = v8[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (sub_10036A4B8(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_100009418(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_100009338(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_10036A1EC();
  }

  return v5;
}

uint64_t sub_100009478(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  v4 = sub_100009338(a1, a2, 1, &v7, &v8);
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = sub_10036A468();
  }

  return v5;
}

uint64_t sub_1000094D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (ccder_blob_decode_tl())
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 12;
    v7[1] = 0;
    __memcpy_chk();
    if (!sub_100009210(a5, v7) && !sub_10036A838())
    {
      return 1;
    }
  }

  else
  {
    sub_10036CD44();
  }

  sub_10036CDAC();
  return 0;
}

uint64_t sub_100009638(__int128 *a1, int a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = sub_10036B204(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    *(a3 + 8) = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t sub_1000096E4(__int128 *a1)
{
  v4 = *a1;
  v2 = ccder_blob_decode_range();
  if (v2)
  {
    *a1 = v4;
  }

  return v2;
}

uint64_t sub_10000976C()
{
  ccder_sizeof_implicit_raw_octet_string();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t sub_10000983C(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t sub_10000988C()
{

  return ccder_blob_encode_body();
}

uint64_t sub_100009900()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t sub_100009920()
{

  return ccder_blob_encode_tl();
}

uint64_t sub_100009980(uint64_t a1, ...)
{
  va_start(va2, a1);
  va_start(va1, a1);
  va_start(va, a1);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v3 = 0;
  v5 = 0;

  return sub_10036A668(va2, va, va1);
}

uint64_t sub_1000099A0(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t sub_1000099F0()
{

  return ccder_sizeof();
}

void *sub_100009A0C()
{

  return calloc(0x18uLL, 1uLL);
}

void *sub_100009A24(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t sub_100009A74()
{

  return ccder_blob_decode_range();
}

uint64_t sub_100009A94()
{

  return sub_10036A038();
}

uint64_t sub_100009BCC()
{
  sub_100008C14(&off_100478D50 != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(sub_100003D00 != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_100003D00();
}

uint64_t sub_100009C84(uint64_t a1, unsigned int a2)
{
  sub_100008C14(&off_100478D50 != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(sub_100003D70 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_100003D70(a1, a2);
}

uint64_t sub_100009D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100008C14(&off_100478D50 != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100009E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100008C14(&off_100478D50 != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_100009F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100008C14(&off_100478D50 != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10000A0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_100008C14(&off_100478D50 != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_10000A1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_100008C14(&off_100478D50 != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_10000A31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100008C14(&off_100478D50 != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2, a3, a4, a5);
}

uint64_t sub_10000A414()
{
  sub_100008C14(&off_100478D50 != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0]();
}

uint64_t sub_10000A4CC(uint64_t a1, uint64_t a2)
{
  sub_100008C14(&off_100478D50 != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1, a2);
}

uint64_t sub_10000A59C(uint64_t a1)
{
  sub_100008C14(&off_100478D50 != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10000A664(uint64_t a1)
{
  sub_100008C14(&off_100478D50 != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10000A72C(uint64_t a1)
{
  sub_100008C14(&off_100478D50 != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10000A7F4(uint64_t a1)
{
  sub_100008C14(&off_100478D50 != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10000A8BC(uint64_t a1)
{
  sub_100008C14(&off_100478D50 != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10000A984(uint64_t a1)
{
  sub_100008C14(&off_100478D50 != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

uint64_t sub_10000AA4C(uint64_t a1)
{
  sub_100008C14(&off_100478D50 != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_100008C14(0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return MEMORY[0](a1);
}

char *sub_10000AB20(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *sub_10000ABA8(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = sub_10000AB20(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

uint64_t sub_10000AC88()
{
  sub_1000039E8(&qword_1004A6B08);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100376250;
  v2 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic21CryptexArchivePointer_fields);
  v3 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_train);
  v4 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_train + 8);

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  *(v1 + 32) = 0x3D6E69617274;
  *(v1 + 40) = 0xE600000000000000;
  v6 = (*(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_update) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_identifier);
  v7 = *v6;
  v8 = v6[1];

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  *(v1 + 48) = 0x3D657461647075;
  *(v1 + 56) = 0xE700000000000000;
  v10 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_imageName + 8);
  if (v10)
  {
    v11 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_imageName);
    sub_10000B080();

    if (StringProtocol.contains<A>(_:)())
    {
      v12._countAndFlagsBits = v11;
      v12._object = v10;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 34;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);

      v11 = 34;
      v10 = 0xE100000000000000;
    }
  }

  else
  {
    v11 = 0x3E656E6F6E3CLL;
    v10 = 0xE600000000000000;
  }

  v14._countAndFlagsBits = v11;
  v14._object = v10;
  String.append(_:)(v14);

  *(v1 + 64) = 0x6D614E6567616D69;
  *(v1 + 72) = 0xEA00000000003D65;
  v16 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_variant);
  v15 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_variant + 8);
  sub_10000B080();

  if (StringProtocol.contains<A>(_:)())
  {
    v17._countAndFlagsBits = v16;
    v17._object = v15;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 34;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);

    v16 = 34;
    v15 = 0xE100000000000000;
  }

  v19._countAndFlagsBits = v16;
  v19._object = v15;
  String.append(_:)(v19);

  *(v1 + 80) = 0x3D746E6169726176;
  *(v1 + 88) = 0xE800000000000000;
  v20 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_device);
  v21 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_device + 8);

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  String.append(_:)(v22);

  *(v1 + 96) = 0x3D656369766564;
  *(v1 + 104) = 0xE700000000000000;
  v23 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_partNumber + 8);
  if (v23)
  {
    v24 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_partNumber);
  }

  else
  {
    v24 = 0x3E656E6F6E3CLL;
  }

  if (v23)
  {
    v25 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_partNumber + 8);
  }

  else
  {
    v25 = 0xE600000000000000;
  }

  v26._countAndFlagsBits = v24;
  v26._object = v25;
  String.append(_:)(v26);

  *(v1 + 112) = 0x626D754E74726170;
  *(v1 + 120) = 0xEB000000003D7265;
  sub_1000039E8(&qword_1004A6B48);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

unint64_t sub_10000B080()
{
  result = qword_1004A6B30;
  if (!qword_1004A6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6B30);
  }

  return result;
}

uint64_t sub_10000B0D4()
{
  sub_1000039E8(&qword_1004A6B08);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100376260;
  v2 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic21CryptexArchivePointer_fields);
  v3 = (*(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_update) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_identifier);
  v4 = v3[1];
  *(v1 + 32) = *v3;
  *(v1 + 40) = v4;
  v5 = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_variant + 8);
  *(v1 + 48) = *(v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_variant);
  *(v1 + 56) = v5;
  v6 = (v2 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_device);
  v7 = v6[1];
  *(v1 + 64) = *v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name);
  v9 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name + 8);
  *(v1 + 80) = v8;
  *(v1 + 88) = v9;

  sub_1000039E8(&qword_1004A6B48);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
  BidirectionalCollection<>.joined(separator:)();

  sub_10000B080();
  v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v10;
}

char *sub_10000B2D0()
{
  v15 = &_swiftEmptyArrayStorage;
  sub_10000DFF4(0, 6, 0);
  v0 = 0;
  v1 = &_swiftEmptyArrayStorage;
  v2 = 0x656369766564;
  do
  {
    v3 = *(&off_10047A4A0 + v0 + 32);
    if (v3 == 4)
    {
      v4 = 0x616E2D6567616D69;
    }

    else
    {
      v4 = 0x6D756E2D74726170;
    }

    if (v3 == 4)
    {
      v5 = 0xEA0000000000656DLL;
    }

    else
    {
      v5 = 0xEB00000000726562;
    }

    if (v3 == 3)
    {
      v4 = 0x6E69617274;
      v5 = 0xE500000000000000;
    }

    if (v3 == 1)
    {
      v6 = 0x746E6169726176;
    }

    else
    {
      v6 = 0x657461647075;
    }

    if (v3 == 1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (!*(&off_10047A4A0 + v0 + 32))
    {
      v6 = v2;
      v7 = 0xE600000000000000;
    }

    if (*(&off_10047A4A0 + v0 + 32) <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    if (*(&off_10047A4A0 + v0 + 32) <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    v15 = v1;
    v11 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v11 >= v10 >> 1)
    {
      v13 = v2;
      sub_10000DFF4((v10 > 1), v11 + 1, 1);
      v2 = v13;
      v1 = v15;
    }

    ++v0;
    *(v1 + 2) = v11 + 1;
    v12 = &v1[16 * v11];
    *(v12 + 4) = v8;
    *(v12 + 5) = v9;
  }

  while (v0 != 6);
  v15 = v1;

  sub_10000BD08(&v15);

  return v15;
}

uint64_t sub_10000B4E8(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v46 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v44 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Array.count.getter();
  if (result >= 2)
  {
    v39 = v5;
    v40 = v3;
    v41 = v2;
    v13 = _arrayConditionalCast<A, B>(_:)();
    if (v13)
    {
      v47 = v13;
      type metadata accessor for Array();
      swift_getWitnessTable();
      swift_getWitnessTable();
      MutableCollection<>.sort(by:)();
      v14 = _arrayConditionalCast<A, B>(_:)();

      if (v14)
      {

        *a1 = v14;
        return result;
      }

      v35 = 0x80000001004295D0;
      v36 = 0x80000001004295F0;
      v37 = 0x80000001004296A0;
      v38 = type metadata accessor for KnoxServiceClient.ClientError();
      v18 = swift_allocObject();
      sub_10000E014();
      v34 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v49 = &_swiftEmptyArrayStorage;
      sub_10000E060(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v42 + 104))(v46, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
      v27 = v39;
      v26 = v40;
      v28 = v41;
      (*(v40 + 104))(v39, enum case for DispatchQoS.QoSClass.default(_:), v41);
      static OS_dispatch_queue.global(qos:)();
      (*(v26 + 8))(v27, v28);
      v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v30 = v35;
      *(v18 + 16) = 0xD000000000000010;
      *(v18 + 24) = v30;
      *(v18 + 32) = 0xD000000000000071;
      v31 = v36;
      *(v18 + 56) = 14;
      *(v18 + 40) = v31;
      *(v18 + 48) = 87;
      *(v18 + 64) = 0xD000000000000034;
      *(v18 + 72) = v37;
      *(v18 + 80) = 0;
      *(v18 + 88) = v29;
      sub_10000E060(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
    }

    else
    {
      v37 = 0x80000001004295D0;
      v38 = 0x80000001004295F0;
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v47 = 0x6465746365707845;
      v48 = 0xE900000000000020;
      v15._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 0x737463656A626F20;
      v16._object = 0xEE0020746F67202CLL;
      String.append(_:)(v16);
      v17._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v17);

      v34 = v48;
      v35 = v47;
      v36 = type metadata accessor for KnoxServiceClient.ClientError();
      v18 = swift_allocObject();
      sub_10000E014();
      v33 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v47 = &_swiftEmptyArrayStorage;
      sub_10000E060(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v42 + 104))(v46, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
      v20 = v39;
      v19 = v40;
      v21 = v41;
      (*(v40 + 104))(v39, enum case for DispatchQoS.QoSClass.default(_:), v41);
      static OS_dispatch_queue.global(qos:)();
      (*(v19 + 8))(v20, v21);
      v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v23 = v37;
      *(v18 + 16) = 0xD000000000000010;
      *(v18 + 24) = v23;
      *(v18 + 32) = 0xD000000000000071;
      v24 = v38;
      *(v18 + 56) = 4;
      *(v18 + 40) = v24;
      *(v18 + 48) = 75;
      v25 = v34;
      *(v18 + 64) = v35;
      *(v18 + 72) = v25;
      *(v18 + 80) = 0;
      *(v18 + 88) = v22;
      sub_10000E060(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
    }

    swift_allocError();
    *v32 = v18;
    return swift_willThrow();
  }

  return result;
}

Swift::Int sub_10000BD08(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100078A5C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10000D628(v5);
  *a1 = v2;
  return result;
}

void *CryptexArchivePointer.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A6B80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - v7;
  v9 = sub_10000E2A8(a1, a1[3]);
  sub_10000E2EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for CryptexArchivePointer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CryptexArchivePointer.Fields();
    sub_10000E060(&qword_1004A6B90, v10, type metadata accessor for CryptexArchivePointer.Fields);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + OBJC_IVAR____TtC16KnoxClientPublic21CryptexArchivePointer_fields) = v15[0];
    sub_100003B20(a1, v15);
    sub_100003B20(v15, v14);
    sub_100003B20(v14, v13);
    v9 = KnoxPointer.init(from:)(v13);
    sub_100003C3C(v14);
    sub_100003C3C(v15);
    (*(v6 + 8))(v8, v5);
    sub_100003C3C(a1);
  }

  return v9;
}

uint64_t sub_10000C03C(void *a1)
{
  v4 = sub_1000039E8(&qword_1004A6B98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_10000E2A8(a1, a1[3]);
  sub_10000E2EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic21CryptexArchivePointer_fields);
  type metadata accessor for CryptexArchivePointer.Fields();
  sub_10000E060(&qword_1004A6BA0, v8, type metadata accessor for CryptexArchivePointer.Fields);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_1000AFCE0(a1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CryptexArchivePointer.Fields.variant.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_variant);

  return v1;
}

uint64_t CryptexArchivePointer.Fields.device.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_device);

  return v1;
}

uint64_t CryptexArchivePointer.Fields.train.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_train);

  return v1;
}

uint64_t CryptexArchivePointer.Fields.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_imageName);

  return v1;
}

uint64_t CryptexArchivePointer.Fields.partNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_partNumber);

  return v1;
}

char *CryptexArchivePointer.Fields.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A6BA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10000E3B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for CryptexArchivePointer.Fields();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_variant];
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v25) = 0;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_device];
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v25) = 3;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_train];
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v25) = 2;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v20;
    v22 = objc_allocWithZone(type metadata accessor for KnoxUpdate());
    *&v3[OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_update] = KnoxUpdate.init(identifier:)(v19, v21);
    sub_1000039E8(&qword_1004A7330);
    v26 = 4;
    sub_10000E404();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v3[OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_imageName] = v25;
    v26 = 5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v3[OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_partNumber] = v25;
    v23 = type metadata accessor for CryptexArchivePointer.Fields();
    v24.receiver = v3;
    v24.super_class = v23;
    v3 = objc_msgSendSuper2(&v24, "init");
    (*(v6 + 8))(v8, v5);
    sub_100003C3C(a1);
  }

  return v3;
}

uint64_t sub_10000C778()
{
  String.hash(into:)();
}

unint64_t sub_10000C870@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E870(*a1);
  *a2 = result;
  return result;
}

void sub_10000C8A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656369766564;
  v5 = 0xE500000000000000;
  v6 = 0x6E69617274;
  v7 = 0xEA0000000000656DLL;
  v8 = 0x616E2D6567616D69;
  if (v2 != 4)
  {
    v8 = 0x6D756E2D74726170;
    v7 = 0xEB00000000726562;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x746E6169726176;
  if (v2 != 1)
  {
    v10 = 0x657461647075;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10000C960()
{
  v1 = *v0;
  v2 = 0x656369766564;
  v3 = 0x6E69617274;
  v4 = 0x616E2D6567616D69;
  if (v1 != 4)
  {
    v4 = 0x6D756E2D74726170;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E6169726176;
  if (v1 != 1)
  {
    v5 = 0x657461647075;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10000CA1C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E870(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000CA6C(uint64_t a1)
{
  v2 = sub_10000E3B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000CAA8(uint64_t a1)
{
  v2 = sub_10000E3B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

id OIDCToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_10000CC30(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A6BC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_10000E3B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_update);
    v10[15] = 2;
    type metadata accessor for KnoxUpdate();
    sub_10000E060(&qword_1004A6BD0, 255, type metadata accessor for KnoxUpdate);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[12] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

char *sub_10000CEF0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for CryptexArchivePointer.Fields());
  result = CryptexArchivePointer.Fields.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_10000CFC4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_10000D00C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_10000D0CC()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10000D150(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_10000D1A8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000D1E4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000D238()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10000D2B4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000D32C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D3AC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000D3F0()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10000D468()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10000D4F0@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000D538@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D564(uint64_t a1)
{
  v2 = sub_10000E060(&qword_1004A6CC0, 255, type metadata accessor for FileAttributeKey);
  v3 = sub_10000E060(&qword_1004A6CC8, 255, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

Swift::Int sub_10000D628(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10000D7F0(v7, v8, a1, v4);
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
    return sub_10000D720(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000D720(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000D7F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100078454(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10000DDCC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100011948(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100011948((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10000DDCC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100078454(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000783C8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10000DDCC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_10000DFF4(char *a1, int64_t a2, char a3)
{
  result = sub_100078468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_10000E014()
{
  result = qword_1004A7840;
  if (!qword_1004A7840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A7840);
  }

  return result;
}

uint64_t sub_10000E060(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_10000E0A8(size_t a1, int64_t a2, char a3)
{
  result = sub_100078574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000E0C8(void *a1, uint64_t *a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (__chkstk_darwin)();
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  v12 = *a2;
  v13 = *(*(*(*a1 + OBJC_IVAR____TtC16KnoxClientPublic21CryptexArchivePointer_fields) + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_update) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
  v14 = *(*(*(v12 + OBJC_IVAR____TtC16KnoxClientPublic21CryptexArchivePointer_fields) + OBJC_IVAR____TtCC16KnoxClientPublic21CryptexArchivePointer6Fields_update) + OBJC_IVAR____TtC16KnoxClientPublic10KnoxUpdate_canonicalValue);
  if (v13 == v14)
  {
    v15 = *(*a1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file);
    v20[1] = v2;
    v16 = *(v6 + 16);
    v16(v11, v15 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_createdAt, v5);
    v16(v9, *(v12 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file) + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_createdAt, v5);
    v17 = static Date.> infix(_:_:)();
    v18 = *(v6 + 8);
    v18(v9, v5);
    v18(v11, v5);
  }

  else
  {
    v17 = v14 < v13;
  }

  return v17 & 1;
}

void *sub_10000E2A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000E2EC()
{
  result = qword_1004A6B88;
  if (!qword_1004A6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6B88);
  }

  return result;
}

uint64_t type metadata accessor for CryptexArchivePointer()
{
  result = qword_1004A6C00;
  if (!qword_1004A6C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000E3B0()
{
  result = qword_1004A6BB0;
  if (!qword_1004A6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6BB0);
  }

  return result;
}

unint64_t sub_10000E404()
{
  result = qword_1004A6BC0;
  if (!qword_1004A6BC0)
  {
    sub_100003A94(&qword_1004A7330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6BC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptexArchivePointer.Fields.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptexArchivePointer.Fields.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000E720(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000E76C()
{
  result = qword_1004A6C50;
  if (!qword_1004A6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6C50);
  }

  return result;
}

unint64_t sub_10000E7C4()
{
  result = qword_1004A6C58;
  if (!qword_1004A6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6C58);
  }

  return result;
}

unint64_t sub_10000E81C()
{
  result = qword_1004A6C60;
  if (!qword_1004A6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6C60);
  }

  return result;
}

unint64_t sub_10000E870(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047A4F0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for LibSecureConfigError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibSecureConfigError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_10000E988(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *GenericFilePointer.init(from:)(uint64_t a1)
{
  sub_100003B20(a1, v5);
  sub_100003B20(v5, v4);
  v2 = KnoxPointer.init(from:)(v4);
  sub_100003C3C(a1);
  sub_100003C3C(v5);
  return v2;
}

uint64_t sub_10000EC08(char *a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 2);
  v97 = v15;
  v98 = v9;
  v96 = v6;
  if (!v16)
  {
    v91 = 0x80000001004298B0;
    v92 = 0x8000000100429890;
    v93 = 0x80000001004299D0;
    type metadata accessor for KnoxServiceClient.ClientError();
    v95 = swift_allocObject();
    v89 = sub_10000E014();
    v90 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v101 = &_swiftEmptyArrayStorage;
    sub_1000142A8(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v7 + 104))(v98, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
    (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v2);
    static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v5, v2);
    v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    result = v95;
    v25 = v92;
    *(v95 + 16) = 0xD000000000000010;
    *(result + 24) = v25;
    v26 = v91;
    *(result + 32) = 0xD00000000000006DLL;
    *(result + 40) = v26;
    *(result + 56) = 4;
    *(result + 48) = 60;
    v24 = 0xD000000000000028;
    goto LABEL_5;
  }

  v17 = sub_100013364(1701869940, 0xE400000000000000);
  v94 = v2;
  if (v18)
  {
    v91 = 0x80000001004298B0;
    v92 = 0x8000000100429890;
    v93 = 0x8000000100429990;
    type metadata accessor for KnoxServiceClient.ClientError();
    v95 = swift_allocObject();
    v89 = sub_10000E014();
    v90 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v101 = &_swiftEmptyArrayStorage;
    sub_1000142A8(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v7 + 104))(v98, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
    v19 = v94;
    (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v94);
    static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v5, v19);
    v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    result = v95;
    v22 = v92;
    *(v95 + 16) = 0xD000000000000010;
    *(result + 24) = v22;
    v23 = v91;
    *(result + 32) = 0xD00000000000006DLL;
    *(result + 40) = v23;
    *(result + 56) = 4;
    *(result + 48) = 66;
    v24 = 0xD000000000000032;
LABEL_5:
    *(result + 64) = v24;
    v27 = v93;
    goto LABEL_35;
  }

  v28 = v95;
  v92 = (*(v95 + 376))(v17);
  v29 = (*(v28 + 384))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = v5;
  v88 = v3;
  v86 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v32 = *(v29 + 16);
    v31 = *(v29 + 24);
    if (v32 >= v31 >> 1)
    {
      v29 = sub_100011A4C((v31 > 1), v32 + 1, 1, v29);
    }

    *(v29 + 16) = v32 + 1;
    v33 = v29 + 16 * v32;
    *(v33 + 32) = 1701667182;
    *(v33 + 40) = 0xE400000000000000;
    v34 = sub_100013D10(v29);

    v35 = *(v34 + 16);
    v91 = v7;
    v93 = a1;
    if (v35)
    {
      v36 = sub_1000117A8(v35, 0);
      v37 = sub_100013A50(&v101, v36 + 4, v35, v34);

      sub_100013E00();
      if (v37 != v35)
      {
        __break(1u);
LABEL_39:
        __break(1u);

        __break(1u);
        return result;
      }

      v7 = v91;
    }

    else
    {
      v36 = &_swiftEmptyArrayStorage;
    }

    v101 = v36;
    sub_10000BD08(&v101);
    v90 = v10;

    v38 = v101;

    v40 = sub_10000FAEC(v39);
    v29 = sub_100012AB0(v38, v40);
    v41 = *(v29 + 16);
    v42 = &_swiftEmptyArrayStorage;
    if (v41)
    {
      v89 = v38;
      v42 = sub_1000117A8(v41, 0);
      v43 = sub_100013A50(&v101, v42 + 4, v41, v29);

      sub_100013E00();
      if (v43 != v41)
      {
        goto LABEL_39;
      }

      v7 = v91;
      v38 = v89;
    }

    v101 = v42;
    sub_10000BD08(&v101);

    v44 = v101;
    if (*(v101 + 2))
    {
      break;
    }

    a1 = v93 + 64;
    v59 = 1 << v93[32];
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v7 = v60 & *(v93 + 8);
    v61 = (v59 + 63) >> 6;

    v10 = 0;
    while (v7)
    {
      v63 = v10;
LABEL_27:
      v64 = *(v93 + 6) + ((v63 << 10) | (16 * __clz(__rbit64(v7))));
      v65 = *(v64 + 8);
      v7 &= v7 - 1;
      v101 = *v64;
      v102 = v65;
      __chkstk_darwin(v62);
      *(&v86 - 2) = &v101;

      v29 = sub_100012A04(sub_100013DA8, (&v86 - 4), v92);

      if ((v29 & 1) == 0)
      {

        return 0;
      }
    }

    while (1)
    {
      v63 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v63 >= v61)
      {
        v66 = v93;

        v101 = 0;
        v102 = 0xE000000000000000;
        _StringGuts.grow(_:)(100);
        v99 = v101;
        v100 = v102;
        v67._countAndFlagsBits = 0xD000000000000043;
        v67._object = 0x8000000100429820;
        String.append(_:)(v67);
        v68 = *(v66 + 16);
        if (!v68)
        {
          goto LABEL_32;
        }

        v69 = sub_1000117A8(*(v66 + 16), 0);
        v70 = sub_1000138F8(&v101, v69 + 4, v68, v66);

        sub_100013E00();
        if (v70 != v68)
        {
          __break(1u);
LABEL_32:
          v69 = &_swiftEmptyArrayStorage;
        }

        v101 = v69;
        sub_10000BD08(&v101);
        sub_1000039E8(&qword_1004A6B48);
        sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
        v71 = BidirectionalCollection<>.joined(separator:)();
        v73 = v72;

        v74._countAndFlagsBits = v71;
        v74._object = v73;
        String.append(_:)(v74);

        v75._countAndFlagsBits = 0xD00000000000001CLL;
        v75._object = 0x8000000100429870;
        String.append(_:)(v75);
        v101 = v92;

        sub_10000BD08(&v101);

        v76 = BidirectionalCollection<>.joined(separator:)();
        v78 = v77;

        v79._countAndFlagsBits = v76;
        v79._object = v78;
        String.append(_:)(v79);

        v80._countAndFlagsBits = 39;
        v80._object = 0xE100000000000000;
        String.append(_:)(v80);
        v92 = v100;
        v93 = v99;
        v7 = v91;
        goto LABEL_34;
      }

      v7 = *&a1[8 * v63];
      ++v10;
      if (v7)
      {
        v10 = v63;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:
    v29 = sub_100011A4C(0, *(v29 + 16) + 1, 1, v29);
  }

  v101 = 0;
  v102 = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v45._countAndFlagsBits = 0xD000000000000022;
  v45._object = 0x8000000100429920;
  String.append(_:)(v45);
  v99 = v44;
  sub_1000039E8(&qword_1004A6B48);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48);
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49._countAndFlagsBits = v46;
  v49._object = v48;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0xD000000000000014;
  v50._object = 0x8000000100429950;
  String.append(_:)(v50);
  v52._countAndFlagsBits = (*(v95 + 184))(v51);
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0xD00000000000001ALL;
  v53._object = 0x8000000100429970;
  String.append(_:)(v53);
  v99 = v38;
  v54 = BidirectionalCollection<>.joined(separator:)();
  v56 = v55;

  v57._countAndFlagsBits = v54;
  v57._object = v56;
  String.append(_:)(v57);

  v58._countAndFlagsBits = 39;
  v58._object = 0xE100000000000000;
  String.append(_:)(v58);
  v92 = v102;
  v93 = v101;
LABEL_34:
  v91 = 0x8000000100429890;
  v89 = 0x80000001004298B0;
  type metadata accessor for KnoxServiceClient.ClientError();
  v95 = swift_allocObject();
  sub_10000E014();
  static DispatchQoS.userInitiated.getter();
  v101 = &_swiftEmptyArrayStorage;
  sub_1000142A8(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v98, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v96);
  v82 = v87;
  v81 = v88;
  v83 = v94;
  (*(v88 + 104))(v87, enum case for DispatchQoS.QoSClass.default(_:), v94);
  static OS_dispatch_queue.global(qos:)();
  (*(v81 + 8))(v82, v83);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = v95;
  v84 = v91;
  *(v95 + 16) = 0xD000000000000010;
  *(result + 24) = v84;
  v85 = v89;
  *(result + 32) = 0xD00000000000006DLL;
  *(result + 40) = v85;
  *(result + 56) = 4;
  *(result + 48) = 103;
  v27 = v92;
  *(result + 64) = v93;
LABEL_35:
  *(result + 72) = v27;
  *(result + 80) = 0;
  *(result + 88) = v20;
  return result;
}

uint64_t sub_10000FAEC(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100012140(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10000FC10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10000FC74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000FCC0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047A6D8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10000FD40@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047A710, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10000FDA4(uint64_t a1)
{
  v2 = sub_10000E2EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FDE0(uint64_t a1)
{
  v2 = sub_10000E2EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000FF34()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PointerWithFields();
  v2 = objc_msgSendSuper2(&v9, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v10 = v3;
  v11 = v5;
  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = (*((swift_isaMask & *v1) + 0x190))();
  String.append(_:)(v7);

  return v10;
}

id PointerWithFields.__allocating_init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v14 = v13;
  v107 = a8;
  v104 = a6;
  v103 = a5;
  v117 = a4;
  v102 = a3;
  v119 = a2;
  v115 = a13;
  v116 = a11;
  v110 = a12;
  v106 = a10;
  v105 = a9;
  v101 = type metadata accessor for URL();
  v128 = *(v101 - 8);
  __chkstk_darwin(v101);
  v112 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000039E8(&qword_1004A6D30);
  v19 = __chkstk_darwin(v18 - 8);
  v96 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v108 = &v93 - v22;
  v23 = __chkstk_darwin(v21);
  v100 = &v93 - v24;
  v25 = __chkstk_darwin(v23);
  v125 = &v93 - v26;
  __chkstk_darwin(v25);
  v28 = &v93 - v27;
  v29 = sub_1000039E8(&qword_1004A73C0);
  v30 = __chkstk_darwin(v29 - 8);
  v124 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v118 = &v93 - v33;
  v34 = __chkstk_darwin(v32);
  v120 = &v93 - v35;
  __chkstk_darwin(v34);
  v37 = &v93 - v36;
  v122 = &v93 - v36;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v126 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v93 - v42;
  v44 = objc_allocWithZone(v14);
  v99 = *(a7 + 4);
  v109 = v39;
  v45 = *(v39 + 16);
  v46 = a7[1];
  v98 = *a7;
  v97 = v46;
  v111 = a1;
  v47 = a1;
  v48 = v38;
  v121 = v38;
  v45(v43, v47, v38);
  v49 = v45;
  sub_100013E54(v119, v37, &qword_1004A73C0);
  sub_100013E54(v117, v28, &qword_1004A6D30);
  v50 = v120;
  sub_100013E54(v116, v120, &qword_1004A73C0);
  v113 = v43;
  v49(v126, v43, v48);
  v51 = v118;
  sub_100013E54(v122, v118, &qword_1004A73C0);
  v114 = v28;
  sub_100013E54(v28, v125, &qword_1004A6D30);
  sub_100013E54(v50, v124, &qword_1004A73C0);
  v53 = v128 + 56;
  v52 = *(v128 + 56);
  *&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v54 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v55 = v101;
  v52(&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL], 1, 1, v101);
  *&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  v49(&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt], v126, v121);
  sub_100013E54(v51, &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], &qword_1004A73C0);
  v56 = v100;
  v57 = v55;
  v95 = v53;
  v94 = v52;
  v52(v100, 1, 1, v55);
  swift_beginAccess();
  sub_100013EBC(v56, &v44[v54]);
  swift_endAccess();
  v58 = v102;
  *&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v102;
  v59 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v60 = v104;
  *v59 = v103;
  *(v59 + 1) = v60;
  v61 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions];
  v62 = v97;
  *v61 = v98;
  *(v61 + 1) = v62;
  *(v61 + 4) = v99;
  v63 = v107;
  *&v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v107;
  v64 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v65 = v106;
  *v64 = v105;
  *(v64 + 1) = v65;
  v66 = *(swift_getObjectType() + 184);
  v67 = v58;
  v68 = v63;
  v69 = v66();
  v70 = v55;
  v71 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v71 = v69;
  v71[1] = v72;
  v73 = v124;
  sub_100013E54(v124, &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], &qword_1004A73C0);
  v74 = &v44[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  v75 = v115;
  *v74 = v110;
  *(v74 + 1) = v75;
  v76 = type metadata accessor for KnoxPointer(0);
  v127.receiver = v44;
  v127.super_class = v76;
  v77 = v125;
  v115 = objc_msgSendSuper2(&v127, "init");
  v78 = v108;
  sub_100013E54(v77, v108, &qword_1004A6D30);
  v79 = v78;
  if ((*(v128 + 48))(v78, 1, v70) == 1)
  {

    sub_100013F2C(v116, &qword_1004A73C0);
    sub_100013F2C(v117, &qword_1004A6D30);
    sub_100013F2C(v119, &qword_1004A73C0);
    v80 = *(v109 + 8);
    v81 = v121;
    v80(v111, v121);
    sub_100013F2C(v73, &qword_1004A73C0);
    sub_100013F2C(v77, &qword_1004A6D30);
    sub_100013F2C(v118, &qword_1004A73C0);
    v80(v126, v81);
    sub_100013F2C(v120, &qword_1004A73C0);
    sub_100013F2C(v114, &qword_1004A6D30);
    sub_100013F2C(v122, &qword_1004A73C0);
    v80(v113, v81);
    sub_100013F2C(v79, &qword_1004A6D30);
    return v115;
  }

  else
  {
    v84 = v116;
    v83 = v117;
    (*(v128 + 32))(v112, v79, v57);
    v85 = v123;
    sub_1000B0C5C(v96);
    v123 = v85;

    if (v85)
    {
      v86 = v115;

      sub_100013F2C(v84, &qword_1004A73C0);
      sub_100013F2C(v83, &qword_1004A6D30);
      sub_100013F2C(v119, &qword_1004A73C0);
      v87 = *(v109 + 8);
      v88 = v121;
      v87(v111, v121);
      (*(v128 + 8))(v112, v70);
      sub_100013F2C(v124, &qword_1004A73C0);
      sub_100013F2C(v125, &qword_1004A6D30);
      sub_100013F2C(v118, &qword_1004A73C0);
      v87(v126, v88);
      sub_100013F2C(v120, &qword_1004A73C0);
      sub_100013F2C(v114, &qword_1004A6D30);
      sub_100013F2C(v122, &qword_1004A73C0);
      v87(v113, v88);
    }

    else
    {
      sub_100013F2C(v84, &qword_1004A73C0);
      sub_100013F2C(v83, &qword_1004A6D30);
      sub_100013F2C(v119, &qword_1004A73C0);
      v89 = *(v109 + 8);
      v90 = v121;
      v89(v111, v121);
      (*(v128 + 8))(v112, v57);
      sub_100013F2C(v124, &qword_1004A73C0);
      sub_100013F2C(v125, &qword_1004A6D30);
      sub_100013F2C(v118, &qword_1004A73C0);
      v89(v126, v90);
      sub_100013F2C(v120, &qword_1004A73C0);
      sub_100013F2C(v114, &qword_1004A6D30);
      sub_100013F2C(v122, &qword_1004A73C0);
      v89(v113, v90);
      v91 = v96;
      v94(v96, 0, 1, v57);
      v92 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
      v86 = v115;
      swift_beginAccess();
      sub_100013EBC(v91, v86 + v92);
      swift_endAccess();
    }

    return v86;
  }
}

id PointerWithFields.init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v100 = a8;
  v97 = a6;
  v96 = a5;
  v113 = a4;
  v95 = a3;
  v110 = a13;
  v111 = a11;
  v112 = a2;
  v103 = a12;
  v99 = a10;
  v98 = a9;
  v94 = type metadata accessor for URL();
  v121 = *(v94 - 8);
  __chkstk_darwin(v94);
  v104 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000039E8(&qword_1004A6D30);
  v17 = __chkstk_darwin(v16 - 8);
  v88 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v101 = v87 - v20;
  v21 = __chkstk_darwin(v19);
  v93 = v87 - v22;
  v23 = __chkstk_darwin(v21);
  v117 = v87 - v24;
  __chkstk_darwin(v23);
  v26 = v87 - v25;
  v27 = sub_1000039E8(&qword_1004A73C0);
  v28 = __chkstk_darwin(v27 - 8);
  v116 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v119 = v87 - v31;
  v32 = __chkstk_darwin(v30);
  v114 = v87 - v33;
  __chkstk_darwin(v32);
  v35 = v87 - v34;
  v36 = type metadata accessor for Date();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v118 = v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = v87 - v40;
  v92 = *(a7 + 4);
  v105 = v37;
  v42 = *(v37 + 16);
  v43 = a7[1];
  v91 = *a7;
  v90 = v43;
  v106 = a1;
  v42(v87 - v40, a1, v36);
  sub_100013E54(v112, v35, &qword_1004A73C0);
  sub_100013E54(v113, v26, &qword_1004A6D30);
  v44 = v114;
  sub_100013E54(v111, v114, &qword_1004A73C0);
  v107 = v41;
  v42(v118, v41, v36);
  v108 = v35;
  sub_100013E54(v35, v119, &qword_1004A73C0);
  v109 = v26;
  sub_100013E54(v26, v117, &qword_1004A6D30);
  sub_100013E54(v44, v116, &qword_1004A73C0);
  v45 = v121 + 56;
  v46 = *(v121 + 56);
  v47 = v89;
  *&v89[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v48 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v49 = v94;
  v46(&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL], 1, 1, v94);
  *&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  v102 = v36;
  v42(&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt], v118, v36);
  sub_100013E54(v119, &v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], &qword_1004A73C0);
  v50 = v93;
  v51 = v49;
  v87[1] = v45;
  v87[0] = v46;
  v46(v93, 1, 1, v49);
  swift_beginAccess();
  sub_100013EBC(v50, &v47[v48]);
  swift_endAccess();
  v52 = v95;
  *&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v95;
  v53 = &v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v54 = v97;
  *v53 = v96;
  *(v53 + 1) = v54;
  v55 = &v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions];
  v56 = v90;
  *v55 = v91;
  *(v55 + 1) = v56;
  *(v55 + 4) = v92;
  v57 = v100;
  *&v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v100;
  v58 = &v47[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v59 = v99;
  *v58 = v98;
  *(v58 + 1) = v59;
  v60 = v47;
  v61 = *(swift_getObjectType() + 184);
  v62 = v52;
  v63 = v57;
  v64 = v61();
  v65 = v51;
  v66 = &v60[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v66 = v64;
  v66[1] = v67;
  v68 = v116;
  sub_100013E54(v116, &v60[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], &qword_1004A73C0);
  v69 = &v60[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  v70 = v110;
  *v69 = v103;
  *(v69 + 1) = v70;
  v71 = type metadata accessor for KnoxPointer(0);
  v120.receiver = v60;
  v120.super_class = v71;
  v72 = v117;
  v110 = objc_msgSendSuper2(&v120, "init");
  v73 = v101;
  sub_100013E54(v72, v101, &qword_1004A6D30);
  if ((*(v121 + 48))(v73, 1, v51) == 1)
  {

    sub_100013F2C(v111, &qword_1004A73C0);
    sub_100013F2C(v113, &qword_1004A6D30);
    sub_100013F2C(v112, &qword_1004A73C0);
    v74 = *(v105 + 8);
    v75 = v102;
    v74(v106, v102);
    sub_100013F2C(v68, &qword_1004A73C0);
    sub_100013F2C(v72, &qword_1004A6D30);
    sub_100013F2C(v119, &qword_1004A73C0);
    v74(v118, v75);
    sub_100013F2C(v114, &qword_1004A73C0);
    sub_100013F2C(v109, &qword_1004A6D30);
    sub_100013F2C(v108, &qword_1004A73C0);
    v74(v107, v75);
    sub_100013F2C(v73, &qword_1004A6D30);
    return v110;
  }

  else
  {
    v77 = v111;
    v78 = v112;
    (*(v121 + 32))(v104, v73, v51);
    v79 = v115;
    sub_1000B0C5C(v88);
    v115 = v79;

    if (v79)
    {
      v80 = v110;

      sub_100013F2C(v77, &qword_1004A73C0);
      sub_100013F2C(v113, &qword_1004A6D30);
      sub_100013F2C(v78, &qword_1004A73C0);
      v81 = *(v105 + 8);
      v82 = v102;
      v81(v106, v102);
      (*(v121 + 8))(v104, v65);
      sub_100013F2C(v116, &qword_1004A73C0);
      sub_100013F2C(v117, &qword_1004A6D30);
      sub_100013F2C(v119, &qword_1004A73C0);
      v81(v118, v82);
      sub_100013F2C(v114, &qword_1004A73C0);
      sub_100013F2C(v109, &qword_1004A6D30);
      sub_100013F2C(v108, &qword_1004A73C0);
      v81(v107, v82);
    }

    else
    {
      sub_100013F2C(v77, &qword_1004A73C0);
      sub_100013F2C(v113, &qword_1004A6D30);
      sub_100013F2C(v78, &qword_1004A73C0);
      v83 = *(v105 + 8);
      v84 = v102;
      v83(v106, v102);
      (*(v121 + 8))(v104, v51);
      sub_100013F2C(v116, &qword_1004A73C0);
      sub_100013F2C(v117, &qword_1004A6D30);
      sub_100013F2C(v119, &qword_1004A73C0);
      v83(v118, v84);
      sub_100013F2C(v114, &qword_1004A73C0);
      sub_100013F2C(v109, &qword_1004A6D30);
      sub_100013F2C(v108, &qword_1004A73C0);
      v83(v107, v84);
      v85 = v88;
      (v87[0])(v88, 0, 1, v51);
      v86 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
      v80 = v110;
      swift_beginAccess();
      sub_100013EBC(v85, v80 + v86);
      swift_endAccess();
    }

    return v80;
  }
}

char *GenericFilePointer.__allocating_init(from:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_100003B20(a1, v7);
  sub_100003B20(v7, v6);
  v4 = KnoxPointer.init(from:)(v6);
  sub_100003C3C(a1);
  sub_100003C3C(v7);
  return v4;
}

id PointerWithFields.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PointerWithFields();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000117A8(uint64_t a1, uint64_t a2)
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

  sub_1000039E8(&qword_1004A6B08);
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

void *sub_100011830(uint64_t a1, uint64_t a2)
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

  sub_1000039E8(&qword_1004A6DA0);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1000118B8(uint64_t a1, uint64_t a2)
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

  sub_1000039E8(&qword_1004A6D98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

char *sub_100011948(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004A6D90);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100011A4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004A6B08);
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

size_t sub_100011B58(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000039E8(&qword_1004A6DC8);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_100011D44(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000039E8(&qword_1004A6DA8);
  v10 = *(sub_1000039E8(&qword_1004A6DB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000039E8(&qword_1004A6DB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100011F34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004A6DC0);
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

char *sub_100012054(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000039E8(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

uint64_t sub_100012140(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000124F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100012290()
{
  v1 = v0;
  v2 = *v0;
  sub_1000039E8(&qword_1004A6DD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_1000124F0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100012290();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100012670();
      goto LABEL_16;
    }

    sub_1000127CC();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100012670()
{
  v1 = v0;
  sub_1000039E8(&qword_1004A6DD0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1000127CC()
{
  v1 = v0;
  v2 = *v0;
  sub_1000039E8(&qword_1004A6DD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100012A04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t *sub_100012AB0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    __chkstk_darwin(v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_100013140(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_100012F5C(v44, v49, v2, v13, v57);

  if (!v45)
  {

    return v46;
  }

  __break(1u);
  return result;
}

unint64_t *sub_100012F5C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100013140(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_100013140(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000039E8(&qword_1004A6DD0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100013364(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100013568(a1, a2, v4);
}

unint64_t sub_1000133DC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100013620(a1, v2);
}

unint64_t sub_100013470(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100013724(a1, v4);
}

unint64_t sub_1000134B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1000142A8(&qword_1004A6DB8, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000137EC(a1, v2);
}

unint64_t sub_100013568(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100013620(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100013724(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001424C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000142F0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000137EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000142A8(&qword_1004A6DB8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_1000138F8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100013A50(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100013BA8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_10001424C(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100013D10(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100012140(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100013DA8(void *a1)
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

uint64_t type metadata accessor for PointerWithFields()
{
  result = qword_1004A6D60;
  if (!qword_1004A6D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013E54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000039E8(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100013EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A6D30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013F2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000039E8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for PointerWithFields.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PointerWithFields.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100014148()
{
  result = qword_1004A6D70;
  if (!qword_1004A6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6D70);
  }

  return result;
}

unint64_t sub_1000141A0()
{
  result = qword_1004A6D78;
  if (!qword_1004A6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6D78);
  }

  return result;
}

unint64_t sub_1000141F8()
{
  result = qword_1004A6D80;
  if (!qword_1004A6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6D80);
  }

  return result;
}

uint64_t sub_1000142A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000143B4()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v6 - 8);
  v8 = v39 - v7;
  Task = type metadata accessor for ExtractTask();
  v44.receiver = v0;
  v44.super_class = Task;
  v10 = objc_msgSendSuper2(&v44, "description");
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled;
  swift_beginAccess();
  if (v1[v14])
  {
    v15 = 7562585;
  }

  else
  {
    v15 = 28494;
  }

  if (v1[v14])
  {
    v16 = 0xE300000000000000;
  }

  else
  {
    v16 = 0xE200000000000000;
  }

  v40 = 0;
  v41 = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  v42 = v40;
  v43 = v41;
  v17._countAndFlagsBits = v11;
  v17._object = v13;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x6C65636E6163202CLL;
  v18._object = 0xEC0000003D64656CLL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v15;
  v19._object = v16;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x547472617473202CLL;
  v20._object = 0xED0000273D656D69;
  String.append(_:)(v20);
  v21 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v22 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_100013E54(v21 + v22, v8, &qword_1004A73C0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_100013F2C(v8, &qword_1004A73C0);
    v23 = 0xE400000000000000;
    v24 = 1701736270;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100013F2C(v8, &qword_1004A73C0);
    v25 = Date.description.getter();
    v23 = v26;
    (*(v3 + 8))(v5, v2);
    v24 = v25;
  }

  v27 = v23;
  String.append(_:)(*&v24);

  v28._countAndFlagsBits = 0x3D656D616E202C27;
  v28._object = 0xE900000000000027;
  String.append(_:)(v28);
  v29 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];

  v32._countAndFlagsBits = v30;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 0x6165726874202C27;
  v33._object = 0xEF3D746E756F4364;
  String.append(_:)(v33);
  v34 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount;
  swift_beginAccess();
  v39[2] = *&v1[v34];
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0x657370616C65202CLL;
  v36._object = 0xEE003D656D695464;
  String.append(_:)(v36);
  OS_dispatch_queue.sync<A>(execute:)();
  Double.write<A>(to:)();
  v37._object = 0x8000000100429A50;
  v37._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v37);
  sub_10003BB24();
  Float.write<A>(to:)();
  return v42;
}

uint64_t type metadata accessor for ExtractTask()
{
  result = qword_1004A6E18;
  if (!qword_1004A6E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000148B4()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000148F8(int a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000149B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  sub_100013E54(a1, &v14 - v9, &qword_1004A6D30);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_10001F8D8(v10, v11 + v12, &qword_1004A6D30);
  return swift_endAccess();
}

uint64_t sub_100014AA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100013E54(v2 + v4, a2, &qword_1004A6D30);
}

uint64_t ExtractTask.digest.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest);

  return v1;
}

uint64_t ExtractTask.space.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space);

  return v1;
}

uint64_t sub_100014B7C()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100014BC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014C74()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100014CB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100014D68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_100014E18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100014ED0()
{
  v1 = v0[2];
  if (v1)
  {
    AAByteStreamClose(v1);
    v0[2] = 0;
  }

  v2 = v0[3];
  if (v2)
  {
    AAByteStreamClose(v2);
    v0[3] = 0;
  }

  v3 = v0[5];
  if (v3)
  {
    AAByteStreamClose(v3);
    v0[5] = 0;
  }

  v4 = v0[4];
  if (v4)
  {
    AAByteStreamClose(v4);
    v0[4] = 0;
  }

  result = v0[7];
  if (result)
  {

    v0[7] = 0;
  }

  return result;
}

uint64_t sub_100014F3C()
{
  sub_100014ED0();

  return swift_deallocClassInstance();
}

char *ExtractTask.__allocating_init(client:outputDirectoryURL:digest:space:includePathPatterns:excludePathPatterns:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v129 = a8;
  v128 = a7;
  v136 = a6;
  v138 = a5;
  v121 = type metadata accessor for DispatchQoS.QoSClass();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v118 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v113);
  v117 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v116 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v131 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000039E8(&qword_1004A6D30);
  v21 = __chkstk_darwin(v20 - 8);
  v112 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v124 = &v112 - v24;
  v25 = __chkstk_darwin(v23);
  v126 = &v112 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v112 - v28;
  __chkstk_darwin(v27);
  v31 = &v112 - v30;
  v32 = *(v18 + 16);
  v130 = a2;
  v123 = v18 + 16;
  v122 = v32;
  (v32)(&v112 - v30, a2, v17);
  v132 = v18;
  v33 = *(v18 + 56);
  v135 = v31;
  v33(v31, 0, 1, v17);
  v133 = v29;
  v33(v29, 1, 1, v17);
  v34 = objc_allocWithZone(type metadata accessor for ExtractTask());
  v33(&v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL], 1, 1, v17);
  v134 = v17;
  v33(&v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL], 1, 1, v17);
  *&v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount] = 0;
  *&v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType] = 0;
  *&v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents] = 0;
  v35 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams;
  type metadata accessor for ExtractTask.RandomAccessStreams();
  v36 = swift_allocObject();
  v36[1] = 0u;
  v36[2] = 0u;
  v36[3] = 0u;
  *&v34[v35] = v36;
  v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled] = 0;
  v37 = *((swift_isaMask & *a1) + 0x110);
  v38 = a1;
  *&v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount] = v37();
  v39 = &v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest];
  v137 = a3;
  *v39 = a3;
  v39[1] = a4;
  v40 = a4;
  v41 = &v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space];
  v42 = v136;
  *v41 = v138;
  v41[1] = v42;
  if (v128)
  {
    v43 = v128;
  }

  else
  {
    v43 = &_swiftEmptyArrayStorage;
  }

  if (v129)
  {
    v44 = v129;
  }

  else
  {
    v44 = &_swiftEmptyArrayStorage;
  }

  type metadata accessor for AEAUtils.FilePathRegexFilter();
  v45 = swift_allocObject();
  *(v45 + 24) = v44;
  if (v43[2])
  {

    v46 = v42;
  }

  else
  {

    v46 = v42;

    v43 = 0;
  }

  *(v45 + 16) = v43;
  *&v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_filter] = v45;
  *&v34[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_trimingPrefixes] = &_swiftEmptyArrayStorage;
  v47 = v38;
  v48 = sub_10003D38C(v47);
  v128 = v47;

  swift_getObjectType();
  v49 = v48;
  v141 = _typeName(_:qualified:)();
  v142 = v50;
  v51._countAndFlagsBits = 2108704;
  v51._object = 0xE300000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = v138;
  v52._object = v46;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 47;
  v53._object = 0xE100000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = v137;
  v129 = v40;
  v54._object = v40;
  String.append(_:)(v54);
  v55 = v141;
  v56 = v142;
  v57 = &v49[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v57 = v55;
  v57[1] = v56;
  v127 = v57;

  v58 = v126;
  sub_100013E54(v135, v126, &qword_1004A6D30);
  v59 = v132;
  v60 = *(v132 + 48);
  v61 = v134;
  if (v60(v58, 1, v134) == 1)
  {
    v125 = v49;
    sub_100013F2C(v58, &qword_1004A6D30);
    v62 = v133;
    v63 = v112;
    sub_100013E54(v133, v112, &qword_1004A6D30);
    v64 = v60(v63, 1, v61);
    v65 = v131;
    if (v64 == 1)
    {
      sub_100013F2C(v63, &qword_1004A6D30);
      v124 = 0x8000000100429A70;
      v123 = 0x8000000100429AF0;
      v126 = 0x8000000100429B60;
      v131 = type metadata accessor for KnoxServiceClient.ClientError();
      v66 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v122 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v139 = &_swiftEmptyArrayStorage;
      sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v114 + 104))(v118, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v115);
      v67 = v120;
      v68 = v119;
      v69 = v121;
      (*(v120 + 104))(v119, enum case for DispatchQoS.QoSClass.default(_:), v121);
      static OS_dispatch_queue.global(qos:)();
      (*(v67 + 8))(v68, v69);
      v70 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v71 = v124;
      *(v66 + 16) = 0xD000000000000078;
      *(v66 + 24) = v71;
      v72 = v123;
      *(v66 + 32) = 0xD000000000000065;
      *(v66 + 40) = v72;
      *(v66 + 56) = 4;
      *(v66 + 48) = 182;
      v73 = v126;
      *(v66 + 64) = 0xD00000000000004ALL;
      *(v66 + 72) = v73;
      *(v66 + 80) = 0;
      *(v66 + 88) = v70;
      sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v74 = swift_allocError();
      *v75 = v66;
      swift_getErrorValue();

      v76 = Error.localizedDescription.getter();
      v77 = v125;
      sub_100036D50(v74, v76, v78);
      v79 = v128;

      sub_100013F2C(v133, &qword_1004A6D30);
      sub_100013F2C(v135, &qword_1004A6D30);
      v49 = v77;

      v80 = v129;
      v81 = v134;
      v82 = v136;
      v83 = v132;
      goto LABEL_19;
    }

    v83 = v132;
    (*(v132 + 32))(v131, v63, v61);
    v86 = v124;
    (v122)(v124, v65, v61);
    v33(v86, 0, 1, v61);
    v87 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL;
    v49 = v125;
    swift_beginAccess();
    sub_10001F8D8(v86, &v49[v87], &qword_1004A6D30);
    swift_endAccess();
  }

  else
  {
    v65 = v131;
    (*(v59 + 32))(v131, v58, v61);
    v84 = v124;
    (v122)(v124, v65, v61);
    v33(v84, 0, 1, v61);
    v85 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL;
    swift_beginAccess();
    sub_10001F8D8(v84, &v49[v85], &qword_1004A6D30);
    swift_endAccess();
    v83 = v59;
    v62 = v133;
  }

  if (URL.isFileURL.getter())
  {
    v79 = v128;

    (*(v83 + 8))(v65, v61);
    sub_100013F2C(v62, &qword_1004A6D30);
    sub_100013F2C(v135, &qword_1004A6D30);
    v80 = v129;
    v81 = v61;
  }

  else
  {
    v124 = 0x8000000100429A70;
    v123 = 0x8000000100429AF0;
    v126 = 0x8000000100429BD0;
    v132 = type metadata accessor for KnoxServiceClient.ClientError();
    v88 = swift_allocObject();
    v112 = sub_10001AA40(0, &qword_1004A7840);
    v122 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v139 = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    v125 = v49;
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v114 + 104))(v118, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v115);
    v89 = v120;
    v90 = v119;
    v91 = v121;
    (*(v120 + 104))(v119, enum case for DispatchQoS.QoSClass.default(_:), v121);
    static OS_dispatch_queue.global(qos:)();
    (*(v89 + 8))(v90, v91);
    v92 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v93 = v124;
    *(v88 + 16) = 0xD000000000000078;
    *(v88 + 24) = v93;
    v94 = v123;
    *(v88 + 32) = 0xD000000000000065;
    *(v88 + 40) = v94;
    *(v88 + 56) = 4;
    *(v88 + 48) = 190;
    v95 = v126;
    *(v88 + 64) = 0xD00000000000004DLL;
    *(v88 + 72) = v95;
    *(v88 + 80) = 0;
    *(v88 + 88) = v92;
    sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v96 = swift_allocError();
    *v97 = v88;
    swift_getErrorValue();

    v49 = v125;
    v98 = Error.localizedDescription.getter();
    sub_100036D50(v96, v98, v99);
    v79 = v128;

    v81 = v134;
    (*(v83 + 8))(v131, v134);
    sub_100013F2C(v133, &qword_1004A6D30);
    sub_100013F2C(v135, &qword_1004A6D30);

    v80 = v129;
  }

  v82 = v136;
LABEL_19:
  v139 = 0;
  v140 = 0xE000000000000000;
  v100 = v49;
  _StringGuts.grow(_:)(23);
  swift_getObjectType();
  v101 = _typeName(_:qualified:)();
  v103 = v102;

  v139 = v101;
  v140 = v103;
  v104._countAndFlagsBits = 0xD000000000000010;
  v104._object = 0x8000000100429BB0;
  String.append(_:)(v104);
  v105._countAndFlagsBits = v138;
  v105._object = v82;
  String.append(_:)(v105);

  v106._countAndFlagsBits = 47;
  v106._object = 0xE100000000000000;
  String.append(_:)(v106);
  v107._countAndFlagsBits = v137;
  v107._object = v80;
  String.append(_:)(v107);

  v108 = v139;
  v109 = v140;
  (*(v83 + 8))(v130, v81);
  v110 = v127;
  *v127 = v108;
  v110[1] = v109;

  return v100;
}

char *ExtractTask.__allocating_init(client:destinationFileURL:pointer:includePathPatterns:excludePathPatterns:trimingPrefixes:)(void *a1, char *a2, char *a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v122 = a6;
  v121 = a5;
  v120 = a4;
  v113 = type metadata accessor for DispatchQoS.QoSClass();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v110 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v106);
  v109 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v126 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v125 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000039E8(&qword_1004A6D30);
  v18 = __chkstk_darwin(v17 - 8);
  v105 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v116 = &v104 - v21;
  v22 = __chkstk_darwin(v20);
  v117 = &v104 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v104 - v25;
  __chkstk_darwin(v24);
  v27 = *(v15 + 56);
  v130 = &v104 - v28;
  v27();
  v129 = v15;
  v29 = *(v15 + 16);
  v124 = a2;
  v115 = v15 + 16;
  v114 = v29;
  v29(v26, a2, v14);
  v127 = v26;
  (v27)(v26, 0, 1, v14);
  v30 = (*&a3[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest);
  v31 = *v30;
  v32 = v30[1];
  v123 = a3;
  v33 = *&a3[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v34 = *&a3[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space + 8];
  v35 = objc_allocWithZone(type metadata accessor for ExtractTask());
  (v27)(&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL], 1, 1, v14);
  v128 = v14;
  (v27)(&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL], 1, 1, v14);
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_startCount] = 0;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_networkServiceType] = 0;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_archiveDecryptionComponents] = 0;
  v36 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_randomAccessStreams;
  type metadata accessor for ExtractTask.RandomAccessStreams();
  v37 = swift_allocObject();
  v37[1] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  *&v35[v36] = v37;
  v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_wasCancelled] = 0;
  v38 = *((swift_isaMask & *a1) + 0x110);
  v39 = a1;

  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_decryptionThreadCount] = v38(v40);
  v41 = &v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_digest];
  v119 = v31;
  *v41 = v31;
  v41[1] = v32;
  v42 = &v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_space];
  v118 = v33;
  *v42 = v33;
  v42[1] = v34;
  if (v120)
  {
    v43 = v120;
  }

  else
  {
    v43 = &_swiftEmptyArrayStorage;
  }

  if (v121)
  {
    v44 = v121;
  }

  else
  {
    v44 = &_swiftEmptyArrayStorage;
  }

  type metadata accessor for AEAUtils.FilePathRegexFilter();
  v45 = swift_allocObject();
  *(v45 + 24) = v44;
  if (v43[2])
  {
  }

  else
  {

    v43 = 0;
  }

  *(v45 + 16) = v43;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_filter] = v45;
  *&v35[OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_trimingPrefixes] = v122;
  v46 = v39;
  v47 = sub_10003D38C(v46);
  v122 = v46;

  swift_getObjectType();
  v48 = v47;
  v133 = _typeName(_:qualified:)();
  v134 = v49;
  v50._countAndFlagsBits = 2108704;
  v50._object = 0xE300000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = v118;
  v51._object = v34;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 47;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  v53._countAndFlagsBits = v119;
  v53._object = v32;
  String.append(_:)(v53);

  v54 = v133;
  v55 = v134;
  v56 = &v48[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v56 = v54;
  v56[1] = v55;

  v57 = v117;
  sub_100013E54(v130, v117, &qword_1004A6D30);
  v59 = v128;
  v58 = v129;
  v60 = *(v129 + 48);
  if (v60(v57, 1, v128) == 1)
  {
    sub_100013F2C(v57, &qword_1004A6D30);
    v61 = v127;
    v62 = v105;
    sub_100013E54(v127, v105, &qword_1004A6D30);
    if (v60(v62, 1, v59) == 1)
    {
      sub_100013F2C(v62, &qword_1004A6D30);
      v118 = 0x8000000100429A70;
      v119 = 0x8000000100429AF0;
      v120 = 0x8000000100429B60;
      v125 = type metadata accessor for KnoxServiceClient.ClientError();
      v63 = swift_allocObject();
      v116 = sub_10001AA40(0, &qword_1004A7840);
      v117 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v131 = &_swiftEmptyArrayStorage;
      sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      v121 = v56;
      v59 = v128;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v107 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v108);
      v64 = v112;
      v65 = v111;
      v66 = v113;
      (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
      static OS_dispatch_queue.global(qos:)();
      (*(v64 + 8))(v65, v66);
      v56 = v121;
      v67 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v63 + 16) = 0xD000000000000078;
      *(v63 + 24) = v118;
      *(v63 + 32) = 0xD000000000000065;
      v68 = v119;
      *(v63 + 56) = 4;
      *(v63 + 40) = v68;
      *(v63 + 48) = 182;
      v69 = v120;
      *(v63 + 64) = 0xD00000000000004ALL;
      *(v63 + 72) = v69;
      *(v63 + 80) = 0;
      *(v63 + 88) = v67;
      sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v70 = swift_allocError();
      *v71 = v63;
      swift_getErrorValue();

      v72 = Error.localizedDescription.getter();
      sub_100036D50(v70, v72, v73);
      v74 = v122;

      sub_100013F2C(v127, &qword_1004A6D30);
      sub_100013F2C(v130, &qword_1004A6D30);

      v75 = v129;
      goto LABEL_18;
    }

    v75 = v129;
    v76 = v125;
    (*(v129 + 32))(v125, v62, v59);
    v79 = v116;
    v114(v116, v76, v59);
    (v27)(v79, 0, 1, v59);
    v80 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputArchiveURL;
    swift_beginAccess();
    sub_10001F8D8(v79, &v48[v80], &qword_1004A6D30);
    swift_endAccess();
  }

  else
  {
    v76 = v125;
    (*(v58 + 32))(v125, v57, v59);
    v77 = v116;
    v114(v116, v76, v59);
    (v27)(v77, 0, 1, v59);
    v78 = OBJC_IVAR____TtC16KnoxClientPublic11ExtractTask_outputDirectoryURL;
    swift_beginAccess();
    sub_10001F8D8(v77, &v48[v78], &qword_1004A6D30);
    swift_endAccess();
    v75 = v58;
    v61 = v127;
  }

  if (URL.isFileURL.getter())
  {
    v74 = v122;

    (*(v75 + 8))(v76, v59);
    sub_100013F2C(v61, &qword_1004A6D30);
    sub_100013F2C(v130, &qword_1004A6D30);
  }

  else
  {
    v117 = 0x8000000100429A70;
    v118 = 0x8000000100429AF0;
    v119 = 0x8000000100429BD0;
    v120 = type metadata accessor for KnoxServiceClient.ClientError();
    v81 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v116 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v131 = &_swiftEmptyArrayStorage;
    sub_10001F95C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    v121 = v56;
    v59 = v128;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v107 + 104))(v110, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v108);
    v82 = v112;
    v83 = v111;
    v84 = v113;
    (*(v112 + 104))(v111, enum case for DispatchQoS.QoSClass.default(_:), v113);
    static OS_dispatch_queue.global(qos:)();
    (*(v82 + 8))(v83, v84);
    v56 = v121;
    v85 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v81 + 16) = 0xD000000000000078;
    *(v81 + 24) = v117;
    *(v81 + 32) = 0xD000000000000065;
    v86 = v118;
    *(v81 + 56) = 4;
    *(v81 + 40) = v86;
    *(v81 + 48) = 190;
    v87 = v119;
    *(v81 + 64) = 0xD00000000000004DLL;
    *(v81 + 72) = v87;
    *(v81 + 80) = 0;
    *(v81 + 88) = v85;
    sub_10001F95C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v88 = swift_allocError();
    *v89 = v81;
    swift_getErrorValue();

    v75 = v129;
    v90 = Error.localizedDescription.getter();
    sub_100036D50(v88, v90, v91);
    v74 = v122;

    (*(v75 + 8))(v125, v59);
    sub_100013F2C(v127, &qword_1004A6D30);
    sub_100013F2C(v130, &qword_1004A6D30);
  }

LABEL_18:
  v131 = 0;
  v132 = 0xE000000000000000;
  v92 = v48;
  _StringGuts.grow(_:)(18);
  swift_getObjectType();
  v93 = _typeName(_:qualified:)();
  v95 = v94;

  v131 = v93;
  v132 = v95;
  v96._countAndFlagsBits = 0x68637261206F7420;
  v96._object = 0xEE00202D20657669;
  String.append(_:)(v96);
  v97 = v123;
  v98 = *&v123[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v99 = *&v123[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name + 8];

  v100._countAndFlagsBits = v98;
  v100._object = v99;
  String.append(_:)(v100);

  v101 = v131;
  v102 = v132;
  (*(v75 + 8))(v124, v59);
  *v56 = v101;
  v56[1] = v102;

  return v92;
}