id sub_100001888(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_100001DBC(&unk_100034B68, qword_1000298D0);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_homeManagerDidUpdateHomesContinuation;
  swift_beginAccess();
  sub_100001E04(v9, a2 + v12);
  swift_endAccess();
  v13 = sub_100001E74(a3, a3[3]);
  v14 = *v13;
  *(*v13 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager_homeManagerDelegate + 8) = &off_100031220;
  swift_unknownObjectWeakAssign();
  v15 = *(v14 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager_homeManager);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  return [v15 setDelegate:v14];
}

uint64_t sub_100001A28()
{
  sub_100001EB8(v0 + 2);
  sub_100001F04(v0 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_homeManagerDidUpdateHomesContinuation);
  v1 = *(v0 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_entityIds);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t type metadata accessor for HomeStore()
{
  result = qword_100034B50;
  if (!qword_100034B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001AF8()
{
  sub_100001B9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100001B9C()
{
  if (!qword_100034B60)
  {
    sub_100001C00(&unk_100034B68, qword_1000298D0);
    v0 = sub_1000287BC();
    if (!v1)
    {
      atomic_store(v0, &qword_100034B60);
    }
  }
}

uint64_t sub_100001C00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100001C74()
{
  v1 = *v0;
  sub_10002894C();
  sub_10002896C(v1);
  return sub_10002897C();
}

Swift::Int sub_100001CE8()
{
  v1 = *v0;
  sub_10002894C();
  sub_10002896C(v1);
  return sub_10002897C();
}

BOOL sub_100001D48(void *a1, uint64_t *a2)
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

_DWORD *sub_100001DA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100001DBC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100001E74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001EB8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100001F04(uint64_t a1)
{
  v2 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for FLOWSchemaFLOWStateType()
{
  if (!qword_100034C68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100034C68);
    }
  }
}

unint64_t sub_100001FC0()
{
  result = qword_100034C70;
  if (!qword_100034C70)
  {
    type metadata accessor for FLOWSchemaFLOWStateType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034C70);
  }

  return result;
}

id *sub_100002030(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    result = a1(&v17, i);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= (v5[3] >> 1))
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_100026ED0(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if (((v5[3] >> 1) - v5[2]) < v9)
        {
          goto LABEL_24;
        }

        sub_100001DBC(&qword_100035D50, &qword_100029618);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = &v13[v9];
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000021E8()
{
  v1[6] = v0;
  v1[7] = *v0;
  v2 = sub_100027D7C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000022D0, 0, 0);
}

uint64_t sub_1000022D0()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  sub_100027D5C();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_100002380;
  v5 = v0[10];

  return sub_10000264C(v2 + 16, v2 + 56, v2 + 104, v2 + 144, v5);
}

uint64_t sub_100002380(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[2] = v3;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v2;
  v7 = v5[11];
  v8 = v5[10];
  v9 = v5[9];
  v10 = v5[8];
  v11 = *v3;
  v6[12] = v2;

  (*(v9 + 8))(v8, v10);
  if (v2)
  {
    v12 = sub_1000025E8;
  }

  else
  {
    v6[13] = a1;
    v12 = sub_100002514;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100002514()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[6];
    v3 = v2[22];
    sub_100001E74(v2 + 18, v2[21]);
    v4 = v1;
    sub_10002812C();
  }

  v5 = v0[4];
  v6 = v0[10];
  v7 = v0[6];
  sub_10000D724(v5);
  sub_100004028(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000025E8()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_10000264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = *(type metadata accessor for RequestLinkedModelUpdateStep(0) - 8);
  v6[23] = v7;
  v8 = *(v7 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v9 = *(*(sub_100001DBC(&qword_100034E28, &qword_100029570) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v10 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v6[28] = v10;
  v11 = *(v10 - 8);
  v6[29] = v11;
  v12 = *(v11 + 64) + 15;
  v6[30] = swift_task_alloc();
  v13 = sub_100001DBC(&qword_100034E30, &qword_100029578);
  v6[31] = v13;
  v14 = *(v13 - 8);
  v6[32] = v14;
  v15 = *(v14 + 64) + 15;
  v6[33] = swift_task_alloc();
  v16 = sub_100001DBC(&qword_100034E38, &qword_100029580);
  v6[34] = v16;
  v17 = *(v16 - 8);
  v6[35] = v17;
  v18 = *(v17 + 64) + 15;
  v6[36] = swift_task_alloc();
  v19 = sub_100027D7C();
  v6[37] = v19;
  v20 = *(v19 - 8);
  v6[38] = v20;
  v21 = *(v20 + 64) + 15;
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v22 = sub_100001DBC(&qword_100034E40, &qword_100029588);
  v6[41] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v24 = sub_100001DBC(&qword_100034E48, &qword_100029590);
  v6[44] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v6[45] = swift_task_alloc();
  v26 = sub_100001DBC(&qword_100034E50, &qword_100029598);
  v6[46] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v6[47] = swift_task_alloc();
  v28 = sub_1000283CC();
  v6[48] = v28;
  v29 = *(v28 - 8);
  v6[49] = v29;
  v6[50] = *(v29 + 64);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v30 = *(*(sub_100001DBC(&qword_100034E58, &qword_1000295A0) - 8) + 64) + 15;
  v6[53] = swift_task_alloc();
  v31 = sub_100001DBC(&qword_100034E60, &qword_1000295A8);
  v6[54] = v31;
  v32 = *(v31 - 8);
  v6[55] = v32;
  v33 = *(v32 + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v34 = sub_100001DBC(&qword_100034E68, &qword_1000295B0);
  v6[58] = v34;
  v35 = *(v34 - 8);
  v6[59] = v35;
  v36 = *(v35 + 64) + 15;
  v6[60] = swift_task_alloc();
  v37 = sub_100001DBC(&qword_100034E70, &qword_1000295B8);
  v6[61] = v37;
  v38 = *(v37 - 8);
  v6[62] = v38;
  v39 = *(v38 + 64) + 15;
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();

  return _swift_task_switch(sub_100002BAC, 0, 0);
}

uint64_t sub_100002BAC()
{
  v1 = *(v0 + 160);
  v2 = v1[4];
  sub_100001E74(v1, v1[3]);
  v3 = sub_10002811C();
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 512);
    v6 = *(v0 + 144);
    v7 = v6[4];
    sub_100001E74(v6, v6[3]);
    sub_1000282FC();
  }

  else
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v8 = sub_10002858C();
    sub_10000AEF4(v8, qword_100034C78);
    v9 = sub_10002856C();
    v10 = sub_10002875C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No existing turn bookmark found. A new bookmark will be created and only the last 24hrs of data will be reviewed.", v11, 2u);
    }

    v12 = *(v0 + 512);
    v14 = *(v0 + 312);
    v13 = *(v0 + 320);
    v15 = *(v0 + 296);
    v16 = *(v0 + 304);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);

    sub_100027D6C();
    sub_100027FBC();
    (*(v16 + 16))(v14, v13, v15);
    v19 = sub_100027FAC();
    v20 = v18[4];
    sub_100001E74(v18, v18[3]);
    sub_1000282FC();

    (*(v16 + 8))(v13, v15);
  }

  v22 = *(v0 + 504);
  v21 = *(v0 + 512);
  v23 = *(v0 + 488);
  v24 = *(v0 + 496);
  v25 = *(v0 + 480);
  v69 = *(v0 + 464);
  v96 = *(v0 + 448);
  v84 = *(v0 + 440);
  v86 = *(v0 + 432);
  v90 = *(v0 + 424);
  v92 = *(v0 + 416);
  v71 = *(v0 + 408);
  v72 = *(v0 + 400);
  v70 = *(v0 + 392);
  v94 = *(v0 + 384);
  v26 = *(v0 + 360);
  v75 = *(v0 + 376);
  v76 = *(v0 + 352);
  v78 = *(v0 + 368);
  v80 = *(v0 + 344);
  v82 = *(v0 + 336);
  v88 = *(v0 + 328);
  v73 = *(v0 + 176);
  v74 = *(v0 + 224);
  v67 = *(v0 + 136);
  v68 = *(v0 + 152);
  v27 = swift_allocObject();
  *(v0 + 520) = v27;
  *(v27 + 16) = 0;
  (*(v24 + 16))(v22, v21, v23);
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1000295C8;
  *(v28 + 24) = v27;
  sub_1000284AC();
  sub_10000EC9C(&qword_100034E78, &qword_100034E70, &qword_1000295B8);

  sub_1000288BC();
  v29 = sub_100027EFC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_100027EEC();
  sub_1000102B8(v67, v0 + 16);
  sub_1000283AC();
  sub_10000EC9C(&qword_100034E80, &qword_100034E68, &qword_1000295B0);
  sub_10002870C();
  sub_1000102B8(v68, v0 + 56);
  (*(v70 + 16))(v71, v92, v94);
  v33 = (*(v70 + 80) + 72) & ~*(v70 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v73;
  sub_10000EB50((v0 + 56), v34 + 32);
  (*(v70 + 32))(v34 + v33, v71, v94);
  *(v34 + ((v72 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v73;
  sub_10000EC9C(&qword_100034E88, &qword_100034E48, &qword_100029590);

  sub_10002891C();
  sub_10000EC9C(&qword_100034E90, &qword_100034E50, &qword_100029598);
  sub_1000280BC();
  (*(v84 + 16))(v80, v96, v86);
  sub_10000ED84(v80, v82, &qword_100034E40, &qword_100029588);
  sub_10000EC9C(&qword_100034E98, &qword_100034E40, &qword_100029588);
  sub_1000280BC();

  sub_10000EDEC(v80, &qword_100034E40, &qword_100029588);
  v35 = *(v84 + 8);
  *(v0 + 528) = v35;
  *(v0 + 536) = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v96, v86);
  (*(v70 + 8))(v92, v94);
  (*(v84 + 56))(v90, 0, 1, v86);
  if ((*(v84 + 48))(v90, 1, v86) == 1)
  {
    sub_10000EDEC(*(v0 + 424), &qword_100034E58, &qword_1000295A0);
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v36 = sub_10002858C();
    sub_10000AEF4(v36, qword_100034C78);
    v37 = sub_10002856C();
    v38 = sub_10002876C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to extract featurised turns", v39, 2u);
    }

    v40 = *(v0 + 512);
    v41 = *(v0 + 488);
    v42 = *(v0 + 496);
    v44 = *(v0 + 472);
    v43 = *(v0 + 480);
    v45 = *(v0 + 464);

    (*(v44 + 8))(v43, v45);
    (*(v42 + 8))(v40, v41);

    v47 = *(v0 + 504);
    v46 = *(v0 + 512);
    v48 = *(v0 + 480);
    v50 = *(v0 + 448);
    v49 = *(v0 + 456);
    v52 = *(v0 + 416);
    v51 = *(v0 + 424);
    v53 = *(v0 + 408);
    v54 = *(v0 + 376);
    v55 = *(v0 + 360);
    v77 = *(v0 + 344);
    v79 = *(v0 + 336);
    v81 = *(v0 + 320);
    v83 = *(v0 + 312);
    v85 = *(v0 + 288);
    v87 = *(v0 + 264);
    v89 = *(v0 + 240);
    v91 = *(v0 + 216);
    v93 = *(v0 + 208);
    v95 = *(v0 + 200);
    v97 = *(v0 + 192);

    v56 = *(v0 + 8);

    return v56(0, _swiftEmptyArrayStorage);
  }

  else
  {
    v58 = *(v0 + 288);
    v60 = *(v0 + 256);
    v59 = *(v0 + 264);
    v61 = *(v0 + 248);
    (*(*(v0 + 440) + 32))(*(v0 + 456), *(v0 + 424), *(v0 + 432));
    sub_10000EC9C(&qword_100034EA0, &qword_100034E60, &qword_1000295A8);
    sub_10002871C();
    sub_10002817C();
    (*(v60 + 8))(v59, v61);
    *(v0 + 544) = _swiftEmptyArrayStorage;
    v62 = sub_10000EC9C(&qword_100034EA8, &qword_100034E38, &qword_100029580);
    v63 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v64 = swift_task_alloc();
    *(v0 + 552) = v64;
    *v64 = v0;
    v64[1] = sub_100003600;
    v65 = *(v0 + 288);
    v66 = *(v0 + 272);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 120, v66, v62);
  }
}

uint64_t sub_100003600()
{
  v2 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = sub_100003D94;
  }

  else
  {
    v3 = sub_100003714;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100003738()
{
  v1 = v0[71];
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(v1 + 16);
    if (!v3)
    {
      v33 = v2;

      if (qword_100034AA0 != -1)
      {
        swift_once();
      }

      v34 = sub_10002858C();
      sub_10000AEF4(v34, qword_100034C78);
      v35 = sub_10002856C();
      v36 = sub_10002876C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "The turn window received from the sequence is empty, skipping the current iteration", v37, 2u);
      }

      v38 = v0[68];
      v39 = v33;
      goto LABEL_21;
    }

    v77 = v2;
    v4 = *(v0[29] + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    sub_10000E558(v5, v0[30], type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[27];
    v9 = (v6 + 56);
    if (v3 == 1)
    {
      v10 = *v9;
      (*v9)(v0[27], 1, 1, v0[28]);
    }

    else
    {
      v40 = *(v6 + 72);
      sub_10000E558(v5 + v40, v0[27], type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v10 = *(v6 + 56);
      v10(v8, 0, 1, v7);
      if (v3 >= 3)
      {
        v41 = v0[28];
        v42 = v0[26];
        v43 = v0[29] + 56;
        sub_10000E558(v5 + 2 * v40, v42, type metadata accessor for UniversalSuggestionsFeaturisedTurn);

        v10(v42, 0, 1, v41);
LABEL_16:
        v47 = v0[68];
        v49 = v0[24];
        v48 = v0[25];
        v50 = v0[22];
        sub_100004C08(v0[30], v0[27], v0[26], v0[17], v48);
        sub_10000E558(v48, v49, type metadata accessor for RequestLinkedModelUpdateStep);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v0[68];
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_100026C9C(0, *(v38 + 16) + 1, 1, v0[68]);
        }

        v53 = *(v38 + 16);
        v52 = *(v38 + 24);
        if (v53 >= v52 >> 1)
        {
          v38 = sub_100026C9C(v52 > 1, v53 + 1, 1, v38);
        }

        v54 = v0[30];
        v56 = v0[26];
        v55 = v0[27];
        v57 = v0[24];
        v58 = v0[23];
        sub_10000E5C0(v0[25], type metadata accessor for RequestLinkedModelUpdateStep);
        sub_10000EDEC(v56, &qword_100034E28, &qword_100029570);
        sub_10000EDEC(v55, &qword_100034E28, &qword_100029570);
        sub_10000E5C0(v54, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        *(v38 + 16) = v53 + 1;
        sub_10000E620(v57, v38 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v53, type metadata accessor for RequestLinkedModelUpdateStep);
        v39 = v77;
LABEL_21:
        objc_autoreleasePoolPop(v39);
        v0[68] = v38;
        v59 = sub_10000EC9C(&qword_100034EA8, &qword_100034E38, &qword_100029580);
        v60 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v61 = swift_task_alloc();
        v0[69] = v61;
        *v61 = v0;
        v61[1] = sub_100003600;
        v62 = v0[36];
        v63 = v0[34];

        return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 15, v63, v59);
      }
    }

    v44 = v0[28];
    v45 = v0[29];
    v46 = v0[26];

    v10(v46, 1, 1, v44);
    goto LABEL_16;
  }

  v11 = v0[67];
  v12 = v0[66];
  v13 = v0[65];
  v78 = v0[64];
  v14 = v0[62];
  v75 = v0[61];
  v15 = v0[59];
  v16 = v0[60];
  v18 = v0[57];
  v17 = v0[58];
  v19 = v0[54];
  (*(v0[35] + 8))(v0[36], v0[34]);
  v12(v18, v19);
  (*(v15 + 8))(v16, v17);
  (*(v14 + 8))(v78, v75);
  swift_beginAccess();
  v79 = *(v13 + 16);
  v20 = v79;

  v76 = v0[68];
  v22 = v0[63];
  v21 = v0[64];
  v23 = v0[60];
  v25 = v0[56];
  v24 = v0[57];
  v27 = v0[52];
  v26 = v0[53];
  v28 = v0[51];
  v29 = v0[47];
  v30 = v0[45];
  v64 = v0[43];
  v65 = v0[42];
  v66 = v0[40];
  v67 = v0[39];
  v68 = v0[36];
  v69 = v0[33];
  v70 = v0[30];
  v71 = v0[27];
  v72 = v0[26];
  v73 = v0[25];
  v74 = v0[24];

  v31 = v0[1];

  return v31(v79, v76);
}

uint64_t sub_100003D94()
{
  *(v0 + 128) = *(v0 + 560);
  sub_100001DBC(&qword_100034EB0, &qword_1000295F0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100003E28, 0, 0);
}

uint64_t sub_100003E28()
{
  v1 = v0[67];
  v2 = v0[66];
  v15 = v0[68];
  v16 = v0[65];
  v3 = v0[64];
  v4 = v0[62];
  v14 = v0[61];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[57];
  v8 = v0[58];
  v17 = v0[63];
  v18 = v0[56];
  v9 = v0[54];
  v19 = v0[53];
  v20 = v0[52];
  v21 = v0[51];
  v22 = v0[47];
  v25 = v0[43];
  v26 = v0[42];
  v27 = v0[40];
  v28 = v0[39];
  v23 = v0[45];
  v24 = v0[36];
  v10 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[27];
  v32 = v0[26];
  v33 = v0[25];
  v34 = v0[24];
  (*(v0[35] + 8))();
  v2(v7, v9);
  (*(v6 + 8))(v5, v8);
  (*(v4 + 8))(v3, v14);

  v11 = v0[1];
  v12 = v0[70];

  return v11();
}

uint64_t sub_100004028(uint64_t a1)
{
  v62 = sub_10002836C();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v62);
  v61 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000282EC();
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v60);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000280AC();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v53);
  v52 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = &v46 - v12;
  updated = type metadata accessor for ModelUpdateStep(0);
  v13 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for RequestLinkedModelUpdateStep(0);
  v16 = *(*(v66 - 8) + 64);
  result = __chkstk_darwin(v66);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = v63[23];
    v23 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v64 = *(v18 + 72);
    v65 = v22;
    v57 = (v5 + 32);
    v50 = enum case for UniversalSuggestionFeedbackAction.markSurfaced(_:);
    v55 = (v2 + 8);
    v56 = (v2 + 104);
    v54 = (v5 + 8);
    v49 = enum case for UniversalSuggestionFeedbackAction.demote(_:);
    v48 = enum case for UniversalSuggestionFeedbackAction.promote(_:);
    v46 = (v8 + 8);
    v47 = (v8 + 32);
    v58 = v15;
    do
    {
      sub_10000E558(v23, v20, type metadata accessor for RequestLinkedModelUpdateStep);
      v34 = v66;
      sub_10000DB04(v20, v65, &v20[*(v66 + 24)]);
      sub_10000E558(&v20[*(v34 + 20)], v15, type metadata accessor for ModelUpdateStep);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v38 = *(sub_100001DBC(&qword_100034E08, &unk_100029550) + 48);
          v39 = *v47;
          v40 = v51;
          v41 = v53;
          (*v47)(v51, v15, v53);
          v42 = v52;
          v39(v52, &v15[v38], v41);
          sub_100004630(v20);
          v43 = *v46;
          (*v46)(v42, v41);
          v43(v40, v41);
          goto LABEL_6;
        }

        v24 = v59;
        v44 = v15;
        v26 = v60;
        (*v57)(v59, v44, v60);
        v45 = v63[6];
        sub_100001E74(v63 + 2, v63[5]);
        v29 = v61;
        v32 = v62;
        (*v56)(v61, v48, v62);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v24 = v59;
          v25 = v15;
          v26 = v60;
          (*v57)(v59, v25, v60);
          v27 = v63[6];
          sub_100001E74(v63 + 2, v63[5]);
          v28 = *v56;
          v29 = v61;
          v30 = v61;
          v31 = v49;
        }

        else
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_6;
          }

          v24 = v59;
          v36 = v15;
          v26 = v60;
          (*v57)(v59, v36, v60);
          v37 = v63[6];
          sub_100001E74(v63 + 2, v63[5]);
          v28 = *v56;
          v29 = v61;
          v30 = v61;
          v31 = v50;
        }

        v32 = v62;
        v28(v30, v31, v62);
      }

      sub_10002824C();
      (*v55)(v29, v32);
      v33 = v26;
      v15 = v58;
      (*v54)(v24, v33);
LABEL_6:
      result = sub_10000E5C0(v20, type metadata accessor for RequestLinkedModelUpdateStep);
      v23 += v64;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t sub_100004630(uint64_t a1)
{
  v21 = a1;
  v22 = sub_10002830C();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002844C();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = v1[6];
  sub_100001E74(v1 + 2, v1[5]);
  sub_10002823C();
  sub_10000E558(v12, v10, &type metadata accessor for UniversalSuggestionCandidateDonationResult);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v16 = sub_10002858C();
    sub_10000AEF4(v16, qword_100034C78);
    v17 = sub_10002856C();
    v18 = sub_10002876C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not donate suggestion to shared Universal Suggestions store", v19, 2u);
    }
  }

  else
  {
    v14 = v22;
    (*(v2 + 32))(v5, v10, v22);
    v15 = v1[23];
    sub_1000283DC();
    (*(v2 + 8))(v5, v14);
  }

  return sub_10000E5C0(v12, &type metadata accessor for UniversalSuggestionCandidateDonationResult);
}

uint64_t sub_10000492C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_100004950, 0, 0);
}

uint64_t sub_100004950()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v1 + 16) = v2;
  v5 = v2;

  v8 = v0[1];

  v6 = v0[5];

  return v8(v6);
}

uint64_t sub_1000049F8(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_100004AF8;

  return v9(v4, v5);
}

uint64_t sub_100004AF8(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100004C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v146 = a4;
  v145 = a3;
  v152 = a5;
  v124 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  v7 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v123 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v134 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100027DAC();
  v151 = *(v12 - 8);
  v13 = *(v151 + 64);
  __chkstk_darwin(v12);
  v127 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1000282EC();
  v128 = *(v129 - 8);
  v15 = *(v128 + 64);
  __chkstk_darwin(v129);
  v135 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v139 = &v119 - v19;
  v140 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
  v138 = *(v140 - 8);
  v20 = *(v138 + 64);
  __chkstk_darwin(v140);
  v126 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ModelUpdateStep(0);
  v22 = *(*(updated - 8) + 64);
  v23 = __chkstk_darwin(updated);
  v141 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v150 = &v119 - v25;
  v26 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v144 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1000280AC();
  v132 = *(v133 - 8);
  v29 = *(v132 + 64);
  v30 = __chkstk_darwin(v133);
  v131 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v130 = &v119 - v32;
  v143 = type metadata accessor for UniversalSuggestionRequestState(0);
  v33 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v154 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UniversalSuggestionRequestTaskState(0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v148 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
  v38 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v157 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v40 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v136 = &v119 - v41;
  v42 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v46 = &v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v119 - v47;
  v156 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v49 = *(v156 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v156);
  v52 = &v119 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v53 = sub_10002858C();
  v54 = sub_10000AEF4(v53, qword_100034C78);
  v155 = a1;
  sub_10000E558(a1, v52, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v147 = a2;
  sub_10000ED84(a2, v48, &qword_100034E28, &qword_100029570);
  v125 = v54;
  v55 = sub_10002856C();
  v56 = sub_10002875C();
  v57 = os_log_type_enabled(v55, v56);
  v153 = v12;
  if (v57)
  {
    v121 = v56;
    v122 = v35;
    v58 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *&v158 = v120;
    *v58 = 136315394;
    v59 = v156;
    v60 = *(v156 + 20);
    sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID);
    v61 = sub_1000288EC();
    v63 = v62;
    sub_10000E5C0(v52, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v64 = sub_100027364(v61, v63, &v158);

    *(v58 + 4) = v64;
    *(v58 + 12) = 2080;
    sub_10000ED84(v48, v46, &qword_100034E28, &qword_100029570);
    if ((*(v49 + 48))(v46, 1, v59) == 1)
    {
      sub_10000EDEC(v46, &qword_100034E28, &qword_100029570);
      v65 = 1;
      v66 = v151;
      v67 = v144;
      v68 = v136;
    }

    else
    {
      v70 = *(v59 + 20);
      v66 = v151;
      v68 = v136;
      (*(v151 + 16))(v136, &v46[v70], v12);
      sub_10000E5C0(v46, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v65 = 0;
      v67 = v144;
    }

    (*(v66 + 56))(v68, v65, 1, v12);
    v71 = sub_10002861C();
    v73 = v72;
    sub_10000EDEC(v48, &qword_100034E28, &qword_100029570);
    v74 = sub_100027364(v71, v73, &v158);

    *(v58 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v55, v121, "Analysing request pair: %s -> %s", v58, 0x16u);
    swift_arrayDestroy();

    v69 = v154;
    v35 = v122;
  }

  else
  {

    sub_10000EDEC(v48, &qword_100034E28, &qword_100029570);
    sub_10000E5C0(v52, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v66 = v151;
    v69 = v154;
    v67 = v144;
  }

  v75 = v157;
  v76 = v155;
  v77 = v147;
  sub_100005D94(v155, v147, v145, v157);
  sub_1000102B8(v146, &v158);
  type metadata accessor for UniversalSuggestionsRequestTaskStateExtractor();
  inited = swift_initStackObject();
  sub_10000EB50(&v158, inited + 16);
  v79 = v148;
  sub_100016EF0(v76, v77, v148);
  swift_setDeallocating();
  sub_100001EB8((inited + 16));
  sub_10000E558(v75, v69, type metadata accessor for UniversalSuggestionCorrectionDiscovered);
  v80 = v69 + *(v143 + 20);
  sub_10000E558(v79, v80, type metadata accessor for UniversalSuggestionRequestTaskState);
  sub_10000E558(v69 + *(v142 + 24), v67, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  v81 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v82 = (*(*(v81 - 8) + 48))(v67, 2, v81);
  v83 = v150;
  if (!v82)
  {
    sub_10000E5C0(v79, type metadata accessor for UniversalSuggestionRequestTaskState);
    sub_10000E5C0(v75, type metadata accessor for UniversalSuggestionCorrectionDiscovered);
    v86 = *(v81 + 48);
    v87 = *(v132 + 32);
    v88 = v130;
    v89 = v67;
    v90 = v67;
    v91 = v133;
    v87(v130, v89, v133);
    v92 = v131;
    v87(v131, v90 + v86, v91);
    v93 = type metadata accessor for RequestLinkedModelUpdateStep(0);
    v94 = v152;
    v95 = (v152 + *(v93 + 20));
    v96 = *(v81 + 48);
    v87(v95, v88, v91);
    v87(&v95[v96], v92, v91);
    swift_storeEnumTagMultiPayload();
    (*(v66 + 16))(v94, v155 + *(v156 + 20), v153);
    v97 = type metadata accessor for UniversalSuggestionRequestState;
    v98 = v94 + *(v93 + 24);
    v99 = v154;
    return sub_10000E620(v99, v98, v97);
  }

  sub_10000E5C0(v67, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  swift_storeEnumTagMultiPayload();
  v84 = v139;
  sub_10000ED84(v80 + *(v35 + 20), v139, &qword_100034E10, &qword_100029AF0);
  v85 = v140;
  if ((*(v138 + 48))(v84, 1, v140) == 1)
  {
    sub_10000EDEC(v84, &qword_100034E10, &qword_100029AF0);
  }

  else
  {
    v100 = v126;
    sub_10000E620(v84, v126, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
    v101 = type metadata accessor for UniversalSuggestionItem(0);
    (*(v66 + 16))(v127, v100 + *(v101 + 24), v153);
    v102 = *(v100 + 16);
    v103 = *(v100 + 24);
    v104 = v135;
    sub_1000282CC();
    v105 = v134;
    sub_10000E558(v100 + *(v85 + 20), v134, type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState);
    sub_10000E5C0(v100, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
    v106 = sub_100001DBC(&qword_100034E18, &qword_100029560);
    v107 = (*(*(v106 - 8) + 48))(v105, 3, v106);
    if ((v107 - 2) >= 2)
    {
      if (v107)
      {
        (*(v128 + 8))(v104, v129);
        goto LABEL_19;
      }

      sub_10000E5C0(v83, type metadata accessor for ModelUpdateStep);
      v108 = v123;
      sub_10000E620(v134, v123, type metadata accessor for UniversalSuggestionDisambiguationOffered);
      v109 = *(v108 + *(v124 + 20));
      sub_10000E5C0(v108, type metadata accessor for UniversalSuggestionDisambiguationOffered);
      (*(v128 + 32))(v83, v135, v129);
    }

    else
    {
      sub_10000E5C0(v83, type metadata accessor for ModelUpdateStep);
      (*(v128 + 32))(v83, v104, v129);
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_19:
  v110 = v141;
  swift_storeEnumTagMultiPayload();
  v111 = sub_10000B090(v83, v110);
  sub_10000E5C0(v110, type metadata accessor for ModelUpdateStep);
  v112 = v157;
  if (v111)
  {
    v113 = sub_10002856C();
    v114 = sub_10002875C();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "No learnable interactions found between these requests", v115, 2u);
      v112 = v157;
    }
  }

  sub_10000E5C0(v79, type metadata accessor for UniversalSuggestionRequestTaskState);
  sub_10000E5C0(v112, type metadata accessor for UniversalSuggestionCorrectionDiscovered);
  v116 = v152;
  (*(v66 + 16))(v152, v76 + *(v156 + 20), v153);
  v117 = type metadata accessor for RequestLinkedModelUpdateStep(0);
  sub_10000E620(v69, v116 + *(v117 + 24), type metadata accessor for UniversalSuggestionRequestState);
  v97 = type metadata accessor for ModelUpdateStep;
  v98 = v116 + *(v117 + 20);
  v99 = v83;
  return sub_10000E620(v99, v98, v97);
}

uint64_t sub_100005D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v293 = a3;
  v310 = a4;
  v6 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v311 = &v282 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v295 = &v282 - v11;
  v294 = type metadata accessor for UniversalSuggestionsPromptState(0);
  v290 = *(v294 - 8);
  v12 = *(v290 + 64);
  __chkstk_darwin(v294);
  v288 = &v282 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000280AC();
  v15 = *(v14 - 8);
  v298 = v14;
  v299 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v286 = (&v282 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v297 = &v282 - v19;
  v20 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v305 = (&v282 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = &v282 - v24;
  v26 = sub_100027D7C();
  v27 = *(v26 - 8);
  v308 = v26;
  v309 = v27;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v302 = &v282 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v301 = &v282 - v32;
  v33 = __chkstk_darwin(v31);
  v304 = &v282 - v34;
  v35 = __chkstk_darwin(v33);
  v306 = &v282 - v36;
  __chkstk_darwin(v35);
  v307 = &v282 - v37;
  v38 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v289 = &v282 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v287 = &v282 - v44;
  v45 = __chkstk_darwin(v43);
  v285 = &v282 - v46;
  v47 = __chkstk_darwin(v45);
  v300 = &v282 - v48;
  v49 = __chkstk_darwin(v47);
  v296 = &v282 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = &v282 - v52;
  __chkstk_darwin(v51);
  v55 = &v282 - v54;
  v56 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v57 = *(*(v56 - 8) + 64);
  v58 = __chkstk_darwin(v56 - 8);
  v291 = &v282 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v62 = &v282 - v61;
  __chkstk_darwin(v60);
  v313 = &v282 - v63;
  sub_10000ED84(a2, &v282 - v63, &qword_100034E28, &qword_100029570);
  v312 = v55;
  sub_10000E558(a1, v55, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10000ED84(a2, v62, &qword_100034E28, &qword_100029570);
  v64 = *(v39 + 48);
  v303 = v38;
  v292 = v39 + 48;
  if (v64(v62, 1, v38) == 1)
  {
    sub_10000EDEC(v62, &qword_100034E28, &qword_100029570);
    if (qword_100034AA0 == -1)
    {
LABEL_3:
      v65 = sub_10002858C();
      sub_10000AEF4(v65, qword_100034C78);
      v66 = sub_10002856C();
      v67 = sub_10002875C();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v313;
      v70 = v311;
      if (v68)
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Reached end of turn pairs, skipping.", v71, 2u);
      }

      v72 = sub_100001DBC(&qword_100034E08, &unk_100029550);
      (*(*(v72 - 8) + 56))(v70, 1, 2, v72);
      v73 = v312;
      sub_100008328(v70, v69, v312, v310);
      sub_10000E5C0(v70, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
      sub_10000E5C0(v73, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      return sub_10000EDEC(v69, &qword_100034E28, &qword_100029570);
    }

LABEL_92:
    swift_once();
    goto LABEL_3;
  }

  sub_10000E620(v62, v53, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v75 = a1;
  sub_10000ED84(a1, v25, &qword_100034ED0, &qword_100029610);
  v77 = v308;
  v76 = v309;
  v78 = *(v309 + 48);
  if (v78(v25, 1, v308) == 1)
  {
    v79 = v25;
    v80 = v313;
LABEL_10:
    v84 = v311;
    sub_10000EDEC(v79, &qword_100034ED0, &qword_100029610);
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v85 = sub_10002858C();
    sub_10000AEF4(v85, qword_100034C78);
    v86 = sub_10002856C();
    v87 = sub_10002876C();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Skipping turn pair - missing timestamp(s)", v88, 2u);
    }

    v89 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v89 - 8) + 56))(v84, 1, 2, v89);
    v90 = v312;
    sub_100008328(v84, v80, v312, v310);
    sub_10000E5C0(v84, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    sub_10000E5C0(v90, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10000EDEC(v80, &qword_100034E28, &qword_100029570);
    v91 = v53;
    return sub_10000E5C0(v91, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  v283 = v75;
  v81 = *(v76 + 32);
  v82 = v307;
  v81(v307, v25, v77);
  v284 = v53;
  v79 = v305;
  sub_10000ED84(v53, v305, &qword_100034ED0, &qword_100029610);
  v83 = v77;
  if (v78(v79, 1, v77) == 1)
  {
    (*(v309 + 8))(v82, v77);
    v80 = v313;
    v53 = v284;
    goto LABEL_10;
  }

  v81(v306, v79, v77);
  v92 = v304;
  sub_100027D3C();
  sub_10000ED3C(&qword_100034ED8, &type metadata accessor for Date);
  v93 = sub_1000285DC();
  v94 = v309;
  v95 = *(v309 + 8);
  v95(v92, v77);
  if (v93)
  {
    v96 = v82;
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v97 = sub_10002858C();
    sub_10000AEF4(v97, qword_100034C78);
    v98 = *(v94 + 16);
    v99 = v301;
    v98(v301, v82, v83);
    v100 = v302;
    v98(v302, v306, v83);
    v101 = sub_10002856C();
    v102 = sub_10002876C();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v309 = swift_slowAlloc();
      v314 = v309;
      *v103 = 136315394;
      sub_10000ED3C(&qword_100034EE0, &type metadata accessor for Date);
      v104 = v95;
      v105 = sub_1000288EC();
      v106 = v83;
      v108 = v107;
      v95(v99, v106);
      v109 = sub_100027364(v105, v108, &v314);
      v83 = v106;

      *(v103 + 4) = v109;
      *(v103 + 12) = 2080;
      v110 = sub_1000288EC();
      v112 = v111;
      v104(v100, v106);
      v113 = sub_100027364(v110, v112, &v314);
      v95 = v104;
      v96 = v307;

      *(v103 + 14) = v113;
      _os_log_impl(&_mh_execute_header, v101, v102, "Skipping turn pair as they are too far apart in time: %s -> %s", v103, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v95(v100, v83);
      v95(v99, v83);
    }

    v130 = v313;
    v131 = v284;
    v132 = v311;
    v133 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v133 - 8) + 56))(v132, 1, 2, v133);
    v134 = v312;
    sub_100008328(v132, v130, v312, v310);
    sub_10000E5C0(v132, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    v95(v306, v83);
    v95(v96, v83);
    sub_10000E5C0(v134, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10000EDEC(v130, &qword_100034E28, &qword_100029570);
    v91 = v131;
    return sub_10000E5C0(v91, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  v114 = *&v284[v303[7]];
  v305 = v95;
  if (v114 >> 62)
  {
    v115 = sub_1000288CC();
  }

  else
  {
    v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = v300;
  v117 = 0;
  do
  {
    if (v115 == v117)
    {
      goto LABEL_33;
    }

    if ((v114 & 0xC000000000000001) != 0)
    {
      sub_10002883C();
      if (__OFADD__(v117, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        if (qword_100034AA0 != -1)
        {
          swift_once();
        }

        v120 = sub_10002858C();
        sub_10000AEF4(v120, qword_100034C78);
        v121 = sub_10002856C();
        v122 = sub_10002875C();
        v123 = os_log_type_enabled(v121, v122);
        v124 = v313;
        v125 = v284;
        v126 = v311;
        v127 = v308;
        if (v123)
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          v129 = "Next turn doesn't have a correction event, skipping pair...";
          goto LABEL_46;
        }

LABEL_47:

        v147 = sub_100001DBC(&qword_100034E08, &unk_100029550);
        (*(*(v147 - 8) + 56))(v126, 1, 2, v147);
        v148 = v312;
        sub_100008328(v126, v124, v312, v310);
        sub_10000E5C0(v126, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
        v149 = v305;
        v305(v306, v127);
        v149(v307, v127);
        sub_10000E5C0(v148, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        sub_10000EDEC(v124, &qword_100034E28, &qword_100029570);
        v91 = v125;
        return sub_10000E5C0(v91, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      }
    }

    else
    {
      if (v117 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_92;
      }

      v118 = *(v114 + 8 * v117 + 32);

      if (__OFADD__(v117, 1))
      {
        goto LABEL_32;
      }
    }

    v119 = sub_10000B7D8();

    ++v117;
  }

  while ((v119 & 1) == 0);
  v135 = v303;
  v136 = *(v283 + v303[6]);
  if (!*(v136 + 16))
  {
    v125 = v284;
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v145 = sub_10002858C();
    sub_10000AEF4(v145, qword_100034C78);
    v121 = sub_10002856C();
    v122 = sub_10002875C();
    v146 = os_log_type_enabled(v121, v122);
    v124 = v313;
    v126 = v311;
    v127 = v308;
    if (v146)
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      v129 = "Skipping turn because a correction cannot exist as long as the previous turn doesn't have an entity";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v121, v122, v129, v128, 2u);
    }

    goto LABEL_47;
  }

  v137 = *(v299 + 16);
  v137(v297, v136 + ((*(v299 + 80) + 32) & ~*(v299 + 80)), v298);
  v138 = v291;
  sub_10000ED84(v293, v291, &qword_100034E28, &qword_100029570);
  v139 = v64(v138, 1, v135);
  v140 = v284;
  if (v139 == 1)
  {
    sub_10000EDEC(v138, &qword_100034E28, &qword_100029570);
    v141 = v295;
    v142 = v296;
    v143 = v283;
    v144 = v294;
    goto LABEL_51;
  }

  sub_10000E620(v138, v116, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v143 = v283;
  v150 = sub_10000BA9C(v283, v140, v116);
  v141 = v295;
  v142 = v296;
  v144 = v294;
  if (v150)
  {
    sub_10000E620(v116, v296, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  else
  {
    sub_10000E5C0(v116, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
LABEL_51:
    sub_10000E558(v140, v142, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  if (*(v136 + 16) != 1)
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v153 = sub_10002858C();
    sub_10000AEF4(v153, qword_100034C78);
    v154 = v289;
    sub_10000E558(v143, v289, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v155 = sub_10002856C();
    v156 = sub_10002875C();
    v157 = os_log_type_enabled(v155, v156);
    v158 = v313;
    v159 = v311;
    v160 = v308;
    if (v157)
    {
      v161 = swift_slowAlloc();
      *v161 = 134217984;
      v162 = v154;
      v163 = *(*(v154 + v303[6]) + 16);
      sub_10000E5C0(v162, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      *(v161 + 4) = v163;
      _os_log_impl(&_mh_execute_header, v155, v156, "Correctable (first) turn mentioned %ld entities, which is unsupported -> correctedNotLearnable", v161, 0xCu);
    }

    else
    {
      sub_10000E5C0(v154, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    }

    v168 = v312;
    v169 = v310;
    v170 = v307;

    v171 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v171 - 8) + 56))(v159, 2, 2, v171);
    sub_100008328(v159, v158, v168, v169);
    sub_10000E5C0(v159, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v299 + 8))(v297, v298);
    v172 = v305;
    v305(v306, v160);
    v172(v170, v160);
    sub_10000E5C0(v168, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10000EDEC(v158, &qword_100034E28, &qword_100029570);
    v173 = v284;
    goto LABEL_90;
  }

  v151 = v303;
  sub_10000ED84(v142 + v303[10], v141, &qword_100034EC8, &unk_100029AC0);
  if ((*(v290 + 48))(v141, 1, v144) == 1)
  {
    sub_10000EDEC(v141, &qword_100034EC8, &unk_100029AC0);
    v152 = 0;
  }

  else
  {
    v164 = v137;
    v165 = v140;
    v166 = v288;
    sub_10000E620(v141, v288, type metadata accessor for UniversalSuggestionsPromptState);
    v167 = sub_1000089D8(*(v166 + *(v144 + 20)));
    sub_10000E5C0(v166, type metadata accessor for UniversalSuggestionsPromptState);
    if (v167 == 2)
    {
      v152 = 1;
    }

    else
    {
      v152 = v167 ^ 1;
    }

    v151 = v303;
    v140 = v165;
    v137 = v164;
  }

  v174 = *(*(v142 + v151[6]) + 16);
  if (v174 != 1 && (v152 & (v174 == 0)) == 0)
  {
    v175 = v313;
    v176 = v311;
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v177 = sub_10002858C();
    sub_10000AEF4(v177, qword_100034C78);
    v178 = v287;
    sub_10000E558(v142, v287, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v179 = sub_10002856C();
    v180 = sub_10002875C();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = v178;
      v183 = v181;
      *v181 = 134218240;
      v184 = *(*(v182 + v303[6]) + 16);
      sub_10000E5C0(v182, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      *(v183 + 1) = v184;
      v140 = v284;
      *(v183 + 6) = 1024;
      *(v183 + 14) = v152 & 1;
      _os_log_impl(&_mh_execute_header, v179, v180, "Correction (second) turn mentioned %ld entities and didDetectTouchInteraction=%{BOOL}d, which is unsupported -> correctedNotLearnable", v183, 0x12u);
    }

    else
    {
      sub_10000E5C0(v178, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    }

    v216 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v216 - 8) + 56))(v176, 2, 2, v216);
    v217 = v312;
    sub_100008328(v176, v175, v312, v310);
    sub_10000E5C0(v176, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v299 + 8))(v297, v298);
    v218 = v305;
    v219 = v308;
    v305(v306, v308);
    v218(v307, v219);
    sub_10000E5C0(v217, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v215 = v175;
    goto LABEL_89;
  }

  v185 = v151[8];
  v186 = v143 + v185;
  v187 = *(v143 + v185);
  if (!v187 || (v188 = (v142 + v185), (v189 = *v188) == 0))
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v204 = sub_10002858C();
    sub_10000AEF4(v204, qword_100034C78);
    v205 = sub_10002856C();
    v206 = sub_10002875C();
    v207 = os_log_type_enabled(v205, v206);
    v208 = v313;
    v209 = v311;
    v210 = v308;
    if (v207)
    {
      v211 = swift_slowAlloc();
      *v211 = 0;
      _os_log_impl(&_mh_execute_header, v205, v206, "Could not read control home intents from turns, skipping pair...", v211, 2u);
    }

    v212 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    (*(*(v212 - 8) + 56))(v209, 2, 2, v212);
    v213 = v312;
    sub_100008328(v209, v208, v312, v310);
    sub_10000E5C0(v209, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    (*(v299 + 8))(v297, v298);
    v214 = v305;
    v305(v306, v210);
    v214(v307, v210);
    sub_10000E5C0(v213, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v215 = v208;
LABEL_89:
    sub_10000EDEC(v215, &qword_100034E28, &qword_100029570);
    v173 = v140;
LABEL_90:
    sub_10000E5C0(v173, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v91 = v142;
    return sub_10000E5C0(v91, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  v190 = *(v186 + 8);
  v191 = v188[1];
  if (v191 >> 62)
  {
    if ((v191 & 0x8000000000000000) != 0)
    {
      v266 = v188[1];
    }

    v267 = v187;
    v268 = v190;
    v269 = sub_1000288CC();
    v190 = v268;
    v270 = v269;
    v187 = v267;
    if (v270 != 1)
    {
      goto LABEL_118;
    }

LABEL_75:
    if (sub_10000CB3C(v187, v190) & 1) != 0 || (sub_10000CB3C(v189, v191))
    {
      if (qword_100034AA0 != -1)
      {
        swift_once();
      }

      v192 = sub_10002858C();
      sub_10000AEF4(v192, qword_100034C78);
      v193 = sub_10002856C();
      v194 = sub_10002875C();
      v195 = os_log_type_enabled(v193, v194);
      v196 = v313;
      v197 = v311;
      v198 = v308;
      if (v195)
      {
        v199 = swift_slowAlloc();
        *v199 = 0;
        _os_log_impl(&_mh_execute_header, v193, v194, "Turns contain unsupported types of entities, skipping pair...", v199, 2u);
      }

      v200 = sub_100001DBC(&qword_100034E08, &unk_100029550);
      (*(*(v200 - 8) + 56))(v197, 2, 2, v200);
      v201 = v312;
      sub_100008328(v197, v196, v312, v310);
      sub_10000E5C0(v197, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
      (*(v299 + 8))(v297, v298);
      v202 = v305;
      v305(v306, v198);
      v202(v307, v198);
      sub_10000E5C0(v201, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v203 = v196;
      goto LABEL_127;
    }

    v220 = sub_10000CE10(v191);
    if (!v220)
    {
      if (qword_100034AA0 != -1)
      {
        swift_once();
      }

      v239 = sub_10002858C();
      sub_10000AEF4(v239, qword_100034C78);
      v240 = sub_10002856C();
      v241 = sub_10002875C();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        *v242 = 0;
        _os_log_impl(&_mh_execute_header, v240, v241, "Skipping generating correction: no entity could be built from control home intent response", v242, 2u);
      }

      v243 = sub_100001DBC(&qword_100034E08, &unk_100029550);
      v244 = v311;
      (*(*(v243 - 8) + 56))(v311, 2, 2, v243);
      v246 = v312;
      v245 = v313;
      sub_100008328(v244, v313, v312, v310);
      sub_10000E5C0(v244, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
      (*(v299 + 8))(v297, v298);
      goto LABEL_114;
    }

    *v286 = v220;
    (*(v299 + 104))();

    v221 = sub_10002809C();
    if (v222)
    {
      v223 = v221;
      v224 = v222;
      v309 = v137;
      v304 = sub_10002809C();
      if (v225)
      {
        v226 = v225;
        if (qword_100034AA0 != -1)
        {
          swift_once();
        }

        v227 = sub_10002858C();
        sub_10000AEF4(v227, qword_100034C78);
        sub_10000E558(v283, v285, type metadata accessor for UniversalSuggestionsFeaturisedTurn);

        v228 = sub_10002856C();
        v229 = sub_10002875C();

        LODWORD(v302) = v229;
        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          v314 = swift_slowAlloc();
          *v230 = 136315650;
          v231 = sub_100027364(v223, v224, &v314);

          *(v230 + 4) = v231;
          *(v230 + 12) = 2080;
          v232 = sub_100027364(v304, v226, &v314);

          *(v230 + 14) = v232;
          *(v230 + 22) = 2080;
          v233 = v285;
          v234 = v285 + v303[5];
          v235 = sub_100027D8C();
          v237 = v236;
          sub_10000E5C0(v233, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v238 = sub_100027364(v235, v237, &v314);

          *(v230 + 24) = v238;
          _os_log_impl(&_mh_execute_header, v228, v302, "Found a correction response in request %s -> %s, requestId=%s", v230, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_10000E5C0(v285, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        }

        v255 = sub_100001DBC(&qword_100034E08, &unk_100029550);
        v256 = *(v255 + 48);
        v257 = v311;
        v259 = v297;
        v258 = v298;
        v260 = v309;
        (v309)(v311, v297, v298);
        v261 = v286;
        v260(v257 + v256, v286, v258);
        (*(*(v255 - 8) + 56))(v257, 0, 2, v255);
        v246 = v312;
        v245 = v313;
        sub_100008328(v257, v313, v312, v310);

        sub_10000E5C0(v257, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
        v262 = *(v299 + 8);
        v262(v261, v258);
        v262(v259, v258);
LABEL_114:
        v263 = v305;
        v264 = v308;
        v305(v306, v308);
        v263(v307, v264);
        sub_10000E5C0(v246, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        sub_10000EDEC(v245, &qword_100034E28, &qword_100029570);
        v265 = v284;
        goto LABEL_128;
      }
    }

    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v247 = sub_10002858C();
    sub_10000AEF4(v247, qword_100034C78);
    v248 = sub_10002856C();
    v249 = sub_10002875C();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      *v250 = 0;
      _os_log_impl(&_mh_execute_header, v248, v249, "Skipping generating correction: could not extract names from the entities", v250, 2u);
    }

    v251 = sub_100001DBC(&qword_100034E08, &unk_100029550);
    v252 = v311;
    (*(*(v251 - 8) + 56))(v311, 2, 2, v251);
    v246 = v312;
    v245 = v313;
    sub_100008328(v252, v313, v312, v310);

    sub_10000E5C0(v252, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    v253 = v298;
    v254 = *(v299 + 8);
    v254(v286, v298);
    v254(v297, v253);
    goto LABEL_114;
  }

  if (*((v191 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_75;
  }

LABEL_118:
  v271 = v313;
  v272 = v311;
  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v273 = sub_10002858C();
  sub_10000AEF4(v273, qword_100034C78);

  v274 = sub_10002856C();
  v275 = sub_10002875C();
  if (os_log_type_enabled(v274, v275))
  {
    v276 = swift_slowAlloc();
    *v276 = 134217984;
    if (v191 >> 62)
    {
      v277 = sub_1000288CC();
    }

    else
    {
      v277 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v276 + 4) = v277;

    _os_log_impl(&_mh_execute_header, v274, v275, "Correction (second) turn contains %ld resolved entities, which is unsupported -> correctedNotLearnable", v276, 0xCu);

    v140 = v284;
  }

  else
  {
  }

  v278 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  (*(*(v278 - 8) + 56))(v272, 2, 2, v278);
  v279 = v312;
  sub_100008328(v272, v271, v312, v310);
  sub_10000E5C0(v272, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  (*(v299 + 8))(v297, v298);
  v280 = v305;
  v281 = v308;
  v305(v306, v308);
  v280(v307, v281);
  sub_10000E5C0(v279, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v203 = v271;
LABEL_127:
  sub_10000EDEC(v203, &qword_100034E28, &qword_100029570);
  v265 = v140;
LABEL_128:
  sub_10000E5C0(v265, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v91 = v296;
  return sub_10000E5C0(v91, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
}

uint64_t sub_100008328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  v20 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  (*(*(v20 - 8) + 56))(v15, 1, 2, v20);
  v21 = sub_10001FDA0(a1, v15);
  sub_10000E5C0(v15, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  if ((v21 & 1) == 0)
  {
    sub_10000ED84(a2, v11, &qword_100034E28, &qword_100029570);
    v22 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
    if ((*(*(v22 - 8) + 48))(v11, 1, v22) != 1)
    {
      v24 = *(v22 + 20);
      v23 = sub_100027DAC();
      v25 = *(v23 - 8);
      (*(v25 + 16))(v19, &v11[v24], v23);
      sub_10000E5C0(v11, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v25 + 56))(v19, 0, 1, v23);
      goto LABEL_6;
    }

    sub_10000EDEC(v11, &qword_100034E28, &qword_100029570);
  }

  v23 = sub_100027DAC();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
LABEL_6:
  v26 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
  sub_100027DAC();
  (*(*(v23 - 8) + 16))(a4, a3 + v26, v23);
  v27 = type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
  sub_100010250(v19, a4 + *(v27 + 20), &qword_100034EB8, &qword_1000295F8);
  return sub_10000E558(a1, a4 + *(v27 + 24), type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
}

uint64_t sub_1000086D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_1000287CC();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_10000AFD0(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_100027DAC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1000087C0(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v4, &v7);
      sub_1000102B8(&v7, v9);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_10000ED84(v9, &v7, &qword_100034EF0, &qword_100029620);
  if (v8)
  {
    sub_100001DBC(&qword_100035D50, &qword_100029618);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_1000280DC();

      sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
    v6 = &v7;
  }

  sub_10000EDEC(v6, &qword_100034EF0, &qword_100029620);
  return 0;
}

uint64_t sub_1000089D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v2, &v5);
      sub_1000102B8(&v5, v7);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      sub_100027F8C();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_10000ED84(v7, &v5, &qword_100034EF0, &qword_100029620);
  if (v6)
  {
    sub_100001DBC(&qword_100035D50, &qword_100029618);
    sub_100027F8C();
    if (swift_dynamicCast())
    {

      sub_1000280DC();

      sub_10000EDEC(v7, &qword_100034EF0, &qword_100029620);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_10000EDEC(v7, &qword_100034EF0, &qword_100029620);
    v4 = &v5;
  }

  sub_10000EDEC(v4, &qword_100034EF0, &qword_100029620);
  return 2;
}

unint64_t sub_100008B98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v2, &v7);
      sub_1000102B8(&v7, v9);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      sub_10002816C();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v7);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_10000ED84(v9, &v7, &qword_100034EF0, &qword_100029620);
  if (!v8)
  {
    sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
    v5 = &v7;
LABEL_12:
    sub_10000EDEC(v5, &qword_100034EF0, &qword_100029620);
    v4 = 0;
    v3 = 1;
    return v4 | (v3 << 32);
  }

  sub_100001DBC(&qword_100035D50, &qword_100029618);
  sub_10002816C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = v9;
    goto LABEL_12;
  }

  sub_1000280DC();

  sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
  v3 = 0;
  v4 = v7;
  return v4 | (v3 << 32);
}

uint64_t sub_100008D6C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v8, &v13);
      sub_1000102B8(&v13, v15);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v13);
      v8 += 40;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v13, v15);
  }

  else
  {
LABEL_5:
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_10000ED84(v15, &v13, &qword_100034EF0, &qword_100029620);
  if (!v14)
  {
    sub_10000EDEC(v15, &qword_100034EF0, &qword_100029620);
    v10 = &v13;
LABEL_12:
    sub_10000EDEC(v10, &qword_100034EF0, &qword_100029620);
    v9 = 1;
    goto LABEL_13;
  }

  sub_100001DBC(&qword_100035D50, &qword_100029618);
  a2(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = v15;
    goto LABEL_12;
  }

  sub_1000280DC();

  sub_10000EDEC(v15, &qword_100034EF0, &qword_100029620);
  v9 = 0;
LABEL_13:
  v11 = a3(0);
  return (*(*(v11 - 8) + 56))(a4, v9, 1, v11);
}

uint64_t sub_100008F8C(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_1000102B8(v4, &v7);
      sub_1000102B8(&v7, v9);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100001EB8(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_10000EB50(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_10000ED84(v9, &v7, &qword_100034EF0, &qword_100029620);
  if (v8)
  {
    sub_100001DBC(&qword_100035D50, &qword_100029618);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_1000280DC();

      sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_10000EDEC(v9, &qword_100034EF0, &qword_100029620);
    v6 = &v7;
  }

  sub_10000EDEC(v6, &qword_100034EF0, &qword_100029620);
  return 0;
}

uint64_t sub_100009158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a1;
  v7[4] = a3;
  v8 = a2[1];
  v7[9] = *a2;
  v7[10] = v8;
  return _swift_task_switch(sub_100009188, 0, 0);
}

uint64_t sub_100009188()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = objc_autoreleasePoolPush();
  sub_100009268(v2, v1, v5, v4, (v0 + 16), v8);
  objc_autoreleasePoolPop(v9);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100009268@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(char *, char *, uint64_t)@<X4>, uint64_t a4@<X5>, id *a5@<X7>, uint64_t a6@<X8>)
{
  v192 = a5;
  v189 = a4;
  v204 = a3;
  v205 = a2;
  v199 = a6;
  v186 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v7 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v185 = &v178 - v8;
  v9 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v188 = &v178 - v11;
  v12 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v187 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  *&v206 = &v178 - v17;
  __chkstk_darwin(v16);
  v19 = &v178 - v18;
  v20 = sub_100027DAC();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v184 = &v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v190 = &v178 - v26;
  v27 = __chkstk_darwin(v25);
  v200 = &v178 - v28;
  v29 = __chkstk_darwin(v27);
  v195 = &v178 - v30;
  v31 = __chkstk_darwin(v29);
  v191 = &v178 - v32;
  __chkstk_darwin(v31);
  v34 = &v178 - v33;
  v35 = sub_1000281FC();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1000281EC();
  sub_10002848C();
  v38 = sub_1000281DC();

  sub_100008D6C(v38, &type metadata accessor for SELFRequestID, &type metadata accessor for UUID, v19);

  v201 = v21[6];
  v202 = v21 + 6;
  if (v201(v19, 1, v20) == 1)
  {
    v39 = v21;
    v40 = v20;
    sub_10000EDEC(v19, &qword_100034EB8, &qword_1000295F8);
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v41 = sub_10002858C();
    sub_10000AEF4(v41, qword_100034C78);

    v42 = sub_10002856C();
    v43 = sub_10002876C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v209 = v45;
      *v44 = 136315138;
      v46 = v195;
      sub_10002849C();
      sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID);
      v47 = sub_1000288EC();
      v49 = v48;
      (v39[1])(v46, v40);
      v50 = sub_100027364(v47, v49, &v209);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Skipping pair having turn with id %s, cannot extract request id", v44, 0xCu);
      sub_100001EB8(v45);
    }

    v51 = v199;
LABEL_35:
    v97 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
    return (*(*(v97 - 8) + 56))(v51, 1, 1, v97);
  }

  v196 = v21;
  v52 = v21[4];
  v193 = v34;
  v207 = v20;
  v198 = v21 + 4;
  v197 = v52;
  v52(v34, v19, v20);
  sub_100027FDC();
  sub_10002848C();
  v53 = sub_100027FCC();

  v194 = a1;
  sub_10002848C();
  v54 = sub_100027EDC();

  v212 = _swiftEmptyArrayStorage;
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = v54 + 32;
    v57 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000102B8(v56, &v209);
      sub_10000EB50(&v209, v208);
      sub_100001DBC(&qword_100035D50, &qword_100029618);
      sub_100027ECC();
      if ((swift_dynamicCast() & 1) != 0 && v208[5])
      {
        sub_10002865C();
        if (*((v212 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v212 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10002867C();
        }

        sub_10002868C();
        v57 = v212;
      }

      v56 += 40;
      --v55;
    }

    while (v55);
  }

  else
  {

    v57 = _swiftEmptyArrayStorage;
  }

  v58 = v203;
  v59 = v194;
  v60 = sub_10000F0E0();
  v61 = v60;
  v62 = v207;
  v63 = v205;
  if (!(v60 >> 62))
  {
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_29:

    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v76 = sub_10002858C();
    sub_10000AEF4(v76, qword_100034C78);
    v77 = v196;
    v78 = v191;
    v79 = v193;
    (v196[2])(v191, v193, v62);

    v80 = sub_10002856C();
    v81 = sub_10002875C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      LODWORD(v205) = v81;
      v83 = v62;
      v84 = v82;
      *&v206 = swift_slowAlloc();
      *&v209 = v206;
      *v84 = 136315394;
      v85 = v195;
      sub_10002849C();
      sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID);
      v86 = sub_1000288EC();
      v204 = v80;
      v88 = v87;
      v89 = v77[1];
      v89(v85, v83);
      v90 = sub_100027364(v86, v88, &v209);

      *(v84 + 4) = v90;
      *(v84 + 12) = 2080;
      v91 = sub_1000288EC();
      v93 = v92;
      v89(v78, v83);
      v94 = sub_100027364(v91, v93, &v209);

      *(v84 + 14) = v94;
      v95 = v204;
      _os_log_impl(&_mh_execute_header, v204, v205, "The turn/request didn't make it to execution - skipping: %s/%s", v84, 0x16u);
      swift_arrayDestroy();

      v89(v193, v83);
    }

    else
    {

      v96 = v77[1];
      v96(v78, v62);
      v96(v79, v62);
    }

    v51 = v199;
    goto LABEL_35;
  }

  if (!sub_1000288CC())
  {
    goto LABEL_29;
  }

LABEL_19:
  v191 = v53;
  v64 = sub_10000F874(v59, v63, v204);
  v66 = v58;
  if (v58)
  {
    (v196[1])(v193, v62);

    *v192 = v58;
    return result;
  }

  v181 = v65;
  v182 = v64;
  v183 = v61;
  v192 = v57;
  v68 = sub_1000281CC();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  sub_1000281BC();
  sub_10002848C();
  v71 = sub_1000281AC();

  v72 = sub_100008B98(v71);

  if ((v72 & 0x100000000) != 0)
  {
    v73 = v206;
    if (!v63)
    {
LABEL_27:
      v72 = 0;
      v179 = 1;
      goto LABEL_38;
    }

    v74 = sub_10000F0E0();
    if (v74 >> 62)
    {
      v98 = sub_1000288CC();

      if (v98)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v75)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    v99 = *(v68 + 48);
    v100 = *(v68 + 52);
    swift_allocObject();
    sub_1000281BC();
    sub_10002848C();
    v101 = sub_1000281AC();

    v73 = v206;

    v102 = sub_100008B98(v101);

    v179 = HIDWORD(v102) & 1;
    v72 = v102;
    goto LABEL_38;
  }

  v179 = 0;
  v73 = v206;
LABEL_38:
  v103 = sub_10000EE4C();
  v104 = v103;
  if (v103 >> 62)
  {
    goto LABEL_81;
  }

  v105 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
  v180 = v72;
  v203 = v66;
  if (v105)
  {
    v106 = 0;
    v204 = (v104 & 0xFFFFFFFFFFFFFF8);
    v205 = v104 & 0xC000000000000001;
    v107 = (v196 + 7);
    v108 = _swiftEmptyArrayStorage;
    v72 = v105;
    while (1)
    {
      if (v205)
      {
        v109 = sub_10002883C();
      }

      else
      {
        if (v106 >= v204[2].isa)
        {
          goto LABEL_80;
        }

        v109 = *(v104 + 8 * v106 + 32);
      }

      v110 = v109;
      v66 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        v105 = sub_1000288CC();
        goto LABEL_40;
      }

      v111 = [v109 eventMetadata];
      if (v111 && (v112 = v111, v113 = [v111 taskId], v112, v73 = v206, v113))
      {
        sub_10002874C();

        if (v201(v73, 1, v207) != 1)
        {
          v197(v200, v73, v207);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_10002703C(0, v108[2] + 1, 1, v108);
          }

          v115 = v108[2];
          v114 = v108[3];
          if (v115 >= v114 >> 1)
          {
            v108 = sub_10002703C(v114 > 1, v115 + 1, 1, v108);
          }

          v108[2] = (v115 + 1);
          v197(v108 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + v196[9] * v115, v200, v207);
          v73 = v206;
          goto LABEL_44;
        }
      }

      else
      {

        (*v107)(v73, 1, 1, v207);
      }

      sub_10000EDEC(v73, &qword_100034EB8, &qword_1000295F8);
LABEL_44:
      v106 = (v106 + 1);
      if (v66 == v72)
      {
        goto LABEL_59;
      }
    }
  }

  v108 = _swiftEmptyArrayStorage;
LABEL_59:

  v116 = sub_100020220(v108);

  v117 = sub_10002835C();
  v118 = *(v117 + 48);
  v119 = *(v117 + 52);
  swift_allocObject();
  sub_10002834C();
  sub_10002848C();
  v205 = sub_10002833C();

  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v204 = v116;
  v120 = sub_10002858C();
  sub_10000AEF4(v120, qword_100034C78);
  v121 = v196;
  v122 = v190;
  v123 = v207;
  (v196[2])(v190, v193, v207);

  v124 = sub_10002856C();
  v125 = sub_10002875C();

  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    LODWORD(v200) = v125;
    v127 = v126;
    *&v206 = swift_slowAlloc();
    *&v209 = v206;
    *v127 = 136315650;
    v128 = v195;
    v178 = v124;
    sub_10002849C();
    sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID);
    v129 = sub_1000288EC();
    v131 = v130;
    v132 = v121[1];
    v132(v128, v123);
    v133 = sub_100027364(v129, v131, &v209);

    *(v127 + 4) = v133;
    *(v127 + 12) = 2080;
    v134 = v190;
    v135 = sub_1000288EC();
    v137 = v136;
    v132(v134, v123);
    v138 = sub_100027364(v135, v137, &v209);

    *(v127 + 14) = v138;
    *(v127 + 22) = 2080;
    sub_10002847C();
    v139 = sub_10002861C();
    v141 = sub_100027364(v139, v140, &v209);

    *(v127 + 24) = v141;
    v142 = v178;
    _os_log_impl(&_mh_execute_header, v178, v200, "Turn %s, requestId=%s, date=%s. Features:", v127, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (v121[1])(v122, v123);
  }

  v144 = *(v205 + 16);
  if (v144)
  {
    v145 = v205 + 32;
    *&v143 = 136315138;
    v206 = v143;
    do
    {
      sub_1000102B8(v145, &v209);
      v146 = sub_10002856C();
      v147 = sub_10002875C();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v208[0] = v149;
        *v148 = v206;
        v150 = v211;
        sub_100001E74(&v209, v210);
        v151 = *(v150 + 8);
        v152 = sub_1000288EC();
        v154 = v153;
        sub_100001EB8(&v209);
        v155 = sub_100027364(v152, v154, v208);

        *(v148 + 4) = v155;
        _os_log_impl(&_mh_execute_header, v146, v147, "    %s", v148, 0xCu);
        sub_100001EB8(v149);
      }

      else
      {

        sub_100001EB8(&v209);
      }

      v145 += 40;
      --v144;
    }

    while (v144);
  }

  v156 = v204;
  if (v204[2].isa != 1)
  {

    v160 = v188;
LABEL_74:
    v161 = type metadata accessor for UniversalSuggestionsPromptState(0);
    (*(*(v161 - 8) + 56))(v160, 1, 1, v161);

    v162 = sub_10002856C();
    v163 = sub_10002876C();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 134217984;
      isa = v156[2].isa;

      *(v164 + 4) = isa;

      _os_log_impl(&_mh_execute_header, v162, v163, "The flow prompt state extraction is performed only for single-task turns, found %ld tasks", v164, 0xCu);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_78;
  }

  v157 = v187;
  sub_1000086D4(v204, v187);
  v158 = v207;
  v159 = v201(v157, 1, v207);
  v160 = v188;
  if (v159 == 1)
  {

    sub_10000EDEC(v157, &qword_100034EB8, &qword_1000295F8);
    goto LABEL_74;
  }

  v166 = v184;
  v167 = v197;
  v197(v184, v157, v158);
  v167(v160, v166, v158);
  v168 = type metadata accessor for UniversalSuggestionsPromptState(0);
  *(v160 + *(v168 + 20)) = v205;
  (*(*(v168 - 8) + 56))(v160, 0, 1, v168);
LABEL_78:
  v169 = v193;
  v170 = v191;
  sub_10002848C();
  v171 = sub_1000283BC();

  v172 = sub_100008F8C(v171, &type metadata accessor for UniversalSuggestionSummaries);

  v173 = v199;
  sub_10002847C();
  v174 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v197((v173 + v174[5]), v169, v207);
  *(v173 + v174[6]) = v170;
  *(v173 + v174[7]) = v192;
  v175 = (v173 + v174[8]);
  v176 = v181;
  *v175 = v182;
  v175[1] = v176;
  *(v173 + v174[9]) = v183;
  sub_100010250(v160, v173 + v174[10], &qword_100034EC8, &unk_100029AC0);
  v177 = v173 + v174[11];
  *v177 = v180;
  *(v177 + 4) = v179;
  *(v173 + v174[12]) = v172;
  return (*(*(v174 - 1) + 56))(v173, 0, 1, v174);
}

uint64_t sub_10000A8EC()
{
  sub_100001EB8(v0 + 2);
  sub_100001EB8(v0 + 7);
  sub_100001EB8(v0 + 13);
  sub_100001EB8(v0 + 18);
  v1 = v0[23];

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t sub_10000A968()
{
  v1 = sub_1000282EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000280AC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  updated = type metadata accessor for ModelUpdateStep(0);
  v15 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E558(v0, v17, type metadata accessor for ModelUpdateStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *(sub_100001DBC(&qword_100034E08, &unk_100029550) + 48);
      v20 = v7[4];
      v20(v13, v17, v6);
      v20(v11, &v17[v19], v6);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_10002882C(45);

      v30 = 0xD00000000000001ELL;
      v31 = 0x800000010002A530;
      v21._countAndFlagsBits = sub_10002809C();
      if (v21._object)
      {
        object = v21._object;
      }

      else
      {
        v21._countAndFlagsBits = 7104878;
        object = 0xE300000000000000;
      }

      v21._object = object;
      sub_10002863C(v21);

      v33._countAndFlagsBits = 0x746567726174202CLL;
      v33._object = 0xEA0000000000203ALL;
      sub_10002863C(v33);
      v23._countAndFlagsBits = sub_10002809C();
      if (v23._object)
      {
        v24 = v23._object;
      }

      else
      {
        v23._countAndFlagsBits = 7104878;
        v24 = 0xE300000000000000;
      }

      v23._object = v24;
      sub_10002863C(v23);

      v34._countAndFlagsBits = 41;
      v34._object = 0xE100000000000000;
      sub_10002863C(v34);
      v25 = v30;
      v26 = v7[1];
      v26(v11, v6);
      v26(v13, v6);
      return v25;
    }

    (*(v2 + 32))(v5, v17, v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_10002882C(41);
    v27 = "mbiguation(suggestion: ";
    v28._countAndFlagsBits = 0xD000000000000026;
LABEL_16:
    v28._object = (v27 | 0x8000000000000000);
    sub_10002863C(v28);
    sub_1000288AC();
    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    sub_10002863C(v35);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v2 + 32))(v5, v17, v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_10002882C(42);
    v27 = "markAsSurfaced(suggestion: ";
    v28._countAndFlagsBits = 0xD000000000000027;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
    (*(v2 + 32))(v5, v17, v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_10002882C(29);
    v32._object = 0x800000010002A4B0;
    v32._countAndFlagsBits = 0xD00000000000001BLL;
    sub_10002863C(v32);
    sub_1000288AC();
LABEL_17:
    v25 = v30;
    (*(v2 + 8))(v5, v1);
    return v25;
  }

  return 1701736302;
}

uint64_t sub_10000AE2C()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100034C78);
  v1 = sub_10000AEF4(v0, qword_100034C78);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000AEF4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000AF2C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000AFD0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_100027DAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_10000B090(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = sub_1000282EC();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  v4 = __chkstk_darwin(v2);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v63 = &v63 - v7;
  __chkstk_darwin(v6);
  v68 = &v63 - v8;
  v9 = sub_1000280AC();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v63 - v15;
  __chkstk_darwin(v14);
  v18 = &v63 - v17;
  updated = type metadata accessor for ModelUpdateStep(0);
  v20 = *(*(updated - 8) + 64);
  v21 = __chkstk_darwin(updated);
  v65 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v63 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v63 - v27;
  __chkstk_darwin(v26);
  v30 = &v63 - v29;
  v31 = sub_100001DBC(&qword_100034EC0, &unk_100029600);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v63 - v34;
  v36 = &v63 + *(v33 + 56) - v34;
  sub_10000E558(v71, &v63 - v34, type metadata accessor for ModelUpdateStep);
  sub_10000E558(v72, v36, type metadata accessor for ModelUpdateStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v71 = v13;
    v72 = v16;
    v43 = v66;
    v45 = v67;
    v44 = v68;
    if (EnumCaseMultiPayload)
    {
      sub_10000E558(v35, v28, type metadata accessor for ModelUpdateStep);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = v69;
        v52 = v70;
        (*(v69 + 32))(v44, v36, v70);
        v41 = sub_1000282DC();
        v54 = *(v53 + 8);
        v54(v44, v52);
        v54(v28, v52);
        goto LABEL_21;
      }

      (*(v69 + 8))(v28, v70);
    }

    else
    {
      sub_10000E558(v35, v30, type metadata accessor for ModelUpdateStep);
      v46 = *(sub_100001DBC(&qword_100034E08, &unk_100029550) + 48);
      if (!swift_getEnumCaseMultiPayload())
      {
        v55 = *(v43 + 32);
        v56 = v45;
        v55(v18, v36, v45);
        v57 = v72;
        v55(v72, &v30[v46], v56);
        v58 = &v36[v46];
        v59 = v71;
        v55(v71, v58, v56);
        v60 = sub_10002808C();
        v61 = *(v43 + 8);
        v61(v30, v56);
        if (v60)
        {
          v41 = sub_10002808C();
          v61(v59, v56);
          v61(v57, v56);
          v61(v18, v56);
          goto LABEL_21;
        }

        v61(v59, v56);
        v61(v57, v56);
        v61(v18, v56);
        sub_10000E5C0(v35, type metadata accessor for ModelUpdateStep);
        goto LABEL_18;
      }

      v47 = *(v43 + 8);
      v47(&v30[v46], v45);
      v47(v30, v45);
    }

LABEL_17:
    sub_10000EDEC(v35, &qword_100034EC0, &unk_100029600);
LABEL_18:
    v41 = 0;
    return v41 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10000E558(v35, v25, type metadata accessor for ModelUpdateStep);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v49 = v69;
      v48 = v70;
      v50 = v63;
      (*(v69 + 32))(v63, v36, v70);
      v41 = sub_1000282DC();
      v51 = *(v49 + 8);
      v51(v50, v48);
      v51(v25, v48);
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v25 = v65;
    sub_10000E558(v35, v65, type metadata accessor for ModelUpdateStep);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v39 = v69;
      v38 = v70;
      v40 = v64;
      (*(v69 + 32))(v64, v36, v70);
      v41 = sub_1000282DC();
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v25, v38);
LABEL_21:
      sub_10000E5C0(v35, type metadata accessor for ModelUpdateStep);
      return v41 & 1;
    }

LABEL_11:
    (*(v69 + 8))(v25, v70);
    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_17;
  }

  sub_10000E5C0(v35, type metadata accessor for ModelUpdateStep);
  v41 = 1;
  return v41 & 1;
}

uint64_t sub_10000B7D8()
{
  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v0 = sub_10002858C();
  sub_10000AEF4(v0, qword_100034C78);

  v1 = sub_10002856C();
  v2 = sub_10002875C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v20 = v4;
    *v3 = 136315138;
    sub_1000280DC();
    v5 = [v19 dictionaryRepresentation];

    if (!v5)
    {
      __break(1u);
      return result;
    }

    sub_1000285AC();

    v7 = sub_1000285BC();
    v9 = v8;

    v10 = sub_100027364(v7, v9, &v20);

    *(v3 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "correctionUndoResponse: %s", v3, 0xCu);
    sub_100001EB8(v4);
  }

  else
  {
  }

  sub_1000280DC();
  v11 = v20;
  v12 = [v20 undoType];

  if (v12 == 1)
  {
    sub_1000280DC();
    v13 = v20;
    v14 = [v20 reason];

    if (v14 == 3)
    {
      return 1;
    }
  }

  sub_1000280DC();
  v15 = v20;
  v16 = [v20 undoType];

  if (v16 == 1)
  {
    return 0;
  }

  sub_1000280DC();
  v17 = v20;
  v18 = [v20 undoType];

  return v18 != 0;
}

uint64_t sub_10000BA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v139 = a3;
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v132 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002805C();
  v134 = *(v7 - 8);
  v135 = v7;
  v8 = *(v134 + 64);
  __chkstk_darwin(v7);
  v133 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002807C();
  v136 = *(v10 - 8);
  v137 = v10;
  v11 = *(v136 + 64);
  __chkstk_darwin(v10);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v130 - v19;
  v21 = type metadata accessor for UniversalSuggestionsPromptState(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v138 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v130 - v26;
  sub_10000ED84(a2 + *(v4 + 40), v20, &qword_100034EC8, &unk_100029AC0);
  v28 = *(v22 + 48);
  if (v28(v20, 1, v21) == 1)
  {
    v18 = v20;
LABEL_5:
    sub_10000EDEC(v18, &qword_100034EC8, &unk_100029AC0);
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v29 = sub_10002858C();
    sub_10000AEF4(v29, qword_100034C78);
    v30 = sub_10002856C();
    v31 = sub_10002875C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Could not find prompt states for a correction, skipping evaluation", v32, 2u);
    }

    return 0;
  }

  sub_10000E620(v20, v27, type metadata accessor for UniversalSuggestionsPromptState);
  sub_10000ED84(v139 + *(v4 + 40), v18, &qword_100034EC8, &unk_100029AC0);
  if (v28(v18, 1, v21) == 1)
  {
    sub_10000E5C0(v27, type metadata accessor for UniversalSuggestionsPromptState);
    goto LABEL_5;
  }

  v130 = v4;
  v33 = v138;
  sub_10000E620(v18, v138, type metadata accessor for UniversalSuggestionsPromptState);
  v34 = *&v27[*(v21 + 20)];
  v35 = sub_1000087C0(v34, &type metadata accessor for PromptBeginEventType);
  if (!v36)
  {
    goto LABEL_19;
  }

  v37 = v35;
  v38 = v36;
  v131 = v27;
  v40 = v136;
  v39 = v137;
  (*(v136 + 104))(v13, enum case for PromptEventType.Beginning.disambiguation(_:), v137);
  v41 = sub_10002806C();
  v43 = v42;
  (*(v40 + 8))(v13, v39);
  if (v37 != v41 || v38 != v43)
  {
    v44 = sub_10002890C();

    v27 = v131;
    if (v44)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v56 = sub_10002858C();
    sub_10000AEF4(v56, qword_100034C78);
    v57 = sub_10002856C();
    v58 = sub_10002875C();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_49;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "Disambiguation did not occur after a correction, skipping evaluation";
    goto LABEL_48;
  }

  v27 = v131;
LABEL_15:
  v45 = *(v33 + *(v21 + 20));
  v46 = sub_1000087C0(v45, &type metadata accessor for PromptEndEventType);
  if (!v47)
  {
    goto LABEL_30;
  }

  v48 = v46;
  v49 = v47;
  v50 = v133;
  v51 = v134;
  v52 = v135;
  (*(v134 + 104))(v133, enum case for PromptEventType.Ending.disambiguation(_:), v135);
  v53 = sub_10002804C();
  v55 = v54;
  (*(v51 + 8))(v50, v52);
  if (v48 == v53 && v49 == v55)
  {

    v27 = v131;
    goto LABEL_24;
  }

  v61 = sub_10002890C();

  v27 = v131;
  if ((v61 & 1) == 0)
  {
LABEL_30:
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v68 = sub_10002858C();
    sub_10000AEF4(v68, qword_100034C78);
    v57 = sub_10002856C();
    v58 = sub_10002875C();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_49;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "Disambiguation response could not be found, skipping evaluation";
    goto LABEL_48;
  }

LABEL_24:
  if ((sub_100027D9C() & 1) == 0)
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v69 = sub_10002858C();
    sub_10000AEF4(v69, qword_100034C78);
    v57 = sub_10002856C();
    v58 = sub_10002875C();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_49;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "Could not match prompt response based on flow task id, skipping evaluation";
    goto LABEL_48;
  }

  v62 = sub_1000087C0(v34, &type metadata accessor for PromptBeginTaskName);
  if (!v63)
  {
    goto LABEL_44;
  }

  v64 = v62;
  v65 = v63;
  v66 = sub_1000087C0(v45, &type metadata accessor for PromptEndTaskName);
  if (!v67)
  {
    goto LABEL_43;
  }

  if (v64 == v66 && v65 == v67)
  {
  }

  else
  {
    v70 = sub_10002890C();

    if ((v70 & 1) == 0)
    {
LABEL_43:

LABEL_44:
      if (qword_100034AA0 != -1)
      {
        swift_once();
      }

      v76 = sub_10002858C();
      sub_10000AEF4(v76, qword_100034C78);
      v57 = sub_10002856C();
      v58 = sub_10002875C();
      if (!os_log_type_enabled(v57, v58))
      {
        goto LABEL_49;
      }

      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "Could not find a control home flow task in the detected prompt, skipping evaluation";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v57, v58, v60, v59, 2u);

LABEL_49:

      v77 = v33;
LABEL_50:
      sub_10000E5C0(v77, type metadata accessor for UniversalSuggestionsPromptState);
      sub_10000E5C0(v27, type metadata accessor for UniversalSuggestionsPromptState);
      return 0;
    }
  }

  sub_10001117C(0, &qword_100034EE8, INControlHomeIntent_ptr);
  v71 = [swift_getObjCClassFromMetadata() typeName];
  if (!v71)
  {
    goto LABEL_43;
  }

  v72 = v71;
  v73 = sub_10002860C();
  v75 = v74;

  if (v64 == v73 && v65 == v75)
  {

    goto LABEL_53;
  }

  v79 = sub_10002890C();

  if ((v79 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_53:
  v80 = *(v139 + v130[9]);
  v81 = v80 >> 62;
  if (v80 >> 62)
  {
LABEL_74:
    v82 = sub_1000288CC();
    if (v82)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
LABEL_55:
      v83 = 0;
      v84 = v80 & 0xFFFFFFFFFFFFFF8;
      v137 = v80 + 32;
      while (1)
      {
        if ((v80 & 0xC000000000000001) != 0)
        {
          v85 = sub_10002883C();
        }

        else
        {
          if (v83 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v85 = *(v137 + 8 * v83);
        }

        v86 = v85;
        v87 = __OFADD__(v83++, 1);
        if (v87)
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (qword_100034AE0 != -1)
        {
          swift_once();
        }

        v88 = qword_1000367C8;
        v89 = [v86 flowStateType];
        if (*(v88 + 16))
        {
          v90 = v89;
          v91 = *(v88 + 40);
          sub_10002894C();
          sub_10002896C(v90);
          v92 = sub_10002897C();
          v93 = -1 << *(v88 + 32);
          v94 = v92 & ~v93;
          if ((*(v88 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94))
          {
            break;
          }
        }

LABEL_56:

        if (v83 == v82)
        {
          goto LABEL_75;
        }
      }

      v95 = ~v93;
      while (*(*(v88 + 48) + 4 * v94) != v90)
      {
        v94 = (v94 + 1) & v95;
        if (((*(v88 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      v96 = 1;
      if (!v81)
      {
        goto LABEL_71;
      }

      goto LABEL_76;
    }
  }

LABEL_75:
  v96 = 0;
  v84 = v80 & 0xFFFFFFFFFFFFFF8;
  if (!v81)
  {
LABEL_71:
    v97 = *(v84 + 16);
    goto LABEL_77;
  }

LABEL_76:
  v97 = sub_1000288CC();
LABEL_77:
  v27 = v131;
  if (v97)
  {
    v98 = 0;
    v137 = v80 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v80 & 0xC000000000000001) != 0)
      {
        v99 = sub_10002883C();
      }

      else
      {
        if (v98 >= *(v137 + 16))
        {
          goto LABEL_113;
        }

        v99 = *(v80 + 32 + 8 * v98);
      }

      v100 = v99;
      v87 = __OFADD__(v98++, 1);
      if (v87)
      {
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      if (qword_100034AD0 != -1)
      {
        swift_once();
      }

      v101 = qword_1000367B8;
      v102 = [v100 flowStateType];
      if (*(v101 + 16))
      {
        v103 = v102;
        v104 = *(v101 + 40);
        sub_10002894C();
        sub_10002896C(v103);
        v105 = sub_10002897C();
        v106 = -1 << *(v101 + 32);
        v107 = v105 & ~v106;
        if ((*(v101 + 56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107))
        {
          break;
        }
      }

LABEL_79:

      v27 = v131;
      if (v98 == v97)
      {
        goto LABEL_94;
      }
    }

    v108 = ~v106;
    while (*(*(v101 + 48) + 4 * v107) != v103)
    {
      v107 = (v107 + 1) & v108;
      if (((*(v101 + 56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    LODWORD(v80) = 1;
    v27 = v131;
    goto LABEL_101;
  }

LABEL_94:
  if (!v96)
  {
    LODWORD(v80) = 0;
LABEL_101:
    v97 = v138;
    if (qword_100034AA0 != -1)
    {
LABEL_114:
      swift_once();
    }

    v122 = sub_10002858C();
    sub_10000AEF4(v122, qword_100034C78);
    v123 = sub_10002856C();
    v124 = sub_10002875C();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 67109376;
      *(v125 + 4) = v96;
      *(v125 + 8) = 1024;
      *(v125 + 10) = v80;
      _os_log_impl(&_mh_execute_header, v123, v124, "Could not find a selection in the follow-up turn: didSelect=%{BOOL}d, didCancel=%{BOOL}d, skipping evaluation", v125, 0xEu);
    }

    v77 = v97;
    goto LABEL_50;
  }

  v110 = v138;
  v109 = v139;
  if (!*(v139 + v130[8]))
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v126 = sub_10002858C();
    sub_10000AEF4(v126, qword_100034C78);
    v127 = sub_10002856C();
    v128 = sub_10002875C();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "Could not find a control home intent in the follow-up turn, skipping evaluation", v129, 2u);
    }

    v77 = v110;
    goto LABEL_50;
  }

  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v111 = sub_10002858C();
  sub_10000AEF4(v111, qword_100034C78);
  v112 = v132;
  sub_10000E558(v109, v132, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v113 = sub_10002856C();
  v114 = sub_10002875C();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v140 = v116;
    *v115 = 136315138;
    v117 = v130[5];
    sub_100027DAC();
    sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID);
    v118 = sub_1000288EC();
    v120 = v119;
    sub_10000E5C0(v112, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v121 = sub_100027364(v118, v120, &v140);

    *(v115 + 4) = v121;
    _os_log_impl(&_mh_execute_header, v113, v114, "Detected a disambiguation selection after a correction, using the intent from turn with requestId=%s", v115, 0xCu);
    sub_100001EB8(v116);
  }

  else
  {

    sub_10000E5C0(v112, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  sub_10000E5C0(v110, type metadata accessor for UniversalSuggestionsPromptState);
  sub_10000E5C0(v27, type metadata accessor for UniversalSuggestionsPromptState);
  return 1;
}

uint64_t sub_10000CB3C(uint64_t a1, unint64_t a2)
{
  sub_1000087C0(a1, &type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentGroupName);
  if (v4)
  {

    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v5 = sub_10002858C();
    sub_10000AEF4(v5, qword_100034C78);
    v6 = sub_10002856C();
    v7 = sub_10002875C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "A group is mentioned in the turn.";
    goto LABEL_11;
  }

  sub_1000087C0(a1, &type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentZoneName);
  if (v10)
  {

    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v11 = sub_10002858C();
    sub_10000AEF4(v11, qword_100034C78);
    v6 = sub_10002856C();
    v7 = sub_10002875C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "A zone is mentioned in the turn.";
    goto LABEL_11;
  }

  if (a2 >> 62)
  {
    result = sub_1000288CC();
    if (result)
    {
LABEL_16:
      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = sub_10002883C();
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          swift_once();
LABEL_22:
          v16 = sub_10002858C();
          sub_10000AEF4(v16, qword_100034C78);
          v6 = sub_10002856C();
          v7 = sub_10002875C();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_12;
          }

          v8 = swift_slowAlloc();
          *v8 = 0;
          v9 = "Entity is not of device type.";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

LABEL_12:

          return 1;
        }

        v13 = *(a2 + 32);
      }

      v14 = v13;
      v15 = [v13 type];

      if (v15 == 7)
      {
        return 0;
      }

      if (qword_100034AA0 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }
  }

  return result;
}

id sub_10000CE10(unint64_t a1)
{
  v3 = sub_100027E4C();
  v4 = *(v3 - 1);
  v5 = *(v4 + 8);
  v6 = __chkstk_darwin(v3);
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v56 - v8;
  if (a1 >> 62)
  {
LABEL_25:
    result = sub_1000288CC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_10002883C();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v13 = [v11 entityName];
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  v15 = [v13 spokenPhrase];

  sub_10002860C();
  v17 = v16;

  v18 = sub_100027DEC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v61 = v18;
  swift_allocObject();
  v21 = sub_100027DDC();
  v22 = sub_100027E8C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v62 = v22;
  swift_allocObject();

  v25 = sub_100027E7C();

  v59 = v17;
  v26 = v25;
  sub_100027E1C();
  sub_100027DFC();
  v28 = *(v4 + 1);
  v4 += 8;
  v27 = v28;
  v28(v9, v3);
  v60 = "homeAutomationAccessoryName";
  sub_100027E1C();
  sub_100027DFC();
  v28(v9, v3);
  v29 = [v12 entityIdentifier];
  v63 = v21;
  if (v29)
  {
    v30 = v29;
    sub_10002860C();

    sub_100027E1C();
    sub_100027DFC();
    v27(v9, v3);
  }

  v31 = [v12 deviceTypes];
  v70 = v26;
  if (!v31)
  {
    v39 = v62;
LABEL_31:

    v71 = v26;
    sub_100027E5C();
    v40 = [v12 room];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 spokenPhrase];

      sub_10002860C();
      v43 = *(v39 + 48);
      v44 = *(v39 + 52);
      swift_allocObject();

      v45 = sub_100027E7C();
      sub_100027E1C();
      sub_100027DFC();
      v27(v9, v3);
      sub_100027E1C();
      sub_100027DFC();
      v27(v9, v3);
      v46 = *(v61 + 48);
      v47 = *(v61 + 52);
      swift_allocObject();
      sub_100027DDC();
      v71 = v45;
      sub_100027E5C();

      sub_100027DCC();
    }

    v48 = [v12 home];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 spokenPhrase];

      sub_10002860C();
      v51 = *(v62 + 48);
      v52 = *(v62 + 52);
      swift_allocObject();

      v53 = sub_100027E7C();
      sub_100027E1C();
      sub_100027DFC();
      v27(v9, v3);
      sub_100027E1C();
      sub_100027DFC();
      v27(v9, v3);
      v54 = *(v61 + 48);
      v55 = *(v61 + 52);
      swift_allocObject();
      sub_100027DDC();
      v71 = v53;
      sub_100027E5C();

      sub_100027DCC();
    }

    sub_100027E6C();
    sub_100027DBC();
    sub_100027E9C();

    return v71;
  }

  v32 = v31;
  sub_10001117C(0, &qword_100034EF8, NSNumber_ptr);
  a1 = sub_10002866C();

  v1 = a1;
  v57 = v9;
  v58 = v12;
  v67 = v27;
  v68 = v4;
  if (!(a1 >> 62))
  {
    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v33 = sub_1000288CC();
  if (!v33)
  {
LABEL_30:

    v9 = v57;
    v12 = v58;
    v27 = v67;
    v39 = v62;
    v26 = v70;
    goto LABEL_31;
  }

LABEL_12:
  v34 = 0;
  v65 = v1 & 0xFFFFFFFFFFFFFF8;
  v66 = v1 & 0xC000000000000001;
  v64 = "homeAutomationRoom";
  v9 = v3;
  while (1)
  {
    if (v66)
    {
      v35 = sub_10002883C();
    }

    else
    {
      if (v34 >= *(v65 + 16))
      {
        goto LABEL_24;
      }

      v35 = *(v1 + 8 * v34 + 32);
    }

    v3 = v35;
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v37 = v1;
    [v35 integerValue];
    result = INHomeDeviceTypeGetName();
    if (!result)
    {
      break;
    }

    v38 = result;
    a1 = sub_10002860C();

    v4 = v69;
    sub_100027E1C();
    sub_100027DFC();

    v3 = v9;
    v67(v4, v9);
    ++v34;
    v1 = v37;
    if (v36 == v33)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

void sub_10000D724(uint64_t a1)
{
  updated = type metadata accessor for RequestLinkedModelUpdateStep(0);
  v2 = *(updated - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(updated);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v10 = sub_10002858C();
    v33 = sub_10000AEF4(v10, qword_100034C78);
    v11 = sub_10002856C();
    v12 = sub_10002875C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Learned updates:", v13, 2u);
    }

    v14 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    *&v16 = 136315394;
    v29 = v16;
    v30 = v15;
    do
    {
      sub_10000E558(v14, v8, type metadata accessor for RequestLinkedModelUpdateStep);
      sub_10000E558(v14, v6, type metadata accessor for RequestLinkedModelUpdateStep);
      v27 = sub_10002856C();
      v28 = sub_10002875C();
      if (os_log_type_enabled(v27, v28))
      {
        v17 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v34 = v32;
        *v17 = v29;
        sub_100027DAC();
        sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID);
        v18 = sub_1000288EC();
        v20 = v19;
        sub_10000E5C0(v8, type metadata accessor for RequestLinkedModelUpdateStep);
        v21 = sub_100027364(v18, v20, &v34);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v22 = &v6[*(updated + 20)];
        v23 = sub_10000A968();
        v25 = v24;
        sub_10000E5C0(v6, type metadata accessor for RequestLinkedModelUpdateStep);
        v26 = sub_100027364(v23, v25, &v34);

        *(v17 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "Request %s -> %s", v17, 0x16u);
        swift_arrayDestroy();

        v15 = v30;
      }

      else
      {

        sub_10000E5C0(v6, type metadata accessor for RequestLinkedModelUpdateStep);
        sub_10000E5C0(v8, type metadata accessor for RequestLinkedModelUpdateStep);
      }

      v14 += v15;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_10000DB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v5 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v87 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v79 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  v11 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v76 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v83 = &v73 - v15;
  v84 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
  v82 = *(v84 - 8);
  v16 = *(v82 + 64);
  v17 = __chkstk_darwin(v84);
  v80 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  v85 = type metadata accessor for UniversalSuggestionRequestState(0);
  v21 = *(*(v85 - 8) + 64);
  v22 = __chkstk_darwin(v85);
  v81 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v73 - v25;
  __chkstk_darwin(v24);
  v28 = &v73 - v27;
  v29 = sub_100027DAC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100034AA0 != -1)
  {
    swift_once();
  }

  v34 = sub_10002858C();
  sub_10000AEF4(v34, qword_100034C78);
  (*(v30 + 16))(v33, a1, v29);
  v86 = a3;
  sub_10000E558(a3, v28, type metadata accessor for UniversalSuggestionRequestState);
  v35 = sub_10002856C();
  v36 = sub_10002875C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v90 = v74;
    *v37 = 136315394;
    sub_10000ED3C(&qword_100034E20, &type metadata accessor for UUID);
    v38 = sub_1000288EC();
    v75 = v20;
    v40 = v39;
    (*(v30 + 8))(v33, v29);
    v41 = sub_100027364(v38, v40, &v90);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    sub_10000E558(v28, v26, type metadata accessor for UniversalSuggestionRequestState);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_10002882C(64);
    v91._object = 0x800000010002A480;
    v91._countAndFlagsBits = 0xD00000000000002CLL;
    sub_10002863C(v91);
    type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
    sub_1000288AC();
    v92._countAndFlagsBits = 0x736575716572202CLL;
    v92._object = 0xEF203A6B73615474;
    sub_10002863C(v92);
    v42 = v85;
    v43 = &v26[*(v85 + 20)];
    v93._countAndFlagsBits = sub_100016C54();
    sub_10002863C(v93);

    v94._countAndFlagsBits = 41;
    v94._object = 0xE100000000000000;
    sub_10002863C(v94);
    v44 = v88;
    v45 = v89;
    sub_10000E5C0(v26, type metadata accessor for UniversalSuggestionRequestState);
    v20 = v75;
    sub_10000E5C0(v28, type metadata accessor for UniversalSuggestionRequestState);
    v46 = sub_100027364(v44, v45, &v90);

    *(v37 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "Reviewing request state to emit outcome event for %s, requestState=%s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000E5C0(v28, type metadata accessor for UniversalSuggestionRequestState);
    (*(v30 + 8))(v33, v29);
    v42 = v85;
  }

  v47 = v86;
  v48 = v86 + *(v42 + 20);
  v49 = type metadata accessor for UniversalSuggestionRequestTaskState(0);
  v50 = v83;
  sub_10000ED84(v48 + *(v49 + 20), v83, &qword_100034E10, &qword_100029AF0);
  v51 = v84;
  v52 = (*(v82 + 48))(v50, 1, v84);
  v53 = v87;
  if (v52 == 1)
  {
    return sub_10000EDEC(v50, &qword_100034E10, &qword_100029AF0);
  }

  sub_10000E620(v50, v20, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
  sub_10000E558(v47, v81, type metadata accessor for UniversalSuggestionRequestState);
  sub_10000E558(v20, v80, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
  v55 = &v20[*(v51 + 20)];
  v56 = v79;
  sub_10000E558(v55, v79, type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState);
  v57 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v58 = (*(*(v57 - 8) + 48))(v56, 3, v57);
  if (v58 > 1)
  {
    if (v58 != 2)
    {
      v66 = type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
      sub_10000E558(v47 + *(v66 + 24), v53, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
      v67 = sub_100001DBC(&qword_100034E08, &unk_100029550);
      if (!(*(*(v67 - 8) + 48))(v53, 2, v67))
      {
        v68 = *(v67 + 48);
        v69 = sub_1000280AC();
        v70 = *(*(v69 - 8) + 8);
        v70(v53 + v68, v69);
        v70(v53, v69);
      }
    }

    goto LABEL_16;
  }

  if (v58)
  {
LABEL_16:
    v71 = *(v42 + 20);
    v72 = *(type metadata accessor for UniversalSuggestionItem(0) + 24);
    v65 = v80;
    v64 = v81;
    goto LABEL_17;
  }

  v59 = v56;
  v60 = v76;
  sub_10000E620(v59, v76, type metadata accessor for UniversalSuggestionDisambiguationOffered);
  v61 = *(v60 + *(v77 + 20));
  sub_10000E5C0(v60, type metadata accessor for UniversalSuggestionDisambiguationOffered);
  v62 = *(v42 + 20);
  v63 = *(type metadata accessor for UniversalSuggestionItem(0) + 24);
  v65 = v80;
  v64 = v81;
LABEL_17:
  sub_1000283EC();
  sub_10000E5C0(v65, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
  sub_10000E5C0(v64, type metadata accessor for UniversalSuggestionRequestState);
  return sub_10000E5C0(v20, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
}

uint64_t sub_10000E558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000E5C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000E620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000E6A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E6E0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000E788;

  return sub_10000492C(a1, a2, v2);
}

uint64_t sub_10000E788(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000E884()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E8BC(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000E984;

  return sub_1000049F8(a1, a2, v7);
}

uint64_t sub_10000E984()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000EA78()
{
  v1 = sub_1000283CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  sub_100001EB8((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000EB50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000EB68(uint64_t a1, void *a2)
{
  v6 = *(sub_1000283CC() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000E984;

  return sub_100009158(a1, a2, v8, v9, v2 + 32, v2 + v7, v10);
}

uint64_t sub_10000EC9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001C00(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000ED04(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000ED3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000ED84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DBC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EDEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DBC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id *sub_10000EE4C()
{
  v0 = sub_10002848C();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000288CC())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10002883C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 anyEventType] == 13)
      {
        sub_10002885C();
        v7 = _swiftEmptyArrayStorage[2];
        sub_10002887C();
        sub_10002888C();
        sub_10002886C();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_14:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v1 = sub_1000288CC();
    if (v1)
    {
LABEL_17:
      v8 = _swiftEmptyArrayStorage & 0xC000000000000001;
      v9 = 0;
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
LABEL_31:
        v10 = sub_10002883C();
        goto LABEL_24;
      }

      while (1)
      {
        while (1)
        {
          if (v9 >= _swiftEmptyArrayStorage[2])
          {
            goto LABEL_35;
          }

          v10 = _swiftEmptyArrayStorage[v9 + 4];
LABEL_24:
          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_34;
          }

          v13 = [v10 unwrap];

          if (v13)
          {
            break;
          }

LABEL_20:
          ++v9;
          if (v12 == v1)
          {
            goto LABEL_38;
          }

          if (v8)
          {
            goto LABEL_31;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          goto LABEL_20;
        }

        sub_10002865C();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10002867C();
        }

        sub_10002868C();
        if (v12 == v1)
        {
          break;
        }

        ++v9;
        if (v8)
        {
          goto LABEL_31;
        }
      }
    }
  }

  else
  {
    v1 = _swiftEmptyArrayStorage[2];
    if (v1)
    {
      goto LABEL_17;
    }
  }

LABEL_38:

  return _swiftEmptyArrayStorage;
}

id *sub_10000F0E0()
{
  v0 = sub_10000EE4C();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_21:
    v3 = sub_1000288CC();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10002883C();
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = [v6 flowStep];
      if (v8)
      {
        break;
      }

LABEL_6:
      ++v5;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v9 = v8;
    v10 = [v8 flowState];

    if (!v10)
    {
      goto LABEL_6;
    }

    sub_10002865C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10002867C();
    }

    sub_10002868C();
  }

  while (v4 != v3);
LABEL_22:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000F284(uint64_t (*a1)(char *, char *, uint64_t), unsigned int (*a2)(char *, uint64_t, uint64_t))
{
  v55 = a2;
  v53 = a1;
  v2 = sub_100027F9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_100001DBC(&qword_100034F00, &qword_100029628) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v48 - v7;
  v9 = sub_100027D7C();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  v11 = (__chkstk_darwin)();
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v48 - v13);
  sub_100001DBC(&qword_100034F08, &qword_100029630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100029460;
  v16 = sub_10002839C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(inited + 32) = sub_10002838C();
  *(inited + 56) = v16;
  *(inited + 64) = &protocol witness table for INControlHomeIntentFeatureExtractor;
  v60 = inited;
  inited += 32;
  sub_1000102B8(inited, v59);
  sub_100001E74(v59, v59[3]);
  v19 = sub_10002831C();
  sub_100001EB8(v59);
  v20 = *(v19 + 16);
  result = sub_100026CC4(0, v20, 1, _swiftEmptyArrayStorage);
  v22 = result;
  v23 = *(v19 + 16);
  v52 = inited;
  if (!v23)
  {

    v25 = v14;
    if (!v20)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_23;
  }

  v24 = *(result + 16);
  if ((*(result + 24) >> 1) - v24 < v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  memcpy((result + 8 * v24 + 32), (v19 + 32), 8 * v20);

  v25 = v14;
  if (v20)
  {
    v26 = *(v22 + 16);
    v27 = __OFADD__(v26, v20);
    v28 = v26 + v20;
    if (!v27)
    {
      *(v22 + 16) = v28;
      goto LABEL_7;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_7:
  v49 = v9;
  v58 = v3;
  v50 = objc_autoreleasePoolPush();
  v29 = *(v53 + 4);
  sub_100001E74(v53, *(v53 + 3));
  sub_100027D1C();
  v30 = v51;
  sub_100027CFC();
  v31 = v54;
  v32 = sub_1000280CC();
  v33 = v25;
  if (v31)
  {

    swift_setDeallocating();
    sub_100001EB8(v52);
    v34 = *(v56 + 8);
    v35 = v49;
    v34(v30, v49);
    v34(v33, v35);
    objc_autoreleasePoolPop(v50);
  }

  else
  {
    v48 = v32;

    v36 = *(v56 + 8);
    v37 = v49;
    v36(v30, v49);
    v36(v33, v37);
    sub_10002889C();
    sub_1000288DC();
    v38 = v58;
    v55 = *(v58 + 48);
    v56 = v58 + 48;
    v33 = _swiftEmptyArrayStorage;
    if (v55(v8, 1, v2) != 1)
    {
      v53 = *(v38 + 32);
      v54 = v2;
      v58 = v38 + 32;
      v39 = (v38 + 8);
      do
      {
        v40 = v57;
        v41 = v53(v57, v8, v2);
        __chkstk_darwin(v41);
        *(&v48 - 2) = v40;
        v42 = sub_100002030(sub_10001031C, (&v48 - 4), v60);
        v43 = sub_100008F8C(v42, &type metadata accessor for ControlHomeIntentResponseFeatures.ControlHomeIntentEntityResponses);
        if (v43)
        {
          v44 = v43;
        }

        else
        {
          v44 = _swiftEmptyArrayStorage;
        }

        (*v39)(v40, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_100026DC4(0, v33[2] + 1, 1, v33);
        }

        v46 = v33[2];
        v45 = v33[3];
        if (v46 >= v45 >> 1)
        {
          v33 = sub_100026DC4((v45 > 1), v46 + 1, 1, v33);
        }

        v33[2] = (v46 + 1);
        v47 = &v33[2 * v46];
        v47[4] = v42;
        v47[5] = v44;
        sub_1000288DC();
        v2 = v54;
      }

      while (v55(v8, 1, v54) != 1);
    }

    swift_setDeallocating();
    sub_100001EB8(v52);

    objc_autoreleasePoolPop(v50);
  }

  return v33;
}

void (*sub_10000F874(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, uint64_t)))(char *, uint64_t)
{
  v81 = a3;
  v85 = a2;
  v3 = sub_100027D2C();
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = *(v82 + 64);
  __chkstk_darwin(v3);
  v80 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v77 - v12;
  __chkstk_darwin(v11);
  v15 = &v77 - v14;
  v16 = sub_100027D7C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v19 = __chkstk_darwin(v16);
  v84 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v86 = &v77 - v22;
  v23 = __chkstk_darwin(v21);
  v79 = &v77 - v24;
  v25 = __chkstk_darwin(v23);
  v78 = &v77 - v26;
  v27 = __chkstk_darwin(v25);
  v88 = &v77 - v28;
  __chkstk_darwin(v27);
  v30 = &v77 - v29;
  sub_10002847C();
  v90 = *(v17 + 6);
  if (v90(v15, 1, v16) == 1)
  {
    sub_10000EDEC(v15, &qword_100034ED0, &qword_100029610);
    if (qword_100034AA0 == -1)
    {
LABEL_3:
      v31 = sub_10002858C();
      sub_10000AEF4(v31, qword_100034C78);
      v32 = sub_10002856C();
      v33 = sub_10002876C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "The current turn doesn't have a timestamp, cannot retrieve interaction events as there's no clear time window", v34, 2u);
      }

      return 0;
    }

LABEL_30:
    swift_once();
    goto LABEL_3;
  }

  v77 = v10;
  v37 = *(v17 + 4);
  v87 = v30;
  v37(v30, v15, v16);
  if (v85)
  {
    v38 = v17;
    sub_10002847C();
    v39 = v90(v13, 1, v16);
    v40 = v88;
    if (v39 != 1)
    {
      v37(v88, v13, v16);
      v41 = v86;
      v42 = v16;
      goto LABEL_14;
    }
  }

  else
  {
    v38 = v17;
    (*(v17 + 7))(v13, 1, 1, v16);
    v40 = v88;
  }

  sub_100027D3C();
  v43 = v90(v13, 1, v16);
  v41 = v86;
  v42 = v16;
  if (v43 != 1)
  {
    sub_10000EDEC(v13, &qword_100034ED0, &qword_100029610);
  }

LABEL_14:
  sub_10000ED3C(&qword_100034ED8, &type metadata accessor for Date);
  v44 = v87;
  if (sub_1000285DC())
  {
    if (qword_100034AA0 != -1)
    {
      swift_once();
    }

    v45 = sub_10002858C();
    sub_10000AEF4(v45, qword_100034C78);
    v46 = v38;
    v47 = *(v38 + 2);
    v47(v41, v44, v42);
    v48 = v84;
    v47(v84, v40, v42);
    v49 = sub_10002856C();
    v50 = sub_10002876C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = v90;
      *v51 = 136315394;
      sub_10000ED3C(&qword_100034EE0, &type metadata accessor for Date);
      LODWORD(v86) = v50;
      v52 = sub_1000288EC();
      v54 = v53;
      v55 = *(v46 + 1);
      v55(v41, v42);
      v56 = sub_100027364(v52, v54, &v91);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      v57 = sub_1000288EC();
      v59 = v58;
      v55(v48, v42);
      v60 = sub_100027364(v57, v59, &v91);

      *(v51 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v49, v86, "The current and next turn timestamps are out of order, cannot retrieve interaction events: curr=%s, next=%s", v51, 0x16u);
      swift_arrayDestroy();

      v55(v88, v42);
      v55(v87, v42);
    }

    else
    {

      v68 = *(v46 + 1);
      v68(v48, v42);
      v68(v41, v42);
      v68(v40, v42);
      v68(v44, v42);
    }

    return 0;
  }

  v61 = v40;
  v62 = v44;
  v63 = v38;
  v64 = *(v38 + 2);
  v64(v78, v62, v42);
  v64(v79, v61, v42);
  v65 = v80;
  sub_100027D0C();
  v66 = v89;
  v67 = sub_10000F284(v81, v65);
  v89 = v66;
  if (v66)
  {
    (*(v82 + 8))(v65, v83);
    v35 = *(v38 + 1);
    v35(v61, v42);
    v35(v62, v42);
    return v35;
  }

  v69 = v67;
  v86 = v63;
  (*(v82 + 8))(v65, v83);
  v70 = v77;
  if (*(v69 + 16))
  {
    v71 = *(v69 + 16);
    v72 = 0;
    v73 = (v69 + 40);
    while (v72 < *(v69 + 16))
    {
      v35 = *(v73 - 1);
      v74 = *v73;

      sub_100008D6C(v35, &type metadata accessor for ControlHomeIntentFeature.ControlHomeIntentInteractionTimestamp, &type metadata accessor for Date, v70);
      if (v90(v70, 1, v42) != 1)
      {

        v76 = *(v86 + 1);
        v76(v88, v42);
        v76(v87, v42);
        sub_10000EDEC(v70, &qword_100034ED0, &qword_100029610);
        return v35;
      }

      ++v72;
      sub_10000EDEC(v70, &qword_100034ED0, &qword_100029610);
      v73 += 2;
      if (v71 == v72)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_27:

  v75 = *(v86 + 1);
  v75(v88, v42);
  v75(v87, v42);
  return 0;
}

uint64_t sub_100010250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DBC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000102B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001031C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[4];
  sub_100001E74(a1, a1[3]);
  result = sub_10002832C();
  *a2 = result;
  return result;
}

__n128 sub_100010380(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001038C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000103D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100010434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  updated = type metadata accessor for ModelUpdateStep(0);
  v12 = *(updated - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = updated;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UniversalSuggestionRequestState(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100010588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100027DAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  updated = type metadata accessor for ModelUpdateStep(0);
  v14 = *(updated - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = updated;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UniversalSuggestionRequestState(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000106D4()
{
  result = sub_100027DAC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModelUpdateStep(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for UniversalSuggestionRequestState(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1000107C4()
{
  sub_10001083C();
  if (v0 <= 0x3F)
  {
    sub_1000108A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10001083C()
{
  if (!qword_100035028)
  {
    sub_1000280AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100035028);
    }
  }
}

void sub_1000108A4()
{
  if (!qword_100035030)
  {
    v0 = sub_1000282EC();
    if (!v1)
    {
      atomic_store(v0, &qword_100035030);
    }
  }
}

uint64_t sub_100010900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
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

uint64_t sub_1000109D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100027DAC();
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

void sub_100010A88()
{
  sub_100027DAC();
  if (v0 <= 0x3F)
  {
    sub_100011210(319, &unk_1000350C8, &qword_100035D50, &qword_100029618, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100010B4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100027DAC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100010CEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100027DAC();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100010E78()
{
  sub_1000110B0(319, &qword_100035160, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100027DAC();
    if (v1 <= 0x3F)
    {
      sub_1000110B0(319, &qword_100035168, &type metadata accessor for UniversalEntity, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1000110B0(319, &qword_100035170, &type metadata accessor for SiriCorrectionsUndoResponse, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_1000111C4(319, &qword_100035178);
          if (v4 <= 0x3F)
          {
            sub_100011114();
            if (v5 <= 0x3F)
            {
              sub_1000110B0(319, &qword_100035190, type metadata accessor for UniversalSuggestionsPromptState, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1000111C4(319, &qword_100035198);
                if (v7 <= 0x3F)
                {
                  sub_100011210(319, &qword_1000351A0, &unk_1000351A8, qword_1000296F8, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000110B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100011114()
{
  if (!qword_100035180)
  {
    sub_10001117C(255, &qword_100035188, FLOWSchemaFLOWState_ptr);
    v0 = sub_10002869C();
    if (!v1)
    {
      atomic_store(v0, &qword_100035180);
    }
  }
}

uint64_t sub_10001117C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1000111C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000287BC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100011210(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100001C00(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100011278()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100036760);
  sub_10000AEF4(v0, qword_100036760);
  return sub_10002857C();
}

uint64_t sub_1000112F8()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100036778);
  sub_10000AEF4(v0, qword_100036778);
  return sub_10002857C();
}

uint64_t sub_100011378()
{
  v0 = sub_10002858C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002850C();
  sub_10000AF2C(v5, qword_100036790);
  sub_10000AEF4(v5, qword_100036790);
  if (qword_100034AB0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000AEF4(v0, qword_100036778);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1000284EC();
}

uint64_t sub_1000114B4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10001158C, 0, 0);
}

uint64_t sub_10001158C()
{
  sub_100001E74((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100011630;

  return sub_100014F14(v0 + 16);
}

uint64_t sub_100011630()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_10001172C, 0, 0);
}

uint64_t sub_10001172C()
{
  v52 = v0;
  result = sub_100011D64(*(v0 + 56));
  v2 = result;
  v50 = *(result + 16);
  if (v50)
  {
    v3 = 0;
    v45 = *(v0 + 72);
    v49 = *(v0 + 80);
    v47 = *(v0 + 56);
    v48 = result + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v46 = result;
    do
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v4 = *(v0 + 104);
      sub_1000127FC(v48 + *(v49 + 72) * v3, v4);
      v5 = *(*sub_100001E74((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_entityIds);
      if (v5 && *(v5 + 16))
      {
        v6 = (v4 + *(v45 + 20));
        v8 = *v6;
        v7 = v6[1];
        v9 = *(v5 + 40);
        sub_10002894C();

        sub_10002862C();
        v10 = sub_10002897C();
        v11 = -1 << *(v5 + 32);
        v12 = v10 & ~v11;
        if ((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (1)
          {
            v14 = (*(v5 + 48) + 16 * v12);
            v15 = *v14 == v8 && v14[1] == v7;
            if (v15 || (sub_10002890C() & 1) != 0)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_4;
        }

LABEL_16:
      }

      if (qword_100034AC0 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 96);
      v16 = *(v0 + 104);
      v18 = sub_10002858C();
      sub_10000AEF4(v18, qword_1000351F8);
      sub_1000127FC(v16, v17);
      v19 = sub_10002856C();
      v20 = sub_10002875C();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 96);
      if (v21)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v51[0] = v24;
        *v23 = 136315138;
        sub_100027DAC();
        sub_1000128BC();
        v25 = sub_1000288EC();
        v27 = v26;
        sub_100012860(v22);
        v28 = sub_100027364(v25, v27, v51);

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "Entity corresponding to candidate %s does not exist, deleting candidate from store", v23, 0xCu);
        sub_100001EB8(v24);
        v2 = v46;
      }

      else
      {

        sub_100012860(v22);
      }

      v29 = *(v0 + 104);
      v30 = *(v47 + 32);
      sub_100001E74(*(v0 + 56), *(v47 + 24));
      if ((sub_10002822C() & 1) == 0)
      {
        sub_1000127FC(*(v0 + 104), *(v0 + 88));
        v31 = sub_10002856C();
        v32 = sub_10002876C();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 88);
        if (v33)
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v51[0] = v36;
          *v35 = 136315138;
          sub_100027DAC();
          sub_1000128BC();
          v37 = sub_1000288EC();
          v39 = v38;
          sub_100012860(v34);
          v40 = sub_100027364(v37, v39, v51);
          v2 = v46;

          *(v35 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v31, v32, "Unable to delete candidate %s from store", v35, 0xCu);
          sub_100001EB8(v36);
        }

        else
        {

          sub_100012860(v34);
        }
      }

LABEL_4:
      ++v3;
      result = sub_100012860(*(v0 + 104));
    }

    while (v3 != v50);
  }

  v41 = *(v0 + 96);
  v42 = *(v0 + 104);
  v43 = *(v0 + 88);
  sub_100001EB8((v0 + 16));

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_100011BF4()
{
  sub_100001EB8((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair()
{
  result = qword_100035328;
  if (!qword_100035328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011C9C()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_1000351F8);
  v1 = sub_10000AEF4(v0, qword_1000351F8);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id *sub_100011D64(void *a1)
{
  v88 = sub_100027DAC();
  v106 = *(v88 - 8);
  v2 = v106[8];
  __chkstk_darwin(v88);
  v87 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000280AC();
  v4 = *(v107 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v107);
  v7 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100001DBC(&qword_1000352C8, &unk_1000297E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v109 = &v72 - v10;
  v89 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair();
  v11 = *(v89 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v89);
  v101 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10002810C();
  v14 = *(v96 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v96);
  v94 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = &v72 - v18;
  v80 = sub_10002814C();
  v19 = *(v80 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v80);
  v82 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  sub_100001E74(a1, a1[3]);
  result = sub_10002820C();
  v78 = result[2];
  if (v78)
  {
    v25 = 0;
    v77 = result + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v76 = v19 + 16;
    v104 = v14 + 16;
    v100 = (v4 + 88);
    v99 = enum case for UniversalEntity.homeAutomationEntity(_:);
    v93 = (v4 + 8);
    v103 = (v14 + 8);
    v85 = (v106 + 1);
    v92 = (v4 + 96);
    v97 = (v11 + 56);
    v98 = (v11 + 48);
    v75 = (v19 + 8);
    *&v24 = 136315138;
    v84 = v24;
    v83 = _swiftEmptyArrayStorage;
    v26 = v89;
    v27 = v96;
    v28 = v80;
    v86 = v7;
    v95 = v11;
    v72 = v14;
    v74 = v19;
    v73 = result;
    while (v25 < result[2])
    {
      v30 = *(v19 + 72);
      v81 = v25;
      (*(v19 + 16))(v82, &v77[v30 * v25], v28);
      v31 = sub_10002813C();
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v79 = v31;
        v34 = v31 + v33;
        v102 = *(v72 + 72);
        v105 = *(v72 + 16);
        v106 = _swiftEmptyArrayStorage;
        v35 = v94;
        v105(v108, v31 + v33, v27);
        while (1)
        {
          sub_1000280EC();
          v36 = (*v100)(v7, v107);
          if (v36 == v99)
          {
            (*v92)(v7, v107);
            v37 = *v7;
            v38 = sub_1000203BC();
            if (v39)
            {
              v40 = v38;
              v41 = v39;
              v42 = v109;
              sub_1000280FC();

              v43 = (v42 + *(v26 + 20));
              *v43 = v40;
              v43[1] = v41;
              (*v97)(v42, 0, 1, v26);
            }

            else
            {
              (*v97)(v109, 1, 1, v26);
            }

            v27 = v96;
            v35 = v94;
          }

          else
          {
            (*v93)(v7, v107);
            if (qword_100034AC0 != -1)
            {
              swift_once();
            }

            v44 = sub_10002858C();
            sub_10000AEF4(v44, qword_1000351F8);
            v105(v35, v108, v27);
            v45 = sub_10002856C();
            v46 = sub_10002876C();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              v110 = v91;
              *v47 = v84;
              v48 = v87;
              v90 = v46;
              sub_1000280FC();
              sub_1000128BC();
              v49 = v88;
              v50 = sub_1000288EC();
              v52 = v51;
              v53 = v48;
              v26 = v89;
              v27 = v96;
              (*v85)(v53, v49);
              (*v103)(v35, v27);
              v54 = sub_100027364(v50, v52, &v110);
              v7 = v86;

              *(v47 + 4) = v54;
              _os_log_impl(&_mh_execute_header, v45, v90, "candidate is not a home automation candidate: %s", v47, 0xCu);
              sub_100001EB8(v91);
            }

            else
            {

              (*v103)(v35, v27);
            }

            (*v97)(v109, 1, 1, v26);
          }

          (*v103)(v108, v27);
          if ((*v98)(v109, 1, v26) == 1)
          {
            sub_100012914(v109);
          }

          else
          {
            sub_10001297C(v109, v101);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v55 = v106;
            }

            else
            {
              v55 = sub_100027064(0, v106[2] + 1, 1, v106);
            }

            v57 = *(v55 + 16);
            v56 = *(v55 + 24);
            if (v57 >= v56 >> 1)
            {
              v55 = sub_100027064(v56 > 1, v57 + 1, 1, v55);
            }

            *(v55 + 16) = v57 + 1;
            v58 = (*(v95 + 80) + 32) & ~*(v95 + 80);
            v106 = v55;
            sub_10001297C(v101, v55 + v58 + *(v95 + 72) * v57);
          }

          v34 += v102;
          if (!--v32)
          {
            break;
          }

          v105(v108, v34, v27);
        }

        v28 = v80;
        v59 = v106;
      }

      else
      {

        v59 = _swiftEmptyArrayStorage;
      }

      result = (*v75)(v82, v28);
      v60 = v59[2];
      v61 = v83;
      v62 = v83[2];
      v63 = &v60[v62];
      v64 = v95;
      if (__OFADD__(v62, v60))
      {
        goto LABEL_46;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v63 > *(v61 + 24) >> 1)
      {
        if (v62 <= v63)
        {
          v65 = &v60[v62];
        }

        else
        {
          v65 = v62;
        }

        result = sub_100027064(result, v65, 1, v61);
        v61 = result;
      }

      v27 = v96;
      v66 = v59[2];
      v83 = v61;
      if (v66)
      {
        if ((*(v61 + 24) >> 1) - *(v61 + 16) < v60)
        {
          goto LABEL_48;
        }

        v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v68 = *(v64 + 72);
        swift_arrayInitWithCopy();

        v19 = v74;
        result = v73;
        v29 = v81;
        if (v60)
        {
          v69 = v83[2];
          v70 = __OFADD__(v69, v60);
          v71 = &v60[v69];
          if (v70)
          {
            goto LABEL_49;
          }

          v83[2] = v71;
        }
      }

      else
      {

        v19 = v74;
        result = v73;
        v29 = v81;
        if (v60)
        {
          goto LABEL_47;
        }
      }

      v25 = v29 + 1;
      v28 = v80;
      if (v25 == v78)
      {

        return v83;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000127FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012860(uint64_t a1)
{
  v2 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000128BC()
{
  result = qword_100034E20;
  if (!qword_100034E20)
  {
    sub_100027DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E20);
  }

  return result;
}

uint64_t sub_100012914(uint64_t a1)
{
  v2 = sub_100001DBC(&qword_1000352C8, &unk_1000297E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001297C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalEntityRemover.CandidateStoreIdAssistantIdPair();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000129F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100012AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100027DAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100012B84()
{
  result = sub_100027DAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SiriUserFeedbackLearningUniversalSuggestionsPlugin()
{
  result = qword_1000353B0;
  if (!qword_1000353B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100012CAC()
{
  v0 = sub_100027F5C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_100027F4C();
  v7[3] = &type metadata for HomeStoreFactory;
  v7[4] = &off_1000313C8;
  type metadata accessor for UniversalEntityRemover();
  v4 = swift_allocObject();
  sub_100014554(v7, &type metadata for HomeStoreFactory);
  *(v4 + 40) = &type metadata for HomeStoreFactory;
  *(v4 + 48) = &off_1000313C8;
  sub_100001EB8(v7);
  v5 = sub_10001466C(v3, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_100012D78(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v4[2] = a1;
  v6 = sub_1000284DC();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = sub_100027F0C();
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v4[8] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[9] = v12;
  *v12 = v4;
  v12[1] = sub_100012EE0;

  return sub_100013150(a1, a2);
}

uint64_t sub_100012EE0()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_100012FDC, 0, 0);
}

uint64_t sub_100012FDC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  sub_100027F2C();
  v5 = (*(v2 + 88))(v1, v3);
  v6 = enum case for SiriUserFeedbackLearningTaskResult.Status.failure(_:);
  (*(v2 + 8))(v1, v3);
  if (qword_100034AB8 != -1)
  {
    swift_once();
  }

  v7 = v0[8];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v5 == v6)
  {
    v11 = "runUniversalSuggestionsPluginFailure";
  }

  else
  {
    v11 = "runUniversalSuggestionsPluginSuccess";
  }

  v12 = sub_10002850C();
  sub_10000AEF4(v12, qword_100036790);
  sub_1000284FC();
  sub_1000284BC();
  sub_100022708(v11, 36, 2);
  (*(v9 + 8))(v8, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100013150(uint64_t a1, uint64_t a2)
{
  v3[79] = v2;
  v3[78] = a2;
  v3[77] = a1;
  v4 = sub_100027F0C();
  v3[80] = v4;
  v5 = *(v4 - 8);
  v3[81] = v5;
  v6 = *(v5 + 64) + 15;
  v3[82] = swift_task_alloc();
  v7 = sub_1000284DC();
  v3[83] = v7;
  v8 = *(v7 - 8);
  v3[84] = v8;
  v9 = *(v8 + 64) + 15;
  v3[85] = swift_task_alloc();
  v10 = sub_100027F6C();
  v3[86] = v10;
  v11 = *(v10 - 8);
  v3[87] = v11;
  v12 = *(v11 + 64) + 15;
  v3[88] = swift_task_alloc();

  return _swift_task_switch(sub_1000132D0, 0, 0);
}

uint64_t sub_1000132D0()
{
  v54 = v0;
  if (qword_100034AC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 624);
  v5 = sub_10002858C();
  *(v0 + 712) = sub_10000AEF4(v5, qword_100035360);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_10002856C();
  v7 = sub_10002875C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100027364(0x72656E6E496E7572, 0xEC000000293A5F28, &v53);
    *(v12 + 12) = 2080;
    sub_100014EBC();
    v13 = sub_1000288EC();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_100027364(v13, v15, &v53);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "SiriUserFeedbackLearningUniversalSuggestionsPlugin.%s task:%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = (*(v0 + 632) + qword_100035378);
  v18 = v17[4];
  sub_100001E74(v17, v17[3]);
  sub_100027FEC();
  v19 = v17[4];
  sub_100001E74(v17, v17[3]);
  v20 = sub_100027F3C();
  *(v0 + 280) = sub_100027F7C();
  *(v0 + 288) = &protocol witness table for AnyFeature;
  *(v0 + 256) = v20;
  v21 = sub_100027FFC();
  sub_100001EB8((v0 + 256));
  if (v21)
  {
    if (qword_100034AB8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 680);
    v23 = *(v0 + 672);
    v24 = *(v0 + 664);
    v25 = *(v0 + 632);
    v26 = sub_10002850C();
    sub_10000AEF4(v26, qword_100036790);
    sub_1000284FC();
    sub_1000284BC();
    *(v0 + 720) = sub_1000228E8("runUniversalSuggestionsPlugin", 29, 2, v22);
    (*(v23 + 8))(v22, v24);
    sub_100014A18(v25 + qword_100035380, v0 + 336);
    if (*(v0 + 360))
    {
      v27 = *(v0 + 632);
      sub_100011274((v0 + 336), v0 + 296);
      sub_1000102B8(v0 + 296, v0 + 376);
      sub_100014A88(v27 + qword_100035388, v0 + 208);
      sub_1000102B8(v27 + qword_100035390, v0 + 416);
      sub_1000102B8(v27 + qword_100035398, v0 + 456);
      sub_1000102B8(v27 + qword_1000353A0, v0 + 496);
      type metadata accessor for SiriUserFeedbackLearningUniversalSuggestionsEngine();
      inited = swift_initStackObject();
      *(v0 + 728) = inited;
      sub_1000102B8(v0 + 376, inited + 16);
      sub_100014A88(v0 + 208, inited + 56);
      sub_1000102B8(v0 + 416, inited + 104);
      sub_1000102B8(v0 + 456, inited + 144);
      sub_1000102B8(v0 + 496, v0 + 536);
      v29 = sub_10002840C();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_1000283FC();
      sub_100001EB8((v0 + 496));
      sub_100001EB8((v0 + 456));
      sub_100001EB8((v0 + 416));
      sub_100001EB8((v0 + 208));
      sub_100001EB8((v0 + 376));
      *(inited + 184) = v32;
      v33 = sub_10002856C();
      v34 = sub_10002875C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "About to start executing Universal Suggestions engine...", v35, 2u);
      }

      v36 = swift_task_alloc();
      *(v0 + 736) = v36;
      *v36 = v0;
      v36[1] = sub_1000139A0;

      return sub_1000021E8();
    }

    v45 = *(v0 + 656);
    v46 = *(v0 + 648);
    v47 = *(v0 + 640);
    v48 = *(v0 + 616);
    sub_100014AEC(v0 + 336);
    *v45 = 0xD000000000000030;
    v45[1] = 0x800000010002A900;
    (*(v46 + 104))(v45, enum case for SiriUserFeedbackLearningTaskResult.Status.failure(_:), v47);
    sub_100027F1C();
    sub_100014144();
  }

  else
  {
    v38 = sub_10002856C();
    v39 = sub_10002875C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Universal User Feedback Offline Learning feature is disabled, skipping", v40, 2u);
    }

    v41 = *(v0 + 656);
    v42 = *(v0 + 648);
    v43 = *(v0 + 640);
    v44 = *(v0 + 616);

    (*(v42 + 104))(v41, enum case for SiriUserFeedbackLearningTaskResult.Status.skipped(_:), v43);
    sub_100027F1C();
  }

  v49 = *(v0 + 704);
  v50 = *(v0 + 680);
  v51 = *(v0 + 656);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1000139A0()
{
  v2 = *(*v1 + 736);
  v5 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_100013EE0;
  }

  else
  {
    v3 = sub_100013AB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100013AB4()
{
  v1 = v0[89];
  v2 = sub_10002856C();
  v3 = sub_10002875C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Universal Suggestions engine finished execution", v4, 2u);
  }

  v5 = v0[89];

  v6 = sub_10002856C();
  v7 = sub_10002875C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removing deleted entities...", v8, 2u);
  }

  v9 = v0[79];

  v10 = *sub_100001E74((v9 + qword_1000353A8), *(v9 + qword_1000353A8 + 24));
  v11 = swift_task_alloc();
  v0[94] = v11;
  *v11 = v0;
  v11[1] = sub_100013C4C;

  return sub_1000114B4((v0 + 37));
}

uint64_t sub_100013C4C()
{
  v1 = *(*v0 + 752);
  v3 = *v0;

  return _swift_task_switch(sub_100013D48, 0, 0);
}

uint64_t sub_100013D48()
{
  v1 = v0[89];
  v2 = sub_10002856C();
  v3 = sub_10002875C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "...Finished removing deleted entities", v4, 2u);
  }

  v5 = v0[91];
  v6 = v0[90];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[77];

  (*(v8 + 104))(v7, enum case for SiriUserFeedbackLearningTaskResult.Status.success(_:), v9);
  sub_100027F1C();
  swift_setDeallocating();
  sub_100001EB8(v5 + 2);
  sub_100001EB8(v5 + 7);
  sub_100001EB8(v5 + 13);
  sub_100001EB8(v5 + 18);
  v11 = v5[23];

  sub_100014B54((v0 + 37));
  sub_100001EB8(v0 + 37);
  sub_100014144();

  v12 = v0[88];
  v13 = v0[85];
  v14 = v0[82];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100013EE0()
{
  v29 = v0;
  v1 = v0[93];
  v2 = v0[89];
  swift_errorRetain();
  v3 = sub_10002856C();
  v4 = sub_10002876C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[93];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    v0[76] = v5;
    swift_errorRetain();
    sub_100001DBC(&qword_100034EB0, &qword_1000295F0);
    v8 = sub_10002861C();
    v10 = sub_100027364(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error thrown: %s", v6, 0xCu);
    sub_100001EB8(v7);
  }

  v11 = v0[93];
  v12 = v0[91];
  v13 = v0[90];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[80];
  v17 = v0[77];
  swift_getErrorValue();
  v18 = v0[72];
  v19 = v0[73];
  v20 = v0[74];
  *v14 = sub_10002893C();
  v14[1] = v21;
  (*(v15 + 104))(v14, enum case for SiriUserFeedbackLearningTaskResult.Status.failure(_:), v16);
  sub_100027F1C();

  swift_setDeallocating();
  sub_100001EB8(v12 + 2);
  sub_100001EB8(v12 + 7);
  sub_100001EB8(v12 + 13);
  sub_100001EB8(v12 + 18);
  v22 = v12[23];

  sub_100014B54((v0 + 37));
  sub_100001EB8(v0 + 37);
  sub_100014144();

  v23 = v0[88];
  v24 = v0[85];
  v25 = v0[82];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100014144()
{
  v0 = sub_10002851C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000284DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100034AB8 != -1)
  {
    swift_once();
  }

  v10 = sub_10002850C();
  sub_10000AEF4(v10, qword_100036790);
  v11 = sub_1000284FC();
  sub_10002852C();
  v12 = sub_10002877C();
  if (sub_1000287AC())
  {

    sub_10002855C();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1000284CC();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "runUniversalSuggestionsPlugin", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100014400()
{
  sub_100001EB8((v0 + qword_100035378));
  sub_100014AEC(v0 + qword_100035380);
  sub_100001EB8((v0 + qword_100035388));
  sub_100001EB8((v0 + qword_100035390));
  sub_100001EB8((v0 + qword_100035398));
  sub_100001EB8((v0 + qword_1000353A0));
  return sub_100001EB8((v0 + qword_1000353A8));
}

id sub_100014484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriUserFeedbackLearningUniversalSuggestionsPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000144BC(uint64_t a1)
{
  sub_100001EB8((a1 + qword_100035378));
  sub_100014AEC(a1 + qword_100035380);
  sub_100001EB8((a1 + qword_100035388));
  sub_100001EB8((a1 + qword_100035390));
  sub_100001EB8((a1 + qword_100035398));
  sub_100001EB8((a1 + qword_1000353A0));
  return sub_100001EB8((a1 + qword_1000353A8));
}

uint64_t sub_100014554(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000145A4()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100035360);
  v1 = sub_10000AEF4(v0, qword_100035360);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10001466C(uint64_t a1, uint64_t a2)
{
  v42[3] = sub_100027F5C();
  v42[4] = &protocol witness table for FeatureManager;
  v42[0] = a1;
  v4 = type metadata accessor for UniversalEntityRemover();
  v41[3] = v4;
  v41[4] = &off_100031398;
  v41[0] = a2;
  sub_1000102B8(v42, v40);
  v5 = sub_10002846C();
  v6 = sub_10002845C();
  if (v6)
  {
    v7 = &protocol witness table for UniversalSuggestionsStoreCoreData;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v39[1] = 0;
    v39[2] = 0;
  }

  v39[0] = v6;
  v39[3] = v5;
  v39[4] = v7;
  sub_10002803C();
  sub_10002802C();
  sub_10002800C();

  sub_10002802C();
  sub_10002801C();

  v8 = sub_10002829C();
  v9 = sub_10002828C();
  sub_10002818C();
  sub_1000102B8(v41, v34);
  v10 = v35;
  v11 = sub_100014554(v34, v35);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v8;
  v33[4] = &protocol witness table for FlatFileStreamBookmarkStore;
  v32 = &off_100031398;
  v33[0] = v9;
  v31 = v4;
  v30[0] = v16;
  v17 = type metadata accessor for SiriUserFeedbackLearningUniversalSuggestionsPlugin();
  v18 = objc_allocWithZone(v17);
  v19 = v31;
  v20 = sub_100014554(v30, v31);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v29[3] = v4;
  v29[4] = &off_100031398;
  v29[0] = v25;
  sub_1000102B8(v40, v18 + qword_100035378);
  sub_100014A18(v39, v18 + qword_100035380);
  sub_100014A88(v38, v18 + qword_100035388);
  sub_1000102B8(v37, v18 + qword_100035390);
  sub_1000102B8(v33, v18 + qword_100035398);
  sub_1000102B8(v36, v18 + qword_1000353A0);
  sub_1000102B8(v29, v18 + qword_1000353A8);
  v28.receiver = v18;
  v28.super_class = v17;
  v26 = objc_msgSendSuper2(&v28, "init");
  sub_100001EB8(v36);
  sub_100001EB8(v37);
  sub_100001EB8(v38);
  sub_100001EB8(v40);
  sub_100001EB8(v41);
  sub_100001EB8(v42);
  sub_100014AEC(v39);
  sub_100001EB8(v33);
  sub_100001EB8(v29);
  sub_100001EB8(v30);
  sub_100001EB8(v34);
  return v26;
}

uint64_t sub_100014A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100035400, &unk_1000298A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014A88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100014AEC(uint64_t a1)
{
  v2 = sub_100001DBC(&qword_100035400, &unk_1000298A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100014B54(uint64_t a1)
{
  v2 = sub_10002843C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_1000102B8(a1, v12);
  sub_100001DBC(&qword_100035410, &unk_1000298B0);
  sub_10002837C();
  if (swift_dynamicCast())
  {
    sub_10002842C();
    sub_10002841C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    if (qword_100034AC8 != -1)
    {
      swift_once();
    }

    v7 = sub_10002858C();
    sub_10000AEF4(v7, qword_100035360);
    v8 = sub_10002856C();
    v9 = sub_10002876C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not cast store to a Core Data instance", v10, 2u);
    }
  }
}

unint64_t sub_100014EBC()
{
  result = qword_100035408;
  if (!qword_100035408)
  {
    sub_100027F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035408);
  }

  return result;
}

uint64_t sub_100014F34()
{
  v1 = type metadata accessor for HomeKitManager();
  v2 = [objc_allocWithZone(v1) init];
  v0[5] = v1;
  v0[6] = &off_1000315C8;
  v0[2] = v2;
  v3 = type metadata accessor for HomeStore();
  v0[8] = v3;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  sub_100014554((v0 + 2), v1);
  v7 = *(v1 - 1);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v0[9] = v9;
  (*(v7 + 16))();
  v10 = *v9;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1000150BC;

  return sub_100015304(v10, v6);
}

uint64_t sub_1000150BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v6 = *v1;
  *(v2 + 88) = a1;

  sub_100001EB8((v2 + 16));

  return _swift_task_switch(sub_1000151E4, 0, 0);
}

uint64_t sub_1000151E4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v2[3] = *(v0 + 64);
  v2[4] = &off_100031230;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100015210(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100026B48(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_100015304(uint64_t a1, uint64_t a2)
{
  v2[12] = a2;
  v2[5] = type metadata accessor for HomeKitManager();
  v2[6] = &off_1000315C8;
  v2[2] = a1;

  return _swift_task_switch(sub_100015384, 0, 0);
}

uint64_t sub_100015384()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_homeManagerDidUpdateHomesContinuation;
  v3 = sub_100001DBC(&unk_100034B68, qword_1000298D0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_entityIds) = 0;
  sub_1000102B8((v0 + 2), v1 + 16);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v0 + 2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1000154E8;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000154E8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100015600, 0, 0);
}

id *sub_100015600()
{
  v1 = *sub_100001E74(v0 + 2, v0[5]);
  v2 = sub_100026594();
  v3 = v2[2];
  if (!v3)
  {

    v5 = _swiftEmptyArrayStorage;
LABEL_20:
    v16 = v0[12];
    v17 = sub_10001FB94(v5);

    v18 = *(v16 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_entityIds);
    *(v16 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_entityIds) = v17;

    sub_100001EB8(v0 + 2);
    v19 = v0[1];
    v20 = v0[12];

    return v19(v20);
  }

  v4 = (v2 + 4);
  v5 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_1000102B8(v4, (v0 + 7));
    v7 = sub_100001E74(v0 + 7, v0[10]);
    v8 = sub_100015BA0(*v7);
    result = sub_100001EB8(v0 + 7);
    v9 = v8[2];
    v10 = v5[2];
    v11 = &v9[v10];
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= (v5[3] >> 1))
    {
      if (v8[2])
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = &v9[v10];
      }

      else
      {
        v12 = v10;
      }

      result = sub_100026B48(result, v12, 1, v5);
      v5 = result;
      if (v8[2])
      {
LABEL_14:
        if (((v5[3] >> 1) - v5[2]) < v9)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = &v9[v13];
          if (v14)
          {
            goto LABEL_26;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_24;
    }

LABEL_4:
    v4 += 40;
    if (!--v3)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id *sub_100015800(void *a1)
{
  v1 = [a1 services];
  sub_10001117C(0, &qword_100035428, HMService_ptr);
  v2 = sub_10002866C();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000288CC())
  {
    v4 = 0;
    v31 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v30 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = v2;
    while (v31)
    {
      v7 = sub_10002883C();
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v36 = &type metadata for HomeKitService;
      v37 = &off_100031288;
      v35[0] = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100026C54(0, v5[2] + 1, 1, v5);
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_100026C54((v8 > 1), v9 + 1, 1, v5);
      }

      v10 = v36;
      v11 = sub_100014554(v35, v36);
      v12 = *(v10[-1].Description + 8);
      __chkstk_darwin(v11);
      v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v34 = &off_100031288;
      v33 = &type metadata for HomeKitService;
      *&v32 = v16;
      v5[2] = (v9 + 1);
      sub_10000EB50(&v32, &v5[5 * v9 + 4]);
      sub_100001EB8(v35);
      ++v4;
      v17 = v2 == i;
      v2 = v6;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    if (v4 >= *(v30 + 16))
    {
      goto LABEL_17;
    }

    v7 = *(v2 + 8 * v4 + 32);
    v2 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_20:

  v18 = v5[2];
  if (v18)
  {
    v19 = (v5 + 4);
    v20 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000102B8(v19, v35);
      v21 = [*sub_100001E74(v35 v36)];
      if (v21)
      {
        v22 = v21;
        v23 = sub_10002860C();
        v25 = v24;

        sub_100001EB8(v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100026B48(0, v20[2] + 1, 1, v20);
        }

        v27 = v20[2];
        v26 = v20[3];
        if (v27 >= v26 >> 1)
        {
          v20 = sub_100026B48((v26 > 1), v27 + 1, 1, v20);
        }

        v20[2] = (v27 + 1);
        v28 = &v20[2 * v27];
        v28[4] = v23;
        v28[5] = v25;
      }

      else
      {
        sub_100001EB8(v35);
      }

      v19 += 40;
      --v18;
    }

    while (v18);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v20;
}

id *sub_100015BA0(void *a1)
{
  v44 = a1;
  v1 = [a1 accessories];
  sub_10001117C(0, &qword_100035418, HMAccessory_ptr);
  v2 = sub_10002866C();

  *&v47 = v2;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000288CC())
  {
    v4 = 0;
    v46 = v47 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v45 = v47 & 0xFFFFFFFFFFFFFF8;
    while (v46)
    {
      v6 = sub_10002883C();
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v52 = &type metadata for HomeKitAccessory;
      v53 = &off_100031560;
      v51[0] = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100026C78(0, v5[2] + 1, 1, v5);
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_100026C78((v8 > 1), v9 + 1, 1, v5);
      }

      v10 = v52;
      v11 = sub_100014554(v51, v52);
      v12 = *(v10[-1].Description + 8);
      __chkstk_darwin(v11);
      v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v50 = &off_100031560;
      v49 = &type metadata for HomeKitAccessory;
      *&v48 = v16;
      v5[2] = (v9 + 1);
      sub_10000EB50(&v48, &v5[5 * v9 + 4]);
      sub_100001EB8(v51);
      ++v4;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    if (v4 >= *(v45 + 16))
    {
      goto LABEL_16;
    }

    v6 = *(v47 + 8 * v4 + 32);
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_19:

  v17 = v5[2];
  v18 = &off_100029000;
  if (!v17)
  {

    v19 = _swiftEmptyArrayStorage;
LABEL_40:
    v37 = [v44 assistantIdentifier];
    if (v37)
    {
      v38 = v37;
      v39 = sub_10002860C();
      v41 = v40;

      sub_100001DBC(&qword_100035420, &qword_10002A210);
      v42 = swift_allocObject();
      *(v42 + 1) = *(v18 + 70);
      v42[4] = v39;
      v42[5] = v41;
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
    }

    v51[0] = v19;
    sub_100015210(v42);
    return v51[0];
  }

  v19 = _swiftEmptyArrayStorage;
  v20 = (v5 + 4);
  v47 = xmmword_100029460;
  while (1)
  {
    sub_1000102B8(v20, v51);
    v22 = sub_100001E74(v51, v52);
    v23 = sub_100015800(*v22);
    v24 = [*sub_100001E74(v51 v52)];
    if (v24)
    {
      v25 = v24;
      v26 = sub_10002860C();
      v28 = v27;

      sub_100001DBC(&qword_100035420, &qword_10002A210);
      inited = swift_initStackObject();
      *(inited + 16) = v47;
      *(inited + 32) = v26;
      *(inited + 40) = v28;
      *&v48 = v23;
      sub_100015210(inited);
      v23 = v48;
    }

    result = sub_100001EB8(v51);
    v30 = v23[2];
    v31 = v19[2];
    v32 = &v30[v31];
    if (__OFADD__(v31, v30))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v32 <= (v19[3] >> 1))
    {
      if (v23[2])
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v33 = &v30[v31];
      }

      else
      {
        v33 = v31;
      }

      result = sub_100026B48(result, v33, 1, v19);
      v19 = result;
      if (v23[2])
      {
LABEL_34:
        if (((v19[3] >> 1) - v19[2]) < v30)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v34 = v19[2];
          v35 = __OFADD__(v34, v30);
          v36 = &v30[v34];
          if (v35)
          {
            goto LABEL_47;
          }

          v19[2] = v36;
        }

        goto LABEL_22;
      }
    }

    if (v30)
    {
      goto LABEL_45;
    }

LABEL_22:
    v20 += 40;
    if (!--v17)
    {

      v18 = &off_100029000;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100016080(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_100016130()
{
  sub_10002882C(98);
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x800000010002ACE0;
  sub_10002863C(v8);
  sub_10002863C(*v0);
  v9._countAndFlagsBits = 0x7473656D6974202CLL;
  v9._object = 0xED0000203A706D61;
  sub_10002863C(v9);
  if (*(v0 + 24))
  {
    object = 0xE300000000000000;
    v2._countAndFlagsBits = 7104878;
  }

  else
  {
    v3 = *(v0 + 16);
    v2._countAndFlagsBits = sub_10002872C();
    object = v2._object;
  }

  v2._object = object;
  sub_10002863C(v2);

  v10._object = 0x800000010002AD10;
  v10._countAndFlagsBits = 0xD000000000000010;
  sub_10002863C(v10);
  v4 = type metadata accessor for UniversalSuggestionItem(0);
  v5 = *(v4 + 24);
  sub_100027DAC();
  sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
  v11._countAndFlagsBits = sub_1000288EC();
  sub_10002863C(v11);

  v12._countAndFlagsBits = 0xD00000000000001BLL;
  v12._object = 0x800000010002AD30;
  sub_10002863C(v12);
  v6 = *(v4 + 28);
  sub_1000282BC();
  sub_1000288AC();
  return 0;
}

Swift::Int sub_1000162FC()
{
  v1 = *v0;
  sub_10002894C();
  sub_10002895C(v1);
  return sub_10002897C();
}

Swift::Int sub_100016370()
{
  v1 = *v0;
  sub_10002894C();
  sub_10002895C(v1);
  return sub_10002897C();
}

unint64_t sub_1000163C8()
{
  v1 = 0xD000000000000024;
  v2 = *v0;
  v3 = 0xD000000000000027;
  if (v2 != 3)
  {
    v3 = 0xD000000000000023;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000024;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000026;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v4;
  }

  *v0;
  return result;
}

uint64_t sub_100016454()
{
  v1 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v15 - v3;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_10002882C(73);
  v16._countAndFlagsBits = 0xD000000000000030;
  v16._object = 0x800000010002AB90;
  sub_10002863C(v16);
  v5 = *(v0 + *(type metadata accessor for UniversalSuggestionDisambiguationOffered(0) + 20));
  v6 = 0xD000000000000026;
  v7 = "feredState.cancelled";
  v8 = "feredState.inconclusive";
  v9 = ", respondRequestId: ";
  v10 = 0xD000000000000027;
  if (v5 != 3)
  {
    v10 = 0xD000000000000023;
    v9 = "nOffered(state: ";
  }

  if (v5 == 2)
  {
    v11 = 0xD000000000000024;
  }

  else
  {
    v11 = v10;
  }

  if (v5 != 2)
  {
    v8 = v9;
  }

  if (v5)
  {
    v6 = 0xD000000000000024;
    v7 = "feredState.abandoned";
  }

  if (v5 <= 1)
  {
    v12._countAndFlagsBits = v6;
  }

  else
  {
    v12._countAndFlagsBits = v11;
  }

  if (v5 <= 1)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  v12._object = (v13 | 0x8000000000000000);
  sub_10002863C(v12);

  v17._countAndFlagsBits = 0xD000000000000014;
  v17._object = 0x800000010002AC00;
  sub_10002863C(v17);
  sub_10000ED84(v0, v4, &qword_100034EB8, &qword_1000295F8);
  v18._countAndFlagsBits = sub_10002861C();
  sub_10002863C(v18);

  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  sub_10002863C(v19);
  return v15[0];
}

unint64_t sub_100016618()
{
  v1 = v0;
  v2 = sub_1000280AC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FA40(v1, v13, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  v14 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v15 = (*(*(v14 - 8) + 48))(v13, 2, v14);
  if (v15)
  {
    if (v15 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD000000000000025;
    }
  }

  else
  {
    v17 = *(v14 + 48);
    v18 = v3[4];
    v18(v9, v13, v2);
    v18(v7, &v13[v17], v2);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_10002882C(49);

    v25 = 0xD000000000000022;
    v26 = 0x800000010002AA70;
    v19._countAndFlagsBits = sub_10002809C();
    if (v19._object)
    {
      object = v19._object;
    }

    else
    {
      v19._countAndFlagsBits = 7104878;
      object = 0xE300000000000000;
    }

    v19._object = object;
    sub_10002863C(v19);

    v27._countAndFlagsBits = 0x746567726174202CLL;
    v27._object = 0xEA0000000000203ALL;
    sub_10002863C(v27);
    v21._countAndFlagsBits = sub_10002809C();
    if (v21._object)
    {
      v22 = v21._object;
    }

    else
    {
      v21._countAndFlagsBits = 7104878;
      v22 = 0xE300000000000000;
    }

    v21._object = v22;
    sub_10002863C(v21);

    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    sub_10002863C(v28);
    v23 = v25;
    v24 = v3[1];
    v24(v7, v2);
    v24(v9, v2);
    return v23;
  }
}

unint64_t sub_100016924()
{
  v1 = v0;
  v2 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FA40(v1, v9, type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState);
  v10 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v11 = (*(*(v10 - 8) + 48))(v9, 3, v10);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else if (v11)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    sub_10001FB2C(v9, v5, type metadata accessor for UniversalSuggestionDisambiguationOffered);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_10002882C(58);
    v15._countAndFlagsBits = 0xD000000000000037;
    v15._object = 0x800000010002AAF0;
    sub_10002863C(v15);
    v16._countAndFlagsBits = sub_100016454();
    sub_10002863C(v16);

    v17._countAndFlagsBits = 41;
    v17._object = 0xE100000000000000;
    sub_10002863C(v17);
    v12 = v14[0];
    sub_10001FAA8(v5, type metadata accessor for UniversalSuggestionDisambiguationOffered);
    return v12;
  }
}

uint64_t sub_100016B64()
{
  sub_10002882C(54);
  v3._object = 0x800000010002AAC0;
  v3._countAndFlagsBits = 0xD000000000000024;
  sub_10002863C(v3);
  v4._countAndFlagsBits = sub_100016130();
  sub_10002863C(v4);

  v5._countAndFlagsBits = 0x74536B736174202CLL;
  v5._object = 0xED0000203A657461;
  sub_10002863C(v5);
  v1 = v0 + *(type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0) + 20);
  v6._countAndFlagsBits = sub_100016924();
  sub_10002863C(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_10002863C(v7);
  return 0;
}

uint64_t sub_100016C54()
{
  v1 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_10002882C(71);
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x800000010002A9F0;
  sub_10002863C(v8);
  sub_100027DAC();
  sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
  v9._countAndFlagsBits = sub_1000288EC();
  sub_10002863C(v9);

  v10._object = 0x800000010002AA20;
  v10._countAndFlagsBits = 0xD000000000000013;
  sub_10002863C(v10);
  v5 = type metadata accessor for UniversalSuggestionRequestTaskState(0);
  sub_10000ED84(v0 + *(v5 + 20), v4, &qword_100034E10, &qword_100029AF0);
  v11._countAndFlagsBits = sub_10002861C();
  sub_10002863C(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_10002863C(v12);
  return v7[0];
}

uint64_t sub_100016DFC()
{
  sub_10002882C(64);
  v3._object = 0x800000010002A480;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  sub_10002863C(v3);
  type metadata accessor for UniversalSuggestionCorrectionDiscovered(0);
  sub_1000288AC();
  v4._countAndFlagsBits = 0x736575716572202CLL;
  v4._object = 0xEF203A6B73615474;
  sub_10002863C(v4);
  v1 = v0 + *(type metadata accessor for UniversalSuggestionRequestState(0) + 20);
  v5._countAndFlagsBits = sub_100016C54();
  sub_10002863C(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  sub_10002863C(v6);
  return 0;
}

uint64_t sub_100016EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = sub_100001DBC(&qword_100035558, &qword_100029AD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v57 = &v53 - v7;
  v8 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000282BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100001DBC(&qword_100035560, &unk_100029AD8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v53 - v21;
  v23 = type metadata accessor for UniversalSuggestionItem(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017674(a1, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_10000EDEC(v22, &qword_100035560, &unk_100029AD8);
    v28 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
    v29 = sub_100027DAC();
    (*(*(v29 - 8) + 16))(a3, a1 + v28, v29);
    v30 = *(type metadata accessor for UniversalSuggestionRequestTaskState(0) + 20);
    v31 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
    return (*(*(v31 - 8) + 56))(a3 + v30, 1, 1, v31);
  }

  sub_10001FB2C(v22, v27, type metadata accessor for UniversalSuggestionItem);
  v33 = *(v23 + 28);
  (*(v15 + 104))(v18, enum case for PLUSSuggestionSurfacedState.notSurfaced(_:), v14);
  LOBYTE(v33) = sub_1000282AC();
  (*(v15 + 8))(v18, v14);
  if ((v33 & 1) == 0)
  {
    if (sub_1000208D0(a1, v27))
    {
      v42 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
      v43 = sub_100001DBC(&qword_100034E18, &qword_100029560);
      v44 = v58;
      (*(*(v43 - 8) + 56))(v58, 3, 3, v43);
    }

    else
    {
      v45 = v57;
      sub_100018C94(a1, v56, v27, v57);
      if ((*(v54 + 48))(v45, 1, v55) != 1)
      {
        v48 = v53;
        sub_10001FB2C(v45, v53, type metadata accessor for UniversalSuggestionDisambiguationOffered);
        v49 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
        v50 = v48;
        v44 = v58;
        sub_10001FB2C(v50, v58, type metadata accessor for UniversalSuggestionDisambiguationOffered);
        v51 = sub_100001DBC(&qword_100034E18, &qword_100029560);
        (*(*(v51 - 8) + 56))(v44, 0, 3, v51);
        v52 = sub_100027DAC();
        (*(*(v52 - 8) + 16))(a3, a1 + v49, v52);
        goto LABEL_11;
      }

      sub_10000EDEC(v45, &qword_100035558, &qword_100029AD0);
      v42 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
      v46 = sub_100001DBC(&qword_100034E18, &qword_100029560);
      v44 = v58;
      (*(*(v46 - 8) + 56))(v58, 2, 3, v46);
    }

    v47 = sub_100027DAC();
    (*(*(v47 - 8) + 16))(a3, a1 + v42, v47);
LABEL_11:
    v38 = a3 + *(type metadata accessor for UniversalSuggestionRequestTaskState(0) + 20);
    sub_10001FB2C(v27, v38, type metadata accessor for UniversalSuggestionItem);
    v39 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
    v40 = v38 + *(v39 + 20);
    v41 = v44;
    goto LABEL_12;
  }

  v34 = *(type metadata accessor for UniversalSuggestionsFeaturisedTurn(0) + 20);
  v35 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v36 = v58;
  (*(*(v35 - 8) + 56))(v58, 1, 3, v35);
  v37 = sub_100027DAC();
  (*(*(v37 - 8) + 16))(a3, a1 + v34, v37);
  v38 = a3 + *(type metadata accessor for UniversalSuggestionRequestTaskState(0) + 20);
  sub_10001FB2C(v27, v38, type metadata accessor for UniversalSuggestionItem);
  v39 = type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState(0);
  v40 = v38 + *(v39 + 20);
  v41 = v36;
LABEL_12:
  sub_10001FB2C(v41, v40, type metadata accessor for UniversalSuggestionRequestTaskState.RequestTaskState);
  return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
}

uint64_t sub_100017674@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100027D7C();
  v161 = *(v4 - 8);
  v162 = v4;
  v5 = *(v161 + 64);
  __chkstk_darwin(v4);
  v157 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v171 = (&v151 - v9);
  v10 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v151 - v12;
  v14 = sub_100027DAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v164 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v160 = &v151 - v20;
  v21 = __chkstk_darwin(v19);
  v158 = &v151 - v22;
  __chkstk_darwin(v21);
  v167 = &v151 - v23;
  v24 = sub_10002827C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29);
  v32 = __chkstk_darwin(v31);
  v163 = &v151 - v33;
  v34 = __chkstk_darwin(v32);
  v159 = &v151 - v35;
  v36 = __chkstk_darwin(v34);
  v39 = &v151 - v38;
  v166 = v36;
  v40 = *(v36 + 48);
  v168 = a1;
  v41 = *(a1 + v40);
  if (v41)
  {
    v42 = v41[2];
    v154 = v37;
    if (v42 >= 2)
    {
      v155 = v28;
      v165 = v14;
      v156 = v24;
      if (qword_100034AF8 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_4;
    }

LABEL_11:
    if (v42)
    {
      (*(v25 + 16))(v28, v41 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v24);
      sub_10002825C();
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        (*(v25 + 8))(v28, v24);
        sub_10000EDEC(v13, &qword_100034EB8, &qword_1000295F8);
      }

      else
      {
        (*(v15 + 32))(v167, v13, v14);
        v58 = *(v168 + *(v166 + 36));
        v153 = a2;
        v152 = v25;
        v156 = v24;
        v151 = v15;
        v165 = v14;
        v155 = v28;
        v169 = v58 & 0xFFFFFFFFFFFFFF8;
        if (v58 >> 62)
        {
          v170 = sub_1000288CC();
        }

        else
        {
          v170 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v39 = 0;
        v13 = 0;
        while (v170 != v39)
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            v64 = sub_10002883C();
          }

          else
          {
            if (v39 >= *(v169 + 16))
            {
              goto LABEL_52;
            }

            v64 = *(v58 + 8 * v39 + 32);
          }

          a2 = v64;
          if (__OFADD__(v39, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            swift_once();
LABEL_4:
            v43 = sub_10002858C();
            sub_10000AEF4(v43, qword_100035430);
            sub_10001FA40(v168, v39, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
            swift_bridgeObjectRetain_n();
            v44 = sub_10002856C();
            v45 = sub_10002876C();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v153 = a2;
              v152 = v25;
              v47 = v46;
              v48 = swift_slowAlloc();
              v172[0] = v48;
              *v47 = 136315394;
              v49 = *(v166 + 20);
              sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
              v50 = sub_1000288EC();
              v52 = v51;
              sub_10001FAA8(v39, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
              v53 = sub_100027364(v50, v52, v172);

              *(v47 + 4) = v53;
              *(v47 + 12) = 2048;
              v54 = v41[2];

              *(v47 + 14) = v54;

              _os_log_impl(&_mh_execute_header, v44, v45, "Suggestion summaries for requestId: %s has multiple (%ld) entries, using first", v47, 0x16u);
              sub_100001EB8(v48);

              v25 = v152;
              a2 = v153;
            }

            else
            {

              swift_bridgeObjectRelease_n();
              sub_10001FAA8(v39, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
            }

            v28 = v155;
            v42 = v41[2];
            v24 = v156;
            v14 = v165;
            goto LABEL_11;
          }

          v62 = [v64 currentTaskName];
          if (v62)
          {
            v59 = v62;
            v60 = sub_10002860C();
            v15 = v61;
          }

          else
          {
            v60 = 0;
            v15 = 0;
          }

          v41 = &v151;
          v172[0] = v60;
          v172[1] = v15;
          __chkstk_darwin(v62);
          *(&v151 - 2) = v172;
          v25 = sub_100016080(sub_1000226EC, (&v151 - 4), &off_100031000);

          sub_100001DBC(&qword_100035520, &qword_100029A88);
          swift_arrayDestroy();

          ++v39;
          v63 = v171;
          if (v25)
          {
            v85 = v167;
            v86 = sub_10001992C(v168, v167);
            v87 = v151;
            if (v86)
            {
              v88 = sub_1000203BC();
              v90 = v153;
              if (v89)
              {
                v91 = v88;
                v92 = v89;
                sub_10000ED84(v168, v63, &qword_100034ED0, &qword_100029610);
                v93 = v161;
                v94 = v162;
                v95 = (*(v161 + 48))(v63, 1, v162);
                v96 = 0.0;
                if (v95 != 1)
                {
                  v97 = v157;
                  (*(v93 + 32))(v157, v63, v94);
                  sub_100027D4C();
                  v96 = sub_10002815C(v98);
                  (*(v93 + 8))(v97, v94);
                }

                v99 = v95 == 1;
                v100 = type metadata accessor for UniversalSuggestionItem(0);
                v101 = v167;
                v102 = v165;
                (*(v87 + 16))(v90 + *(v100 + 24), v167, v165);
                v103 = v90 + *(v100 + 28);
                v104 = v155;
                sub_10002826C();

                (*(v87 + 8))(v101, v102);
                (*(v152 + 8))(v104, v156);
                *v90 = v91;
                v90[1] = v92;
                *(v90 + 2) = v96;
                *(v90 + 24) = v99;
                return (*(*(v100 - 8) + 56))(v90, 0, 1, v100);
              }

              if (qword_100034AF8 != -1)
              {
                swift_once();
              }

              v128 = sub_10002858C();
              sub_10000AEF4(v128, qword_100035430);
              v129 = v158;
              v130 = v165;
              (*(v87 + 16))(v158, v85, v165);
              v131 = v159;
              sub_10001FA40(v168, v159, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
              v132 = sub_10002856C();
              v133 = sub_10002876C();
              if (os_log_type_enabled(v132, v133))
              {
                v134 = swift_slowAlloc();
                v171 = v132;
                v135 = v129;
                v136 = v134;
                v172[0] = swift_slowAlloc();
                *v136 = 136315394;
                sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
                LODWORD(v170) = v133;
                v137 = sub_1000288EC();
                v139 = v138;
                v140 = *(v87 + 8);
                v140(v135, v130);
                v141 = sub_100027364(v137, v139, v172);

                *(v136 + 4) = v141;
                *(v136 + 12) = 2080;
                v142 = v159;
                v143 = v159 + *(v166 + 20);
                v144 = sub_1000288EC();
                v146 = v145;
                sub_10001FAA8(v142, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
                v147 = sub_100027364(v144, v146, v172);
                v90 = v153;

                *(v136 + 14) = v147;
                v148 = v171;
                _os_log_impl(&_mh_execute_header, v171, v170, "Failed to parse suggestion entity id with suggestionId: %s; in request %s", v136, 0x16u);
                swift_arrayDestroy();

                v140(v167, v130);
              }

              else
              {

                sub_10001FAA8(v131, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
                v150 = *(v87 + 8);
                v150(v129, v130);
                v150(v85, v130);
              }
            }

            else
            {
              v90 = v153;
              if (qword_100034AF8 != -1)
              {
                swift_once();
              }

              v109 = sub_10002858C();
              sub_10000AEF4(v109, qword_100035430);
              v110 = v160;
              v111 = v165;
              (*(v87 + 16))(v160, v85, v165);
              v112 = v163;
              sub_10001FA40(v168, v163, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
              v113 = sub_10002856C();
              v114 = sub_10002876C();
              if (os_log_type_enabled(v113, v114))
              {
                v115 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v172[0] = v171;
                *v115 = 136315394;
                sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
                LODWORD(v170) = v114;
                v116 = sub_1000288EC();
                v117 = v90;
                v119 = v118;
                v120 = *(v87 + 8);
                v120(v110, v111);
                v121 = sub_100027364(v116, v119, v172);
                v90 = v117;

                *(v115 + 4) = v121;
                *(v115 + 12) = 2080;
                v122 = v163;
                v123 = v163 + *(v166 + 20);
                v124 = sub_1000288EC();
                v126 = v125;
                sub_10001FAA8(v122, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
                v127 = sub_100027364(v124, v126, v172);

                *(v115 + 14) = v127;
                _os_log_impl(&_mh_execute_header, v113, v170, "Failed to extract offered suggested entity with suggestionId: %s; in request: %s", v115, 0x16u);
                swift_arrayDestroy();

                v120(v167, v111);
              }

              else
              {

                sub_10001FAA8(v112, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
                v149 = *(v87 + 8);
                v149(v110, v111);
                v149(v85, v111);
              }
            }

            (*(v152 + 8))(v155, v156);
            v106 = type metadata accessor for UniversalSuggestionItem(0);
            v107 = *(*(v106 - 8) + 56);
            v108 = v90;
            return v107(v108, 1, 1, v106);
          }
        }

        v65 = v164;
        if (qword_100034AF8 != -1)
        {
          swift_once();
        }

        v66 = sub_10002858C();
        sub_10000AEF4(v66, qword_100035430);
        v67 = v151;
        v68 = v167;
        v69 = v165;
        (*(v151 + 16))(v65, v167, v165);
        v70 = v154;
        sub_10001FA40(v168, v154, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v71 = sub_10002856C();
        v72 = sub_10002876C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v172[0] = v171;
          *v73 = 136315394;
          sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
          v74 = sub_1000288EC();
          v75 = v65;
          v77 = v76;
          v78 = *(v67 + 8);
          v78(v75, v69);
          v79 = sub_100027364(v74, v77, v172);

          *(v73 + 4) = v79;
          *(v73 + 12) = 2080;
          v80 = v70 + *(v166 + 20);
          v81 = sub_1000288EC();
          v83 = v82;
          sub_10001FAA8(v70, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v84 = sub_100027364(v81, v83, v172);

          *(v73 + 14) = v84;
          _os_log_impl(&_mh_execute_header, v71, v72, "Failed to find Home task for suggestion with suggestionId: %s; in request %s", v73, 0x16u);
          swift_arrayDestroy();

          v78(v167, v69);
        }

        else
        {

          sub_10001FAA8(v70, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          v105 = *(v67 + 8);
          v105(v65, v69);
          v105(v68, v69);
        }

        (*(v152 + 8))(v155, v156);
        a2 = v153;
      }
    }

    v106 = type metadata accessor for UniversalSuggestionItem(0);
    v107 = *(*(v106 - 8) + 56);
    v108 = a2;
    return v107(v108, 1, 1, v106);
  }

  else
  {
    v55 = type metadata accessor for UniversalSuggestionItem(0);
    v56 = *(*(v55 - 8) + 56);

    return v56(a2, 1, 1, v55);
  }
}

Swift::Int sub_1000189B0(Swift::Int result, uint64_t a2)
{
  if (*(result + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  for (i = result + 56; v8; v4 = v11)
  {
    v11 = v4;
LABEL_11:
    if (!*(v3 + 16))
    {
      return 0;
    }

    v12 = *(*(a2 + 48) + ((v11 << 8) | (4 * __clz(__rbit64(v8)))));
    v13 = *(v3 + 40);
    sub_10002894C();
    sub_10002896C(v12);
    result = sub_10002897C();
    v14 = -1 << *(v3 + 32);
    v15 = result & ~v14;
    if (((*(i + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v8 &= v8 - 1;
    v16 = ~v14;
    while (*(*(v3 + 48) + 4 * v15) != v12)
    {
      v15 = (v15 + 1) & v16;
      if (((*(i + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100018B24(Swift::Int result, Swift::Int a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v12)))));
      v15 = *(v6 + 40);
      sub_10002894C();
      sub_10002896C(v14);
      result = sub_10002897C();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v6 + 48) + 4 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v99 = a2;
  v6 = sub_100001DBC(&qword_100035518, &unk_100029A78);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v94 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v95 = &v94 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v94 - v13;
  __chkstk_darwin(v12);
  v97 = &v94 - v15;
  v16 = type metadata accessor for UniversalSuggestionItem(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v109 = &v94 - v21;
  v22 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v103 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v108 = &v94 - v26;
  v27 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27);
  v106 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v107 = &v94 - v32;
  v33 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
  v105 = *(v33 - 8);
  v34 = *(v105 + 64);
  v35 = __chkstk_darwin(v33);
  v96 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v28 + 44);
  v98 = a1;
  v38 = *(a1 + v37);
  v110 = v38 >> 62;
  v111 = a4;
  v104 = v20;
  v102 = v35;
  v101 = v14;
  if (v38 >> 62)
  {
LABEL_47:
    v39 = sub_1000288CC();
    if (!v39)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v39)
    {
      goto LABEL_48;
    }
  }

  v40 = 0;
  v41 = v38 & 0xC000000000000001;
  v112 = v38 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v41)
    {
      v42 = sub_10002883C();
    }

    else
    {
      if (v40 >= *(v112 + 16))
      {
        goto LABEL_46;
      }

      v42 = *(v38 + 32 + 8 * v40);
    }

    v43 = v42;
    if (__OFADD__(v40++, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (qword_100034AD8 != -1)
    {
      swift_once();
    }

    v45 = qword_1000367C0;
    v46 = [v43 flowStateType];
    if (*(v45 + 16))
    {
      v47 = v46;
      v48 = *(v45 + 40);
      sub_10002894C();
      sub_10002896C(v47);
      v49 = sub_10002897C();
      v50 = -1 << *(v45 + 32);
      v51 = v49 & ~v50;
      if ((*(v45 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
      {
        break;
      }
    }

LABEL_4:

    if (v40 == v39)
    {
      goto LABEL_48;
    }
  }

  v52 = ~v50;
  while (*(*(v45 + 48) + 4 * v51) != v47)
  {
    v51 = (v51 + 1) & v52;
    if (((*(v45 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (v110)
  {
    v53 = sub_1000288CC();
  }

  else
  {
    v53 = *(v112 + 16);
  }

  v54 = 0;
  while (v53 != v54)
  {
    if (v41)
    {
      v61 = sub_10002883C();
    }

    else
    {
      if (v54 >= *(v112 + 16))
      {
        goto LABEL_44;
      }

      v61 = *(v38 + 8 * v54 + 32);
    }

    v62 = v61;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v59 = [v61 currentTaskName];
    if (v59)
    {
      v55 = v59;
      v56 = sub_10002860C();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    v113[0] = v56;
    v113[1] = v58;
    __chkstk_darwin(v59);
    *(&v94 - 2) = v113;
    v60 = sub_100016080(sub_10001FA14, (&v94 - 4), &off_1000310E8);

    sub_100001DBC(&qword_100035520, &qword_100029A88);
    swift_arrayDestroy();

    ++v54;
    if (v60)
    {
      sub_100001DBC(&qword_100035528, &unk_100029A90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000299E0;
      *(inited + 32) = sub_10001FA34;
      *(inited + 40) = 0;
      *(inited + 48) = sub_10001FA38;
      *(inited + 56) = 0;
      *(inited + 64) = sub_10001FA3C;
      *(inited + 72) = 0;
      v64 = v98;
      sub_10001FA40(v98, v107, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v65 = v99;
      sub_10000ED84(v99, v108, &qword_100034E28, &qword_100029570);
      v66 = v100;
      sub_10001FA40(v100, v109, type metadata accessor for UniversalSuggestionItem);
      v67 = v64;
      v68 = v106;
      sub_10001FA40(v67, v106, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v69 = v103;
      v70 = v68;
      sub_10000ED84(v65, v103, &qword_100034E28, &qword_100029570);
      v71 = v104;
      sub_10001FA40(v66, v104, type metadata accessor for UniversalSuggestionItem);
      v73 = *(inited + 32);
      v72 = *(inited + 40);
      v74 = v101;
      v73(v68, v69, v71);
      v75 = *(v105 + 48);
      v76 = v102;
      if (v75(v74, 1, v102) != 1)
      {
        goto LABEL_36;
      }

      sub_10000EDEC(v74, &qword_100035518, &unk_100029A78);
      v73 = *(inited + 48);
      v77 = *(inited + 56);
      v73(v70, v69, v71);
      if (v75(v74, 1, v76) != 1)
      {
        goto LABEL_36;
      }

      sub_10000EDEC(v74, &qword_100035518, &unk_100029A78);
      v73 = *(inited + 64);
      v78 = *(inited + 72);
      v73(v70, v69, v71);
      if (v75(v74, 1, v76) == 1)
      {
        sub_10000EDEC(v74, &qword_100035518, &unk_100029A78);
        sub_10001FAA8(v107, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        sub_10000EDEC(v108, &qword_100034E28, &qword_100029570);
        sub_10001FAA8(v109, type metadata accessor for UniversalSuggestionItem);
        v79 = 1;
        v80 = v111;
        v81 = v97;
        v82 = v96;
      }

      else
      {
LABEL_36:
        v112 = v75;
        sub_10000EDEC(v74, &qword_100035518, &unk_100029A78);

        v83 = v95;
        v84 = v107;
        v85 = v108;
        v86 = v109;
        v73(v107, v108, v109);
        sub_10001FAA8(v84, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        sub_10000EDEC(v85, &qword_100034E28, &qword_100029570);
        sub_10001FAA8(v86, type metadata accessor for UniversalSuggestionItem);

        v87 = v94;
        sub_10000ED84(v83, v94, &qword_100035518, &unk_100029A78);
        v75 = v112;
        if ((v112)(v87, 1, v76) == 1)
        {
          sub_10001FAA8(v106, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          sub_10000EDEC(v103, &qword_100034E28, &qword_100029570);
          result = sub_10001FAA8(v104, type metadata accessor for UniversalSuggestionItem);
          __break(1u);
          return result;
        }

        v81 = v97;
        sub_10001FB2C(v87, v97, type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse);
        sub_10000EDEC(v83, &qword_100035518, &unk_100029A78);
        v79 = 0;
        v80 = v111;
        v82 = v96;
        v69 = v103;
        v71 = v104;
      }

      (*(v105 + 56))(v81, v79, 1, v76);

      sub_10001FAA8(v106, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      sub_10000EDEC(v69, &qword_100034E28, &qword_100029570);
      sub_10001FAA8(v71, type metadata accessor for UniversalSuggestionItem);
      if (v75(v81, 1, v76) == 1)
      {
        v88 = *(v76 + 20);
        v89 = sub_100027DAC();
        (*(*(v89 - 8) + 56))(&v82[v88], 1, 1, v89);
        *v82 = 3;
        if (v75(v81, 1, v76) != 1)
        {
          sub_10000EDEC(v81, &qword_100035518, &unk_100029A78);
        }
      }

      else
      {
        sub_10001FB2C(v81, v82, type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse);
      }

      sub_10000ED84(&v82[*(v76 + 20)], v80, &qword_100034EB8, &qword_1000295F8);
      v90 = *v82;
      sub_10001FAA8(v82, type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse);
      v91 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
      *(v80 + *(v91 + 20)) = v90;
      return (*(*(v91 - 8) + 56))(v80, 0, 1, v91);
    }
  }

LABEL_48:
  v93 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
  return (*(*(v93 - 8) + 56))(v111, 1, 1, v93);
}

uint64_t sub_10001992C(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v70 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v4 = *(*(v70 - 8) + 64);
  v5 = __chkstk_darwin(v70);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v67 - v7;
  v8 = sub_100027DAC();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  v10 = __chkstk_darwin(v8);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v67 - v12;
  v71 = sub_1000280AC();
  v13 = *(v71 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v71);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100001DBC(&qword_100035510, &qword_100029A70);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v67 - v19;
  v21 = sub_10002810C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2[6];
  sub_100001E74(v2 + 2, v2[5]);
  v74 = a2;
  v27 = v21;
  v28 = v22;
  sub_10002821C();
  if ((*(v22 + 48))(v20, 1, v27) == 1)
  {
    sub_10000EDEC(v20, &qword_100035510, &qword_100029A70);
    if (qword_100034AF8 != -1)
    {
      swift_once();
    }

    v29 = sub_10002858C();
    sub_10000AEF4(v29, qword_100035430);
    v31 = v76;
    v30 = v77;
    v32 = v72;
    (*(v76 + 16))(v72, v74, v77);
    v33 = v73;
    sub_10001FA40(v75, v73, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v34 = sub_10002856C();
    v35 = sub_10002876C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v36 = 136315394;
      sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
      v37 = sub_1000288EC();
      v39 = v38;
      (*(v31 + 8))(v32, v30);
      v40 = sub_100027364(v37, v39, &v78);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v41 = v33 + *(v70 + 20);
      v42 = sub_100027D8C();
      v44 = v43;
      sub_10001FAA8(v33, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v45 = sub_100027364(v42, v44, &v78);

      *(v36 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to find candidate corresponding to offered suggestionId: %s; in request: %s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001FAA8(v33, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v31 + 8))(v32, v30);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v27);
    sub_1000280EC();
    v46 = v71;
    if ((*(v13 + 88))(v16, v71) == enum case for UniversalEntity.homeAutomationEntity(_:))
    {
      (*(v28 + 8))(v25, v27);
      (*(v13 + 96))(v16, v46);
      return *v16;
    }

    v72 = v27;
    v73 = v25;
    (*(v13 + 8))(v16, v46);
    if (qword_100034AF8 != -1)
    {
      swift_once();
    }

    v48 = sub_10002858C();
    sub_10000AEF4(v48, qword_100035430);
    v50 = v76;
    v49 = v77;
    v51 = v68;
    (*(v76 + 16))(v68, v74, v77);
    v52 = v69;
    sub_10001FA40(v75, v69, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v53 = sub_10002856C();
    v54 = sub_10002876C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v55 = 136315394;
      sub_100020F24(&qword_100034E20, &type metadata accessor for UUID);
      v56 = sub_1000288EC();
      v57 = v51;
      v58 = v52;
      v60 = v59;
      (*(v50 + 8))(v57, v49);
      v61 = sub_100027364(v56, v60, &v78);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      v62 = v58 + *(v70 + 20);
      v63 = sub_100027D8C();
      v65 = v64;
      sub_10001FAA8(v58, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v66 = sub_100027364(v63, v65, &v78);

      *(v55 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v53, v54, "Failed to unpack entity corresponding to offered suggestionId: %s; in request: %s", v55, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10001FAA8(v52, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v50 + 8))(v51, v49);
    }

    (*(v28 + 8))(v73, v72);
  }

  return 0;
}