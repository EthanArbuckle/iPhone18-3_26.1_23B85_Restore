uint64_t sub_100064E38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v65 = a5;
  v66 = a6;
  v62 = a3;
  v63 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction();
  v10 = *(*(v63 - 8) + 64);
  v11 = __chkstk_darwin(v63);
  v12 = __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  result = __chkstk_darwin(v15);
  v21 = &v55 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v24 = a2 - a1 == 0x8000000000000000 && v23 == -1;
  if (v24)
  {
    goto LABEL_66;
  }

  v25 = v62 - a2;
  if (v62 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v69 = a1;
  v68 = a4;
  v27 = v25 / v23;
  if ((a2 - a1) / v23 >= v25 / v23)
  {
    v64 = v6;
    v60 = a1;
    v58 = v19;
    sub_100063708(a2, v25 / v23, a4, type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction);
    v61 = a4;
    v35 = a4 + v27 * v23;
    v36 = -v23;
    v37 = v35;
    v59 = -v23;
LABEL_38:
    v38 = a2 + v36;
    v39 = v62;
    v56 = v37;
    v40 = v37;
    while (1)
    {
      if (v35 <= v61)
      {
        v69 = a2;
        v67 = v40;
        goto LABEL_64;
      }

      if (a2 <= v60)
      {
        v69 = a2;
        v54 = v56;
        goto LABEL_63;
      }

      v57 = v40;
      v41 = a2;
      v42 = v59;
      v43 = v35 + v59;
      sub_1000617A8(v35 + v59, v14);
      v44 = v38;
      v45 = v14;
      v46 = v58;
      sub_1000617A8(v38, v58);
      v47 = v64;
      v48 = v65(v45, v46);
      v64 = v47;
      if (v47)
      {
        break;
      }

      v49 = v48;
      v50 = v39 + v42;
      sub_10006174C(v46);
      sub_10006174C(v45);
      v14 = v45;
      if (v49)
      {
        v52 = v39 < v41 || v50 >= v41;
        v62 = v50;
        if (v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v44;
          v37 = v57;
          v36 = v59;
        }

        else
        {
          v37 = v57;
          a2 = v44;
          v36 = v59;
          if (v39 != v41)
          {
            v53 = v57;
            swift_arrayInitWithTakeBackToFront();
            a2 = v44;
            v37 = v53;
          }
        }

        goto LABEL_38;
      }

      v51 = v39 < v35 || v50 >= v35;
      a2 = v41;
      if (v51)
      {
        swift_arrayInitWithTakeFrontToBack();
        v39 = v50;
        v35 = v43;
        v40 = v43;
        v38 = v44;
      }

      else
      {
        v40 = v43;
        v24 = v35 == v39;
        v39 = v50;
        v35 = v43;
        v38 = v44;
        if (!v24)
        {
          swift_arrayInitWithTakeBackToFront();
          v39 = v50;
          v35 = v43;
          v40 = v43;
        }
      }
    }

    sub_10006174C(v46);
    sub_10006174C(v45);
    v69 = v41;
    v54 = v57;
LABEL_63:
    v67 = v54;
  }

  else
  {
    sub_100063708(a1, (a2 - a1) / v23, a4, type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction);
    v64 = a4 + (a2 - a1) / v23 * v23;
    v67 = v64;
    v28 = a4;
    while (v28 < v64 && a2 < v62)
    {
      sub_1000617A8(a2, v21);
      v30 = v28;
      sub_1000617A8(v28, v17);
      v31 = v65(v21, v17);
      if (v6)
      {
        sub_10006174C(v17);
        sub_10006174C(v21);
        break;
      }

      v32 = v31;
      sub_10006174C(v17);
      sub_10006174C(v21);
      if (v32)
      {
        if (a1 < a2 || a1 >= a2 + v23)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v23;
        v28 = v30;
      }

      else
      {
        v28 = v30 + v23;
        if (a1 < v30 || a1 >= v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v30)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v68 = v30 + v23;
      }

      a1 += v23;
      v69 = a1;
    }
  }

LABEL_64:
  sub_1000871F8(&v69, &v68, &v67);
  return 1;
}

_BYTE *sub_100065310@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_10006537C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

unint64_t sub_100065474()
{
  result = qword_1006CA6F8;
  if (!qword_1006CA6F8)
  {
    type metadata accessor for TransactionType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA6F8);
  }

  return result;
}

unint64_t sub_1000654CC()
{
  result = qword_1006CA700;
  if (!qword_1006CA700)
  {
    sub_1000591B0(255, &qword_1006CA340, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA700);
  }

  return result;
}

void sub_1000655D0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_100065618(uint64_t a1)
{
  *(a1 + 8) = sub_10005F8A4;
  v2 = *(v1 + 168);
  return *(v1 + 216);
}

void sub_10006565C()
{
  v3 = v0 + v1[5];
  *v3 = 0;
  *(v3 + 8) = v2;
  v4 = v0 + v1[6];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = v2;
  *(v0 + v1[7]) = 0;
  v5 = v0 + v1[8];
  *v5 = 0;
  *(v5 + 8) = v2;
}

uint64_t sub_1000656E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  v5 = *(v2 + 128);
  v7 = *(v2 + 104);
  v6 = *(v2 + 112);
  v8 = *(v4 + 16);
  v9 = v1 + ((*(v2 + 288) + 32) & ~*(v2 + 288)) + *(v4 + 72) * a1;
  return *(v2 + 168);
}

uint64_t sub_10006574C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

Swift::Int sub_10006576C()
{
  v4 = *(*(v1 + 136) + 80);
  v6 = *(v0 + 16);

  return sub_100063944(v2, 0);
}

double sub_1000657A4()
{
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  return v1;
}

uint64_t sub_100065804()
{
  *(v0 + 16) = v1;
  v6 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;

  return sub_100062954(v2, v6);
}

void sub_100065874()
{
  if (*(v0 + 88) < 0x7FFFFFFFFFFFFFFFuLL)
  {
    v1 = *(v0 + 88);
  }
}

uint64_t sub_1000658CC()
{
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[5];
  v10 = v0[6];
}

uint64_t sub_100065948()
{

  return swift_task_alloc();
}

uint64_t sub_100065978()
{

  return swift_allocObject();
}

uint64_t sub_1000659B0()
{

  return swift_allocObject();
}

uint64_t sub_1000659C8()
{

  return swift_allocObject();
}

uint64_t sub_100065A08()
{
  v2 = v0[28];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[32] + 1;

  return sub_10006174C(v3);
}

void sub_100065A7C(uint64_t a1@<X8>)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = *(v2[25] + 16);
}

uint64_t sub_100065AD8()
{
  v3 = *(v0 + 112);
  v4 = *(v0 + 144);

  return sub_1000617A8(v1, v4);
}

BOOL sub_100065AF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v11);
}

uint64_t sub_100065B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(*(a11 + 48) + 16 * v11 + 8);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.unknownDuration.getter()
{
  v1 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_unknownDuration;
  sub_1000682F8();
  return *(v0 + v1);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.unknownDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_unknownDuration;
  result = sub_1000682D8();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.stationaryDuration.getter()
{
  v1 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_stationaryDuration;
  sub_1000682F8();
  return *(v0 + v1);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.stationaryDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_stationaryDuration;
  result = sub_1000682D8();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.walkingDuration.getter()
{
  v1 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_walkingDuration;
  sub_1000682F8();
  return *(v0 + v1);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.walkingDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_walkingDuration;
  result = sub_1000682D8();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.runningDuration.getter()
{
  v1 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_runningDuration;
  sub_1000682F8();
  return *(v0 + v1);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.runningDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_runningDuration;
  result = sub_1000682D8();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.automotiveDuration.getter()
{
  v1 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_automotiveDuration;
  sub_1000682F8();
  return *(v0 + v1);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.automotiveDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_automotiveDuration;
  result = sub_1000682D8();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.cyclingDuration.getter()
{
  v1 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_cyclingDuration;
  sub_1000682F8();
  return *(v0 + v1);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.cyclingDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_cyclingDuration;
  result = sub_1000682D8();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ASMotionHelper.ActivitiesDurationResult.indeterminateDuration.getter()
{
  v1 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_indeterminateDuration;
  sub_1000682F8();
  return *(v0 + v1);
}

uint64_t ASMotionHelper.ActivitiesDurationResult.indeterminateDuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_indeterminateDuration;
  result = sub_1000682D8();
  *(v1 + v3) = a1;
  return result;
}

id ASMotionHelper.ActivitiesDurationResult.init()()
{
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_unknownDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_stationaryDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_walkingDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_runningDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_automotiveDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_cyclingDuration] = 0;
  *&v0[OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_indeterminateDuration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASMotionHelper.ActivitiesDurationResult();
  return objc_msgSendSuper2(&v2, "init");
}

id ASMotionHelper.init(manager:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3asd14ASMotionHelper_queue;
  *&v1[v3] = [objc_allocWithZone(NSOperationQueue) init];
  *&v1[OBJC_IVAR____TtC3asd14ASMotionHelper_manager] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ASMotionHelper();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t ASMotionHelper.durationOfActivities(startDateOffset:and:)()
{
  sub_1000657D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Date();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100066538, 0, 0);
}

uint64_t sub_100066538()
{
  sub_1000657D4();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];
  v4 = -v0[2];
  Date.init(timeIntervalSinceNow:)();
  Date.init(timeIntervalSinceNow:)();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1000665F0;
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];

  return sub_100066B6C(v7, v6);
}

uint64_t sub_1000665F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  sub_1000655F4();
  *v7 = v6;
  *(v4 + 80) = v1;

  if (v1)
  {
    v8 = sub_1000667D8;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_100066710;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100066710()
{
  sub_100068324();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  sub_10006714C(v0[11]);
  v6 = v5;

  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_1000667D8()
{
  sub_100068324();
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[6] + 8);
  v3(v0[7], v2);
  v3(v1, v2);

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_100066914(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1000669D8;

  return ASMotionHelper.durationOfActivities(startDateOffset:and:)();
}

uint64_t sub_1000669D8()
{
  sub_100068324();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;
  sub_1000655F4();
  *v9 = v8;

  v10 = *(v5 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, v4, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_100066B6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_100066B90, 0, 0);
}

uint64_t sub_100066B90()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = sub_1000443DC(&qword_1006CA7B0);
  *v5 = v0;
  v5[1] = sub_100066C98;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000014, 0x80000001005A4380, sub_100067FB8, v2, v6);
}

uint64_t sub_100066C98()
{
  sub_1000657D4();
  v3 = *(*v1 + 56);
  v2 = *v1;
  sub_1000655F4();
  *v4 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {
    v5 = sub_100066DC4;
  }

  else
  {
    v6 = *(v2 + 48);

    v5 = sub_100066DA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100066DC4()
{
  sub_1000657D4();
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_100066E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CA7B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = *(a2 + OBJC_IVAR____TtC3asd14ASMotionHelper_manager);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = Date._bridgeToObjectiveC()().super.isa;
  v10 = *(a2 + OBJC_IVAR____TtC3asd14ASMotionHelper_queue);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_100068050;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000670B8;
  aBlock[3] = &unk_100692C58;
  v13 = _Block_copy(aBlock);

  [v7 queryActivityStartingFromDate:isa toDate:v9 toQueue:v10 withHandler:v13];
  _Block_release(v13);
}

uint64_t sub_10006701C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_1000443DC(&qword_1006CA7B8);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2)
    {
      swift_errorRetain();
    }

    else
    {
      sub_100068130();
      swift_allocError();
    }

    sub_1000443DC(&qword_1006CA7B8);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1000670B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1000680EC();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_10006714C(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ASMotionHelper.ActivitiesDurationResult()) init];
  v3 = sub_1000591F0(a1);
  v4 = v2;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v6;
    sub_100067238(v9, &v8, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_100067238(uint64_t a1, void **a2, char *a3)
{
  v113 = type metadata accessor for Date();
  v5 = *(v113 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v113);
  v107 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v108 = &v107 - v10;
  v11 = __chkstk_darwin(v9);
  v109 = &v107 - v12;
  v13 = __chkstk_darwin(v11);
  v110 = &v107 - v14;
  v15 = __chkstk_darwin(v13);
  v111 = &v107 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v107 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v107 - v21;
  __chkstk_darwin(v20);
  v24 = &v107 - v23;
  v25 = *a2;
  v26 = [v25 unknown];
  v27 = &unk_1005CB000;
  v112 = v5;
  if (!v26)
  {
    goto LABEL_8;
  }

  result = [v25 endDate];
  if (!result)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v29 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = [v25 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v32 = v31;
  v33 = v31;
  v34 = *(v5 + 8);
  v35 = v113;
  v34(v22, v113);
  result = (v34)(v24, v35);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_57;
  }

  v27 = &unk_1005CB000;
  if (v32 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v36 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_unknownDuration;
  result = swift_beginAccess();
  v37 = *&a3[v36];
  v38 = __OFADD__(v37, v32);
  v39 = v37 + v32;
  if (v38)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *&a3[v36] = v39;
  v5 = v112;
LABEL_8:
  if (![v25 stationary])
  {
    goto LABEL_15;
  }

  result = [v25 endDate];
  if (!result)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v40 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = [v25 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v43 = v42;
  v44 = v42;
  v45 = *(v5 + 8);
  v46 = v113;
  v45(v22, v113);
  result = (v45)(v19, v46);
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  if (v43 <= v27[454])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v43 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v47 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_stationaryDuration;
  result = swift_beginAccess();
  v48 = *&a3[v47];
  v38 = __OFADD__(v48, v43);
  v49 = v48 + v43;
  if (v38)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *&a3[v47] = v49;
  v5 = v112;
LABEL_15:
  if (![v25 walking])
  {
    goto LABEL_22;
  }

  result = [v25 endDate];
  if (!result)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v50 = result;
  v51 = v111;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = [v25 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v54 = v53;
  v55 = v53;
  v56 = *(v5 + 8);
  v57 = v113;
  v56(v22, v113);
  result = (v56)(v51, v57);
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v54 <= v27[454])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v54 >= 9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v58 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_walkingDuration;
  result = swift_beginAccess();
  v59 = *&a3[v58];
  v38 = __OFADD__(v59, v54);
  v60 = v59 + v54;
  if (v38)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *&a3[v58] = v60;
  v5 = v112;
LABEL_22:
  if (![v25 running])
  {
    goto LABEL_29;
  }

  v111 = a3;
  v61 = v5;
  result = [v25 endDate];
  if (!result)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v62 = result;
  v63 = v110;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = [v25 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v66 = v65;
  v67 = v65;
  v68 = *(v61 + 8);
  v69 = v113;
  v68(v22, v113);
  result = (v68)(v63, v69);
  if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_66;
  }

  if (v66 <= v27[454])
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v66 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v70 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_runningDuration;
  v71 = v111;
  result = swift_beginAccess();
  v72 = *&v71[v70];
  v38 = __OFADD__(v72, v66);
  v73 = v72 + v66;
  if (v38)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  *&v71[v70] = v73;
  v5 = v61;
  a3 = v71;
LABEL_29:
  if (![v25 automotive])
  {
    goto LABEL_36;
  }

  result = [v25 endDate];
  if (!result)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v74 = result;
  v75 = v109;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v76 = [v25 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v78 = v77;
  v79 = v77;
  v80 = *(v5 + 8);
  v81 = v113;
  v80(v22, v113);
  result = (v80)(v75, v81);
  if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_70;
  }

  if (v78 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v78 >= 9.22337204e18)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v82 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_automotiveDuration;
  result = swift_beginAccess();
  v83 = *&a3[v82];
  v38 = __OFADD__(v83, v78);
  v84 = v83 + v78;
  if (v38)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  *&a3[v82] = v84;
LABEL_36:
  if ([v25 cycling])
  {
    result = [v25 endDate];
    if (!result)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v85 = result;
    v86 = v108;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = [v25 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v89 = v88;
    v90 = v88;
    v91 = *(v5 + 8);
    v92 = v113;
    v91(v22, v113);
    result = (v91)(v86, v92);
    if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v89 > -9.22337204e18)
      {
        if (v89 < 9.22337204e18)
        {
          v93 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_cyclingDuration;
          result = swift_beginAccess();
          v94 = *&a3[v93];
          v38 = __OFADD__(v94, v89);
          v95 = v94 + v89;
          if (!v38)
          {
            *&a3[v93] = v95;
            v5 = v112;
            goto LABEL_43;
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    goto LABEL_74;
  }

LABEL_43:
  result = [v25 unknown];
  if ((result & 1) == 0)
  {
    result = [v25 stationary];
    if ((result & 1) == 0)
    {
      result = [v25 walking];
      if ((result & 1) == 0)
      {
        result = [v25 running];
        if ((result & 1) == 0)
        {
          result = [v25 automotive];
          if ((result & 1) == 0)
          {
            result = [v25 cycling];
            if ((result & 1) == 0)
            {
              result = [v25 endDate];
              if (!result)
              {
LABEL_90:
                __break(1u);
                return result;
              }

              v96 = result;
              v97 = v107;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v98 = [v25 startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              Date.timeIntervalSince(_:)();
              v100 = v99;
              v101 = v99;
              v102 = *(v5 + 8);
              v103 = v113;
              v102(v22, v113);
              result = (v102)(v97, v103);
              if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v100 > -9.22337204e18)
                {
                  if (v100 < 9.22337204e18)
                  {
                    v104 = OBJC_IVAR____TtCC3asd14ASMotionHelper24ActivitiesDurationResult_indeterminateDuration;
                    result = swift_beginAccess();
                    v105 = *&a3[v104];
                    v38 = __OFADD__(v105, v100);
                    v106 = v105 + v100;
                    if (!v38)
                    {
                      *&a3[v104] = v106;
                      return result;
                    }

                    goto LABEL_83;
                  }

LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

LABEL_80:
              __break(1u);
              goto LABEL_81;
            }
          }
        }
      }
    }
  }

  return result;
}

id sub_100067D50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100067DD4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100067E14()
{
  sub_100068324();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100067ED0;

  return sub_100066914(v2, v3, v5, v4);
}

uint64_t sub_100067ED0()
{
  sub_1000657D4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1000655F4();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void sub_100067FB8(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_100066E24(a1, v1[2]);
}

uint64_t sub_100067FC4()
{
  v1 = sub_1000443DC(&qword_1006CA7B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100068050(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1000443DC(&qword_1006CA7B8) - 8) + 80);

  return sub_10006701C(a1, a2);
}

uint64_t sub_1000680D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000680EC()
{
  result = qword_1006CA7C0;
  if (!qword_1006CA7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CA7C0);
  }

  return result;
}

unint64_t sub_100068130()
{
  result = qword_1006CA7C8;
  if (!qword_1006CA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA7C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ASMotionHelper.Error(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100068220);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10006825C()
{
  result = qword_1006CA7D0;
  if (!qword_1006CA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA7D0);
  }

  return result;
}

uint64_t sub_1000682B8()
{

  return swift_beginAccess();
}

uint64_t sub_1000682D8()
{

  return swift_beginAccess();
}

uint64_t sub_1000682F8()
{

  return swift_beginAccess();
}

uint64_t ASScreenContinuityServicesHelper.ScreenMirroringStatus.Status.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100068344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ASScreenContinuityServicesHelper.ScreenMirroringStatus.Status.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *ASScreenContinuityServicesHelper.ScreenMirroringStatus.sessionStart.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC3asd32ASScreenContinuityServicesHelper21ScreenMirroringStatus_sessionStart);
  v2 = v1;
  return v1;
}

id ASScreenContinuityServicesHelper.ScreenMirroringStatus.init(status:sessionStart:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCC3asd32ASScreenContinuityServicesHelper21ScreenMirroringStatus_status] = a1;
  *&v2[OBJC_IVAR____TtCC3asd32ASScreenContinuityServicesHelper21ScreenMirroringStatus_sessionStart] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t ASScreenContinuityServicesHelper.loadScreenMirroringStatus()()
{
  sub_1000657D4();
  v1[3] = v0;
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  sub_1000474C0(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = sub_100065948();
  v6 = *(*(sub_1000443DC(&qword_1006CA2B0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = *(*(sub_1000443DC(&qword_1006CA7E8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for CompanionDevice();
  v1[13] = v8;
  sub_1000474C0(v8);
  v1[14] = v9;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v12 = type metadata accessor for CompanionDeviceManager.Options();
  v1[18] = v12;
  sub_1000474C0(v12);
  v1[19] = v13;
  v15 = *(v14 + 64);
  v1[20] = sub_100065948();
  v16 = sub_1000443DC(&qword_1006CA7F0);
  v1[21] = v16;
  v17 = *(*(v16 - 8) + 64);
  v1[22] = sub_100065948();
  v18 = sub_1000443DC(&qword_1006CA7F8);
  v1[23] = v18;
  sub_1000474C0(v18);
  v1[24] = v19;
  v21 = *(v20 + 64);
  v1[25] = sub_100065948();

  return _swift_task_switch(sub_1000687C0, 0, 0);
}

uint64_t sub_1000687C0()
{
  sub_1000657D4();
  v1 = v0[20];
  v0[26] = *(v0[3] + OBJC_IVAR____TtC3asd32ASScreenContinuityServicesHelper_manager);
  static CompanionDeviceManager.Options.sessionInfo.getter();
  type metadata accessor for CompanionDeviceManager();
  sub_100069168();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006885C, v3, v2);
}

uint64_t sub_10006885C()
{
  v1 = v0[26];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  dispatch thunk of CompanionDeviceManager.devices(with:)();
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1000688F4, 0, 0);
}

uint64_t sub_1000688F4()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_100068A08;
  v8 = v0[25];
  v9 = v0[23];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v9, AssociatedConformanceWitness);
}

uint64_t sub_100068A08()
{
  sub_1000657D4();
  v2 = *(*v1 + 216);
  v3 = *v1;
  sub_1000655F4();
  *v4 = v3;
  *(v5 + 224) = v0;

  if (v0)
  {
    v6 = sub_100069040;
  }

  else
  {
    v6 = sub_100068B10;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_100068B10()
{
  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v21 = v0[2];

LABEL_12:
    isa = 0;
    v20 = 1;
    goto LABEL_23;
  }

  v3 = 0;
  v4 = v0[14];
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v64 = v0[2];
  v6 = (v4 + 8);
  v62 = v4;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v7 = v0[12];
    (*(v4 + 16))(v0[15], v5 + *(v4 + 72) * v3, v0[13]);
    CompanionDevice.latestSessionInfo.getter();
    v8 = type metadata accessor for CompanionDevice.SessionInfo();
    v9 = sub_100046EA4(v7, 1, v8);
    sub_100053BE8(v7, &qword_1006CA7E8);
    if (v9 != 1)
    {
      break;
    }

LABEL_9:
    ++v3;
    (*v6)(v0[15], v0[13]);
    if (v2 == v3)
    {

      isa = 0;
      v20 = 2;
      goto LABEL_23;
    }
  }

  v10 = v2;
  v11 = v5;
  v12 = v0[15];
  v13 = v0[11];
  CompanionDevice.latestSessionInfo.getter();
  v14 = sub_100046EA4(v13, 1, v8);
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[4];
  if (v14 == 1)
  {
    v66 = v8;

    sub_100053BE8(v15, &qword_1006CA7E8);
    sub_1000485F8(v16, 1, 1, v17);
    goto LABEL_15;
  }

  v18 = v0[8];
  CompanionDevice.SessionInfo.end.getter();
  sub_100053F48(v8);
  (*(v19 + 8))(v15, v8);
  if (sub_100046EA4(v16, 1, v17) != 1)
  {
    sub_100053BE8(v0[8], &qword_1006CA2B0);
    v5 = v11;
    v2 = v10;
    v4 = v62;
    v1 = v64;
    goto LABEL_9;
  }

  v66 = v8;

LABEL_15:
  v23 = v0[16];
  v22 = v0[17];
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[13];
  v27 = v0[10];
  sub_100053BE8(v0[8], &qword_1006CA2B0);
  v28 = *(v25 + 32);
  v28(v23, v24, v26);
  v28(v22, v23, v26);
  CompanionDevice.latestSessionInfo.getter();
  v29 = sub_100046EA4(v27, 1, v66);
  v30 = v0[10];
  v31 = v0[7];
  v32 = v0[4];
  if (v29 == 1)
  {
    sub_100053BE8(v0[10], &qword_1006CA7E8);
    sub_1000485F8(v31, 1, 1, v32);
    goto LABEL_18;
  }

  v33 = v0[7];
  CompanionDevice.SessionInfo.end.getter();
  sub_100053F48(v66);
  (*(v34 + 8))(v30, v66);
  v35 = 1;
  if (sub_100046EA4(v31, 1, v32) == 1)
  {
LABEL_18:
    v35 = 3;
  }

  v36 = v0[17];
  v37 = v0[9];
  sub_100053BE8(v0[7], &qword_1006CA2B0);
  CompanionDevice.latestSessionInfo.getter();
  v38 = sub_100046EA4(v37, 1, v66);
  v39 = v0[17];
  v40 = v0[13];
  v41 = v0[9];
  if (v38 == 1)
  {
    (*v6)(v0[17], v0[13]);
    sub_100053BE8(v41, &qword_1006CA7E8);
    isa = 0;
  }

  else
  {
    v42 = v0[5];
    v43 = v0[6];
    v44 = v0[4];
    CompanionDevice.SessionInfo.start.getter();
    (*v6)(v39, v40);
    sub_100053F48(v66);
    (*(v45 + 8))(v41, v66);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v42 + 8))(v43, v44);
  }

  v20 = v35;
LABEL_23:
  v46 = v0[24];
  v47 = v0[25];
  v48 = v0[22];
  v49 = v0[23];
  v50 = v0[20];
  v52 = v0[16];
  v51 = v0[17];
  v53 = v0[15];
  v57 = v0[12];
  v58 = v0[11];
  v59 = v0[10];
  v60 = v0[9];
  v63 = v0[8];
  v65 = v0[7];
  v67 = v0[6];
  v54 = objc_allocWithZone(type metadata accessor for ASScreenContinuityServicesHelper.ScreenMirroringStatus());
  v55 = ASScreenContinuityServicesHelper.ScreenMirroringStatus.init(status:sessionStart:)(v20, isa);
  (*(v46 + 8))(v47, v49);

  v56 = v0[1];

  v56(v55);
}

uint64_t sub_100069040()
{
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v12 = v0[8];
  v13 = v0[7];
  v14 = v0[6];
  (*(v0[24] + 8))(v0[25], v0[23]);

  v9 = v0[1];
  v10 = v0[28];

  return v9();
}

unint64_t sub_100069168()
{
  result = qword_1006CA808;
  if (!qword_1006CA808)
  {
    type metadata accessor for CompanionDeviceManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA808);
  }

  return result;
}

uint64_t sub_100069260(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100069308;

  return ASScreenContinuityServicesHelper.loadScreenMirroringStatus()();
}

uint64_t sub_100069308(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;
  sub_1000655F4();
  *v9 = v8;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

id ASScreenContinuityServicesHelper.init()()
{
  v1 = OBJC_IVAR____TtC3asd32ASScreenContinuityServicesHelper_manager;
  type metadata accessor for CompanionDeviceManager();
  *&v0[v1] = CompanionDeviceManager.__allocating_init()();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASScreenContinuityServicesHelper();
  return objc_msgSendSuper2(&v3, "init");
}

id ASScreenContinuityServicesHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASScreenContinuityServicesHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100069584()
{
  result = qword_1006CA810;
  if (!qword_1006CA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA810);
  }

  return result;
}

uint64_t sub_1000695F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069638()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067ED0;

  return sub_100069260(v2, v3);
}

id S1ji7lMPfNbOh31Q.init(supportedKeys:queueForExecutingCompletions:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_lock;
  *&v2[v5] = [objc_allocWithZone(NSLock) init];
  *&v2[OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions] = &_swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_expectedKeys] = a1;
  *&v2[OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_queueForExecutingCompletions] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for S1ji7lMPfNbOh31Q();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1000698BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = static Hasher._hash(seed:_:)();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

void sub_100069948()
{
  sub_1000541C0();
  v2 = v1;
  v3 = type metadata accessor for ProfileContext();
  v4 = sub_10004EAE0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10006BE10();
  if (*(v2 + 16))
  {
    v9 = *(v2 + 40);
    sub_10006BE48();
    sub_10006BA6C(v10, v11);
    v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v13 = v2 + 56;
    v18 = v2;
    v14 = ~(-1 << *(v2 + 32));
    do
    {
      v15 = v12 & v14;
      if (((1 << (v12 & v14)) & *(v13 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v6 + 16))(v0, *(v18 + 48) + *(v6 + 72) * v15, v3);
      sub_10006BE48();
      sub_10006BA6C(&qword_1006CA900, v16);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v6 + 8))(v0, v3);
      v12 = v15 + 1;
    }

    while ((v17 & 1) == 0);
  }

  sub_100054088();
}

Swift::Void __swiftcall S1ji7lMPfNbOh31Q.set(_:at:)(NSObject _, Swift::Int at)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v48 = sub_10004EAE0(v7);
  *&v49 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v48);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_10004EAE0(v13);
  v43 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10006BE10();
  v18 = *(v4 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_lock);
  [v18 lock];
  v19 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated;
  sub_10006BED4();
  v20 = _.isa;
  v21 = *(v4 + v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *(v4 + v19);
  v47 = v20;
  sub_10006ABA0(v20, at, isUniquelyReferenced_nonNull_native);
  *(v4 + v19) = v53;
  swift_endAccess();
  v23 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions;
  swift_beginAccess();
  v24 = sub_1000553F4(at, *(v4 + v23));
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  sub_10006BED4();
  v26 = *(v4 + v23);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v4 + v23);
  sub_10006AA84(_swiftEmptyArrayStorage, at, v27);
  *(v4 + v23) = v52;
  swift_endAccess();
  [v18 unlock];
  v42 = v25;
  v28 = v25[2];
  if (v28)
  {
    v46 = *(v4 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_queueForExecutingCompletions);
    v29 = (v42 + 4);
    v44 = (v49 + 8);
    v45 = v51;
    ++v43;
    do
    {
      sub_10006BF14();
      v30 = swift_allocObject();
      v31 = *v29++;
      v49 = v31;
      *(v30 + 16) = v31;
      v32 = swift_allocObject();
      v32[2] = sub_10006ACF0;
      v32[3] = v30;
      v33 = v47;
      v32[4] = v47;
      v51[2] = sub_10006AD68;
      v51[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v51[0] = sub_100069F68;
      v51[1] = &unk_100692DA8;
      v34 = _Block_copy(aBlock);
      v35 = v33;

      static DispatchQoS.unspecified.getter();
      v52 = _swiftEmptyArrayStorage;
      sub_10006BA6C(&qword_1006CA890, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000443DC(&qword_1006CA898);
      sub_10006ADB0();
      v36 = v13;
      v37 = v12;
      v38 = v48;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v34);

      v39 = v37;
      v40 = v38;
      v12 = v37;
      v13 = v36;
      (*v44)(v39, v40);
      (*v43)(v3, v36);

      --v28;
    }

    while (v28);
  }
}

uint64_t sub_100069F68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10006A01C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_lock);
  _Block_copy(a3);
  [v7 lock];
  v8 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated;
  swift_beginAccess();
  v9 = sub_100055444(a1, *(a2 + v8));
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = sub_1000696E4();
      v13 = sub_10006A65C(v27, a1);
      if (*v12)
      {
        v14 = v12;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_10006B980;
        *(v15 + 24) = v6;

        sub_10006A8A4(sub_100062A84);
        v16 = *(*v14 + 16);
        sub_10006A930(v16, sub_100062A84);
        v17 = *v14;
        *(v17 + 16) = v16 + 1;
        v18 = v17 + 16 * v16;
        *(v18 + 32) = sub_10006BDF8;
        *(v18 + 40) = v15;
      }

      (v13)(v27, 0);
      (v11)(v28, 0);
      [v7 unlock];
    }

    else
    {
      [v7 unlock];
      (a3)[2](a3, v10);
    }
  }

  else
  {
    v19 = [objc_allocWithZone(NSNull) init];
    swift_beginAccess();
    v20 = *(a2 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *(a2 + v8);
    sub_10006ABA0(v19, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + v8) = v27[0];
    swift_endAccess();
    sub_1000443DC(&qword_1006CA6D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1005CB870;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10006B980;
    *(v23 + 24) = v6;
    *(v22 + 32) = sub_10006BDF8;
    *(v22 + 40) = v23;
    v24 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions;
    swift_beginAccess();

    v25 = *(a2 + v24);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *(a2 + v24);
    sub_10006AA84(v22, a1, v26);
    *(a2 + v24) = v27[0];
    swift_endAccess();
    [v7 unlock];
  }

  _Block_release(a3);
}

void S1ji7lMPfNbOh31Q.get(at:completion:)(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_lock);
  [v7 lock];
  v8 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_evaluated;
  swift_beginAccess();
  v9 = sub_100055444(a1, *(v3 + v8));
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = sub_1000696E4();
      v13 = sub_10006A65C(v32, a1);
      if (*v12)
      {
        v14 = v12;
        sub_10006BF14();
        v15 = swift_allocObject();
        *(v15 + 16) = a2;
        *(v15 + 24) = a3;

        sub_10006A8A4(sub_100062A84);
        v16 = *(*v14 + 16);
        sub_10006A930(v16, sub_100062A84);
        v17 = *v14;
        *(v17 + 16) = v16 + 1;
        v18 = v17 + 16 * v16;
        *(v18 + 32) = sub_10006AE0C;
        *(v18 + 40) = v15;
      }

      (v13)(v32, 0);
      (v11)(v33, 0);
      [v7 unlock];
    }

    else
    {
      [v7 unlock];
      a2(v10);
    }
  }

  else
  {
    [objc_allocWithZone(NSNull) init];
    sub_10006BED4();
    v19 = *(v3 + v8);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v3 + v8);
    v21 = sub_10006BF00();
    sub_10006ABA0(v21, v22, v23);
    *(v3 + v8) = v32[0];
    swift_endAccess();
    sub_1000443DC(&qword_1006CA6D0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1005CB870;
    sub_10006BF14();
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    *(v24 + 32) = sub_10006BDF8;
    *(v24 + 40) = v25;
    v26 = OBJC_IVAR____TtC3asd16S1ji7lMPfNbOh31Q_completions;
    sub_10006BED4();

    v27 = *(v3 + v26);
    swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v3 + v26);
    v29 = sub_10006BF00();
    sub_10006AA84(v29, v30, v31);
    *(v3 + v26) = v32[0];
    swift_endAccess();
    [v7 unlock];
  }
}

void (*sub_10006A65C(void *a1, uint64_t a2))(void *a1)
{
  v4 = sub_10006BAB4(0x28uLL);
  *a1 = v4;
  v4[4] = sub_10006BAE8(v4, a2);
  return sub_10006A6C0;
}

void sub_10006A6C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id S1ji7lMPfNbOh31Q.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for S1ji7lMPfNbOh31Q();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006A8A4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10006A930(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

_OWORD *sub_10006A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10006BE70(a1, a2);
  v10 = sub_1000BFB60(v8, v9);
  sub_10006BDFC(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_1000443DC(&qword_1006CA3D0);
  if (sub_10006BE28())
  {
    v17 = *v3;
    sub_1000BFB60(a2, a3);
    sub_10006BE60();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  v20 = *v4;
  if (v16)
  {
    sub_100044850((*(v20 + 56) + 32 * v15));
    sub_10006BF48();

    return sub_1000534C8(v21, v22);
  }

  else
  {
    sub_10006B534(v15, a2, a3, a1, v20);
    sub_10006BF48();
  }
}

unint64_t sub_10006AA84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000BFC20(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_1000443DC(&qword_1006CA908);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_1000BFC20(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {

    return sub_10006B578(v14, a2, a1, v19);
  }
}

void sub_10006ABA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000BFC20(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_1000443DC(&qword_1006CA918);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_1000BFC20(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {

    sub_10006B578(v14, a2, a1, v19);
  }
}

uint64_t sub_10006ACBC()
{
  v1 = *(v0 + 24);

  sub_10006BF14();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10006ACF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_10006AD28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006AD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10006ADB0()
{
  result = qword_1006CA8A0;
  if (!qword_1006CA8A0)
  {
    sub_1000471A4(&qword_1006CA898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA8A0);
  }

  return result;
}

uint64_t sub_10006AE0C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10006AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000541C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_10006BE70(v22, v20);
  v27 = sub_1000BFC64(v24, v25, v26);
  sub_10006BDFC(v27, v28);
  if (v31)
  {
    __break(1u);
    goto LABEL_13;
  }

  v32 = v29;
  v33 = v30;
  sub_1000443DC(&unk_1006CABC0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v15 & 1, v12))
  {
    goto LABEL_5;
  }

  v34 = *v12;
  v35 = sub_1000BFC64(v21, v19, v17);
  if ((v33 & 1) != (v36 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v32 = v35;
LABEL_5:
  v37 = *v13;
  if (v33)
  {
    v38 = v37[7];
    v39 = *(type metadata accessor for Date() - 8);
    v40 = *(v39 + 40);
    v41 = v38 + *(v39 + 72) * v32;
    sub_100054088();

    return v45(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  else
  {
    sub_10006B5BC(v32, v21, v19, v17, v23, v37);
    sub_100054088();
  }
}

uint64_t sub_10006AF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10006BE70(a1, a2);
  v10 = sub_1000BFB60(v8, v9);
  sub_10006BDFC(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_1000443DC(&qword_1006CA8E8);
  if (sub_10006BE28())
  {
    v17 = *v3;
    sub_1000BFB60(a2, a3);
    sub_10006BE60();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  if (v16)
  {
    v20 = *(*v4 + 56);
    v21 = *(v20 + 8 * v15);
    *(v20 + 8 * v15) = a1;
    sub_10006BF48();
  }

  else
  {
    v24 = sub_10006BF20();
    sub_10006B674(v24, v25, v26, v27, v28);
    sub_10006BF48();
  }
}

void sub_10006B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10006BE70(a1, a2);
  v10 = sub_1000BFB60(v8, v9);
  sub_10006BDFC(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  sub_1000443DC(&qword_1006CA8D0);
  if (sub_10006BE28())
  {
    v17 = *v3;
    sub_1000BFB60(a2, a3);
    sub_10006BE60();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  if (v16)
  {
    v20 = *(*v4 + 56);
    v21 = *(v20 + 8 * v15);
    *(v20 + 8 * v15) = a1;
    sub_10006BF48();
  }

  else
  {
    v24 = sub_10006BF20();
    sub_10006B6A4(v24, v25, v26, v27, v28);
    sub_10006BF48();
  }
}

void sub_10006B17C()
{
  sub_1000541C0();
  v3 = sub_10006BEB0();
  v4 = sub_10004EAE0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10006BE10();
  v7 = *v0;
  v8 = sub_1000BFCF8(v1);
  sub_10006BDFC(v8, v9);
  if (v11)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v10;
  sub_1000443DC(&qword_1006CA8D8);
  if (sub_10006BE28())
  {
    v13 = *v2;
    sub_1000BFCF8(v1);
    if ((v12 & 1) != (v14 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v12)
  {
    v15 = *(*v2 + 56);
    v16 = *(*(type metadata accessor for ServerJSONFetchRetryState() - 8) + 72);
    sub_100054088();

    sub_10006B7C8(v17, v18);
  }

  else
  {
    v20 = sub_10006BEEC();
    v21(v20);
    v22 = sub_10006BF34();
    sub_10006B6EC(v22, v23, v24, v25);
    sub_100054088();
  }
}

void sub_10006B2D4()
{
  sub_1000541C0();
  v4 = sub_10006BEB0();
  v5 = sub_10004EAE0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10006BE10();
  v8 = *v1;
  v9 = sub_1000BFCF8(v2);
  sub_10006BDFC(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  sub_1000443DC(&qword_1006CA8E0);
  if (!sub_10006BE28())
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_1000BFCF8(v2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  if (v15)
  {
    v19 = *(*v3 + 56);
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = v0;
    sub_100054088();
  }

  else
  {
    v22 = sub_10006BEEC();
    v23(v22);
    v24 = sub_10006BF34();
    sub_10006B890(v24, v25, v26, v27);
    sub_100054088();
  }
}

_OWORD *sub_10006B410(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000BFB1C(a2);
  sub_10006BDFC(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  sub_1000443DC(&qword_1006CA8F0);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    v16 = *v4;
    sub_1000BFB1C(a2);
    sub_10006BE60();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    sub_100044850(v20);

    return sub_1000534C8(a1, v20);
  }

  else
  {
    sub_10006B994(a2, v22);
    return sub_10006B9F0(v14, v22, a1, v19);
  }
}

_OWORD *sub_10006B534(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10006BE80(a1, a2, a3, a4, a5);
  result = sub_1000534C8(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_10006B578(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10006B5BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a6[6] + 24 * a1);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a6[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a5, v11);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

unint64_t sub_10006B674(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_10006BE80(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

unint64_t sub_10006B6A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10006B6EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ServerJSONFetchRetryState();
  result = sub_10006B82C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10006B7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerJSONFetchRetryState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerJSONFetchRetryState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B890(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10006B948()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_10006B9F0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1000534C8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10006BA6C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10006BAB4(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void (*sub_10006BAE8(void *a1, uint64_t a2))(uint64_t a1)
{
  v5 = sub_10006BAB4(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10006BDB4(v5);
  v5[9] = sub_10006BBD8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10006BB78;
}

void sub_10006BB78(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10006BBD8(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = sub_10006BAB4(0x28uLL);
  *a1 = v8;
  v8[1] = a2;
  v8[2] = v3;
  v9 = *v3;
  v10 = sub_1000BFC20(a2);
  *(v8 + 32) = v11 & 1;
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  sub_1000443DC(&qword_1006CA908);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v14))
  {
    v17 = *v4;
    v18 = sub_1000BFC20(a2);
    if ((v16 & 1) == (v19 & 1))
    {
      v15 = v18;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[3] = v15;
  if (v16)
  {
    v20 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v20 = 0;
  }

  *v8 = v20;
  return sub_10006BCF8;
}

void sub_10006BCF8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_10006B578(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];
    sub_1000443DC(&qword_1006CA910);
    _NativeDictionary._delete(at:)();
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_10006BDB4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10006BDDC;
}

BOOL sub_10006BE28()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

unint64_t sub_10006BE80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t sub_10006BEB0()
{

  return type metadata accessor for UUID();
}

uint64_t sub_10006BED4()
{

  return swift_beginAccess();
}

uint64_t sub_10006BF5C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006BFA4(uint64_t a1)
{
  result = sub_10006E664(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10006E6A4(result, v3, 0, a1);
  }
}

uint64_t sub_10006C00C()
{
  sub_1000657D4();
  v1[4] = v0;
  v2 = type metadata accessor for Locale();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64);
  v1[7] = sub_100065948();
  v5 = *(*(sub_1000443DC(&unk_1006CA940) - 8) + 64);
  v1[8] = sub_100065948();
  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10006C0E0()
{
  sub_10006ECA0();
  v1 = *(v0[4] + 8);
  if (v1 && *(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    static Locale.current.getter();
    Locale.region.getter();
    v7 = *(v5 + 8);
    v6 = v5 + 8;
    v8 = sub_100047510();
    v9(v8);
    v10 = type metadata accessor for Locale.Region();
    sub_10006ECE0(v10);
    if (!v11)
    {
      Locale.Region.identifier.getter();
      sub_10006EC28();
      v17 = *(v16 + 8);
      v18 = sub_100047510();
      v19(v18);
      v0[2] = v3;
      v0[3] = v6;
      v20 = swift_task_alloc();
      *(v20 + 16) = v0 + 2;
      v21 = sub_100098534(sub_1000591F4, v20, v1);

      v22 = !v21;
      goto LABEL_7;
    }

    sub_10004D2E8(v2, &unk_1006CA940);
  }

  v22 = 1;
LABEL_7:
  v13 = v0[7];
  v12 = v0[8];

  sub_10006EBEC();

  return v14(v22 & 1);
}

uint64_t sub_10006C240()
{
  *(v1 + 152) = v0;
  v2 = sub_100065864();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10006C268()
{
  sub_10006ECCC();
  sub_100068324();
  if (*(v0[19] + 17))
  {
    v1 = [objc_allocWithZone(ACAccountStore) init];
    v0[20] = v1;
    sub_1000443DC(&qword_1006CA620);
    sub_10006EBD0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1005CB870;
    *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v2 + 40) = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[21] = isa;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10006C42C;
    v5 = swift_continuation_init();
    v0[17] = sub_1000443DC(&qword_1006CA930);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10006C6EC;
    v0[13] = &unk_100693168;
    v0[14] = v5;
    [v1 accountsWithAccountTypeIdentifiers:isa completion:v0 + 10];
    sub_10006ECB8();

    return _swift_continuation_await(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    sub_10006EBEC();
    sub_10006ECB8();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_10006C42C()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 176) = v4;
  if (v4)
  {
    v5 = sub_10006C668;
  }

  else
  {
    v5 = sub_10006C534;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10006C534()
{
  sub_10006ECA0();
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = sub_1000591F0(v1);
    v3 = 0;
    while (1)
    {
      if (v2 == v3)
      {
LABEL_12:

        goto LABEL_13;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v6 = [v4 isActive];

      ++v3;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {

LABEL_13:
    sub_10006EBEC();

    v7();
  }
}

uint64_t sub_10006C668()
{
  sub_100068324();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  sub_10006EBEC();

  return v4(0);
}

uint64_t sub_10006C6EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1000C4464(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_1000591B0(0, &qword_1006CA938, ACAccount_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    return sub_1000C1AF4(v5, v8);
  }
}

id *sub_10006C7A0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = &_ss11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF_ptr;
  v4 = &DB_R105387691__properties;
  v5 = &DB_R105387691__properties;
  if (v2 && *(v2 + 16))
  {
    v6 = objc_allocWithZone(PKPassLibrary);

    v7 = [v6 init];
    v8 = [v7 passes];

    sub_1000591B0(0, &qword_1006CA928, PKPass_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = sub_1000591F0(v9);
    if (v10)
    {
      v11 = v10;
      result = sub_10006EC40(v10);
      if (v11 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v13 = 0;
      v14 = v47;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v9 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v15 passTypeIdentifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v47 = v14;
        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          sub_10006EC7C(v21);
        }

        ++v13;
        v14[2] = (v22 + 1);
        v23 = &v14[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
      }

      while (v11 != v13);

      v1 = v46;
      v5 = &DB_R105387691__properties;
      v4 = &DB_R105387691__properties;
      v3 = &_ss11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF_ptr;
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }

    sub_10009D890(v2);
    v24 = sub_100047510();
    v26 = sub_10006CB28(v24, v25);

    if ((v26 & 1) == 0)
    {
      v28 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!v1 || !*(v1 + 16))
  {
    v28 = 1;
LABEL_34:

    return (v28 & 1);
  }

  if (v14)
  {

    v27 = v14;
LABEL_33:
    v45 = sub_10009D890(v1);
    v28 = sub_10009CE8C(v27, v45);

    goto LABEL_34;
  }

  v29 = objc_allocWithZone(v3[305]);

  v30 = [v29 *&v4[504]];
  v31 = [v30 *&v5[104]];

  sub_1000591B0(0, &qword_1006CA928, PKPass_ptr);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = sub_1000591F0(v32);
  if (!v33)
  {

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v34 = v33;
  result = sub_10006EC40(v33);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v27 = v47;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = [v36 passTypeIdentifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v43 = v47[2];
      v42 = v47[3];
      if (v43 >= v42 >> 1)
      {
        sub_10006EC7C(v42);
      }

      ++v35;
      v47[2] = (v43 + 1);
      v44 = &v47[2 * v43];
      v44[4] = v39;
      v44[5] = v41;
    }

    while (v34 != v35);

    v1 = v46;
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_10006CB28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    result = sub_10006BFA4(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      __chkstk_darwin(result);
      v7[2] = v8;
      v4 = sub_100098534(sub_100058E30, v7, a1);

      return v4;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      return 1;
    }

    return sub_10006E298(a1, a2);
  }

  return result;
}

uint64_t sub_10006CC0C()
{
  sub_1000657D4();
  v0[33] = v1;
  v0[34] = v2;
  v0[32] = v3;
  v4 = sub_1000443DC(&qword_1006CA920);
  v0[35] = v4;
  v5 = *(v4 - 8);
  v0[36] = v5;
  v6 = *(v5 + 64);
  v0[37] = sub_100065948();
  v7 = *(*(sub_1000443DC(&qword_1006C9E20) - 8) + 64);
  v0[38] = sub_100065948();
  v8 = sub_100065864();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10006CCE8()
{
  sub_10006ECA0();
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[33];
  v6 = v0[34];
  type metadata accessor for TaskPriority();
  sub_10006EB6C();
  sub_10006EBF8();
  v7 = swift_allocObject();
  sub_10006EB48(v7);
  sub_10006EBD0();
  v8 = swift_allocObject();
  v9 = sub_10006EC1C(v8);
  *(v9 + 32) = &unk_1005CCA10;
  *(v9 + 40) = v7;
  sub_10006EBD0();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1005CCA20;
  v10[5] = v1;
  sub_10006DA34(v6, (v0 + 2));
  v11 = sub_10006EC10();
  sub_10006D860(v11, v12, v10);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v13 = swift_allocObject();
  sub_10006EB48(v13);
  sub_10006EBD0();
  v14 = swift_allocObject();
  v15 = sub_10006ECAC(v14);
  *(v15 + 32) = &unk_1005CCA40;
  *(v15 + 40) = v13;
  sub_10006EBD0();
  v16 = swift_allocObject();
  v17 = sub_10006EC1C(v16);
  *(v17 + 32) = &unk_1005CCA48;
  *(v17 + 40) = v2;
  sub_10006DA34(v6, (v0 + 7));
  v18 = sub_10006EC10();
  sub_10006D860(v18, v19, v13);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v20 = swift_allocObject();
  sub_10006EB48(v20);
  sub_10006EBD0();
  v21 = swift_allocObject();
  v22 = sub_10006ECAC(v21);
  *(v22 + 32) = &unk_1005CCA60;
  *(v22 + 40) = v20;
  sub_10006EBD0();
  v23 = swift_allocObject();
  v24 = sub_10006EC1C(v23);
  *(v24 + 32) = &unk_1005CCA68;
  *(v24 + 40) = v2;
  sub_10006DA34(v6, (v0 + 12));
  v25 = sub_10006EC10();
  sub_10006D860(v25, v26, v20);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v27 = swift_allocObject();
  sub_10006EB48(v27);
  sub_10006EBD0();
  v28 = swift_allocObject();
  v29 = sub_10006ECAC(v28);
  *(v29 + 32) = &unk_1005CCA80;
  *(v29 + 40) = v27;
  sub_10006EBD0();
  v30 = swift_allocObject();
  v31 = sub_10006EC1C(v30);
  *(v31 + 32) = &unk_1005CCA88;
  *(v31 + 40) = v2;
  sub_10006DA34(v6, (v0 + 17));
  v32 = sub_10006EC10();
  sub_10006D860(v32, v33, v27);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v34 = swift_allocObject();
  sub_10006EB48(v34);
  sub_10006EBD0();
  v35 = swift_allocObject();
  v36 = sub_10006ECAC(v35);
  *(v36 + 32) = sub_10006E0E8;
  *(v36 + 40) = v34;
  sub_10006EBD0();
  v37 = swift_allocObject();
  v38 = sub_10006EC1C(v37);
  *(v38 + 32) = &unk_1005CCAA0;
  *(v38 + 40) = v2;
  sub_10006DA34(v6, (v0 + 22));
  v39 = sub_10006EC10();
  sub_10006D860(v39, v40, v34);
  sub_10006EC64();
  sub_10006EB6C();
  sub_10006EBF8();
  v41 = swift_allocObject();
  sub_10006EB48(v41);
  sub_10006EBD0();
  v42 = swift_allocObject();
  v43 = sub_10006EC1C(v42);
  *(v43 + 32) = sub_10006E234;
  *(v43 + 40) = v41;
  sub_10006EBD0();
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = &unk_1005CCAB0;
  v44[5] = v34;
  sub_10006DA34(v6, (v0 + 27));
  v45 = sub_10006EC10();
  sub_10006D860(v45, v46, v44);
  sub_10006EC64();
  v0[39] = *v5;
  TaskGroup.makeAsyncIterator()();
  v47 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v48 = swift_task_alloc();
  v0[40] = v48;
  *v48 = v0;
  v49 = sub_10006EB8C(v48);

  return TaskGroup.Iterator.next(isolation:)(v49);
}

uint64_t sub_10006D140()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 320);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10006D224()
{
  v1 = *(v0 + 328);
  if (v1 == 2)
  {
    v2 = 1;
LABEL_8:
    v7 = *(v0 + 304);
    v8 = *(v0 + 256);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    *v8 = v2;

    sub_10006574C();

    return v9();
  }

  if ((v1 & 1) == 0)
  {
    v6 = *(v0 + 312);
    TaskGroup.cancelAll()();
    v2 = 0;
    goto LABEL_8;
  }

  v3 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v5 = sub_10006EB8C();

  return TaskGroup.Iterator.next(isolation:)(v5);
}

uint64_t sub_10006D354()
{
  sub_1000657D4();
  if (*(*(v0 + 16) + 16))
  {
    v1 = [objc_allocWithZone(ACAccountStore) init];
    v2 = [v1 aa_isUsingiCloud];
  }

  else
  {
    v2 = 1;
  }

  sub_10006EBEC();

  return v3(v2);
}

uint64_t sub_10006D3F0()
{
  sub_1000657D4();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_10006EBDC(v1);

  return sub_10006D334(v3);
}

uint64_t sub_10006D470(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10006EAE8;

  return v7();
}

uint64_t sub_10006D558()
{
  sub_10006ED20();
  sub_100068324();
  sub_10006EC04();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  sub_10006EB14(v1);
  sub_10006ED0C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006D5E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_10006D6D4;

  return v8();
}

uint64_t sub_10006D6D4()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;

  *v5 = v2;
  sub_10006574C();

  return v8();
}

uint64_t sub_10006D7D0()
{
  sub_10006ECCC();
  sub_100068324();
  sub_10006EB5C();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_10006EAEC(v1);
  sub_10006ECB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000443DC(&qword_1006C9E20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006E754(a1, v11);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100046EA4(v11, 1, v12) == 1)
  {
    sub_10004D2E8(v11, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

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

uint64_t sub_10006DA6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006DAFC;

  return sub_10006C00C();
}

uint64_t sub_10006DAFC()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;

  sub_10006EBEC();

  return v7(v2);
}

uint64_t sub_10006DBE4()
{
  sub_1000657D4();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_10006EBDC(v1);

  return sub_10006DA6C();
}

uint64_t sub_10006DC68()
{
  sub_10006ECCC();
  sub_100068324();
  sub_10006EB5C();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_10006EAEC(v1);
  sub_10006ECB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006DCF8(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Locale();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_1000443DC(&unk_1006CA940) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006DDE8, 0, 0);
}

uint64_t sub_10006DDE8()
{
  sub_10006ECA0();
  v1 = **(v0 + 32);
  if (v1 && *(v1 + 16))
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    static Locale.current.getter();
    Locale.region.getter();
    v7 = *(v5 + 8);
    v6 = v5 + 8;
    v8 = sub_100047510();
    v9(v8);
    v10 = type metadata accessor for Locale.Region();
    sub_10006ECE0(v10);
    if (!v11)
    {
      Locale.Region.identifier.getter();
      sub_10006EC28();
      v17 = *(v16 + 8);
      v18 = sub_100047510();
      v19(v18);
      *(v0 + 16) = v3;
      *(v0 + 24) = v6;
      v20 = swift_task_alloc();
      *(v20 + 16) = v0 + 16;
      v21 = sub_100098534(sub_1000591F4, v20, v1);

      goto LABEL_7;
    }

    sub_10004D2E8(v2, &unk_1006CA940);
  }

  v21 = 1;
LABEL_7:
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);

  sub_10006EBEC();

  return v14(v21);
}

uint64_t sub_10006DF44()
{
  sub_1000657D4();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_10006EBDC(v1);

  return sub_10006DCF8(v3);
}

uint64_t sub_10006DFC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006EAE8;

  return sub_10006C240();
}

uint64_t sub_10006E054()
{
  sub_1000657D4();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_10006EBDC(v1);

  return sub_10006DFC4();
}

uint64_t sub_10006E0F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = *(v3 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_10006E158()
{
  sub_10006ED20();
  sub_100068324();
  sub_10006EC04();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  sub_10006EB14(v1);
  sub_10006ED0C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006E1E8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  sub_10006EBF8();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_10006E25C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_10006EBD0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10006E298(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_10009F228(0, v5, v6);
    v7 = sub_10006E424(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_10006E5B0(v9, v5, sub_10006E720);
  }

  return v7 & 1;
}

uint64_t sub_10006E424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v25 = *(a3 + 16);
  v23 = result;
  v24 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v25)
      {
        return v7 != v25;
      }

      if (v5 >= v25)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v26 = v5 + 1;
      v8 = (v24 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();
      v13 = ~(-1 << *(a4 + 32));
      do
      {
        v14 = v12 & v13;
        v15 = (v12 & v13) >> 6;
        v16 = 1 << (v12 & v13);
        if ((v16 & *(v6 + 8 * v15)) == 0)
        {

          v5 = v26;
          goto LABEL_2;
        }

        v17 = (*(a4 + 48) + 16 * v14);
        if (*v17 == v10 && v17[1] == v9)
        {
          break;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = v14 + 1;
      }

      while ((v19 & 1) == 0);

      v20 = *(v23 + 8 * v15);
      *(v23 + 8 * v15) = v20 | v16;
      v5 = v26;
      if ((v20 & v16) != 0)
      {
        continue;
      }

      break;
    }

    v21 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      ++v22;
      if (v21 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v25;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_10006E5B0(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_10006E630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_10006E424(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_10006E664(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10006E6A4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10006E754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006C9E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006E7BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10006E8B0;

  return v6(v2 + 32);
}

uint64_t sub_10006E8B0()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;

  *v4 = *(v2 + 32);
  sub_10006574C();

  return v7();
}

uint64_t sub_10006E9B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006E9E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v6 = sub_10006EB38(v5);
  *v6 = v7;
  v6[1] = sub_1000640AC;

  return sub_10006E7BC(a1, v4);
}

uint64_t sub_10006EAEC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10006EB14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

__n128 sub_10006EB48(uint64_t a1)
{
  v2 = *(v1 + 32);
  result = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

void sub_10006EB5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t sub_10006EB6C()
{

  return sub_1000485F8(v0, 1, 1, v1);
}

uint64_t sub_10006EB8C(uint64_t a1)
{
  *(a1 + 8) = sub_10006D140;
  v2 = *(v1 + 296);
  v3 = *(v1 + 280);
  return v1 + 328;
}

void sub_10006EC04()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t sub_10006EC1C(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

id *sub_10006EC40(uint64_t a1)
{

  return sub_1000BDEA4(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_10006EC64()
{

  return sub_10004D2E8(v0, v1);
}

id *sub_10006EC7C@<X0>(unint64_t a1@<X8>)
{

  return sub_1000BDEA4((a1 > 1), v1, 1);
}

uint64_t sub_10006ECAC(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_10006ECE0(uint64_t a1)
{
  result = sub_100046EA4(v2, 1, a1);
  v4 = *(v1 + 64);
  return result;
}

uint64_t sub_10006ED34()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = type metadata accessor for JSONDecoder();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_1000443DC(&qword_1006CABD8);
      sub_100077194();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_1000448B0(v11, v12);

      return *&v15[0];
    }
  }

  else
  {
    sub_100076FB8(v15, &qword_1006CA130);
  }

  if (qword_1006C9740 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100046E6C(v6, qword_1006C9BE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    sub_100053F78();
    v9 = sub_100053E48();
    *&v15[0] = v9;
    *v1 = 136315138;
    *(v1 + 1) = sub_100052F7C();
    _os_log_impl(&_mh_execute_header, v7, v8, "Invalid Array in defaults for key: %s", v1, 0xCu);
    sub_100044850(v9);

    sub_100053E64();
  }

  if (qword_1006C9768 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006EFF4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000443DC(&qword_1006CABD8);
  sub_1000767F8();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  [a2 setObject:isa forKey:v10];

  return sub_1000448B0(v6, v8);
}

uint64_t sub_10006F27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000443DC(&qword_1006C9E20);
  v10 = sub_100077674(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10004EAF4();
  v15 = v14 - v13;
  sub_10007713C(a3, v14 - v13, &qword_1006C9E20);
  v16 = type metadata accessor for TaskPriority();
  v17 = sub_100046EA4(v15, 1, v16);

  if (v17 == 1)
  {
    sub_100076FB8(v15, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100076FB8(a3, &qword_1006C9E20);
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  v22 = swift_task_create();

  sub_100076FB8(a3, &qword_1006C9E20);

  return v22;
}

uint64_t sub_10006F530(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  v5 = v4;
  v10 = sub_1000443DC(&qword_1006CA2B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100046EA4(a1, 1, v14) == 1)
  {
    sub_100076FB8(a1, &qword_1006CA2B0);
    sub_100096250(a2, a3, a4, v13);

    return sub_100076FB8(v13, &qword_1006CA2B0);
  }

  else
  {
    (*(v15 + 32))(v18, a1, v14);
    v20 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10006AE38(v18, a2, a3, a4, isUniquelyReferenced_nonNull_native, v22, v23, v24, v25[0], *v5, v25[2], v25[3]);

    *v5 = v25[1];
  }

  return result;
}

uint64_t sub_10006F6FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000534C8(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_10006B410(v8, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v7;
    return sub_100076E50(a2);
  }

  else
  {
    sub_100076FB8(a1, &qword_1006CA130);
    sub_100096694(a2, v8);
    sub_100076E50(a2);
    return sub_100076FB8(v8, &qword_1006CA130);
  }
}

uint64_t sub_10006F7AC(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount) = 0;
  *(v1 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_10006ED34();

  *(v2 + v4) = v6;
  *(v2 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState__bindingStore) = 0;
  v7 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_logger;
  v8 = type metadata accessor for Logger();
  sub_1000774D8(v8);
  (*(v9 + 32))(v2 + v7, a1);
  return v2;
}

void sub_10006F898()
{
  v1 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount;
  v2 = *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0;
    *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount) = v4;

    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = sub_100053F78();
      *v7 = 134217984;
      *(v7 + 4) = *(v5 + v1);

      _os_log_impl(&_mh_execute_header, oslog, v6, "PrecomputationState.pause() called - count now %ld", v7, 0xCu);
      sub_100053E64();
    }

    else
    {
    }
  }
}

void sub_10006F9A8()
{
  v1 = v0;
  v2 = sub_1000443DC(&qword_1006CAC00);
  v3 = sub_10004EAE0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount;
  v12 = *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount) = v14;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (sub_100077680(v16))
    {
      v17 = sub_100053F78();
      *v17 = 134217984;
      *(v17 + 4) = *(v1 + v11);

      sub_100077658(&_mh_execute_header, v18, v16, "PrecomputationState.resume() called - count now %ld");
      sub_100077500();
    }

    else
    {
    }

    if (!*(v1 + v11))
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (sub_100077680(v20))
      {
        v21 = sub_100053F78();
        *v21 = 134217984;
        *(v21 + 4) = *(*(v1 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations) + 16);

        sub_100077658(&_mh_execute_header, v22, v20, "PrecomputationState.resume resuming %ld precomputations");
        sub_100077500();
      }

      else
      {
      }

      v23 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations;
      v24 = *(v1 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations);
      v25 = *(v24 + 16);
      if (v25)
      {
        v32 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations;
        v28 = *(v5 + 16);
        v26 = v5 + 16;
        v27 = v28;
        v29 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
        v30 = *(v26 + 56);

        do
        {
          v27(v10, v29, v2);
          CheckedContinuation.resume(returning:)();
          (*(v26 - 8))(v10, v2);
          v29 += v30;
          --v25;
        }

        while (v25);

        v23 = v32;
        v31 = *(v1 + v32);
      }

      *(v1 + v23) = _swiftEmptyArrayStorage;
    }
  }
}

uint64_t sub_10006FC34()
{
  sub_1000657EC();
  if (*(v1[2] + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_pauseCount) < 1)
  {
    sub_10006574C();

    return v9();
  }

  else
  {
    v1[3] = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_logger;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = sub_1000541D8();
      sub_100077908(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Precomputation pausing due to live computations", v0, 2u);
      sub_100053E64();
    }

    v5 = v1[2];

    sub_100076900(&qword_1006CAC10, type metadata accessor for PrecomputationManager.PrecomputationState);
    v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    v1[4] = v7;
    *v7 = v1;
    v7[1] = sub_10006FDFC;
    v8 = v1[2];

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_10006FDFC()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  v6 = sub_1000773A4();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10006FEF4()
{
  sub_1000657EC();
  v1 = *(v0 + 16) + *(v0 + 24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_100077680(v3))
  {
    v4 = sub_1000541D8();
    sub_100077908(v4);
    sub_100077394();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100053E64();
  }

  sub_10006574C();

  return v10();
}

uint64_t sub_10006FF98(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations;
  sub_10006A874();
  v5 = *(*(a2 + v4) + 16);
  sub_10006A900(v5);
  v6 = *(a2 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = sub_1000443DC(&qword_1006CAC00);
  result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a1, v7);
  *(a2 + v4) = v6;
  return result;
}

void sub_100070054()
{
  sub_1000778B0();
  v5 = sub_1000443DC(&qword_1006CA2B0);
  v6 = sub_100077674(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v11 = v10 - v9;

  static Date.now.getter();
  v12 = type metadata accessor for Date();
  sub_1000485F8(v11, 0, 1, v12);
  v13 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  sub_10006F530(v11, v4, v3, v2);
  swift_endAccess();
  v14 = *(v0 + v13);
  objc_opt_self();
  sub_100036C50();

  v15 = [v1 + v13 standardUserDefaults];
  v16 = sub_100047504();
  sub_10006EFF4(v16, v17);
}

void sub_100070180()
{
  sub_1000778B0();
  v5 = sub_1000443DC(&qword_1006CA2B0);
  v6 = sub_100077674(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  sub_100096250(v4, v3, v2, v11);
  sub_100076FB8(v11, &qword_1006CA2B0);
  swift_endAccess();
  v13 = *(v0 + v12);
  objc_opt_self();
  sub_100036C50();

  v14 = [v1 + v12 standardUserDefaults];
  v15 = sub_100047504();
  sub_10006EFF4(v15, v16);
}

void sub_100070290()
{
  type metadata accessor for Date();
  sub_1000471EC();
  v1 = Dictionary.init(dictionaryLiteral:)();
  v2 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_100047504();
  sub_10006EFF4(v5, v6);
}

uint64_t sub_100070358()
{
  v1 = v0;
  v2 = sub_1000443DC(&qword_1006CA2B0);
  v3 = sub_100077674(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10004EAF4();
  v89 = v7 - v6;
  v8 = sub_1000443DC(&qword_1006CABB0);
  v9 = sub_100077674(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100047544();
  v92 = v12;
  sub_1000474F8();
  __chkstk_darwin(v13);
  v104 = (&v88 - v14);
  v15 = type metadata accessor for Date();
  v16 = sub_10004EAE0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100047544();
  v105 = v21;
  sub_1000474F8();
  __chkstk_darwin(v22);
  v96 = &v88 - v23;
  sub_1000474F8();
  v25 = __chkstk_darwin(v24);
  v27 = &v88 - v26;
  __chkstk_darwin(v25);
  v29 = &v88 - v28;
  Date.init(timeIntervalSinceNow:)();
  v30 = *(v18 + 16);
  v101 = v29;
  v94 = v30;
  v95 = v18 + 16;
  v30(v27, v29, v15);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v106 = v15;
  if (v33)
  {
    v34 = sub_100053F78();
    v35 = sub_100053F60();
    v109 = v35;
    *v34 = 136315138;
    sub_100076900(&qword_1006CABD0, &type metadata accessor for Date);
    dispatch thunk of CustomStringConvertible.description.getter();
    v99 = *(v18 + 8);
    v100 = v18 + 8;
    v99(v27, v106);
    v36 = sub_100052F7C();
    v15 = v106;

    *(v34 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v31, v32, "PrecomputationState.cleanupWorkflowCompletions removing completions before %s", v34, 0xCu);
    sub_100044850(v35);
    sub_100077500();
  }

  else
  {

    v99 = *(v18 + 8);
    v100 = v18 + 8;
    v99(v27, v15);
  }

  v37 = v18;
  v38 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  v91 = v1;
  v90 = v38;
  v39 = *(v1 + v38);
  v40 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 64);
  v44 = (v41 + 63) >> 6;
  v102 = v37;
  v107 = (v37 + 32);
  v97 = v39;

  v46 = 0;
  v47 = v92;
  v48 = v104;
  v93 = v40;
  v98 = v44;
  while (v43)
  {
    v49 = v15;
    v50 = v46;
LABEL_13:
    v51 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v52 = v51 | (v50 << 6);
    v53 = v96;
    v54 = (*(v97 + 48) + 24 * v52);
    v55 = *v54;
    v56 = v54[1];
    v57 = v54[2];
    v58 = v102;
    v94(v96, *(v97 + 56) + *(v102 + 72) * v52, v49);
    v59 = sub_1000443DC(&qword_1006CABB8);
    v60 = *(v59 + 48);
    *v47 = v55;
    *(v47 + 1) = v56;
    *(v47 + 2) = v57;
    (*(v58 + 32))(&v47[v60], v53, v49);
    sub_1000485F8(v47, 0, 1, v59);

    v48 = v104;
    v40 = v93;
LABEL_14:
    sub_100076790(v47, v48);
    v61 = sub_1000443DC(&qword_1006CABB8);
    if (sub_100046EA4(v48, 1, v61) == 1)
    {

      v84 = *(v91 + v90);
      objc_opt_self();
      sub_100036C50();

      v85 = [v48 standardUserDefaults];
      v86 = sub_100047504();
      sub_10006EFF4(v86, v87);

      return (v99)(v101, v106);
    }

    v62 = *v48;
    v63 = v48[1];
    v64 = v48[2];
    v15 = v106;
    v65 = v48 + *(v61 + 48);
    v66 = v105;
    v103 = *v107;
    v103(v105, v65, v106);
    if (static Date.< infix(_:_:)())
    {
      v67 = v91;
      v68 = v90;
      swift_beginAccess();
      v69 = *(v67 + v68);
      v70 = sub_1000BFC64(v62, v63, v64);
      if (v71)
      {
        v72 = v70;
        v73 = *(v67 + v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *(v67 + v68);
        v75 = v108;
        *(v67 + v68) = 0x8000000000000000;
        v76 = *(v75 + 24);
        sub_1000443DC(&unk_1006CABC0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v76);
        v77 = v108;
        v78 = *(*(v108 + 48) + 24 * v72 + 8);

        v79 = v89;
        v80 = v106;
        v103(v89, (*(v77 + 56) + *(v102 + 72) * v72), v106);
        sub_1000471EC();
        _NativeDictionary._delete(at:)();
        v81 = *(v67 + v68);
        *(v67 + v68) = v77;

        v82 = 0;
      }

      else
      {
        v82 = 1;
        v80 = v106;
        v79 = v89;
      }

      v44 = v98;
      sub_1000485F8(v79, v82, 1, v80);
      sub_100076FB8(v79, &qword_1006CA2B0);
      swift_endAccess();

      result = (v99)(v105, v80);
      v15 = v80;
      v47 = v92;
      v48 = v104;
    }

    else
    {
      v99(v66, v15);

      v44 = v98;
    }
  }

  while (1)
  {
    v50 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v50 >= v44)
    {
      v83 = sub_1000443DC(&qword_1006CABB8);
      sub_1000485F8(v47, 1, 1, v83);
      v43 = 0;
      goto LABEL_14;
    }

    v43 = *(v40 + 8 * v50);
    ++v46;
    if (v43)
    {
      v49 = v15;
      v46 = v50;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100070ADC()
{
  sub_1000657EC();
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState__bindingStore;
  *(v0 + 64) = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState__bindingStore;
  v3 = *(v1 + v2);
  *(v0 + 72) = v3;
  if (v3)
  {
    sub_10006EBEC();
    v11 = v4;

    return v11(v5);
  }

  else
  {
    v7 = type metadata accessor for BindingsStore(0);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    sub_100077560(v10);

    return sub_100081A94(v0 + 16);
  }
}

uint64_t sub_100070BF0()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 56);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = sub_1000773A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100070CEC()
{
  sub_1000657EC();
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v2 + v1);
  if (v3)
  {
    v4 = *(v2 + v1);
  }

  else
  {
    *(v2 + v1) = v0[11];

    v3 = v0[11];
  }

  v5 = v0[9];
  sub_10006EBEC();
  v8 = v6;

  return v8(v3);
}

uint64_t sub_100070D8C()
{
  v1 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_logger;
  v2 = type metadata accessor for Logger();
  sub_1000774D8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_resumptionContinuations);

  v5 = *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions);

  v6 = *(v0 + OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState__bindingStore);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100070E1C()
{
  sub_100070D8C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100070E70()
{
  qword_1006DF768 = [objc_allocWithZone(type metadata accessor for PrecomputationManager(0)) init];
  v1 = qword_1006DF768;
  sub_100036C50();
  result = swift_unknownObjectRelease();
  static PrecomputationManager.shared = v0;
  return result;
}

uint64_t *PrecomputationManager.shared.unsafeMutableAddressor()
{
  if (qword_1006C97B0 != -1)
  {
    sub_1000775D8();
  }

  return &static PrecomputationManager.shared;
}

id static PrecomputationManager.shared.getter()
{
  if (qword_1006C97B0 != -1)
  {
    sub_1000775D8();
  }

  v1 = static PrecomputationManager.shared;

  return v1;
}

uint64_t sub_100070F7C()
{
  v1 = *sub_100044728((v0 + OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager), *(v0 + OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager + 24));
  sub_1000B05E4(v4);
  if (v5 == 1)
  {
    return 0;
  }

  v2 = v6;
  sub_100076F78(v6);
  sub_100076FB8(v4, &qword_1006CAC08);
  return v2;
}

id PrecomputationManager.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = sub_10004EAE0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = &v1[OBJC_IVAR____TtC3asd21PrecomputationManager_analyticsManager];
  v13 = type metadata accessor for ASAnalyticsManager();
  v14 = swift_allocObject();
  v12[3] = v13;
  v12[4] = &off_1006935C8;
  *v12 = v14;
  Logger.init(subsystem:category:)();
  v15 = OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  (*(v6 + 32))(&v1[OBJC_IVAR____TtC3asd21PrecomputationManager_logger], v11, v3);
  (*(v6 + 16))(v11, &v1[v15], v3);
  v16 = type metadata accessor for PrecomputationManager.PrecomputationState(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_10006F7AC(v11);
  *&v1[OBJC_IVAR____TtC3asd21PrecomputationManager_state] = v19;
  if (qword_1006C9818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = static ASDConfigurationManager.shared;
  v21 = &v1[OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager];
  *(v21 + 3) = type metadata accessor for ASDConfigurationManager();
  *(v21 + 4) = &off_1006943C0;
  *v21 = v20;
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v22 = v20;
  return objc_msgSendSuper2(&v24, "init");
}

uint64_t sub_100071274(uint64_t a1)
{
  v2[117] = v1;
  v2[111] = a1;
  v2[123] = swift_getObjectType();

  return _swift_task_switch(sub_1000712E8, 0, 0);
}

uint64_t sub_1000712E8()
{
  sub_1000657D4();
  v1 = v0[117];
  v2 = swift_allocObject();
  v0[124] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  swift_asyncLet_begin();
  v4 = OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager;
  v0[125] = OBJC_IVAR____TtC3asd21PrecomputationManager_configurationManager;
  v5 = *sub_100044728(&v3[v4], *&v3[v4 + 24]);
  v6 = swift_task_alloc();
  v0[126] = v6;
  *v6 = v0;
  sub_100077560(v6);

  return sub_1000B6BDC();
}

uint64_t sub_1000713E4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v3 = v2;
  v5 = *(v4 + 1008);
  v6 = *v1;
  sub_1000655F4();
  *v7 = v6;
  *(v8 + 1016) = v0;

  if (v0)
  {
    v9 = sub_10007166C;
  }

  else
  {
    v9 = sub_1000714E4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000714E4()
{
  sub_1000657EC();
  v1 = (*(v0 + 936) + *(v0 + 1000));
  v2 = *sub_100044728(v1, v1[3]);
  sub_1000B05E4((v0 + 696));
  if (*(v0 + 736) != 1)
  {
    *(v0 + 856) = *(v0 + 744);
    sub_10007713C(v0 + 856, v0 + 872, &qword_1006CAC18);
    sub_100076FB8(v0 + 696, &qword_1006CAC08);
    if (*(v0 + 856))
    {
      v3 = *(v0 + 864);
      v4 = sub_100048BAC(*(v0 + 856));
      *(v0 + 1024) = v4;

      if (v4[2])
      {
        v5 = sub_1000778C4();

        return _swift_asyncLet_get(v5);
      }
    }
  }

  v6 = *(v0 + 936) + OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (sub_100077680(v8))
  {
    v9 = sub_1000541D8();
    sub_100077908(v9);
    sub_100077394();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    sub_100053E64();
  }

  v15 = sub_1000778C4();

  return _swift_asyncLet_finish(v15, v16, v17, v0 + 816);
}

uint64_t sub_10007166C()
{
  sub_1000657EC();
  v1 = *(v0 + 936) + OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (sub_100077680(v3))
  {
    v4 = sub_1000541D8();
    sub_100077908(v4);
    sub_100077394();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100053E64();
  }

  v10 = *(v0 + 1016);

  v11 = sub_1000778C4();

  return _swift_asyncLet_finish(v11, v12, v13, v0 + 656);
}

uint64_t sub_100071740()
{
  v1 = *(*(v0 + 936) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 1032) = v1;
  return sub_1000772D0(sub_100071768, v1);
}

uint64_t sub_100071768()
{
  sub_1000657D4();
  v1 = *(v0 + 1032);
  v2 = OBJC_IVAR____TtCC3asd21PrecomputationManager19PrecomputationState_lastCompletions;
  swift_beginAccess();
  *(v0 + 1040) = *(v1 + v2);

  return _swift_task_switch(sub_1000717F4, 0, 0);
}

uint64_t sub_1000717F4()
{
  sub_1000657D4();
  v0[131] = sub_100071A18(v0[128], v0[111], v0[130]);

  v1 = sub_1000778C4();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 118);
}

uint64_t sub_10007188C()
{
  sub_1000657D4();
  v1 = *(v0 + 1048);
  v2 = *(v0 + 992);

  sub_10006EBEC();

  return v3(v1);
}

uint64_t sub_100071900()
{
  sub_1000657D4();
  v1 = *(v0 + 992);

  sub_10006EBEC();

  return v2(_swiftEmptyArrayStorage);
}

uint64_t sub_100071994()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 24) = v1;
  return sub_1000772D0(sub_1000719BC, v1);
}

uint64_t sub_1000719BC()
{
  sub_1000657D4();
  v1 = *(v0 + 24);
  sub_100070358();
  sub_10006574C();

  return v2();
}

uint64_t sub_100071A18(uint64_t a1, Swift::UInt a2, uint64_t a3)
{
  v38 = a2;
  v5 = type metadata accessor for Date();
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100047544();
  v37 = v11;
  sub_1000474F8();
  result = __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  v36 = v8 + 16;
  v35 = v8 + 32;
  v34 = v8 + 8;
  v32 = a1 + 32;
  v33 = _swiftEmptyArrayStorage;
LABEL_2:
  for (i = (v32 + 104 * v16); ; i += 104)
  {
    if (v17 == v16)
    {
      __dst[0] = v33;
      sub_1000D8AA0();
      return __dst[0];
    }

    if (v16 >= v17)
    {
      break;
    }

    result = memcpy(__dst, i, sizeof(__dst));
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_18;
    }

    if (!*(a3 + 16))
    {
      sub_10007606C(__dst, v39);
LABEL_11:
      v27 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000BDF24(0, v27[2] + 1, 1);
        v27 = v41;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        sub_1000BDF24(v29 > 1, v30 + 1, 1);
        v27 = v41;
      }

      v27[2] = (v30 + 1);
      v33 = v27;
      result = memcpy(&v27[13 * v30 + 4], __dst, 0x68uLL);
      v16 = v19;
      goto LABEL_2;
    }

    v20 = __dst[0];
    v21 = __dst[1];
    sub_10007606C(__dst, v39);
    v22 = sub_1000BFC64(v20, v21, v38);
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }

    v24 = v37;
    (*(v8 + 16))(v37, *(a3 + 56) + *(v8 + 72) * v22, v5);
    (*(v8 + 32))(v15, v24, v5);
    Date.timeIntervalSinceNow.getter();
    v26 = v25;
    (*(v8 + 8))(v15, v5);
    if (__dst[2] < -v26)
    {
      goto LABEL_11;
    }

    result = sub_1000760C8(__dst);
    ++v16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100071D14(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for ASAnalyticsEvent();
  v3[14] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100071DAC, 0, 0);
}

uint64_t sub_100071DAC()
{
  sub_100077930();
  sub_10006ECA0();
  v1 = v0[13];
  v2 = v0[11];
  v0[16] = os_transaction_create();
  v3 = *v2;
  v0[17] = *v2;
  v4 = v2[1];
  v5 = OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  v0[18] = v4;
  v0[19] = v5;
  swift_bridgeObjectRetain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100053F78();
    sub_100053F60();
    sub_10007764C();
    *v8 = 136315138;
    *(v8 + 4) = sub_100052F7C();
    sub_100077658(&_mh_execute_header, v9, v7, "Starting precomputation flow %s");
    sub_100077360();
    sub_100077500();
  }

  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[13];
  *v11 = v3;
  v11[1] = v4;
  swift_storeEnumTagMultiPayload();

  sub_1000C4148(v11);
  sub_10007700C(v11);
  v0[20] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v13 = *(v12 + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  v0[21] = v13;
  v0[5] = type metadata accessor for PrecomputationManager.PrecomputationState(0);
  v0[6] = &off_100693288;
  v0[2] = v13;

  v14 = swift_task_alloc();
  v0[22] = v14;
  *v14 = v0;
  v14[1] = sub_100071F78;
  v16 = v0[11];
  v15 = v0[12];
  sub_100077698();

  return sub_1000C45C4();
}

uint64_t sub_100071F78()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  *(v3 + 184) = v0;

  if (v0)
  {
    v9 = sub_100072290;
  }

  else
  {
    sub_100044850((v3 + 16));
    v9 = sub_100072080;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100072080()
{
  sub_1000657D4();
  v1 = *(v0 + 168);
  *(v0 + 192) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v2 = sub_1000773A4();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000720E4()
{
  sub_1000657D4();
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[12];
  sub_100070054();
  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

void sub_100072148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100077930();
  sub_10006ECA0();
  v12 = v10[18];
  v11 = v10[19];
  v13 = v10[13];

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (sub_1000777E8())
  {
    v17 = v10[17];
    v16 = v10[18];
    v18 = sub_100053F78();
    sub_100053F60();
    sub_10007764C();
    *v18 = 136446210;
    *(v18 + 4) = sub_100052F7C();
    sub_100077658(&_mh_execute_header, v19, v15, "Completed precomputation flow %{public}s");
    sub_100077360();
    sub_100077500();
  }

  v20 = v10[24];
  v21 = v10[20];
  v22 = v20 >= v21;
  v23 = v20 - v21;
  if (v22)
  {
    v24 = v10[18];
    v25 = v10[15];
    v26 = v10[16];
    v27 = v10[14];
    *v25 = v10[17];
    v25[1] = v24;
    v25[2] = v23 / 0xF4240;
    swift_storeEnumTagMultiPayload();
    sub_1000C4148(v25);
    swift_unknownObjectRelease();
    sub_10007700C(v10[15]);

    sub_10006574C();
    sub_100077698();

    v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100072290()
{
  sub_10006ECA0();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[13];
  sub_100044850(v0 + 2);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (sub_1000777E8())
  {
    v7 = v0[17];
    v6 = v0[18];
    v8 = sub_100053F78();
    sub_100053F60();
    *v8 = 136315138;
    *(v8 + 4) = sub_100052F7C();
    sub_100077658(&_mh_execute_header, v9, v5, "Error from workflow %s - not marking as complete");
    sub_100077360();
    sub_100077500();
  }

  v10 = v0[23];
  v12 = v0[17];
  v11 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  swift_getErrorValue();
  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[9];
  v19 = Error.localizedDescription.getter();
  *v14 = v12;
  v14[1] = v11;
  v14[2] = v19;
  v14[3] = v20;
  swift_storeEnumTagMultiPayload();
  sub_1000C4148(v14);
  swift_unknownObjectRelease();

  sub_10007700C(v0[15]);

  sub_10006574C();

  return v21();
}

uint64_t sub_100072400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[60] = a2;
  v3[61] = a3;
  v3[59] = a1;
  v5 = swift_task_alloc();
  v3[62] = v5;
  *v5 = v3;
  v5[1] = sub_1000724A0;

  return sub_100071274(a1);
}

uint64_t sub_1000724A0()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v4 = *(v3 + 496);
  *v2 = *v0;
  *(v1 + 504) = v5;

  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

void sub_10007258C()
{
  sub_1000657EC();
  v1 = v0[63];
  v2 = v0[60];
  v3 = v0[61];
  v4 = *(v1 + 16);
  v0[64] = v4;
  v0[65] = OBJC_IVAR____TtC3asd21PrecomputationManager_state;
  v0[66] = OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  v0[67] = 0;
  if (!v4)
  {

    v5 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = sub_1000773E0(v12);
    v8 = v0[61];
    if (v13)
    {
      v14 = sub_1000541D8();
      sub_100077640(v14);
      sub_1000773B4(&_mh_execute_header, v15, v16, "Due precomputations complete");
      sub_10007756C();
    }

    goto LABEL_9;
  }

  if (!*(v1 + 16))
  {
    __break(1u);
    return;
  }

  sub_1000773FC(v1);
  sub_100077748();
  if ((*(v3 + 16))(v3) == 1)
  {
    sub_1000775A8();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = sub_1000773E0(v6);
    v8 = v0[61];
    if (v7)
    {
      v9 = sub_1000541D8();
      sub_100077640(v9);
      sub_1000773B4(&_mh_execute_header, v10, v11, "Due precomputations stopping as requested to defer");
      sub_10007756C();
    }

LABEL_9:

    _Block_release(v8);
    sub_10006EBEC();

    v17();
    return;
  }

  sub_100077790();
  v18 = swift_task_alloc();
  v19 = sub_1000778F0(v18);
  *v19 = v20;
  sub_1000772D8(v19);

  sub_10006FC18();
}

uint64_t sub_10007273C()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 544);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100072820()
{
  sub_10006ECA0();
  if ((*(v1[61] + 16))() == 1)
  {
    sub_1000775A8();

    goto LABEL_3;
  }

  v12 = v1[10];
  v1[69] = v12;
  v13 = v1[3];
  v1[70] = v1[2];
  v1[71] = v13;
  if (v12 != 1)
  {
    v21 = v1[13];
    v1[72] = v1[14];
    v1[73] = v21;
    v23 = v1[11];
    v22 = v1[12];
    v1[74] = v22;
    v1[75] = v23;
    sub_1000776B0(v12, v22);

    v24 = swift_task_alloc();
    v1[76] = v24;
    *(v24 + 16) = v1 + 54;
    v25 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    swift_task_alloc();
    sub_10007743C();
    v1[77] = v26;
    *v26 = v27;
    v26[1] = sub_100072BC8;
    sub_10007772C();
    sub_100077698();

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  sub_100077620();
  if (!v14)
  {
    swift_task_alloc();
    sub_10007743C();
    v1[78] = v15;
    *v15 = v16;
    sub_100077534(v15);
    sub_100077800();

    return sub_100071D14(v17, v18);
  }

  v29 = sub_100077780();
  sub_10007606C(v29, (v1 + 28));
  v30 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100077864();
  if (sub_1000777E8())
  {
    sub_100077700();
    sub_100053E48();
    sub_10007764C();
    sub_10007787C(4.8149e-34);
    sub_1000760C8((v1 + 2));
    sub_1000775F8();
    sub_10007784C();
    *(v0 + 4) = v2;
    sub_100077394();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_100077360();
    sub_100053E64();
  }

  else
  {

    sub_1000760C8((v1 + 2));
  }

  sub_10007751C();
  if (v14)
  {
    sub_100077894();
    v3 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = sub_1000773E0(v36);
    v6 = v1[61];
    if (v37)
    {
      v38 = sub_1000541D8();
      sub_100077640(v38);
      sub_1000773B4(&_mh_execute_header, v39, v40, "Due precomputations complete");
      sub_10007756C();
    }

LABEL_5:

    _Block_release(v6);
    sub_10006EBEC();
    sub_100077800();

    __asm { BRAA            X2, X16 }
  }

  v41 = v1[63];
  sub_100077720();
  if (v42)
  {
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  v44 = v1[61];
  sub_100077320(v43);
  sub_100077748();
  v45 = sub_1000775C8();
  if (v46(v45) == 1)
  {
    v47 = v1[66];
    v48 = v1[63];
    sub_1000760C8((v1 + 2));

LABEL_3:
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = sub_1000773E0(v4);
    v6 = v1[61];
    if (v5)
    {
      v7 = sub_1000541D8();
      sub_100077640(v7);
      sub_1000773B4(&_mh_execute_header, v8, v9, "Due precomputations stopping as requested to defer");
      sub_10007756C();
    }

    goto LABEL_5;
  }

  v49 = *(v1[60] + v1[65]);
  v50 = swift_task_alloc();
  v51 = sub_1000778F0(v50);
  *v51 = v52;
  sub_1000772D8();
  sub_100077800();

  return sub_10006FC18();
}

uint64_t sub_100072BC8()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 616);
  v3 = *(v1 + 608);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

void sub_100072CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100077930();
  sub_10006ECA0();
  v13 = *(v11 + 600);
  v14 = *(v11 + 592);
  v15 = *(v11 + 584);
  v16 = *(v11 + 576);
  sub_10007638C(*(v11 + 552));
  if (*(v11 + 632))
  {
    sub_100077620();
    if (!v17)
    {
      swift_task_alloc();
      sub_10007743C();
      *(v11 + 624) = v18;
      *v18 = v19;
      sub_100077534(v18);
      sub_100077698();

      sub_100071D14(v20, v21);
      return;
    }

    v25 = sub_100077780();
    sub_10007606C(v25, v11 + 224);
    v24 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100077864();
    if (sub_1000777E8())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = sub_100077780();
    sub_10007606C(v23, v11 + 328);
    v24 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100077864();
    if (sub_1000777E8())
    {
LABEL_9:
      sub_100077700();
      sub_100053E48();
      sub_10007764C();
      sub_10007787C(4.8149e-34);
      sub_1000760C8(v11 + 16);
      sub_1000775F8();
      sub_10007784C();
      *(v10 + 4) = v12;
      sub_100077394();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_100077360();
      sub_100053E64();

      goto LABEL_11;
    }
  }

  sub_1000760C8(v11 + 16);
LABEL_11:
  sub_10007751C();
  if (v17)
  {
    sub_100077894();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = sub_1000773E0(v32);
    v34 = *(v11 + 488);
    if (v33)
    {
      v35 = sub_1000541D8();
      sub_100077640(v35);
      sub_1000773B4(&_mh_execute_header, v36, v37, "Due precomputations complete");
      sub_10007756C();
    }

    goto LABEL_20;
  }

  v38 = *(v11 + 504);
  sub_100077720();
  if (v39)
  {
    __break(1u);
    return;
  }

  v41 = *(v11 + 488);
  sub_100077320(v40);
  sub_100077748();
  v42 = sub_1000775C8();
  if (v43(v42) == 1)
  {
    sub_1000775A8();

    v31 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = sub_1000773E0(v44);
    v34 = *(v11 + 488);
    if (v45)
    {
      v46 = sub_1000541D8();
      sub_100077640(v46);
      sub_1000773B4(&_mh_execute_header, v47, v48, "Due precomputations stopping as requested to defer");
      sub_10007756C();
    }

LABEL_20:

    _Block_release(v34);
    sub_10006EBEC();
    sub_100077698();

    v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10);
    return;
  }

  sub_100077790();
  v57 = swift_task_alloc();
  v58 = sub_1000778F0(v57);
  *v58 = v59;
  sub_1000772D8();
  sub_100077698();

  sub_10006FC18();
}

uint64_t sub_100072FB4()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v5 = *(v4 + 624);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;

  sub_1000760C8(v2 + 16);
  v8 = sub_100065864();

  return _swift_task_switch(v8, v9, v10);
}

void sub_10007309C()
{
  sub_1000657EC();
  sub_10007751C();
  if (v1)
  {
    sub_100077894();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = sub_1000773E0(v3);
    v5 = *(v0 + 488);
    if (v4)
    {
      v6 = sub_1000541D8();
      sub_100077640(v6);
      sub_1000773B4(&_mh_execute_header, v7, v8, "Due precomputations complete");
      sub_10007756C();
    }

    goto LABEL_10;
  }

  v9 = *(v0 + 504);
  sub_100077720();
  if (v10)
  {
    __break(1u);
    return;
  }

  v12 = *(v0 + 488);
  sub_100077320(v11);
  sub_100077748();
  v13 = sub_1000775C8();
  if (v14(v13) == 1)
  {
    sub_1000775A8();

    v2 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = sub_1000773E0(v15);
    v5 = *(v0 + 488);
    if (v16)
    {
      v17 = sub_1000541D8();
      sub_100077640(v17);
      sub_1000773B4(&_mh_execute_header, v18, v19, "Due precomputations stopping as requested to defer");
      sub_10007756C();
    }

LABEL_10:

    _Block_release(v5);
    sub_10006EBEC();

    v20();
    return;
  }

  sub_100077790();
  v21 = swift_task_alloc();
  v22 = sub_1000778F0(v21);
  *v22 = v23;
  sub_1000772D8();

  sub_10006FC18();
}

uint64_t PrecomputationManager.triggerDuePrecomputations(dataProtectionClass:shouldDefer:)()
{
  sub_1000657D4();
  v3 = v2;
  v1[61] = v4;
  v1[62] = v0;
  v1[59] = v2;
  v1[60] = v5;
  v6 = swift_task_alloc();
  v1[63] = v6;
  *v6 = v1;
  sub_100077560(v6);

  return sub_100071274(v3);
}

uint64_t sub_1000732B4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v4 = *(v3 + 504);
  *v2 = *v0;
  *(v1 + 512) = v5;

  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

void sub_1000733A0()
{
  sub_100068324();
  v1 = v0[64];
  v2 = v0[62];
  v3 = *(v1 + 16);
  v0[65] = v3;
  v0[66] = OBJC_IVAR____TtC3asd21PrecomputationManager_state;
  v0[67] = OBJC_IVAR____TtC3asd21PrecomputationManager_logger;
  v0[68] = 0;
  if (!v3)
  {

    v7 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (!sub_1000773E0(v9))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v4 = v0[60];
    v5 = v0[61];
    sub_1000773FC(v1);
    v6 = sub_100077748();
    if (v4(v6) == 1)
    {
      sub_100077588();

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!sub_1000773E0(v8))
      {
        goto LABEL_8;
      }

LABEL_7:
      v10 = sub_1000541D8();
      sub_1000778D0(v10);
      sub_100077418(&_mh_execute_header);
      sub_100077500();
LABEL_8:

      sub_10006EBEC();
      sub_10006ED0C();

      __asm { BRAA            X2, X16 }
    }

    sub_100077770();
    v13 = swift_task_alloc();
    v14 = sub_1000778FC(v13);
    *v14 = v15;
    sub_1000772FC(v14);
    sub_10006ED0C();

    sub_10006FC18();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100073520()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 552);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100073604()
{
  sub_10006ECA0();
  v3 = *(v1 + 488);
  if ((*(v1 + 480))() == 1)
  {
    sub_100077588();

    goto LABEL_3;
  }

  v9 = *(v1 + 80);
  *(v1 + 560) = v9;
  v10 = *(v1 + 24);
  *(v1 + 568) = *(v1 + 16);
  *(v1 + 576) = v10;
  if (v9 != 1)
  {
    v18 = *(v1 + 104);
    *(v1 + 584) = *(v1 + 112);
    *(v1 + 592) = v18;
    v20 = *(v1 + 88);
    v19 = *(v1 + 96);
    *(v1 + 600) = v19;
    *(v1 + 608) = v20;
    sub_1000776B0(v9, v19);

    v21 = swift_task_alloc();
    *(v1 + 616) = v21;
    *(v21 + 16) = v1 + 432;
    v22 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    swift_task_alloc();
    sub_10007743C();
    *(v1 + 624) = v23;
    *v23 = v24;
    v23[1] = sub_100073978;
    sub_10007772C();
    sub_100077698();

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  sub_100077620();
  if (!v11)
  {
    swift_task_alloc();
    sub_10007743C();
    *(v1 + 632) = v12;
    *v12 = v13;
    sub_1000774A8(v12);
    sub_100077800();

    return sub_100071D14(v14, v15);
  }

  v26 = sub_100077760();
  sub_10007606C(v26, v1 + 224);
  v27 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100077864();
  if (sub_1000777E8())
  {
    sub_1000776E0();
    sub_100053E48();
    sub_10007764C();
    sub_10007787C(4.8149e-34);
    sub_1000760C8(v1 + 16);
    sub_1000775F8();
    sub_10007784C();
    *(v0 + 4) = v2;
    sub_100077394();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_100077360();
    sub_100053E64();
  }

  else
  {

    sub_1000760C8(v1 + 16);
  }

  sub_1000774E8();
  if (v11)
  {
    sub_100077830();
    v4 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!sub_1000773E0(v33))
    {
LABEL_5:

      sub_10006EBEC();
      sub_100077800();

      __asm { BRAA            X2, X16 }
    }

LABEL_4:
    v6 = sub_1000541D8();
    sub_1000778D0(v6);
    sub_100077418(&_mh_execute_header);
    sub_100077500();
    goto LABEL_5;
  }

  v34 = *(v1 + 512);
  sub_100077720();
  if (v35)
  {
    __break(1u);
    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  v37 = *(v1 + 480);
  v38 = *(v1 + 488);
  sub_100077320(v36);
  v39 = sub_100077748();
  if (v37(v39) == 1)
  {
    v40 = *(v1 + 536);
    v41 = *(v1 + 512);
    sub_1000760C8(v1 + 16);

LABEL_3:
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!sub_1000773E0(v5))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v42 = *(*(v1 + 496) + *(v1 + 528));
  v43 = swift_task_alloc();
  v44 = sub_1000778FC(v43);
  *v44 = v45;
  sub_1000772FC();
  sub_100077800();

  return sub_10006FC18();
}

uint64_t sub_100073978()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 624);
  v3 = *(v1 + 616);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

void sub_100073A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100077930();
  sub_10006ECA0();
  v13 = *(v11 + 608);
  v14 = *(v11 + 600);
  v15 = *(v11 + 592);
  v16 = *(v11 + 584);
  sub_10007638C(*(v11 + 560));
  if (*(v11 + 640))
  {
    sub_100077620();
    if (!v17)
    {
      swift_task_alloc();
      sub_10007743C();
      *(v11 + 632) = v18;
      *v18 = v19;
      sub_1000774A8(v18);
      sub_100077698();

      sub_100071D14(v20, v21);
      return;
    }

    v25 = sub_100077760();
    sub_10007606C(v25, v11 + 224);
    v24 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100077864();
    if (sub_1000777E8())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = sub_100077760();
    sub_10007606C(v23, v11 + 328);
    v24 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100077864();
    if (sub_1000777E8())
    {
LABEL_9:
      sub_1000776E0();
      sub_100053E48();
      sub_10007764C();
      sub_10007787C(4.8149e-34);
      sub_1000760C8(v11 + 16);
      sub_1000775F8();
      sub_10007784C();
      *(v10 + 4) = v12;
      sub_100077394();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_100077360();
      sub_100053E64();

      goto LABEL_11;
    }
  }

  sub_1000760C8(v11 + 16);
LABEL_11:
  sub_1000774E8();
  if (v17)
  {
    sub_100077830();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (sub_1000773E0(v32))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v33 = *(v11 + 512);
  sub_100077720();
  if (v34)
  {
    __break(1u);
    return;
  }

  v36 = *(v11 + 480);
  v37 = *(v11 + 488);
  sub_100077320(v35);
  v38 = sub_100077748();
  if (v36(v38) == 1)
  {
    sub_100077588();

    v31 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (sub_1000773E0(v39))
    {
LABEL_18:
      v40 = sub_1000541D8();
      sub_1000778D0(v40);
      sub_100077418(&_mh_execute_header);
      sub_100077500();
    }

LABEL_19:

    sub_10006EBEC();
    sub_100077698();

    v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
    return;
  }

  sub_100077770();
  v49 = swift_task_alloc();
  v50 = sub_1000778FC(v49);
  *v50 = v51;
  sub_1000772FC();
  sub_100077698();

  sub_10006FC18();
}

uint64_t sub_100073D34()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v5 = *(v4 + 632);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;

  sub_1000760C8(v2 + 16);
  v8 = sub_100065864();

  return _swift_task_switch(v8, v9, v10);
}

void sub_100073E1C()
{
  sub_100068324();
  sub_1000774E8();
  if (v1)
  {
    sub_100077830();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!sub_1000773E0(v3))
    {
      goto LABEL_9;
    }

LABEL_8:
    v11 = sub_1000541D8();
    sub_1000778D0(v11);
    sub_100077418(&_mh_execute_header);
    sub_100077500();
LABEL_9:

    sub_10006EBEC();
    sub_10006ED0C();

    __asm { BRAA            X2, X16 }
  }

  v4 = v0[64];
  sub_100077720();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[60];
    v8 = v0[61];
    sub_100077320(v6);
    v9 = sub_100077748();
    if (v7(v9) == 1)
    {
      sub_100077588();

      v2 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (!sub_1000773E0(v10))
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_100077770();
    v14 = swift_task_alloc();
    v15 = sub_1000778FC(v14);
    *v15 = v16;
    sub_1000772FC();
    sub_10006ED0C();

    sub_10006FC18();
  }
}

uint64_t sub_100074010(uint64_t a1, void *aBlock, const void *a3, void *a4)
{
  v4[2] = a4;
  v8 = _Block_copy(aBlock);
  v4[3] = v8;
  v4[4] = _Block_copy(a3);
  _Block_copy(v8);
  v9 = a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100074108;

  return sub_100072400(a1, v9, v8);
}

uint64_t sub_100074108()
{
  sub_1000657EC();
  sub_1000657F8();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;

  _Block_release(v4);

  v8 = v3[2];
  v9 = sub_100047504();
  v10(v9);
  _Block_release(v3);
  sub_10006574C();

  return v11();
}

uint64_t sub_10007426C()
{
  v1 = *(v0 + 432);
  v2 = sub_100070F7C();
  if (!v2)
  {
LABEL_19:
    sub_10006574C();
    sub_100077914();

    __asm { BRAA            X1, X16 }
  }

  v3 = sub_100048BAC(v2);

  v7 = 0;
  v8 = v3[2];
LABEL_3:
  *(v0 + 440) = _swiftEmptyArrayStorage;
  v9 = 104 * v7 + 32;
  while (v8 != v7)
  {
    if (v7 >= v3[2])
    {
      __break(1u);
      return _swift_task_switch(v4, v5, v6);
    }

    v4 = memcpy((v0 + 120), v3 + v9, 0x68uLL);
    if ((*(v0 + 176) & 1) == 0)
    {
      sub_10007606C(v0 + 120, v0 + 224);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BDF24(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1000BDF24(v10 > 1, v11 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = (v11 + 1);
      v4 = memcpy(&_swiftEmptyArrayStorage[13 * v11 + 4], (v0 + 120), 0x68uLL);
      goto LABEL_3;
    }

    v9 += 104;
    ++v7;
  }

  v12 = _swiftEmptyArrayStorage[2];
  *(v0 + 448) = v12;
  if (!v12)
  {
    v16 = *(v0 + 440);

    goto LABEL_19;
  }

  v13 = type metadata accessor for ODIDeviceInfo();
  v14 = OBJC_IVAR____TtC3asd21PrecomputationManager_state;
  *(v0 + 456) = v13;
  *(v0 + 464) = v14;
  *(v0 + 472) = 0;
  sub_1000773FC(*(v0 + 440));
  sub_10007606C(v0 + 16, v0 + 328);
  if (static ODIDeviceInfo.isDeviceLocked()())
  {
    sub_1000777C0();
    sub_1000760C8(v0 + 16);
    sub_1000773A4();
    sub_100077914();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    swift_task_alloc();
    sub_10007743C();
    *(v0 + 504) = v19;
    *v19 = v20;
    sub_100077448(v19);
    sub_100077914();

    return sub_100071D14(v21, v22);
  }
}

uint64_t sub_1000744C4()
{
  sub_1000657D4();
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  sub_100070180();

  v4 = sub_100065864();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100074534()
{
  sub_1000657D4();
  v1 = v0[59] + 1;
  if (v1 == v0[56])
  {
    v2 = v0[55];

    sub_10006574C();

    return v3();
  }

  else
  {
    v0[59] = v1;
    v5 = v0[57];
    v6 = v0[55];
    sub_100077320(v1);
    sub_10007606C((v0 + 2), (v0 + 41));
    if (static ODIDeviceInfo.isDeviceLocked()())
    {
      sub_1000777C0();
      sub_1000760C8((v0 + 2));
      v7 = sub_1000773A4();

      return _swift_task_switch(v7, v8, v9);
    }

    else
    {
      swift_task_alloc();
      sub_10007743C();
      v0[63] = v10;
      *v10 = v11;
      v12 = sub_100077448(v10);

      return sub_100071D14(v12, v13);
    }
  }
}

uint64_t sub_100074648()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;

  sub_1000760C8(v2 + 16);
  v8 = sub_100065864();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100074748()
{
  sub_1000657EC();
  v1 = v0[28];
  v2 = sub_100070F7C();
  if (v2)
  {
    v3 = sub_100048BAC(v2);
    v0[29] = v3;

    v4 = v3[2];
    v0[30] = v4;
    if (v4)
    {
      v0[31] = 0;
      sub_1000773FC(v0[29]);
      sub_100077748();
      swift_task_alloc();
      sub_10007743C();
      v0[32] = v5;
      *v5 = v6;
      v7 = sub_100077478(v5);

      return sub_100071D14(v7, v8);
    }
  }

  sub_10006574C();

  return v10();
}

uint64_t sub_100074840()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;

  sub_1000760C8(v2 + 16);
  v8 = sub_100065864();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100074928()
{
  sub_1000657D4();
  v1 = v0[31] + 1;
  if (v1 == v0[30])
  {
    v2 = v0[29];

    sub_10006574C();

    return v3();
  }

  else
  {
    v0[31] = v1;
    v5 = v0[29];
    sub_100077320(v1);
    sub_100077748();
    swift_task_alloc();
    sub_10007743C();
    v0[32] = v6;
    *v6 = v7;
    v8 = sub_100077478();

    return sub_100071D14(v8, v9);
  }
}

uint64_t sub_100074A08(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007729C;

  return PrecomputationManager.triggerAllPrecomputations()();
}

uint64_t PrecomputationManager.triggerPrecomputation(workflowID:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return sub_1000772C4(sub_100074ACC);
}

uint64_t sub_100074ACC()
{
  sub_1000657EC();
  v1 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 4;
  *(v0 + 72) = 1;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v3 = sub_1000778DC(v2);

  return sub_100071D14(v3, 4);
}

uint64_t sub_100074BA0()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1;
  sub_1000773D4();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;

  sub_1000760C8(v2 + 16);
  sub_10006574C();

  return v8();
}

uint64_t sub_100074CA8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100074D7C;

  return PrecomputationManager.triggerPrecomputation(workflowID:)(v5, v7);
}

uint64_t sub_100074D7C()
{
  sub_100068324();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[3];
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[3], 0);
  }

  _Block_release(v4[3]);
  v12 = v9[1];

  return v12();
}

uint64_t PrecomputationManager.triggerPregeneration(workflowID:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return sub_1000772C4(sub_100074F2C);
}

uint64_t sub_100074F2C()
{
  sub_1000657EC();
  v1 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = xmmword_1005CCB50;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;

  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v3 = sub_1000778DC(v2);

  return sub_100071D14(v3, 1);
}

uint64_t sub_100075024(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  sub_1000777B0();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = sub_100047504();

  return sub_1000CAD58(v10, v11);
}

uint64_t sub_10007509C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000772A0;

  return PrecomputationManager.triggerPregeneration(workflowID:)(v5, v7);
}

uint64_t sub_100075188()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 24) = v1;
  return sub_1000772D0(sub_1000751B0, v1);
}

uint64_t sub_1000751B0()
{
  sub_1000657D4();
  v1 = *(v0 + 24);
  sub_100070290();
  sub_10006574C();

  return v2();
}

uint64_t sub_100075228(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007729C;

  return PrecomputationManager.notifyCachesWereRemoved()();
}

uint64_t sub_1000752E8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 24) = v1;
  return sub_1000772D0(sub_100075310, v1);
}

uint64_t sub_100075310()
{
  sub_1000657D4();
  v1 = *(v0 + 24);
  sub_10006F898();
  sub_10006574C();

  return v2();
}

uint64_t sub_100075388(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100075430;

  return PrecomputationManager.pausePrecomputations()();
}

uint64_t sub_100075430()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;

  v7 = sub_1000775C8();
  v8(v7);
  _Block_release(v3);
  sub_10006574C();

  return v9();
}

uint64_t sub_100075564()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  *(v0 + 24) = v1;
  return sub_1000772D0(sub_10007558C, v1);
}

uint64_t sub_10007558C()
{
  sub_1000657D4();
  v1 = *(v0 + 24);
  sub_10006F9A8();
  sub_10006574C();

  return v2();
}

uint64_t sub_100075604(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  sub_1000777A0();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  v7 = sub_100047504();

  return sub_1000CAD58(v7, v8);
}

uint64_t sub_100075668(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007729C;

  return PrecomputationManager.resumePrecomputations()();
}

uint64_t sub_100075728()
{
  sub_1000657D4();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_100077560(v2);

  return sub_100070AC0();
}

uint64_t sub_1000757BC()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  sub_1000773D4();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v0;
  sub_1000655F4();
  *v8 = v7;
  *(v9 + 32) = v2;

  v10 = sub_1000773A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000758A4()
{
  sub_1000657D4();
  v1 = *(v0 + 32);
  sub_100083A44();

  sub_10006574C();

  return v2();
}

Swift::Void __swiftcall PrecomputationManager.clearAllBindings()()
{
  v1 = sub_1000443DC(&qword_1006C9E20);
  v2 = sub_100077674(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10004EAF4();
  v7 = v6 - v5;
  v8 = type metadata accessor for TaskPriority();
  sub_1000485F8(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;
  v10 = v0;
  sub_10006F27C(0, 0, v7, &unk_1005CCBD0, v9);
}

uint64_t sub_1000759D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000640AC;

  return PrecomputationManager.clearAllBindings()();
}

uint64_t sub_100075AAC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1000772C4(sub_100075AC4);
}

uint64_t sub_100075AC4()
{
  sub_1000657D4();
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC3asd21PrecomputationManager_state);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  sub_100077560(v2);

  return sub_100070AC0();
}

uint64_t sub_100075B58()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  sub_1000773D4();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v0;
  sub_1000655F4();
  *v8 = v7;
  *(v9 + 40) = v2;

  v10 = sub_1000773A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100075C40()
{
  sub_1000657D4();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_100082700();

  sub_10006574C();

  return v3();
}

Swift::Void __swiftcall PrecomputationManager.capture(withBindings:)(Swift::OpaquePointer withBindings)
{
  v3 = sub_1000443DC(&qword_1006C9E20);
  v4 = sub_100077674(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v9 = v8 - v7;
  v10 = type metadata accessor for TaskPriority();
  sub_1000485F8(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2]._rawValue = 0;
  v11[3]._rawValue = 0;
  v11[4]._rawValue = withBindings._rawValue;
  v11[5]._rawValue = v1;

  v12 = v1;
  sub_10006F27C(0, 0, v9, &unk_1005CCBE0, v11);
}

uint64_t sub_100075D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100075DA0, 0, 0);
}

uint64_t sub_100075DA0()
{
  sub_1000657D4();
  v1 = sub_100077D54(v0[2]);
  v0[4] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_100075E6C;
    v3 = v0[3];
    v4 = sub_100077614();

    return sub_100075AAC(v4);
  }

  else
  {
    sub_10006574C();

    return v6();
  }
}

uint64_t sub_100075E6C()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  sub_10006574C();

  return v6();
}

uint64_t sub_10007611C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100076214;

  return v7(a1);
}

uint64_t sub_100076214()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_10006574C();

  return v5();
}

uint64_t sub_1000762F8()
{
  sub_1000657EC();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_10006EB38(v2);
  *v3 = v4;
  sub_100077818(v3);

  return sub_10006CC0C();
}

uint64_t sub_10007638C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000763F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = sub_1000777B0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100076428()
{
  sub_1000657EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v5[1] = sub_100065570;
  sub_100077630();

  return sub_1000759D4();
}

uint64_t sub_1000764C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100076510()
{
  sub_100068324();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10006EB38(v5);
  *v6 = v7;
  v6[1] = sub_100065570;
  sub_100077630();
  sub_10006ED0C();

  return sub_100075D80(v8, v9, v10, v11, v12);
}

uint64_t sub_1000765E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100076618()
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

uint64_t sub_1000766CC()
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

uint64_t sub_100076790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CABB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000767F8()
{
  result = qword_1006CABE0;
  if (!qword_1006CABE0)
  {
    sub_1000471A4(&qword_1006CABD8);
    sub_1000768AC();
    sub_100076900(&unk_1006CABF0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CABE0);
  }

  return result;
}

unint64_t sub_1000768AC()
{
  result = qword_1006CABE8;
  if (!qword_1006CABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CABE8);
  }

  return result;
}

uint64_t sub_100076900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007694C()
{
  sub_1000657EC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10006EBC4(v3);
  *v4 = v5;
  v6 = sub_100077344(v4);

  return v7(v6);
}

uint64_t sub_1000769DC()
{
  sub_1000657EC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10006EBC4(v3);
  *v4 = v5;
  v6 = sub_100077344(v4);

  return v7(v6);
}

uint64_t sub_100076A6C()
{
  sub_1000657EC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10006EBC4(v3);
  *v4 = v5;
  v6 = sub_100077344(v4);

  return v7(v6);
}

uint64_t sub_100076B00()
{
  sub_1000657EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10006EBC4(v4);
  *v5 = v6;
  v5[1] = sub_100065570;
  v7 = sub_100077614();

  return v8(v7, v2, v3);
}

uint64_t sub_100076BA8()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000777B0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100076BE8()
{
  sub_1000657EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10006EBC4(v4);
  *v5 = v6;
  v5[1] = sub_1000640AC;
  v7 = sub_100077614();

  return v8(v7, v2, v3);
}

uint64_t sub_100076C90()
{
  _Block_release(*(v0 + 16));

  v1 = sub_1000777A0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100076CC8()
{
  sub_1000657EC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10006EBC4(v3);
  *v4 = v5;
  v6 = sub_100077344(v4);

  return v7(v6);
}

uint64_t sub_100076D58()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100076DA0()
{
  sub_100068324();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10006EBC4(v5);
  *v6 = v7;
  v6[1] = sub_100065570;
  sub_100077614();
  sub_10006ED0C();

  __asm { BR              X4 }
}

uint64_t sub_100076EA4()
{
  v1 = *(v0 + 24);

  v2 = sub_1000777A0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100076ED4()
{
  sub_1000657EC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10006EB38(v3);
  *v4 = v5;
  v4[1] = sub_100065570;
  v6 = sub_100077630();

  return v7(v6);
}

uint64_t sub_100076F78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100076FB8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000443DC(a2);
  sub_1000774D8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10007700C(uint64_t a1)
{
  v2 = type metadata accessor for ASAnalyticsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100077070()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000770A8()
{
  sub_1000657D4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v5[1] = sub_1000640AC;

  return sub_100071974(v2, v3);
}

uint64_t sub_10007713C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1000443DC(a3);
  sub_1000774D8(v4);
  v6 = *(v5 + 16);
  v7 = sub_100047504();
  v8(v7);
  return a2;
}

unint64_t sub_100077194()
{
  result = qword_1006CAC20;
  if (!qword_1006CAC20)
  {
    sub_1000471A4(&qword_1006CABD8);
    sub_100077248();
    sub_100076900(&unk_1006CAC30, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAC20);
  }

  return result;
}

unint64_t sub_100077248()
{
  result = qword_1006CAC28;
  if (!qword_1006CAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAC28);
  }

  return result;
}

void *sub_100077320@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 16), (v1 + 104 * a1 + 32), 0x68uLL);
}

uint64_t sub_100077344(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100077360()
{
  sub_100044850(v0);
}

void sub_1000773B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_1000773E0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_1000773FC@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 16), (a1 + 32), 0x68uLL);
}

void sub_100077418(void *a1)
{

  _os_log_impl(a1, v1, v2, v3, v4, 2u);
}

uint64_t sub_100077448(uint64_t a1)
{
  *(a1 + 8) = sub_100074648;
  v2 = *(v1 + 432);
  return v1 + 16;
}

uint64_t sub_100077478(uint64_t a1)
{
  *(a1 + 8) = sub_100074840;
  v2 = *(v1 + 224);
  return v1 + 16;
}

uint64_t sub_1000774A8(uint64_t a1)
{
  *(a1 + 8) = sub_100073D34;
  v2 = *(v1 + 496);
  v3 = *(v1 + 472);
  return v1 + 16;
}

uint64_t sub_100077500()
{
}

uint64_t sub_100077534(uint64_t a1)
{
  *(a1 + 8) = sub_100072FB4;
  v2 = *(v1 + 472);
  v3 = *(v1 + 480);
  return v1 + 16;
}

uint64_t sub_10007756C()
{
}

uint64_t sub_100077588()
{
  v2 = v0[67];
  v3 = v0[64];
  v4 = v0[62];

  return sub_1000760C8((v0 + 2));
}

uint64_t sub_1000775A8()
{
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[60];

  return sub_1000760C8((v0 + 2));
}

uint64_t sub_1000775D8()
{

  return swift_once();
}

uint64_t sub_1000775F8()
{

  return sub_100052F7C();
}

void sub_100077658(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

BOOL sub_100077680(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000776B0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(v5 + 432) = a1;
  *(v5 + 440) = v4;
  *(v5 + 448) = a2 & 1;
  *(v5 + 449) = BYTE1(a2) & 1;
  *(v5 + 450) = BYTE2(a2) & 1;
  *(v5 + 456) = v2;
  *(v5 + 464) = v3;
}

uint64_t sub_1000776E0()
{
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);

  return swift_slowAlloc();
}

uint64_t sub_100077700()
{
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);

  return swift_slowAlloc();
}

uint64_t sub_100077748()
{

  return sub_10007606C(v0 + 16, v0 + 120);
}

uint64_t sub_100077760()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 496);
  return v0 + 16;
}

uint64_t sub_100077780()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 480);
  return v0 + 16;
}

uint64_t sub_1000777C0()
{
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[3];
  v0[60] = v0[2];
  v0[61] = v4;
  v0[62] = *(v3 + v2);
}

BOOL sub_1000777E8()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_100077830()
{
  v2 = v0[67];
  v3 = v0[64];
  v4 = v0[62];
}

uint64_t sub_10007784C()
{
}

uint64_t sub_100077864()
{

  return sub_1000760C8(v0 + 16);
}

uint64_t sub_10007787C(float a1)
{
  *v1 = a1;
}

uint64_t sub_100077894()
{
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[60];
}

uint64_t sub_1000778DC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 136);
  return v2;
}

uint64_t sub_10007795C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for ODIBindingsDict();
      v10 = *(a3 + 56);
    }

    return sub_100046EA4(a1 + v10, a2, v9);
  }
}

uint64_t sub_100077A3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for ODIBindingsDict();
      v10 = *(a4 + 56);
    }

    return sub_1000485F8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for AssessmentPayload()
{
  result = qword_1006CAC98;
  if (!qword_1006CAC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100077B50()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ODIBindingsDict();
    if (v1 <= 0x3F)
    {
      sub_100077CA4(319, &qword_1006CACA8, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100077CA4(319, &qword_1006CACB0, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100077CF8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100077CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100077CF8()
{
  result = qword_1006CACB8;
  if (!qword_1006CACB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006CACB8);
  }

  return result;
}

unint64_t sub_100077D54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006CADA8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_10005346C(*(a1 + 56) + 32 * v10, v34);
    *&v33 = v12;
    *(&v33 + 1) = v13;
    *&v31[5] = v33;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v14 = v33;
    sub_1000534C8(v32, &v26);

    sub_1000443DC(&qword_1006CAD30);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100046D90(v24, v27);
    sub_100046D90(v27, v28);
    v29 = v14;
    sub_100046D90(v28, v30);
    v15 = v29;
    sub_100046D90(v30, v31);
    sub_100046D90(v31, &v29);
    result = sub_1000BFB60(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      v18 = v2[6] + 16 * result;
      v19 = *(v18 + 8);
      *v18 = v15;

      v20 = (v2[7] + 40 * v16);
      sub_100044850(v20);
      result = sub_100046D90(&v29, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_100046D90(&v29, v2[7] + 40 * result);
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_100053BE8(v24, &qword_1006CAD98);

  return 0;
}

unint64_t sub_10007801C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006CADA8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_10006B994(*(a1 + 48) + 40 * v10, __src);
    sub_10005346C(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_10006B994(__dst, v24);
    if (!swift_dynamicCast())
    {
      sub_100053BE8(__dst, &qword_1006CADB0);

      goto LABEL_22;
    }

    v11 = v21[0];
    sub_10005346C(&__dst[40], v23);
    sub_100053BE8(__dst, &qword_1006CADB0);
    sub_1000443DC(&qword_1006CAD30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100046D90(v21, v24);
    sub_100046D90(v24, v25);
    v26 = v11;
    sub_100046D90(v25, v27);
    v12 = v26;
    sub_100046D90(v27, v28);
    sub_100046D90(v28, &v26);
    result = sub_1000BFB60(v12, *(&v12 + 1));
    v13 = result;
    if (v14)
    {
      v15 = v2[6] + 16 * result;
      v16 = *(v15 + 8);
      *v15 = v12;

      v17 = (v2[7] + 40 * v13);
      sub_100044850(v17);
      result = sub_100046D90(&v26, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v12;
      result = sub_100046D90(&v26, v2[7] + 40 * result);
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_26;
      }

      v2[2] = v20;
      v8 = v9;
    }
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_100053BE8(v21, &qword_1006CAD98);
LABEL_22:

  return 0;
}

uint64_t sub_100078348()
{
  sub_1000443DC(&qword_1006CA138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CCD60;
  *(inited + 32) = 0x776F6C666B726F77;
  *(inited + 40) = 0xEA00000000004449;
  v2 = v0[1];
  *(inited + 48) = *v0;
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x4164657461657263;
  *(inited + 88) = 0xE900000000000074;
  v3 = type metadata accessor for AssessmentPayload();
  v4 = v3[5];
  v5 = type metadata accessor for Date();
  *(inited + 120) = v5;
  sub_10005351C((inited + 96));
  sub_100053F48(v5);
  (*(v6 + 16))();
  *(inited + 128) = 0x656D737365737361;
  *(inited + 136) = 0xEA0000000000746ELL;
  v7 = (v0 + v3[6]);
  v51 = v7[1];
  *(inited + 144) = *v7;
  *(inited + 152) = v51;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "trainingData");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  v8 = (v0 + v3[7]);
  v9 = v8[1];
  *(inited + 192) = *v8;
  *(inited + 200) = v9;
  *(inited + 216) = &type metadata for String;
  strcpy((inited + 224), "assessmentGUID");
  *(inited + 239) = -18;
  v10 = (v0 + v3[8]);
  v11 = v10[1];
  *(inited + 240) = *v10;
  *(inited + 248) = v11;
  sub_10007B488();
  *(inited + 264) = v12;
  *(inited + 272) = 0xD000000000000013;
  *(inited + 280) = v13;
  v14 = (v0 + v3[9]);
  v15 = v14[1];
  *(inited + 288) = *v14;
  *(inited + 296) = v15;
  *(inited + 312) = v12;
  *(inited + 320) = v16;
  *(inited + 328) = 0xEC00000044495547;
  v17 = (v0 + v3[10]);
  v18 = v17[1];
  *(inited + 336) = *v17;
  *(inited + 344) = v18;
  sub_10007B488();
  *(inited + 360) = v19;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = v20;
  v21 = (v0 + v3[11]);
  v22 = v21[1];
  *(inited + 384) = *v21;
  *(inited + 392) = v22;
  sub_10007B488();
  *(inited + 408) = v23;
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = v24;
  v25 = (v0 + v3[12]);
  v26 = v25[1];
  *(inited + 432) = *v25;
  *(inited + 440) = v26;
  *(inited + 456) = v23;
  *(inited + 464) = 0x6E49747365676964;
  *(inited + 472) = 0xEB00000000786564;
  v27 = *(v0 + v3[13]);

  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v29 = sub_10007AF78();
  *(inited + 480) = isa;
  *(inited + 504) = v29;
  *(inited + 512) = 0x73676E69646E6962;
  *(inited + 520) = 0xE800000000000000;
  v30 = v3[14];
  v31 = type metadata accessor for ODIBindingsDict();
  *(inited + 552) = v31;
  sub_10005351C((inited + 528));
  sub_100053F48(v31);
  (*(v32 + 16))();
  sub_10007B488();
  *(inited + 560) = 0xD000000000000011;
  *(inited + 568) = v33;
  v34 = *(v0 + v3[15]);
  *(inited + 600) = sub_1000443DC(&qword_1006CA018);
  *(inited + 576) = v34;
  *(inited + 608) = 0x5468736572666572;
  *(inited + 616) = 0xEA00000000006C74;
  v35 = *(v0 + v3[16]);

  v36.super.super.isa = Int32._bridgeToObjectiveC()().super.super.isa;
  *(inited + 648) = v29;
  *(inited + 624) = v36;
  strcpy((inited + 656), "encryptedTSID");
  *(inited + 670) = -4864;
  v37 = (v0 + v3[17]);
  v38 = *v37;
  v39 = v37[1];
  *(inited + 696) = &type metadata for String;
  *(inited + 672) = v38;
  *(inited + 680) = v39;
  strcpy((inited + 704), "encryptedAGUID");
  *(inited + 719) = -18;
  v40 = (v0 + v3[18]);
  v41 = *v40;
  v42 = v40[1];
  *(inited + 744) = &type metadata for String;
  *(inited + 720) = v41;
  *(inited + 728) = v42;
  strcpy((inited + 752), "shouldSendOTD");
  *(inited + 766) = -4864;
  LOBYTE(v40) = *(v0 + v3[19]);
  *(inited + 792) = &type metadata for Bool;
  *(inited + 768) = v40;
  *(inited + 800) = 0x49656C69666F7270;
  *(inited + 808) = 0xE900000000000044;
  v43 = (v0 + v3[21]);
  v44 = v43[3];
  sub_100044728(v43, v44);
  *(inited + 840) = v44;
  sub_10005351C((inited + 816));
  sub_100053F48(v44);
  (*(v45 + 16))();

  v46 = Dictionary.init(dictionaryLiteral:)();
  v47 = (v0 + v3[20]);
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    v54 = &type metadata for String;
    *&v53 = v49;
    *(&v53 + 1) = v48;
    sub_1000534C8(&v53, v52);

    swift_isUniquelyReferenced_nonNull_native();
    sub_10006A978(v52, 0xD000000000000012, 0x80000001005A3400);
  }

  return v46;
}

void sub_1000788B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ODIBindingsDict();
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  v12 = v11 - v10;
  v13 = [a1 workflowID];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *a2 = v14;
  a2[1] = v16;
  v17 = [a1 createdAt];
  v18 = type metadata accessor for AssessmentPayload();
  v19 = a2 + v18[5];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = [a1 assessment];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[6]);
  v21 = [a1 trainingData];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[7]);
  v22 = [a1 assessmentGUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[8]);
  v23 = [a1 assessmentGUIDSeeds];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[9]);
  v24 = [a1 trainingGUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[10]);
  v25 = [a1 trainingGUIDSeeds];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[11]);
  v26 = [a1 trainingSignalID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B438();
  sub_10007B3E8(v18[12]);
  v27 = [a1 digestIndex];
  v28 = [v27 integerValue];

  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v28 <= 0x7FFFFFFF)
  {
    *(a2 + v18[13]) = v28;
    v29 = [a1 bindingsRecords];
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = sub_10007801C(v30);

    if (!v31)
    {
      sub_1000443DC(&qword_1006CAD30);
      Dictionary.init(dictionaryLiteral:)();
    }

    ODIBindingsDict.init(contents:)();
    (*(v7 + 32))(a2 + v18[14], v12, v4);
    v32 = [a1 bindingsToCompare];
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = sub_100078F80(v33);

    v35 = &off_100691308;
    if (v34)
    {
      v35 = v34;
    }

    *(a2 + v18[15]) = v35;
    v36 = [a1 refreshTTL];
    if (v36)
    {
      v37 = v36;
      v38 = [v36 intValue];
    }

    else
    {
      v38 = 0;
    }

    *(a2 + v18[16]) = v38;
    v39 = [a1 encryptedTSID];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = (a2 + v18[17]);
    *v43 = v40;
    v43[1] = v42;
    v44 = [a1 encryptedAGUID];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = (a2 + v18[18]);
    *v48 = v45;
    v48[1] = v47;
    *(a2 + v18[19]) = [a1 shouldSendOTD];
    v49 = sub_100058D4C(a1, &selRef_otdDestinationHost);
    v50 = (a2 + v18[20]);
    *v50 = v49;
    v50[1] = v51;
    sub_100058D4C(a1, &selRef_profileID);
    if (!v52)
    {
      sub_100058D4C(a1, &selRef_profileSetId);
      if (v53)
      {
        sub_100058D4C(a1, &selRef_orderedProfileBagId);
        if (v54)
        {
          sub_100058D4C(a1, &selRef_profileBagSetId);
          if (v55)
          {
            sub_100058D4C(a1, &selRef_assessmentConfigId);
            if (v56)
            {
              sub_100058D4C(a1, &selRef_profileSetBagName);
              if (v57)
              {
                v58 = (a2 + v18[21]);
                v58[3] = type metadata accessor for ProfileSetIdentifiers();
                sub_10007B314();
                v58[4] = sub_10007AFBC(v59, v60);
                sub_10005351C(v58);
                ProfileSetIdentifiers.init(profileSetId:profileBagSetId:orderedProfileBagId:assessmentConfigId:bagName:)();
LABEL_24:

                return;
              }
            }
          }
        }
      }
    }

    v61 = (a2 + v18[21]);
    v61[3] = type metadata accessor for LegacyAugmentedProfileIdentifiers();
    sub_10007B29C();
    v61[4] = sub_10007AFBC(v62, v63);
    sub_10005351C(v61);
    LegacyAugmentedProfileIdentifiers.init(profileId:)();
    goto LABEL_24;
  }

  __break(1u);
}

id *sub_100078F80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1000BDEA4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_10005346C(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000BDEA4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = (v6 + 1);
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100079094()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1000790EC(char a1)
{
  result = 0x776F6C666B726F77;
  switch(a1)
  {
    case 1:
      result = 0x4164657461657263;
      break;
    case 2:
      result = 0x656D737365737361;
      break;
    case 3:
      result = 0x676E696E69617274;
      break;
    case 4:
      result = 0x656D737365737361;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x676E696E69617274;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6E49747365676964;
      break;
    case 10:
      result = 0x73676E69646E6962;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x5468736572666572;
      break;
    case 13:
    case 14:
      result = 0x6574707972636E65;
      break;
    case 15:
      result = 0x4F646E6553657375;
      break;
    case 16:
    case 17:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100079378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100079094();
  *a2 = result;
  return result;
}

unint64_t sub_1000793A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000790EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000793DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000790E8();
  *a1 = result;
  return result;
}

uint64_t sub_100079410(uint64_t a1)
{
  v2 = sub_10007ACF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007944C(uint64_t a1)
{
  v2 = sub_10007ACF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100079488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v3 = sub_1000443DC(&qword_1006CAD58);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_10004EAF4();
  v141 = v6 - v5;
  v142 = type metadata accessor for LegacyAugmentedProfileIdentifiers();
  v7 = sub_10004EAE0(v142);
  v138 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10004EAF4();
  v137 = v12 - v11;
  v13 = sub_1000443DC(&qword_1006CAD60);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v134 - v18;
  v20 = type metadata accessor for Date();
  v21 = sub_10004EAE0(v20);
  v140 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10004EAF4();
  v27 = v26 - v25;
  v28 = sub_1000443DC(&qword_1006CAD68);
  v29 = sub_10004EAE0(v28);
  v144 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_10004EAF4();
  v35 = v34 - v33;
  v148 = type metadata accessor for AssessmentPayload();
  sub_100053F48(v148);
  v37 = *(v36 + 64);
  __chkstk_darwin(v38);
  sub_10004EAF4();
  v146 = a1;
  v147 = (v40 - v39);
  isa = a1[3];
  v42 = a1[4];
  v43 = sub_10007B3BC();
  sub_100044728(v43, v44);
  sub_10007ACF4();
  v45 = v149;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v139 = v20;
  if (v45)
  {
    v149 = v45;
    v47 = 0;
    LODWORD(v20) = 0;
    LODWORD(v27) = 0;
    v48 = 0;
    LODWORD(v49) = 0;
    sub_10007B2CC();
    goto LABEL_4;
  }

  v135 = v17;
  v136 = v19;
  v48 = v144;
  LOBYTE(v153) = 0;
  LODWORD(v49) = v35;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  LODWORD(isa) = v28;
  v59 = v147;
  *v147 = v46;
  v59[1] = v60;
  LOBYTE(v153) = 1;
  sub_10007B3A4();
  sub_10007AFBC(v61, v62);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v63 = v148;
  (*(v140 + 32))(v59 + v148[5], v27, v20);
  sub_10007B378(2);
  v64 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v64, v65, v63[6]);
  sub_10007B378(3);
  LODWORD(v17) = v48;
  v66 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v66, v67, v63[7]);
  sub_10007B378(4);
  v68 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v68, v69, v63[8]);
  sub_10007B378(5);
  v70 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v70, v71, v63[9]);
  sub_10007B378(6);
  v72 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v72, v73, v63[10]);
  sub_10007B378(7);
  v74 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B3F4(v74, v75, v63[11]);
  sub_10007B378(8);
  v76 = KeyedDecodingContainer.decode(_:forKey:)();
  v149 = 0;
  sub_10007B3F4(v76, v77, v63[12]);
  LOBYTE(v153) = 9;
  v78 = v49;
  v79 = v149;
  v80 = KeyedDecodingContainer.decode(_:forKey:)();
  v149 = v79;
  if (!v79)
  {
    *(v147 + v148[13]) = v80;
    LOBYTE(v150) = 10;
    sub_10007AD9C();
    v81 = v149;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v149 = v81;
    if (!v81)
    {
      v86 = v153;
      v85 = DWORD2(v153);
      v87 = objc_opt_self();
      LODWORD(v17) = v86;
      LODWORD(v27) = v85;
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v153 = 0;
      v88 = [v87 JSONObjectWithData:isa options:0 error:&v153];

      v89 = v153;
      if (!v88)
      {
        v20 = v89;
        v49 = _convertNSErrorToError(_:)();

        v149 = v49;
        swift_willThrow();
        sub_10007B450();
        goto LABEL_35;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10007A2C8(v156, v147 + v148[14]);
      LODWORD(isa) = sub_1000443DC(&qword_1006CA018);
      LOBYTE(v150) = 11;
      sub_10007ADF0(&qword_1006CA020, &qword_1006CA018);
      LODWORD(v49) = v78;
      v90 = v149;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v145 = v90 == 0;
      v149 = v90;
      if (v90)
      {
        sub_10007B450();
        sub_100044850(v156);
        v93 = sub_10007B388();
        v94(v93);
        sub_10007B474();
        sub_100044850(v146);
        sub_10007B2E4();
        sub_10007B3D4();
        LODWORD(v144) = v95;
        v53 = 1;
        v50 = v147;
        v51 = v148;
LABEL_6:
        v54 = v50[1];

        if (v20)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      *(v147 + v148[15]) = v153;
      sub_10007B2FC(12);
      v91 = KeyedDecodingContainer.decode(_:forKey:)();
      v149 = 0;
      *(v147 + v148[16]) = v91;
      sub_10007B2FC(13);
      v92 = KeyedDecodingContainer.decode(_:forKey:)();
      v149 = 0;
      v96 = (v147 + v148[17]);
      *v96 = v92;
      v96[1] = v97;
      sub_10007B2FC(14);
      v98 = KeyedDecodingContainer.decode(_:forKey:)();
      v149 = 0;
      v99 = (v147 + v148[18]);
      *v99 = v98;
      v99[1] = v100;
      sub_10007B2FC(15);
      v101 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v149 = 0;
      *(v147 + v148[19]) = (v101 == 2) | v101 & 1;
      sub_10007B2FC(16);
      v102 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v149 = 0;
      v104 = (v147 + v148[20]);
      *v104 = v102;
      v104[1] = v103;
      v105 = type metadata accessor for ProfileSetIdentifiers();
      LOBYTE(v153) = 17;
      sub_10007B314();
      sub_10007AFBC(v106, v107);
      v108 = v149;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v109 = v108;
      if (v108)
      {

        v110 = sub_10007B468();
        sub_1000485F8(v110, 1, 1, v105);
        v109 = 0;
      }

      v111 = sub_10007B468();
      v112 = v135;
      sub_10007AE50(v111, v135);
      if (sub_100046EA4(v112, 1, v105) != 1)
      {
        v154 = v105;
        sub_10007B314();
        v155 = sub_10007AFBC(v115, v116);
        sub_10005351C(&v153);
        sub_100053F48(v105);
        (*(v117 + 32))();
        sub_10007B450();
        v118 = sub_10007B468();
        sub_100053BE8(v118, v119);
        sub_100044850(v156);
        v120 = sub_10007B388();
        v121(v120);
LABEL_50:
        v128 = v147;
        sub_100046D90(&v153, v147 + v148[21]);
        sub_10007AEB8(v128, v143);
        sub_100044850(v146);
        return sub_10007AF1C(v128);
      }

      sub_100053BE8(v135, &qword_1006CAD60);
      LOBYTE(v153) = 17;
      sub_10007B29C();
      sub_10007AFBC(v113, v114);
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if (v109)
      {

        sub_1000485F8(v141, 1, 1, v142);
      }

      else if (sub_100046EA4(v141, 1, v142) != 1)
      {
        v129 = *(v138 + 32);
        v130 = v142;
        v129(v137, v141, v142);
        v151 = v130;
        sub_10007B29C();
        v152 = sub_10007AFBC(v131, v132);
        v133 = sub_10005351C(&v150);
        v129(v133, v137, v130);
        goto LABEL_49;
      }

      sub_100053BE8(v141, &qword_1006CAD58);
      v151 = v142;
      sub_10007B29C();
      v152 = sub_10007AFBC(v122, v123);
      sub_10005351C(&v150);
      LegacyAugmentedProfileIdentifiers.init(profileId:)();
LABEL_49:
      sub_10007B450();
      v124 = sub_10007B468();
      sub_100053BE8(v124, v125);
      sub_100044850(v156);
      v126 = sub_10007B388();
      v127(v126);
      sub_100046D90(&v150, &v153);
      goto LABEL_50;
    }
  }

LABEL_35:
  v82 = sub_10007B388();
  v83(v82);
  v47 = 1;
  sub_10007B2E4();
  sub_10007B3D4();
  LODWORD(v144) = v84;
LABEL_4:
  v50 = v147;
  v51 = v148;
  result = sub_100044850(v146);
  if (v47)
  {
    v53 = 0;
    v145 = 0;
    sub_10007B474();
    goto LABEL_6;
  }

  LODWORD(v143) = 0;
  LODWORD(v142) = 0;
  v145 = 0;
  v53 = 0;
  if (v20)
  {
LABEL_7:
    result = (*(v140 + 8))(v50 + v51[5], v139);
    if ((v27 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v27)
  {
LABEL_8:
    if (v48)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = sub_10007B410(v51[6]);
  if (v48)
  {
LABEL_9:
    result = sub_10007B410(v51[7]);
    if ((v49 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v49)
  {
LABEL_10:
    if (isa)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = sub_10007B410(v51[8]);
  if (isa)
  {
LABEL_11:
    result = sub_10007B410(v51[9]);
    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v17)
  {
LABEL_12:
    if (v141)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_10007B410(v51[10]);
  if (v141)
  {
LABEL_13:
    result = sub_10007B410(v51[11]);
    if ((v144 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v144)
  {
LABEL_14:
    if (v53)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = sub_10007B410(v51[12]);
  if (v53)
  {
LABEL_15:
    v55 = v51[14];
    v56 = type metadata accessor for ODIBindingsDict();
    sub_100053F48(v56);
    result = (*(v57 + 8))(v50 + v55);
    if (!v145)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v145)
  {
LABEL_16:
    if (v142)
    {
      goto LABEL_17;
    }

LABEL_30:
    if (!v143)
    {
      return result;
    }

    return sub_10007B410(v51[18]);
  }

LABEL_29:
  v58 = *(v50 + v51[15]);

  if ((v142 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  result = sub_10007B410(v51[17]);
  if ((v143 & 1) == 0)
  {
    return result;
  }

  return sub_10007B410(v51[18]);
}

uint64_t sub_10007A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ODIBindingsDict();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005346C(a1, &v39);
  sub_1000443DC(&qword_1006CA3C0);
  if (!swift_dynamicCast())
  {
    return ODIBindingsDict.init(dictionaryLiteral:)();
  }

  v26 = v5;
  v27 = v4;
  v28 = a2;
  v9 = v36;
  result = ODIBindingsDict.init(dictionaryLiteral:)();
  v11 = 0;
  v13 = v9 + 64;
  v12 = *(v9 + 64);
  v29 = v9;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v11;
LABEL_11:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    v21 = (*(v29 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_10005346C(*(v29 + 56) + 32 * v20, &v32);
    *&v36 = v23;
    *(&v36 + 1) = v22;
    sub_1000534C8(&v32, &v37);

LABEL_12:
    v39 = v36;
    v40[0] = v37;
    v40[1] = v38;
    if (!*(&v36 + 1))
    {

      return (*(v26 + 32))(v28, v8, v27);
    }

    sub_1000534C8(v40, v35);
    sub_10005346C(v35, v31);
    v24 = sub_10007AF78();
    if (swift_dynamicCast())
    {
      v25 = v30;
      *(&v33 + 1) = v24;
      v34 = sub_10007AFBC(&qword_1006CADA0, sub_10007AF78);
      *&v32 = v25;
    }

    else if (swift_dynamicCast())
    {
      *(&v33 + 1) = &type metadata for String;
      v34 = &protocol witness table for String;
      v32 = v30;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
    }

    sub_100044850(v31);
    if (*(&v33 + 1))
    {
      sub_100046D90(&v32, &v36);
      sub_1000446C4(&v36, &v32);
      ODIBindingsDict.subscript.setter();
      sub_100044850(&v36);
      result = sub_100044850(v35);
    }

    else
    {
      sub_100044850(v35);

      result = sub_100053BE8(&v32, &qword_1006CAD98);
    }
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      goto LABEL_12;
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}