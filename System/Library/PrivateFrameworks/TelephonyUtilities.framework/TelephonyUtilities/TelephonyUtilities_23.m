uint64_t sub_1003A5690(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1003A5940(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1003A57BC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1003A57BC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_100060528(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_100060528(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 < *(v10 - 2))
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

char *sub_1003A5954(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1003A5980(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A81C0, &qword_100583B58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1003A5A80(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = a2;
  v9 = v7;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      v3 = sub_1003A5F9C(v14, v6, v3, v15);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v7, v8);
  v10 = &v16 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v6, v10);
  v11 = v9;
  v12 = sub_1003A5C34(v10, v6, v3, v11);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v12;
  }

LABEL_6:
  return v3;
}

uint64_t sub_1003A5C34(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v42 = a2;
  v54 = a4;
  v43 = a1;
  v52 = sub_10026D814(&qword_1006A81D0, &qword_100583B78);
  v5 = *(*(v52 - 8) + 64);
  v7 = __chkstk_darwin(v52, v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v50 = &v42 - v11;
  v12 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  result = __chkstk_darwin(v12, v14);
  v47 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v17 = 0;
  v53 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v51 = v9;
  v46 = v9 + 8;
  v24 = (v21 + 63) >> 6;
  v25 = v47;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v56 = (v23 - 1) & v23;
LABEL_11:
    v29 = v26 | (v17 << 6);
    v30 = v53;
    sub_10037A8AC(v53[6] + *(v48 + 72) * v29, v25);
    v31 = v30[7];
    v32 = swift_allocObject();
    v45 = v29;
    v55 = *(v31 + 16 * v29);
    *(v32 + 16) = v55;
    v33 = v50;
    sub_10037A8AC(v25, v50);
    v35 = v51;
    v34 = v52;
    v36 = (v33 + *(v52 + 48));
    *v36 = &unk_100583B98;
    v36[1] = v32;
    sub_100285FC4(v33, v35, &qword_1006A81D0, &qword_100583B78);
    v37 = *&v46[*(v34 + 48)];
    swift_retain_n();

    v38 = *(v35 + *(v49 + 20));
    sub_1002DB508(v35);
    LODWORD(v35) = [v38 isEquivalentToHandle:{v54, v42}];

    sub_100009A04(v33, &qword_1006A81D0, &qword_100583B78);

    result = sub_1002DB508(v25);
    v23 = v56;
    if (v35)
    {
      *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100384D9C(v43, v42, v44, v53);
        v41 = v40;

        return v41;
      }
    }
  }

  v27 = v17;
  while (1)
  {
    v17 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v17 >= v24)
    {
      goto LABEL_15;
    }

    v28 = v19[v17];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v56 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003A5F9C(void *result, uint64_t a2, void *a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_1003A5C34(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t sub_1003A6080()
{
  sub_1000066BC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_task_alloc();
  v10 = sub_100008A48(v9);
  *v10 = v11;
  v10[1] = sub_100035FE4;

  return sub_1003A426C(v6, v4, v2, v8);
}

uint64_t sub_1003A6148(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A81D8, &qword_100583B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A61B8()
{
  sub_1000066BC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008A48(v3);
  *v4 = v5;
  v6 = sub_100008BE4(v4);

  return v7(v6);
}

uint64_t sub_1003A6258()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_100008A48(v6);
  *v7 = v8;
  v7[1] = sub_100035FE0;
  v9 = sub_100007624();

  return v10(v9);
}

uint64_t initializeBufferWithCopyOfBuffer for SharePlayAvailabilityManager.AvailabilityIndicator(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharePlayAvailabilityManager.AvailabilityIndicator(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for SharePlayAvailabilityManager.AvailabilityIndicator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

NSString sub_1003A63E4()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA4A8 = result;
  return result;
}

NSString sub_1003A641C()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA4B0 = result;
  return result;
}

NSString sub_1003A6454()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA4B8 = result;
  return result;
}

uint64_t sub_1003A648C()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = qword_1006A0AD8;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  sub_100009FC0(v4, v5, v6, v7, qword_1006BA4A8);

  v8 = [v1 defaultCenter];
  v9 = qword_1006A0AE0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  sub_100009FC0(v10, v11, v12, v13, qword_1006BA4B0);

  v14 = [v1 defaultCenter];
  v15 = qword_1006A0AE8;

  if (v15 != -1)
  {
    swift_once();
  }

  [v14 addObserver:v0 selector:"recurringDisclosureFinishedNotification:" name:qword_1006BA4B8 object:0];

  return v0;
}

uint64_t sub_1003A66D8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

void sub_1003A675C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v35 = type metadata accessor for DispatchQoS();
  v18 = sub_100007FEC(v35);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  sub_100007FDC();
  v26 = v25 - v24;
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v27 = type metadata accessor for Logger();
  sub_10000AF9C(v27, qword_1006BA640);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, a2, v30, 2u);
    sub_100005F40();
  }

  v31 = *(v7 + 56);
  if (v31)
  {
    aBlock[4] = a3;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = a4;
    v32 = _Block_copy(aBlock);
    v33 = v31;

    static DispatchQoS.unspecified.getter();
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v11 + 8))(v17, v8);
    (*(v20 + 8))(v26, v35);
  }
}

uint64_t sub_1003A6A60(uint64_t a1, void (*a2)(void))
{
  sub_1002A949C();
  swift_beginAccess();
  sub_1003A72E8(a1 + 16, v7);
  if (!v8)
  {
    return sub_1003A7358(v7);
  }

  sub_100009AB0(v7, v6);
  sub_1003A7358(v7);
  v4 = *sub_100009B14(v6, v6[3]);
  a2();
  return sub_100009B7C(v6);
}

uint64_t sub_1003A6B10(void *a1)
{
  [a1 askProviderToAllowAudioInjection:1];

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1003A6B70(void *a1, const char *a2)
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA640);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
    sub_100005F40();
  }

  [a1 askProviderToAllowAudioInjection:1];

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1003A6C64(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = sub_100007FEC(v4);
  v46 = v6;
  v47 = v5;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v5, v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v45 = &v45 - v14;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  sub_100007FDC();
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC();
  }

  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA640);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Setting up recurring disclosure", v21, 2u);
    sub_100005F40();
  }

  aBlock[4] = sub_1003A7250;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062B910;
  _Block_copy(aBlock);
  v48 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  sub_10000AC00();

  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = type metadata accessor for DispatchWorkItem();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = DispatchWorkItem.init(flags:block:)();

  v26 = *(v2 + 72);
  *(v2 + 72) = v25;

  v27 = sub_1003A725C(0x3DuLL) - 30;
  v28 = 240.0;
  if (a1)
  {
    v28 = 420.0;
  }

  v29 = v28 + v27;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v31))
  {
    v32 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v32 = 136315394;
    v48 = v29;
    v33 = String.init<A>(reflecting:)();
    v35 = sub_10002741C(v33, v34, aBlock);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v48 = *&v27;
    v36 = String.init<A>(reflecting:)();
    v38 = sub_10002741C(v36, v37, aBlock);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Scheduing recurring disclosure for %s seconds from now with randomness %s", v32, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  v39 = *(v2 + 56);
  if (!v39)
  {
  }

  v40 = v39;
  static DispatchTime.now()();
  v41 = v45;
  + infix(_:_:)();
  v42 = v47;
  v43 = *(v46 + 8);
  v43(v12, v47);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v43)(v41, v42);
}

uint64_t sub_1003A70D4(uint64_t a1)
{
  swift_beginAccess();
  sub_1003A72E8(a1 + 16, v5);
  if (!v6)
  {
    return sub_1003A7358(v5);
  }

  sub_100009AB0(v5, v4);
  sub_1003A7358(v5);
  v2 = *sub_100009B14(v4, v4[3]);
  sub_1003E7358();
  return sub_100009B7C(v4);
}

uint64_t sub_1003A7160()
{
  if (*(v0 + 72))
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    v1 = *(v0 + 72);
  }

  *(v0 + 72) = 0;

  return sub_1002A949C();
}

uint64_t sub_1003A71C0()
{
  sub_1003A7358(v0 + 16);

  sub_100060500(v0 + 64);
  v1 = *(v0 + 72);

  return v0;
}

uint64_t sub_1003A71F8()
{
  sub_1003A71C0();

  return _swift_deallocClassInstance(v0, 80, 7);
}

unint64_t sub_1003A725C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003A72E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006AA250, &qword_100583C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A7358(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006AA250, &qword_100583C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AVCSessionMediaState.description.getter(int a1)
{
  v1 = 0x64656C62616E65;
  v2 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v2 = 0x64656C6261736964;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1 == 2)
  {
    return 0x646573756170;
  }

  else
  {
    return v1;
  }
}

uint64_t AVCSessionMediaType.description.getter(int a1)
{
  v1 = 0x7065526E696F63;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 6)
  {
    v2 = 0x6F576172656D6163;
  }

  if (a1 != 8)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 0x6172656D6163;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1003A7600(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_1002DA540(1u);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 4 * v2);
  v5 = sub_1002CB384(6u, a1);
  if ((v5 & 0x100000000) != 0)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_1002CB384(8u, a1);
  if ((v7 & 0x100000000) == 0)
  {
    v8 = v7;
    _StringGuts.grow(_:)(56);
    v9._countAndFlagsBits = 0x6361736E6172745BLL;
    v9._object = 0xEF3A44496E6F6974;
    String.append(_:)(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x6172656D61632E20;
    v11._object = 0xE90000000000003ALL;
    String.append(_:)(v11);
    sub_1003A745C(v4);
    v12._object = 0xED00003A666C6F57;
    v12._countAndFlagsBits = 0x6172656D61632E20;
    String.append(_:)(v12);
    sub_1003A745C(v6);
    v13._countAndFlagsBits = 0x65526E696F632E20;
    v13._object = 0xEA00000000003A70;
    String.append(_:)(v13);
    sub_1003A745C(v8);
    v14._countAndFlagsBits = 93;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
  }

  return 0;
}

unint64_t sub_1003A7810()
{
  v0 = 0xD000000000000012;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    return 0xD00000000000001ALL;
  }

  else
  {
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      _StringGuts.grow(_:)(35);

      [v3 participantID];
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      v5._countAndFlagsBits = 14889;
      v5._object = 0xE200000000000000;
      String.append(_:)(v5);

      return 0xD00000000000001FLL;
    }
  }

  return v0;
}

unint64_t sub_1003A7930(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 4 * v12);
    result = sub_1002DA540(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 4 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_1003A7A38()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 6);

  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC13callservicesd30CSDAVCSessionMediaStateManager_logger;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_100060500(&v0[OBJC_IVAR____TtC13callservicesd30CSDAVCSessionMediaStateManager_delegate]);

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  return v0;
}

uint64_t sub_1003A7AF8()
{
  sub_1003A7A38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CSDAVCSessionMediaStateManager()
{
  result = qword_1006A8388;
  if (!qword_1006A8388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003A7BA4()
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

uint64_t sub_1003A7C7C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1003A7C90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1003A7CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003A7D44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100570A70 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100570A90 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1003A7E18(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1003A7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003A7D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003A7E80(uint64_t a1)
{
  v2 = sub_1003A9408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A7EBC(uint64_t a1)
{
  v2 = sub_1003A9408();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003A7EF8()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006BA4D8 = result;
  unk_1006BA4E0 = v1;
  return result;
}

uint64_t sub_1003A7F28()
{
  v0 = type metadata accessor for SceneAssociationBehavior();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = type metadata accessor for GroupActivityMetadata.ActivityType();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  GroupActivityMetadata.init()();
  static GroupActivityMetadata.ActivityType.screenSharing.getter();
  GroupActivityMetadata.type.setter();
  sub_10031E958(0x535F4E4545524353, 0xEE00474E49524148);
  GroupActivityMetadata.localizedTitle.setter();

  GroupActivityMetadata.localizedSubtitle.setter();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static SceneAssociationBehavior.none.getter();
  return GroupActivityMetadata.sceneAssociationBehavior.setter();
}

uint64_t sub_1003A8058(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a4;
  v6 = sub_10026D814(&qword_1006A8598, &qword_100583FB8);
  sub_100007FEC(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100006688();
  __chkstk_darwin(v11, v12);
  v14 = v20 - v13;
  v15 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1003A9408();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v4)
  {
    v20[1] = v20[0];
    v21 = 1;
    type metadata accessor for CodableRemoteScreenShareAttributes();
    sub_100010454();
    sub_1003A9710(v16, v17, v18);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v14, v6);
}

uint64_t sub_1003A81FC(uint64_t *a1)
{
  v2 = sub_10026D814(&qword_1006A8588, &qword_100583FB0);
  sub_100007FEC(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1003A9408();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v17[31] = 0;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  type metadata accessor for CodableRemoteScreenShareAttributes();
  v17[15] = 1;
  sub_100010454();
  sub_1003A9710(v13, v14, v15);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v4 + 8))(v10, v2);
  sub_100009B7C(a1);
  return v12;
}

unint64_t sub_1003A83E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620B38, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003A8434(char a1)
{
  result = 0x6146656369766564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x656C797473;
      break;
    case 3:
      result = 0x5379616C70736964;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x636146656C616373;
      break;
    case 6:
      result = 0x615272656E726F63;
      break;
    case 7:
    case 8:
      result = 0x6C616E696769726FLL;
      break;
    case 9:
      result = 0x776F646E69577369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003A857C()
{
  if (qword_1006A0AF0 != -1)
  {
    swift_once();
  }

  v0 = qword_1006BA4D8;

  return v0;
}

uint64_t sub_1003A85E4()
{
  v3 = *v0;
  v2 = v0[1];
  sub_1003A7F28();
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1003A8654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003A81FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1003A86C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A83E0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003A86F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1003A8434(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1003A8740@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A842C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003A8774(uint64_t a1)
{
  v2 = sub_1003A945C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A87B0(uint64_t a1)
{
  v2 = sub_1003A945C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1003A8810(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1003A88A4(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithAttributes:", a1);
  swift_unknownObjectRelease();
  return v3;
}

id sub_1003A8974(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10026D814(&qword_1006A85F0, &qword_100583FE0);
  sub_100007FEC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100006688();
  __chkstk_darwin(v10, v11);
  v13 = &v37 - v12;
  v44.receiver = v1;
  v44.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v44, "init");
  v15 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1003A945C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v39) = 0;
    sub_10001525C();
    [v14 setDeviceFamily:KeyedDecodingContainer.decode(_:forKey:)()];
    sub_1000086A8(1);
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v18 & 1) == 0)
    {
      [v14 setDeviceHomeButtonType:v17];
    }

    sub_1000086A8(2);
    [v14 setStyle:KeyedDecodingContainer.decode(_:forKey:)()];
    sub_1000086A8(3);
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v20 & 1) == 0)
    {
      v21 = *&v19;
      sub_1000496D4();
      isa = NSNumber.init(floatLiteral:)(v21).super.super.isa;
      sub_1000172C0(isa, "setDisplayScale:");
    }

    sub_1000086A8(5);
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v24 & 1) == 0)
    {
      v25 = *&v23;
      sub_1000496D4();
      v26 = NSNumber.init(floatLiteral:)(v25).super.super.isa;
      sub_1000172C0(v26, "setScaleFactor:");
    }

    v45 = 7;
    sub_1003A96BC();
    sub_10001525C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if ((BYTE8(v39) & 1) == 0)
    {
      v35 = *&v39;
      v45 = 8;
      sub_10001525C();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if ((BYTE8(v39) & 1) == 0)
      {
        v36 = [objc_opt_self() valueWithRect:{0.0, 0.0, v35, *&v39}];
        sub_1000172C0(v36, "setOriginalResolution:");
      }
    }

    sub_1000086A8(6);
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v28 & 1) == 0)
    {
      v29 = *&v27;
      sub_1000496D4();
      v30 = NSNumber.init(floatLiteral:)(v29).super.super.isa;
      sub_1000172C0(v30, "setCornerRadius:");
    }

    type metadata accessor for CGAffineTransform(0);
    v45 = 4;
    sub_1003A9710(&qword_1006A8600, 255, type metadata accessor for CGAffineTransform);
    sub_10001525C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if ((v43 & 1) == 0)
    {
      v32 = v41;
      v31 = v42;
      v37 = v40;
      v38 = v39;
      v33 = objc_opt_self();
      v40 = v37;
      v39 = v38;
      v41 = v32;
      v42 = v31;
      v34 = [v33 bs_valueWithCGAffineTransform:&v39];
      sub_1000172C0(v34, "setSystemRootLayerTransform:");
    }

    sub_1000086A8(9);
    [v14 setWindowed:KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1];
    (*(v7 + 8))(v13, v5);
  }

  sub_100009B7C(a1);
  return v14;
}

uint64_t sub_1003A8E08(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006A85A0, &qword_100583FC0);
  sub_100007FEC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100006688();
  __chkstk_darwin(v10, v11);
  v13 = &v31 - v12;
  v14 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1003A945C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  [v3 deviceFamily];
  LOBYTE(v34) = 0;
  sub_10000F770();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    [v3 deviceHomeButtonType];
    LOBYTE(v34) = 1;
    sub_10000F770();
    KeyedEncodingContainer.encode(_:forKey:)();
    [v3 style];
    LOBYTE(v34) = 2;
    sub_10000F770();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = [v3 displayScale];
    v16 = v15;
    if (v15)
    {
      [v15 doubleValue];
    }

    sub_1000182B0();
    v38 = 3;
    sub_10026D814(&qword_1006A85B0, &qword_100583FC8);
    sub_1003A94B0();
    sub_10000A2B0();
    v17 = [v3 scaleFactor];
    v18 = v17;
    if (v17)
    {
      [v17 doubleValue];
    }

    sub_1000182B0();
    v38 = 5;
    sub_10000A2B0();
    v19 = [v3 systemRootLayerTransform];
    v20 = v19;
    if (v19)
    {
      [v19 bs_CGAffineTransformValue];
      v32 = v35;
      v33 = v34;
      v31 = v36;

      v22 = v31;
      v21 = v32;
      v23 = v33;
    }

    else
    {
      v23 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
    }

    v34 = v23;
    v35 = v21;
    v36 = v22;
    v37 = v20 == 0;
    v38 = 4;
    sub_10026D814(&qword_1006A85C0, &qword_100583FD0);
    sub_1003A952C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = [v3 cornerRadius];
    v25 = v24;
    if (v24)
    {
      [v24 doubleValue];
    }

    sub_1000182B0();
    v38 = 6;
    sub_10000A2B0();
    v26 = [v3 originalResolution];
    if (v26)
    {
      [v26 rectValue];
      sub_10000FEB4();
      v39.origin.x = sub_10001145C();
      Width = CGRectGetWidth(v39);
    }

    else
    {
      Width = 0.0;
    }

    sub_10000EAD8(Width);
    v38 = 7;
    sub_10026D814(&qword_1006A85D8, &qword_100583FD8);
    sub_1003A95E4();
    sub_10000A2B0();
    v28 = [v3 originalResolution];
    if (v28)
    {
      [v28 rectValue];
      sub_10000FEB4();
      v40.origin.x = sub_10001145C();
      Height = CGRectGetHeight(v40);
    }

    else
    {
      Height = 0.0;
    }

    sub_10000EAD8(Height);
    v38 = 8;
    sub_10000A2B0();
    [v3 isWindowed];
    LOBYTE(v34) = 9;
    sub_10000F770();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_1003A92A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1003A92F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_1003A935C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1003A8930(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1003A93B4()
{
  result = qword_1006A8580;
  if (!qword_1006A8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8580);
  }

  return result;
}

unint64_t sub_1003A9408()
{
  result = qword_1006A8590;
  if (!qword_1006A8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8590);
  }

  return result;
}

unint64_t sub_1003A945C()
{
  result = qword_1006A85A8;
  if (!qword_1006A85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85A8);
  }

  return result;
}

unint64_t sub_1003A94B0()
{
  result = qword_1006A85B8;
  if (!qword_1006A85B8)
  {
    sub_10026DCB4(&qword_1006A85B0, &qword_100583FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85B8);
  }

  return result;
}

unint64_t sub_1003A952C()
{
  result = qword_1006A85C8;
  if (!qword_1006A85C8)
  {
    sub_10026DCB4(&qword_1006A85C0, &qword_100583FD0);
    sub_1003A9710(&qword_1006A85D0, 255, type metadata accessor for CGAffineTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85C8);
  }

  return result;
}

unint64_t sub_1003A95E4()
{
  result = qword_1006A85E0;
  if (!qword_1006A85E0)
  {
    sub_10026DCB4(&qword_1006A85D8, &qword_100583FD8);
    sub_1003A9668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85E0);
  }

  return result;
}

unint64_t sub_1003A9668()
{
  result = qword_1006A85E8;
  if (!qword_1006A85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85E8);
  }

  return result;
}

unint64_t sub_1003A96BC()
{
  result = qword_1006A85F8;
  if (!qword_1006A85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85F8);
  }

  return result;
}

uint64_t sub_1003A9710(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CodableRemoteScreenShareAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CodableRemoteScreenShareAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        break;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScreenSharingActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1003A999C()
{
  result = qword_1006A8608;
  if (!qword_1006A8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8608);
  }

  return result;
}

unint64_t sub_1003A99F4()
{
  result = qword_1006A8610;
  if (!qword_1006A8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8610);
  }

  return result;
}

unint64_t sub_1003A9A4C()
{
  result = qword_1006A8618;
  if (!qword_1006A8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8618);
  }

  return result;
}

unint64_t sub_1003A9AA4()
{
  result = qword_1006A8620;
  if (!qword_1006A8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8620);
  }

  return result;
}

unint64_t sub_1003A9AFC()
{
  result = qword_1006A8628;
  if (!qword_1006A8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8628);
  }

  return result;
}

unint64_t sub_1003A9B54()
{
  result = qword_1006A8630;
  if (!qword_1006A8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8630);
  }

  return result;
}

uint64_t sub_1003A9BAC(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_1003A9BF8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A9BAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003A9C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003A9BD4(*v1);
  *a1 = result;
  return result;
}

id sub_1003A9CA0(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_failed] = 2;
  v4 = [a1 deviceType];
  if ((v4 - 6) > 0x16)
  {
    v5 = 6;
  }

  else
  {
    v5 = byte_1005844A6[(v4 - 6)];
  }

  v1[OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_type] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

uint64_t sub_1003A9D88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1003A9E4C(char a1)
{
  if (a1)
  {
    return 0x64656C696166;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1003A9E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003A9D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003A9EA8(uint64_t a1)
{
  v2 = sub_1003AA32C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A9EE4(uint64_t a1)
{
  v2 = sub_1003AA32C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for RTCCSDRelayDeviceRoute.RTCCSDAudioRouteType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RTCCSDRelayDeviceRoute.RTCCSDAudioRouteType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003AA0AC()
{
  result = qword_1006A8670;
  if (!qword_1006A8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8670);
  }

  return result;
}

uint64_t sub_1003AA100(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006A8678, &qword_100584388);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1003AA32C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[15] = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_type);
  v14[14] = 0;
  sub_1003AA380();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_failed);
    v14[13] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_1003AA2B0(uint64_t a1)
{
  result = sub_1003AA2D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003AA2D8()
{
  result = qword_1006A6D10;
  if (!qword_1006A6D10)
  {
    type metadata accessor for RTCCSDRelayDeviceRoute();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D10);
  }

  return result;
}

unint64_t sub_1003AA32C()
{
  result = qword_1006A8680;
  if (!qword_1006A8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8680);
  }

  return result;
}

unint64_t sub_1003AA380()
{
  result = qword_1006A8688;
  if (!qword_1006A8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8688);
  }

  return result;
}

unint64_t sub_1003AA3D4()
{
  result = qword_1006A8690;
  if (!qword_1006A8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8690);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RTCCSDRelayDeviceRoute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1003AA508()
{
  result = qword_1006A8698;
  if (!qword_1006A8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8698);
  }

  return result;
}

unint64_t sub_1003AA560()
{
  result = qword_1006A86A0;
  if (!qword_1006A86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A86A0);
  }

  return result;
}

unint64_t sub_1003AA5B8()
{
  result = qword_1006A86A8;
  if (!qword_1006A86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A86A8);
  }

  return result;
}

uint64_t sub_1003AA824(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1003AA8F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1003AA9AC()
{
  v1 = v0;
  swift_getObjectType();
  v23 = _typeName(_:qualified:)();
  v2._countAndFlagsBits = 40;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = v23;
  v23 = 0x3D73746E656D6F6DLL;
  v24 = 0xE800000000000000;
  v20._countAndFlagsBits = *(v0 + OBJC_IVAR___CSDMomentsControllerSession_moments);
  swift_unknownObjectRetain();
  sub_10026D814(&unk_1006A8710, &unk_1005844E8);
  v4._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v4);

  sub_100008000(v5);

  v6._countAndFlagsBits = 0x3D73746E656D6F6DLL;
  v6._object = 0xE800000000000000;
  String.append(_:)(v6);

  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v20._countAndFlagsBits = 0xD000000000000016;
  v20._object = 0x8000000100570D00;
  v7 = OBJC_IVAR___CSDMomentsControllerSession_remoteIDSDestinations;
  swift_beginAccess();
  v21 = *(v1 + v7);

  sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  v8._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v8);

  sub_100008000(v9);

  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x8000000100570D00;
  String.append(_:)(v10);

  _StringGuts.grow(_:)(16);

  strcpy(&v20, "isRegistered=");
  HIWORD(v20._object) = -4864;
  LOBYTE(v21) = *(v1 + OBJC_IVAR___CSDMomentsControllerSession_isRegistered);
  v11._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v11);

  sub_100008000(v12);

  String.append(_:)(v20);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v21 = 0xD00000000000001ELL;
  v22 = 0x8000000100570D20;
  v13 = OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v19 = *(v1 + v13);

  sub_10026D814(&unk_1006A8720, &qword_1005844F8);
  v14._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v14);

  sub_100008000(v15);

  v16._countAndFlagsBits = 0xD00000000000001ELL;
  v16._object = 0x8000000100570D20;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  return v3;
}

id sub_1003AAD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR___CSDMomentsControllerSession_isRegistered] = 1;
  *&v3[OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___CSDMomentsControllerSession_moments] = a1;
  *&v3[OBJC_IVAR___CSDMomentsControllerSession_remoteIDSDestinations] = a2;
  *&v3[OBJC_IVAR___CSDMomentsControllerSession_callCenterObserver] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1003AAE30(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 queue];

  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = &v20;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1003AB8F0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_10062BD50;
  v9 = _Block_copy(aBlock);

  v10 = v2;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v20)
    {
      v13 = sub_100004778();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v14 = OBJC_IVAR___CSDMomentsControllerSession_remoteIDSDestinations;
      swift_beginAccess();
      if (a2)
      {
        v15 = sub_1002CB47C(a1, a2, *&v10[v14]);
        swift_endAccess();
      }

      else
      {
        v17 = *&v10[v14];

        v15 = sub_1002E8EA8(v18);
      }
    }

    else
    {
      v16 = sub_100004778();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return 0;
    }

    return v15;
  }

  return result;
}

void sub_1003AB14C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v32 = *(a1 + OBJC_IVAR___CSDMomentsControllerSession_callCenterObserver);
  v6 = [v32 callContainer];
  aBlock[4] = sub_1003AA60C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E470;
  aBlock[3] = &unk_10062BD78;
  v7 = _Block_copy(aBlock);

  v8 = [v6 callsPassingTest:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_28;
  }

  sub_100015958();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_10000B6F4(v9);
  if (!v10)
  {
LABEL_25:

    return;
  }

  v11 = v10;
  v12 = 0;
  v33 = OBJC_IVAR___CSDMomentsControllerSession_moments;
  v13 = v9 & 0xC000000000000001;
  v30 = v9 & 0xFFFFFFFFFFFFFF8;
  v31 = v9;
  if ((v9 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v9 + 8 * v12 + 32))
  {
    v15 = i;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (a3)
    {
      v17 = [v32 activeConversationForCall:i];
      if (!v17)
      {

        if ((*a4 & 1) != 0 || v16 == v11)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v18 = v17;
      v19 = v11;
      v20 = v13;
      v21 = a3;
      v22 = a4;
      v23 = [v17 avcSessionToken];
      v24 = [*(a1 + v33) streamToken];

      v25 = v23 == v24;
      a4 = v22;
      a3 = v21;
      v13 = v20;
      v11 = v19;
      v9 = v31;
    }

    else
    {
      v26 = [i videoStreamToken];
      v27 = [*(a1 + v33) streamToken];

      v25 = v26 == v27;
    }

    v28 = v25;
    *a4 = v28;
    if (v25 || v16 == v11)
    {
      goto LABEL_25;
    }

LABEL_23:
    ++v12;
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v12 >= *(v30 + 16))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_1003AB408(void *a1)
{
  result = [a1 isVideo];
  if (result)
  {
    if ([a1 status] == 1)
    {
      return ([a1 isVideoPaused] ^ 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003AB478(void *a1, SEL *a2)
{
  if (a1 && (v2 = [a1 *a2]) != 0)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_1003AAE30(v4, v6);

  return v7;
}

id sub_1003AB504(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = a1;
  v6 = swift_unknownObjectRetain();
  sub_1003AB478(v6, a4);
  v8 = v7;
  swift_unknownObjectRelease();

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1003AB598(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v9 = a1;
  v10 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100379D24(v9, a2, a3, isUniquelyReferenced_nonNull_native, v12, v13, v14, v15, *(v4 + v8), v18);
  *(v4 + v8) = v17;
  return swift_endAccess();
}

uint64_t sub_1003AB6B0()
{
  v1 = v0;
  v2 = OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = sub_100005208();
  if (v5)
  {
    v6 = v4;
    v7 = *(v1 + v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + v2);
    v9 = v13[3];
    sub_10026D814(&unk_1006A8700, &unk_100582730);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
    v10 = *(v13[6] + 16 * v6 + 8);

    v11 = *(v13[7] + 8 * v6);
    type metadata accessor for MomentsRequest();
    _NativeDictionary._delete(at:)();
    *(v1 + v2) = v13;
  }

  return swift_endAccess();
}

void *sub_1003AB91C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_10000FAFC(OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_updateBadgeValue);
  v7 = OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_badgeCategory;
  v8 = type metadata accessor for BadgeCountCategory();
  sub_10000AF74(&v3[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_notificationType;
  v3[v9] = sub_1003ABCA0() & 1;
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B510(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_categories] = v10;
  sub_10000FAFC(OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_add);
  sub_10000FAFC(OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_replace);
  sub_10000FAFC(OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_removeNotification);
  *&v3[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_queue] = a1;
  *&v3[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_notificationCenter] = a2;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v11 = a1;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v27, "init");
  v14 = qword_1006A0BB8;
  v15 = v13;
  v19 = v15;
  if (v14 != -1)
  {
    v15 = swift_once();
  }

  sub_10000F784(v15, v16, v17, v18, qword_1006BA770);

  v20 = qword_1006A0BC0;
  v21 = v19;
  v25 = v21;
  if (v20 != -1)
  {
    v21 = swift_once();
  }

  sub_10000F784(v21, v22, v23, v24, qword_1006BA778);

  return v25;
}

id sub_1003ABAF4(void *a1)
{
  v1 = 0xD000000000000014;
  v2 = [a1 recordingState];
  result = TUBundle();
  v4 = result;
  if (v2 == 3)
  {
    if (result)
    {
      v5 = "CALL_RECORDING_SAVED";
      v1 = 0xD000000000000016;
LABEL_6:
      v10._object = 0xE000000000000000;
      v6.value._countAndFlagsBits = 0x6F6365526C6C6143;
      v6.value._object = 0xED0000676E696472;
      v7._object = (v5 | 0x8000000000000000);
      v7._countAndFlagsBits = v1;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v10._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v4, v8, v10)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else if (result)
  {
    v5 = "ding information";
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003ABBD8()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006A8778, &qword_100584578);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_notificationType))
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v6 = v1;

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  return v6;
}

id sub_1003ABCA0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result deviceType];

    return ((v2 > 9) | (0x1EDu >> v2) & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003ABD58(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_100004778();
  static os_log_type_t.error.getter();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D6A0;
  v6 = v2;
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v5 + 56) = &type metadata for String;
  v10 = sub_100009D88();
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_100009B14(a1, v11);
  v13 = (*(v12 + 16))(v11, v12);
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v10;
  *(v5 + 72) = v13;
  *(v5 + 80) = v14;
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_1003ABE94(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Notification();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v22[1] = *&v1[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_queue];
  (*(v14 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  *(v18 + ((v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_1003ACD8C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062BE60;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v7, v3);
  (*(v23 + 8))(v12, v24);
}

void sub_1003AC1DC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057D690;
  (*(v3 + 16))(v7, a1, v2);
  v10 = String.init<A>(reflecting:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100009D88();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  Notification.object.getter();
  if (!v17)
  {
    sub_100009A5C(v16, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_5;
  }

  sub_100006AF0(0, &qword_1006A7A60, TUCallRecordingSession_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v13 = sub_100004778();
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_6;
  }

  v13 = v15;
  sub_1003AC414(v15);
LABEL_6:
}

uint64_t sub_1003AC414(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v67 = v6;
  v68 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5, v9);
  sub_100007FDC();
  v66 = v11 - v10;
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_100007FEC(v12);
  v64 = v14;
  v65 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  sub_100007FDC();
  v63 = v19 - v18;
  v61 = type metadata accessor for UUID();
  v20 = sub_100007FEC(v61);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v29 = type metadata accessor for URL();
  v30 = sub_100007FEC(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30, v35);
  sub_100007FDC();
  v38 = v37 - v36;
  v39 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_1003ABAF4(a1);
  v40 = String._bridgeToObjectiveC()();

  [v39 setTitle:v40];

  v41 = [objc_opt_self() openNoteURLForRecordingSession:a1];
  if (v41)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v42);
    v41 = v43;
    (*(v32 + 8))(v38, v29);
  }

  [v39 setDefaultActionURL:{v41, v61}];

  [v39 setCategoryIdentifier:TUNotificationCategoryIdentifierCallRecording];
  sub_100006AF0(0, &qword_1006A8780, UNNotificationIcon_ptr);
  v44 = sub_1003ACA58();
  [v39 setIcon:v44];

  [v39 setShouldIgnoreDoNotDisturb:1];
  v45 = sub_1003ABBD8();
  sub_1004554A0(v45, v46, v39);
  v47 = [objc_opt_self() triggerWithTimeInterval:0 repeats:1.0];
  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v48 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = UUID.uuidString.getter();
  v51 = v50;
  (*(v22 + 8))(v28, v62);
  v52 = v39;
  v53 = v47;
  v54 = sub_10044F628(v49, v51, v52, v47);
  v55 = *&v2[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_queue];
  v56 = swift_allocObject();
  *(v56 + 16) = v2;
  *(v56 + 24) = v54;
  aBlock[4] = sub_1003ACE18;
  aBlock[5] = v56;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062BEB0;
  v57 = _Block_copy(aBlock);
  v58 = v2;
  v59 = v54;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v57);

  (*(v67 + 8))(v66, v68);
  (*(v64 + 8))(v63, v65);
}

id sub_1003ACA58()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() iconForApplicationIdentifier:v0];

  return v1;
}

uint64_t sub_1003ACABC(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_add);
  if (v2)
  {
    v4 = *(result + OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_add + 8);

    v2(a2);

    return sub_1000051F8(v2);
  }

  return result;
}

uint64_t type metadata accessor for CallRecordingNotificationProvider()
{
  result = qword_1006A8768;
  if (!qword_1006A8768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ACC98()
{
  sub_1002FAAA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1003ACD8C()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1003AC1DC(v0 + v2);
}

id sub_1003ACE20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ReminderStore();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_10045927C();
  v8 = sub_1003AE0D4(a1, v7);
  swift_getObjectType();
  v9 = *((swift_isaMask & *v2) + 0x30);
  v10 = *((swift_isaMask & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t sub_1003ACEF4(void *a1)
{
  v3 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_10000AF74(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v1;
  v10 = a1;
  v11 = v1;
  sub_1002762F0();
}

uint64_t sub_1003ACFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003AD0E0, 0, 0);
}

id sub_1003AD0E0()
{
  v1 = sub_10039BD00(*(v0 + 16));
  if (!v1 || (v2 = sub_1002E8D2C(v1), *(v0 + 72) = v2, , !v2))
  {
    v6 = *(v0 + 24) + OBJC_IVAR___CSDRecentCallReminderManager_logger;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      sub_10000F590(&_mh_execute_header, v9, v10, "Could not find call handle");
      sub_100005F40();
    }

LABEL_10:

LABEL_11:
    v15 = *(v0 + 64);
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);

    sub_100009EF4();

    return v18();
  }

  [*(v0 + 16) duration];
  if (v3 <= 10.0)
  {
    v11 = *(v0 + 24) + OBJC_IVAR___CSDRecentCallReminderManager_logger;
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      *swift_slowAlloc() = 0;
      sub_10000F590(&_mh_execute_header, v13, v14, "Call duration was less than 10 seconds, not marking reminder as complete");
      sub_100005F40();
    }

    goto LABEL_10;
  }

  v4 = sub_1003ADA38(v2);
  v5 = *(v0 + 24);
  v20 = v4;

  v21 = v2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v49 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 134218242;
    *(v25 + 4) = sub_10000B6F4(v20);

    *(v25 + 12) = 2112;
    *(v25 + 14) = v21;
    *v26 = v2;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Found %ld calls having reminderUUID with handle: %@", v25, 0x16u);
    sub_100009A5C(v26, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {
  }

  v28 = *(v0 + 56);
  result = sub_10000B6F4(v20);
  v29 = 0;
  v52 = v20 & 0xC000000000000001;
  v53 = result;
  v51 = v20 & 0xFFFFFFFFFFFFFF8;
  v30 = _swiftEmptyArrayStorage;
  v50 = (v28 + 32);
  while (1)
  {
    *(v0 + 80) = v30;
    if (v53 == v29)
    {
      break;
    }

    if (v52)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v51 + 16))
      {
        goto LABEL_40;
      }

      result = *(v20 + 8 * v29 + 32);
    }

    v31 = result;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    v32 = v20;
    v33 = [result reminderUUID];
    if (v33)
    {
      v34 = v33;
      v35 = *(v0 + 32);
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v38 = *(v0 + 40);
    v37 = *(v0 + 48);
    v39 = *(v0 + 32);

    sub_10000AF74(v39, v36, 1, v37);
    sub_100286068(v39, v38);
    if (sub_100015468(v38, 1, v37) == 1)
    {
      result = sub_100009A5C(*(v0 + 40), &unk_1006A3DD0, &unk_10057C9D0);
      ++v29;
      v20 = v32;
    }

    else
    {
      v40 = *v50;
      (*v50)(*(v0 + 64), *(v0 + 40), *(v0 + 48));
      v20 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100470054(0, *(v30 + 2) + 1, 1, v30);
        v30 = v45;
      }

      v42 = *(v30 + 2);
      v41 = *(v30 + 3);
      if (v42 >= v41 >> 1)
      {
        sub_100470054(v41 > 1, v42 + 1, 1, v30);
        v30 = v46;
      }

      v43 = *(v0 + 64);
      v44 = *(v0 + 48);
      *(v30 + 2) = v42 + 1;
      result = v40(&v30[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v42], v43, v44);
      ++v29;
    }
  }

  if (!*(v30 + 2))
  {

    goto LABEL_11;
  }

  v47 = *sub_100009B14((*(v0 + 24) + OBJC_IVAR___CSDRecentCallReminderManager_reminderStore), *(*(v0 + 24) + OBJC_IVAR___CSDRecentCallReminderManager_reminderStore + 24));
  v48 = swift_task_alloc();
  *(v0 + 88) = v48;
  *v48 = v0;
  v48[1] = sub_1003AD714;

  return sub_1004583A4(v30);
}

uint64_t sub_1003AD714()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1003AD8BC;
  }

  else
  {
    v4 = sub_1003AD844;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003AD844()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  sub_100009EF4();

  return v4();
}

uint64_t sub_1003AD8BC()
{
  v1 = v0[12];
  v2 = v0[3];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not mark reminders as completed due to error: %@", v7, 0xCu);
    sub_100009A5C(v8, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {
  }

  v10 = v0[8];
  v11 = v0[4];
  v12 = v0[5];

  sub_100009EF4();

  return v13();
}

uint64_t sub_1003ADA38(uint64_t a1)
{
  v2 = v1;
  sub_10026D814(&qword_1006A87D8, &unk_1005845D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  v5 = objc_opt_self();
  *(inited + 32) = [v5 predicateForCallsHavingReminder];
  v6 = 0;
  *(inited + 40) = [v5 predicateForCallsWithRemoteParticipantHandle:a1];
  while (v6 != 2)
  {
    v7 = *(inited + 8 * v6++ + 32);
    if (v7)
    {
      v8 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  swift_setDeallocating();
  sub_1002F5D08();
  v9 = sub_10000C350();
  v10 = [*(v2 + OBJC_IVAR___CSDRecentCallReminderManager_recentsManager) callsWithPredicate:v9 limit:0 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

uint64_t type metadata accessor for RecentCallReminderManager()
{
  result = qword_1006A87C8;
  if (!qword_1006A87C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003ADD98()
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

uint64_t sub_1003ADE40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1003ADF00;

  return sub_1003ACFDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1003ADF00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_100009EF4();

  return v2();
}

id sub_1003ADFF0(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v10[3] = type metadata accessor for ReminderStore();
  v10[4] = &off_1006310B8;
  v10[0] = a2;
  Logger.init(subsystem:category:)();
  *&a3[OBJC_IVAR___CSDRecentCallReminderManager_recentsManager] = a1;
  sub_100009AB0(v10, &a3[OBJC_IVAR___CSDRecentCallReminderManager_reminderStore]);
  v9.receiver = a3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_100009B7C(v10);
  return v7;
}

id sub_1003AE0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStore();
  v14[3] = v4;
  v14[4] = &off_1006310B8;
  v14[0] = a2;
  v5 = objc_allocWithZone(type metadata accessor for RecentCallReminderManager());
  v6 = sub_10001BDB8(v14, v4);
  v7 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v6, v6);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_1003ADFF0(a1, *v9, v5);
  sub_100009B7C(v14);
  return v11;
}

void sub_1003AE208()
{
  if (*(v0 + 16))
  {
    sub_1003AE9E4();
  }

  else
  {
    sub_1003AE81C(1);
  }
}

void sub_1003AE24C()
{
  if (*(v0 + 16) > 1u)
  {
    sub_1003AE9E4();
  }

  else
  {
    sub_1003AE81C(2);
  }
}

_UNKNOWN **sub_1003AE294()
{
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_100006DC4() = 0;
    sub_10001046C(&_mh_execute_header, v4, v5, "Stop translation for inactive call");
    sub_100009ED0();
  }

  result = &off_100620420;
  switch(*(v0 + 16))
  {
    case 1:
      sub_10000F7A8();
      result = &off_1006203D0;
      break;
    case 2:
      sub_1003AE81C(3);
      result = &off_1006203F8;
      break;
    case 3:
      return result;
    case 4:
      sub_10000F7A8();
      result = &off_100620448;
      break;
    case 5:
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v7, v8))
      {
        *sub_100006DC4() = 0;
        sub_100015268(&_mh_execute_header, v9, v10, "Unable to stop a completed call translation session");
        sub_100009ED0();
      }

      sub_1002B6680();
      sub_100008248();
      *v11 = 0;
      result = swift_willThrow();
      break;
    default:
      sub_10000F7A8();
      result = &off_1006203A8;
      break;
  }

  return result;
}

_UNKNOWN **sub_1003AE440()
{
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA688);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_100006DC4() = 0;
    sub_10001046C(&_mh_execute_header, v4, v5, "Stop translation for active call");
    sub_100009ED0();
  }

  result = &off_100620358;
  switch(*(v0 + 16))
  {
    case 1:
      sub_1003AE81C(4);
      result = &off_100620308;
      break;
    case 2:
      sub_1003AE81C(3);
      result = &off_100620330;
      break;
    case 3:
      return result;
    case 4:
      result = &off_100620380;
      break;
    case 5:
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v7, v8))
      {
        *sub_100006DC4() = 0;
        sub_100015268(&_mh_execute_header, v9, v10, "Unable to stop a completed call translation session");
        sub_100009ED0();
      }

      sub_1002B6680();
      sub_100008248();
      *v11 = 1;
      result = swift_willThrow();
      break;
    default:
      sub_10000F7A8();
      result = &off_1006202E0;
      break;
  }

  return result;
}

uint64_t sub_1003AE5F4(char a1)
{
  v2 = v1;
  if ((*(v1 + 16) & 0xFE) == 2)
  {
    if (a1)
    {
      sub_1003AE81C(4);
      return 1;
    }

    else
    {
      sub_10000F7A8();
      return 2;
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_100008170();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA688);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v13 = *(v2 + 16);
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002741C(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Finish is called via invalid state: %s", v7, 0xCu);
      sub_100009B7C(v8);
      sub_100009ED0();

      sub_100009ED0();
    }

    sub_1002B6680();
    sub_100008248();
    *v12 = 2;
    return swift_willThrow();
  }
}

void sub_1003AE7A8(char a1)
{
  switch(*(v1 + 16))
  {
    case 0:
    case 4:
      goto LABEL_4;
    case 1:
    case 3:
      if (a1)
      {
        goto LABEL_3;
      }

LABEL_4:
      sub_1003AE81C(5);
      break;
    default:
LABEL_3:
      v2 = *(v1 + 16);
      sub_1003AE9E4();
      break;
  }
}

void sub_1003AE81C(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA688);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = String.init<A>(reflecting:)();
    v8 = sub_10002741C(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Transitioning from %s to %s", v5, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {
  }
}

uint64_t sub_1003AE9E4()
{
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA688);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = String.init<A>(reflecting:)();
    v6 = sub_10002741C(v4, v5, &v12);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = String.init<A>(reflecting:)();
    v9 = sub_10002741C(v7, v8, &v12);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unpexected state %s expected %s", v3, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  sub_1002B6680();
  sub_100008248();
  *v10 = 3;
  return swift_willThrow();
}

_BYTE *sub_1003AEBD4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003AECB0()
{
  result = qword_1006A88E8;
  if (!qword_1006A88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A88E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationLinkCryptoErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1003AED8C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1003AEE64(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1003AEF40()
{
  result = qword_1006A88F0;
  if (!qword_1006A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A88F0);
  }

  return result;
}

unint64_t sub_1003AEF98()
{
  result = qword_1006A88F8;
  if (!qword_1006A88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A88F8);
  }

  return result;
}

uint64_t sub_1003AEFEC(void *a1)
{
  v3 = [a1 remoteMember];
  if (v3 && (v4 = v3, v5 = [v3 handle], v4, v5))
  {
    v6 = [v5 value];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    v7 = [objc_opt_self() suggestedNamesForDestinationID:v6 onlySignificant:1 supportsInfoLookup:0 error:0];

    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(v8 + 16);

    LODWORD(v7) = [objc_msgSend(v1 "featureFlags")];
    swift_unknownObjectRelease();
    v60 = v5;
    if (v7)
    {
      v10 = [a1 commTrustScore] == 8;
    }

    else
    {
      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10057D690;
      v16 = [v5 value];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      v20 = sub_1003AF974(v15);

      if (v20)
      {
        v21 = *(v20 + 16);

        v10 = v21 != 0;
      }

      else
      {
        v10 = 0;
      }
    }

    v58 = v10;
    v61 = sub_1003AFC60(a1);
    v63 = sub_1003AFDE8(a1);
    v22 = [a1 silencingUserInfo];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = [objc_allocWithZone(NSNumber) initWithBool:v10];
    [v22 __swift_setObject:v23 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    v24 = [a1 silencingUserInfo];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = [objc_allocWithZone(NSNumber) initWithBool:v9 != 0];
    [v24 __swift_setObject:v25 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    v26 = [a1 silencingUserInfo];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = [objc_allocWithZone(NSNumber) initWithBool:?];
    v28 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1000086C0(v28);

    swift_unknownObjectRelease();
    v59 = a1;
    v29 = [a1 silencingUserInfo];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v9;
    v31 = 1;
    v32 = [objc_allocWithZone(NSNumber) initWithBool:(v63 & 1) == 0];
    v33 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1000086C0(v33);

    swift_unknownObjectRelease();
    if (!v58)
    {
      v31 = (v30 != 0) | v61 | v63;
    }

    v62 = v31;
    v34 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10057DDF0;
    v57 = type metadata accessor for ContactsCallFilter();
    *(v35 + 56) = v57;
    v36 = sub_1003B07A0();
    *(v35 + 64) = v36;
    *(v35 + 32) = v1;
    v37 = v1;
    v38 = sub_10000F7C0();
    v40 = v39;
    *(v35 + 96) = &type metadata for String;
    v41 = sub_100009D88();
    *(v35 + 104) = v41;
    *(v35 + 72) = v38;
    *(v35 + 80) = v40;
    v42 = sub_10000F7C0();
    *(v35 + 136) = &type metadata for String;
    *(v35 + 144) = v41;
    *(v35 + 112) = v42;
    *(v35 + 120) = v43;
    v44 = sub_10000F7C0();
    *(v35 + 176) = &type metadata for String;
    *(v35 + 184) = v41;
    *(v35 + 152) = v44;
    *(v35 + 160) = v45;
    v46 = sub_10000F7C0();
    *(v35 + 216) = &type metadata for String;
    *(v35 + 224) = v41;
    *(v35 + 192) = v46;
    *(v35 + 200) = v47;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v48 = sub_100004778();
    v49 = sub_100009F24();
    *(v49 + 16) = xmmword_10057D6A0;
    *(v49 + 56) = v57;
    *(v49 + 64) = v36;
    *(v49 + 32) = v37;
    if (v62)
    {
      sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
      v50 = v37;
      v51 = v59;
      v52 = String.init<A>(reflecting:)();
      *(v49 + 96) = &type metadata for String;
      *(v49 + 104) = v41;
      *(v49 + 72) = v52;
      *(v49 + 80) = v53;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return 0;
    }

    *(v49 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v49 + 104) = sub_1003B0878();
    *(v49 + 72) = v59;
    v55 = v37;
    v56 = v59;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v11 = sub_100004778();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v12 = sub_100009F24();
    *(v12 + 16) = xmmword_10057D6A0;
    *(v12 + 56) = type metadata accessor for ContactsCallFilter();
    *(v12 + 64) = sub_1003B07A0();
    *(v12 + 32) = v1;
    *(v12 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v12 + 104) = sub_1003B0878();
    *(v12 + 72) = a1;
    v13 = v1;
    v14 = a1;
    sub_10000A990();
  }

  return 1;
}

BOOL sub_1003AF7B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    goto LABEL_6;
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10057D6A0;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    *(v9 + 48) = a3;
    *(v9 + 56) = a4;
  }

  else
  {
LABEL_6:
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10057D690;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
  }

  v10 = sub_1003AF974(v9);

  if (!v10)
  {
    return 1;
  }

  v11 = *(v10 + 16);

  return v11 == 0;
}

uint64_t sub_1003AF974(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_100006AF0(0, &qword_1006AB680, CNContactFetchRequest_ptr);

  v2 = sub_10042CF18();
  v3 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 predicateForContactsMatchingHandleStrings:isa];

  [v2 setPredicate:v5];
  v6 = *&v1[OBJC_IVAR___CSDContactsCallFilter_contactStore];
  v21 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v21];
  if (!v7)
  {
    v11 = v21;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = sub_100004778();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v14 = sub_100009F24();
    *(v14 + 16) = xmmword_10057D6A0;
    *(v14 + 56) = type metadata accessor for ContactsCallFilter();
    *(v14 + 64) = sub_1003B07A0();
    *(v14 + 32) = v1;
    v21 = v12;
    v15 = v1;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = sub_100009D88();
    *(v14 + 72) = v16;
    *(v14 + 80) = v18;
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v8 = v7;
  v9 = v21;
  v21 = [v8 value];
  sub_10026D814(&qword_1006A2DE8, &unk_100584830);
  if (swift_dynamicCast())
  {
    v10 = v20;
  }

  else
  {
    sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
    v10 = Dictionary.init(dictionaryLiteral:)();
  }

  return v10;
}

uint64_t sub_1003AFC60(void *a1)
{
  v3 = [a1 remoteMember];
  if (v3 && (v4 = v3, v5 = [v3 handle], v4, v6 = objc_msgSend(v5, "tuHandle"), v5, v6))
  {
    if ([a1 verificationStatus] == 1)
    {
      v7 = [*&v1[OBJC_IVAR___CSDContactsCallFilter_appleCareHandles] contains:v6];
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v8 = sub_100004778();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v9 = sub_100009F24();
    *(v9 + 16) = xmmword_10057D6A0;
    *(v9 + 56) = type metadata accessor for ContactsCallFilter();
    *(v9 + 64) = sub_1003B07A0();
    *(v9 + 32) = v1;
    *(v9 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v9 + 104) = sub_1003B0878();
    *(v9 + 72) = a1;
    v10 = v1;
    v11 = a1;
    sub_10000A990();

    return 1;
  }

  return v7;
}

uint64_t sub_1003AFDE8(void *a1)
{
  v83 = type metadata accessor for UUID();
  v3 = *(v83 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v83, v5);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = v70 - v11;
  v14 = __chkstk_darwin(v10, v13);
  v81 = v70 - v15;
  __chkstk_darwin(v14, v16);
  v18 = v70 - v17;
  v82 = v1;
  v19 = *&v1[OBJC_IVAR___CSDContactsCallFilter_carrierBundleController];
  v20 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
  v21 = [v19 serviceProviders];
  v22 = sub_100006AF0(0, &qword_1006A8940, off_1006165F8);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v23);
  if (!result)
  {

    goto LABEL_10;
  }

  if (result >= 1)
  {
    v70[1] = v22;
    v71 = v19;
    v72 = v8;
    v73 = a1;
    v74 = v12;
    v75 = v3;
    v25 = 0;
    v78 = (v3 + 16);
    v79 = v23 & 0xC000000000000001;
    v76 = (v3 + 8);
    v77 = xmmword_10057E830;
    v80 = v23;
    do
    {
      v26 = result;
      if (v79)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v23 + 8 * v25 + 32);
      }

      v28 = v27;
      ++v25;
      v29 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v30 = swift_allocObject();
      *(v30 + 16) = v77;
      *(v30 + 56) = type metadata accessor for ContactsCallFilter();
      *(v30 + 64) = sub_1003B07A0();
      v31 = v82;
      *(v30 + 32) = v82;
      v32 = v31;
      v33 = [v28 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = v83;
      (*v78)(v81, v18, v83);
      v35 = String.init<A>(reflecting:)();
      v37 = v36;
      (*v76)(v18, v34);
      *(v30 + 96) = &type metadata for String;
      v38 = sub_100009D88();
      *(v30 + 104) = v38;
      *(v30 + 72) = v35;
      *(v30 + 80) = v37;
      v39 = [v28 carrierPhoneNumbers];
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = v40;
      sub_10026D814(&unk_1006A3C60, &unk_10057D910);
      v41 = String.init<A>(reflecting:)();
      *(v30 + 136) = &type metadata for String;
      *(v30 + 144) = v38;
      *(v30 + 112) = v41;
      *(v30 + 120) = v42;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      result = v26;
      v23 = v80;
    }

    while (v26 != v25);

    v12 = v74;
    v3 = v75;
    v8 = v72;
    a1 = v73;
    v19 = v71;
    v20 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
LABEL_10:
    v43 = [a1 localSenderIdentityUUID];
    if (v43)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v12, v8, v83);
      v44 = [v19 v20[376]];
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v46, v47);
      v70[-2] = v12;
      sub_1002CB280(sub_1003B07F4, &v70[-4], v45);
      v43 = v48;

      if (v43)
      {
        v49 = [v43 carrierPhoneNumbers];

        v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = [a1 remoteMember];
        if (v51)
        {
          v52 = v51;
          v53 = [v51 handle];

          v54 = [v53 tuHandle];
          if (v54)
          {
            v74 = v12;
            v75 = v3;
            v55 = sub_100004778();
            sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
            v56 = sub_100009F24();
            *(v56 + 16) = xmmword_10057D6A0;
            *(v56 + 56) = type metadata accessor for ContactsCallFilter();
            *(v56 + 64) = sub_1003B07A0();
            v57 = v82;
            *(v56 + 32) = v82;
            *(v56 + 96) = sub_10026D814(&unk_1006A3C60, &unk_10057D910);
            *(v56 + 104) = sub_1003B0814();
            *(v56 + 72) = v50;
            v58 = v57;

            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            v59 = 0;
            v60 = *(v50 + 16);
            for (i = (v50 + 40); ; i += 2)
            {
              if (v60 == v59)
              {

                v43 = 0;
                goto LABEL_28;
              }

              if (v59 >= *(v50 + 16))
              {
                break;
              }

              v63 = *(i - 1);
              v62 = *i;

              v64 = [v54 value];
              v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v67 = v66;

              if (v63 == v65 && v62 == v67)
              {

                goto LABEL_27;
              }

              v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v69)
              {

LABEL_27:

                v43 = 1;
LABEL_28:
                v12 = v74;
                v3 = v75;
                goto LABEL_29;
              }

              ++v59;
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        v43 = 0;
      }

LABEL_29:
      (*(v3 + 8))(v12, v83);
    }

    return v43;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003B04E0(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v7, v2);
  return v9 & 1;
}

id sub_1003B05EC(uint64_t a1)
{
  v3 = OBJC_IVAR___CSDContactsCallFilter_contactStore;
  *&v1[v3] = [objc_opt_self() tu_contactStore];
  v4 = OBJC_IVAR___CSDContactsCallFilter_appleCareHandles;
  *&v1[v4] = [objc_allocWithZone(TUContactsDataProviderAppleCareHandles) init];
  v5 = OBJC_IVAR___CSDContactsCallFilter_carrierBundleController;
  *&v1[v5] = [objc_allocWithZone(CSDCarrierBundleProviderController) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ContactsCallFilter();
  v6 = objc_msgSendSuper2(&v8, "initWithFeatureFlags:", a1);
  swift_unknownObjectRelease();
  return v6;
}

id sub_1003B06EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactsCallFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003B07A0()
{
  result = qword_1006A8948;
  if (!qword_1006A8948)
  {
    type metadata accessor for ContactsCallFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8948);
  }

  return result;
}

unint64_t sub_1003B0814()
{
  result = qword_1006A8950;
  if (!qword_1006A8950)
  {
    sub_10026DCB4(&unk_1006A3C60, &unk_10057D910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8950);
  }

  return result;
}

unint64_t sub_1003B0878()
{
  result = qword_1006AB490;
  if (!qword_1006AB490)
  {
    sub_100006AF0(255, &qword_1006AB5C0, CXCallUpdate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB490);
  }

  return result;
}

id sub_1003B08E0()
{
  result = [objc_opt_self() sharedAVSystemController];
  if (!result)
  {
    if (qword_1006A0B60 != -1)
    {
      sub_100008478();
    }

    v1 = type metadata accessor for Logger();
    v2 = sub_100022D5C(v1, qword_1006BA6A0);
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Analytics: Failed to access shared AVSystemController", v4, 2u);
      sub_100005F40();
    }

    return 0;
  }

  return result;
}

void (*sub_1003B09C0())(uint64_t)
{
  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  Dictionary.init(dictionaryLiteral:)();
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationCallRingingToPickup);
  sub_100017DAC(objc_allocWithZone(NSNumber));
  sub_10001634C();
  sub_100011470();
  v2 = sub_10000EAEC();
  sub_10004FDE0(v2, v3, v4, v5, v6, v7, v8, v9, v77, v86);
  v10 = sub_10002F6B8(OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationForUserToActivateHold);
  sub_100017DAC(v10);
  sub_10001634C();
  sub_100011470();
  v11 = sub_10000EAEC();
  sub_10004FDE0(v11, v12, v13, v14, v15, v16, v17, v18, v78, v87);
  v19 = sub_10002F6B8(OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive);
  sub_100017DAC(v19);
  sub_10001634C();
  sub_100011470();
  v20 = sub_10000EAEC();
  sub_10004FDE0(v20, 0xD000000000000011, v21, v22, v23, v24, v25, v26, v79, v88);
  v27 = [objc_allocWithZone(NSNumber) initWithInteger:sub_1003B0D08()];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10004FDE0(v27, 0xD000000000000016, 0x8000000100571510, isUniquelyReferenced_nonNull_native, v29, v30, v31, v32, v80, v89);
  v33 = sub_10002F6B8(OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation);
  sub_100017DAC(v33);
  sub_10001634C();
  sub_100011470();
  v34 = sub_10000EAEC();
  sub_10004FDE0(v34, v35, v36, v37, v38, v39, v40, v41, v81, v90);
  v42 = sub_10002F6B8(OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation);
  sub_100017DAC(v42);
  sub_10001634C();
  sub_100011470();
  v43 = sub_10000EAEC();
  sub_10004FDE0(v43, v44, v45, v46, v47, v48, v49, v50, v82, v91);
  [objc_allocWithZone(NSNumber) initWithInt:*(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_endReason)];
  sub_10001634C();
  sub_100011470();
  v51 = sub_10000EAEC();
  sub_10004FDE0(v51, v52, 0xE90000000000006ELL, v53, v54, v55, v56, v57, v83, v92);
  v58 = [objc_allocWithZone(NSNumber) initWithDouble:*(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_confidenceScore)];
  swift_isUniquelyReferenced_nonNull_native();
  sub_100011470();
  sub_10004FDE0(v58, 0x6E656469666E6F43, 0xEF65726F63536563, v59, v60, v61, v62, v63, v84, v93);
  v64 = v94;
  v65 = sub_1003B08E0();
  if (v65)
  {
    v66 = v65;
    v67 = [v65 getSilentMode];

    [objc_allocWithZone(NSNumber) initWithBool:v67];
    swift_isUniquelyReferenced_nonNull_native();
    v68 = sub_10000EAEC();
    sub_10004FDE0(v68, v69, v70, v71, v72, v73, v74, v75, v85, v94);
    return v95;
  }

  return v64;
}

uint64_t sub_1003B0D08()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation);
  switch(v1)
  {
    case 3:
      if ((*(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation) - 3) < 2)
      {
        return 2;
      }

      break;
    case 1:
      v2 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation);
      if (v2 < 4)
      {
        v3 = &unk_100584A80;
        return v3[v2];
      }

      break;
    case 0:
      v2 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation);
      if (v2 < 4)
      {
        v3 = &unk_100584A60;
        return v3[v2];
      }

      break;
  }

  return 0;
}

id sub_1003B0D94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock;
  sub_10026D814(&qword_1006A89F8, &qword_100584A48);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v1[v2] = v3;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationForUserToActivateHold] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationCallRingingToPickup] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation] = 4;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation] = 2;
  v4 = type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v5, v6, v7, v4);
  sub_100007928();
  sub_10000AF74(v8, v9, v10, v4);
  v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask] = 0;
  sub_100007928();
  sub_10000AF74(v11, v12, v13, v4);
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_confidenceScore] = 0;
  v14 = &v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID];
  *v14 = 0;
  v14[1] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_delayCallPickedUpAndSentBack] = 10;
  *&v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_endReason] = 0;
  v15 = &v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_biomeStream;
  type metadata accessor for HoldAssistBiomeStream();
  sub_10000C1AC();
  *&v1[v17] = sub_100323AE4();
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SmartHoldingAnalyticsHelper();
  v18 = objc_msgSendSuper2(&v23, "init");
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  [v21 addObserver:v20 selector:"handleCallStatusChangedWithNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

  return v20;
}

void sub_1003B0FC8(void *a1)
{
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = sub_100007BF0(v3);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v40 - v12;
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44[0] = v42;
  v44[1] = v43;
  if (!*(&v43 + 1))
  {
    sub_1000099A4(v44, &unk_1006A2D10, &unk_10057D940);
    return;
  }

  sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v14 = v41;
  v15 = (v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID);
  v16 = *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID + 8);
  if (v16)
  {
    v17 = *v15;
    v18 = *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID + 8);

    v19 = [v14 callUUID];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v17 != v20 || v16 != v22)
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v25 = [v41 callUUID];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v15[1];
    *v15 = v26;
    v15[1] = v28;
  }

LABEL_17:
  v14 = v14;
  if ([v14 status] == 1)
  {
    v30 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_callDateConnected;
    swift_beginAccess();
    sub_100270E18(v1 + v30, v13);
    v31 = type metadata accessor for Date();
    v32 = sub_100015468(v13, 1, v31);
    sub_1000099A4(v13, &qword_1006A3C70, &unk_10057EA80);
    if (v32 == 1)
    {
      Date.init()();
      sub_10000AF74(v10, 0, 1, v31);
      sub_100008D34();
      sub_1003B3734(v10, v1 + v30);
      swift_endAccess();
    }
  }

  if ([v14 status] == 6)
  {
    v33 = [v14 disconnectedReason];
    *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_endReason) = v33;
    v34 = [v14 disconnectedReason];

    sub_1003B27E8(v34);
    type metadata accessor for Date();
    sub_100007928();
    sub_10000AF74(v35, v36, v37, v38);
    v39 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_callDateConnected;
    sub_100008D34();
    sub_1003B3734(v10, v1 + v39);
    swift_endAccess();
    return;
  }

LABEL_23:
}

uint64_t sub_1003B13B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v10);
  v12 = *(v11 + 64);
  sub_100006688();
  __chkstk_darwin(v13, v14);
  if (qword_1006A0B60 != -1)
  {
    sub_100008478();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100022D5C(v15, qword_1006BA6A0);
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v40 = a3;
    v18 = swift_slowAlloc();
    v19 = a1;
    v20 = swift_slowAlloc();
    v41 = v20;
    *v18 = 136315138;
    sub_100007CF4();
    *(v18 + 4) = sub_10002741C(0xD00000000000001BLL, v21, &v41);
    _os_log_impl(&_mh_execute_header, v16, v17, "Analytics: %s", v18, 0xCu);
    sub_100009B7C(v20);
    a1 = v19;
    sub_100005F40();
    a3 = v40;
    sub_100005F40();
  }

  sub_100018FC4(OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber);
  *v22 = a1;
  v22[1] = a2;

  v23 = &v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode];
  v24 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode + 8];
  *v23 = a3;
  *(v23 + 1) = a4;

  v25 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask];
  if (v25)
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (sub_10000BB44(v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Analytics: Canceling existing submission task", v28, 2u);
      sub_100005F40();
    }

    v29 = *&v5[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock];
    __chkstk_darwin(v30, v31);
    *(&v39 - 2) = sub_1003B400C;
    *(&v39 - 1) = v25;
    os_unfair_lock_lock(v29 + 4);
    sub_1003B408C();
    os_unfair_lock_unlock(v29 + 4);
    sub_1003B2DCC();
  }

  else
  {
  }

  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v32, v33, v34, v35);
  v36 = sub_10000C1AC();
  sub_1000172D8(v36);
  v37 = v5;
  sub_10000B9D4();
  sub_1002762F0();
}

uint64_t sub_1003B1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1003B1748, 0, 0);
}

void sub_1003B1748()
{
  sub_1000066BC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1003B4028;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  sub_100008C08();
  sub_1003B408C();
  os_unfair_lock_unlock(v3 + 4);

  if (!v2)
  {

    sub_100009EF4();
    sub_100006984();

    __asm { BRAA            X1, X16 }
  }

  sub_100006984();
}

uint64_t sub_1003B1824(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5, v8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v15, v18);
  v21 = &v28[-v20];
  if ((*(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) = 1;
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation) = 3;
    v22 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_callDateConnected;
    swift_beginAccess();
    sub_100270E18(a1 + v22, v10);
    if (sub_100015468(v10, 1, v11) == 1)
    {
      sub_1000099A4(v10, &qword_1006A3C70, &unk_10057EA80);
LABEL_8:
      Date.init()();
      sub_10000AF74(v7, 0, 1, v11);
      v27 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated;
      swift_beginAccess();
      sub_1003B3734(v7, a1 + v27);
      return swift_endAccess();
    }

    (*(v12 + 32))(v21, v10, v11);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v24 = v23;
    v25 = v23;
    v26 = *(v12 + 8);
    v26(v17, v11);
    result = (v26)(v21, v11);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationForUserToActivateHold) = v24;
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void sub_1003B1B08()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1003B408C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1003B1B7C()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v2);
  v4 = *(v3 + 64);
  sub_100006688();
  __chkstk_darwin(v5, v6);
  if (qword_1006A0B60 != -1)
  {
    sub_100008478();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100022D5C(v7, qword_1006BA6A0);
  v9 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    sub_100007CF4();
    *(v10 + 4) = sub_10002741C(0xD000000000000012, v12, &v24);
    sub_100005FCC(&_mh_execute_header, v13, v14, "Analytics: %s");
    sub_100009B7C(v11);
    sub_100005F40();
    sub_100005F40();
  }

  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v15, v16, v17, v18);
  v19 = sub_10000C1AC();
  sub_1000172D8(v19);
  v20 = v1;
  sub_10000B9D4();
  sub_100463218();
  v21 = *&v20[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask];
  *&v20[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask] = v22;
}

uint64_t sub_1003B1D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1003B1DE8, 0, 0);
}

uint64_t sub_1003B1DE8()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  v0[6] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1003B3EA0;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_1003B408C();
  v5 = v0[5];
  os_unfair_lock_unlock(v2 + 4);

  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1003B1F68;
  v7 = v0[5];
  sub_100007BBC();

  return sub_1003B3858();
}

uint64_t sub_1003B1F68()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2[7];
  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v9 + 64) = v0;

  (*(v5 + 8))(v4, v6);
  sub_100007BBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1003B20C4()
{
  sub_1000066BC();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1003B3EBC;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v2 + 4);
  sub_1003B408C();
  v6 = v0[6];
  if (v1)
  {
    os_unfair_lock_unlock(v6 + 4);
  }

  else
  {
    v8 = v0[5];
    os_unfair_lock_unlock(v6 + 4);

    sub_100009EF4();

    return v9();
  }
}

uint64_t sub_1003B21D0()
{
  sub_100006810();
  v1 = *(v0 + 40);

  sub_100009EF4();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1003B222C(uint64_t a1)
{
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v38 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v37 - v20;
  __chkstk_darwin(v19, v22);
  v24 = &v37 - v23;
  v25 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_userRequiresAttentionStarted;
  swift_beginAccess();
  sub_100270E18(a1 + v25, v11);
  if (sub_100015468(v11, 1, v12) == 1)
  {
    sub_1000099A4(v11, &qword_1006A3C70, &unk_10057EA80);
    goto LABEL_7;
  }

  v37 = v1;
  (*(v13 + 32))(v24, v11, v12);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v27 = v26;
  v28 = v26;
  v29 = *(v13 + 8);
  v29(v21, v12);
  result = (v29)(v24, v12);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationCallRingingToPickup) = v27;
LABEL_7:
  v31 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated;
  swift_beginAccess();
  sub_100270E18(a1 + v31, v8);
  if (sub_100015468(v8, 1, v12) == 1)
  {
    result = sub_1000099A4(v8, &qword_1006A3C70, &unk_10057EA80);
LABEL_13:
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation) = 0;
    return result;
  }

  v32 = v38;
  (*(v13 + 32))(v38, v8, v12);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v34 = v33;
  v35 = v33;
  v36 = *(v13 + 8);
  v36(v21, v12);
  result = (v36)(v32, v12);
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v34 < 9.22337204e18)
  {
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive) = v34;
    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1003B25E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1003B408C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1003B2658(uint64_t a1, double a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7, v10);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_userRequiresAttentionStarted;
  swift_beginAccess();
  sub_100270E18(a1 + v13, v12);
  v14 = type metadata accessor for Date();
  v15 = sub_100015468(v12, 1, v14);
  result = sub_1000099A4(v12, &qword_1006A3C70, &unk_10057EA80);
  if (v15 == 1)
  {
    Date.init()();
    sub_10000AF74(v9, 0, 1, v14);
    swift_beginAccess();
    sub_1003B3734(v9, a1 + v13);
    result = swift_endAccess();
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation) = 0;
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_confidenceScore) = a2;
  }

  return result;
}

uint64_t sub_1003B27E8(int a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v4);
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  if (qword_1006A0B60 != -1)
  {
    sub_100008478();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100022D5C(v9, qword_1006BA6A0);
  v11 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    sub_100007CF4();
    *(v12 + 4) = sub_10002741C(0xD00000000000001DLL, v13, &v24);
    *(v12 + 12) = 2080;
    type metadata accessor for TUCallDisconnectedReason(0);
    v14 = String.init<A>(reflecting:)();
    v16 = sub_10002741C(v14, v15, &v24);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Analytics: %s call disconnected with reason: %s", v12, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v17, v18, v19, v20);
  v21 = swift_allocObject();
  *(sub_1000172D8(v21) + 10) = a1;
  v22 = v2;
  sub_10000B9D4();
  sub_1002762F0();
}

uint64_t sub_1003B29F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_1003B2A1C, 0, 0);
}

void sub_1003B2A1C()
{
  sub_1000066BC();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v3 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_1003B3DF0;
  *(v6 + 24) = v5;
  os_unfair_lock_lock(v4 + 4);
  sub_100008C08();
  sub_1003B408C();
  os_unfair_lock_unlock(v4 + 4);

  if (!v1)
  {

    sub_100009EF4();
    sub_100006984();

    __asm { BRAA            X1, X16 }
  }

  sub_100006984();
}

uint64_t sub_1003B2B00(uint64_t a1, unsigned int a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13, v16);
  v19 = &v30 - v18;
  if (*(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) == 1)
  {
    if (a2 < 5)
    {
LABEL_3:
      v20 = 2;
      goto LABEL_4;
    }

    if (a2 == 6)
    {
      v20 = 1;
    }

    else
    {
      if (a2 == 41)
      {
        goto LABEL_3;
      }

      v20 = 5;
    }

LABEL_4:
    *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation) = v20;
    v21 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated;
    swift_beginAccess();
    sub_100270E18(a1 + v21, v8);
    if (sub_100015468(v8, 1, v9) == 1)
    {
      sub_1000099A4(v8, &qword_1006A3C70, &unk_10057EA80);
LABEL_10:
      sub_1003B305C();
      v26 = (a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber);
      v27 = *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber + 8);
      *v26 = 0;
      v26[1] = 0;

      v28 = (a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode);
      v29 = *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode + 8);
      *v28 = 0;
      v28[1] = 0;
    }

    (*(v10 + 32))(v19, v8, v9);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v23 = v22;
    v24 = v22;
    v25 = *(v10 + 8);
    v25(v15, v9);
    result = (v25)(v19, v9);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        *(a1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive) = v23;
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1003B2DCC()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v2);
  v4 = *(v3 + 64);
  sub_100006688();
  __chkstk_darwin(v5, v6);
  if (qword_1006A0B60 != -1)
  {
    sub_100008478();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100022D5C(v7, qword_1006BA6A0);
  v9 = static os_log_type_t.default.getter();
  if (sub_10000BB44(v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    sub_100007CF4();
    *(v10 + 4) = sub_10002741C(0xD000000000000014, v12, &v22);
    sub_100005FCC(&_mh_execute_header, v13, v14, "Analytics: %s");
    sub_100009B7C(v11);
    sub_100005F40();
    sub_100005F40();
  }

  type metadata accessor for TaskPriority();
  sub_100007928();
  sub_10000AF74(v15, v16, v17, v18);
  v19 = sub_10000C1AC();
  sub_1000172D8(v19);
  v20 = v1;
  sub_10000B9D4();
  sub_1002762F0();
}

uint64_t sub_1003B2F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1003B2F80, 0, 0);
}

void sub_1003B2F80()
{
  sub_1000066BC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_lock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_1003B3CE8;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  sub_100008C08();
  sub_1003B3D24();
  os_unfair_lock_unlock(v3 + 4);

  if (!v2)
  {

    sub_100009EF4();
    sub_100006984();

    __asm { BRAA            X1, X16 }
  }

  sub_100006984();
}

void sub_1003B305C()
{
  if (*(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) == 1)
  {
    sub_100007CF4();
    v1 = String._bridgeToObjectiveC()();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v17[4] = sub_1003B37A4;
    v17[5] = v2;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_1000518F8;
    v17[3] = &unk_10062C118;
    v3 = _Block_copy(v17);
    v4 = v0;

    AnalyticsSendEventLazy();
    _Block_release(v3);

    v5 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber + 8];
    if (v5)
    {
      if (*&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_biomeStream])
      {
        v6 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumber];
        v7 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode];
        v8 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_remotePhoneNumberCountryCode + 8];
        v9 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive];
        v10 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation];
        v11 = *&v4[OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation];
        v12 = sub_1003B0D08();

        sub_10032463C(v6, v5, v7, v8, v9, v10, v11, v12);
      }
    }

    else
    {
      if (qword_1006A0B60 != -1)
      {
        sub_100008478();
      }

      v13 = type metadata accessor for Logger();
      v14 = sub_100022D5C(v13, qword_1006BA6A0);
      v15 = static os_log_type_t.fault.getter();
      if (sub_10000BB44(v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Analytics: Remote phone number is nil", v16, 2u);
        sub_100005F40();
      }
    }

    sub_1003B32C0();
  }
}

uint64_t sub_1003B32C0()
{
  v1 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v1);
  v3 = *(v2 + 64);
  sub_100006688();
  __chkstk_darwin(v4, v5);
  v7 = &v21 - v6;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationForUserToActivateHold) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationCallRingingToPickup) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_durationOfSmartHoldActive) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_observation) = 4;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation) = 2;
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivatedInCall) = 0;
  v8 = type metadata accessor for Date();
  sub_100007928();
  sub_10000AF74(v9, v10, v11, v8);
  v12 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_userRequiresAttentionStarted;
  sub_100008D34();
  sub_1003B3734(v7, v0 + v12);
  swift_endAccess();
  sub_100007928();
  sub_10000AF74(v13, v14, v15, v8);
  v16 = OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingActivated;
  sub_100008D34();
  sub_1003B3734(v7, v0 + v16);
  swift_endAccess();
  v17 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask);
  *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_smartHoldingStoppedTask) = 0;

  v18 = (v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID);
  v19 = *(v0 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_trackingCallUUID + 8);
  *v18 = 0;
  v18[1] = 0;
}

id sub_1003B3428()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartHoldingAnalyticsHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmartHoldingAnalyticsHelper()
{
  result = qword_1006A89C8;
  if (!qword_1006A89C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B357C()
{
  sub_100316450();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1003B3688()
{
  result = qword_1006A89D8;
  if (!qword_1006A89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A89D8);
  }

  return result;
}

unint64_t sub_1003B36E0()
{
  result = qword_1006A89E0;
  if (!qword_1006A89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A89E0);
  }

  return result;
}

uint64_t sub_1003B3734(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B37C8()
{
  sub_10000C698();
  sub_100035BB0();
  v1 = swift_task_alloc();
  v2 = sub_10000A58C(v1);
  *v2 = v3;
  v4 = sub_10000A2DC(v2);

  return sub_1003B2F60(v4, v5, v6, v0);
}

uint64_t sub_1003B3858()
{
  sub_1000066BC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  v13 = *(v12 - 8);
  *(v1 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_100007BBC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1003B3950()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1003B3EE8(&qword_1006A89E8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003B3EE8(&qword_1006A89F0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1003B3AE0;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1003B3AE0()
{
  sub_1000066BC();
  sub_100005F18();
  v3 = v2;
  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[8];
  v9 = *v1;
  sub_100008060();
  *v10 = v9;
  v3[15] = v0;

  v6(v7, v8);
  if (v0)
  {
    sub_100007BBC();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = v3[10];
    v14 = v3[11];

    sub_100009EF4();

    return v16();
  }
}

uint64_t sub_1003B3C84()
{
  sub_100006810();
  v2 = v0[10];
  v1 = v0[11];

  sub_100009EF4();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1003B3D24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1003B3D4C()
{
  sub_1000066BC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = sub_10000A58C(v5);
  *v6 = v7;
  sub_10000A2DC(v6);
  sub_100006984();

  return sub_1003B29F8(v8, v9, v10, v11, v12);
}

uint64_t sub_1003B3E10()
{
  sub_10000C698();
  sub_100035BB0();
  v1 = swift_task_alloc();
  v2 = sub_10000A58C(v1);
  *v2 = v3;
  v4 = sub_10000A2DC(v2);

  return sub_1003B1D28(v4, v5, v6, v0);
}

uint64_t sub_1003B3EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003B3F30(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1003B3F7C()
{
  sub_10000C698();
  sub_100035BB0();
  v1 = swift_task_alloc();
  v2 = sub_10000A58C(v1);
  *v2 = v3;
  v4 = sub_10000A2DC(v2);

  return sub_1003B1728(v4, v5, v6, v0);
}

double sub_1003B4044()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_recommendation) = 1;
  *(v1 + OBJC_IVAR____TtC13callservicesd27SmartHoldingAnalyticsHelper_confidenceScore) = result;
  return result;
}

uint64_t sub_1003B40A4()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA568);
  sub_10000AF9C(v0, qword_1006BA568);
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006BA380;
  return Logger.init(_:)();
}

uint64_t sub_1003B4158()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA598);
  sub_10000A2F4();
  return sub_1000172E8();
}

uint64_t sub_1003B41CC()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA5C8);
  sub_10000A2F4();
  return sub_1000172E8();
}

uint64_t sub_1003B4238()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA5F8);
  sub_10000A2F4();
  return sub_10001048C();
}

uint64_t sub_1003B4388()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA6B8);
  sub_10000AF9C(v0, qword_1006BA6B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003B4430()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA6E8);
  sub_10000A2F4();
  return sub_10001048C();
}

uint64_t sub_1003B4484()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006BA700);
  sub_10000A2F4();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003B4514(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1002861B8(v3, a2);
  sub_10000AF9C(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003B458C()
{
  result = static os_log_type_t.error.getter();
  static os_log_type_t.errorWithState = result | 0x80;
  return result;
}

char *os_log_type_t.errorWithState.unsafeMutableAddressor()
{
  if (qword_1006A0B90 != -1)
  {
    sub_1000086E4();
  }

  return &static os_log_type_t.errorWithState;
}

uint64_t static os_log_type_t.errorWithState.getter()
{
  if (qword_1006A0B90 != -1)
  {
    sub_1000086E4();
  }

  swift_beginAccess();
  return static os_log_type_t.errorWithState;
}

uint64_t static os_log_type_t.errorWithState.setter(char a1)
{
  if (qword_1006A0B90 != -1)
  {
    sub_1000086E4();
  }

  result = swift_beginAccess();
  static os_log_type_t.errorWithState = a1;
  return result;
}

uint64_t (*static os_log_type_t.errorWithState.modify())()
{
  if (qword_1006A0B90 != -1)
  {
    sub_1000086E4();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

char *sub_1003B4734(char *__src, char *__dst, uint64_t a3)
{
  if (__dst)
  {
    return strncpy(__dst, __src, a3 - __dst);
  }

  __break(1u);
  return __src;
}

uint64_t sub_1003B4764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1003B4E10(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1003B4794(uint64_t a1, unint64_t a2)
{
  *&v35 = a1;
  *(&v35 + 1) = a2;

  sub_10026D814(&qword_1006A8A20, &qword_100584AA0);
  if (swift_dynamicCast())
  {
    sub_10002F0C8(v33, &v36);
    sub_100009B14(&v36, v37);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33[0] = v35;
    sub_100009B7C(&v36);
    goto LABEL_56;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_1003B5690(v33);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v33[0] = a1;
    *(&v33[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v33;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1003B4F44(v4, v5, &v36);
  v6 = *(&v36 + 1);
  v7 = v36;
  if (*(&v36 + 1) >> 60 != 15)
  {
    v33[0] = v36;
    goto LABEL_56;
  }

LABEL_9:
  *&v33[0] = Data._Representation.init(count:)();
  *(&v33[0] + 1) = v8;
  __chkstk_darwin(*&v33[0], v8);
  v9 = sub_1003B5060(sub_1003B5730);
  v11 = *(&v33[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v33[0]);
  switch(*(&v33[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v33[0]) - LODWORD(v33[0]);
      if (__OFSUB__(DWORD1(v33[0]), v33[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v33[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v33[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v33[0] + 16);
      v19 = *(*&v33[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v32 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v35 + 7) = 0;
      *&v35 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v33[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v26 = sub_100420EEC(v16, v12, v14);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v36 = v12;
      *(&v36 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v36 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v16 = sub_100420EEC(v16, v12, v14);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v35 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      *&v36 = v35;
      *(&v36 + 6) = *(&v35 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_100290B6C(v32, v6);
    goto LABEL_56;
  }

  *&v36 = v35;
  *(&v36 + 6) = *(&v35 + 6);
  Data._Representation.append(contentsOf:)();
  sub_100290B6C(v32, v6);
LABEL_55:

LABEL_56:
  v30 = v33[0];
  sub_100290AC4(*&v33[0], *(&v33[0] + 1));

  sub_100049B14(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_1003B4C8C(uint64_t a1, uint64_t a2)
{
  v12[3] = &type metadata for Data;
  v12[4] = &protocol witness table for Data;
  v12[0] = a1;
  v12[1] = a2;
  v2 = sub_100009B14(v12, &type metadata for Data);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_1003B55FC(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_1003B5424(v10, v5, &v11);
LABEL_9:
      v8 = v11;
      sub_100009B7C(v12);
      return v8;
  }
}

uint64_t sub_1003B4E10(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_100009B14(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = Data.InlineData.init(_:)();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = Data.LargeSlice.init(_:)();
    }

    else
    {
      v6 = Data.InlineSlice.init(_:)();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100009B7C(v8);
  return v6;
}

uint64_t sub_1003B4ECC()
{
  result = sub_1003B4794(0xD000000000000011, 0x8000000100571680);
  qword_1006A8A00 = result;
  *algn_1006A8A08 = v1;
  return result;
}

uint64_t sub_1003B4F08()
{
  result = sub_1003B4794(0xD000000000000012, 0x8000000100571660);
  qword_1006A8A10 = result;
  *algn_1006A8A18 = v1;
  return result;
}

uint64_t sub_1003B4F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1003B500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1003B54E4(sub_1003B578C, v5, a1, a2);
}

uint64_t sub_1003B5060(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100049B14(v6, v5);
      *v4 = xmmword_10057E760;
      sub_100049B14(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1003B5548(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100049B14(v6, v5);
      v19 = v6;
      v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_10057E760;
      sub_100049B14(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v19;
      v9 = sub_1003B5548(*(v19 + 16), *(v19 + 24), a1);
      if (v2)
      {
        v10 = v20 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v20 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v2)
      {
        return v19;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_100049B14(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        v3 = v19;
      }

      v8 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_1003B5424@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1003B549C(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003B54E4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1003B5548(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1003B55FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1003B5424(v7, v13, a3);
}

uint64_t sub_1003B5690(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A8A28, &qword_100584AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1003B56F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1003B500C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1003B574C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1003B549C(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationLinkCryptoErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003B588C()
{
  result = qword_1006A8A30;
  if (!qword_1006A8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8A30);
  }

  return result;
}

id sub_1003B58E0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  sub_100007FDC();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  sub_100007FDC();
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v38[0] = _swiftEmptyArrayStorage;
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_getObjectType();
  v35 = [objc_allocWithZone(TUFeatureFlags) init];
  v14 = type metadata accessor for ProtectedAppsObserver();
  v15 = [objc_allocWithZone(v14) init];
  v16 = objc_allocWithZone(type metadata accessor for ProcessObserver());
  v17 = v15;
  v18 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v20 = [v16 initWithBundleIdentifiers:isa queue:v18];

  v21 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallProviderBundleIDObserver();
  v22 = swift_allocObject();
  v23 = sub_1003B6020(v21, v22);
  v38[3] = v14;
  v38[4] = &off_10062ECA8;
  v38[0] = v17;
  v24 = type metadata accessor for ProtectedAppsUtilities();
  v25 = objc_allocWithZone(v24);
  v26 = sub_10001BDB8(v38, v14);
  v27 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v26, v26);
  sub_100007FDC();
  v30 = (v29 - v28);
  (*(v31 + 16))(v29 - v28);
  v32 = *v30;
  v37[3] = v14;
  v37[4] = &off_10062ECA8;
  v37[0] = v32;
  *&v25[OBJC_IVAR___CSDProtectedAppsUtilities_tuFeatureFlags] = v35;
  sub_100009AB0(v37, &v25[OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsObserver]);
  *&v25[OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsUtilitiesQueue] = v18;
  *&v25[OBJC_IVAR___CSDProtectedAppsUtilities_processObserver] = v20;
  *&v25[OBJC_IVAR___CSDProtectedAppsUtilities_providerObserver] = v23;
  v36.receiver = v25;
  v36.super_class = v24;
  v33 = objc_msgSendSuper2(&v36, "init");
  sub_100009B7C(v37);
  sub_100009B7C(v38);

  swift_deallocPartialClassInstance();
  return v33;
}

uint64_t sub_1003B5D30()
{
  v1 = *(v0 + OBJC_IVAR___CSDProtectedAppsUtilities_protectedAppsUtilitiesQueue);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_1003B5DA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR___CSDProtectedAppsUtilities_processObserver);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 fetchCurrentProcessStatesForBundleIdentifier:v4];

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v5) = sub_100308274(4, v6);

  *a2 = v5 & 1;
  return result;
}

id sub_1003B5E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003B5F30()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t sub_1003B5F80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003B5FA8()
{
  sub_1003B5F80();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1003B6000@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1003B5DA4(v1[2], a1);
}

uint64_t sub_1003B6020(uint64_t a1, uint64_t a2)
{
  sub_10026D814(&qword_1006A8B68, &qword_100584BD8);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = &_swiftEmptySetSingleton;
  *(a2 + 16) = v4;
  *(a2 + 24) = a1;
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:a2 selector:"handleCallStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];

  return a2;
}

__n128 sub_1003B60CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003B60E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1003B613C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  sub_1003B6A6C(v3);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 normalizedGenericHandleForValue:v6];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  v8 = [v3 handle];
  if (v8)
  {
    v6 = v8;
    v7 = [v3 handle];
    goto LABEL_5;
  }

  v21 = [v3 remoteParticipantHandles];
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_1002E932C();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_1002E8C08();

LABEL_6:
  v10 = v9;
  v11 = [v3 uniqueProxyIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = v3;
  v16 = sub_1003B6A08(v15);
  v17 = [v15 provider];
  v18 = [v15 isBlocked];
  if ([v15 isVideo])
  {
    v19 = 1;
    v20 = v10;
    v10 = v15;
  }

  else
  {
    v19 = [v15 isThirdPartyVideo];
    v20 = v15;
  }

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v9;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 41) = v19;
}

uint64_t sub_1003B6354(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6 || (sub_1003B6784(v5, v6) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v6)
  {
    goto LABEL_18;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v9 = v8;
    v10 = v7;
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v8)
  {
    goto LABEL_18;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v14 = *(a1 + 41) ^ *(a2 + 41) ^ 1;
    return v14 & 1;
  }

LABEL_18:
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1003B6484()
{
  v1 = v0;
  String.append(_:)(*v0);
  (sub_100008704)();
  v2._countAndFlagsBits = 0x444955556C6C6163;
  v2._object = 0xE90000000000003DLL;
  String.append(_:)(v2);

  _StringGuts.grow(_:)(22);

  v3._countAndFlagsBits = sub_1002915C4(*(v0 + 16));
  String.append(_:)(v3);

  sub_100008704(v4);
  v5 = sub_10000A9B8();
  sub_10000A314(v5);

  v6._countAndFlagsBits = sub_1002915B0(*(v0 + 24));
  String.append(_:)(v6);

  sub_100008704(v7);
  v8 = sub_10000A9B8();
  sub_10000A314(v8);

  v9 = [*(v0 + 32) description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000A314(v10);

  sub_100008704(v11);
  v12 = sub_10000A9B8();
  sub_10000A314(v12);

  if (*(v1 + 41))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + 41))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  sub_100008704(v16);

  v17._countAndFlagsBits = 0x656B636F6C427369;
  v17._object = 0xEA00000000003D64;
  String.append(_:)(v17);

  v18._countAndFlagsBits = v13;
  v18._object = v14;
  String.append(_:)(v18);

  sub_100008704(v19);

  v20._countAndFlagsBits = 0x3D6F656469567369;
  v20._object = 0xE800000000000000;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 41;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);

  return 0x72656469766F7270;
}

uint64_t sub_1003B6784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1003B6838(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (a2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 < 0)
    {
      v11 = v7;
    }

    if (v8)
    {
      v12 = v11;
    }

    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v13 = a2;
    }

    if (a2 >> 62)
    {
      v14 = v13;
    }

    if (v12 == v14)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    a4 = sub_100006AF0(0, a3, a4);
    v25 = v7;
    v15 = v7 & 0xC000000000000001;
    v7 = a2;
    v16 = a2 & 0xC000000000000001;
    v17 = 4;
    a2 = i;
    while (1)
    {
      v18 = v17 - 4;
      v8 = v17 - 3;
      if (__OFADD__(v17 - 4, 1))
      {
        break;
      }

      if (v15)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_34;
        }

        v19 = *(v25 + 8 * v17);
      }

      a3 = v19;
      if (v16)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(v7 + 8 * v17);
      }

      v21 = v20;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        ++v17;
        if (v8 != a2)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B6A08(void *a1)
{
  v2 = [a1 contactIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003B6A6C(void *a1)
{
  v2 = [a1 callerNameFromNetwork];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_1003B6ADC()
{
  v1 = &v0[OBJC_IVAR____TtC13callservicesd24PodcastRecordingProvider_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd24PodcastRecordingProvider_delegateQueue] = 0;
  v2 = [objc_opt_self() sharedRecorder];
  *&v0[OBJC_IVAR____TtC13callservicesd24PodcastRecordingProvider_recorder] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PodcastRecordingProvider();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1003B6B84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastRecordingProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003B6C38(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006AAF50, &unk_100584CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1003B6CA0()
{
  if (qword_1006A0B30 != -1)
  {
    sub_100008720();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA610);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Configuring AVAudioClient observer", v3, 2u);
    sub_100005F40();
  }

  type metadata accessor for AVAudioClientAudioStateObserver();
  swift_allocObject();
  return sub_1003C5878();
}

uint64_t sub_1003B6D7C()
{
  sub_100009B7C((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

BOOL sub_1003B6DD8()
{
  sub_10001B8C8(v0, &selRef_model);
  if (!v1)
  {
    return 0;
  }

  v2._countAndFlagsBits = 0x5654656C707041;
  v2._object = 0xE700000000000000;
  v3 = String.hasPrefix(_:)(v2);

  return v3;
}

char *sub_1003B6E44(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  sub_100006AF0(0, &unk_1006A4E40, off_1006166A0);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = objc_allocWithZone(v2);

  return sub_1003BAC18(a1, v6, v5, a2, v7);
}

id sub_1003B72F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (a3())
  {
    sub_100016034();
    v7[1] = 1107296256;
    v7[2] = sub_1003BB698;
    v7[3] = a4;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1003B7458()
{
  sub_100005EF4();
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = sub_100007FEC(v20);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0, v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = sub_100007B98(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  sub_10000A330();
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  sub_10000E4F4();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000EAF8();
  sub_10000EE88(v17, v18);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10001000C(v19, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100005EDC();
}

id sub_1003B7650(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  *&v3[OBJC_IVAR___CSDRouteController__routesByUniqueIdentifier] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___CSDRouteController__topOfListRoutesUniqueIdentifiers] = _swiftEmptyArrayStorage;
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_routesDidChangeHandler);
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_pickedRouteDidChangeHandler);
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_routeWasPickedHandler);
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_timedOutPickingRouteHandler);
  v6 = &v3[OBJC_IVAR___CSDRouteController_pendingRouteContext];
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  sub_10000FAFC(OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier);
  *&v3[OBJC_IVAR___CSDRouteController_pendingPickedRouteTimeout] = 30;
  *&v3[OBJC_IVAR___CSDRouteController__intelligentRoutingManager] = 0;
  *&v3[OBJC_IVAR___CSDRouteController_currentPickedRoute] = 0;
  *&v3[OBJC_IVAR___CSDRouteController_queue] = a2;
  *&v3[OBJC_IVAR___CSDRouteController_routeProviders] = a1;
  v27.receiver = v3;
  v27.super_class = v7;
  v26 = a2;

  v8 = objc_msgSendSuper2(&v27, "init");
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      ObjectType = swift_getObjectType();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v11;
      v15 = *(*(&v11 + 1) + 24);
      swift_unknownObjectRetain_n();

      v15(sub_100011850, v14, ObjectType, *(&v11 + 1));
      swift_unknownObjectRelease();

      --v9;
    }

    while (v9);
  }

  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  sub_1000060B4(v17, v18, v19, v20, TUCallCenterCallStatusChangedNotification);

  v21 = [v16 defaultCenter];
  sub_1000060B4(v21, v22, v23, v24, TUCallCenterVideoCallStatusChangedNotification);

  return v8;
}

void sub_1003B78EC()
{
  sub_100005EF4();
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100007FEC(v25);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_10000A330();
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = sub_100007B98(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  sub_10000E4F4();
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  sub_100007FDC();
  v24 = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000EAF8();
  sub_10000EE88(v16, v17);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10001000C(v18, &qword_1006A31B0, &unk_10057E920);
  sub_10000C808();
  (*(v4 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v19 = sub_100017DC4();
  sub_10026D814(&qword_1006A8D30, &qword_100584DB8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10057D6A0;
  sub_10026D814(&qword_1006A8D18, &qword_100584DA8);
  v21 = objc_allocWithZone(RPCompanionLinkClient);
  v22 = v19;
  *(v20 + 32) = sub_1003B6E44([v21 init], v22);
  *(v20 + 40) = &off_100626248;
  type metadata accessor for LocalAudioRouteProvider();
  v23 = v22;
  *(v20 + 48) = sub_1003EBA6C(v23);
  *(v20 + 56) = &off_10062E3E8;
  objc_allocWithZone(v0);
  sub_1003B7650(v20, v23);
  sub_100005EDC();
}

void sub_1003B7BB4()
{
  sub_100005EF4();
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100007FEC(v23);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_10000A330();
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = sub_100007B98(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  sub_10000E4F4();
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000EAF8();
  sub_10000EE88(v16, v17);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10001000C(v18, &qword_1006A31B0, &unk_10057E920);
  sub_10000C808();
  (*(v4 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v19 = sub_100017DC4();
  sub_10026D814(&qword_1006A8D30, &qword_100584DB8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10057D690;
  v21 = objc_allocWithZone(type metadata accessor for PairedHostDeviceRouteProvider());
  v22 = v19;
  *(v20 + 32) = sub_1003D0298(v22);
  *(v20 + 40) = &off_10062D438;
  objc_allocWithZone(v0);
  sub_1003B7650(v20, v22);
  sub_100005EDC();
}

void sub_1003B7E2C()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  sub_10000A330();
  v28 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v28);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  sub_10000E4F4();
  v27 = *&v0[OBJC_IVAR___CSDRouteController_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v6;
  *(v16 + 32) = v4;
  *(v16 + 40) = v2;
  v29[4] = sub_1003BB57C;
  v29[5] = v16;
  sub_100009FE4();
  v29[1] = 1107296256;
  sub_10000A600();
  v29[2] = v17;
  v29[3] = &unk_10062C658;
  v18 = _Block_copy(v29);
  v19 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v20, v21);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10001000C(v22, &unk_1006A2960, &unk_10057D6E0);
  sub_10000E9E4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v23 = sub_100015A08();
  v24(v23);
  v25 = sub_100007C7C();
  v26(v25);

  sub_100005EDC();
}

void sub_1003B805C(char *a1, uint64_t a2, void **a3, int a4)
{
  LODWORD(v86) = a4;
  v88 = a3;
  v81 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v81 - 8);
  v6 = *(v85 + 64);
  __chkstk_darwin(v81, v7);
  v83 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  v9 = *(v82 + 64);
  __chkstk_darwin(v84, v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v80 = *(v13 - 8);
  v14 = *(v80 + 64);
  __chkstk_darwin(v13, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchWallTime();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v71 - v26;
  v28 = a2;
  v29 = a2;
  v30 = v88;
  v87 = a1;
  sub_10001756C(v29, v88);
  if (v31)
  {
    v34 = v32;
    v35 = v31;
    v36 = &v87[OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier];
    if (*&v87[OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8])
    {
      v37 = v28;
      v86 = v33;
      if (qword_1006A0AA0 != -1)
      {
        swift_once();
      }

      v85 = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10057D6A0;
      v39 = *v36;
      v40 = v36[1];

      v41 = sub_10001E478(v39, v40);
      v43 = v42;

      *(v38 + 56) = &type metadata for String;
      v44 = sub_100009D88();
      *(v38 + 64) = v44;
      *(v38 + 32) = v41;
      *(v38 + 40) = v43;
      aBlock = v37;
      v91 = v88;

      v45 = String.init<A>(reflecting:)();
      *(v38 + 96) = &type metadata for String;
      *(v38 + 104) = v44;
      *(v38 + 72) = v45;
      *(v38 + 80) = v46;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v47 = v36[1];
      *v36 = 0;
      v36[1] = 0;

      v33 = v86;
    }

    sub_1003B8898(v35, v34, v33);
    swift_unknownObjectRelease();
  }

  else
  {
    v73 = v24;
    v74 = v17;
    v75 = v13;
    v76 = v27;
    v77 = v19;
    v78 = v18;
    v79 = v12;
    v48 = sub_100004778();
    v71 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_10057D6A0;
    *(v49 + 56) = &type metadata for String;
    v72 = sub_100009D88();
    *(v49 + 64) = v72;
    *(v49 + 32) = v28;
    *(v49 + 40) = v30;

    v50 = v87;
    sub_100012748();
    v52 = v51;
    *(v49 + 96) = sub_10026D814(&unk_1006A7B70, &qword_100584DB0);
    *(v49 + 104) = sub_10001000C(&qword_1006A8D28, &unk_1006A7B70, &qword_100584DB0);
    *(v49 + 72) = v52;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (v86)
    {
      if (qword_1006A0AA0 != -1)
      {
        swift_once();
      }

      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10057D690;
      aBlock = v28;
      v91 = v30;

      v54 = String.init<A>(reflecting:)();
      v55 = v72;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = v55;
      *(v53 + 32) = v54;
      *(v53 + 40) = v56;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v57 = &v50[OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier];
      v58 = *&v50[OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8];
      *v57 = v28;
      v57[1] = v30;

      v86 = *&v50[OBJC_IVAR___CSDRouteController_queue];

      v59 = v73;
      static DispatchWallTime.now()();
      v60 = v74;
      *v74 = 30;
      v61 = v80;
      v62 = v75;
      (*(v80 + 104))(v60, enum case for DispatchTimeInterval.seconds(_:), v75);
      v63 = v76;
      + infix(_:_:)();
      (*(v61 + 8))(v60, v62);
      v64 = v78;
      v88 = *(v77 + 8);
      (v88)(v59, v78);
      v65 = swift_allocObject();
      *(v65 + 16) = v50;
      v94 = sub_1003BB58C;
      v95 = v65;
      aBlock = _NSConcreteStackBlock;
      v91 = 1107296256;
      v92 = sub_100004CEC;
      v93 = &unk_10062C6A8;
      v66 = _Block_copy(&aBlock);
      v67 = v50;
      v68 = v79;
      static DispatchQoS.unspecified.getter();
      v89 = _swiftEmptyArrayStorage;
      sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
      v69 = v83;
      v70 = v81;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(wallDeadline:qos:flags:execute:)();
      _Block_release(v66);
      (*(v85 + 8))(v69, v70);
      (*(v82 + 8))(v68, v84);
      (v88)(v63, v64);
    }
  }
}

void sub_1003B8898(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v4[OBJC_IVAR___CSDRouteController_queue];
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  ObjectType = swift_getObjectType();
  v17 = *(a3 + 40);
  swift_unknownObjectRetain();
  v18 = a1;
  v52 = ObjectType;
  v17();
  v19 = &v4[OBJC_IVAR___CSDRouteController_pendingRouteContext];
  v20 = *&v4[OBJC_IVAR___CSDRouteController_pendingRouteContext];
  v21 = *&v4[OBJC_IVAR___CSDRouteController_pendingRouteContext + 8];
  v22 = *&v4[OBJC_IVAR___CSDRouteController_pendingRouteContext + 16];
  *v19 = v18;
  *(v19 + 1) = a2;
  *(v19 + 2) = a3;
  sub_1003BA734(v20);
  v23 = OBJC_IVAR___CSDRouteController_currentPickedRoute;
  v24 = *&v4[OBJC_IVAR___CSDRouteController_currentPickedRoute];
  *&v4[OBJC_IVAR___CSDRouteController_currentPickedRoute] = v18;
  swift_unknownObjectRetain();
  v25 = v18;

  if (!*&v4[v23])
  {
    goto LABEL_5;
  }

  sub_1000192A8();
  v28 = *&v4[v23];
  if (!v28)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v29 = v27;
  v30 = v28;
  sub_1003D5A04();

LABEL_5:
  v53 = v25;
  v54 = a3;
  sub_1000119D4(v26);
  v55 = v4;
  v31 = *&v4[OBJC_IVAR___CSDRouteController_routeProviders];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = (v31 + 32);
    do
    {
      v34 = *v33;
      swift_getObjectType();
      v35 = sub_100342970(v34);
      if (v35)
      {
        v37 = v35 == a2;
      }

      else
      {
        v37 = 1;
      }

      if (!v37)
      {
        v38 = v36;
        v39 = swift_getObjectType();
        v40 = *(v38 + 16);
        swift_unknownObjectRetain();
        v40(v39, v38);
        swift_unknownObjectRelease();
      }

      v33 += 2;
      --v32;
    }

    while (v32);
  }

  type metadata accessor for LocalAudioRouteProvider();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {
    swift_unknownObjectRelease();
    v44 = v54;
    v43 = v55;
    v45 = v53;
    goto LABEL_17;
  }

  v42 = *(v41 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState);
  swift_unknownObjectRelease();
  v44 = v54;
  v43 = v55;
  v45 = v53;
  if (v42 <= 1)
  {
LABEL_17:
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = v45;
    v46[4] = a2;
    v46[5] = v44;
    v47 = *(v44 + 48);
    swift_unknownObjectRetain();
    v48 = v45;
    v49 = v43;
    v47(sub_1003BA774, v46, v52, v44);
  }

  v50 = *&v43[OBJC_IVAR___CSDRouteController_routeWasPickedHandler];
  if (v50)
  {
    v51 = *&v43[OBJC_IVAR___CSDRouteController_routeWasPickedHandler + 8];

    v50(v45);
    sub_1000051F8(v50);
  }
}

uint64_t sub_1003B8C1C(uint64_t result)
{
  v1 = (result + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier);
  if (*(result + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8))
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10057D6A0;
    v3 = *v1;
    v4 = v1[1];

    v5 = sub_10001E478(v3, v4);
    v7 = v6;

    *(v2 + 56) = &type metadata for String;
    v8 = sub_100009D88();
    *(v2 + 64) = v8;
    *(v2 + 32) = v5;
    *(v2 + 40) = v7;
    v9 = String.init<A>(reflecting:)();
    *(v2 + 96) = &type metadata for String;
    *(v2 + 104) = v8;
    *(v2 + 72) = v9;
    *(v2 + 80) = v10;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v11 = v1[1];
    *v1 = 0;
    v1[1] = 0;
  }

  return result;
}

uint64_t sub_1003B8DE4(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR___CSDRouteController_routeProviders);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5;
      swift_getObjectType();
      result = sub_100342970(v6);
      if (result)
      {
        swift_unknownObjectRetain();
        sub_1003D0CE4(a2);
        result = swift_unknownObjectRelease();
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1003B8F14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR___CSDRouteController_queue);
  *v12 = v13;
  (*(v8 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v7);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v7);
  if ((v13 & 1) == 0)
  {
    goto LABEL_24;
  }

  v15 = v3 + OBJC_IVAR___CSDRouteController_pendingRouteContext;
  v16 = *(v3 + OBJC_IVAR___CSDRouteController_pendingRouteContext);
  if (v16)
  {
    v17 = a1;
    v18 = v16;
    if (![v17 isEqualToRouteIgnoringIsRecommended:v18])
    {

LABEL_20:
      return;
    }

    v37 = v18;
    ObjectType = swift_getObjectType();
    v20 = (*(a3 + 8))(ObjectType, a3);
    v21 = sub_10000B6F4(v20);
    for (i = 0; v21 != i; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      if ([v23 isCurrentlyPicked])
      {

        sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
        v25 = v24;
        v26 = static NSObject.== infix(_:_:)();

        if (v26)
        {

LABEL_19:
          v31 = v37;
          v32 = *v15;
          v33 = *(v15 + 8);
          v34 = *(v15 + 16);
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *v15 = 0;
          v35 = sub_1003BA734(v32);
          sub_1000119D4(v35);

          v17 = v24;
          goto LABEL_20;
        }

LABEL_17:
        v27 = sub_100004778();
        static os_log_type_t.error.getter();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10057D690;
        *(v28 + 56) = sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
        *(v28 + 64) = sub_100308148();
        *(v28 + 32) = v17;
        os_log(_:dso:log:type:_:)();

        v29 = *(v4 + OBJC_IVAR___CSDRouteController_timedOutPickingRouteHandler);
        if (v29)
        {
          v30 = *(v4 + OBJC_IVAR___CSDRouteController_timedOutPickingRouteHandler + 8);

          v29(v17);
          sub_1000051F8(v29);
        }

        goto LABEL_19;
      }
    }

    v24 = 0;
    goto LABEL_17;
  }
}

id sub_1003B940C()
{
  v1 = [v0 localDevice];

  return v1;
}

void sub_1003B9444(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a1)
  {
    sub_100016034();
    v8[1] = 1107296256;
    v8[2] = sub_1003BB698;
    v8[3] = v6;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 *a4];
  _Block_release(v7);
}

void sub_1003B94D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_100019B34;
    v4[3] = &unk_10062C9F0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler:v3];
  _Block_release(v3);
}

void sub_1003B9578(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1004582CC;
    v4[3] = &unk_10062C900;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 activateWithCompletion:v3];
  _Block_release(v3);
}

uint64_t sub_1003B9638()
{
  v1 = [v0 effectiveIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void *sub_1003B9754(uint64_t a1, void *a2)
{
  v3 = (v2 + *((swift_isaMask & *v2) + 0x70));
  *v3 = 0;
  v3[1] = 0;
  *(v2 + *((swift_isaMask & *v2) + 0x78)) = _swiftEmptyDictionarySingleton;
  *(v2 + *((swift_isaMask & *v2) + 0x60)) = a2;
  *(v2 + *((swift_isaMask & *v2) + 0x68)) = a1;
  v4 = a2;
  v21.receiver = v2;
  v21.super_class = sub_10026D814(&unk_1006A8D40, &unk_100584DC0);
  v5 = objc_msgSendSuper2(&v21, "init");
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *((swift_isaMask & *v5) + 0x68);
  swift_beginAccess();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1003BB594;
  *(v8 + 24) = v6;
  v9 = *(v5 + v7);
  v10 = v5;

  sub_1003B9444(sub_1003BB59C, v8, &unk_10062CB58, &selRef_setLocalDeviceUpdatedHandler_);
  swift_endAccess();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1003BB5D4;
  *(v12 + 24) = v11;
  v13 = *(v5 + v7);

  sub_1003B9444(sub_1003BB604, v12, &unk_10062CAE0, &selRef_setDeviceFoundHandler_);
  swift_endAccess();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1003BB5DC;
  *(v15 + 24) = v14;
  v16 = *(v5 + v7);

  sub_1003B9444(sub_1003BB604, v15, &unk_10062CA68, &selRef_setDeviceLostHandler_);
  swift_endAccess();

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100019BA8;
  *(v18 + 24) = v17;
  v19 = *(v5 + v7);

  sub_1003B94D0(sub_100019BB0, v18);
  swift_endAccess();

  swift_beginAccess();
  [*(v5 + v7) setFlags:{objc_msgSend(*(v5 + v7), "flags") | 1}];
  swift_endAccess();

  return v10;
}

void *sub_1003B9B64()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v19 = *(result + *((swift_isaMask & *result) + 0x60));
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = sub_1003BB5FC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062CBA8;
    v15 = _Block_copy(aBlock);
    v18 = v13;
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    v17 = v6;
    sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v1 + 8))(v5, v0);
    (*(v7 + 8))(v11, v17);
  }

  return result;
}

uint64_t sub_1003B9E88(void *a1)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  result = os_log(_:dso:log:type:_:)();
  v3 = a1 + *((swift_isaMask & *a1) + 0x70);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);

    v4(v6);

    return sub_1000051F8(v4);
  }

  return result;
}

void sub_1003B9F78(void *a1, void *a2)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
  v5 = a1;
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009D88();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = [v5 effectiveIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *((swift_isaMask & *a2) + 0x78);
    swift_beginAccess();
    v15 = *(a2 + v14);

    v16 = sub_100023E48(v10, v12, v15);

    if (v16)
    {
    }

    else
    {
      swift_beginAccess();
      v17 = v5;
      v18 = *(a2 + v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100379364(v17, v10, v12, isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, v24, *(a2 + v14));
      *(a2 + v14) = v25;

      swift_endAccess();
      sub_10001B630();
    }
  }

  else
  {
  }
}

void sub_1003BA1D0()
{
  sub_100005EF4();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v32 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_10000A330();
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_10000E4F4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (sub_10001A9F0())
    {
      v29 = *(v21 + *((swift_isaMask & *v21) + 0x60));
      v22 = swift_allocObject();
      *(v22 + 16) = v6;
      *(v22 + 24) = v21;
      v33[4] = v4;
      v33[5] = v22;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 1107296256;
      sub_10000A600();
      v33[2] = v23;
      v33[3] = v30;
      v24 = _Block_copy(v33);
      v25 = v6;
      v31 = v21;
      static DispatchQoS.unspecified.getter();
      sub_10000A814();
      sub_10000EE88(v26, v27);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_100008434();
      sub_10001000C(v28, &unk_1006A2960, &unk_10057D6E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_100008AB0();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);
      (*(v32 + 8))(v0, v7);
      (*(v16 + 8))(v1, v13);
    }

    else
    {
    }
  }

  sub_100005EDC();
}

void sub_1003BA480(void *a1, void *a2)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  sub_100006AF0(0, &qword_1006A75B0, RPCompanionLinkDevice_ptr);
  v5 = a1;
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009D88();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = [v5 effectiveIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 && (v14 = *((swift_isaMask & *a2) + 0x78), swift_beginAccess(), v15 = *(a2 + v14), , v16 = sub_100023E48(v10, v12, v15), , v16))
  {

    swift_beginAccess();
    v17 = sub_10001B760(v10, v12);
    swift_endAccess();

    sub_10001B630();
  }

  else
  {
  }
}

void sub_1003BA6A4(uint64_t a1, uint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  if (!a1)
  {
    a2 = 0;
  }

  v6 = *(v2 + v5);
  sub_1003B9578(a1, a2);
}

void *sub_1003BA734(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003BA774()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_1003B8F14(v1, v2, v3);
}

void sub_1003BA7A0(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D2B4(v10);
  if (sub_100015468(v10, 1, v11) == 1)
  {

    sub_10001D334(v10);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
LABEL_9:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_14;
  }

  v34 = a2;
  (*(v12 + 32))(v16, v10, v11);
  v21 = sub_10001B8C8(a1, &selRef_mediaSystemName);
  v20 = v22;
  if (!v22)
  {
    (*(v12 + 8))(v16, v11);

    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v19 = v21;
  v23 = UUID.uuidString.getter();
  v32 = v24;
  v33 = v23;
  v25 = sub_10001BEF4();
  switch(v25)
  {
    case 6:
      v26 = 14;
      break;
    case 22:
      v26 = 23;
      break;
    case 27:
      v26 = 28;
      break;
    default:
      v26 = 0;
      break;
  }

  v28 = sub_10001B8C8(a1, &selRef_model);
  v29 = v30;

  (*(v12 + 8))(v16, v11);
  v17 = v33;
  v27 = v34;
  v18 = v32;
LABEL_14:
  *a3 = v17;
  a3[1] = v18;
  a3[2] = v19;
  a3[3] = v20;
  a3[4] = v26;
  a3[5] = 0;
  a3[6] = v27;
  a3[7] = v28;
  a3[8] = v29;
}

uint64_t sub_1003BAAB0(void *a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1003BB554;
  *(v6 + 24) = v5;
  v11[4] = sub_1000200A4;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10002007C;
  v11[3] = &unk_10062C478;
  v7 = _Block_copy(v11);
  v8 = a2;
  v9 = a1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

char *sub_1003BAC18(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = sub_100006AF0(0, &qword_1006A8D38, off_100616630);
  v12 = &a5[qword_1006A4D10];
  *v12 = 0;
  v12[1] = 0;
  *&a5[qword_1006A4D68] = &_swiftEmptySetSingleton;
  v41[3] = v11;
  v41[4] = &off_100626180;
  v41[0] = a2;
  *&a5[qword_1006A4D70] = 0;
  a5[qword_1006A4D78] = 0;
  a5[qword_1006A4D80] = 1;
  *&a5[qword_1006A4D40] = a4;
  v13 = objc_allocWithZone(sub_10026D814(&unk_1006A8D40, &unk_100584DC0));
  v14 = a4;
  *&a5[qword_1006A4D50] = sub_1003B9754(a1, v14);
  sub_100009AB0(v41, &a5[qword_1006A4D58]);
  *&a5[qword_1006A4D48] = a3;
  v15 = objc_allocWithZone(TUConversationManager);
  swift_unknownObjectRetain();
  v16 = [v15 init];
  *&a5[qword_1006A4D60] = v16;
  v17 = &a5[qword_1006A4D18];
  *v17 = sub_100305898;
  v17[1] = 0;
  v18 = &a5[qword_1006A4D20];
  *v18 = sub_100305B60;
  v18[1] = 0;
  v19 = &a5[qword_1006A4D28];
  *v19 = sub_10001D1E8;
  v19[1] = 0;
  v20 = &a5[qword_1006A4D30];
  *v20 = sub_10001D214;
  v20[1] = 0;
  v21 = &a5[qword_1006A4D38];
  *v21 = sub_10001CD68;
  v21[1] = 0;
  v40.receiver = a5;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "init");
  v23 = *&v22[qword_1006A4D60];
  v24 = *&v22[qword_1006A4D40];
  v25 = v22;
  [v23 addDelegate:v25 queue:v24];
  v26 = qword_1006A4D50;
  v27 = *&v25[qword_1006A4D50];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = (v27 + *((swift_isaMask & *v27) + 0x70));
  v30 = *v29;
  v31 = v29[1];
  *v29 = sub_10001B628;
  v29[1] = v28;
  v32 = v27;

  sub_1000051F8(v30);

  v33 = *&v25[v26];
  sub_1003BA6A4(sub_100306B40, 0);

  v34 = qword_1006A4D48;
  [*&v25[qword_1006A4D48] setTriggers:33];
  v35 = *&v25[v34];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  aBlock[4] = sub_10002DB04;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028100;
  aBlock[3] = &unk_10062C888;
  v37 = _Block_copy(aBlock);

  [v35 setCallChanged:v37];
  _Block_release(v37);

  swift_unknownObjectRelease();
  sub_100009B7C(v41);
  return v25;
}

char *sub_1003BB044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7)
{
  v55 = a4;
  v56 = a5;
  v57 = a2;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  __chkstk_darwin(v17, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_recommendationsObservers;
  *&a7[v22] = [objc_opt_self() weakObjectsHashTable];
  v23 = OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_featureFlags;
  *&a7[v23] = [objc_allocWithZone(TUFeatureFlags) init];
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_lockStateObserver] = 0;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irServiceToken] = 0;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_irSession] = 0;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_sessionFailureCount] = 0;
  v24 = &a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager__topOfListRoutesUniqueIdentifiers] = _swiftEmptyArrayStorage;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue] = a1;
  *&a7[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_serverBag] = a6;
  v60.receiver = a7;
  v60.super_class = ObjectType;
  v50 = a1;
  v49 = a6;
  v26 = objc_msgSendSuper2(&v60, "init");
  v27 = v26;
  if (v57)
  {
    v28 = &v26[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
    v29 = *&v26[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
    v30 = *&v26[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock + 8];
    *v28 = v57;
    *(v28 + 1) = a3;
  }

  else
  {
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    v32 = &v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
    v29 = *&v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock];
    v33 = *&v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_intelligentRoutingInitializationBlock + 8];
    *v32 = sub_1003BB55C;
    v32[1] = v31;
    v34 = v27;
  }

  sub_1000051F8(v29);
  v35 = v56;
  v54 = a3;
  if (v55)
  {
    v36 = &v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
    v37 = *&v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
    v38 = *&v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock + 8];
    *v36 = v55;
    *(v36 + 1) = v35;
  }

  else
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v27;
    v40 = &v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
    v37 = *&v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock];
    v41 = *&v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_resetTokenBlock + 8];
    *v40 = sub_1003BB564;
    v40[1] = v39;
    v42 = v27;
  }

  sub_1000051F8(v37);
  v43 = *&v27[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v44 = swift_allocObject();
  *(v44 + 16) = v27;
  aBlock[4] = sub_1003BB56C;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062C518;
  v45 = _Block_copy(aBlock);
  v46 = v27;
  v47 = v43;
  static DispatchQoS.unspecified.getter();
  v58 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

  sub_1000051F8(v55);
  sub_1000051F8(v57);

  (*(v53 + 8))(v16, v12);
  (*(v51 + 8))(v21, v52);

  return v46;
}