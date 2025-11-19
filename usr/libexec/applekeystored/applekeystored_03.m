uint64_t sub_10003D42C()
{
  v1 = v0[269];

  v2 = v0[1];
  v3 = v0[271];

  return v2();
}

uint64_t sub_10003D490(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003D4B0, 0, 0);
}

uint64_t sub_10003D4B0()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = (**(v0 + 16) == 2) | **(v0 + 16) & 1;
  v2 = *v1;
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    **(v0 + 24) = v4;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t sub_10003D4FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003D51C, 0, 0);
}

uint64_t sub_10003D51C()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = 0;
  v2 = *v1;
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    **(v0 + 24) = v4;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t sub_10003D554(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000DBBC;

  return sub_1000363FC(a2);
}

uint64_t sub_10003D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10003D700()
{
  sub_100002CF0(v0 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_queue, &qword_1000A3538, &qword_100076E20);
  v1 = *(v0 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_storeContext);

  sub_100002CF0(v0 + OBJC_IVAR____TtC23ProtectionDomainManager25ProtectionClassRemediator_pendingTasksStream, qword_1000A3480, &qword_100076D10);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t type metadata accessor for ProtectionClassRemediator()
{
  result = qword_1000A3340;
  if (!qword_1000A3340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D7F8()
{
  sub_1000401B8(319, &qword_1000A3350, &type metadata for ProtectionClassRemediator.QueueItem, type metadata accessor for ProtectionClassRemediator.FIFO);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    v10 = &value witness table for Builtin.NativeObject + 64;
    v11 = &value witness table for Builtin.Int64 + 64;
    v12 = &value witness table for Builtin.Int64 + 64;
    sub_1000401B8(319, &qword_1000A3358, &type metadata for () + 8, &type metadata accessor for AsyncStream);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8);
      sub_1000401B8(319, &unk_1000A3360, &type metadata for () + 8, &type metadata accessor for AsyncStream.Continuation);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8);
        swift_getTupleTypeLayout2();
        v13 = &v8;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10003DA14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(v5 + 80);
  v7 = *(type metadata accessor for ProtectionClassRemediator.FIFO.Iterator() + 28);
  v8 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
  v9 = *(*(v8 - 8) + 32);

  return v9(&a3[v7], a2, v8);
}

uint64_t sub_10003DAB8(uint64_t a1)
{
  *(v2 + 624) = v1;
  *(v2 + 616) = a1;
  return _swift_task_switch(sub_10003DADC, 0, 0);
}

uint64_t sub_10003DADC()
{
  v1 = *(v0 + 624);
  v2 = *v1;
  *(v0 + 632) = *v1;
  return _swift_task_switch(sub_10003DB00, v2, 0);
}

uint64_t sub_10003DB00()
{
  v1 = *(v0 + 632);
  sub_10003EA4C((v0 + 16));

  return _swift_task_switch(sub_10003DB6C, 0, 0);
}

uint64_t sub_10003DB6C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 48);
    v4 = *(v0 + 64);
    v3 = *(v0 + 80);
    *(v0 + 448) = v4;
    *(v0 + 464) = v3;
    v5 = *(v0 + 80);
    *(v0 + 480) = *(v0 + 96);
    v6 = *(v0 + 16);
    v8 = *(v0 + 32);
    v7 = *(v0 + 48);
    *(v0 + 416) = v8;
    *(v0 + 432) = v7;
    *(v0 + 384) = *(v0 + 96);
    *(v0 + 400) = v6;
    v9 = *(v0 + 616);
    v10 = *(v0 + 16);
    *(v0 + 304) = v10;
    *(v0 + 312) = v1;
    *(v0 + 352) = v4;
    *(v0 + 368) = v5;
    *(v0 + 320) = v8;
    *(v0 + 336) = v2;
    sub_10003F37C(v0 + 304, v0 + 496);
    sub_100002CF0(v0 + 400, &qword_1000A3548, &qword_100076E40);
    *v9 = v10;
    *(v9 + 8) = v1;
    *(v9 + 16) = *(v0 + 32);
    v11 = *(v0 + 96);
    v13 = *(v0 + 48);
    v12 = *(v0 + 64);
    *(v9 + 64) = *(v0 + 80);
    *(v9 + 80) = v11;
    *(v9 + 32) = v13;
    *(v9 + 48) = v12;
    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 632);
    *(v0 + 648) = *(sub_10000A0C8(&qword_1000A3568, &unk_100076E70) + 28);
    swift_beginAccess();
    v17 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v17;
    v18 = *(v0 + 96);
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = v18;
    v19 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v19;
    v20 = *(v0 + 648);
    v21 = *(v0 + 624);
    v22 = async function pointer to AsyncStream.Iterator.next()[1];
    v23 = swift_task_alloc();
    *(v0 + 640) = v23;
    v24 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
    *v23 = v0;
    v23[1] = sub_10003DD34;

    return AsyncStream.Iterator.next()(v0 + 652, v24);
  }
}

uint64_t sub_10003DD34()
{
  v1 = *(*v0 + 640);
  v3 = *v0;

  return _swift_task_switch(sub_10003DE30, 0, 0);
}

uint64_t sub_10003DE4C()
{
  v1 = *(v0 + 632);
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 112) = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = *(v2 + 16);
      if (v7)
      {
LABEL_4:
        v8 = *(v0 + 632);
        v9 = v7 - 1;
        v10 = (v2 + 96 * v7);
        v11 = *(v10 - 3);
        *(v0 + 208) = *(v10 - 4);
        *(v0 + 224) = v11;
        v12 = v10[1];
        v14 = *(v10 - 2);
        v13 = *(v10 - 1);
        *(v0 + 272) = *v10;
        *(v0 + 288) = v12;
        *(v0 + 240) = v14;
        *(v0 + 256) = v13;
        *(v2 + 16) = v9;
        *(v8 + 112) = v2;
        v15 = sub_10003DF2C;
        goto LABEL_6;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = sub_10003F04C(v2);
      v2 = isUniquelyReferenced_nonNull_native;
      v7 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    return _swift_task_switch(isUniquelyReferenced_nonNull_native, v5, v6);
  }

  v15 = sub_10003DFC4;
LABEL_6:
  isUniquelyReferenced_nonNull_native = v15;
  v5 = 0;
  v6 = 0;

  return _swift_task_switch(isUniquelyReferenced_nonNull_native, v5, v6);
}

uint64_t sub_10003DF2C()
{
  v1 = *(v0 + 616);
  sub_100002CF0(v0 + 112, &qword_1000A3548, &qword_100076E40);
  v3 = *(v0 + 208);
  v2 = *(v0 + 224);
  *(v0 + 16) = v3;
  *(v0 + 32) = v2;
  v5 = *(v0 + 272);
  v4 = *(v0 + 288);
  *(v0 + 80) = v5;
  *(v0 + 96) = v4;
  v7 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v0 + 48) = v7;
  *(v0 + 64) = v6;
  v1[4] = v5;
  v1[5] = v4;
  v1[2] = v7;
  v1[3] = v6;
  *v1 = v3;
  v1[1] = v2;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003DFC4()
{
  sub_100002CF0(v0 + 112, &qword_1000A3548, &qword_100076E40);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  v1 = *(v0 + 648);
  v2 = *(v0 + 624);
  v3 = async function pointer to AsyncStream.Iterator.next()[1];
  v4 = swift_task_alloc();
  *(v0 + 640) = v4;
  v5 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
  *v4 = v0;
  v4[1] = sub_10003DD34;

  return AsyncStream.Iterator.next()(v0 + 652, v5);
}

uint64_t sub_10003E0B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10003E1A0, 0, 0);
}

uint64_t sub_10003E1A0()
{
  v1 = *(v0 + 32);
  v2 = *v1;
  *(v0 + 96) = *v1;
  return _swift_task_switch(sub_10003E1C4, v2, 0);
}

uint64_t sub_10003E1C4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_10003EB48();

  return _swift_task_switch(sub_10003E22C, 0, 0);
}

uint64_t sub_10003E22C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v4 + 16);
  *(v0 + 104) = v6;
  *(v0 + 112) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v3);
  v7 = *(v5 - 8);
  v8 = *(v7 + 48);
  *(v0 + 120) = v8;
  *(v0 + 128) = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v9 = v8(v2, 1, v5);
  v10 = *(v4 + 8);
  *(v0 + 136) = v10;
  *(v0 + 144) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v9 == 1)
  {
    v11 = *(v0 + 24);
    v10(*(v0 + 80), *(v0 + 48));
    *(v0 + 160) = *(v11 + 28);
    v12 = *(v0 + 32);
    v13 = async function pointer to AsyncStream.Iterator.next()[1];
    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    v15 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
    *v14 = v0;
    v14[1] = sub_10003E464;

    return AsyncStream.Iterator.next()(v0 + 164, v15);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 40);
    v18 = *(v0 + 16);
    v10(*(v0 + 88), *(v0 + 48));
    (*(v7 + 32))(v18, v16, v17);
    (*(v7 + 56))(v18, 0, 1, v17);
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10003E464()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_10003E560, 0, 0);
}

uint64_t sub_10003E57C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_10003EB48();

  return _swift_task_switch(sub_10003E5E8, 0, 0);
}

uint64_t sub_10003E5E8()
{
  v1 = *(v0 + 144);
  v28 = *(v0 + 120);
  v29 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  (*(v0 + 136))(v4, v7);
  v10 = *(v8 + 32);
  v10(v4, v5, v7);
  v3(v6, v4, v7);
  v11 = v28(v6, 1, v9);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  if (v11 == 1)
  {
    v13(*(v0 + 64), *(v0 + 48));
    v14 = *(v0 + 160);
    v15 = *(v0 + 32);
    v16 = async function pointer to AsyncStream.Iterator.next()[1];
    v17 = swift_task_alloc();
    *(v0 + 152) = v17;
    v18 = sub_10000A0C8(&qword_1000A3530, &qword_100076E18);
    *v17 = v0;
    v17[1] = sub_10003E464;

    return AsyncStream.Iterator.next()(v0 + 164, v18);
  }

  else
  {
    v19 = *(v0 + 88);
    v20 = *(v0 + 48);
    v21 = *(v0 + 16);
    v13(*(v0 + 64), v20);
    v10(v21, v19, v20);
    v23 = *(v0 + 80);
    v22 = *(v0 + 88);
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10003E7DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E574;

  return sub_10003E0B0(a1, a2);
}

uint64_t sub_10003E884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10003E950;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6);
}

uint64_t sub_10003E950()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10003EA4C@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    sub_10003F108(&v8);
    if (*(&v8 + 1))
    {
      v3 = v11;
      a1[2] = v10;
      a1[3] = v3;
      v4 = v13;
      a1[4] = v12;
      a1[5] = v4;
      v5 = v9;
      *a1 = v8;
      a1[1] = v5;
    }

    else
    {
      v7[2] = v10;
      v7[3] = v11;
      v7[4] = v12;
      v7[5] = v13;
      v7[0] = v8;
      v7[1] = v9;
      sub_100002CF0(v7, &qword_1000A3548, &qword_100076E40);
      sub_10003F060(*(*(v1 + 112) + 16) - 1, a1);
    }
  }

  else
  {
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_10003EB48()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.popLast()();
  return swift_endAccess();
}

uint64_t sub_10003EC10()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10003EC38()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_10003EC88(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003ECA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10003ECEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10003ED5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for ProtectionClassRemediator.FIFO.Storage();
  if (v2 <= 0x3F)
  {
    sub_10003EE24();
    if (v3 <= 0x3F)
    {
      sub_10003EEB0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003EE24()
{
  if (!qword_1000A3508)
  {
    sub_10000A738(&qword_1000A3510, &qword_100076D20);
    sub_10000A738(&qword_1000A3518, &qword_100076D28);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000A3508);
    }
  }
}

void sub_10003EEB0()
{
  if (!qword_1000A3520)
  {
    sub_10000A738(&qword_1000A3528, qword_100076D30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A3520);
    }
  }
}

uint64_t sub_10003EF4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_100038058(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_10003EFD0()
{
  v0 = sub_10003F8F8(&off_100095DD0);
  result = swift_arrayDestroy();
  qword_1000B19E0 = v0;
  return result;
}

uint64_t sub_10003F060@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10003F04C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 96 * a1);
    v9 = v8[5];
    v10 = v7 - 1;
    a2[2] = v8[4];
    a2[3] = v9;
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[3];
    *a2 = v8[2];
    a2[1] = v12;
    result = memmove(v8 + 2, v8 + 8, 96 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10003F108@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = (v3 + 96 * v5);
      v7 = *(v6 - 1);
      a1[2] = *(v6 - 2);
      a1[3] = v7;
      v8 = v6[1];
      a1[4] = *v6;
      a1[5] = v8;
      v9 = *(v6 - 3);
      *a1 = *(v6 - 4);
      a1[1] = v9;
      *(v3 + 16) = v5 - 1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_10003F04C(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003F18C(unint64_t result, _BYTE *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 96 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 96 * v7;
  a2 = (v9 + 32 + 96 * v8);
  if (result != a2 || result >= &a2[96 * v14])
  {
    result = memmove(result, a2, 96 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v6, 0x60uLL);
  a3 = &qword_1000A3550;
  a4 = &qword_100076E48;
  a2 = v18;
  result = v6;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_10003F3B4(result, a2, a3, a4);
    __break(1u);
    return result;
  }

  return sub_10003F3B4(v6, v18, &qword_1000A3550, &qword_100076E48);
}

unint64_t sub_10003F2A8(unint64_t result, _BYTE *a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100028458(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_10003F18C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_10003F3B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A0C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003F41C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003F478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100010760;

  return sub_100036E70(a1, v4, v5, v6);
}

uint64_t sub_10003F52C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003F574()
{
  result = qword_1000A4E80;
  if (!qword_1000A4E80)
  {
    sub_10000A738(&qword_1000A3570, &unk_100076E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4E80);
  }

  return result;
}

uint64_t sub_10003F5D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100010760;

  return sub_10003D490(v2, v3);
}

uint64_t sub_10003F670()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100010760;

  return sub_10003D4FC(v2, v3);
}

uint64_t sub_10003F708()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(0);
}

uint64_t sub_10003F800()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(0);
}

Swift::Int sub_10003F8F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A0C8(&qword_1000A3580, &unk_100076EF8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_10003FA60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A21B0 != -1)
  {
    swift_once();
  }

  if (sub_10003D608(a3, a4, qword_1000B19E0))
  {
    if (qword_1000A21A8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002DB8(v15, qword_1000B19C8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_100005C68(a3, a4, v28);
      _os_log_impl(&_mh_execute_header, v16, v17, "bypassing setting of xattr 'com.apple.dataprotection.policy.exception-applied-by' for %{public}s", v18, 0xCu);
      sub_100005E9C(v19);
    }
  }

  else
  {
    v30 = a5;
    v20 = [objc_opt_self() defaultManager];
    static String.Encoding.utf8.getter();
    v21 = String.data(using:allowLossyConversion:)();
    v23 = v22;
    (*(v11 + 8))(v14, v10);
    if (v23 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      sub_100011FAC(v21, v23);
      v24 = sub_10006B624(a1, a2, 0xD000000000000034, 0x8000000100083890, v21, v23);

      sub_10000B068(v21, v23);
      if (v24)
      {
        v25 = errno.getter();
        LODWORD(v28[0]) = v25;
        sub_100033644();
        swift_willThrowTypedImpl();
        sub_10003FDF8(v21, v23);
        if (v25 != 2)
        {
          v28[0] = a1;
          v28[1] = a2;
          v28[2] = 0;
          v28[3] = 0;
          v29 = 21;
          sub_10000EEA4();
          swift_willThrowTypedImpl();

          v26 = v30;
          *v30 = a1;
          v26[1] = a2;
          v26[2] = 0;
          v26[3] = 0;
          *(v26 + 32) = 21;
        }
      }

      else
      {
        sub_10003FDF8(v21, v23);
      }
    }
  }
}

uint64_t sub_10003FDF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B068(a1, a2);
  }

  return a1;
}

uint64_t sub_10003FE0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000DBBC;

  return sub_10003D554(v2, v3);
}

uint64_t sub_10003FEA4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000DBBC;

  return sub_100037A00();
}

void sub_10003FF88(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for ProtectionClassRemediator.FIFO.Storage();
  if (v2 <= 0x3F)
  {
    sub_1000401B8(319, &qword_1000A3618, &type metadata for () + 8, &type metadata accessor for AsyncStream.Iterator);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10004004C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = sub_10000A0C8(a4, a5);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

void *sub_100040110(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v9 = sub_10000A0C8(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 28);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1000401B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100040208()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  AnalyticsStore.init()();
  if (v1)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100002DB8(v9, qword_1000B1908);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21[1] = v2;
      v13 = v4;
      v14 = v12;
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "failed to open database: %{public}@", v14, 0xCu);
      sub_100002CF0(v15, &qword_1000A4EC0, &qword_100076C00);

      v4 = v13;
    }

    else
    {
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "removing old database", v19, 2u);
    }

    static AnalyticsStore.databaseURL(reset:)(1, v7);
    (*(v4 + 8))(v7, v3);
    v8 = swift_allocObject();
    AnalyticsStore.init()();
  }

  return v8;
}

void *AnalyticsStoreContext.__allocating_init(modelContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = type metadata accessor for ModelContext();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  ModelContext.init(_:)();
  v6 = type metadata accessor for DefaultSerialModelExecutor();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = DefaultSerialModelExecutor.init(modelContext:)();
  v10 = sub_100057610(&qword_1000A2330, &type metadata accessor for DefaultSerialModelExecutor);
  v2[2] = v9;
  v2[3] = v10;
  v2[4] = a1;
  return v2;
}

uint64_t sub_1000405AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = *v4;
  v11 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v22 - v13;
  result = sub_100050644();
  if (!v5)
  {
    v24 = a2;
    v27 = result;
    v26 = v10;
    v16 = result;
    KeyPath = swift_getKeyPath();
    v25 = a4;
    v22[1] = v22;
    __chkstk_darwin(KeyPath);
    v23 = a3;
    v22[-2] = v16;
    v22[-1] = a1;
    sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v27 = v16;
    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    v19 = v24;
    v22[-4] = v16;
    v22[-3] = v19;
    LOBYTE(v22[-2]) = v23 & 1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000216C4(v25, v14);
    v27 = v16;
    v20 = swift_getKeyPath();
    __chkstk_darwin(v20);
    v22[-2] = v16;
    v22[-1] = v14;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100002CF0(v14, &qword_1000A28C0, &qword_100075130);
    sub_100006ABC(&qword_1000A2B30, v21, type metadata accessor for AnalyticsStoreContext);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
  }

  return result;
}

uint64_t sub_10004091C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[59] = a3;
  v4[60] = a4;
  v4[57] = a1;
  v4[58] = a2;
  v5 = *(*(sub_10000A0C8(&qword_1000A43A8, &qword_1000780D0) - 8) + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = type metadata accessor for AnalyticsStoreContext();
  sub_100006ABC(&qword_1000A2338, v6, type metadata accessor for AnalyticsStoreContext);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[63] = v8;
  v4[64] = v7;

  return _swift_task_switch(sub_100040A14, v8, v7);
}

uint64_t sub_100040A14()
{
  v1 = *(v0 + 488);
  v53 = *(v0 + 496);
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v4 = *(v0 + 456);
  v5 = sub_10000A0C8(&qword_1000A43B0, &qword_1000780D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  *(v0 + 520) = v8;
  v9 = swift_task_alloc();
  *(v0 + 528) = v9;
  *(v9 + 16) = v4;
  v10 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
  *(v0 + 536) = v10;
  *(v0 + 448) = v10;
  Predicate.init(_:)();
  v11 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
  (*(*(v11 - 8) + 56))(v1, 0, 1, v11);
  *(v0 + 544) = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  *(v0 + 552) = sub_100006ABC(&qword_1000A2B30, v12, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v13 = dispatch thunk of ModelContext.fetch<A>(_:)();
  *(v0 + 560) = v13;
  (*(v6 + 8))(v8, v5);

  if (v13 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result;
    *(v0 + 568) = result;
    if (result)
    {
LABEL_7:
      if (v15 < 1)
      {
        __break(1u);
      }

      else
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = 0;
          v17 = &_swiftEmptyArrayStorage;
          do
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = swift_unknownObjectRetain();
            sub_10001CE0C(v18, v0 + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_100028578(0, *(v17 + 2) + 1, 1, v17);
            }

            v20 = *(v17 + 2);
            v19 = *(v17 + 3);
            if (v20 >= v19 >> 1)
            {
              v17 = sub_100028578((v19 > 1), v20 + 1, 1, v17);
            }

            ++v16;
            swift_unknownObjectRelease();
            *(v17 + 2) = v20 + 1;
            v21 = &v17[216 * v20];
            v22 = *(v0 + 32);
            *(v21 + 2) = *(v0 + 16);
            *(v21 + 3) = v22;
            v23 = *(v0 + 48);
            v24 = *(v0 + 64);
            v25 = *(v0 + 96);
            *(v21 + 6) = *(v0 + 80);
            *(v21 + 7) = v25;
            *(v21 + 4) = v23;
            *(v21 + 5) = v24;
            v26 = *(v0 + 112);
            v27 = *(v0 + 128);
            v28 = *(v0 + 160);
            *(v21 + 10) = *(v0 + 144);
            *(v21 + 11) = v28;
            *(v21 + 8) = v26;
            *(v21 + 9) = v27;
            v29 = *(v0 + 176);
            v30 = *(v0 + 192);
            v31 = *(v0 + 208);
            *(v21 + 30) = *(v0 + 224);
            *(v21 + 13) = v30;
            *(v21 + 14) = v31;
            *(v21 + 12) = v29;
          }

          while (v15 != v16);
        }

        else
        {
          v32 = (v13 + 32);
          v17 = &_swiftEmptyArrayStorage;
          do
          {
            v33 = *v32;
            v34 = swift_retain_n();
            sub_10001CE0C(v34, v0 + 232);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_100028578(0, *(v17 + 2) + 1, 1, v17);
            }

            v36 = *(v17 + 2);
            v35 = *(v17 + 3);
            if (v36 >= v35 >> 1)
            {
              v17 = sub_100028578((v35 > 1), v36 + 1, 1, v17);
            }

            *(v17 + 2) = v36 + 1;
            v37 = &v17[216 * v36];
            v38 = *(v0 + 248);
            *(v37 + 2) = *(v0 + 232);
            *(v37 + 3) = v38;
            v39 = *(v0 + 264);
            v40 = *(v0 + 280);
            v41 = *(v0 + 312);
            *(v37 + 6) = *(v0 + 296);
            *(v37 + 7) = v41;
            *(v37 + 4) = v39;
            *(v37 + 5) = v40;
            v42 = *(v0 + 328);
            v43 = *(v0 + 344);
            v44 = *(v0 + 376);
            *(v37 + 10) = *(v0 + 360);
            *(v37 + 11) = v44;
            *(v37 + 8) = v42;
            *(v37 + 9) = v43;
            v45 = *(v0 + 392);
            v46 = *(v0 + 408);
            v47 = *(v0 + 424);
            *(v37 + 30) = *(v0 + 440);
            *(v37 + 13) = v46;
            *(v37 + 14) = v47;
            *(v37 + 12) = v45;
            ++v32;
            --v15;
          }

          while (v15);
        }

        *(v0 + 576) = v17;
        v48 = swift_task_alloc();
        *(v0 + 584) = v48;
        *v48 = v0;
        v48[1] = sub_10004110C;
        v49 = *(v0 + 480);

        return sub_100016AA8(v17, v49);
      }

      return result;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 568) = v15;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  v51 = *(v0 + 480);
  v50 = *(v0 + 488);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_10004110C()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  v2[74] = v0;

  v5 = v2[72];
  if (v0)
  {
    v6 = v2[70];

    v7 = v2[63];
    v8 = v2[64];
    v9 = sub_1000419EC;
  }

  else
  {

    v7 = v2[63];
    v8 = v2[64];
    v9 = sub_100041250;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100041250()
{
  v1 = 0;
  v2 = *(v0 + 560) + 32;
  do
  {
    if ((*(v0 + 560) & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v2 + 8 * v1);
    }

    v3 = *(v0 + 568);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    v6 = *(v0 + 536);
    v7 = *(v0 + 496);
    ++v1;
    v8 = *(v0 + 472);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  while (v1 != v3);
  v10 = *(v0 + 560);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);

  v13 = *(v0 + 488);
  v76 = *(v0 + 496);
  v77 = *(v0 + 592);
  v14 = *(v0 + 464);
  v75 = *(v0 + 472);
  v15 = *(v0 + 456);
  v16 = sub_10000A0C8(&qword_1000A43B0, &qword_1000780D8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  *(v0 + 520) = v19;
  v20 = swift_task_alloc();
  *(v0 + 528) = v20;
  *(v20 + 16) = v15;
  v21 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
  *(v0 + 536) = v21;
  *(v0 + 448) = v21;
  Predicate.init(_:)();
  v22 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  *(v0 + 544) = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  *(v0 + 552) = sub_100006ABC(&qword_1000A2B30, v23, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v24 = dispatch thunk of ModelContext.fetch<A>(_:)();
  *(v0 + 560) = v24;
  (*(v17 + 8))(v19, v16);

  if (v77)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100002DB8(v26, qword_1000B1908);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "processViolations failed: %@", v29, 0xCu);
      sub_100002CF0(v30, &qword_1000A4EC0, &qword_100076C00);
    }

    v32 = *(v0 + 480);

    sub_10000EEA4();
    swift_allocError();
    *v33 = 6;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 32) = 22;
    swift_willThrow();

    v34 = *(v0 + 528);
    v35 = *(v0 + 520);
    v36 = *(v0 + 488);

    v37 = *(v0 + 8);
    goto LABEL_12;
  }

  if (!(v24 >> 62))
  {
    v38 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 568) = v38;
    if (v38)
    {
      goto LABEL_17;
    }

LABEL_36:
    v73 = *(v0 + 480);
    v74 = *(v0 + 488);

    v37 = *(v0 + 8);
LABEL_12:

    return v37();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v38 = result;
  *(v0 + 568) = result;
  if (!result)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (v38 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v39 = 0;
      v40 = &_swiftEmptyArrayStorage;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v41 = swift_unknownObjectRetain();
        sub_10001CE0C(v41, v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_100028578(0, *(v40 + 2) + 1, 1, v40);
        }

        v43 = *(v40 + 2);
        v42 = *(v40 + 3);
        if (v43 >= v42 >> 1)
        {
          v40 = sub_100028578((v42 > 1), v43 + 1, 1, v40);
        }

        ++v39;
        swift_unknownObjectRelease();
        *(v40 + 2) = v43 + 1;
        v44 = &v40[216 * v43];
        v45 = *(v0 + 32);
        *(v44 + 2) = *(v0 + 16);
        *(v44 + 3) = v45;
        v46 = *(v0 + 48);
        v47 = *(v0 + 64);
        v48 = *(v0 + 96);
        *(v44 + 6) = *(v0 + 80);
        *(v44 + 7) = v48;
        *(v44 + 4) = v46;
        *(v44 + 5) = v47;
        v49 = *(v0 + 112);
        v50 = *(v0 + 128);
        v51 = *(v0 + 160);
        *(v44 + 10) = *(v0 + 144);
        *(v44 + 11) = v51;
        *(v44 + 8) = v49;
        *(v44 + 9) = v50;
        v52 = *(v0 + 176);
        v53 = *(v0 + 192);
        v54 = *(v0 + 208);
        *(v44 + 30) = *(v0 + 224);
        *(v44 + 13) = v53;
        *(v44 + 14) = v54;
        *(v44 + 12) = v52;
      }

      while (v38 != v39);
    }

    else
    {
      v55 = (v24 + 32);
      v40 = &_swiftEmptyArrayStorage;
      do
      {
        v56 = *v55;
        v57 = swift_retain_n();
        sub_10001CE0C(v57, v0 + 232);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_100028578(0, *(v40 + 2) + 1, 1, v40);
        }

        v59 = *(v40 + 2);
        v58 = *(v40 + 3);
        if (v59 >= v58 >> 1)
        {
          v40 = sub_100028578((v58 > 1), v59 + 1, 1, v40);
        }

        *(v40 + 2) = v59 + 1;
        v60 = &v40[216 * v59];
        v61 = *(v0 + 248);
        *(v60 + 2) = *(v0 + 232);
        *(v60 + 3) = v61;
        v62 = *(v0 + 264);
        v63 = *(v0 + 280);
        v64 = *(v0 + 312);
        *(v60 + 6) = *(v0 + 296);
        *(v60 + 7) = v64;
        *(v60 + 4) = v62;
        *(v60 + 5) = v63;
        v65 = *(v0 + 328);
        v66 = *(v0 + 344);
        v67 = *(v0 + 376);
        *(v60 + 10) = *(v0 + 360);
        *(v60 + 11) = v67;
        *(v60 + 8) = v65;
        *(v60 + 9) = v66;
        v68 = *(v0 + 392);
        v69 = *(v0 + 408);
        v70 = *(v0 + 424);
        *(v60 + 30) = *(v0 + 440);
        *(v60 + 13) = v69;
        *(v60 + 14) = v70;
        *(v60 + 12) = v68;
        ++v55;
        --v38;
      }

      while (v38);
    }

    *(v0 + 576) = v40;
    v71 = swift_task_alloc();
    *(v0 + 584) = v71;
    *v71 = v0;
    v71[1] = sub_10004110C;
    v72 = *(v0 + 480);

    return sub_100016AA8(v40, v72);
  }

  return result;
}

uint64_t sub_1000419EC()
{
  v1 = v0[60];

  v2 = v0[74];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[61];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100041A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a3;
  v4[64] = a4;
  v4[61] = a1;
  v4[62] = a2;
  v5 = *(*(sub_10000A0C8(&qword_1000A44C8, &qword_100078140) - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = type metadata accessor for AnalyticsStoreContext();
  sub_100006ABC(&qword_1000A2338, v6, type metadata accessor for AnalyticsStoreContext);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[67] = v8;
  v4[68] = v7;

  return _swift_task_switch(sub_100041B74, v8, v7);
}

uint64_t sub_100041B74()
{
  v55 = *(v0 + 528);
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v4 = *(v0 + 488);
  v5 = sub_10000A0C8(&qword_1000A44D0, &qword_100078148);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  *(v0 + 552) = v8;
  v9 = swift_task_alloc();
  *(v0 + 560) = v9;
  *(v9 + 16) = v4;
  v10 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  *(v0 + 568) = v10;
  *(v0 + 480) = v10;
  Predicate.init(_:)();
  v11 = sub_10000A0C8(&qword_1000A44D8, &qword_100078150);
  (*(*(v11 - 8) + 56))(v1, 0, 1, v11);
  *(v0 + 576) = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  *(v0 + 584) = sub_100006ABC(&qword_1000A2B30, v12, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v13 = dispatch thunk of ModelContext.fetch<A>(_:)();
  *(v0 + 592) = v13;
  (*(v6 + 8))(v8, v5);

  if (v13 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result;
    *(v0 + 600) = result;
    if (result)
    {
LABEL_7:
      if (v15 < 1)
      {
        __break(1u);
      }

      else
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = 0;
          v17 = &_swiftEmptyArrayStorage;
          do
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = swift_unknownObjectRetain();
            sub_10001D540(v18, v0 + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1000286A0(0, *(v17 + 2) + 1, 1, v17);
            }

            v20 = *(v17 + 2);
            v19 = *(v17 + 3);
            if (v20 >= v19 >> 1)
            {
              v17 = sub_1000286A0((v19 > 1), v20 + 1, 1, v17);
            }

            ++v16;
            swift_unknownObjectRelease();
            *(v17 + 2) = v20 + 1;
            v21 = &v17[232 * v20];
            v22 = *(v0 + 16);
            v23 = *(v0 + 48);
            *(v21 + 3) = *(v0 + 32);
            *(v21 + 4) = v23;
            *(v21 + 2) = v22;
            v24 = *(v0 + 64);
            v25 = *(v0 + 80);
            v26 = *(v0 + 112);
            *(v21 + 7) = *(v0 + 96);
            *(v21 + 8) = v26;
            *(v21 + 5) = v24;
            *(v21 + 6) = v25;
            v27 = *(v0 + 128);
            v28 = *(v0 + 144);
            v29 = *(v0 + 176);
            *(v21 + 11) = *(v0 + 160);
            *(v21 + 12) = v29;
            *(v21 + 9) = v27;
            *(v21 + 10) = v28;
            v30 = *(v0 + 192);
            v31 = *(v0 + 208);
            v32 = *(v0 + 224);
            *(v21 + 32) = *(v0 + 240);
            *(v21 + 14) = v31;
            *(v21 + 15) = v32;
            *(v21 + 13) = v30;
          }

          while (v15 != v16);
        }

        else
        {
          v33 = (v13 + 32);
          v17 = &_swiftEmptyArrayStorage;
          do
          {
            v34 = *v33;
            v35 = swift_retain_n();
            sub_10001D540(v35, v0 + 248);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1000286A0(0, *(v17 + 2) + 1, 1, v17);
            }

            v37 = *(v17 + 2);
            v36 = *(v17 + 3);
            if (v37 >= v36 >> 1)
            {
              v17 = sub_1000286A0((v36 > 1), v37 + 1, 1, v17);
            }

            *(v17 + 2) = v37 + 1;
            v38 = &v17[232 * v37];
            v39 = *(v0 + 248);
            v40 = *(v0 + 280);
            *(v38 + 3) = *(v0 + 264);
            *(v38 + 4) = v40;
            *(v38 + 2) = v39;
            v41 = *(v0 + 296);
            v42 = *(v0 + 312);
            v43 = *(v0 + 344);
            *(v38 + 7) = *(v0 + 328);
            *(v38 + 8) = v43;
            *(v38 + 5) = v41;
            *(v38 + 6) = v42;
            v44 = *(v0 + 360);
            v45 = *(v0 + 376);
            v46 = *(v0 + 408);
            *(v38 + 11) = *(v0 + 392);
            *(v38 + 12) = v46;
            *(v38 + 9) = v44;
            *(v38 + 10) = v45;
            v47 = *(v0 + 424);
            v48 = *(v0 + 440);
            v49 = *(v0 + 456);
            *(v38 + 32) = *(v0 + 472);
            *(v38 + 14) = v48;
            *(v38 + 15) = v49;
            *(v38 + 13) = v47;
            ++v33;
            --v15;
          }

          while (v15);
        }

        *(v0 + 608) = v17;
        v50 = swift_task_alloc();
        *(v0 + 616) = v50;
        *v50 = v0;
        v50[1] = sub_100042284;
        v51 = *(v0 + 512);

        return sub_100018308(v17, v51);
      }

      return result;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v15;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  v52 = *(v0 + 520);
  v53 = *(v0 + 512);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_100042284()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  v2[78] = v0;

  v5 = v2[76];
  if (v0)
  {
    v6 = v2[74];

    v7 = v2[68];
    v8 = v2[67];
    v9 = sub_100042B84;
  }

  else
  {

    v7 = v2[68];
    v8 = v2[67];
    v9 = sub_1000423D0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000423D0()
{
  v1 = 0;
  v2 = *(v0 + 592) + 32;
  do
  {
    if ((*(v0 + 592) & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v2 + 8 * v1);
    }

    v3 = *(v0 + 600);
    v4 = *(v0 + 584);
    v5 = *(v0 + 576);
    v6 = *(v0 + 568);
    v7 = *(v0 + 528);
    ++v1;
    v8 = *(v0 + 504);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  while (v1 != v3);
  v10 = *(v0 + 592);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);

  v78 = *(v0 + 528);
  v79 = *(v0 + 624);
  v13 = *(v0 + 520);
  v14 = *(v0 + 496);
  v77 = *(v0 + 504);
  v15 = *(v0 + 488);
  v16 = sub_10000A0C8(&qword_1000A44D0, &qword_100078148);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  *(v0 + 552) = v19;
  v20 = swift_task_alloc();
  *(v0 + 560) = v20;
  *(v20 + 16) = v15;
  v21 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  *(v0 + 568) = v21;
  *(v0 + 480) = v21;
  Predicate.init(_:)();
  v22 = sub_10000A0C8(&qword_1000A44D8, &qword_100078150);
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  *(v0 + 576) = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  *(v0 + 584) = sub_100006ABC(&qword_1000A2B30, v23, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v24 = dispatch thunk of ModelContext.fetch<A>(_:)();
  *(v0 + 592) = v24;
  (*(v17 + 8))(v19, v16);

  if (v79)
  {
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100002DB8(v26, qword_1000B1908);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "processFileAccesses failed: %@", v29, 0xCu);
      sub_100002CF0(v30, &qword_1000A4EC0, &qword_100076C00);
    }

    v32 = *(v0 + 512);

    sub_10000EEA4();
    swift_allocError();
    *v33 = 6;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 32) = 22;
    swift_willThrow();

    v34 = *(v0 + 560);
    v35 = *(v0 + 552);
    v36 = *(v0 + 520);

    v37 = *(v0 + 8);
    goto LABEL_12;
  }

  if (!(v24 >> 62))
  {
    v38 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v38;
    if (v38)
    {
      goto LABEL_17;
    }

LABEL_36:
    v75 = *(v0 + 520);
    v76 = *(v0 + 512);

    v37 = *(v0 + 8);
LABEL_12:

    return v37();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v38 = result;
  *(v0 + 600) = result;
  if (!result)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (v38 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v39 = 0;
      v40 = &_swiftEmptyArrayStorage;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v41 = swift_unknownObjectRetain();
        sub_10001D540(v41, v0 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1000286A0(0, *(v40 + 2) + 1, 1, v40);
        }

        v43 = *(v40 + 2);
        v42 = *(v40 + 3);
        if (v43 >= v42 >> 1)
        {
          v40 = sub_1000286A0((v42 > 1), v43 + 1, 1, v40);
        }

        ++v39;
        swift_unknownObjectRelease();
        *(v40 + 2) = v43 + 1;
        v44 = &v40[232 * v43];
        v45 = *(v0 + 16);
        v46 = *(v0 + 48);
        *(v44 + 3) = *(v0 + 32);
        *(v44 + 4) = v46;
        *(v44 + 2) = v45;
        v47 = *(v0 + 64);
        v48 = *(v0 + 80);
        v49 = *(v0 + 112);
        *(v44 + 7) = *(v0 + 96);
        *(v44 + 8) = v49;
        *(v44 + 5) = v47;
        *(v44 + 6) = v48;
        v50 = *(v0 + 128);
        v51 = *(v0 + 144);
        v52 = *(v0 + 176);
        *(v44 + 11) = *(v0 + 160);
        *(v44 + 12) = v52;
        *(v44 + 9) = v50;
        *(v44 + 10) = v51;
        v53 = *(v0 + 192);
        v54 = *(v0 + 208);
        v55 = *(v0 + 224);
        *(v44 + 32) = *(v0 + 240);
        *(v44 + 14) = v54;
        *(v44 + 15) = v55;
        *(v44 + 13) = v53;
      }

      while (v38 != v39);
    }

    else
    {
      v56 = (v24 + 32);
      v40 = &_swiftEmptyArrayStorage;
      do
      {
        v57 = *v56;
        v58 = swift_retain_n();
        sub_10001D540(v58, v0 + 248);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1000286A0(0, *(v40 + 2) + 1, 1, v40);
        }

        v60 = *(v40 + 2);
        v59 = *(v40 + 3);
        if (v60 >= v59 >> 1)
        {
          v40 = sub_1000286A0((v59 > 1), v60 + 1, 1, v40);
        }

        *(v40 + 2) = v60 + 1;
        v61 = &v40[232 * v60];
        v62 = *(v0 + 248);
        v63 = *(v0 + 280);
        *(v61 + 3) = *(v0 + 264);
        *(v61 + 4) = v63;
        *(v61 + 2) = v62;
        v64 = *(v0 + 296);
        v65 = *(v0 + 312);
        v66 = *(v0 + 344);
        *(v61 + 7) = *(v0 + 328);
        *(v61 + 8) = v66;
        *(v61 + 5) = v64;
        *(v61 + 6) = v65;
        v67 = *(v0 + 360);
        v68 = *(v0 + 376);
        v69 = *(v0 + 408);
        *(v61 + 11) = *(v0 + 392);
        *(v61 + 12) = v69;
        *(v61 + 9) = v67;
        *(v61 + 10) = v68;
        v70 = *(v0 + 424);
        v71 = *(v0 + 440);
        v72 = *(v0 + 456);
        *(v61 + 32) = *(v0 + 472);
        *(v61 + 14) = v71;
        *(v61 + 15) = v72;
        *(v61 + 13) = v70;
        ++v56;
        --v38;
      }

      while (v38);
    }

    *(v0 + 608) = v40;
    v73 = swift_task_alloc();
    *(v0 + 616) = v73;
    *v73 = v0;
    v73[1] = sub_100042284;
    v74 = *(v0 + 512);

    return sub_100018308(v40, v74);
  }

  return result;
}

uint64_t sub_100042B84()
{
  v1 = v0[64];

  v2 = v0[78];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[65];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100042C10()
{
  v2 = sub_100050644();
  if (!v0)
  {
    v4 = v2;
    swift_getKeyPath();
    sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
    sub_1000586F4();
    PersistentModel.getValue<A>(forKey:)();

    v1 = v4;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_1000585B8(&qword_1000A42D0, &qword_1000A42D8);
    PersistentModel.getValue<A>(forKey:)();
  }

  return v1;
}

uint64_t sub_100042DFC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10000A0C8(&qword_1000A43A8, &qword_1000780D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v98 = &v93[-v7];
  v8 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  if (qword_1000A2180 != -1)
  {
    swift_once();
  }

  v104 = v4;
  v105 = v8;
  v100 = v2;
  v106 = v11;
  v107 = v9;
  v108 = v10;
  v97 = *(qword_1000B1920 + 16);
  v12 = 0xEA0000000000656CLL;
  v13 = 0x6946657461657263;
  v14 = *(a1 + 48);
  v15 = 0xE800000000000000;
  v16 = 0x656C694665766F6DLL;
  v17 = 0xE900000000000065;
  v18 = 0x6C6946656E6F6C63;
  if (v14 != 4)
  {
    v18 = 0x656C694670617773;
    v17 = 0xE800000000000000;
  }

  if (v14 != 3)
  {
    v16 = v18;
    v15 = v17;
  }

  v19 = 0x8000000100082AF0;
  v20 = 0xD000000000000012;
  if (v14 != 1)
  {
    v20 = 0x656C69466B6E696CLL;
    v19 = 0xE800000000000000;
  }

  if (*(a1 + 48))
  {
    v13 = v20;
    v12 = v19;
  }

  if (*(a1 + 48) <= 2u)
  {
    v21 = v13;
  }

  else
  {
    v21 = v16;
  }

  if (*(a1 + 48) <= 2u)
  {
    v22 = v12;
  }

  else
  {
    v22 = v15;
  }

  v23 = *(a1 + 16);
  v112 = *(a1 + 32);
  v113 = v23;
  v24 = *(a1 + 49);
  v94 = *(a1 + 50);
  LODWORD(v95) = *(a1 + 52);
  LODWORD(v96) = *(a1 + 53);
  v101 = *(a1 + 56);
  v25 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  *(v28 + 48) = sub_10000A0C8(&qword_1000A42B8, &qword_100077E20);
  v29 = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  *&v109 = v25;
  *(&v109 + 1) = v25;
  v110 = v29;
  v111 = v29;
  *(v28 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v28 + 24));
  v102 = v29;
  v103 = v25;
  static PersistentModel.createBackingData<A>()();
  *(v28 + 16) = 257;
  ObservationRegistrar.init()();
  v30 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  *&v109 = v21;
  *(&v109 + 1) = v22;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v31 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  *&v109 = v105;
  *(&v109 + 1) = v107;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v32 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v109 = v113;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v33 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v109 = v112;
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  sub_100006A40();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v28 + 16) = 0;
  v34 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  *&v109 = v106;
  *(&v109 + 1) = v108;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v28 + 17) = 0;
  if (v24 <= 3)
  {
    v42 = 0x7269447373616C63;
    v43 = 0x427373616C63;
    v44 = 0xE600000000000000;
    if (v24 != 2)
    {
      v43 = 0x437373616C63;
    }

    if (v24)
    {
      v42 = 0x417373616C63;
    }

    else
    {
      v44 = 0xEC000000656E6F4ELL;
    }

    if (v24 <= 1)
    {
      v40 = v42;
    }

    else
    {
      v40 = v43;
    }

    if (v24 <= 1)
    {
      v41 = v44;
    }

    else
    {
      v41 = 0xE600000000000000;
    }
  }

  else
  {
    v35 = 0xE600000000000000;
    v36 = 0x467373616C63;
    v37 = 0xE700000000000000;
    v38 = 0x58437373616C63;
    if (v24 != 7)
    {
      v38 = 0x6365746F72506F6ELL;
      v37 = 0xEC0000006E6F6974;
    }

    if (v24 != 6)
    {
      v36 = v38;
      v35 = v37;
    }

    v39 = 0x447373616C63;
    if (v24 != 4)
    {
      v39 = 0x457373616C63;
    }

    if (v24 <= 5)
    {
      v40 = v39;
    }

    else
    {
      v40 = v36;
    }

    if (v24 <= 5)
    {
      v41 = 0xE600000000000000;
    }

    else
    {
      v41 = v35;
    }
  }

  v45 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  *&v109 = v40;
  *(&v109 + 1) = v41;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v46 = v106;
  if (v94 <= 3)
  {
    v54 = 0x7269447373616C63;
    v55 = 0x427373616C63;
    v56 = 0xE600000000000000;
    if (v94 != 2)
    {
      v55 = 0x437373616C63;
    }

    if (v94)
    {
      v54 = 0x417373616C63;
    }

    else
    {
      v56 = 0xEC000000656E6F4ELL;
    }

    if (v94 <= 1)
    {
      v52 = v54;
    }

    else
    {
      v52 = v55;
    }

    if (v94 <= 1)
    {
      v53 = v56;
    }

    else
    {
      v53 = 0xE600000000000000;
    }
  }

  else
  {
    v47 = 0xE600000000000000;
    v48 = 0x467373616C63;
    v49 = 0xE700000000000000;
    v50 = 0x58437373616C63;
    if (v94 != 7)
    {
      v50 = 0x6365746F72506F6ELL;
      v49 = 0xEC0000006E6F6974;
    }

    if (v94 != 6)
    {
      v48 = v50;
      v47 = v49;
    }

    v51 = 0x447373616C63;
    if (v94 != 4)
    {
      v51 = 0x457373616C63;
    }

    if (v94 <= 5)
    {
      v52 = v51;
    }

    else
    {
      v52 = v48;
    }

    if (v94 <= 5)
    {
      v53 = 0xE600000000000000;
    }

    else
    {
      v53 = v47;
    }
  }

  v57 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  *&v109 = v52;
  *(&v109 + 1) = v53;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v58 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  LOBYTE(v109) = v95;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v59 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  LOBYTE(v109) = v96;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v60 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  *&v109 = v101;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v61 = *(v28 + 56);
  sub_100006978((v28 + 24), *(v28 + 48));
  swift_getKeyPath();
  v62 = v97;
  *&v109 = v97;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v63 = sub_10000A0C8(&qword_1000A43B0, &qword_1000780D8);
  v96 = v93;
  v101 = v63;
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v66 = __chkstk_darwin(v63);
  v68 = &v93[-v67];
  v95 = v93;
  __chkstk_darwin(v66);
  v70 = v107;
  v69 = v108;
  *&v93[-48] = v105;
  *&v93[-40] = v70;
  *&v93[-32] = v46;
  *&v93[-24] = v69;
  *&v93[-16] = v62;
  *&v109 = v103;
  v71 = v98;
  Predicate.init(_:)();
  v72 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100006ABC(&qword_1000A2B30, v73, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v74 = v99;
  v75 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  if (v74)
  {
    (*(v64 + 8))(v68, v101);
  }

  v77 = v75;
  v99 = v68;
  v78 = v101;

  if (!v77)
  {
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.insert<A>(_:)();

    v91 = *(v64 + 8);
    v92 = v99;
    return v91(v92, v78);
  }

  if (qword_1000A2178 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_100002DB8(v79, qword_1000B1908);
  v80 = v108;

  v81 = v107;

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();

  v104 = v82;
  v84 = os_log_type_enabled(v82, v83);
  v85 = v99;
  if (!v84)
  {

    v91 = *(v64 + 8);
    v92 = v85;
    return v91(v92, v78);
  }

  v86 = swift_slowAlloc();
  v114 = swift_slowAlloc();
  *v86 = 136446466;
  *(v86 + 4) = sub_100005C68(v105, v81, &v114);
  *(v86 + 12) = 2082;
  if (v80)
  {
    v87 = v106;
  }

  else
  {
    v87 = 0x206E776F6E6B6E75;
  }

  if (v80)
  {
    v88 = v80;
  }

  else
  {
    v88 = 0xEE006E69616D6F64;
  }

  v89 = sub_100005C68(v87, v88, &v114);

  *(v86 + 14) = v89;
  v90 = v104;
  _os_log_impl(&_mh_execute_header, v104, v83, "skipping duplicate violation for %{public}s in %{public}s", v86, 0x16u);
  swift_arrayDestroy();

  return (*(v64 + 8))(v85, v101);
}

uint64_t sub_100043B30(uint64_t a1)
{
  v4 = *v1;
  v5 = sub_10000A0C8(&qword_1000A44C8, &qword_100078140);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v57 - v7;
  v9 = *(a1 + 64);
  v66 = v8;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v64 = 0x8000000100082AF0;
      v14 = 0xD000000000000012;
      v15 = &v77;
    }

    else
    {
      v16 = v9 == 4;
      v14 = 0xE400000000000000;
      v17 = 1802398060;
      if (!v16)
      {
        v17 = 0x6E776F6E6B6E75;
      }

      v65 = v17;
      if (!v16)
      {
        v14 = 0xE700000000000000;
      }

      v15 = &v76;
    }
  }

  else
  {
    v10 = 0xE500000000000000;
    v11 = 0x6574697277;
    if (v9 != 1)
    {
      v11 = 0x657461657263;
      v10 = 0xE600000000000000;
    }

    v12 = v9 == 0;
    if (v9)
    {
      v13 = v11;
    }

    else
    {
      v13 = 1684104562;
    }

    v65 = v13;
    if (v12)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = v10;
    }

    v15 = &v76;
  }

  *(v15 - 32) = v14;
  v18 = *(a1 + 65);
  v68 = v1;
  v60 = v4;
  v67 = v2;
  if (v18 <= 3)
  {
    v27 = 0xEC000000656E6F4ELL;
    v28 = 0x7269447373616C63;
    v29 = 0x427373616C63;
    if (v18 != 2)
    {
      v29 = 0x437373616C63;
    }

    if (v18)
    {
      v28 = 0x417373616C63;
      v27 = 0xE600000000000000;
    }

    v30 = v18 <= 1;
    if (v18 <= 1)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    v63 = v31;
    if (v30)
    {
      v26 = v27;
    }

    else
    {
      v26 = 0xE600000000000000;
    }
  }

  else
  {
    v19 = 0xE600000000000000;
    v20 = 0x467373616C63;
    v21 = 0xE700000000000000;
    v22 = 0x58437373616C63;
    if (v18 != 7)
    {
      v22 = 0x6365746F72506F6ELL;
      v21 = 0xEC0000006E6F6974;
    }

    if (v18 != 6)
    {
      v20 = v22;
      v19 = v21;
    }

    v23 = 0x447373616C63;
    if (v18 != 4)
    {
      v23 = 0x457373616C63;
    }

    v24 = v18 <= 5;
    if (v18 <= 5)
    {
      v25 = v23;
    }

    else
    {
      v25 = v20;
    }

    v63 = v25;
    if (v24)
    {
      v26 = 0xE600000000000000;
    }

    else
    {
      v26 = v19;
    }
  }

  v32 = *a1;
  v33 = *(a1 + 8);
  v35 = *(a1 + 48);
  v34 = *(a1 + 56);
  LODWORD(v62) = *(a1 + 66);
  LODWORD(v61) = *(a1 + 67);
  if (qword_1000A2180 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v36 = *(qword_1000B1920 + 16);
    v37 = sub_10000A0C8(&qword_1000A44D0, &qword_100078148);
    v72 = &v57;
    v69 = *(v37 - 8);
    v70 = v37;
    v38 = *(v69 + 64);
    v39 = __chkstk_darwin(v37);
    v41 = &v57 - v40;
    v71 = &v57;
    __chkstk_darwin(v39);
    *(&v57 - 10) = v32;
    *(&v57 - 9) = v33;
    *(&v57 - 8) = v35;
    *(&v57 - 7) = v34;
    v42 = v64;
    *(&v57 - 6) = v65;
    *(&v57 - 5) = v42;
    *(&v57 - 4) = v63;
    *(&v57 - 3) = v26;
    *(&v57 - 16) = v62;
    *(&v57 - 15) = v61;
    *(&v57 - 1) = v36;
    v32 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
    v75 = v32;
    v43 = v66;
    Predicate.init(_:)();

    v44 = sub_10000A0C8(&qword_1000A44D8, &qword_100078150);
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v35 = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
    FetchDescriptor.init(predicate:sortBy:)();
    v46 = sub_100006ABC(&qword_1000A2B30, v45, type metadata accessor for AnalyticsStoreContext);
    v33 = v60;
    v26 = v68;
    ModelActor.modelContext.getter();
    v47 = v67;
    v48 = dispatch thunk of ModelContext.fetch<A>(_:)();
    v59 = v47;
    if (v47)
    {
      (*(v69 + 8))(v41, v70);
    }

    v66 = v35;
    v67 = v48;

    v50 = v67;
    v58 = v41;
    v57 = v36;
    v65 = v32;
    v64 = v46;
    if (v67 >> 62)
    {
      break;
    }

    v51 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v51)
    {
      goto LABEL_62;
    }

LABEL_46:
    v52 = 0;
    v63 = v50 & 0xC000000000000001;
    v62 = v50 & 0xFFFFFFFFFFFFFF8;
    v61 = v51;
    while (1)
    {
      if (v63)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v34 = v72;
      }

      else
      {
        v34 = v72;
        if (v52 >= *(v62 + 16))
        {
          goto LABEL_59;
        }

        v32 = *(v50 + 8 * v52 + 32);
      }

      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (*(a1 + 80))
      {
        goto LABEL_57;
      }

      v35 = a1;
      v54 = *(a1 + 72);
      v73 = v32;
      swift_getKeyPath();
      sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_100057E94();
      PersistentModel.getValue<A>(forKey:)();

      if (v74 == 1 || v73 >= v54)
      {
LABEL_57:
        (*(v69 + 8))(v58, v70);
      }

      v26 = v68;
      ModelActor.modelContext.getter();
      dispatch thunk of ModelContext.delete<A>(_:)();

      ++v52;
      v50 = v67;
      if (v53 == v61)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
  }

  v51 = _CocoaArrayWrapper.endIndex.getter();
  v50 = v67;
  if (v51)
  {
    goto LABEL_46;
  }

LABEL_62:

  v55 = *(v65 + 48);
  v56 = *(v65 + 52);
  swift_allocObject();
  sub_100028ADC(a1, &v73);
  sub_100047F94(a1);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.insert<A>(_:)();

  return (*(v69 + 8))(v58, v70);
}

uint64_t sub_100044414(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 224) = a4;
  *(v5 + 232) = a5;
  *(v5 + 208) = a2;
  *(v5 + 216) = a3;
  *(v5 + 320) = a1;
  *(v5 + 240) = type metadata accessor for AnalyticsStoreContext();
  sub_100006ABC(&qword_1000A2338, v6, type metadata accessor for AnalyticsStoreContext);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 248) = v8;
  *(v5 + 256) = v7;

  return _swift_task_switch(sub_1000444D8, v8, v7);
}

uint64_t sub_1000444D8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = sub_100053C28(*(v0 + 320));
  *(v0 + 264) = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 272) = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v27 = *(v0 + 240);
    v28 = *(v0 + 216);
    sub_100006ABC(&qword_1000A2B30, v4, type metadata accessor for AnalyticsStoreContext);
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
    v29 = *(v0 + 264);

    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v31 = *(v0 + 264);
    }

    else
    {
      v30 = *((*(v0 + 264) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = *(v0 + 224);
    v33 = *(v0 + 208);

    v34 = *(v0 + 8);

    return v34(v30 == v33);
  }

LABEL_21:
  v26 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 272) = v26;
  if (!v26)
  {
    goto LABEL_22;
  }

LABEL_3:
  for (i = 0; ; i = *(v0 + 288))
  {
    v7 = *(v0 + 264);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v7 + 8 * i + 32);
    }

    *(v0 + 280) = v8;
    *(v0 + 288) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_10004E8EC((v0 + 104));
    v9 = *(v0 + 112);
    if (v9)
    {
      break;
    }

    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002DB8(v10, qword_1000B1908);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "EnforcementTask has malformed event: a column in this row has an invalid value.", v13, 2u);
    }

    v14 = *(v0 + 240);
    v15 = *(v0 + 216);

    sub_100006ABC(&qword_1000A2B30, v16, type metadata accessor for AnalyticsStoreContext);
    ModelActor.modelContext.getter();
    type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
    sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
    dispatch thunk of ModelContext.delete<A>(_:)();

    v17 = *(v0 + 288);
    v18 = *(v0 + 272);

    if (v17 == v18)
    {
      goto LABEL_22;
    }
  }

  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = v9;
  v19 = *(v0 + 136);
  v20 = *(v0 + 168);
  *(v0 + 64) = *(v0 + 152);
  *(v0 + 80) = v20;
  *(v0 + 96) = *(v0 + 184);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v19;
  *(v0 + 192) = v8;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 296) = sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  v21 = *(v0 + 200);
  v22 = swift_task_alloc();
  *(v0 + 304) = v22;
  *v22 = v0;
  v22[1] = sub_1000449FC;
  v23 = *(v0 + 224);
  v24 = *(v0 + 232);

  return sub_10003870C(v0 + 16, v21, v23, v24);
}

uint64_t sub_1000449FC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v11 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v6 = *(v4 + 264);

    sub_100002CF0(v4 + 104, &qword_1000A4318, &qword_100078080);
    v7 = *(v4 + 248);
    v8 = *(v4 + 256);
    v9 = sub_1000450A0;
  }

  else
  {
    *(v4 + 321) = a1 & 1;
    sub_100002CF0(v4 + 104, &qword_1000A4318, &qword_100078080);
    v7 = *(v4 + 248);
    v8 = *(v4 + 256);
    v9 = sub_100044B5C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100044B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 280);
  if ((*(v2 + 321) & 1) == 0)
  {
    v7 = *(v2 + 312);
    goto LABEL_24;
  }

  v4 = *(v2 + 296);
  v5 = *(v2 + 240);
  v6 = *(v2 + 216);
  sub_100006ABC(&qword_1000A2B30, a2, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  dispatch thunk of ModelContext.delete<A>(_:)();
  v7 = *(v2 + 312);
  v8 = *(v2 + 280);
  while (1)
  {

LABEL_24:
    v29 = *(v2 + 288);
    v30 = *(v2 + 272);

    if (v29 == v30)
    {
      break;
    }

    v32 = *(v2 + 288);
    v33 = *(v2 + 264);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (v32 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *(v33 + 8 * v32 + 32);

        goto LABEL_17;
      }

      __break(1u);
    }

    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
    *(v2 + 280) = v20;
    *(v2 + 288) = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_31:
      swift_once();
      goto LABEL_20;
    }

    sub_10004E8EC((v2 + 104));
    v21 = *(v2 + 112);
    if (v21)
    {
      *(v2 + 16) = *(v2 + 104);
      *(v2 + 24) = v21;
      v34 = *(v2 + 136);
      v35 = *(v2 + 168);
      *(v2 + 64) = *(v2 + 152);
      *(v2 + 80) = v35;
      *(v2 + 96) = *(v2 + 184);
      *(v2 + 32) = *(v2 + 120);
      *(v2 + 48) = v34;
      *(v2 + 192) = v20;
      swift_getKeyPath();
      sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      *(v2 + 296) = sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
      PersistentModel.getValue<A>(forKey:)();

      v36 = *(v2 + 200);
      v37 = swift_task_alloc();
      *(v2 + 304) = v37;
      *v37 = v2;
      v37[1] = sub_1000449FC;
      v38 = *(v2 + 224);
      v39 = *(v2 + 232);

      return sub_10003870C(v2 + 16, v36, v38, v39);
    }

    if (qword_1000A2178 != -1)
    {
      goto LABEL_31;
    }

LABEL_20:
    v22 = type metadata accessor for Logger();
    sub_100002DB8(v22, qword_1000B1908);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "EnforcementTask has malformed event: a column in this row has an invalid value.", v25, 2u);
    }

    v26 = *(v2 + 240);
    v27 = *(v2 + 216);

    sub_100006ABC(&qword_1000A2B30, v28, type metadata accessor for AnalyticsStoreContext);
    ModelActor.modelContext.getter();
    type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
    sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
    dispatch thunk of ModelContext.delete<A>(_:)();
  }

  v9 = *(v2 + 240);
  v10 = *(v2 + 216);
  sub_100006ABC(&qword_1000A2B30, v31, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();
  v11 = *(v2 + 264);
  if (v7)
  {
    v12 = *(v2 + 224);

    v13 = *(v2 + 8);
    v14 = 0;
  }

  else
  {

    if (v11 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
      v16 = *(v2 + 264);
    }

    else
    {
      v15 = *((*(v2 + 264) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = *(v2 + 224);
    v18 = *(v2 + 208);

    v14 = v15 == v18;
    v13 = *(v2 + 8);
  }

  return v13(v14);
}

uint64_t sub_1000450A0()
{
  v1 = v0[35];
  v2 = v0[28];

  v3 = v0[39];
  v4 = v0[1];

  return v4(0);
}

uint64_t sub_100045114(uint64_t a1)
{
  v25 = *v1;
  v3 = sub_10000A0C8(&qword_1000A4320, &qword_100078088);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v23 = &v22 - v5;
  v30 = a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  v6 = v30;
  v7 = v31;
  v30 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v9 = v30;
  v8 = v31;
  v10 = sub_10000A0C8(&qword_1000A4328, &qword_100078090);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v26 = v6;
  v27 = v7;
  v28 = v9;
  v29 = v8;
  v30 = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  v14 = v23;
  Predicate.init(_:)();

  v15 = sub_10000A0C8(&qword_1000A4330, &unk_100078098);
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100006ABC(&qword_1000A2B30, v16, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v17 = dispatch thunk of ModelContext.fetch<A>(_:)();

  if (v17 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();

    if (v21)
    {
      goto LABEL_3;
    }

LABEL_4:
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.insert<A>(_:)();

    v19 = 1;
    goto LABEL_5;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v18)
  {
    goto LABEL_4;
  }

LABEL_3:
  v19 = 0;
LABEL_5:
  (*(v24 + 8))(v13, v10);
  return v19;
}

uint64_t sub_1000456BC()
{
  v0 = type metadata accessor for Schema.Version();
  sub_10000A574(v0, qword_1000B19E8);
  sub_100002DB8(v0, qword_1000B19E8);
  return Schema.Version.init(_:_:_:)();
}

uint64_t sub_100045714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100045828(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100045904()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100045A10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100045B24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100045C00()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100045D18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

double sub_100045E0C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_100045F20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100046008()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100046110@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100046224(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100046300()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004640C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100046520(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000465FC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100046708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_10004681C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000468F0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_1000469FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_100046B10(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100046BE4()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100046CF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  sub_100057E94();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100046E10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100046EF0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  sub_100057E94();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100047004()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  sub_100057E18();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004710C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_10004723C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100047314()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_100047418()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1000474C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_1000475D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000476A4()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_1000477B0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004785C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100047970(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100047A40()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100047B4C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100047BF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_100047D0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100047DDC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2800, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100047EE8()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100047F94(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  *(v1 + 48) = sub_10000A0C8(&qword_1000A42B0, &qword_100077C60);
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  ObservationRegistrar.init()();
  v27 = *a1;
  v4 = *(v1 + 56);
  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v30 = *(a1 + 16);
  v5 = *(v1 + 56);
  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v29 = *(a1 + 32);
  v6 = *(v1 + 56);
  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  sub_100006A40();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 16) = 0;
  v28 = *(a1 + 48);
  v7 = *(v1 + 56);
  sub_100006978((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 17) = 0;
  *(a1 + 64);
  *(a1 + 64);
  *(a1 + 64);
  *(a1 + 64);
  v8 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(a1 + 65);
  *(a1 + 65);
  *(a1 + 65);
  v9 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v10 = *(a1 + 66);
  v11 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v12 = *(a1 + 67);
  v13 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v14 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_10000A0C8(&qword_1000A2818, &qword_100075050);
  sub_100057E18();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v1 + 18) = 0;
  v15 = *(a1 + 84);
  v16 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v17 = *(a1 + 88);
  v18 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v19 = *(a1 + 96);
  v20 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v21 = *(a1 + 112);
  v22 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
  sub_100011348(a1);

  v23 = *(v1 + 56);
  sub_100006978((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return v1;
}

uint64_t sub_10004876C(__int128 *a1)
{
  type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  *(v1 + 48) = sub_10000A0C8(&qword_1000A42B0, &qword_100077C60);
  sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  sub_100005E9C((v1 + 24));
  sub_100008FD8(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000488B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000489C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100048AA0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100048BAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100048CC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100048D9C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100048EA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100048FBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100049098()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_1000491A4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000492BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100049398()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_1000494A8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000495C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004969C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_1000497AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000498C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004999C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100049AA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100049BBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100049C98()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_100049DA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_100049EB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100049F8C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10004A098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_10004A1AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004A280()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10004A38C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004A4A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004A570()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004A67C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004A728@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004A83C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004A90C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B0, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004AA18()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004AAC4(__int128 *a1)
{
  type metadata accessor for AnalyticsSchemaV1.Violation(0);
  *(v1 + 48) = sub_10000A0C8(&qword_1000A42B8, &qword_100077E20);
  sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 257;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100005E9C((v1 + 24));
  sub_100008FD8(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10004ABE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004ACFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004ADCC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004AED8()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004AF84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  sub_1000586F4();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10004B0A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004B184()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  sub_1000586F4();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004B298()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  sub_100058678();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004B35C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  sub_1000585B8(&qword_1000A42D0, &qword_1000A42D8);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10004B4A4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_1000216C4(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100002CF0(v7, &qword_1000A28C0, &qword_100075130);
}

uint64_t sub_10004B5F0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  sub_1000585B8(&qword_1000A42D0, &qword_1000A42D8);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10004B738()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  sub_1000585B8(&qword_1000A42C0, &qword_1000A42C8);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004B81C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v18 = a4;
  HIDWORD(v17) = a3;
  v8 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
  *(v5 + 48) = sub_10000A0C8(&qword_1000A42F8, &qword_100077EB0);
  v13 = sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  v24 = v12;
  v25 = v12;
  v26 = v13;
  v27 = v13;
  *(v5 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v5 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v5 + 16) = 257;
  ObservationRegistrar.init()();
  v14 = *(v5 + 56);
  sub_100006978((v5 + 24), *(v5 + 48));
  swift_getKeyPath();
  v24 = a1;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v24 = v5;
  swift_getKeyPath();
  v21 = v5;
  v22 = a2;
  v23 = BYTE4(v17) & 1;
  sub_100006ABC(&qword_1000A2340, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v15 = v18;
  sub_1000216C4(v18, v11);
  v24 = v5;
  swift_getKeyPath();
  v19 = v5;
  v20 = v11;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100002CF0(v15, &qword_1000A28C0, &qword_100075130);
  sub_100002CF0(v11, &qword_1000A28C0, &qword_100075130);
  return v5;
}

uint64_t sub_10004BAF4(__int128 *a1)
{
  type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
  *(v1 + 48) = sub_10000A0C8(&qword_1000A42F8, &qword_100077EB0);
  sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1000069DC((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 257;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100005E9C((v1 + 24));
  sub_100008FD8(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10004BC24()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004BD30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004BE44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004BF20()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004C02C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004C140(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004C21C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double sub_10004C32C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10004C444(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100006ABC(a5, 255, a6);
  sub_100006A40();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004C5C8()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004C6D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004C7E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004C8C4()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004C9D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004CAE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004CBC0()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004CCCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004CDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004CEBC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004CFC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10004D0DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_100006ABC(a5, 255, a6);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004D25C()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10004D368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_10004D47C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004D550()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t sub_10004D65C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v5;
  return result;
}

uint64_t sub_10004D770(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004D844(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_100006ABC(a4, 255, a5);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004D8DC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004D9E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004DAFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004DBCC()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10004DC78()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10004DD84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t sub_10004DE98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10004DF68()
{
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.setValue<A>(forKey:to:)();
}

void *sub_10004E014(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_10000A0C8(&qword_1000A4300, &qword_100078070);
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_1000069DC(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 1;
  ObservationRegistrar.init()();
  v19 = *a1;
  v5 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v21 = *(a1 + 16);
  v6 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v20 = *(a1 + 32);
  v7 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  sub_100006A40();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 16) = 0;
  *(a1 + 48);
  *(a1 + 48);
  *(a1 + 48);
  *(a1 + 48);
  v8 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(a1 + 49);
  *(a1 + 49);
  *(a1 + 49);
  v9 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(a1 + 50);
  *(a1 + 50);
  *(a1 + 50);
  v10 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(a1 + 51);
  *(a1 + 51);
  *(a1 + 51);
  v11 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v12 = *(a1 + 53);
  v13 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v14 = *(a1 + 56);
  v15 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  LOBYTE(v14) = *(a1 + 54);
  v16 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();
  sub_100005BFC(a1);

  v17 = v2[7];
  sub_100006978(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  return v2;
}

void sub_10004E8EC(_OWORD *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for Date();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  v7 = sub_100028A4C(v50);
  if (v7 == 6)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v38 = _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(v50);
  if (v38 == 9)
  {
    goto LABEL_5;
  }

  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v37 = _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(v50);
  if (v37 == 9)
  {
    goto LABEL_5;
  }

  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v9 = _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(v50);
  if (v9 == 9)
  {
LABEL_5:
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002DB8(v10, qword_1000B1908);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v44 = v40;
      *v13 = 136315906;
      v50._countAndFlagsBits = v2;
      swift_getKeyPath();
      LODWORD(v39) = v12;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v14 = sub_100005C68(v50._countAndFlagsBits, v50._object, &v44);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      v50._countAndFlagsBits = v2;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v15 = sub_100005C68(v50._countAndFlagsBits, v50._object, &v44);

      *(v13 + 14) = v15;
      *(v13 + 22) = 2080;
      v50._countAndFlagsBits = v2;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v16 = sub_100005C68(v50._countAndFlagsBits, v50._object, &v44);

      *(v13 + 24) = v16;
      *(v13 + 32) = 2080;
      v50._countAndFlagsBits = v2;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v17 = sub_100005C68(v50._countAndFlagsBits, v50._object, &v44);

      *(v13 + 34) = v17;
      _os_log_impl(&_mh_execute_header, v11, v39, "database has invalid column values for EnforcementTask: op(%s), pc(%s), mpc(%s), dpc(%s)", v13, 0x2Au);
      swift_arrayDestroy();
    }

    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    goto LABEL_10;
  }

  v36 = v9;
  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  object = v50._object;
  countAndFlagsBits = v50._countAndFlagsBits;
  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v32 = v50._object;
  v33 = v50._countAndFlagsBits;
  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_1000580C8();
  PersistentModel.getValue<A>(forKey:)();

  v30 = v50._object;
  v31 = v50._countAndFlagsBits;
  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  HIDWORD(v29) = LOBYTE(v50._countAndFlagsBits);
  v50._countAndFlagsBits = v1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v25 = v50._countAndFlagsBits;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v27 = v26;
  v28 = v26;
  (*(v39 + 8))(v6, v40);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v27 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v27 < 1.84467441e19)
  {
    *&v44 = countAndFlagsBits;
    *(&v44 + 1) = object;
    *&v45 = v33;
    *(&v45 + 1) = v32;
    *&v46 = v31;
    *(&v46 + 1) = v30;
    LOBYTE(v47) = v8;
    BYTE1(v47) = v38;
    BYTE2(v47) = v37;
    BYTE3(v47) = v36;
    *(&v48 + 1) = *v43;
    DWORD1(v48) = *&v43[3];
    BYTE4(v47) = 1;
    BYTE5(v47) = BYTE4(v29);
    BYTE6(v47) = v25;
    *(&v47 + 1) = v27;
    LOBYTE(v48) = 1;
    *(&v48 + 1) = 0;
    v49 = 0;
    v50._countAndFlagsBits = countAndFlagsBits;
    v50._object = object;
    v51 = v33;
    v52 = v32;
    v53 = v31;
    v54 = v30;
    v55 = v8;
    v56 = v38;
    v57 = v37;
    v58 = v36;
    v59 = 1;
    v60 = BYTE4(v29);
    v61 = v25;
    v62 = v27;
    v63 = 1;
    *&v64[3] = *&v43[3];
    *v64 = *v43;
    v65 = 0;
    v66 = 0;
    sub_10000626C(&v44, &v42);
    sub_100005BFC(&v50);
    v19 = v44;
    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = v48;
    v18 = v49;
LABEL_10:
    v24 = v41;
    *v41 = v19;
    v24[1] = v20;
    v24[2] = v21;
    v24[3] = v22;
    v24[4] = v23;
    *(v24 + 10) = v18;
    return;
  }

LABEL_17:
  __break(1u);
}

void *sub_10004F2B8(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_10000A0C8(&qword_1000A4300, &qword_100078070);
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_1000069DC(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 1;
  ObservationRegistrar.init()();
  *(v2 + 16) = 0;
  swift_beginAccess();
  sub_100005E9C(v2 + 3);
  sub_100008FD8(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_10004F40C()
{
  v1 = *v0;
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  return PersistentModel.id.getter();
}

uint64_t sub_10004F484()
{
  sub_10000A0C8(&qword_1000A3620, &qword_100076FE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076F90;
  v1 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
  v2 = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
  v4 = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
  v6 = sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  v8 = sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_10004F5F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000A21B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Schema.Version();
  v3 = sub_100002DB8(v2, qword_1000B19E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004F69C()
{
  sub_10004E8EC(v30);
  v0 = sub_1000057A8(0, 4, 0, _swiftEmptyArrayStorage);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_1000057A8((v1 > 1), v2 + 1, 1, v0);
  }

  *(v0 + 2) = v2 + 1;
  v3 = &v0[32 * v2];
  *(v3 + 2) = xmmword_1000758D0;
  *(v3 + 6) = 0;
  v3[56] = 0;
  if (*(&v30[0] + 1))
  {
    v32 = v30[0];
    v35 = v30[3];
    v36 = v30[4];
    v37 = v31;
    v34 = v30[2];
    v33 = v30[1];
    v4 = sub_100003644();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    sub_100002CF0(v30, &qword_1000A4318, &qword_100078080);
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v6 = 0x8000000100083CF0;
    v4 = 0xD000000000000011;
  }

  sub_100058B30();
  v12 = *(v0 + 2);
  v11 = *(v0 + 3);
  if (v12 >= v11 >> 1)
  {
    v0 = sub_1000057A8((v11 > 1), v12 + 1, 1, v0);
  }

  *(v0 + 2) = v12 + 1;
  v13 = &v0[32 * v12];
  *(v13 + 4) = v4;
  *(v13 + 5) = v6;
  *(v13 + 6) = v8;
  v13[56] = v10 & 1 | 0x80;
  sub_100005C50();
  v15 = *(v0 + 2);
  v14 = *(v0 + 3);
  if (v15 >= v14 >> 1)
  {
    v0 = sub_1000057A8((v14 > 1), v15 + 1, 1, v0);
  }

  *(v0 + 2) = v15 + 1;
  v16 = &v0[32 * v15];
  *(v16 + 2) = xmmword_100076FA0;
  *(v16 + 6) = 0;
  v16[56] = 0;
  swift_getKeyPath();
  sub_100006ABC(&qword_1000A4250, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  PersistentModel.getValue<A>(forKey:)();

  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = *(v0 + 2);
  v19 = *(v0 + 3);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    v27 = v17;
    v28 = v18;
    v29 = sub_1000057A8((v19 > 1), v20 + 1, 1, v0);
    v18 = v28;
    v0 = v29;
    v17 = v27;
    v19 = *(v0 + 3);
    v21 = v19 >> 1;
  }

  *(v0 + 2) = v22;
  v23 = &v0[32 * v20];
  *(v23 + 4) = v17;
  *(v23 + 5) = v18;
  *(v23 + 6) = 2;
  v23[56] = 64;
  v24 = v20 + 2;
  if (v21 < v24)
  {
    v0 = sub_1000057A8((v19 > 1), v24, 1, v0);
  }

  *(v0 + 2) = v24;
  v25 = &v0[32 * v22];
  *(v25 + 2) = xmmword_1000758D0;
  *(v25 + 6) = 0;
  v25[56] = 0;
  return 12;
}

uint64_t sub_10004FA4C()
{
  v1 = *v0;
  sub_10004F69C();
  v2 = sub_100005A2C(0, 12);
  sub_100005C50();
  return v2;
}

uint64_t sub_10004FAB4()
{
  sub_10000A0C8(&qword_1000A4308, &qword_100078078);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100076380;
  v1 = sub_100058ADC();
  *(v0 + 32) = &type metadata for AnalyticsSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t AnalyticsStore.__allocating_init()()
{
  v0 = swift_allocObject();
  AnalyticsStore.init()();
  return v0;
}

void *AnalyticsStore.init()()
{
  v2 = *v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v52 - v10;
  __chkstk_darwin(v9);
  v13 = v52 - v12;
  static AnalyticsStore.databaseURL(reset:)(0, v52 - v12);
  if (!v1)
  {
    v57 = 0;
    v52[1] = v2;
    v59 = v0;
    if (qword_1000A2178 != -1)
    {
      swift_once();
    }

    v54 = v8;
    v14 = type metadata accessor for Logger();
    sub_100002DB8(v14, qword_1000B1908);
    v53 = v4[2];
    v53(v11, v13, v3);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    v17 = os_log_type_enabled(v15, v16);
    v58 = v4;
    v60 = v3;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v52[0] = v4 + 2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v55 = v13;
      v21 = v20;
      v61 = v20;
      *v19 = 136446210;
      v22 = URL.absoluteString.getter();
      v24 = v23;
      v56 = v4[1];
      v56(v11, v3);
      v25 = sub_100005C68(v22, v24, &v61);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "opening AnalyticsStore at %{public}s", v19, 0xCu);
      sub_100005E9C(v21);
      v13 = v55;
    }

    else
    {

      v56 = v4[1];
      v56(v11, v3);
    }

    v26 = type metadata accessor for ModelConfiguration();
    v55 = v52;
    v27 = *(v26 - 8);
    v28 = v27;
    v29 = *(v27 + 64);
    __chkstk_darwin(v26);
    v31 = v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53(v54, v13, v60);
    v32 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
    v33 = *(*(v32 - 8) + 64);
    __chkstk_darwin(v32 - 8);
    static ModelConfiguration.CloudKitDatabase.automatic.getter();
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    v54 = type metadata accessor for ModelContainer();
    sub_10000A0C8(&qword_1000A3620, &qword_100076FE0);
    v34 = v13;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100076F90;
    v36 = type metadata accessor for AnalyticsSchemaV1.FileAccess(0);
    v37 = sub_100006ABC(&qword_1000A2808, 255, type metadata accessor for AnalyticsSchemaV1.FileAccess);
    *(v35 + 32) = v36;
    *(v35 + 40) = v37;
    v38 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
    v39 = sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
    *(v35 + 48) = v38;
    *(v35 + 56) = v39;
    v40 = type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
    v41 = sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
    *(v35 + 64) = v40;
    *(v35 + 72) = v41;
    v42 = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
    v43 = sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
    *(v35 + 80) = v42;
    *(v35 + 88) = v43;
    sub_100054518();
    sub_10000A0C8(&qword_1000A3638, &qword_100076FE8);
    v44 = *(v27 + 72);
    v45 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100076380;
    (*(v27 + 16))(v46 + v45, v31, v26);
    v47 = v57;
    v48 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
    if (!v47)
    {
      v50 = v48;
      (*(v28 + 8))(v31, v26);
      v56(v34, v60);
      v51 = v59;
      v59[2] = v50;
      return v51;
    }

    (*(v27 + 8))(v31, v26);
    v56(v34, v60);
    v0 = v59;
  }

  swift_deallocPartialClassInstance();
  return v0;
}

uint64_t static AnalyticsStore.databaseURL(reset:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v39[1] = a2;
  v3 = type metadata accessor for URLResourceValues();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for URL();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v42);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v39 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  v43 = 0;
  v16 = [v15 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v43];

  v17 = v43;
  if (v16)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    URL.appendingPathComponent(_:isDirectory:)();
    if (a1)
    {
      v19 = [v14 defaultManager];
      URL._bridgeToObjectiveC()(v20);
      v22 = v21;
      v43 = 0;
      v23 = [v19 removeItemAtURL:v21 error:&v43];

      v24 = v43;
      if (!v23)
      {
        goto LABEL_9;
      }

      v25 = v43;
    }

    v26 = [v14 defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v43 = 0;
    v30 = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v43];

    v24 = v43;
    if (v30)
    {
      v31 = v43;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v32 = v39[2];
      URL.setResourceValues(_:)();
      if (!v32)
      {
        URL.appendingPathComponent(_:)();
      }

      (*(v40 + 8))(v6, v41);
      goto LABEL_10;
    }

LABEL_9:
    v33 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_10:
    v34 = *(v7 + 8);
    v35 = v11;
    v36 = v42;
    v34(v35, v42);
    return (v34)(v13, v36);
  }

  v38 = v43;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

BOOL static AnalyticsStore.available()()
{
  if (&metaclass for ModelContainer)
  {
    v0 = &nominal type descriptor for ModelContainer == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && &type metadata for ModelContainer != 0 && &type metadata accessor for ModelContainer != 0 && &protocol conformance descriptor for ModelContainer != 0 && &class metadata base offset for ModelContainer != 0;
}

uint64_t AnalyticsStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_100050644()
{
  v2 = *v0;
  v3 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v31 = &v30 - v5;
  v6 = sub_10000A0C8(&qword_1000A4698, &qword_100078208);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  sub_100006ABC(&qword_1000A2B30, v10, type metadata accessor for AnalyticsStoreContext);
  v32 = v2;
  ModelActor.modelContext.getter();
  v11 = sub_10000A0C8(&qword_1000A46A0, &qword_100078210);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = sub_10000A0C8(&qword_1000A46A8, qword_100078218);
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = type metadata accessor for AnalyticsSchemaV1.PipelineState(0);
  v18 = sub_100006ABC(&qword_1000A2348, 255, type metadata accessor for AnalyticsSchemaV1.PipelineState);
  FetchDescriptor.init(predicate:sortBy:)();
  v19 = dispatch thunk of ModelContext.fetch<A>(_:)();
  (*(v12 + 8))(v15, v11);

  if (v1)
  {
    return v18;
  }

  v20 = v31;
  if (v19 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v19 + 32);

LABEL_7:

      return v18;
    }

    __break(1u);
    goto LABEL_19;
  }

  v32 = 0;

  if (qword_1000A2178 != -1)
  {
LABEL_19:
    swift_once();
  }

  v31 = v18;
  v22 = type metadata accessor for Logger();
  sub_100002DB8(v22, qword_1000B1908);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "initializing PipelineState", v25, 2u);
  }

  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
  v27 = *(v17 + 48);
  v28 = *(v17 + 52);
  v18 = swift_allocObject();
  sub_10004B81C(1, 0, 1, v20);
  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.insert<A>(_:)();

  ModelActor.modelContext.getter();
  v29 = v32;
  dispatch thunk of ModelContext.save()();
  if (v29)
  {
  }

  return v18;
}

uint64_t sub_100050B38@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13)
{
  v151 = a8;
  v183 = a7;
  v144 = a6;
  v177 = a5;
  v166 = a4;
  v186 = a3;
  v176 = a2;
  v164 = a9;
  v158 = a13;
  v153 = a12;
  v152 = a11;
  v149 = a10;
  v160 = sub_10000A0C8(&qword_1000A43C0, &qword_1000780E8);
  v161 = *(v160 - 8);
  v14 = *(v161 + 64);
  __chkstk_darwin(v160);
  v156 = &v124 - v15;
  v157 = sub_10000A0C8(&qword_1000A44E0, &qword_100078158);
  v159 = *(v157 - 8);
  v16 = *(v159 + 64);
  __chkstk_darwin(v157);
  v154 = &v124 - v17;
  v162 = sub_10000A0C8(&qword_1000A44E8, &qword_100078160);
  v163 = *(v162 - 8);
  v18 = *(v163 + 64);
  __chkstk_darwin(v162);
  v155 = &v124 - v19;
  v181 = sub_10000A0C8(&qword_1000A44F0, &qword_100078168);
  v189 = *(v181 - 8);
  v20 = *(v189 + 64);
  __chkstk_darwin(v181);
  v179 = &v124 - v21;
  v150 = sub_10000A0C8(&qword_1000A44F8, &qword_100078170);
  v187 = *(v150 - 8);
  v22 = *(v187 + 64);
  __chkstk_darwin(v150);
  v145 = &v124 - v23;
  v180 = sub_10000A0C8(&qword_1000A4500, &qword_100078178);
  v188 = *(v180 - 8);
  v24 = *(v188 + 64);
  __chkstk_darwin(v180);
  v148 = &v124 - v25;
  v136 = sub_10000A0C8(&qword_1000A43D8, &qword_100078100);
  v165 = *(v136 - 8);
  v26 = *(v165 + 8);
  __chkstk_darwin(v136);
  v129 = &v124 - v27;
  v132 = sub_10000A0C8(&qword_1000A4508, &qword_100078180);
  v133 = *(v132 - 8);
  v28 = *(v133 + 64);
  __chkstk_darwin(v132);
  v127 = &v124 - v29;
  v134 = sub_10000A0C8(&qword_1000A4510, &qword_100078188);
  v135 = *(v134 - 8);
  v30 = *(v135 + 64);
  __chkstk_darwin(v134);
  v128 = &v124 - v31;
  v185 = sub_10000A0C8(&qword_1000A4338, &qword_1000780A8);
  v193 = *(v185 - 1);
  v32 = *(v193 + 64);
  __chkstk_darwin(v185);
  v34 = &v124 - v33;
  v35 = sub_10000A0C8(&qword_1000A4518, &qword_100078190);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v124 - v38;
  v167 = sub_10000A0C8(&qword_1000A4520, &qword_100078198);
  v192 = *(v167 - 8);
  v40 = *(v192 + 8);
  __chkstk_darwin(v167);
  v42 = &v124 - v41;
  v172 = sub_10000A0C8(&qword_1000A4528, &qword_1000781A0);
  v194 = *(v172 - 8);
  v43 = *(v194 + 64);
  __chkstk_darwin(v172);
  v124 = &v124 - v44;
  v130 = sub_10000A0C8(&qword_1000A4530, &qword_1000781A8);
  v131 = *(v130 - 8);
  v45 = *(v131 + 64);
  __chkstk_darwin(v130);
  v174 = &v124 - v46;
  v137 = sub_10000A0C8(&qword_1000A4538, &qword_1000781B0);
  v138 = *(v137 - 8);
  v47 = *(v138 + 64);
  __chkstk_darwin(v137);
  v173 = &v124 - v48;
  v139 = sub_10000A0C8(&qword_1000A4540, &qword_1000781B8);
  v140 = *(v139 - 8);
  v49 = *(v140 + 64);
  __chkstk_darwin(v139);
  v175 = &v124 - v50;
  v142 = sub_10000A0C8(&qword_1000A4548, &qword_1000781C0);
  v143 = *(v142 - 8);
  v51 = *(v143 + 64);
  __chkstk_darwin(v142);
  v178 = &v124 - v52;
  v146 = sub_10000A0C8(&qword_1000A4550, &qword_1000781C8);
  v147 = *(v146 - 8);
  v53 = *(v147 + 64);
  __chkstk_darwin(v146);
  v141 = &v124 - v54;
  v191 = *a1;
  v55 = v39;
  v56 = v35;
  v57 = sub_100059EE0(&qword_1000A4558, &qword_1000A4518, &qword_100078190);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v195 = *(v36 + 8);
  v195(v55, v56);
  v184 = v36 + 8;
  v196 = v176;
  v197 = v186;
  static PredicateExpressions.build_Arg<A>(_:)();
  v186 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v171 = sub_100059EE0(&qword_1000A4560, &qword_1000A4520, &qword_100078198);
  v176 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v170 = sub_100059EE0(&qword_1000A4368, &qword_1000A4338, &qword_1000780A8);
  v58 = v42;
  v125 = v42;
  v126 = v34;
  v59 = v167;
  v60 = v185;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v61 = *(v193 + 8);
  v193 += 8;
  v169 = v61;
  v61(v34, v60);
  v62 = *(v192 + 1);
  v192 += 8;
  v168 = v62;
  v62(v58, v59);
  v63 = v56;
  v190 = v57;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v64 = v127;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v65 = v55;
  v195(v55, v63);
  v196 = v166;
  v197 = v177;
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  v66 = v129;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100059EE0(&qword_1000A4568, &qword_1000A4508, &qword_100078180);
  sub_100059EE0(&qword_1000A4428, &qword_1000A43D8, &qword_100078100);
  sub_100058D9C();
  v67 = v128;
  v68 = v64;
  v69 = v66;
  v70 = v132;
  v71 = v136;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v165 + 1))(v69, v71);
  (*(v133 + 8))(v68, v70);
  v177 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  v166 = sub_100059EE0(&qword_1000A4570, &qword_1000A4528, &qword_1000781A0);
  sub_100059EE0(&qword_1000A4578, &qword_1000A4510, &qword_100078188);
  v72 = v124;
  v73 = v172;
  v74 = v134;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v135 + 8))(v67, v74);
  v75 = *(v194 + 8);
  v194 += 8;
  v165 = v75;
  v75(v72, v73);
  v76 = v65;
  v182 = v65;
  v77 = v63;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v78 = v125;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v195(v76, v63);
  v196 = v144;
  v197 = v183;
  v79 = v126;
  static PredicateExpressions.build_Arg<A>(_:)();
  v80 = v78;
  v81 = v167;
  v82 = v185;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v169(v79, v82);
  v168(v80, v81);
  v183 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100059EE0(&qword_1000A4580, &qword_1000A4530, &qword_1000781A8);
  v83 = v174;
  v84 = v130;
  v85 = v172;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v165(v72, v85);
  (*(v131 + 8))(v83, v84);
  v86 = v182;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v87 = v195;
  v195(v86, v77);
  v196 = v151;
  v197 = v149;
  static PredicateExpressions.build_Arg<A>(_:)();
  v88 = v185;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v169(v79, v88);
  v168(v80, v81);
  sub_100059EE0(&qword_1000A4588, &qword_1000A4538, &qword_1000781B0);
  v89 = v173;
  v90 = v137;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v165(v72, v85);
  (*(v138 + 8))(v89, v90);
  v91 = v182;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v92 = v145;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v87(v91, v77);
  LOBYTE(v196) = v152;
  v93 = v179;
  static PredicateExpressions.build_Arg<A>(_:)();
  v194 = sub_100059EE0(&qword_1000A4590, &qword_1000A44F8, &qword_100078170);
  v193 = sub_100059EE0(&qword_1000A4598, &qword_1000A44F0, &qword_100078168);
  v94 = v148;
  v95 = v150;
  v96 = v181;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v97 = *(v189 + 8);
  v189 += 8;
  v192 = v97;
  (v97)(v93, v96);
  v98 = *(v187 + 8);
  v187 += 8;
  v185 = v98;
  v99 = v95;
  (v98)(v92, v95);
  sub_100059EE0(&qword_1000A45A0, &qword_1000A4540, &qword_1000781B8);
  v174 = sub_100059EE0(&qword_1000A45A8, &qword_1000A4500, &qword_100078178);
  v100 = v175;
  v101 = v94;
  v102 = v139;
  v103 = v180;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v104 = *(v188 + 8);
  v188 += 8;
  v173 = v104;
  (v104)(v101, v103);
  (*(v140 + 8))(v100, v102);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v195(v91, v77);
  LOBYTE(v196) = v153;
  v105 = v179;
  static PredicateExpressions.build_Arg<A>(_:)();
  v106 = v181;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (v192)(v105, v106);
  (v185)(v92, v99);
  sub_100059EE0(&qword_1000A45B0, &qword_1000A4548, &qword_1000781C0);
  v107 = v141;
  v108 = v178;
  v109 = v142;
  v110 = v180;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (v173)(v101, v110);
  (*(v143 + 8))(v108, v109);
  v111 = v182;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v112 = v154;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v195(v111, v77);
  v196 = v158;
  v113 = v156;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100059EE0(&qword_1000A45B8, &qword_1000A44E0, &qword_100078158);
  sub_100059EE0(&qword_1000A4450, &qword_1000A43C0, &qword_1000780E8);
  v114 = v155;
  v115 = v112;
  v116 = v113;
  v117 = v157;
  v118 = v160;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v161 + 8))(v116, v118);
  (*(v159 + 8))(v115, v117);
  v119 = sub_10000A0C8(&qword_1000A45C0, &qword_1000781D0);
  v120 = v164;
  v164[3] = v119;
  v120[4] = sub_100059440();
  sub_1000069DC(v120);
  sub_100059EE0(&qword_1000A4648, &qword_1000A4550, &qword_1000781C8);
  sub_100059EE0(&qword_1000A4650, &qword_1000A44E8, &qword_100078160);
  v121 = v146;
  v122 = v162;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v163 + 8))(v114, v122);
  return (*(v147 + 8))(v107, v121);
}

uint64_t sub_100052388@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v5 = sub_10000A0C8(&qword_1000A43C0, &qword_1000780E8);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000A0C8(&qword_1000A4518, &qword_100078190);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = sub_10000A0C8(&qword_1000A44E0, &qword_100078158);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v23 - v18;
  v20 = *a1;
  sub_100059EE0(&qword_1000A4558, &qword_1000A4518, &qword_100078190);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v14, v10);
  v26 = v23;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_10000A0C8(&qword_1000A44E8, &qword_100078160);
  a3[4] = sub_100059BC0();
  sub_1000069DC(a3);
  sub_100059EE0(&qword_1000A45B8, &qword_1000A44E0, &qword_100078158);
  sub_100059EE0(&qword_1000A4450, &qword_1000A43C0, &qword_1000780E8);
  v21 = v24;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v25 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1000526F4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v89 = a6;
  v83 = a4;
  v84 = a5;
  v97 = a2;
  v98 = a3;
  v95 = a7;
  v96 = a1;
  v7 = sub_10000A0C8(&qword_1000A43C0, &qword_1000780E8);
  v8 = *(v7 - 8);
  v91 = v7;
  v92 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v87 = v64 - v10;
  v88 = sub_10000A0C8(&qword_1000A43C8, &qword_1000780F0);
  v90 = *(v88 - 8);
  v11 = *(v90 + 64);
  __chkstk_darwin(v88);
  v85 = v64 - v12;
  v13 = sub_10000A0C8(&qword_1000A43D0, &qword_1000780F8);
  v14 = *(v13 - 8);
  v93 = v13;
  v94 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v86 = v64 - v16;
  v79 = sub_10000A0C8(&qword_1000A43D8, &qword_100078100);
  v80 = *(v79 - 8);
  v17 = *(v80 + 64);
  __chkstk_darwin(v79);
  v74 = v64 - v18;
  v75 = sub_10000A0C8(&qword_1000A43E0, &qword_100078108);
  v76 = *(v75 - 8);
  v19 = *(v76 + 64);
  __chkstk_darwin(v75);
  v70 = v64 - v20;
  v77 = sub_10000A0C8(&qword_1000A43E8, &qword_100078110);
  v78 = *(v77 - 8);
  v21 = *(v78 + 64);
  __chkstk_darwin(v77);
  v73 = v64 - v22;
  v68 = sub_10000A0C8(&qword_1000A4338, &qword_1000780A8);
  v69 = *(v68 - 8);
  v23 = *(v69 + 64);
  __chkstk_darwin(v68);
  v25 = v64 - v24;
  v26 = sub_10000A0C8(&qword_1000A43F0, &qword_100078118);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v64 - v29;
  v66 = sub_10000A0C8(&qword_1000A43F8, &qword_100078120);
  v67 = *(v66 - 8);
  v31 = *(v67 + 64);
  __chkstk_darwin(v66);
  v33 = v64 - v32;
  v71 = sub_10000A0C8(&qword_1000A4400, &qword_100078128);
  v72 = *(v71 - 8);
  v34 = *(v72 + 64);
  __chkstk_darwin(v71);
  v65 = v64 - v35;
  v36 = sub_10000A0C8(&qword_1000A4408, &qword_100078130);
  v37 = *(v36 - 8);
  v81 = v36;
  v82 = v37;
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v99 = v64 - v39;
  v96 = *v96;
  sub_100059EE0(&qword_1000A4410, &qword_1000A43F0, &qword_100078118);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v40 = *(v27 + 8);
  v40(v30, v26);
  v64[0] = v40;
  v64[1] = v27 + 8;
  v100 = v97;
  v101 = v98;
  static PredicateExpressions.build_Arg<A>(_:)();
  v97 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100059EE0(&qword_1000A4418, &qword_1000A43F8, &qword_100078120);
  v98 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100059EE0(&qword_1000A4368, &qword_1000A4338, &qword_1000780A8);
  v41 = v66;
  v42 = v68;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v69 + 8))(v25, v42);
  (*(v67 + 8))(v33, v41);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v43 = v70;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v40(v30, v26);
  v100 = v83;
  v101 = v84;
  sub_10000A0C8(&qword_1000A25C0, &qword_100074D80);
  v44 = v74;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100059EE0(&qword_1000A4420, &qword_1000A43E0, &qword_100078108);
  sub_100059EE0(&qword_1000A4428, &qword_1000A43D8, &qword_100078100);
  sub_100058D9C();
  v45 = v73;
  v46 = v43;
  v47 = v44;
  v48 = v75;
  v49 = v79;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v80 + 8))(v47, v49);
  (*(v76 + 8))(v46, v48);
  sub_100059EE0(&qword_1000A4438, &qword_1000A4400, &qword_100078128);
  sub_100059EE0(&qword_1000A4440, &qword_1000A43E8, &qword_100078110);
  v50 = v65;
  v51 = v71;
  v52 = v77;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v78 + 8))(v45, v52);
  (*(v72 + 8))(v50, v51);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v53 = v85;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (v64[0])(v30, v26);
  v100 = v89;
  v54 = v87;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100059EE0(&qword_1000A4448, &qword_1000A43C8, &qword_1000780F0);
  sub_100059EE0(&qword_1000A4450, &qword_1000A43C0, &qword_1000780E8);
  v55 = v86;
  v56 = v88;
  v57 = v91;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v92 + 8))(v54, v57);
  (*(v90 + 8))(v53, v56);
  v58 = sub_10000A0C8(&qword_1000A4458, &qword_100078138);
  v59 = v95;
  v95[3] = v58;
  v59[4] = sub_100058E18();
  sub_1000069DC(v59);
  sub_100059EE0(&qword_1000A44B8, &qword_1000A4408, &qword_100078130);
  sub_100059EE0(&qword_1000A44C0, &qword_1000A43D0, &qword_1000780F8);
  v60 = v99;
  v61 = v81;
  v62 = v93;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v94 + 8))(v55, v62);
  return (*(v82 + 8))(v60, v61);
}

uint64_t sub_100053324@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v5 = sub_10000A0C8(&qword_1000A43C0, &qword_1000780E8);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000A0C8(&qword_1000A43F0, &qword_100078118);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = sub_10000A0C8(&qword_1000A43C8, &qword_1000780F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v23 - v18;
  v20 = *a1;
  sub_100059EE0(&qword_1000A4410, &qword_1000A43F0, &qword_100078118);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v14, v10);
  v26 = v23;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_10000A0C8(&qword_1000A43D0, &qword_1000780F8);
  a3[4] = sub_100059234();
  sub_1000069DC(a3);
  sub_100059EE0(&qword_1000A4448, &qword_1000A43C8, &qword_1000780F0);
  sub_100059EE0(&qword_1000A4450, &qword_1000A43C0, &qword_1000780E8);
  v21 = v24;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v25 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_100053690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v46 = a4;
  v47 = a5;
  v42 = a2;
  v43 = a3;
  v48 = a6;
  v49 = sub_10000A0C8(&qword_1000A4338, &qword_1000780A8);
  v51 = *(v49 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v49);
  v9 = v37 - v8;
  v10 = sub_10000A0C8(&qword_1000A4340, &qword_1000780B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v37 - v13;
  v15 = sub_10000A0C8(&qword_1000A4348, &qword_1000780B8);
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  __chkstk_darwin(v15);
  v18 = v37 - v17;
  v19 = sub_10000A0C8(&qword_1000A4350, &qword_1000780C0);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v41 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v39 = *a1;
  v40 = v37 - v24;
  sub_100059EE0(&qword_1000A4358, &qword_1000A4340, &qword_1000780B0);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v25 = *(v11 + 8);
  v37[1] = v11 + 8;
  v38 = v25;
  v25(v14, v10);
  v52 = v42;
  v53 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v43 = sub_100059EE0(&qword_1000A4360, &qword_1000A4348, &qword_1000780B8);
  sub_100059EE0(&qword_1000A4368, &qword_1000A4338, &qword_1000780A8);
  v26 = v49;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v27 = *(v51 + 8);
  v51 += 8;
  v27(v9, v26);
  v28 = *(v50 + 8);
  v50 += 8;
  v28(v18, v15);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v38(v14, v10);
  v52 = v46;
  v53 = v47;
  static PredicateExpressions.build_Arg<A>(_:)();
  v29 = v41;
  v30 = v49;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v27(v9, v30);
  v28(v18, v15);
  v31 = sub_10000A0C8(&qword_1000A4370, &qword_1000780C8);
  v32 = v48;
  v48[3] = v31;
  v32[4] = sub_100058B48();
  sub_1000069DC(v32);
  sub_100059EE0(&qword_1000A43A0, &qword_1000A4350, &qword_1000780C0);
  v33 = v40;
  v34 = v44;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v35 = *(v45 + 8);
  v35(v29, v34);
  return (v35)(v33, v34);
}

uint64_t sub_100053C28(unsigned __int8 a1)
{
  v27[2] = *v1;
  v3 = sub_10000A0C8(&qword_1000A4320, &qword_100078088);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v27 - v5;
  if (a1 <= 3u)
  {
    v14 = 0xEC000000656E6F4ELL;
    v15 = 0x7269447373616C63;
    v16 = 0x427373616C63;
    if (a1 != 2)
    {
      v16 = 0x437373616C63;
    }

    if (a1)
    {
      v15 = 0x417373616C63;
      v14 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v16;
    }

    if (a1 <= 1u)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0xE600000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v8 = 0x467373616C63;
    v9 = 0xE700000000000000;
    v10 = 0x58437373616C63;
    if (a1 != 7)
    {
      v10 = 0x6365746F72506F6ELL;
      v9 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v8 = v10;
      v7 = v9;
    }

    v11 = 0x447373616C63;
    if (a1 != 4)
    {
      v11 = 0x457373616C63;
    }

    if (a1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    if (a1 <= 5u)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v13 = v7;
    }
  }

  v17 = sub_10000A0C8(&qword_1000A4328, &qword_100078090);
  v27[1] = v27;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v27 - v21;
  v27[0] = v27;
  __chkstk_darwin(v20);
  v27[-2] = v12;
  v27[-1] = v13;
  v27[5] = type metadata accessor for AnalyticsSchemaV1.EnforcementTask(0);
  Predicate.init(_:)();

  v23 = sub_10000A0C8(&qword_1000A4330, &unk_100078098);
  (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  sub_100006ABC(&qword_1000A2B30, v24, type metadata accessor for AnalyticsStoreContext);
  ModelActor.modelContext.getter();
  v25 = dispatch thunk of ModelContext.fetch<A>(_:)();
  (*(v18 + 8))(v22, v17);

  return v25;
}

uint64_t sub_100054040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = sub_10000A0C8(&qword_1000A4338, &qword_1000780A8);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_10000A0C8(&qword_1000A4340, &qword_1000780B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = sub_10000A0C8(&qword_1000A4348, &qword_1000780B8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  v21 = *a1;
  sub_100059EE0(&qword_1000A4358, &qword_1000A4340, &qword_1000780B0);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_10000A0C8(&qword_1000A4350, &qword_1000780C0);
  a4[4] = sub_100058BCC();
  sub_1000069DC(a4);
  sub_100059EE0(&qword_1000A4360, &qword_1000A4348, &qword_1000780B8);
  sub_100059EE0(&qword_1000A4368, &qword_1000A4338, &qword_1000780A8);
  v22 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t AnalyticsStoreContext.modelExecutor.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

void *AnalyticsStoreContext.init(modelContainer:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ModelContext();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  ModelContext.init(_:)();
  v7 = type metadata accessor for DefaultSerialModelExecutor();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = DefaultSerialModelExecutor.init(modelContext:)();
  v11 = sub_100057610(&qword_1000A2330, &type metadata accessor for DefaultSerialModelExecutor);
  v2[2] = v10;
  v2[3] = v11;
  v2[4] = a1;
  return v2;
}

uint64_t sub_1000544E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100054518()
{
  result = qword_1000A3630;
  if (!qword_1000A3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3630);
  }

  return result;
}

uint64_t AnalyticsStoreContext.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t AnalyticsStoreContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000545D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_100006ABC(&qword_1000A2B30, a2, type metadata accessor for AnalyticsStoreContext);
  return ModelActor.unownedExecutor.getter();
}

uint64_t sub_100054670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v33 = a3;
  v32 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v30 = *(v32 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v32);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A0C8(&qword_1000A4658, &qword_1000781D8);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_10000A0C8(&qword_1000A43F0, &qword_100078118);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = sub_10000A0C8(&qword_1000A4660, &qword_1000781E0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  v22 = *a1;
  sub_100059EE0(&qword_1000A4410, &qword_1000A43F0, &qword_100078118);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v13 + 8))(v16, v12);
  v36 = v31;
  static PredicateExpressions.build_Arg<A>(_:)();
  v23 = v30;
  v24 = v32;
  (*(v30 + 104))(v6, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v32);
  v25 = sub_10000A0C8(&qword_1000A4668, &qword_1000781E8);
  v26 = v33;
  v33[3] = v25;
  v26[4] = sub_100059D20();
  sub_1000069DC(v26);
  sub_100059EE0(&qword_1000A4688, &qword_1000A4660, &qword_1000781E0);
  sub_100059EE0(&qword_1000A4690, &qword_1000A4658, &qword_1000781D8);
  v27 = v34;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v23 + 8))(v6, v24);
  (*(v35 + 8))(v11, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_100054AA8(uint64_t a1, void (*a2)(_BYTE *, double))
{

  v4 = sub_10001CE0C(v3, v6);
  a2(v6, v4);
  return sub_100020F18(v6);
}

Swift::Int sub_100054B14()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100054B58()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100054BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74726F706572 && a2 == 0xE600000000000000)
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

uint64_t sub_100054C30(uint64_t a1)
{
  v2 = sub_100057038();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054C6C(uint64_t a1)
{
  v2 = sub_100057038();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnalyticsStore.ViolationDiagnostic.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10000A0C8(&qword_1000A3640, &qword_100076FF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = a1[4];
  sub_100006978(a1, a1[3]);
  sub_100057038();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v2 + 176);
  v29 = *(v2 + 160);
  v30 = v10;
  v31 = *(v2 + 192);
  v32 = *(v2 + 208);
  v11 = *(v2 + 112);
  v25 = *(v2 + 96);
  v26 = v11;
  v12 = *(v2 + 144);
  v27 = *(v2 + 128);
  v28 = v12;
  v13 = *(v2 + 48);
  v21 = *(v2 + 32);
  v22 = v13;
  v14 = *(v2 + 80);
  v23 = *(v2 + 64);
  v24 = v14;
  v15 = *(v2 + 16);
  v19 = *v2;
  v20 = v15;
  sub_10005708C(v2, v17);
  sub_100021224();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v17[10] = v29;
  v17[11] = v30;
  v17[12] = v31;
  v18 = v32;
  v17[6] = v25;
  v17[7] = v26;
  v17[8] = v27;
  v17[9] = v28;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_100020F18(v17);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100054E90(void *a1)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = *(v1 + 26);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return AnalyticsStore.ViolationDiagnostic.encode(to:)(a1);
}

uint64_t static AnalyticsStore.streamViolationDiagnostics(since:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  return sub_100056A7C(a1, sub_1000570C4, v4);
}

void (*sub_100054F7C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100006B04(v1 + 24, v4);
  return sub_10005500C;
}

uint64_t sub_100055070()
{
  v1 = *v0;
  swift_getWitnessTable();
  return PersistentModel.hash(into:)();
}

uint64_t sub_100055128(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return static PersistentModel.== infix(_:_:)() & 1;
}

uint64_t sub_1000551B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  sub_100005E9C((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_100055220(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100006B04(v1 + 24, v4);
  return sub_10005500C;
}

void sub_1000552B0(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_100006B04(*a1, (v4 + 5));
    swift_beginAccess();
    sub_100005E9C((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    sub_100005E9C(v4);
  }

  else
  {
    swift_beginAccess();
    sub_100005E9C((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_1000553C8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return PersistentModel.hash(into:)();
}

uint64_t sub_100055480(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return static PersistentModel.== infix(_:_:)() & 1;
}

uint64_t sub_1000554E4(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_10004F2B8(a1);
  return v5;
}

void (*sub_100055524(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100006B04(v1 + 24, v4);
  return sub_10005500C;
}

Swift::Int sub_1000555B8()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005561C()
{
  v1 = *v0;
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  return PersistentModel.hash(into:)();
}

Swift::Int sub_100055694()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000556F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100006ABC(&qword_1000A3628, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  return static PersistentModel.== infix(_:_:)() & 1;
}

uint64_t sub_10005579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1000557F8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_100006B04(v1 + 24, v4);
  return sub_10005500C;
}

Swift::Int sub_1000558D4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  Hasher.init(_seed:)();
  a3(0);
  sub_100006ABC(a4, 255, a5);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100055964()
{
  v1 = *v0;
  swift_getWitnessTable();
  return PersistentModel.hash(into:)();
}

Swift::Int sub_1000559D4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100055A80(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_100006ABC(a4, 255, a5);
  return PersistentModel.id.getter();
}

uint64_t sub_100055AF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return static PersistentModel.== infix(_:_:)() & 1;
}

unint64_t _s15libdomainpolicy15ProtectionClassO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100095CD8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100055BA4()
{
  sub_10000A0C8(&qword_1000A4298, &qword_100077A28);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100076FB0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t sub_1000560B0()
{
  sub_10000A0C8(&qword_1000A4298, &qword_100077A28);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100076FC0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t sub_1000564B8()
{
  sub_10000A0C8(&qword_1000A4298, &qword_100077A28);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100076FD0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t sub_100056668()
{
  sub_10000A0C8(&qword_1000A4298, &qword_100077A28);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100076FC0;
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t sub_100056A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v46 = a1;
  v5 = sub_10000A0C8(&qword_1000A43A8, &qword_1000780D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - v7;
  v9 = sub_10000A0C8(&qword_1000A28C0, &qword_100075130);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnalyticsStore();
  v18 = swift_allocObject();
  result = AnalyticsStore.init()();
  if (!v3)
  {
    v38 = v17;
    v39 = v8;
    v43 = a2;
    v44 = 0;
    v20 = *(v18 + 16);
    v21 = type metadata accessor for ModelContext();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    ModelContext.init(_:)();
    v24 = sub_10000A0C8(&qword_1000A43B0, &qword_1000780D8);
    v40 = *(v24 - 8);
    v41 = v24;
    v25 = *(v40 + 64);
    __chkstk_darwin(v24);
    v27 = &v37 - v26;
    sub_1000216C4(v46, v12);
    v28 = (*(v14 + 48))(v12, 1, v13);
    v42 = &v37;
    if (v28 == 1)
    {
      sub_100002CF0(v12, &qword_1000A28C0, &qword_100075130);
      v29 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
      (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
      type metadata accessor for AnalyticsSchemaV1.Violation(0);
      sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
      v30 = FetchDescriptor.init(predicate:sortBy:)();
LABEL_8:
      __chkstk_darwin(v30);
      v36 = v45;
      *(&v37 - 2) = v43;
      *(&v37 - 1) = v36;
      type metadata accessor for AnalyticsSchemaV1.Violation(0);
      sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
      dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
      (*(v40 + 8))(v27, v41);
    }

    v46 = v14;
    v31 = v38;
    (*(v14 + 32))(v38, v12, v13);
    result = Date.timeIntervalSince1970.getter();
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -1.0)
    {
      if (v32 < 1.84467441e19)
      {
        __chkstk_darwin(result);
        *(&v37 - 2) = v33;
        v47 = type metadata accessor for AnalyticsSchemaV1.Violation(0);
        v34 = v39;
        Predicate.init(_:)();
        v35 = sub_10000A0C8(&qword_1000A43B8, &qword_1000780E0);
        (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        sub_100006ABC(&qword_1000A27B8, 255, type metadata accessor for AnalyticsSchemaV1.Violation);
        FetchDescriptor.init(predicate:sortBy:)();
        v30 = (*(v46 + 8))(v31, v13);
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

unint64_t sub_100057038()
{
  result = qword_1000A3648;
  if (!qword_1000A3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3648);
  }

  return result;
}

uint64_t sub_1000570C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v4;
  v11[12] = *(a1 + 192);
  v12 = *(a1 + 208);
  v5 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v5;
  v6 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v6;
  v7 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v7;
  v8 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v8;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  return v2(v11);
}

uint64_t sub_1000571AC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000572A4()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100057380()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t getEnumTagSinglePayload for AnalyticsStore.ViolationDiagnostic.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnalyticsStore.ViolationDiagnostic.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1000575BC()
{
  result = qword_1000A4208;
  if (!qword_1000A4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4208);
  }

  return result;
}

uint64_t sub_100057610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100057788(uint64_t a1)
{
  result = sub_100006ABC(&qword_1000A4238, 255, type metadata accessor for AnalyticsSchemaV1.EnforcementTask);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000577E8()
{
  result = qword_1000A4240;
  if (!qword_1000A4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4240);
  }

  return result;
}

unint64_t sub_100057840()
{
  result = qword_1000A4248;
  if (!qword_1000A4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4248);
  }

  return result;
}

uint64_t sub_100057D54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100047EE8();
}

uint64_t sub_100057D70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100047B4C();
}

uint64_t sub_100057D8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000477B0();
}

uint64_t sub_100057DA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100047418();
}

uint64_t sub_100057DD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100047418();
}

uint64_t sub_100057DF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100047004();
}

unint64_t sub_100057E18()
{
  result = qword_1000A42A0;
  if (!qword_1000A42A0)
  {
    sub_10000A738(&qword_1000A2818, &qword_100075050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A42A0);
  }

  return result;
}

unint64_t sub_100057E94()
{
  result = qword_1000A2810;
  if (!qword_1000A2810)
  {
    sub_10000A738(&qword_1000A2818, &qword_100075050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A2810);
  }

  return result;
}

unint64_t sub_1000580C8()
{
  result = qword_1000A27C0;
  if (!qword_1000A27C0)
  {
    sub_10000A738(&qword_1000A25C0, &qword_100074D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A27C0);
  }

  return result;
}

uint64_t sub_10005824C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004AA18();
}

uint64_t sub_100058268()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004A67C();
}

uint64_t sub_10005859C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004B738();
}

uint64_t sub_1000585B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000A738(&qword_1000A28C0, &qword_100075130);
    sub_100006ABC(a2, 255, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100058658()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_10004B298();
}

unint64_t sub_100058678()
{
  result = qword_1000A42E0;
  if (!qword_1000A42E0)
  {
    sub_10000A738(&qword_1000A42E8, &qword_100077EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A42E0);
  }

  return result;
}

unint64_t sub_1000586F4()
{
  result = qword_1000A42F0;
  if (!qword_1000A42F0)
  {
    sub_10000A738(&qword_1000A42E8, &qword_100077EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A42F0);
  }

  return result;
}

uint64_t sub_100058770()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004AED8();
}

uint64_t sub_10005878C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004DF68();
}

uint64_t sub_1000587A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10004DBCC();
}

unint64_t sub_100058ADC()
{
  result = qword_1000A4310;
  if (!qword_1000A4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4310);
  }

  return result;
}

unint64_t sub_100058B48()
{
  result = qword_1000A4378;
  if (!qword_1000A4378)
  {
    sub_10000A738(&qword_1000A4370, &qword_1000780C8);
    sub_100058BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4378);
  }

  return result;
}

unint64_t sub_100058BCC()
{
  result = qword_1000A4380;
  if (!qword_1000A4380)
  {
    sub_10000A738(&qword_1000A4350, &qword_1000780C0);
    sub_100058C58();
    sub_100058D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4380);
  }

  return result;
}

unint64_t sub_100058C58()
{
  result = qword_1000A4388;
  if (!qword_1000A4388)
  {
    sub_10000A738(&qword_1000A4348, &qword_1000780B8);
    sub_100059EE0(&qword_1000A4390, &qword_1000A4340, &qword_1000780B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4388);
  }

  return result;
}

unint64_t sub_100058D08()
{
  result = qword_1000A4398;
  if (!qword_1000A4398)
  {
    sub_10000A738(&qword_1000A4338, &qword_1000780A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4398);
  }

  return result;
}

unint64_t sub_100058D9C()
{
  result = qword_1000A4430;
  if (!qword_1000A4430)
  {
    sub_10000A738(&qword_1000A25C0, &qword_100074D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4430);
  }

  return result;
}

unint64_t sub_100058E18()
{
  result = qword_1000A4460;
  if (!qword_1000A4460)
  {
    sub_10000A738(&qword_1000A4458, &qword_100078138);
    sub_100058EA4();
    sub_100059234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4460);
  }

  return result;
}

unint64_t sub_100058EA4()
{
  result = qword_1000A4468;
  if (!qword_1000A4468)
  {
    sub_10000A738(&qword_1000A4408, &qword_100078130);
    sub_100058F30();
    sub_10005906C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4468);
  }

  return result;
}

unint64_t sub_100058F30()
{
  result = qword_1000A4470;
  if (!qword_1000A4470)
  {
    sub_10000A738(&qword_1000A4400, &qword_100078128);
    sub_100058FBC();
    sub_100058D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4470);
  }

  return result;
}

unint64_t sub_100058FBC()
{
  result = qword_1000A4478;
  if (!qword_1000A4478)
  {
    sub_10000A738(&qword_1000A43F8, &qword_100078120);
    sub_100059EE0(&qword_1000A4480, &qword_1000A43F0, &qword_100078118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4478);
  }

  return result;
}

unint64_t sub_10005906C()
{
  result = qword_1000A4488;
  if (!qword_1000A4488)
  {
    sub_10000A738(&qword_1000A43E8, &qword_100078110);
    sub_1000590F8();
    sub_1000591A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4488);
  }

  return result;
}

unint64_t sub_1000590F8()
{
  result = qword_1000A4490;
  if (!qword_1000A4490)
  {
    sub_10000A738(&qword_1000A43E0, &qword_100078108);
    sub_100059EE0(&qword_1000A4480, &qword_1000A43F0, &qword_100078118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4490);
  }

  return result;
}

unint64_t sub_1000591A8()
{
  result = qword_1000A4498;
  if (!qword_1000A4498)
  {
    sub_10000A738(&qword_1000A43D8, &qword_100078100);
    sub_1000580C8();
    sub_100006A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4498);
  }

  return result;
}

unint64_t sub_100059234()
{
  result = qword_1000A44A0;
  if (!qword_1000A44A0)
  {
    sub_10000A738(&qword_1000A43D0, &qword_1000780F8);
    sub_1000592C0();
    sub_100059370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A44A0);
  }

  return result;
}

unint64_t sub_1000592C0()
{
  result = qword_1000A44A8;
  if (!qword_1000A44A8)
  {
    sub_10000A738(&qword_1000A43C8, &qword_1000780F0);
    sub_100059EE0(&qword_1000A4480, &qword_1000A43F0, &qword_100078118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A44A8);
  }

  return result;
}

unint64_t sub_100059370()
{
  result = qword_1000A44B0;
  if (!qword_1000A44B0)
  {
    sub_10000A738(&qword_1000A43C0, &qword_1000780E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A44B0);
  }

  return result;
}

unint64_t sub_100059440()
{
  result = qword_1000A45C8;
  if (!qword_1000A45C8)
  {
    sub_10000A738(&qword_1000A45C0, &qword_1000781D0);
    sub_1000594CC();
    sub_100059BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45C8);
  }

  return result;
}

unint64_t sub_1000594CC()
{
  result = qword_1000A45D0;
  if (!qword_1000A45D0)
  {
    sub_10000A738(&qword_1000A4550, &qword_1000781C8);
    sub_100059558();
    sub_100059A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45D0);
  }

  return result;
}

unint64_t sub_100059558()
{
  result = qword_1000A45D8;
  if (!qword_1000A45D8)
  {
    sub_10000A738(&qword_1000A4548, &qword_1000781C0);
    sub_1000595E4();
    sub_100059A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45D8);
  }

  return result;
}

unint64_t sub_1000595E4()
{
  result = qword_1000A45E0;
  if (!qword_1000A45E0)
  {
    sub_10000A738(&qword_1000A4540, &qword_1000781B8);
    sub_100059670();
    sub_100059788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45E0);
  }

  return result;
}

unint64_t sub_100059670()
{
  result = qword_1000A45E8;
  if (!qword_1000A45E8)
  {
    sub_10000A738(&qword_1000A4538, &qword_1000781B0);
    sub_1000596FC();
    sub_100059788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45E8);
  }

  return result;
}

unint64_t sub_1000596FC()
{
  result = qword_1000A45F0;
  if (!qword_1000A45F0)
  {
    sub_10000A738(&qword_1000A4530, &qword_1000781A8);
    sub_100059788();
    sub_1000598C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45F0);
  }

  return result;
}

unint64_t sub_100059788()
{
  result = qword_1000A45F8;
  if (!qword_1000A45F8)
  {
    sub_10000A738(&qword_1000A4528, &qword_1000781A0);
    sub_100059814();
    sub_100058D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A45F8);
  }

  return result;
}

unint64_t sub_100059814()
{
  result = qword_1000A4600;
  if (!qword_1000A4600)
  {
    sub_10000A738(&qword_1000A4520, &qword_100078198);
    sub_100059EE0(&qword_1000A4608, &qword_1000A4518, &qword_100078190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4600);
  }

  return result;
}

unint64_t sub_1000598C4()
{
  result = qword_1000A4610;
  if (!qword_1000A4610)
  {
    sub_10000A738(&qword_1000A4510, &qword_100078188);
    sub_100059950();
    sub_1000591A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4610);
  }

  return result;
}

unint64_t sub_100059950()
{
  result = qword_1000A4618;
  if (!qword_1000A4618)
  {
    sub_10000A738(&qword_1000A4508, &qword_100078180);
    sub_100059EE0(&qword_1000A4608, &qword_1000A4518, &qword_100078190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4618);
  }

  return result;
}

unint64_t sub_100059A00()
{
  result = qword_1000A4620;
  if (!qword_1000A4620)
  {
    sub_10000A738(&qword_1000A4500, &qword_100078178);
    sub_100059A8C();
    sub_100059B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4620);
  }

  return result;
}

unint64_t sub_100059A8C()
{
  result = qword_1000A4628;
  if (!qword_1000A4628)
  {
    sub_10000A738(&qword_1000A44F8, &qword_100078170);
    sub_100059EE0(&qword_1000A4608, &qword_1000A4518, &qword_100078190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4628);
  }

  return result;
}

unint64_t sub_100059B3C()
{
  result = qword_1000A4630;
  if (!qword_1000A4630)
  {
    sub_10000A738(&qword_1000A44F0, &qword_100078168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4630);
  }

  return result;
}

unint64_t sub_100059BC0()
{
  result = qword_1000A4638;
  if (!qword_1000A4638)
  {
    sub_10000A738(&qword_1000A44E8, &qword_100078160);
    sub_100059C4C();
    sub_100059370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4638);
  }

  return result;
}

unint64_t sub_100059C4C()
{
  result = qword_1000A4640;
  if (!qword_1000A4640)
  {
    sub_10000A738(&qword_1000A44E0, &qword_100078158);
    sub_100059EE0(&qword_1000A4608, &qword_1000A4518, &qword_100078190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4640);
  }

  return result;
}

unint64_t sub_100059D20()
{
  result = qword_1000A4670;
  if (!qword_1000A4670)
  {
    sub_10000A738(&qword_1000A4668, &qword_1000781E8);
    sub_100059DAC();
    sub_100059E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4670);
  }

  return result;
}

unint64_t sub_100059DAC()
{
  result = qword_1000A4678;
  if (!qword_1000A4678)
  {
    sub_10000A738(&qword_1000A4660, &qword_1000781E0);
    sub_100059EE0(&qword_1000A4480, &qword_1000A43F0, &qword_100078118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4678);
  }

  return result;
}

unint64_t sub_100059E5C()
{
  result = qword_1000A4680;
  if (!qword_1000A4680)
  {
    sub_10000A738(&qword_1000A4658, &qword_1000781D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4680);
  }

  return result;
}

uint64_t sub_100059EE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_100059F90(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) <= 1u)
  {
  }

  if (a4 >> 6 == 2)
  {
    return sub_100058B30();
  }

  return result;
}

uint64_t sub_100059FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 25))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10005A038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

char *sub_10005A0D4@<X0>(char *result@<X0>, char *a2@<X1>, char **a3@<X8>)
{
  if ((a2 + 0x4000000000000000) < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_1000057A8(0, (2 * a2) & ~((2 * a2) >> 63), 0, _swiftEmptyArrayStorage);
    *a3 = v5;
    a3[1] = a2;
    a3[2] = result;
  }

  return result;
}

uint64_t sub_10005A138(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000057A8(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = sub_1000057A8((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  v8 = v4 + 32 * v7;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v1 + 16) = v4;
  return result;
}

__n128 sub_10005A1F4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = 1;
  return result;
}

uint64_t sub_10005A210()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[3])
  {
    v3 = v0[2];

    v4 = sub_100005A2C(0, v1);
    sub_100005C50();
    return v4;
  }

  else
  {
    v5 = v0[1];
  }

  return v1;
}

unint64_t sub_10005A2A0()
{
  result = qword_1000A46B0;
  if (!qword_1000A46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46B0);
  }

  return result;
}

unint64_t sub_10005A304()
{
  result = qword_1000A46B8;
  if (!qword_1000A46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46B8);
  }

  return result;
}

unint64_t sub_10005A358(uint64_t a1)
{
  result = sub_10005A380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10005A380()
{
  result = qword_1000A46C0;
  if (!qword_1000A46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46C0);
  }

  return result;
}

unint64_t sub_10005A3D8()
{
  result = qword_1000A46C8;
  if (!qword_1000A46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46C8);
  }

  return result;
}

unint64_t sub_10005A430()
{
  result = qword_1000A46D0;
  if (!qword_1000A46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46D0);
  }

  return result;
}

uint64_t sub_10005A484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10005A4CC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005A544()
{
  result = qword_1000A46D8;
  if (!qword_1000A46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A46D8);
  }

  return result;
}

uint64_t sub_10005A5A4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8[0] = a1;
      v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = ProtectionClass.code.getter(a3);
      v6 = v8;
      return set_protection_class(v6, v5);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v5 = ProtectionClass.code.getter(a3);
      v6 = (v4 + 32);
      return set_protection_class(v6, v5);
    }
  }

  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v9;
  }

  return result;
}

uint64_t sub_10005A65C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7[0] = a1;
      v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = 0;
      protection_class = get_protection_class(v7, &v6);
      v4 = v6;
      return __PAIR64__(protection_class, v4);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      LODWORD(v7[0]) = 0;
      protection_class = get_protection_class(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), v7);
      v4 = v7[0];
      return __PAIR64__(protection_class, v4);
    }
  }

  sub_10000A0C8(&qword_1000A3578, &qword_100076EC8);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v8;
  }

  return result;
}

uint64_t sub_10005A768@<X0>(char *path@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, _OWORD *a4@<X8>)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    *name = a2;
    v7 = a3 & 0xFFFFFFFFFFFFFFLL;
    v4 = name;
    return sub_10001169C(v4, path, a4);
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_10000A0C8(&qword_1000A46E8, &unk_100078750);
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v4 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_10001169C(v4, path, a4);
}

uint64_t sub_10005A824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *path = a1;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = path;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_10000A0C8(&qword_1000A46E8, &unk_100078750);
    _StringGuts._slowWithCString<A>(_:)();
  }

  v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_10005A768(v6, a3, a4, a5);
}

uint64_t sub_10005A904()
{
  v0 = type metadata accessor for Logger();
  sub_10000A574(v0, qword_1000B1A00);
  sub_100002DB8(v0, qword_1000B1A00);
  return Logger.init(subsystem:category:)();
}

uint64_t ProtectionClassJanitor.init(domainIndex:client:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100006B04(a1, a3);
  *(a3 + 40) = a2;
  v6 = SecTaskCreateFromSelf(0);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopySigningIdentifier(v6, 0);
    if (v8)
    {
      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        goto LABEL_8;
      }
    }

    else
    {
      v9 = v7;
    }
  }

LABEL_8:
  result = sub_100005E9C(a1);
  *(a3 + 48) = 0xD000000000000018;
  *(a3 + 56) = 0x8000000100082A30;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtectionClassJanitor.sweep(base:)(Swift::String base)
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v1);

  URL.init(filePath:directoryHint:relativeTo:)();
  ProtectionClassJanitor.sweep(base:)();
  (*(v11 + 8))(v14, v10);
}

void ProtectionClassJanitor.sweep(base:)()
{
  sub_10006DCE4(v8);
  if (!v0)
  {
    if (v8[0])
    {
      countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
      v2 = __chkstk_darwin(countAndFlagsBits);
      sub_10002FE64(v2, v3, sub_10005C500);
    }

    else
    {
      if (qword_1000A21C0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100002DB8(v4, qword_1000B1A00);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "skipping sweep since device is before first unlock", v7, 2u);
      }
    }
  }
}

uint64_t sub_10005ADEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v20[0] = a1;
  v20[1] = a4;
  v5 = sub_10000A0C8(&qword_1000A2CD8, &qword_1000763D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for URL.DirectoryHint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = __chkstk_darwin(v14);
  v19 = v20 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    (*(v10 + 104))(v13, enum case for URL.DirectoryHint.notDirectory(_:), v9);
    (*(v15 + 56))(v8, 1, 1, v14);

    URL.init(filePath:directoryHint:relativeTo:)();
    sub_10005B010();
    return (*(v15 + 8))(v19, v14);
  }

  return result;
}

uint64_t sub_10005B010()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100038FFC();
  if ((result & 1) == 0)
  {
    v132 = v9;
    v134 = v5;
    v135 = v2;
    v136 = v1;
    v16 = URL.path(percentEncoded:)(0);
    countAndFlagsBits = v16._countAndFlagsBits;
    v18 = v0[3];
    v17 = v0[4];
    v133 = v0;
    sub_100006978(v0, v18);
    sub_10005DE38(v14);
    v19 = URL.path(percentEncoded:)(0);
    (*(v11 + 8))(v14, v10);
    (*(v17 + 8))(&v160, v19._countAndFlagsBits, v19._object, v18, v17);

    if (!*(&v161 + 1))
    {

      return sub_100002CF0(&v160, &qword_1000A25B8, &unk_100074610);
    }

    v20 = v143;
    v158[1] = v161;
    v158[2] = v162;
    v158[3] = v163;
    v159 = v164;
    v158[0] = v160;
    sub_100006B04(v158, v155);
    v21 = v156;
    v22 = v157;
    sub_100006978(v155, v156);
    if (((*(v22 + 16))(v21, v22) & 1) == 0)
    {
      goto LABEL_32;
    }

    v23 = v156;
    v24 = v157;
    sub_100006978(v155, v156);
    object = v16._object;
    if ((*(v24 + 32))(v23, v24))
    {

      if (qword_1000A21C0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100002DB8(v26, qword_1000B1A00);
      sub_100006B04(v155, &v160);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v143[0] = v30;
        *v29 = 136315138;
        v31 = *(&v161 + 1);
        v32 = v162;
        sub_100006978(&v160, *(&v161 + 1));
        v33 = (*(v32 + 8))(v31, v32);
        v35 = v34;
        sub_100005E9C(&v160);
        v36 = sub_100005C68(v33, v35, v143);

        *(v29 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v27, v28, "skipping domain %s since it has process exceptions", v29, 0xCu);
        sub_100005E9C(v30);

LABEL_9:

LABEL_28:
        sub_10001139C(v158);
        return sub_100005E9C(v155);
      }

      sub_10001139C(v158);
      v41 = &v160;
LABEL_16:
      sub_100005E9C(v41);
      return sub_100005E9C(v155);
    }

    v37 = objc_opt_self();

    v38 = sub_10005A65C(countAndFlagsBits, v16._object);
    if (HIDWORD(v38))
    {
      v40 = errno.getter();
      LODWORD(v160) = v40;
      sub_100033644();
      swift_willThrowTypedImpl();
      if (v40 == 2)
      {
        if (qword_1000A21C0 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100002DB8(v42, qword_1000B1A00);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *&v160 = v46;
          *v45 = 136315138;
          v47 = sub_100005C68(countAndFlagsBits, v16._object, &v160);

          *(v45 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v43, v44, "skipping repair of %s since it no longer exists", v45, 0xCu);
          sub_100005E9C(v46);

LABEL_26:

          goto LABEL_28;
        }

LABEL_27:

        goto LABEL_28;
      }

LABEL_22:
      if (qword_1000A21C0 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_100002DB8(v48, qword_1000B1A00);

      v43 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v160 = v52;
        *v50 = 136315394;
        v53 = sub_100005C68(countAndFlagsBits, v16._object, &v160);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2112;
        sub_100033644();
        swift_allocError();
        *v54 = v40;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 14) = v55;
        *v51 = v55;
        _os_log_impl(&_mh_execute_header, v43, v49, "failed to get protection class for %s: %@", v50, 0x16u);
        sub_100002CF0(v51, &qword_1000A4EC0, &qword_100076C00);

        sub_100005E9C(v52);

        goto LABEL_26;
      }

      goto LABEL_27;
    }

    LOBYTE(v39) = ProtectionClass.init(value:)(v38);
    if (v39 == 9)
    {
      v40 = 34;
      LODWORD(v160) = 34;
      sub_100033644();
      swift_willThrowTypedImpl();
      goto LABEL_22;
    }

    v56 = v39;
    v57 = v156;
    v58 = v157;
    sub_100006978(v155, v156);
    v59 = (*(v58 + 24))(v57, v58);
    if (ProtectionClass.allowed(forMinimumProtection:)(v59))
    {
LABEL_32:
      sub_10001139C(v158);

      return sub_100005E9C(v155);
    }

    sub_10005A824(countAndFlagsBits, v16._object, 0xD000000000000034, 0x8000000100083890, &v160);
    v60 = *(&v160 + 1);
    if (*(&v160 + 1) >> 60 == 15)
    {
      v131 = 0;
      v132 = v37;
      if (*(v133 + 40))
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      v130 = v61;
      v62 = v133[7];
      v129 = v133[6];
      v63 = v156;
      v64 = v157;
      sub_100006978(v155, v156);
      v65 = *(v64 + 24);

      v66 = v65(v63, v64);
      v67 = v156;
      v68 = v157;
      sub_100006978(v155, v156);
      object = (*(v68 + 24))(v67, v68);
      v60 = v134;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v70 = v69;
      v71 = v69;
      (*(v135 + 8))(v60, v136);
      if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v70 <= -1.0)
        {
          __break(1u);
        }

        else if (v70 < 1.84467441e19)
        {
          *&v160 = v129;
          *(&v160 + 1) = v62;
          *&v161 = countAndFlagsBits;
          *(&v161 + 1) = v16._object;
          v162 = 0uLL;
          *(&v164 + 1) = v138;
          DWORD1(v164) = *(&v138 + 3);
          LOBYTE(v163) = 1;
          BYTE1(v163) = v56;
          BYTE2(v163) = v66;
          BYTE3(v163) = object;
          WORD2(v163) = 1;
          BYTE6(v163) = 1;
          *(&v163 + 1) = v70;
          LOBYTE(v164) = v130;
          *(&v164 + 1) = 0;
          v165 = 0;
          v143[0] = v129;
          v143[1] = v62;
          v143[2] = countAndFlagsBits;
          v143[3] = v16._object;
          v143[4] = 0;
          v143[5] = 0;
          v144 = 1;
          v145 = v56;
          v146 = v66;
          v147 = object;
          v148 = 1;
          v149 = 1;
          v150 = v70;
          v151 = v130;
          *&v152[3] = *(&v138 + 3);
          *v152 = v138;
          v153 = 0;
          v154 = 0;
          sub_10000626C(&v160, v139);
          sub_100005BFC(v143);
          if (qword_1000A21C0 == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_105;
        }

        __break(1u);
LABEL_105:
        swift_once();
LABEL_41:
        v72 = type metadata accessor for Logger();
        v73 = sub_100002DB8(v72, qword_1000B1A00);
        sub_10000626C(&v160, v139);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        sub_100005BFC(&v160);
        if (os_log_type_enabled(v74, v75))
        {
          v136 = v73;
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v138 = v77;
          *v76 = 136315138;
          sub_10000626C(&v160, v139);
          v78 = sub_100003644();
          v80 = v79;
          if (v81)
          {
            v82 = sub_100005A2C(0, v78);
            v135 = v83;
            sub_100005BFC(&v160);
            sub_100005C50();
            v78 = v82;
            v80 = v135;
          }

          else
          {
            sub_100005BFC(&v160);
          }

          v98 = sub_100005C68(v78, v80, &v138);

          *(v76 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v74, v75, "VIOLATION %s", v76, 0xCu);
          sub_100005E9C(v77);

          v96 = v16._object;
          v97 = v132;
        }

        else
        {

          v96 = v16._object;
          v97 = v132;
        }

        v99 = String._bridgeToObjectiveC()();
        v100 = swift_allocObject();
        v101 = v163;
        *(v100 + 48) = v162;
        *(v100 + 64) = v101;
        *(v100 + 80) = v164;
        *(v100 + 96) = v165;
        v102 = v161;
        *(v100 + 16) = v160;
        *(v100 + 32) = v102;
        v141 = sub_1000067F8;
        v142 = v100;
        v139[0] = _NSConcreteStackBlock;
        v139[1] = 1107296256;
        v139[2] = sub_1000065D0;
        v140 = &unk_1000984C0;
        v103 = _Block_copy(v139);

        AnalyticsSendEventLazy();
        _Block_release(v103);

        v104 = v156;
        v105 = v157;
        sub_100006978(v155, v156);
        v106 = (*(v105 + 24))(v104, v105);
        if (!sub_10005A5A4(countAndFlagsBits, v96, v106))
        {
          goto LABEL_32;
        }

        v107 = errno.getter();
        LODWORD(v139[0]) = v107;
        sub_100033644();
        swift_willThrowTypedImpl();
        if (v107 == 2)
        {
          sub_100006B04(v155, v139);

          v27 = Logger.logObject.getter();
          v108 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v27, v108))
          {
            v109 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            *v109 = 136315394;
            v110 = sub_100005C68(countAndFlagsBits, v96, &v138);

            *(v109 + 4) = v110;
            *(v109 + 12) = 2080;
            v111 = v140;
            v112 = v141;
            sub_100006978(v139, v140);
            v113 = (*(v112 + 3))(v111, v112);
            if (v113 <= 3)
            {
              if (v113 > 1)
              {
                v114 = 0xE600000000000000;
                if (v113 == 2)
                {
                  v115 = 0x427373616C63;
                }

                else
                {
                  v115 = 0x437373616C63;
                }
              }

              else if (v113)
              {
                v114 = 0xE600000000000000;
                v115 = 0x417373616C63;
              }

              else
              {
                v115 = 0x7269447373616C63;
                v114 = 0xEC000000656E6F4ELL;
              }
            }

            else if (v113 <= 5)
            {
              v114 = 0xE600000000000000;
              if (v113 == 4)
              {
                v115 = 0x447373616C63;
              }

              else
              {
                v115 = 0x457373616C63;
              }
            }

            else if (v113 == 6)
            {
              v114 = 0xE600000000000000;
              v115 = 0x467373616C63;
            }

            else if (v113 == 7)
            {
              v114 = 0xE700000000000000;
              v115 = 0x58437373616C63;
            }

            else
            {
              v115 = 0x6365746F72506F6ELL;
              v114 = 0xEC0000006E6F6974;
            }

            sub_100005E9C(v139);
            v125 = sub_100005C68(v115, v114, &v138);

            *(v109 + 14) = v125;
            _os_log_impl(&_mh_execute_header, v27, v108, "setProtectionClass(for: %s, to: %s) skipped: file no longer exists", v109, 0x16u);
            swift_arrayDestroy();

            goto LABEL_9;
          }

          goto LABEL_73;
        }

        sub_100006B04(v155, v139);

        v27 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v27, v116))
        {
LABEL_73:

          sub_10001139C(v158);
          v41 = v139;
          goto LABEL_16;
        }

        v117 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *v117 = 136315650;
        v118 = sub_100005C68(countAndFlagsBits, v96, &v138);

        *(v117 + 4) = v118;
        *(v117 + 12) = 2082;
        v119 = v140;
        v120 = v141;
        sub_100006978(v139, v140);
        v121 = (*(v120 + 3))(v119, v120);
        if (v121 <= 3)
        {
          if (v121 > 1)
          {
            v123 = 0xE600000000000000;
            if (v121 == 2)
            {
              v124 = 0x427373616C63;
            }

            else
            {
              v124 = 0x437373616C63;
            }
          }

          else if (v121)
          {
            v123 = 0xE600000000000000;
            v124 = 0x417373616C63;
          }

          else
          {
            v124 = 0x7269447373616C63;
            v123 = 0xEC000000656E6F4ELL;
          }
        }

        else if (v121 <= 5)
        {
          v123 = 0xE600000000000000;
          if (v121 == 4)
          {
            v124 = 0x447373616C63;
          }

          else
          {
            v124 = 0x457373616C63;
          }
        }

        else
        {
          if (v121 != 6)
          {
            v122 = v136;
            if (v121 == 7)
            {
              v123 = 0xE700000000000000;
              v124 = 0x58437373616C63;
            }

            else
            {
              v124 = 0x6365746F72506F6ELL;
              v123 = 0xEC0000006E6F6974;
            }

            goto LABEL_100;
          }

          v123 = 0xE600000000000000;
          v124 = 0x467373616C63;
        }

        v122 = v136;
LABEL_100:
        sub_100005E9C(v139);
        v126 = sub_100005C68(v124, v123, &v138);

        *(v117 + 14) = v126;
        *(v117 + 22) = 2112;
        swift_allocError();
        *v127 = v107;
        v128 = _swift_stdlib_bridgeErrorToNSError();
        *(v117 + 24) = v128;
        *v122 = v128;
        _os_log_impl(&_mh_execute_header, v27, v116, "failed to repair %s to %{public}s: %@", v117, 0x20u);
        sub_100002CF0(v122, &qword_1000A4EC0, &qword_100076C00);

        swift_arrayDestroy();

        goto LABEL_9;
      }

      __break(1u);
    }

    else
    {
      v56 = v160;
      static String.Encoding.utf8.getter();
      v84 = String.init(data:encoding:)();
      if (v85)
      {
        v62 = v84;
      }

      else
      {
        v62 = 0x6E776F6E6B6E753CLL;
      }

      if (v85)
      {
        v20 = v85;
      }

      else
      {
        v20 = 0xE90000000000003ELL;
      }

      if (qword_1000A21C0 == -1)
      {
        goto LABEL_51;
      }
    }

    swift_once();
LABEL_51:
    v86 = type metadata accessor for Logger();
    sub_100002DB8(v86, qword_1000B1A00);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = object;
      v90 = swift_slowAlloc();
      *&v160 = swift_slowAlloc();
      *v90 = 136315394;
      v91 = sub_100005C68(countAndFlagsBits, v89, &v160);
      countAndFlagsBits = v60;
      v92 = v91;

      *(v90 + 4) = v92;
      *(v90 + 12) = 2082;
      v93 = sub_100005C68(v62, v20, &v160);

      *(v90 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v87, v88, "file at %s has exception xattr from: %{public}s", v90, 0x16u);
      swift_arrayDestroy();

      v94 = v56;
      v95 = countAndFlagsBits;
    }

    else
    {

      v94 = v56;
      v95 = v60;
    }

    sub_10003FDF8(v94, v95);

    goto LABEL_28;
  }

  return result;
}