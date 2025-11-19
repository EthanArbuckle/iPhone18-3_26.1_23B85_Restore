uint64_t sub_10002BAC4()
{
  v1 = [*(v0 + 24) rc_audioTracks];
  sub_10002C684();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 32) = v2;

  if (v2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 40) = v2 & 0xFFFFFFFFFFFFFF8;
  *(v0 + 48) = v5;
  *(v0 + 56) = &_swiftEmptySetSingleton;
  *(v0 + 64) = &_swiftEmptySetSingleton;
  v6 = *(v0 + 32);
  if (v5)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v5, v6, v3, v4);
      }

      v7 = *(v6 + 32);
    }

    *(v0 + 72) = v7;
    *(v0 + 80) = 1;
    sub_100024720(&qword_10005CB68, &qword_10003F960);
    v8 = static AVPartialAsyncProperty<A>.formatDescriptions.getter();
    *(v0 + 88) = v8;
    v9 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_10002BC7C;
    v5 = v0 + 16;
    v6 = v8;
    v3 = 0;
    v4 = 0;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v5, v6, v3, v4);
  }

  v11 = *(v0 + 32);

  v12 = *(v0 + 8);
  v13 = *(v0 + 64);

  return v12(v13);
}

uint64_t sub_10002BC7C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {
    v6 = v2[8];
    v7 = v2[4];

    v8 = sub_10002C0EC;
  }

  else
  {

    v8 = sub_10002BDD0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10002BDD0()
{
  v2 = v0 + 2;
  v1 = v0[2];
  if (v1 >> 62)
  {
    v22 = v0[2];
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v22;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[6];

    if (v23 != v25)
    {
      v3 = v0[10];
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v34 = v1 + 32;
  v7 = v0[7];
  v6 = v0[8];
  v8 = v6 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (2)
  {
    for (i = *(v34 + 8 * v4); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v10 = i;
      ++v4;
      MediaSubType = CMFormatDescriptionGetMediaSubType(i);
      v12 = *(v6 + 40);
      v13 = static Hasher._hash(seed:bytes:count:)();
      v14 = -1 << *(v6 + 32);
      v15 = v13 & ~v14;
      if ((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        break;
      }

LABEL_14:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10002B64C(MediaSubType, v15, isUniquelyReferenced_nonNull_native);

      v6 = v7;
      if (v4 == v3)
      {
        goto LABEL_17;
      }

      v8 = v7 + 56;
      if (!v5)
      {
        goto LABEL_9;
      }

LABEL_8:
      ;
    }

    v16 = ~v14;
    while (*(*(v6 + 48) + 4 * v15) != MediaSubType)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (v4 != v3)
    {
      if (!v5)
      {
        continue;
      }

      goto LABEL_8;
    }

    break;
  }

LABEL_17:
  v18 = v0[9];

  v3 = v0[10];
  v0[7] = v7;
  v0[8] = v6;
  v2 = v0 + 2;
  if (v3 == v0[6])
  {
LABEL_21:
    v26 = v0[4];

    v27 = v0[1];
    v28 = v0[8];

    return v27(v28);
  }

LABEL_25:
  v30 = v0[4];
  if ((v30 & 0xC000000000000001) == 0)
  {
    if (v3 < *(v0[5] + 16))
    {
      v19 = *(v30 + 8 * v3 + 32);
      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v19, v30, v20, v21);
  }

LABEL_33:
  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_28:
  v0[9] = v19;
  v0[10] = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_100024720(&qword_10005CB68, &qword_10003F960);
  v31 = static AVPartialAsyncProperty<A>.formatDescriptions.getter();
  v0[11] = v31;
  v32 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v33 = swift_task_alloc();
  v0[12] = v33;
  *v33 = v0;
  v33[1] = sub_10002BC7C;
  v19 = v2;
  v30 = v31;
  v20 = 0;
  v21 = 0;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v19, v30, v20, v21);
}

uint64_t sub_10002C0EC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_10002C170()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10002C268;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000026, 0x800000010004BF20, sub_10002C67C, v2, &type metadata for Bool);
}

uint64_t sub_10002C268()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10002C380, 0, 0);
}

uint64_t sub_10002C380()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 8);

    return v1(0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_10002C454;
    v4 = *(v0 + 16);

    return sub_10002BAA4(v4);
  }
}

uint64_t sub_10002C454(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_10002C5A0, 0, 0);
  }
}

uint64_t sub_10002C5A0()
{
  v1 = sub_10002A4D8(1634492771, *(v0 + 48));

  v2 = *(v0 + 8);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v2(v3);
}

unint64_t sub_10002C628()
{
  result = qword_10005CB58;
  if (!qword_10005CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CB58);
  }

  return result;
}

unint64_t sub_10002C684()
{
  result = qword_10005CB60;
  if (!qword_10005CB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CB60);
  }

  return result;
}

uint64_t sub_10002C6D0()
{
  v0 = *(sub_100024720(&qword_10005CB78, &qword_10003F970) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_100024720(&qword_10005CB78, &qword_10003F970);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10002C774(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C794(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100024814;

  return sub_100029998(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002C868(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002C8C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10002C924(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10002C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100024720(&qword_10005CB50, &qword_10003F510);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10003352C(a3, v24 - v10, &qword_10005CB50, &qword_10003F510);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100028ED4(v11, &qword_10005CB50, &qword_10003F510);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100028ED4(a3, &qword_10005CB50, &qword_10003F510);

      return v22;
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

  sub_100028ED4(a3, &qword_10005CB50, &qword_10003F510);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_10002CC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100024720(&unk_10005CB80, &qword_10003FAC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  sub_10003352C(a1, &v16 - v8, &unk_10005CB80, &qword_10003FAC0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v15 = _convertErrorToNSError(_:)();
  }

  else
  {
    v15 = 0;
  }

  (*(a3 + 16))(a3, v13, v15);
}

uint64_t sub_10002CD90()
{
  v1 = *(v0[28] + 16);
  v0[29] = v1;
  if ([v1 status])
  {
    sub_100031DB8();
    swift_allocError();
    *v2 = 4;
    *(v2 + 8) = 5;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }

  else
  {
    v3 = v0[28];
    v4 = *(v3 + 24);
    v5 = *v3;
    v0[30] = sub_1000320C8(*v3, v4);
    v0[31] = v6;
    v0[32] = v7;
    v0[33] = sub_100032410(v5, v4);
    v0[34] = v8;
    v0[35] = v9;
    sub_1000325A8(v5, v4);
    v0[36] = v10;
    v0[37] = v11;
    v0[38] = v12;
    v15 = swift_task_alloc();
    v0[39] = v15;
    *v15 = v0;
    v15[1] = sub_10002CF84;

    return sub_100032758((v0 + 23), v5, v4);
  }
}

uint64_t sub_10002CF84()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_10002D764;
  }

  else
  {
    v3 = sub_10002D098;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002D098()
{
  v1 = v0;
  v3 = v0 + 184;
  v2 = *(v0 + 184);
  if (!v2)
  {
    v21 = *(v0 + 296);
    v20 = *(v0 + 304);
    v22 = *(v0 + 288);
    v79 = *(v0 + 280);
    v13 = *(v0 + 264);
    v77 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);
    sub_100031DB8();
    swift_allocError();
    *v23 = 3;
    *(v23 + 8) = 5;
    swift_willThrow();
    v17 = v22;
    v18 = v21;
    v19 = v20;
    goto LABEL_21;
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 320);
  v6 = *(v0 + 272);
  v7 = *(v0 + 232);
  *(v0 + 144) = v2;
  v8 = *(v0 + 208);
  *(v0 + 152) = *(v0 + 192);
  *(v0 + 168) = v8;
  v9 = *(v0 + 160);
  *(v0 + 328) = v9;
  sub_100032AF4(v6, v4, v9, v7);
  if (v5)
  {
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);
    v12 = *(v0 + 288);
    v79 = *(v0 + 280);
    v13 = *(v0 + 264);
    v77 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);

    v17 = v12;
    v18 = v11;
    v19 = v10;
LABEL_21:
    sub_100032AA4(v17, v18, v19);

    v60 = *(v1 + 8);

    return v60();
  }

  v24 = (v0 + 240);
  v25 = *(*(v0 + 224) + 8);
  if (![v25 canAddOutput:*(v0 + 240)])
  {
    v56 = 1;
LABEL_19:
    v57 = *v24;
LABEL_20:
    v71 = *(v0 + 296);
    v74 = *(v0 + 304);
    v58 = *(v0 + 288);
    v79 = *(v0 + 280);
    v13 = *(v0 + 264);
    v77 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);
    sub_100031DB8();
    swift_allocError();
    *v59 = v57;
    *(v59 + 8) = v56;
    swift_willThrow();

    v17 = v58;
    v18 = v71;
    v19 = v74;
    goto LABEL_21;
  }

  v26 = *(v0 + 248);
  v27 = *(v0 + 232);

  if (![v27 canAddInput:v26])
  {
    v56 = 0;
    v24 = (v0 + 248);
    goto LABEL_19;
  }

  v80 = (v0 + 264);
  v28 = *(v0 + 264);
  v30 = *(v0 + 240);
  v29 = *(v0 + 248);
  v31 = *(v0 + 232);

  [v25 addOutput:v30];
  [v31 addInput:v29];
  if (([v25 canAddOutput:v28] & 1) == 0)
  {
    v56 = 1;
    v57 = *v80;
    goto LABEL_20;
  }

  v32 = *(v0 + 272);
  v33 = *(v0 + 232);

  if (![v33 canAddInput:v32])
  {
    v56 = 0;
    v57 = *(v0 + 272);
    goto LABEL_20;
  }

  v35 = *(v0 + 264);
  v34 = *(v0 + 272);
  v36 = *(v0 + 232);

  [v25 addOutput:v35];
  [v36 addInput:v34];
  v37 = v9;
  if (([v36 canAddInput:v37] & 1) == 0)
  {
    v61 = *(v0 + 296);
    v75 = *(v0 + 304);
    v62 = *(v0 + 288);
    v79 = *(v0 + 280);
    v13 = *(v0 + 264);
    v77 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);
    sub_100031DB8();
    swift_allocError();
    *v63 = v37;
    *(v63 + 8) = 0;
    swift_willThrow();

    v17 = v62;
    v18 = v61;
    v19 = v75;
    goto LABEL_21;
  }

  v38 = *(v0 + 288);
  v39 = *(v1 + 232);

  [v39 addInput:v37];
  if (v38)
  {
    v41 = *(v1 + 296);
    v40 = *(v1 + 304);
    v42 = *(v1 + 288);
    sub_100032E68(v42, v41, v40);
    v43 = v42;
    if ([v25 canAddOutput:v43])
    {
      v44 = *(v1 + 232);

      v45 = v41;
      if ([v44 canAddInput:v45])
      {
        v46 = *(v1 + 232);

        [v25 addOutput:v43];
        [v46 addInput:v45];

        goto LABEL_14;
      }

      v76 = v40;
      v68 = 0;
      v64 = (v1 + 296);
    }

    else
    {
      v76 = v40;
      v64 = (v1 + 288);
      v68 = 1;
    }

    v65 = *v64;
    v70 = *(v1 + 296);
    v72 = *(v1 + 304);
    v69 = *(v1 + 288);
    v79 = *(v1 + 280);
    v13 = *(v1 + 264);
    v77 = *(v1 + 272);
    v14 = *(v1 + 248);
    v15 = *(v1 + 256);
    v16 = *(v1 + 240);
    sub_100031DB8();
    swift_allocError();
    *v66 = v65;
    *(v66 + 8) = v68;
    swift_willThrow();

    v17 = v69;
    v18 = v70;
    v19 = v72;
    goto LABEL_21;
  }

LABEL_14:
  v47 = *(v1 + 304);
  v48 = *(v1 + 280);
  v49 = *(v1 + 256);
  v51 = *(v1 + 224);
  v50 = *(v1 + 232);
  v73 = *(v1 + 240);
  v78 = *(v1 + 288);
  v81 = *v80;
  [v25 startReading];
  [v50 startWriting];
  epoch = kCMTimeZero.epoch;
  *(v1 + 352) = kCMTimeZero.value;
  *(v1 + 360) = *&kCMTimeZero.timescale;
  *(v1 + 368) = epoch;
  [v50 startSessionAtSourceTime:v1 + 352];
  v53 = swift_task_alloc();
  *(v1 + 336) = v53;
  *(v53 + 16) = v73;
  *(v53 + 32) = v49;
  *(v53 + 40) = v51;
  *(v53 + 48) = v81;
  *(v53 + 64) = v48;
  *(v53 + 72) = v3 - 40;
  *(v53 + 80) = v78;
  *(v53 + 96) = v47;
  v54 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v55 = swift_task_alloc();
  *(v1 + 344) = v55;
  *v55 = v1;
  v55[1] = sub_10002D800;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10002D764()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  sub_100032AA4(*(v0 + 288), *(v0 + 296), *(v0 + 304));

  v7 = *(v0 + 320);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10002D800()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return _swift_task_switch(sub_10002D918, 0, 0);
}

uint64_t sub_10002D918()
{
  v1 = v0[29];
  v0[2] = v0;
  v0[3] = sub_10002DA2C;
  v2 = swift_continuation_init();
  v0[17] = sub_100024720(&qword_10005CC40, &qword_10003FAF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002EDB0;
  v0[13] = &unk_100056CE0;
  v0[14] = v2;
  [v1 finishWritingWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002DA2C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10002DB0C, 0, 0);
}

uint64_t sub_10002DB0C()
{
  v1 = [*(v0 + 232) status];
  v2 = *(v0 + 328);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);
  v16 = *(v0 + 280);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 240);
  if (v1 == 2)
  {

    sub_100032AA4(v5, v3, v4);
  }

  else
  {
    v15 = *(v0 + 256);
    v12 = [*(v0 + 232) error];
    sub_100031DB8();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 4;
    swift_willThrow();

    sub_100032AA4(v5, v3, v4);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10002DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 32) = a2;
  v9 = *(*(sub_100024720(&qword_10005CB50, &qword_10003F510) - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10002DD8C, 0, 0);
}

uint64_t sub_10002DD8C()
{
  v1 = v0[16];
  v2 = v0[12];
  v53 = v0[11];
  v54 = v0[13];
  v3 = v0[8];
  v51 = v0[9];
  v52 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v50 = v0[4];
  v56 = type metadata accessor for TaskPriority();
  v55 = *(*(v56 - 8) + 56);
  v55(v1, 1, 1, v56);
  v7 = *v3;
  v47 = *(v3 + 1);
  v48 = *(v3 + 2);
  v49 = *(v3 + 3);
  v0[2] = *(v3 + 4);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  v10 = *v3;
  v9 = v3[1];
  *(v8 + 88) = v3[2];
  *(v8 + 56) = v10;
  *(v8 + 72) = v9;
  v11 = v6;
  v12 = v5;
  v13 = v4;
  v14 = v7;
  v15 = v47;
  v16 = v48;
  v17 = v49;
  sub_10003352C((v0 + 2), (v0 + 3), &qword_10005CC30, &qword_10003FAC8);
  sub_10002E4EC(v1, &unk_10003FB00, v8);
  sub_100028ED4(v1, &qword_10005CB50, &qword_10003F510);
  v55(v1, 1, 1, v56);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v51;
  v18[5] = v52;
  v18[6] = v53;
  v19 = v51;
  v20 = v52;
  v21 = v53;
  sub_10002E4EC(v1, &unk_10003FB10, v18);
  sub_100028ED4(v1, &qword_10005CB50, &qword_10003F510);
  v55(v1, 1, 1, v56);
  v23 = *v2;
  v22 = *(v2 + 1);
  v24 = *(v2 + 2);
  v25 = *(v2 + 3);
  v26 = *(v2 + 4);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v29 = *v2;
  v28 = v2[1];
  *(v27 + 64) = *(v2 + 4);
  *(v27 + 32) = v29;
  *(v27 + 48) = v28;
  v30 = v23;
  v31 = v22;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  sub_10002E4EC(v1, &unk_10003FB20, v27);
  sub_100028ED4(v1, &qword_10005CB50, &qword_10003F510);
  if (v54)
  {
    v36 = v0[15];
    v35 = v0[16];
    v38 = v0[13];
    v37 = v0[14];
    v39 = v0[4];
    v55(v35, 1, 1, v56);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v38;
    v40[5] = v37;
    v40[6] = v36;
    v41 = v38;
    v42 = v37;
    v43 = v36;
    sub_10002E4EC(v35, &unk_10003FB30, v40);
    sub_100028ED4(v35, &qword_10005CB50, &qword_10003F510);
  }

  v44 = v0[16];

  v45 = v0[1];

  return v45();
}

uint64_t sub_10002E124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return _swift_task_switch(sub_10002E148, 0, 0);
}

uint64_t sub_10002E148()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  *(v0 + 16) = *(v2 + 4);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  v18 = *(v0 + 32);
  v8 = *v2;
  v9 = v2[2];
  v7[2] = v2[1];
  v7[3] = v9;
  v7[1] = v8;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  sub_10003352C(v0 + 16, v0 + 24, &qword_10005CC30, &qword_10003FAC8);
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *(v14 + 16) = v18;
  *(v14 + 32) = v1;
  *(v14 + 40) = sub_10003344C;
  *(v14 + 48) = v7;
  v15 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_10002E2E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v16, 0, 0, 0xD000000000000020, 0x800000010004C030, sub_100033684, v14, &type metadata for () + 8);
}

uint64_t sub_10002E2E4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_10002E3FC, 0, 0);
}

uint64_t sub_10002E3FC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10002E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  if (v4 > 0.0)
  {
    v5 = *(a4 + 32);
    os_unfair_lock_lock((v5 + 24));
    CMTime.seconds.getter();
    *(v5 + 16) = v6 / v4;

    os_unfair_lock_unlock((v5 + 24));
  }
}

uint64_t sub_10002E4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100024720(&qword_10005CB50, &qword_10003F510);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  sub_10003352C(a1, v22 - v10, &qword_10005CB50, &qword_10003F510);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100028ED4(v11, &qword_10005CB50, &qword_10003F510);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_10002E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10002E728, 0, 0);
}

uint64_t sub_10002E728()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_10002E828;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000020, 0x800000010004C030, sub_100033684, v2, &type metadata for () + 8);
}

uint64_t sub_10002E828()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10002E940, 0, 0);
}

uint64_t sub_10002E974()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10002EA5C;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x29287472617473, 0xE700000000000000, sub_10003331C, v2, &type metadata for () + 8);
}

uint64_t sub_10002EA5C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10003367C, 0, 0);
}

uint64_t sub_10002EB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10002EB98, 0, 0);
}

uint64_t sub_10002EB98()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_10002EC98;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000020, 0x800000010004C030, sub_100033260, v2, &type metadata for () + 8);
}

uint64_t sub_10002EC98()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10003367C, 0, 0);
}

uint64_t sub_10002EDB0(uint64_t a1)
{
  v1 = *sub_100032EB8((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_10002EDE4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v11 = sub_100024720(&qword_10005CC48, &qword_10003FB38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  (*(v12 + 16))(&v24 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = sub_100033264;
  v18[6] = v17;
  v18[7] = a5;
  v18[8] = v25;
  aBlock[4] = sub_1000332D0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002C924;
  aBlock[3] = &unk_100056DF8;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  v21 = a3;
  v22 = a4;

  sub_1000332FC(a5);

  [v21 requestMediaDataWhenReadyOnQueue:v22 usingBlock:v19];
  _Block_release(v19);
}

uint64_t sub_10002F01C(void *a1, id a2, uint64_t a3, uint64_t (*a4)(id), uint64_t a5, void (*a6)(CMTimeValue, void, CMTimeEpoch))
{
  result = [a2 isReadyForMoreMediaData];
  if (result)
  {
    while (1)
    {
      v11 = [a1 copyNextSampleBuffer];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      [a2 appendSampleBuffer:v11];
      if (a6)
      {

        CMSampleBufferGetPresentationTimeStamp(&v13, v12);
        a6(v13.value, *&v13.timescale, v13.epoch);

        sub_10003330C(a6);
      }

      else
      {
      }

      result = [a2 isReadyForMoreMediaData];
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    return a4([a2 markAsFinished]);
  }

  return result;
}

void sub_10002F128()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002F718(0);
  v6 = 0;
  v7 = *(v5 + 16);
  while (1)
  {
    if (v7 == v6)
    {
LABEL_5:

      return;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6++, v0);
    v8 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    (*(v1 + 8))(v4, v0);
    v12 = [v8 initWithURL:v11 options:0];

    v13 = [objc_allocWithZone(RCSpatialAsset) initWithAsset:v12];
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_10002F2E0(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v35);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v36);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024720(&qword_10005CC48, &qword_10003FB38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = *(a2 + 32);
  v16 = *a2;
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  v30 = *(a2 + 8);
  v31 = v18;
  v32 = v17;
  v33 = v15;
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = *(a2 + 16);
  *(v20 + 16) = *a2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a2 + 32);
  (*(v11 + 32))(v20 + v19, v14, v10);
  aBlock[4] = sub_100033324;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002C924;
  aBlock[3] = &unk_100056E48;
  v22 = _Block_copy(aBlock);
  v23 = v16;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v33;
  static DispatchQoS.unspecified.getter();
  v38 = &_swiftEmptyArrayStorage;
  sub_1000334E4(&unk_10005CC50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100024720(&qword_10005CA98, &qword_10003FB40);
  sub_1000290E0(&qword_10005CC60, &qword_10005CA98, &qword_10003FB40);
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v37 + 8))(v6, v27);
  (*(v34 + 8))(v9, v36);
}

uint64_t sub_10002F6B4(uint64_t a1)
{
  [*(a1 + 24) appendTimedMetadataGroup:*(a1 + 8)];
  [*(a1 + 16) markAsFinished];
  sub_100024720(&qword_10005CC48, &qword_10003FB38);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10002F718(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024720(&unk_10005CB80, &qword_10003FAC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = type metadata accessor for URL();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v43 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v2 tracks];
  sub_100029134(0, &qword_10005CC88, AVCompositionTrack_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  for (result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); result > a1; result = _CocoaArrayWrapper.endIndex.getter())
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (a1 < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
      {
        __break(1u);
        return result;
      }

      v16 = *(v14 + 8 * a1 + 32);
    }

    v17 = v16;

    v18 = [v17 segments];

    sub_100029134(0, &unk_10005CC90, AVCompositionTrackSegment_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    result = v19;
    if (!(v19 >> 62))
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v37;
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_9;
    }

LABEL_32:
    v34 = result;
    v20 = _CocoaArrayWrapper.endIndex.getter();
    result = v34;
    a1 = v37;
    if (!v20)
    {
LABEL_33:
      v23 = &_swiftEmptyArrayStorage;
LABEL_34:

      return v23;
    }

LABEL_9:
    v44 = v10;
    v21 = 0;
    v41 = result & 0xFFFFFFFFFFFFFF8;
    v42 = result & 0xC000000000000001;
    v39 = (v36 + 56);
    v22 = (v36 + 48);
    v23 = &_swiftEmptyArrayStorage;
    v38 = (v36 + 32);
    v40 = v9;
    while (1)
    {
      if (v42)
      {
        v9 = result;
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v41 + 16))
        {
          goto LABEL_27;
        }

        v9 = result;
        v24 = *(result + 8 * v21 + 32);
      }

      v25 = v24;
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v10 = v20;
      v27 = [v24 sourceURL];
      if (v27)
      {
        v28 = v27;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v14 = v44;
      (*v39)(a1, v29, 1, v44);
      v30 = v40;
      sub_100033464(a1, v40);
      if ((*v22)(v30, 1, v14) == 1)
      {
        sub_100028ED4(v30, &unk_10005CB80, &qword_10003FAC0);
      }

      else
      {
        v31 = *v38;
        (*v38)(v43, v30, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100030E00(0, *(v23 + 2) + 1, 1, v23);
        }

        v33 = *(v23 + 2);
        v32 = *(v23 + 3);
        if (v33 >= v32 >> 1)
        {
          v23 = sub_100030E00(v32 > 1, v33 + 1, 1, v23);
        }

        *(v23 + 2) = v33 + 1;
        v31(&v23[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33], v43, v44);
        a1 = v37;
      }

      result = v9;
      ++v21;
      v20 = v10;
      if (v26 == v10)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10002FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = *(*(sub_100024720(&unk_10005CB80, &qword_10003FAC0) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v10 = *(v9 + 64) + 15;
  v6[18] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[19] = v11;
  v12 = *(v11 - 8);
  v6[20] = v12;
  v13 = *(v12 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_10002FE34, 0, 0);
}

uint64_t sub_10002FE34()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = objc_opt_self();
  v0[25] = v4;
  v5 = [v4 defaultManager];
  v6 = RCRecordingsDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = *(v3 + 8);
  v0[26] = v10;
  v0[27] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50 = v10;
  v10(v1, v2);
  v0[9] = 0;
  v11 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v9 create:1 error:v0 + 9];

  v12 = v0[9];
  v13 = v0[24];
  v14 = v0[23];
  v51 = v0[22];
  if (v11)
  {
    v49 = v0[21];
    v15 = v0[20];
    v17 = v0[17];
    v16 = v0[18];
    v46 = v0[16];
    v47 = v0[19];
    v48 = v0[12];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v12;

    UUID.init()();
    UUID.uuidString.getter();
    (*(v17 + 8))(v16, v46);
    URL.appendingPathComponent(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathExtension(_:)();

    v50(v14, v47);
    v19 = *(v48 + OBJC_IVAR____TtC10voicememod17RCSpatialExporter_composition);
    v20 = *(v15 + 16);
    v0[28] = v20;
    v0[29] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v49, v51, v47);
    v21 = *(v48 + OBJC_IVAR____TtC10voicememod17RCSpatialExporter_metadata);

    sub_100031804(v19, v49, v21, v0 + 2);
    v26 = v0[12];
    v27 = v0[2];
    v28 = v0[3];
    v0[30] = v27;
    v0[31] = v28;
    v30 = v0[4];
    v29 = v0[5];
    v0[32] = v30;
    v0[33] = v29;
    v31 = v0[6];
    v32 = v0[7];
    v0[8] = v31;
    v33 = v26 + OBJC_IVAR____TtC10voicememod17RCSpatialExporter_exporter;
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
    v38 = *(v33 + 32);
    v39 = *(v33 + 40);
    *v33 = v27;
    *(v33 + 8) = v28;
    *(v33 + 16) = v30;
    *(v33 + 24) = v29;
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    v40 = v27;
    v41 = v28;
    v42 = v30;
    v43 = v29;
    sub_10003352C((v0 + 8), (v0 + 11), &qword_10005CC30, &qword_10003FAC8);
    sub_100031D58(v34, v35, v36, v37);
    v44 = swift_task_alloc();
    v0[34] = v44;
    *v44 = v0;
    v44[1] = sub_1000303C8;

    return sub_10002CD70();
  }

  else
  {
    v22 = v0[18];
    v23 = v0[15];
    v24 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1000303C8()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_100030730;
  }

  else
  {
    v3 = sub_100030508;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100030508()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  (*(v0 + 224))(v8, *(v0 + 176), v6);
  (*(v7 + 56))(v8, 0, 1, v6);
  v9(v8, 0);

  sub_100028ED4(v0 + 64, &qword_10005CC30, &qword_10003FAC8);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  sub_100028ED4(*(v0 + 120), &unk_10005CB80, &qword_10003FAC0);
  v12 = [v10 defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  *(v0 + 80) = 0;
  LODWORD(v1) = [v12 removeItemAtURL:v14 error:v0 + 80];

  v16 = *(v0 + 80);
  if (v1)
  {
    v17 = v16;
  }

  else
  {
    v18 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = *(v0 + 120);
  v20(*(v0 + 176), v24);
  v20(v22, v24);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100030730()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);

  sub_100028ED4(v0 + 64, &qword_10005CC30, &qword_10003FAC8);
  v4 = *(v0 + 280);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  (*(*(v0 + 160) + 56))(v5, 1, 1, *(v0 + 152));
  swift_errorRetain();
  v6(v5, v4);

  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  sub_100028ED4(*(v0 + 120), &unk_10005CB80, &qword_10003FAC0);
  v9 = [v7 defaultManager];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  *(v0 + 80) = 0;
  LODWORD(v6) = [v9 removeItemAtURL:v11 error:v0 + 80];

  v13 = *(v0 + 80);
  if (v6)
  {
    v14 = v13;
  }

  else
  {
    v15 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  v20 = *(v0 + 168);
  v21 = *(v0 + 152);
  v22 = *(v0 + 120);
  v17(*(v0 + 176), v21);
  v17(v19, v21);

  v23 = *(v0 + 8);

  return v23();
}

void sub_100030AE0()
{
  v1 = (v0 + OBJC_IVAR____TtC10voicememod17RCSpatialExporter_exporter);
  v2 = *(v0 + OBJC_IVAR____TtC10voicememod17RCSpatialExporter_exporter);
  if (v2)
  {
    v4 = v1[3];
    v3 = v1[4];
    v5 = v1[1];
    v6 = v1[2];
    v7 = v2;
    v8 = v5;
    v9 = v6;
    v10 = v4;

    os_unfair_lock_lock((v3 + 24));
    v11 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 24));
  }
}

id sub_100030BC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSpatialExporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100030C80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100030C94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100030CDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100030D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100024814;

  return sub_10002FC8C(a1, v4, v5, v6, v7, v8);
}

size_t sub_100030E00(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100024720(&qword_10005CAB0, &qword_10003F800);
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

uint64_t sub_100030FD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000310A4(v11, 0, 0, 1, a1, a2);
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
    sub_1000265E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100024D08(v11);
  return v7;
}

unint64_t sub_1000310A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000311B0(a5, a6);
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

char *sub_1000311B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000311FC(a1, a2);
  sub_10003132C(&off_1000565D0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000311FC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100031418(v5, 0);
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
        v7 = sub_100031418(v10, 0);
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

uint64_t sub_10003132C(uint64_t result)
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

  result = sub_10003148C(result, v12, 1, v3);
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

void *sub_100031418(uint64_t a1, uint64_t a2)
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

  sub_100024720(&qword_10005CC80, &unk_10003FB60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003148C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024720(&qword_10005CC80, &unk_10003FB60);
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

unint64_t sub_100031580(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000315F8(a1, a2, v6);
}

unint64_t sub_1000315F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_1000316B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 fileType:a2 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

void sub_100031804(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = a1;
  v46 = a3;
  v48 = a2;
  v39 = a4;
  v47 = type metadata accessor for URL();
  v49 = *(v47 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v47);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v44);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100029134(0, &qword_10005CA88, OS_dispatch_queue_ptr);
  v42 = "with(composition:queue:)";
  v43 = v14;
  static DispatchQoS.unspecified.getter();
  v50 = &_swiftEmptyArrayStorage;
  sub_1000334E4(&unk_10005CCC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100024720(&qword_10005CA90, &unk_10003F7F0);
  sub_1000290E0(&qword_10005CCD0, &qword_10005CA90, &unk_10003F7F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v44);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100024720(&qword_10005CCD8, &qword_10003FB90);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  v17 = objc_allocWithZone(AVAssetReader);
  v50 = 0;
  v18 = v45;
  v19 = [v17 initWithAsset:v18 error:&v50];
  v20 = v50;
  if (!v19)
  {
    v30 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    (*(v49 + 8))(v48, v47);
    goto LABEL_5;
  }

  v21 = v19;
  v45 = v15;
  v22 = v48;
  v23 = v40;
  v24 = v47;
  (*(v49 + 16))(v40, v48, v47);
  v25 = objc_allocWithZone(AVAssetWriter);
  v26 = v20;
  v27 = AVFileTypeQuickTimeMovie;
  v28 = v41;
  v29 = sub_1000316B0(v23, v27);
  if (v28)
  {

    (*(v49 + 8))(v22, v24);

    v15 = v45;
LABEL_5:

    return;
  }

  v31 = v29;

  v32 = v31;
  [v18 duration];

  CMTime.seconds.getter();
  v34 = v33;
  if (v46)
  {
    sub_100029134(0, &qword_10005CC78, AVMetadataItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 setMetadata:isa];
  }

  (*(v49 + 8))(v48, v47);

  v36 = v39;
  *v39 = v18;
  v36[1] = v21;
  v37 = v45;
  v36[2] = v32;
  v36[3] = v37;
  v36[4] = v16;
  v36[5] = v34;
}

void *sub_100031D58(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100031DB8()
{
  result = qword_10005CC38;
  if (!qword_10005CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CC38);
  }

  return result;
}

unint64_t sub_100031E0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024720(&unk_10005CCB0, &unk_10003FB80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003352C(v4, &v13, &qword_10005CCA8, &qword_10003FB78);
      v5 = v13;
      v6 = v14;
      result = sub_100031580(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000334D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100031F3C()
{
  sub_100024720(&qword_10005CCA0, &qword_10003FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003FA20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 72) = &type metadata for UInt32;
  *(inited + 48) = 1633772320;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v2;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 48000;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v3;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 2;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v4;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = 96;
  sub_100031E0C(inited);
  swift_setDeallocating();
  sub_100024720(&qword_10005CCA8, &qword_10003FB78);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(AVAudioFormat);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithSettings:isa];

  return v7;
}

uint64_t sub_1000320C8(void *a1, void *a2)
{
  v4 = [a1 tracks];
  sub_100029134(0, &qword_10005CC88, AVCompositionTrack_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    sub_100031DB8();
    swift_allocError();
    *v20 = 2;
    *(v20 + 8) = 5;
    swift_willThrow();
    return v2;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v2 = v7;

    v8 = [objc_allocWithZone(AVAudioFormat) initStandardFormatWithSampleRate:2 channels:48000.0];
    if (v8)
    {
      v9 = v8;
      v10 = sub_100031F3C();
      if (v10)
      {
        v23 = v10;
        a2;
        v11 = [v9 settings];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = objc_allocWithZone(AVAssetReaderTrackOutput);
        v13 = v2;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v15 = v13;
        v22 = v13;
        v2 = [v12 initWithTrack:v13 outputSettings:isa];

        v21 = AVMediaTypeAudio;
        v16 = [v23 settings];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = objc_allocWithZone(AVAssetWriterInput);
        v18 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v17 initWithMediaType:v21 outputSettings:v18];

        return v2;
      }
    }

    sub_100031DB8();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 5;
    swift_willThrow();

    return v2;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032410(void *a1, void *a2)
{
  v3 = [a1 tracks];
  sub_100029134(0, &qword_10005CC88, AVCompositionTrack_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_100031DB8();
    swift_allocError();
    *v9 = 2;
    *(v9 + 8) = 5;
    swift_willThrow();
    return v4;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v7 = v6;

    v8 = objc_allocWithZone(AVAssetReaderTrackOutput);
    a2;
    v4 = [v8 initWithTrack:v7 outputSettings:0];
    [objc_allocWithZone(AVAssetWriterInput) initWithMediaType:AVMediaTypeAudio outputSettings:0];

    return v4;
  }

  __break(1u);
  return result;
}

void sub_1000325A8(void *a1, void *a2)
{
  v4 = [a1 tracks];
  sub_100029134(0, &qword_10005CC88, AVCompositionTrack_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= 2)
  {
    v7 = [a1 tracks];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v9 = *(v8 + 40);
LABEL_7:
      v10 = v9;

      v11 = objc_allocWithZone(AVAssetReaderTrackOutput);
      a2;
      [v11 initWithTrack:v10 outputSettings:0];
      [objc_allocWithZone(AVAssetWriterInput) initWithMediaType:AVMediaTypeAudio outputSettings:0];

      return;
    }

    __break(1u);
  }
}

uint64_t sub_100032758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10003277C, 0, 0);
}

uint64_t sub_10003277C()
{
  v24 = v0;
  v1 = *(v0 + 24);
  sub_10002F128();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 spatialMetadataGroup];
    isa = [v4 items];

    if (!isa)
    {
      sub_100029134(0, &qword_10005CC78, AVMetadataItem_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v6 = *(v0 + 32);
    v7 = *&kCMTimeZero.timescale;
    epoch = kCMTimeZero.epoch;
    [*(v0 + 24) duration];
    v26.value = kCMTimeZero.value;
    *&v26.timescale = v7;
    v26.epoch = epoch;
    CMTimeRange.init(start:end:)((v0 + 40), v26, v23);
    v9 = [objc_allocWithZone(AVTimedMetadataGroup) initWithItems:isa timeRange:v0 + 40];

    v10 = [v9 copyFormatDescription];
    v11 = [objc_allocWithZone(AVAssetWriterInput) initWithMediaType:AVMediaTypeMetadata outputSettings:0 sourceFormatHint:v10];

    v12 = [objc_allocWithZone(AVAssetWriterInputMetadataAdaptor) initWithAssetWriterInput:v11];
    v13 = [v3 asset];

    v14 = v6;
  }

  else
  {
    if (qword_10005C910 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100024CD0(v15, qword_10005D2B0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23.value = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100030FD8(0xD000000000000018, 0x800000010004C060, &v23.value);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s - no spatial asset found", v18, 0xCu);
      sub_100024D08(v19);
    }

    v13 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
  }

  v20 = *(v0 + 16);
  *v20 = v13;
  v20[1] = v9;
  v20[2] = v11;
  v20[3] = v12;
  v20[4] = v6;
  v21 = *(v0 + 8);

  return v21();
}

void sub_100032AA4(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

void sub_100032AF4(void *a1, void *a2, void *a3, void *a4)
{
  if ([a1 canAddTrackAssociationWithTrackOfInput:a2 type:AVTrackAssociationTypeAudioFallback])
  {
    [a1 addTrackAssociationWithTrackOfInput:a2 type:AVTrackAssociationTypeAudioFallback];
    sub_100024720(&qword_10005CC68, &qword_10003FB58);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10003FA30;
    *(v8 + 32) = a2;
    *(v8 + 40) = a1;
    v9 = objc_allocWithZone(AVAssetWriterInputGroup);
    sub_100029134(0, &qword_10005CC70, AVAssetWriterInput_ptr);
    v10 = a2;
    v11 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v9 initWithInputs:isa defaultInput:v10];

    if ([a4 canAddInputGroup:v13])
    {
      [a4 addInputGroup:v13];
      if ([a3 canAddTrackAssociationWithTrackOfInput:v11 type:AVTrackAssociationTypeMetadataReferent])
      {
        [a3 addTrackAssociationWithTrackOfInput:v11 type:AVTrackAssociationTypeMetadataReferent];
      }

      else
      {
        sub_100031DB8();
        swift_allocError();
        *v17 = v11;
        *(v17 + 8) = 3;
        swift_willThrow();
        v18 = v11;
      }
    }

    else
    {
      sub_100031DB8();
      swift_allocError();
      *v16 = v13;
      *(v16 + 8) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_100031DB8();
    swift_allocError();
    *v14 = a2;
    *(v14 + 8) = 3;
    swift_willThrow();
    v15 = a2;
  }
}

uint64_t sub_100032D48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v15 = *(v2 + 80);
  v16 = *(v2 + 64);
  v12 = *(v2 + 96);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100024814;

  return sub_10002DCCC(a1, a2, v6, v7, v8, v9, v10, v11);
}

id sub_100032E68(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

void *sub_100032EB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100032EFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100026AC4;

  return sub_10002E124(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_100032FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100026AC4;

  return sub_10002E704(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100033098(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100026AC4;

  return sub_10002E954(a1, v4, v5, v1 + 32);
}

uint64_t sub_100033148()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100033198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100026AC4;

  return sub_10002EB74(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100033264()
{
  v1 = *(sub_100024720(&qword_10005CC48, &qword_10003FB38) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000332E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000332FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003330C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100033324()
{
  v1 = *(*(sub_100024720(&qword_10005CC48, &qword_10003FB38) - 8) + 80);

  return sub_10002F6B4(v0 + 16);
}

uint64_t sub_100033394(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100026AC4;

  return sub_10002B17C(a1, v5);
}

uint64_t sub_100033464(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024720(&unk_10005CB80, &qword_10003FAC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000334D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000334E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003352C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024720(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100033594(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1000335B0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000335C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003360C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100033650(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

id sub_100033688(void *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v61 = type metadata accessor for Date();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v61);
  v58 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v58 - v9;
  v10 = sub_100024720(&qword_10005C940, &qword_10003F540);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v58 - v15;
  v17 = sub_100024720(&unk_10005CB80, &qword_10003FAC0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  v24 = [v3 init];
  v25 = [a1 title];
  if (v25)
  {
    v26 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v27 = String._bridgeToObjectiveC()();

  [v24 setTitle:v27];

  v28 = [a1 url];
  if (v28)
  {
    v29 = v28;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 56))(v21, 0, 1, v30);
  }

  else
  {
    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
  }

  sub_100033EF0(v21, v23, &unk_10005CB80, &qword_10003FAC0);
  type metadata accessor for URL();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v23, 1, v30) == 1)
  {
    sub_100028ED4(v23, &unk_10005CB80, &qword_10003FAC0);
  }

  else
  {
    URL.path.getter();
    (*(v31 + 8))(v23, v30);
  }

  v32 = String._bridgeToObjectiveC()();

  [v24 setPath:v32];

  v33 = [a1 userFolder];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 name];

    if (!v35)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = String._bridgeToObjectiveC()();
    }
  }

  else
  {
    v35 = 0;
  }

  [v24 setFolder:v35];

  type metadata accessor for RCAudioCodecName(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 setCodecs:isa];

  [a1 length];
  v37 = Double._bridgeToObjectiveC()().super.super.isa;
  [v24 setDurationMillis:v37];

  v38 = [a1 creationDate];
  if (v38)
  {
    v39 = v38;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = v61;
  (*(v5 + 56))(v14, v40, 1, v61);
  sub_100033EF0(v14, v16, &qword_10005C940, &qword_10003F540);
  if ((*(v5 + 48))(v16, 1, v41) == 1)
  {
    sub_100028ED4(v16, &qword_10005C940, &qword_10003F540);
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    (*(v5 + 8))(v16, v41);
  }

  v42 = Double._bridgeToObjectiveC()().super.super.isa;
  [v24 setCreationTimeMillis:v42];

  v43 = [a1 deletionDate];
  if (v43)
  {
    v44 = v58;
    v45 = v43;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v59;
    (*(v5 + 32))(v59, v44, v41);
    Date.timeIntervalSince1970.getter();
    v47 = Double._bridgeToObjectiveC()().super.super.isa;
    [v24 setDeletionTimeMillis:v47];

    (*(v5 + 8))(v46, v41);
  }

  v48 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "favorite")}];
  [v24 setFavorite:v48];

  v49 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "recordedOnWatch")}];
  [v24 setRecordedOnWatch:v49];

  v50 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "enhanced")}];
  [v24 setEnhanced:v50];

  v51 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "composedAssetHasMultipleTracks")}];
  [v24 setMultiLayer:v51];

  [a1 layerMix];
  v53 = v52;
  v54 = objc_allocWithZone(NSNumber);
  LODWORD(v55) = v53;
  v56 = [v54 initWithFloat:v55];
  [v24 setMultiLayerMix:v56];

  return v24;
}

uint64_t sub_100033EF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100024720(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100033F58()
{
  v0 = type metadata accessor for Logger();
  sub_100033FDC(v0, qword_10005D2B0);
  sub_100024CD0(v0, qword_10005D2B0);
  v1 = kVMLogCategoryDefault;
  v2 = OSLogForCategory();

  return Logger.init(_:)();
}

uint64_t *sub_100033FDC(uint64_t a1, uint64_t *a2)
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

id sub_10003410C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudKitContainerUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100034164()
{
  RCUseDevelopmentContainer();
  if (RCUseDevelopmentContainer())
  {
    v0 = 2;
  }

  else
  {
    v0 = 1;
  }

  v1 = objc_allocWithZone(CKContainerID);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithContainerIdentifier:v2 environment:v0];

  v4 = [v3 containerIdentifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = [objc_opt_self() containerWithIdentifier:v4];

  return v5;
}

void sub_100034284(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCMirroringContainer initWithURL:]";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s -- Failed to set mirroring delegate for store %@", &v2, 0x16u);
}

void sub_100034310()
{
  v1[0] = 136315394;
  sub_1000038C8();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- fetchiCloudRestoreIsCompleteWithCompletion error = %@", v1, 0x16u);
}

void sub_100034494(void *a1, NSObject *a2)
{
  v3 = 136315394;
  v4 = "[MobileRestoreObserver managerDidFinishRestore:]";
  v5 = 1024;
  v6 = [a1 state];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s -- finished restore state = %d", &v3, 0x12u);
}

void sub_1000345A8(void *a1, NSObject *a2)
{
  v4 = [a1 state];
  [a1 progress];
  v6 = 136315650;
  v7 = "[MobileRestoreObserver managerDidUpdateBackgroundRestoreProgress:]";
  v8 = 1024;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s -- state = %d, progress = %g", &v6, 0x1Cu);
}

void sub_100034670(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs:andFinalizingCompositions:restoreFileFutures:]_block_invoke";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- Failed to consolidate movie fragments for %@, error: %@", buf, 0x20u);
}

void sub_1000346E8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs:andFinalizingCompositions:restoreFileFutures:]_block_invoke";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- could not read audio file:  %@", buf, 0x16u);
}

void sub_100034754()
{
  v3[0] = 136315650;
  sub_1000038C8();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s -- merging recordings with uniqueID = %@:  %@", v3, 0x20u);
}

void sub_1000347E0()
{
  v1[0] = 136315394;
  sub_1000038C8();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- Failed to insert recording with error: %@", v1, 0x16u);
}

void sub_100034860(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCSavedRecordingsModel(RCSOrphanHandling) updateRecordingForFinalizedCompositionAndMigrateIfNecessary:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- No uuid for composition", &v1, 0xCu);
}

void sub_1000348E4()
{
  v3[0] = 136315650;
  sub_1000038C8();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s -- failed to save recording with file name = %@, error = %@", v3, 0x20u);
}

void sub_100034970()
{
  v1[0] = 136315394;
  sub_1000038C8();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- ERROR: moveError = %@", v1, 0x16u);
}

void sub_1000349F0(void *a1, NSObject *a2)
{
  v3 = [a1 AVOutputURL];
  v4[0] = 136315394;
  sub_1000038C8();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- ERROR:  could not open fragment URL = %@", v4, 0x16u);
}

void sub_100034A90(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[AssetExportController finalizeAssetWithComposition:completionBlock:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s -- Performing asset finalization %@", &v2, 0x16u);
}

void sub_100034B1C()
{
  v3[0] = 136315650;
  sub_1000038C8();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s -- Incorrect file extension for multi layer voice memo. Changing from %@ to %@.", v3, 0x20u);
}

void sub_100034E78()
{
  v1[0] = 136315394;
  sub_1000038C8();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s -- Failed to remove title metadata in place, no known handler for error: %@", v1, 0x16u);
}

void sub_1000350DC()
{
  v3[0] = 136315650;
  sub_1000038C8();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s -- ERROR: Unable to create Recordings directory (%@): %@", v3, 0x20u);
}

void sub_100035344(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 lastPathComponent];
  v7[0] = 136315650;
  sub_1000038C8();
  v8 = v6;
  v9 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "%s -- ERROR: failed to load persistent store '%@', error = %@", v7, 0x20u);
}

void sub_10003563C()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000356B8()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035864()
{
  v1[0] = 136315394;
  sub_1000038C8();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- ERROR: fetchError = %@", v1, 0x16u);
}

void sub_1000358E4()
{
  v1[0] = 136315394;
  sub_1000038C8();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- No recording found for ID: %@", v1, 0x16u);
}

void sub_100035964(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCAudioFutureSyncManager ___fetchAudioFuturesWithCompletionBlock:]_block_invoke";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- unexpected audioFuturesToFetch == nil", &v1, 0xCu);
}

void sub_1000359E8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCAudioFutureSyncManager _validateCorrectStore:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- ERROR: Trying to download with wrong AudioFutureSyncManager!", &v1, 0xCu);
}

void sub_100035A6C(os_log_t log)
{
  v1 = 136315138;
  v2 = "main";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Starting xpc service", &v1, 0xCu);
}

void sub_100035AF0(NSObject *a1)
{
  v2 = +[RCSSavedRecordingServiceConnection serviceInterface];
  v3 = [v2 debugDescription];
  v4 = +[RCSSavedRecordingServiceConnection clientInterface];
  v5 = [v4 debugDescription];
  v6 = 136315650;
  v7 = "main";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v5;
  _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "%s -- Vending service with interfaces...\n\n***server interface***\n%@\n***client interface***\n%@\n\n \n", &v6, 0x20u);
}

void sub_100035BF0(os_log_t log)
{
  v1 = 136315138;
  v2 = "main";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Exiting xpc service", &v1, 0xCu);
}

void sub_100035C88()
{
  sub_1000038C8();
  sub_10001E6B0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035D04()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035D80()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035DFC()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035E78()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100035EF4(void *a1)
{
  v1 = [a1 lastPathComponent];
  sub_1000038C8();
  sub_10001E674();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100035F8C()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036048()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036104(void *a1)
{
  v1 = [a1 lastPathComponent];
  sub_1000038C8();
  sub_10001E674();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003619C()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036258()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036314(void *a1)
{
  v1 = [a1 lastPathComponent];
  sub_1000038C8();
  sub_10001E674();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000363AC()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036468()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036524(void *a1)
{
  v1 = [a1 lastPathComponent];
  sub_1000038C8();
  sub_10001E674();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000365BC()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036678()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036734(void *a1)
{
  v1 = [a1 path];
  sub_10001E6C8();
  sub_10001E674();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000367E8(void *a1)
{
  v1 = [a1 path];
  sub_10001E6C8();
  sub_10001E674();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10003689C()
{
  sub_1000038C8();
  sub_10001E6F0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100036A18()
{
  sub_1000038C8();
  sub_10001E6F0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100036A94()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100036B10()
{
  sub_1000038C8();
  sub_10001E6B0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100036B8C()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_100036C48()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100036CC4()
{
  v2 = 136315650;
  sub_1000038C8();
  sub_10001E6FC(&_mh_execute_header, v0, v1, "%s -- context = %@, error = %@", v2);
}

void sub_100036D40(int a1, int a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[SavedRecordingService _validateUpdate:]";
  v5 = 1026;
  v6 = a1;
  v7 = 1026;
  v8 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- Import change inconsistency versionedAudioFutureUpdated: %{public}i, audioFutureFlagsUpdated: %{public}i", &v3, 0x18u);
}

void sub_100036DD8(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:NSCloudKitMirroringDelegateResetSyncReasonKey];
  sub_1000038C8();
  sub_10001E674();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100036E94(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:NSCloudKitMirroringDelegateResetSyncReasonKey];
  sub_1000038C8();
  sub_10001E674();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000371D0()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003724C()
{
  sub_1000038C8();
  sub_10001E6B0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100037348()
{
  sub_10001E6A4();
  v1 = NSStringFromSelector([v0 selector]);
  sub_1000038C8();
  sub_10001E674();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000373F4()
{
  sub_1000038C8();
  sub_10001E6B0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100037470(void *a1)
{
  [a1 processIdentifier];
  sub_10001E674();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100037508(int *a1)
{
  v6 = *a1;
  sub_10001E6B0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100037594()
{
  sub_1000038C8();
  sub_10001E6B0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100037710()
{
  sub_1000038C8();
  sub_10001E6B0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10003778C()
{
  sub_1000038C8();
  sub_10001E6B0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100037808(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = @"will re-issue request";
  *&v4[4] = "[SavedRecordingService _onServiceQueueOpenAccessSessionNamed:compositionAVURL:accessIntent:xpcConnection:accessSessionHandler:]_block_invoke";
  *v4 = 136315650;
  *&v4[12] = 2112;
  if (a2)
  {
    v3 = @"was canceled!";
  }

  *&v4[22] = 2112;
  *&v4[14] = *(a1 + 32);
  sub_10001E6FC(&_mh_execute_header, a2, a3, "%s -- running deferred access block for '%@' request -- %@", *v4, *&v4[8], *&v4[16], v3);
}

void sub_1000378AC()
{
  sub_10001E6A4();
  +[NSXPCConnection currentConnection];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_10001E6BC();
  v2 = NSStringFromSelector(v1);
  sub_10001E64C();
  sub_10001E664();
  sub_10001E684(&_mh_execute_header, v3, v4, "%s -- ERROR: received invalid message on connection %@.  %@ parameter is required for invocations of -%@", v5, v6, v7, v8, 2u);
}

void sub_1000379E8()
{
  sub_1000038C8();
  sub_10000CBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100037AF0()
{
  v1[0] = 136315394;
  sub_10001F3A0();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s -- accountStatus is an unexpected case %li", v1, 0x16u);
}

void sub_100037B70()
{
  v1[0] = 136315394;
  sub_10001F3A0();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s -- Unknown encrypted fields account status %li", v1, 0x16u);
}

void sub_100037BF0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCCompositionComposedAssetWriter writeCompositionWithCompletionBlock:]";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s -- ERROR: Unable to create temporary directory URLForDirectory error = %@", &v2, 0x16u);
}

void sub_100037C7C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCCompositionComposedAssetWriter writeCompositionWithCompletionBlock:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- ERROR: Unable to compose recording - there was a problem determining export settings", &v1, 0xCu);
}

void sub_100037D00(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 8);
  v4 = *(*(*a2 + 8) + 40);
  v5 = 136315650;
  v6 = "[RCCompositionComposedAssetWriter writeCompositionWithCompletionBlock:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- ERROR: Unable to compose recording - _exportSession = %@, underlying error = %@", &v5, 0x20u);
}

void sub_100037DAC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCCompositionComposedAssetWriter writeCompositionWithCompletionBlock:]_block_invoke";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- Export session produced file with no audio tracks", &v1, 0xCu);
}