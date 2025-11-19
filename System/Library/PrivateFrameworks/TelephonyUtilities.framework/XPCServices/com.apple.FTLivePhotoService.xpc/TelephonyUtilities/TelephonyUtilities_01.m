id sub_100020E20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessageController()
{
  result = qword_100059298;
  if (!qword_100059298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020F94()
{
  sub_100021088();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for MessageStore();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100021088()
{
  if (!qword_1000592A8)
  {
    type metadata accessor for MessageRequest();
    v0 = sub_100039A3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000592A8);
    }
  }
}

uint64_t sub_100021128(int a1)
{
  if (a1 == 1)
  {
    v2 = 4;
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v2 = 2;
LABEL_5:
    v3 = OBJC_IVAR____TtC18FTLivePhotoService17MessageController_moments;
    swift_beginAccess();
    sub_10000BF68(v1 + v3, v8);
    v4 = v9;
    v5 = v10;
    sub_10000D3B0(v8, v9);
    (*(v5 + 56))(v2, v4, v5);
    return sub_10000C54C(v8);
  }

  sub_100021228();
  swift_allocError();
  *v7 = 2;
  return swift_willThrow();
}

unint64_t sub_100021228()
{
  result = qword_1000592B8;
  if (!qword_1000592B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000592B8);
  }

  return result;
}

uint64_t sub_10002127C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000212EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002164C();
  v6 = v5(v4);
  sub_10000C9A8(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100021348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000C9A8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1000213CC()
{
  result = qword_1000592D8;
  if (!qword_1000592D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000592D8);
  }

  return result;
}

uint64_t sub_100021410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021460(void *a1)
{
  v2 = [a1 IDSFormattedDestinationID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10003986C();

  return v3;
}

uint64_t sub_1000215EC()
{

  return swift_beginAccess();
}

uint64_t sub_100021604()
{

  return swift_task_alloc();
}

uint64_t sub_100021658()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];
}

void sub_100021678(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_100021698(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_1000216D8()
{

  return swift_slowAlloc();
}

id sub_100021838()
{
  v0[OBJC_IVAR___MockMomentsServerBag_isLoaded] = 1;
  v0[OBJC_IVAR___MockMomentsServerBag_isMomentsDisabled] = 0;
  *&v0[OBJC_IVAR___MockMomentsServerBag_momentsRequestTimeout] = 0x3FF0000000000000;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockMomentsServerBag();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000218BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockMomentsServerBag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100021914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100021C1C(a1);
  v5 = sub_1000395CC();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = swift_allocObject();

  return sub_100023C50(v4, a2, v6);
}

id sub_1000219D0()
{
  v1 = [v0 error];

  return v1;
}

uint64_t sub_100021A2C()
{
  v1 = [v0 inputs];
  sub_10000C944(0, &unk_1000593F0, AVAssetWriterInput_ptr);
  v2 = sub_1000398FC();

  return v2;
}

id sub_100021AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  return [v3 startSessionAtSourceTime:v5];
}

uint64_t sub_100021B6C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100012CAC;
  v5[3] = &unk_100052420;
  v3 = _Block_copy(v5);

  [v2 finishWritingWithCompletionHandler:v3];
  _Block_release(v3);
}

id sub_100021C1C(uint64_t a1)
{
  v2 = sub_1000395CC();
  sub_100023CEC();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_10000C9CC();
  v10 = v9 - v8;
  sub_10000C944(0, &qword_1000593E8, AVAssetWriter_ptr);
  (*(v4 + 16))(v10, a1, v2);
  v11 = sub_10002366C(v10, AVFileTypeQuickTimeMovie);
  formatDescriptionOut = 0;
  CMFormatDescriptionCreate(kCFAllocatorDefault, 0x74657874u, 0x77767474u, 0, &formatDescriptionOut);
  v12 = formatDescriptionOut;
  objc_allocWithZone(AVAssetWriterInput);
  v13 = AVMediaTypeText;
  v14 = v12;
  v15 = sub_1000238C8(v13, 0, v12);
  [v15 setExpectsMediaDataInRealTime:1];
  CMTimeMakeWithSeconds(&v17, 10.0, 1000);
  [v11 setMovieFragmentInterval:&v17];
  [v11 addInput:v15];

  return v11;
}

uint64_t sub_100021E4C()
{
  v2 = v0;
  sub_100023E54();
  sub_1000397CC();
  sub_100023CEC();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_10000C9CC();
  sub_100023EB4(v6);
  v7 = sub_100023EA0();
  v8(v7);
  v9 = v1;
  sub_1000397EC();
  v10 = sub_100023E8C();
  v11(v10);
  if (v1)
  {
    if (qword_100058AA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000EAE0();
LABEL_3:
  v12 = sub_10003972C();
  sub_100023E60(v12, qword_10005AB20);
  v13 = sub_10003970C();
  sub_10003998C();
  sub_100023F18();
  if (sub_100023F00())
  {
    sub_10001B508();
    v24[0] = sub_100023E04();
    *v1 = 136315138;

    v14 = sub_10003989C();
    v16 = sub_10000BFDC(v14, v15, v24);

    *(v1 + 1) = v16;
    sub_100023D30(&_mh_execute_header, v17, v18, "Start writing for %s");
    sub_100023CFC();
    sub_10001B47C();
  }

  sub_10000BF68(v2 + 16, v24);
  v19 = v25;
  v20 = v26;
  sub_10000D3B0(v24, v25);
  (*(v20 + 40))(v19, v20);
  sub_10000C54C(v24);
  sub_10000BF68(v2 + 16, v24);
  v21 = v25;
  v22 = v26;
  sub_10000D3B0(v24, v25);
  (*(v22 + 32))(kCMTimeZero.value, *&kCMTimeZero.timescale, kCMTimeZero.epoch, v21, v22);
  result = sub_10000C54C(v24);
  *(v2 + 64) = 1;
  return result;
}

void sub_1000220AC()
{
  v1 = v0;
  sub_100023E54();
  v2 = sub_1000397CC();
  sub_100023CEC();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_10000C9CC();
  v10 = v9 - v8;
  v11 = *(v1 + 72);
  *(v9 - v8) = v11;
  (*(v4 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v2);
  v12 = v11;
  LOBYTE(v11) = sub_1000397EC();
  (*(v4 + 8))(v10, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_10000EAE0();
    goto LABEL_5;
  }

  swift_beginAccess();

  sub_1000222E0(v13);
  swift_endAccess();
  if (!*(*(v1 + 56) + 16))
  {
    return;
  }

  if ((*(v1 + 65) & 1) == 0)
  {
    sub_1000223A4();
    return;
  }

  if (qword_100058AA0 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v14 = sub_10003972C();
  sub_100023E60(v14, qword_10005AB20);
  v15 = sub_10003970C();
  sub_1000399CC();
  sub_100023F18();
  if (sub_100023F00())
  {
    sub_10001B508();
    v21[0] = sub_100023E04();
    *v10 = 136315138;

    v16 = sub_10003989C();
    v18 = sub_10000BFDC(v16, v17, v21);

    *(v10 + 4) = v18;
    sub_100023D30(&_mh_execute_header, v19, v20, "Ignoring captions update we already stopped writing %s");
    sub_100023CFC();
    sub_10001B47C();
  }
}

int64_t sub_1000222E0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100023BE8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1000223A4()
{
  sub_100023E54();
  v123 = v1;
  v2 = sub_1000397CC();
  sub_100023CEC();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_10000C9CC();
  v10 = v9 - v8;
  v11 = *(v0 + 72);
  *(v9 - v8) = v11;
  (*(v4 + 104))(v9 - v8, enum case for DispatchPredicate.onQueue(_:), v2);
  v12 = v11;
  v13 = sub_1000397EC();
  (*(v4 + 8))(v10, v2);
  if (v13)
  {
    if ((*(v0 + 64) & 1) == 0)
    {
      sub_100021E4C();
    }

    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v124 = v0;
    sub_10000D3B0((v0 + 16), v14);
    sub_100023CEC();
    v16 = v15;
    v18 = *(v17 + 64);
    __chkstk_darwin(v19);
    sub_10000C9CC();
    v22 = v21 - v20;
    (*(v16 + 16))(v21 - v20);
    v23 = sub_100023E20();
    v25 = v24(v23);
    (*(v16 + 8))(v22, v14);
    if (!sub_100023974(v25))
    {

      return;
    }

    if ((v25 & 0xC000000000000001) == 0)
    {
      v26 = v124;
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v27 = *(v25 + 32);
      goto LABEL_8;
    }
  }

  else
  {
LABEL_48:
    __break(1u);
  }

  v27 = sub_100039B2C();
  v26 = v124;
LABEL_8:

  if (qword_100058AA0 != -1)
  {
    sub_10000EAE0();
  }

  v28 = sub_10003972C();
  v29 = sub_10000BF30(v28, qword_10005AB20);

  v30 = sub_10003970C();
  v31 = sub_10003999C();

  v32 = os_log_type_enabled(v30, v31);
  v132 = v29;
  if (v32)
  {
    sub_10001B508();
    v143 = sub_100023E38();
    *v13 = 136315138;
    v142.value = v26;

    v33 = sub_100023DE8();
    v35 = sub_10000BFDC(v33, v34, &v143);

    *(v13 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "Draining captions queue... %s", v13, 0xCu);
    sub_100023CFC();
    sub_10000EB00();
  }

  if ([v27 isReadyForMoreMediaData])
  {
    v36 = v124;
    swift_beginAccess();
    v37 = v36[7];
    v122 = *(v37 + 16);
    if (v122)
    {
      v116 = v27;
      v120 = objc_opt_self();
      v119 = kCFAllocatorDefault;

      v38 = 0;
      v39 = (v37 + 64);
      *&v40 = 136316162;
      v115[2] = v40;
      *&v40 = 138412290;
      v115[0] = v40;
      *&v40 = 67109378;
      v117 = v40;
      *&v40 = 136315906;
      v115[1] = v40;
      v121 = v37;
      while (1)
      {
        if (v38 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }

        v129 = v38;
        v41 = *(v39 - 3);
        v131 = *(v39 - 4);
        v125 = *v39;
        v43 = *(v39 - 2);
        v42 = *(v39 - 1);

        CMTimeMakeWithSeconds(&v142, v43, 1000);
        value = v142.value;
        flags = v142.flags;
        timescale = v142.timescale;
        epoch = v142.epoch;
        CMTimeMakeWithSeconds(&v142, v42, 1000);
        v135 = v142.flags;
        LODWORD(v136) = v142.timescale;
        v133 = v142.value;
        v134 = v142.epoch;
        v47 = TUCaptionsLoggingEnabled();

        v48 = sub_10003970C();
        v13 = sub_10003998C();

        v126 = v13;
        v128 = v48;
        v49 = os_log_type_enabled(v48, v13);
        if (v47)
        {
          if (v49)
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v127 = value;
            v52 = v51;
            v118 = swift_slowAlloc();
            v137 = v118;
            sub_100023EC8(v144);
            v53 = sub_100023DE8();
            v55 = v54;
            v56 = sub_10000BFDC(v53, v54, &v137);

            *(v50 + 4) = v56;
            v57 = sub_100023D50();
            sub_100023D90(v57);
            v58 = sub_10003989C();
            sub_100023F30(v58, v59);
            sub_100023EE8();
            *(v50 + 24) = v55;
            v60 = sub_100023DB4();
            *(v50 + 34) = v60;
            *(v52 + 8) = v60;
            *(v50 + 42) = 2080;
            v142.value = v131;
            *&v142.timescale = v41;

            v61 = sub_10003989C();
            sub_100023F30(v61, v62);
            sub_100023EE8();
            *(v50 + 44) = v55;
            v63 = v124;
            v64 = v128;
            _os_log_impl(&_mh_execute_header, v128, v126, "%s writing caption with timestamp %@ number: %s duration %@ text: %s", v50, 0x34u);
            sub_10000BEC0(&qword_100058DF0, &unk_10003F990);
            swift_arrayDestroy();
            value = v127;
            sub_10000EB00();
            swift_arrayDestroy();
            v36 = v63;
LABEL_21:
            sub_10000EB00();
            sub_10000EB00();

            goto LABEL_23;
          }
        }

        else if (v49)
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v127 = value;
          v67 = v66;
          v118 = swift_slowAlloc();
          v137 = v118;
          sub_100023EC8(&v142.epoch);
          v68 = sub_100023DE8();
          sub_100023F30(v68, v69);
          sub_100023EE8();
          *(v65 + 4) = v36;
          v70 = sub_100023D50();
          sub_100023D90(v70);
          v71 = sub_10003989C();
          sub_100023F30(v71, v72);
          sub_100023EE8();
          *(v65 + 24) = v36;
          v36 = v124;
          v73 = sub_100023DB4();
          *(v65 + 34) = v73;
          *(v67 + 8) = v73;
          v64 = v128;
          _os_log_impl(&_mh_execute_header, v128, v126, "%s writing caption with timestamp %@ number: %s duration %@", v65, 0x2Au);
          sub_10000BEC0(&qword_100058DF0, &unk_10003F990);
          swift_arrayDestroy();
          value = v127;
          sub_10000EB00();
          swift_arrayDestroy();
          goto LABEL_21;
        }

        v13 = timescale;
LABEL_23:
        v74 = v136;
        v141 = 0;
        v75 = sub_10003985C();

        v142.value = v133;
        v142.timescale = v74;
        v142.flags = v135;
        v142.epoch = v134;
        v137 = value;
        v138 = v13;
        v139 = flags;
        v140 = epoch;
        v76 = [v120 createWebVTTTextSampleBuffer:v75 startTime:&v142 duration:&v137 sampleBufferOut:&v141];

        if (v76 || (v83 = v141) == 0)
        {

          v77 = sub_10003970C();
          v78 = sub_1000399AC();

          if (os_log_type_enabled(v77, v78))
          {
            swift_slowAlloc();
            v79 = sub_100023E38();
            v142.value = v79;
            *v13 = v117;
            *(v13 + 4) = v76;
            *(v13 + 8) = 2080;
            v137 = v36;

            v80 = sub_10003989C();
            v82 = sub_10000BFDC(v80, v81, &v142.value);
            v36 = v124;

            *(v13 + 10) = v82;
            _os_log_impl(&_mh_execute_header, v77, v78, "Error while creating sample buffer %d for %s", v13, 0x12u);
            sub_10000C54C(v79);
            sub_10001B47C();
            sub_10000EB00();
          }
        }

        else
        {
          v84 = sub_10003970C();
          v85 = sub_10003998C();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v84, v85, "Adding text buffer", v86, 2u);
            sub_10001B47C();
          }

          v13 = [v116 appendSampleBuffer:v83];
          if ((v13 & 1) == 0)
          {

            v87 = sub_10003970C();
            v13 = sub_1000399AC();

            if (os_log_type_enabled(v87, v13))
            {
              v88 = sub_10001B508();
              v89 = swift_slowAlloc();
              *v88 = v115[0];
              v90 = v36;
              v91 = v36[5];
              v92 = v36[6];
              sub_10000D3B0(v90 + 2, v91);
              v136 = v115;
              sub_100023CEC();
              v94 = v93;
              v96 = *(v95 + 64);
              __chkstk_darwin(v97);
              sub_10000C9CC();
              v100 = v99 - v98;
              (*(v94 + 16))(v99 - v98);
              v101 = (*(v92 + 8))(v91, v92);
              (*(v94 + 8))(v100, v91);
              if (v101)
              {
                v102 = _swift_stdlib_bridgeErrorToNSError();
                v103 = v102;
              }

              else
              {
                v102 = 0;
                v103 = 0;
              }

              *(v88 + 4) = v102;
              *v89 = v103;
              _os_log_impl(&_mh_execute_header, v87, v13, "Error while adding sample buffer %@", v88, 0xCu);
              sub_10001C2E4(v89);
              sub_10000EB00();
              sub_10000EB00();

              v36 = v124;
            }

            else
            {
            }
          }
        }

        v38 = v129 + 1;
        v39 += 10;
        v37 = v121;
        if (v122 == v129 + 1)
        {

          v111 = v36[7];
          v27 = v116;
          break;
        }
      }
    }

    v36[7] = _swiftEmptyArrayStorage;

    v112 = sub_10003970C();
    v113 = sub_10003999C();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v112, v113, "Clearing captions queue...", v114, 2u);
      sub_10000EB00();
    }
  }

  else
  {
    v104 = v124;

    v105 = sub_10003970C();
    v106 = sub_1000399AC();

    if (os_log_type_enabled(v105, v106))
    {
      sub_10001B508();
      v107 = sub_100023E38();
      v143 = v107;
      *v13 = 136315138;
      v142.value = v104;

      v108 = sub_100023DE8();
      v110 = sub_10000BFDC(v108, v109, &v143);

      *(v13 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v105, v106, "Writer input not ready for input data for %s", v13, 0xCu);
      sub_10000C54C(v107);
      sub_10001B47C();
      sub_10000EB00();
    }
  }
}

void sub_100023084()
{
  v2 = v0;
  sub_100023E54();
  sub_1000397CC();
  sub_100023CEC();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  sub_10000C9CC();
  sub_100023EB4(v6);
  v7 = sub_100023EA0();
  v8(v7);
  v9 = v1;
  sub_1000397EC();
  v10 = sub_100023E8C();
  v11(v10);
  if ((v1 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    sub_10000EAE0();
    goto LABEL_4;
  }

  sub_1000223A4();
  if (*(v0 + 64) != 1)
  {
    if (qword_100058AA0 != -1)
    {
      sub_10000EAE0();
    }

    v33 = sub_10003972C();
    sub_100023E60(v33, qword_10005AB20);
    v34 = sub_10003970C();
    sub_1000399CC();
    sub_100023F18();
    if (sub_100023F00())
    {
      sub_10001B508();
      v43[0] = sub_100023E04();
      *v1 = 136315138;
      v46 = v2;

      v35 = sub_10003989C();
      v37 = sub_10000BFDC(v35, v36, v43);

      *(v1 + 1) = v37;
      sub_100023D30(&_mh_execute_header, v38, v39, "Skipping to call stop on asset writer since, it was never started %s");
      sub_100023CFC();
      sub_10001B47C();
    }

    return;
  }

  *(v0 + 65) = 1;
  if (qword_100058AA0 != -1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v12 = sub_10003972C();
  sub_100023E60(v12, qword_10005AB20);
  v13 = sub_10003970C();
  sub_1000399CC();
  sub_100023F18();
  if (sub_100023F00())
  {
    sub_10001B508();
    v43[0] = sub_100023E04();
    *v1 = 136315138;
    v46 = v2;

    v14 = sub_10003989C();
    v16 = sub_10000BFDC(v14, v15, v43);

    *(v1 + 1) = v16;
    sub_100023D30(&_mh_execute_header, v17, v18, "Marking input as finished %s");
    sub_100023CFC();
    sub_10001B47C();
  }

  v19 = *(v2 + 40);
  sub_10000D3B0((v2 + 16), v19);
  sub_100023CEC();
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  sub_10000C9CC();
  v27 = v26 - v25;
  (*(v21 + 16))(v26 - v25);
  v28 = sub_100023E20();
  v30 = v29(v28);
  (*(v21 + 8))(v27, v19);
  if (!sub_100023974(v30))
  {

    goto LABEL_17;
  }

  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = sub_100039B2C();
    goto LABEL_10;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v30 + 32);
LABEL_10:
    v32 = v31;

    [v32 markAsFinished];

LABEL_17:
    sub_10000BF68(v2 + 16, v43);
    v40 = v44;
    v41 = v45;
    sub_10000D3B0(v43, v44);
    v42 = *(v41 + 48);

    v42(sub_100023BE0, v2, v40, v41);

    sub_10000C54C(v43);
    return;
  }

  __break(1u);
}

void sub_1000234B4(uint64_t *a1)
{
  v1 = *a1;
  if (qword_100058AA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10003972C();
  sub_10000BF30(v2, qword_10005AB20);

  oslog = sub_10003970C();
  v3 = sub_1000399CC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;

    v6 = sub_10003989C();
    v8 = sub_10000BFDC(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Finished writing %s", v4, 0xCu);
    sub_10000C54C(v5);
  }

  else
  {
  }
}

id sub_10002366C(uint64_t a1, void *a2)
{
  sub_10003955C(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() assetWriterWithURL:v4 fileType:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_1000395CC();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_10003951C();

    swift_willThrow();
    v12 = sub_1000395CC();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1000237D4()
{
  sub_10000C54C((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t sub_100023804()
{
  sub_1000237D4();

  return _swift_deallocClassInstance(v0, 80, 7);
}

id sub_1000238C8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7.super.isa = sub_1000397FC().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v4 initWithMediaType:a1 outputSettings:v7.super.isa sourceFormatHint:a3];

  return v8;
}

uint64_t sub_100023974(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

char *sub_100023998(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000BEC0(&qword_100059098, qword_10003F730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000BEC0(&qword_100058DF8, &unk_10003F5D0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023BB4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100023BE8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_100023998(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100023C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_10000C944(0, &qword_1000593E8, AVAssetWriter_ptr);
  v9 = &off_1000523C8;
  *&v7 = a1;
  *(a3 + 56) = _swiftEmptyArrayStorage;
  *(a3 + 64) = 0;
  *(a3 + 72) = a2;
  sub_10000C5F8(&v7, a3 + 16);
  return a3;
}

uint64_t sub_100023CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023CFC()
{
  sub_10000C54C(v0);
}

void sub_100023D30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

CFStringRef sub_100023D50()
{
  *(v0 + 12) = 2112;
  *(v1 - 160) = *(v1 - 224);
  v3 = *(v1 - 204);
  *(v1 - 152) = *(v1 - 200);
  *(v1 - 148) = v3;
  *(v1 - 144) = *(v1 - 216);
  v4 = *(v1 - 328);

  return CMTimeCopyDescription(v4, (v1 - 160));
}

uint64_t sub_100023D90(uint64_t a1)
{
  *(v1 + 14) = a1;
  *v2 = a1;
  *(v1 + 22) = 2080;
  *(v3 - 160) = *(v3 - 280);
  return v3 - 160;
}

CFStringRef sub_100023DB4()
{
  *(v2 + 32) = v3;
  *(v5 - 160) = *(v5 - 272);
  *(v5 - 152) = *(v5 - 244);
  *(v5 - 148) = v0;
  *(v5 - 144) = v4;

  return CMTimeCopyDescription(v1, (v5 - 160));
}

uint64_t sub_100023DE8()
{
  v2 = *(v0 - 296);

  return sub_10003989C();
}

uint64_t sub_100023E04()
{

  return swift_slowAlloc();
}

uint64_t sub_100023E38()
{

  return swift_slowAlloc();
}

uint64_t sub_100023E60(uint64_t a1, uint64_t a2)
{
  sub_10000BF30(a1, a2);
}

uint64_t sub_100023EC8@<X0>(uint64_t a1@<X8>)
{
  *v1 = *(a1 - 256);
  *(v3 - 160) = v2;
}

uint64_t sub_100023EE8()
{
}

BOOL sub_100023F00()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100023F18()
{
}

uint64_t sub_100023F30(uint64_t a1, unint64_t a2)
{

  return sub_10000BFDC(a1, a2, (v2 - 192));
}

id sub_100023F48(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(IDSService);

  result = sub_1000276F8(a1, a2);
  if (result)
  {
    v7 = *(v2 + 216);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100023FDC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService);
  *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100023FF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name);
  v2 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name + 8);

  return v1;
}

uint64_t sub_100024030(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name);
  v4 = *(v2 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_10002405C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_queue);
  *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_queue) = a1;
  return _objc_release_x1();
}

id sub_100024070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class isa, uint64_t a6)
{
  v10 = *(v6 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService);
  swift_unknownObjectRetain();
  sub_10003955C(v11);
  v13 = v12;
  sub_100026784(a2);
  v14.super.isa = sub_1000397FC().super.isa;

  sub_100026A48(a3);
  v15.super.isa = sub_10003994C().super.isa;

  if (isa)
  {
    sub_100026784(isa);
    isa = sub_1000397FC().super.isa;
  }

  v21 = 0;
  v16 = [v10 sendResourceAtURL:v13 metadata:v14.super.isa toDestinations:v15.super.isa priority:a4 options:isa identifier:a6 error:&v21];
  swift_unknownObjectRelease();

  if (v16)
  {
    return v21;
  }

  v18 = v21;
  sub_10003951C();

  return swift_willThrow();
}

uint64_t sub_10002424C()
{
  sub_10001B470();
  *(v1 + 152) = v0;
  if (qword_100058A88 != -1)
  {
    sub_100027E20();
  }

  v2 = qword_10005AAE8;
  *(v1 + 160) = qword_10005AAE8;

  return _swift_task_switch(sub_1000242D4, v2, 0);
}

uint64_t sub_1000242D4()
{
  sub_100021628();
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_firewall;
  v0[21] = OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_firewall;
  if (*(v1 + v2))
  {
    sub_10001B4C4();

    return v3();
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService);
    v0[22] = v5;
    v6 = *(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_queue);
    v0[23] = v6;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10002446C;
    v7 = swift_continuation_init();
    v0[17] = sub_10000BEC0(&qword_1000595A0, &qword_10003FB70);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026F28;
    v0[13] = &unk_100052588;
    v0[14] = v7;
    swift_unknownObjectRetain();
    [v5 retrieveFTFirewallWith:v6 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10002446C()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = sub_1000245F8;
  }

  else
  {
    v6 = sub_100024580;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100024580()
{
  sub_10001B470();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = *(v4 + v3);
  *(v4 + v3) = v0[18];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10001B4C4();

  return v6();
}

uint64_t sub_1000245F8()
{
  sub_100027E50();
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_10001B4C4();
  v5 = v0[24];

  return v4();
}

uint64_t sub_10002466C()
{
  sub_10001B470();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  if (qword_100058A88 != -1)
  {
    sub_100027E20();
  }

  v4 = qword_10005AAE8;
  v1[26] = qword_10005AAE8;

  return _swift_task_switch(sub_1000246F8, v4, 0);
}

uint64_t sub_1000246F8()
{
  v30 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0();
  }

  v1 = v0[24];
  v2 = sub_10003972C();
  v0[27] = sub_10000BF30(v2, qword_10005AAF0);

  v3 = sub_10003970C();
  v4 = sub_1000399CC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[23];
    v5 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    v0[18] = v6;
    v0[19] = v5;

    v9 = sub_10003989C();
    v11 = sub_10000BFDC(v9, v10, &v29);

    *(v7 + 4) = v11;
    sub_100027ED4(&_mh_execute_header, v12, v13, "Asked to donate %s");
    sub_10000C54C(v8);
    sub_10000EB00();
    sub_10000EB00();
  }

  v14 = v0[23];
  v15 = v0[24];
  v16 = sub_10003985C();
  v17 = IDSCopyAddressDestinationForDestination();

  if (!v17 || (sub_10003986C(), v17, sub_10000C944(0, &qword_100059580, IDSURI_ptr), v18 = sub_100026FBC(), (v0[28] = v18) == 0))
  {
    sub_100027C48();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v19 = v18;
  v20 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v18];
  v0[29] = v20;
  if (!v20)
  {
    sub_100027C48();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();

LABEL_12:
    sub_10001B4C4();
    sub_100027EBC();

    __asm { BRAA            X1, X16 }
  }

  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  v21[1] = sub_1000249C4;
  v22 = v0[25];
  sub_100027EBC();

  return sub_10002424C();
}

uint64_t sub_1000249C4()
{
  sub_100027E50();
  v2 = *v1;
  sub_1000215C8();
  *v4 = v3;
  v5 = *(v2 + 240);
  *v4 = *v1;
  *(v3 + 248) = v0;

  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_100024E94;
  }

  else
  {
    v7 = sub_100024AE8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100024AE8()
{
  v1 = *(v0[25] + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_firewall);
  v0[32] = v1;
  if (!v1)
  {
    v10 = v0[28];
    v9 = v0[29];
    sub_100027C48();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();

    sub_10001B4C4();
    sub_100027EBC();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[29];
  sub_10000BEC0(&qword_100059588, &qword_10003FB60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10003FA60;
  *(v3 + 32) = v2;
  v0[33] = sub_10000C944(0, &qword_100059590, IDSFirewallEntry_ptr);
  swift_unknownObjectRetain();
  v4 = v2;
  isa = sub_1000398EC().super.isa;
  v0[34] = isa;

  v0[2] = v0;
  v0[3] = sub_100024D04;
  v6 = swift_continuation_init();
  v0[17] = sub_10000BEC0(&qword_100059598, &qword_10003FB68);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100027030;
  v0[13] = &unk_100052560;
  v0[14] = v6;
  [v1 donateEntries:isa withCompletion:v0 + 10];
  sub_100027EBC();

  return _swift_continuation_await(v7);
}

uint64_t sub_100024D04()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  v5 = *(v3 + 208);
  if (v4)
  {
    v6 = sub_100024FF8;
  }

  else
  {
    v6 = sub_100024E18;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100024E18()
{
  sub_100027E50();
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);

  swift_unknownObjectRelease();
  sub_10001B4C4();

  return v4();
}

void sub_100024E94()
{
  v1 = v0[31];
  v2 = v0[27];
  swift_errorRetain();
  v3 = sub_10003970C();
  v4 = sub_1000399AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v0[20] = v5;
    swift_errorRetain();
    sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
    v8 = sub_10003989C();
    v10 = sub_10000BFDC(v8, v9, &v19);

    *(v6 + 4) = v10;
    sub_100027ED4(&_mh_execute_header, v11, v12, "Failed to retrieve firewall with error %s");
    sub_10000C54C(v7);
    sub_10000EB00();
    sub_10000EB00();
  }

  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[29];
  swift_willThrow();

  v16 = v0[31];
  sub_10001B4C4();
  sub_100027EBC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100024FF8()
{
  v28 = v0;
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[29];
  v4 = v0[27];
  swift_willThrow();

  v5 = v3;
  swift_errorRetain();
  v6 = sub_10003970C();
  v7 = sub_1000399AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[35];
    v9 = v0[33];
    v26 = v0[32];
    v10 = v0[28];
    v11 = v0[29];
    v12 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v12 = 136315394;
    v0[21] = v11;
    v13 = v11;
    v14 = sub_10003989C();
    v16 = sub_10000BFDC(v14, v15, v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v0[22] = v8;
    swift_errorRetain();
    sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
    v17 = sub_10003989C();
    v19 = sub_10000BFDC(v17, v18, v27);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to donate %s with error %s", v12, 0x16u);
    swift_arrayDestroy();
    sub_10000EB00();
    sub_10000EB00();

    swift_unknownObjectRelease();
  }

  else
  {
    v20 = v0[35];
    v21 = v0[32];
    v23 = v0[28];
    v22 = v0[29];

    swift_unknownObjectRelease();
  }

  sub_10001B4C4();

  return v24();
}

uint64_t sub_100025224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100027620(a3, v26 - v11);
  v13 = sub_10003993C();
  v14 = sub_10000BF08(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100027690(v12);
  }

  else
  {
    sub_10003992C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10003991C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000398AC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100027690(a3);

      return v24;
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

  sub_100027690(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000254C8(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_1000254E8, 0, 0);
}

uint64_t sub_1000254E8()
{
  sub_100021628();
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10002560C;
  v3 = swift_continuation_init();
  v0[17] = sub_10000BEC0(&qword_100059570, &qword_10003FB58);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100025790;
  v0[13] = &unk_100052538;
  v0[14] = v3;
  [v1 retrieveFirewallWithQueue:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002560C()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_10002572C;
  }

  else
  {
    v5 = sub_100025710;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002572C()
{
  sub_100027E50();
  v1 = *(v0 + 168);
  swift_willThrow();
  sub_10001B4C4();
  v3 = *(v0 + 168);

  return v2();
}

uint64_t *sub_100025790(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000D3B0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_10002C5B0(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_10002C5B4(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100025840(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100025904;

  return sub_1000254C8(v6);
}

uint64_t sub_100025904()
{
  sub_100021628();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;
  sub_10001B460();
  *v10 = v9;

  v11 = *(v5 + 32);
  if (v2)
  {
    v12 = sub_10003950C();

    v13 = sub_100027E40();
    v14(v13, 0, v12);

    _Block_release(v11);
  }

  else
  {
    v15 = sub_100027E40();
    v16(v15, v4, 0);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  v17 = *(v9 + 8);

  return v17();
}

uint64_t sub_100025AA4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100025B20()
{
  type metadata accessor for FirewallActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_10005AAE8 = v0;
  return result;
}

uint64_t *sub_100025B5C()
{
  if (qword_100058A88 != -1)
  {
    sub_100027E20();
  }

  return &qword_10005AAE8;
}

uint64_t sub_100025C18()
{
  swift_getObjectType();
  v6._countAndFlagsBits = sub_100039C4C();
  v7._countAndFlagsBits = 40;
  v7._object = 0xE100000000000000;
  sub_1000398CC(v7);
  countAndFlagsBits = v6._countAndFlagsBits;
  strcpy(&v6, "IDSService=");
  HIDWORD(v6._object) = -352321536;
  v3 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService);
  swift_unknownObjectRetain();
  sub_10000BEC0(&qword_100059568, &qword_10003FB38);
  v8._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  sub_1000398CC(v9);

  sub_1000398CC(v6);

  strcpy(&v6, "Service Name=");
  HIWORD(v6._object) = -4864;
  v4 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name);
  v5 = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name + 8);

  v10._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v10);

  sub_1000398CC(v6);

  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  sub_1000398CC(v11);

  return countAndFlagsBits;
}

char *sub_100025FC0(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a1;
  v6 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v32 = &v29 - v8;
  v30 = sub_1000399FC();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v30);
  sub_10000C9CC();
  v13 = v12 - v11;
  v14 = sub_1000399DC();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  sub_10000C9CC();
  v16 = sub_10003976C();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_10000C9CC();
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_firewall] = 0;
  v18 = &v3[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_name];
  *v18 = a2;
  v18[1] = a3;
  v29 = sub_10000C944(0, &unk_100059550, OS_dispatch_queue_ptr);
  v34 = 0xD000000000000023;
  v35 = 0x800000010003E7A0;
  v36._countAndFlagsBits = a2;
  v36._object = a3;
  sub_1000398CC(v36);
  sub_10003974C();
  v34 = _swiftEmptyArrayStorage;
  sub_10000C610();
  sub_10000BEC0(&qword_100059560, &unk_10003F800);
  sub_10000C668();
  sub_100039A7C();
  (*(v9 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_queue] = sub_100039A1C();
  *&v3[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService] = v31;
  v19 = type metadata accessor for FTIDSService();
  v33.receiver = v3;
  v33.super_class = v19;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v33, "init");
  v21 = *&v20[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_queue];
  v22 = *&v20[OBJC_IVAR____TtC18FTLivePhotoService12FTIDSService_idsService];
  v23 = v20;
  [v22 addDelegate:v23 queue:v21];
  v24 = sub_10003993C();
  v25 = v32;
  sub_10000E998(v32, 1, 1, v24);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;
  sub_100025224(0, 0, v25, &unk_10003FB00, v27);
  swift_unknownObjectRelease();

  return v23;
}

uint64_t sub_10002638C()
{
  sub_10001B470();
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10002646C;

    return sub_10002424C();
  }

  else
  {
    sub_10001B4C4();

    return v5();
  }
}

uint64_t sub_10002646C()
{
  sub_10001B470();
  sub_10001B58C();
  sub_1000215C8();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  sub_10001B460();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_1000265C4;
  }

  else
  {
    v9 = sub_10002656C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10002656C()
{
  sub_10001B470();

  sub_10001B4C4();

  return v1();
}

uint64_t sub_1000265C4()
{
  v16 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0();
  }

  v1 = v0[9];
  v2 = sub_10003972C();
  sub_10000BF30(v2, qword_10005AAF0);
  swift_errorRetain();
  v3 = sub_10003970C();
  v4 = sub_1000399AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v7 = v0[7];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v0[5] = v6;
    swift_errorRetain();
    sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
    v10 = sub_10003989C();
    v12 = sub_10000BFDC(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve firewall with error %s", v8, 0xCu);
    sub_10000C54C(v9);
    sub_10000EB00();
    sub_10000EB00();
  }

  else
  {
  }

  sub_10001B4C4();

  return v13();
}

uint64_t sub_100026784(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000BEC0(&qword_1000595B0, &unk_10003FB80);
    v2 = sub_100039B7C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10000C598(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100027C9C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100027C9C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100027C9C(v31, v32);
    result = sub_100039ACC(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_100027C9C(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100026A48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000BEC0(&qword_1000595A8, &qword_10003FB78);
    v2 = sub_100039AEC();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v21 = *v11;
    v22 = v11[1];

    swift_dynamicCast();
    result = sub_100039ACC(v2[5]);
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*&v7[8 * (v13 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v14];
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*&v7[8 * (v13 >> 6)])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    v5 &= v5 - 1;
    v20 = v2[6] + 40 * v15;
    *(v20 + 32) = v25;
    *v20 = v23;
    *(v20 + 16) = v24;
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t *sub_100026F28(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_10000D3B0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_10002C5B0(v6, v7);
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_10002C5B4(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100026FBC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10003985C();

  v2 = [v0 initWithPrefixedURI:v1];

  return v2;
}

uint64_t sub_100027030(uint64_t a1, void *a2)
{
  v3 = sub_10000D3B0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_10002C5B0(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_1000270C0(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  sub_100027EAC();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_1000297CC(a6, v10);
}

uint64_t sub_10002716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100025B5C();
  v4 = qword_10005AAE8;

  return _swift_task_switch(sub_1000271DC, v4, 0);
}

uint64_t sub_1000271DC()
{
  sub_100021628();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_10003986C();
  *(v0 + 48) = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1000272AC;
  v6 = *(v0 + 32);

  return sub_10002466C();
}

uint64_t sub_1000272AC()
{
  sub_100021628();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001B460();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[6];
  v8 = v3[4];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[5];
  if (v2)
  {
    v11 = sub_10003950C();

    v12 = sub_100027E40();
    v13(v12, v11);
  }

  else
  {
    v14 = sub_100027E40();
    v15(v14, 0);
  }

  _Block_release(v4[5]);
  v16 = v9[1];

  return v16();
}

id sub_100027440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100027508()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027540()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = sub_100027EAC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100027578()
{
  sub_100027E50();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_100027E9C(v6);
  *v7 = v8;
  v7[1] = sub_100019F78;

  return sub_10002636C(v2, v3, v4, v5);
}

uint64_t sub_100027620(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027690(uint64_t a1)
{
  v2 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000276F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_10003985C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithService:v3];

  return v4;
}

uint64_t sub_10002775C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027854;

  return v7(a1);
}

uint64_t sub_100027854()
{
  sub_10001B470();
  sub_10001B58C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001B460();
  *v4 = v3;

  sub_10001B4C4();

  return v5();
}

uint64_t sub_100027938()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027970()
{
  sub_100027E50();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100027E9C(v3);
  *v4 = v5;
  v6 = sub_100027E7C(v4);

  return v7(v6);
}

uint64_t sub_100027A04()
{
  sub_100027E50();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100027E9C(v3);
  *v4 = v5;
  v6 = sub_100027E7C(v4);

  return v7(v6);
}

uint64_t sub_100027A9C()
{
  sub_100027E50();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_100027E5C(v5);

  return v7(v6);
}

uint64_t sub_100027B58()
{
  _Block_release(*(v0 + 24));

  v1 = sub_100027EAC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100027B98()
{
  sub_100027E50();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_100027E5C(v5);

  return v7(v6);
}

unint64_t sub_100027C48()
{
  result = qword_100059578;
  if (!qword_100059578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059578);
  }

  return result;
}

_OWORD *sub_100027C9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FTIDSServiceDonationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100027D78);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100027DB4()
{
  result = qword_1000595B8;
  if (!qword_1000595B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000595B8);
  }

  return result;
}

uint64_t sub_100027E20()
{

  return swift_once();
}

uint64_t sub_100027E5C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100027E7C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_100027ED4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_100027F48()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100027F70()
{
  sub_100027F48();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100027FE4(uint64_t a1)
{
  result = sub_1000293AC(a1);
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
    return sub_1000293EC(result, v3, 0, a1);
  }
}

uint64_t sub_100028260(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_10002832C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1000283E8()
{
  v1 = v0;
  swift_getObjectType();
  v19 = sub_100039C4C();
  v21._countAndFlagsBits = 40;
  v21._object = 0xE100000000000000;
  sub_1000398CC(v21);
  v2 = v19;
  v19 = 0x3D73746E656D6F6DLL;
  v20 = 0xE800000000000000;
  v3 = *(v0 + OBJC_IVAR___FTMomentsControllerSession_moments);
  sub_10000BEC0(&qword_100059700, &qword_10003FD28);
  v22._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v22);

  sub_100029468();

  v23._countAndFlagsBits = 0x3D73746E656D6F6DLL;
  v23._object = 0xE800000000000000;
  sub_1000398CC(v23);

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_100039B0C(25);

  v16._countAndFlagsBits = 0xD000000000000016;
  v16._object = 0x800000010003EB00;
  v4 = OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations;
  swift_beginAccess();
  v5 = *(v1 + v4);

  isa = sub_1000397FC().super.isa;

  v7 = TULoggableStringForObject();

  if (v7)
  {
    v8 = sub_10003986C();
    v10 = v9;

    v17 = v8;
    v18 = v10;
    v11._countAndFlagsBits = sub_10003989C();
    object = v11._object;
  }

  else
  {
    object = 0xE300000000000000;
    v11._countAndFlagsBits = 7104878;
  }

  v11._object = object;
  sub_1000398CC(v11);

  sub_100029468();

  sub_1000398CC(v16);

  sub_100039B0C(16);

  strcpy(&v16, "isRegistered=");
  HIWORD(v16._object) = -4864;
  LOBYTE(v17) = *(v1 + OBJC_IVAR___FTMomentsControllerSession_isRegistered);
  v24._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v24);

  sub_100029468();

  sub_1000398CC(v16);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100039B0C(33);

  v17 = 0xD00000000000001ELL;
  v18 = 0x800000010003EB20;
  v13 = OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v15 = *(v1 + v13);

  sub_10000BEC0(&qword_100059708, &unk_10003FD30);
  v25._countAndFlagsBits = sub_10003989C();
  sub_1000398CC(v25);

  sub_100029468();

  v26._countAndFlagsBits = 0xD00000000000001ELL;
  v26._object = 0x800000010003EB20;
  sub_1000398CC(v26);

  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  sub_1000398CC(v27);

  return v2;
}

id sub_1000287B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR___FTMomentsControllerSession_isRegistered] = 1;
  *&v3[OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID] = &_swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___FTMomentsControllerSession_moments] = a1;
  *&v3[OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations] = a2;
  *&v3[OBJC_IVAR___FTMomentsControllerSession_callCenter] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1000288C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR___FTMomentsControllerSession_callCenter);
  aBlock[4] = sub_100028E84;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028E88;
  aBlock[3] = &unk_1000526F8;
  v7 = _Block_copy(aBlock);

  v49 = v6;
  v8 = [v6 callsPassingTest:v7];
  _Block_release(v7);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = a1;
  sub_100029368();
  v9 = sub_1000398FC();

  v10 = sub_100023970(v9);
  if (!v10)
  {
LABEL_19:

    if (qword_100058A90 == -1)
    {
LABEL_20:
      v28 = sub_10003972C();
      sub_10000BF30(v28, qword_10005AAF0);
      v29 = sub_10003970C();
      v30 = sub_1000399CC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "MomentsControllerSession: no streamtoken found", v31, 2u);
      }

      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_20;
  }

  v11 = v10;
  v12 = 0;
  v13 = OBJC_IVAR___FTMomentsControllerSession_moments;
  v51 = v9 & 0xC000000000000001;
  v48 = v9 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v51)
    {
      v14 = sub_100039B2C();
    }

    else
    {
      if (v12 >= *(v48 + 16))
      {
        goto LABEL_36;
      }

      v14 = *(v9 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!a2)
    {
      break;
    }

    v16 = [v49 activeConversationForCall:v14];
    if (v16)
    {
      v17 = v16;
      v50 = [v16 avcSessionToken];
      v18 = [*(v3 + v13) streamToken];
      v19 = v9;
      v20 = v11;
      v21 = v13;
      v22 = a2;
      v23 = v3;
      v24 = v18;

      v25 = v50 == v24;
      v3 = v23;
      a2 = v22;
      v13 = v21;
      v11 = v20;
      v9 = v19;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_17:
    if (v12 + 1 == v11)
    {
      goto LABEL_19;
    }

    ++v12;
  }

  v26 = [v14 videoStreamToken];
  v27 = [*(v3 + v13) streamToken];

  if (v26 != v27)
  {
    goto LABEL_17;
  }

LABEL_24:

  if (a2)
  {
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v34 = a2;
    v35 = sub_10003972C();
    sub_10000BF30(v35, qword_10005AAF0);
    v36 = sub_10003970C();
    v37 = sub_1000399CC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "MomentsControllerSession: GroupFaceTime", v38, 2u);
    }

    v39 = OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations;
    swift_beginAccess();
    v32 = sub_10002CAA4(v47, v34, *(v3 + v39));
    swift_endAccess();
  }

  else
  {
    if (qword_100058A90 != -1)
    {
      swift_once();
    }

    v40 = sub_10003972C();
    sub_10000BF30(v40, qword_10005AAF0);
    v41 = sub_10003970C();
    v42 = sub_1000399CC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "MomentsControllerSession: FaceTime 1:1", v43, 2u);
    }

    v44 = OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations;
    swift_beginAccess();
    v45 = *(v3 + v44);

    v32 = sub_100027FE4(v46);
  }

  return v32;
}

id sub_100028E20(void *a1)
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

uint64_t sub_100028E88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

uint64_t sub_100028ED8(void *a1, SEL *a2)
{
  if (a1 && (v2 = [a1 *a2]) != 0)
  {
    v3 = v2;
    v4 = sub_10003986C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_1000288C4(v4, v6);

  return v7;
}

id sub_100028F64(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a1;
  v7 = a3;
  sub_100028ED8(a3, a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_10003985C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_100028FF8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v5 = a1;
  v6 = *(v2 + v4);
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v4);
  sub_100030D2C();
  *(v2 + v4) = v8;
  return swift_endAccess();
}

uint64_t sub_100029110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = sub_1000303B4(a1, a2);
  if (v9)
  {
    v10 = v8;
    v11 = *(v3 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v3 + v6);
    v13 = v17[3];
    sub_10000BEC0(&qword_1000596F0, &qword_10003FD20);
    sub_100039B4C(isUniquelyReferenced_nonNull_native, v13);
    v14 = *(v17[6] + 16 * v10 + 8);

    v15 = *(v17[7] + 8 * v10);
    type metadata accessor for LivePhotosMomentsRequest();
    sub_100039B5C();
    *(v3 + v6) = v17;
  }

  return swift_endAccess();
}

uint64_t sub_100029350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100029368()
{
  result = qword_1000596F8;
  if (!qword_1000596F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000596F8);
  }

  return result;
}

uint64_t sub_1000293AC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_100039A8C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000293EC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
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

void sub_100029468()
{
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;

  sub_1000398CC(v1);
}

Swift::Int sub_100029480(char a1)
{
  sub_100039C1C();
  sub_10000D65C(a1);
  sub_10002C648();

  return sub_100039C3C();
}

Swift::Int sub_1000294DC()
{
  sub_100039C1C();
  sub_1000398BC();
  return sub_100039C3C();
}

uint64_t sub_100029534(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10002C5B8();
  }

  else
  {
    sub_10002C618();
  }

  sub_1000398BC();
}

uint64_t sub_10002958C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
    case 5:
      sub_10002C678();
      break;
    default:
      break;
  }

  sub_1000398BC();
}

Swift::Int sub_1000296C0()
{
  sub_100039C1C();
  sub_1000398BC();
  return sub_100039C3C();
}

Swift::Int sub_100029714(uint64_t a1, char a2)
{
  sub_100039C1C();
  sub_10000D65C(a2);
  sub_10002C648();

  return sub_100039C3C();
}

Swift::Int sub_100029760(uint64_t a1, char a2)
{
  sub_100039C1C();
  if (a2)
  {
    sub_10002C5B8();
  }

  else
  {
    sub_10002C618();
  }

  sub_1000398BC();

  return sub_100039C3C();
}

uint64_t sub_1000297CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_10003993C();
  sub_10000E998(v7, 1, 1, v8);
  sub_10002C66C();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  sub_10002C66C();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_10003FD88;
  v10[5] = v9;
  sub_10002BA9C(0, 0, v7, &unk_10003FD98, v10);
}

uint64_t sub_1000298D8(uint64_t a1, uint64_t a2)
{
  sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_100029964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

BOOL sub_1000299AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000515B8;
  v6._object = a2;
  v4 = sub_100039B8C(v3, v6);

  return v4 != 0;
}

BOOL sub_100029A20@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000299AC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100029A54@<X0>(void *a1@<X8>)
{
  result = sub_1000299F4();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}

id sub_100029A84()
{
  v0 = type metadata accessor for MediaAssetManager();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider];
  *v2 = sub_100029B0C;
  v2[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id sub_100029B0C()
{
  v0 = [objc_opt_self() sharedPhotoLibrary];

  return v0;
}

uint64_t sub_100029B70()
{
  sub_10001B470();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_1000395CC();
  v1[30] = v4;
  sub_10002153C(v4);
  v1[31] = v5;
  v1[32] = *(v6 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_100029C54, 0, 0);
}

uint64_t sub_100029C54()
{
  v55 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0();
  }

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = sub_10003972C();
  v0[37] = sub_10000BF30(v7, qword_10005AAF0);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v53 = v8;
  v8(v1, v5, v3);
  v9 = sub_10003970C();
  v10 = sub_1000399CC();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[35];
  v12 = v0[36];
  v15 = v0[30];
  v14 = v0[31];
  if (v11)
  {
    v51 = v10;
    v16 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v16 = 136315394;
    sub_10002BD38();
    v17 = sub_100039B9C();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_10000BFDC(v17, v19, &v54);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_100039B9C();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_10000BFDC(v22, v24, &v54);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v51, "photoURL: %s videoURL: %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_10000EB00();
    sub_10000EB00();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[33];
  v28 = v0[34];
  v48 = v28;
  v29 = v0[31];
  v30 = v0[29];
  v31 = v0[30];
  v49 = v0[32];
  v50 = v30;
  v32 = v0[27];
  v33 = v0[28];
  v34 = swift_allocObject();
  v0[38] = v34;
  *(v34 + 16) = 0;
  v35 = *&v30[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider];
  v36 = *&v30[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider + 8];
  v52 = v35();
  v0[39] = v52;
  v53(v28, v32, v31);
  v53(v27, v33, v31);
  v37 = *(v29 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = (v38 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v37 + v39 + 8) & ~v37;
  v41 = swift_allocObject();
  v42 = *(v29 + 32);
  v42(v41 + v38, v48, v31);
  *(v41 + v39) = v50;
  v42(v41 + v40, v27, v31);
  *(v41 + ((v40 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v0[22] = sub_10002BE70;
  v0[23] = v41;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100012CAC;
  v0[21] = &unk_1000527C0;
  v43 = _Block_copy(v0 + 18);
  v0[40] = v43;
  v44 = v0[23];
  v45 = v50;

  v0[2] = v0;
  v0[3] = sub_10002A13C;
  v46 = swift_continuation_init();
  v0[17] = sub_10000BEC0(&qword_100059598, &qword_10003FB68);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002A6D8;
  v0[13] = &unk_1000527E8;
  v0[14] = v46;
  [v52 performChanges:v43 completionHandler:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002A13C()
{
  sub_10001B470();
  sub_10001B58C();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 328) = v4;
  if (v4)
  {
    v5 = sub_10002A4D4;
  }

  else
  {
    v5 = sub_10002A244;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002A244()
{
  v33 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);

  _Block_release(v1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 296);
    v5 = v3;
    v6 = sub_10003970C();
    v7 = sub_1000399CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32 = v9;
      *v8 = 136315138;
      v10 = [v5 localIdentifier];
      v11 = sub_10003986C();
      v13 = v12;

      v14 = sub_10000BFDC(v11, v13, &v32);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Saved live photo with identifier %s", v8, 0xCu);
      sub_10000C54C(v9);
      sub_10000EB00();
      sub_10000EB00();
    }

    v15 = *(v0 + 304);
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = [v5 localIdentifier];
    v21 = sub_10003986C();
    v23 = v22;

    v24 = *(v0 + 8);

    return v24(v21, v23);
  }

  else
  {
    sub_10002B878();
    swift_allocError();
    swift_willThrow();
    v26 = *(v0 + 304);
    v28 = *(v0 + 280);
    v27 = *(v0 + 288);
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);

    sub_10001B4C4();

    return v31();
  }
}

uint64_t sub_10002A4D4()
{
  sub_100021628();
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  swift_willThrow();

  _Block_release(v1);
  v4 = v0[41];
  v5 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[33];
  v8 = v0[34];

  sub_10001B4C4();

  return v10();
}

void sub_10002A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() creationRequestForAsset];
  sub_10003955C(v6);
  v8 = v7;
  v9 = [objc_allocWithZone(PHAssetResourceCreationOptions) init];
  [v9 setShouldMoveFile:1];
  [v5 addResourceWithType:1 fileURL:v8 options:v9];

  sub_10003955C(v10);
  v12 = v11;
  v13 = [objc_allocWithZone(PHAssetResourceCreationOptions) init];
  [v13 setShouldMoveFile:1];
  [v5 addResourceWithType:9 fileURL:v12 options:v13];

  v14 = [v5 placeholderForCreatedAsset];
  swift_beginAccess();
  v15 = *(a4 + 16);
  *(a4 + 16) = v14;
}

uint64_t *sub_10002A6D8(uint64_t a1, int a2, void *a3)
{
  result = sub_10000D3B0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v6 = *result;

    return j__swift_continuation_throwingResume();
  }

  else if (a3)
  {
    return sub_1000298D8(*result, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A7EC(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_1000395CC();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_10003958C();
  sub_10003958C();
  a4;
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_10002A944;

  return sub_100029B70();
}

uint64_t sub_10002A944()
{
  sub_10002C630();
  v3 = v2;
  sub_10001B460();
  *v4 = v2;
  v5 = v2[8];
  v6 = v2[2];
  v7 = *v1;
  *v4 = *v1;

  v8 = v2[6];
  v9 = v2[3];
  v10 = *(v2[4] + 8);
  v10(v2[5], v9);
  v10(v8, v9);
  if (v0)
  {
    v11 = sub_10003950C();

    v12 = 0;
    v13 = v11;
  }

  else
  {
    v12 = sub_10003985C();

    v11 = 0;
    v13 = v12;
  }

  v15 = v3[6];
  v14 = v3[7];
  v16 = v3[5];
  (v14)[2](v14, v12, v11);

  _Block_release(v14);

  v17 = *(v7 + 8);

  return v17();
}

uint64_t sub_10002AB54()
{
  sub_10001B470();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1000395CC();
  v1[14] = v3;
  sub_10002153C(v3);
  v1[15] = v4;
  v1[16] = *(v5 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10002AC48, 0, 0);
}

uint64_t sub_10002AC48()
{
  v61 = v0;
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = sub_10003972C();
  sub_10000BF30(v5, qword_10005AAF0);
  v59 = *(v3 + 16);
  v59(v1, v4, v2);
  v6 = sub_10003970C();
  v7 = sub_1000399CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v60 = v13;
    *v12 = 136315138;
    sub_10002BD38();
    v14 = sub_100039B9C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000BFDC(v14, v16, &v60);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "MediaAssetManager saving video with URL %s", v12, 0xCu);
    sub_10000C54C(v13);
    sub_10000EB00();
    sub_10000EB00();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[13];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v57 = (v24 + 16);
  v25 = *&v23[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider + 8];
  v58 = (*&v23[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider])();
  v59(v19, v22, v20);
  v26 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v27 = (v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v21 + 32))(v28 + v26, v19, v20);
  *(v28 + v27) = v23;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v0[6] = sub_10002B7D0;
  v0[7] = v28;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100012CAC;
  v0[5] = &unk_100052770;
  v29 = _Block_copy(v0 + 2);
  v30 = v0[7];
  v31 = v23;

  v0[11] = 0;
  LODWORD(v30) = [v58 performChangesAndWait:v29 error:v0 + 11];
  _Block_release(v29);

  v32 = v0[11];
  if (v30)
  {
    swift_beginAccess();
    if (*v57)
    {
      v33 = *v57;
      v34 = v32;
      v35 = sub_10003970C();
      v36 = sub_1000399CC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v60 = v38;
        *v37 = 136315138;
        v39 = [v33 localIdentifier];
        v40 = sub_10003986C();
        v42 = v41;

        v43 = sub_10000BFDC(v40, v42, &v60);

        *(v37 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v35, v36, "Saved video with identifier %s", v37, 0xCu);
        sub_10000C54C(v38);
        sub_10000EB00();
        sub_10000EB00();
      }

      v45 = v0[17];
      v44 = v0[18];
      v46 = [v33 localIdentifier];
      v47 = sub_10003986C();
      v49 = v48;

      v50 = v0[1];

      return v50(v47, v49);
    }

    sub_10002B878();
    swift_allocError();
    swift_willThrow();
    v53 = v32;
  }

  else
  {
    v52 = v32;
    sub_10003951C();

    swift_willThrow();
  }

  v55 = v0[17];
  v54 = v0[18];

  sub_10001B4C4();

  return v56();
}

void sub_10002B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() creationRequestForAsset];
  sub_10003955C(v5);
  v7 = v6;
  v8 = [objc_allocWithZone(PHAssetResourceCreationOptions) init];
  [v8 setShouldMoveFile:0];
  [v4 addResourceWithType:2 fileURL:v7 options:v8];

  v9 = [v4 placeholderForCreatedAsset];
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = v9;
}

uint64_t sub_10002B388(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1000395CC();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_10003958C();
  a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_10002B4B4;

  return sub_10002AB54();
}

uint64_t sub_10002B4B4()
{
  sub_100021628();
  sub_10002C630();
  sub_10001B460();
  *v3 = v2;
  v4 = v2[7];
  v5 = *v1;
  *v3 = *v1;

  v6 = v2[2];
  (*(v2[4] + 8))(v2[5], v2[3]);

  if (v0)
  {
    v7 = sub_10003950C();

    v8 = 0;
    v9 = v7;
  }

  else
  {
    v8 = sub_10003985C();

    v7 = 0;
    v9 = v8;
  }

  v10 = v2[6];
  (v10)[2](v10, v8, v7);

  _Block_release(v10);

  v11 = *(v5 + 8);

  return v11();
}

id sub_10002B680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAssetManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002B6EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B724()
{
  v1 = sub_1000395CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_10002B7D0()
{
  v1 = sub_1000395CC();
  sub_10002153C(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10002B210(v0 + v6, v8, v9);
}

uint64_t sub_10002B860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002B878()
{
  result = qword_100059740;
  if (!qword_100059740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059740);
  }

  return result;
}

uint64_t sub_10002B8CC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001B3BC;

  return v7();
}

uint64_t sub_10002B9B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100019F78;

  return v8();
}

uint64_t sub_10002BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000BEC0(&qword_100059170, &qword_10003F790);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100027620(a3, v25 - v11);
  v13 = sub_10003993C();
  if (sub_10000BF08(v12, 1, v13) == 1)
  {
    sub_100027690(v12);
  }

  else
  {
    sub_10003992C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_10003991C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000398AC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100027690(a3);

      return v23;
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

  sub_100027690(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_10002BD38()
{
  result = qword_1000592D0;
  if (!qword_1000592D0)
  {
    sub_1000395CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000592D0);
  }

  return result;
}

uint64_t sub_10002BD90()
{
  v1 = sub_1000395CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = (v6 + v8) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);

  v3(v0 + v8, v1);
  v10 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8, v4 | 7);
}

void sub_10002BE70()
{
  v1 = sub_1000395CC();
  sub_10002153C(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v0 + v9);
  v12 = *(v0 + ((v8 + v10) & 0xFFFFFFFFFFFFFFF8));

  sub_10002A580(v0 + v7, v11, v0 + v10, v12);
}

uint64_t sub_10002BF28()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002BF70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10002C60C(v4);
  *v5 = v6;
  v5[1] = sub_10001B3BC;

  return sub_10002B388(v1, v2, v3);
}

uint64_t sub_10002C024()
{
  sub_100021628();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10002C60C(v5);
  *v6 = v7;
  v8 = sub_10002C5E8(v6);

  return v9(v8);
}

uint64_t sub_10002C0C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_10002C66C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10002C0FC()
{
  sub_100021628();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_10002C60C(v7);
  *v8 = v9;
  v8[1] = sub_10001B3BC;

  return sub_10002B9B4(v2, v3, v4, v6);
}

uint64_t sub_10002C1C0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C1F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10002C60C(v3);
  *v4 = v5;
  v6 = sub_100027E7C(v4);

  return v7(v6);
}

uint64_t sub_10002C294()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10002C60C(v3);
  *v4 = v5;
  v6 = sub_100027E7C(v4);

  return v7(v6);
}

uint64_t sub_10002C330()
{
  _Block_release(*(v0 + 32));

  sub_10002C66C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002C37C()
{
  sub_100021628();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10002C60C(v5);
  *v6 = v7;
  v8 = sub_10002C5E8(v6);

  return v9(v8);
}

uint64_t getEnumTagSinglePayload for MediaAssetManagerError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MediaAssetManagerError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10002C508);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10002C54C()
{
  result = qword_100059748;
  if (!qword_100059748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059748);
  }

  return result;
}

uint64_t sub_10002C5E8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_10002C648()
{

  return sub_1000398BC();
}

id FTServerBag.isMomentsDisabled.getter()
{
  if (sub_10002C890(0xD000000000000010, 0x800000010003EB90, v0))
  {
    sub_100039A6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_10002C8F4(v6);
    return 0;
  }

  sub_10002C95C();
  if ((sub_10002C9A0() & 1) == 0)
  {
    return 0;
  }

  v1 = [v3 BOOLValue];

  return v1;
}

double FTServerBag.momentsRequestTimeout.getter()
{
  if (sub_10002C890(0xD000000000000017, 0x800000010003EBB0, v0))
  {
    sub_100039A6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_10002C8F4(v7);
    return 300.0;
  }

  sub_10002C95C();
  if ((sub_10002C9A0() & 1) == 0)
  {
    return 300.0;
  }

  [v4 doubleValue];
  v2 = v1;

  return v2;
}

id sub_10002C890(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10003985C();

  v5 = [a3 objectForKey:v4];

  return v5;
}

uint64_t sub_10002C8F4(uint64_t a1)
{
  v2 = sub_10000BEC0(&qword_100059750, &qword_10003FED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002C95C()
{
  result = qword_100059210;
  if (!qword_100059210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100059210);
  }

  return result;
}

uint64_t sub_10002C9A0()
{

  return swift_dynamicCast();
}

uint64_t sub_10002C9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10003042C(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for MessageRequest();
    sub_10000C9A8(v9);
    sub_10000C7CC(v8 + *(v10 + 72) * v7, a3);
    v11 = a3;
    v12 = 0;
    v13 = 1;
    v14 = v9;
  }

  else
  {
    type metadata accessor for MessageRequest();
    v11 = sub_10003286C();
  }

  return sub_10000E998(v11, v12, v13, v14);
}

void *sub_10002CA5C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10003042C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_10002CAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000303B4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

void *sub_10002CAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000303B4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

id sub_10002CB44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_10003962C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  sub_10000BF68(a2, v17);
  v13 = [objc_allocWithZone(TUFeatureFlags) init];
  v14 = objc_allocWithZone(type metadata accessor for MediaRequest());
  return sub_100031240(v11, v17, a3, a4, v13, v14);
}

void sub_10002CC78(void *a1)
{
  v3 = v1;
  v5 = sub_1000395CC();
  v6 = sub_10000CA0C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000C9CC();
  v11 = v10 - v9;
  v12 = sub_10003962C();
  v13 = sub_10000CA0C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000C9CC();
  v18 = v17 - v16;
  v19 = [a1 callUUID];
  sub_10003960C();

  v20 = [a1 sandboxURL];
  v21 = [v20 URL];

  sub_10003958C();
  v22 = [a1 mediaTokens];
  v23 = objc_allocWithZone(type metadata accessor for MediaMoments());
  v24 = sub_10000A684(v18, v11, v22);
  if (!v2)
  {
    v25 = *(v3 + 32);
    *(v3 + 32) = v24;
    v26 = v24;

    v27 = (v26 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing);
    v28 = *(v26 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing);
    v29 = *(v26 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestFinishedProcessing + 8);
    *v27 = sub_100030E54;
    v27[1] = v3;

    sub_10000BFCC(v28);

    v30 = *(v3 + 32);
    if (v30)
    {
      v31 = &v30[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError];
      v32 = *&v30[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError];
      v33 = *&v30[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_onRequestError + 8];
      *v31 = sub_100030E58;
      v31[1] = v3;

      v34 = v30;
      sub_10000BFCC(v32);
    }
  }
}

void sub_10002CE90()
{
  sub_100012C88();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10003978C();
  v7 = sub_10000C9B8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_10002152C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v106 - v16;
  v115 = sub_10003973C();
  v18 = sub_10000C9A8(v115);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000C9CC();
  v23 = v22 - v21;
  v24 = sub_1000395CC();
  v116 = sub_10000C9B8(v24);
  v117 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v116);
  v113 = v28;
  v114 = v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v30 = sub_10000CA0C(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = v106 - v33;
  v35 = v1[3];
  if (!v35)
  {
    goto LABEL_8;
  }

  v112 = v3;
  v111 = v23;
  v107 = v14;
  v108 = v17;
  v109 = v9;
  v110 = v6;
  sub_10000BF68(v35 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_request, v118);
  v36 = v119;
  v37 = v120;
  sub_10000D3B0(v118, v119);
  v38 = *(v37 + 1);
  v39 = v35;
  v40 = v38(v36, v37);
  v42 = v41;
  v43 = v5[3];
  v44 = v5[4];
  sub_10000D3B0(v5, v43);
  sub_10003282C(v44);
  if (v40 == v45(v43, v44) && v42 == v46)
  {

    sub_10000C54C(v118);
    goto LABEL_11;
  }

  v48 = sub_100039BAC();

  sub_10000C54C(v118);
  if (v48)
  {
LABEL_11:
    if (qword_100058AA0 != -1)
    {
      sub_10000C994();
      swift_once();
    }

    v64 = sub_10003972C();
    v65 = sub_10000BF30(v64, qword_10005AB20);
    v66 = v39;
    v67 = sub_10003970C();
    v68 = sub_10003998C();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v112;
    if (v69)
    {
      sub_10002154C();
      v71 = swift_slowAlloc();
      sub_100021598();
      v72 = swift_slowAlloc();
      v106[1] = v65;
      v73 = v72;
      v118[0] = v72;
      *v71 = 136315138;
      v122[0] = v66;
      type metadata accessor for MediaRequest();
      v74 = v66;
      v75 = sub_10003989C();
      v77 = sub_10000BFDC(v75, v76, v118);

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v67, v68, "Current request finished processing, but we did't ask to end. Delaying finished processing callback until the client requests it to end or until timeout expires %s", v71, 0xCu);
      sub_10000C54C(v73);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    v78 = v116;
    v79 = v117;
    *(v66 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state) = 3;
    v80 = *(v79 + 16);
    v80(v34, v70, v78);
    sub_10000E998(v34, 0, 1, v78);
    v81 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_videoURL;
    swift_beginAccess();
    sub_100030E60(v34, v66 + v81);
    swift_endAccess();
    sub_10000CE34();
    v82 = v114;
    v80(v114, v70, v78);
    v83 = v117;
    v84 = (*(v117 + 80) + 24) & ~*(v117 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v1;
    (*(v83 + 32))(v85 + v84, v82, v78);
    v120 = sub_100030F88;
    v121 = v85;
    v118[0] = _NSConcreteStackBlock;
    v118[1] = 1107296256;
    v118[2] = sub_100012CAC;
    v119 = &unk_1000529B8;
    _Block_copy(v118);
    v122[0] = _swiftEmptyArrayStorage;
    sub_1000326F8(&qword_100059080, &type metadata accessor for DispatchWorkItemFlags);

    sub_10000BEC0(&qword_100059088, &unk_10003FF50);
    sub_100012884();
    sub_100039A7C();
    v86 = sub_1000397BC();
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    swift_allocObject();
    v89 = sub_10003979C();

    v90 = v1[5];
    v1[5] = v89;

    v91 = v1[3];
    if (v91)
    {
      v92 = *(v91 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_queue);
      v93 = v107;
      sub_10003977C();
      v94 = v108;
      sub_1000397DC();
      v95 = *(v109 + 8);
      v96 = v93;
      v97 = v110;
      v95(v96, v110);
      sub_1000399EC();

      v95(v94, v97);
    }

    else
    {
    }

    goto LABEL_24;
  }

  v3 = v112;
LABEL_8:
  v49 = v5[3];
  v50 = v5[4];
  sub_10000D3B0(v5, v49);
  sub_10003282C(v50);
  v52 = v51(v49, v50);
  v54 = v53;
  swift_beginAccess();
  v55 = v1[6];

  v56 = sub_10002CAFC(v52, v54, v55);

  if (v56)
  {
    sub_10002F414(v56, v3);
    v57 = v5[3];
    v58 = v5[4];
    sub_10000D3B0(v5, v57);
    sub_10003282C(v58);
    v60 = v59(v57, v58);
    v62 = v61;
    swift_beginAccess();
    v63 = sub_100030724(v60, v62);
    swift_endAccess();
  }

  else
  {
    if (qword_100058AA0 != -1)
    {
      sub_10000C994();
      swift_once();
    }

    v98 = sub_10003972C();
    sub_10000BF30(v98, qword_10005AB20);
    sub_10000BF68(v5, v118);
    v63 = sub_10003970C();
    v99 = sub_10003998C();
    if (!os_log_type_enabled(v63, v99))
    {

      sub_10000C54C(v118);
      goto LABEL_24;
    }

    sub_10002154C();
    v100 = swift_slowAlloc();
    sub_100021598();
    v101 = swift_slowAlloc();
    v123 = v101;
    *v100 = 136315138;
    sub_10000BF68(v118, v122);
    v102 = sub_10000B0B4(v122);
    v104 = v103;
    sub_10000C8EC(v122, &qword_100058C70, qword_10003F690);
    sub_10000C54C(v118);
    v105 = sub_10000BFDC(v102, v104, &v123);

    *(v100 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v63, v99, "MediaRecordingController did not finish processing request because it isn't being tracked %s", v100, 0xCu);
    sub_10000C54C(v101);
    sub_10000C9F4();

    sub_10000C9F4();
  }

LABEL_24:
  sub_100012C70();
}

void sub_10002D83C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[9];
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = a3[10];
      v6 = a3[3];
      sub_10000C984(a3[9]);
      v8 = v6;
      v4(v6, a2);
      sub_10000BFCC(v4);
    }
  }

  else if (v4)
  {
    v7 = a3[10];

    v4(0, a2);

    sub_10000BFCC(v4);
  }
}

void sub_10002D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000328F4();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = v20;
  v27 = v26;
  v28 = sub_10003962C();
  v29 = sub_10000C9B8(v28);
  v172 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_10002152C();
  v164 = v33 - v34;
  sub_1000215A4();
  __chkstk_darwin(v35);
  v166 = &v161 - v36;
  v171 = sub_10000BEC0(&qword_1000592B0, &qword_10003F980);
  v37 = sub_10000C9A8(v171);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  sub_10002152C();
  v167 = v40 - v41;
  sub_1000215A4();
  __chkstk_darwin(v42);
  v44 = &v161 - v43;
  v45 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  v46 = sub_10000CA0C(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_10002152C();
  v165 = v49 - v50;
  sub_1000215A4();
  __chkstk_darwin(v51);
  v169 = &v161 - v52;
  sub_1000215A4();
  __chkstk_darwin(v53);
  v168 = &v161 - v54;
  sub_1000215A4();
  v56 = __chkstk_darwin(v55);
  v58 = &v161 - v57;
  v59 = __chkstk_darwin(v56);
  v61 = &v161 - v60;
  __chkstk_darwin(v59);
  v63 = &v161 - v62;
  v64 = v20[4];
  v173 = v27;
  if (!v64)
  {
    goto LABEL_11;
  }

  v170 = v20;
  (*(v172 + 16))(&v161 - v62, v64 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_uuid, v28);
  sub_100032784();
  sub_10000E998(v65, v66, v67, v68);
  v69 = [v27 callUUID];
  sub_10003960C();

  sub_100032784();
  sub_10000E998(v70, v71, v72, v73);
  v25 = *(v171 + 48);
  v27 = &unk_10003F780;
  sub_10000C88C(v63, v44, &unk_100059160, &unk_10003F780);
  sub_10000C88C(v61, v25 + v44, &unk_100059160, &unk_10003F780);
  sub_100032758(v44);
  if (v74)
  {
    sub_1000327F0(v61);
    sub_1000327F0(v63);
    sub_100032758(v25 + v44);
    if (v74)
    {
      sub_10000C8EC(v44, &unk_100059160, &unk_10003F780);
      sub_10003284C();
      goto LABEL_20;
    }

LABEL_10:
    sub_10000C8EC(v44, &qword_1000592B0, &qword_10003F980);
    sub_10003284C();
    goto LABEL_11;
  }

  sub_10000C88C(v44, v58, &unk_100059160, &unk_10003F780);
  sub_100032758(v25 + v44);
  if (v74)
  {
    sub_1000327F0(v61);
    sub_1000327F0(v63);
    (*(v172 + 8))(v58, v28);
    goto LABEL_10;
  }

  v89 = v172;
  v90 = v25 + v44;
  v91 = v166;
  (*(v172 + 32))(v166, v90, v28);
  sub_100032740();
  sub_1000326F8(v92, v93);
  LODWORD(v162) = sub_10003984C();
  v163 = v21;
  v94 = *(v89 + 8);
  v94(v91, v28);
  v27 = &unk_100059160;
  v25 = &unk_10003F780;
  sub_100032778();
  sub_10000C8EC(v95, v96, v97);
  sub_100032778();
  sub_10000C8EC(v98, v99, v100);
  v94(v58, v28);
  v24 = v163;
  sub_100032778();
  sub_10000C8EC(v101, v102, v103);
  sub_10003284C();
  if ((v162 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  v104 = *(v25 + 4);
  if (v104)
  {
    v105 = *(v104 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_mediaTokens);
    v106 = v105;
  }

  else
  {
    v105 = 0;
  }

  v107 = [v27 mediaTokens];
  v108 = v107;
  if (v105)
  {
    if (v107)
    {
      sub_10000C944(0, &qword_100059930, TUMediaTokens_ptr);
      v109 = sub_100039A2C();

      if (v109)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_11:
    sub_10002CC78(v27);
    if (v24)
    {
      goto LABEL_56;
    }

    goto LABEL_12;
  }

  if (v107)
  {

    goto LABEL_11;
  }

LABEL_12:
  v75 = *(v25 + 3);
  v77 = v168;
  v76 = v169;
  if (!v75)
  {
    goto LABEL_18;
  }

  v163 = v24;
  sub_10000C944(0, &qword_100059928, NSObject_ptr);
  v78 = *&v75[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_tuMediaRecordRequest];
  v79 = v75;
  v80 = v78;
  v81 = sub_100039A2C();

  if ((v81 & 1) == 0 || v79[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state])
  {

    v82 = *(v25 + 3);
    v83 = v163;
    if (v82)
    {
      v84 = *(v25 + 4);
      v85 = v173;
      v170 = v25;
      if (v84)
      {
        v86 = v172;
        (*(v172 + 16))(v77, v84 + OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_uuid, v28);
        v87 = 0;
      }

      else
      {
        v87 = 1;
        v86 = v172;
      }

      sub_10000E998(v77, v87, 1, v28);
      v162 = v82;
      v110 = [v85 callUUID];
      sub_10003960C();

      sub_100032784();
      sub_10000E998(v111, v112, v113, v114);
      v115 = *(v171 + 48);
      v116 = v167;
      sub_10000C88C(v77, v167, &unk_100059160, &unk_10003F780);
      sub_10000C88C(v76, v116 + v115, &unk_100059160, &unk_10003F780);
      sub_100032758(v116);
      if (v74)
      {
        sub_1000327F0(v76);
        sub_1000328B4();
        sub_100032758(&unk_100059160 + v115);
        v117 = v162;
        if (v74)
        {
          sub_10000C8EC(&unk_100059160, &unk_100059160, &unk_10003F780);
          v88 = v173;
          goto LABEL_46;
        }
      }

      else
      {
        v118 = v165;
        sub_10000C88C(v116, v165, &unk_100059160, &unk_10003F780);
        sub_100032758(v116 + v115);
        if (!v119)
        {
          v131 = v166;
          (*(v86 + 32))(v166, v116 + v115, v28);
          sub_100032740();
          sub_1000326F8(v132, v133);
          v134 = sub_10003984C();
          v135 = *(v86 + 8);
          v135(v131, v28);
          v88 = &unk_100059160;
          sub_100032778();
          sub_10000C8EC(v136, v137, v138);
          sub_100032778();
          sub_10000C8EC(v139, v140, v141);
          v135(v118, v28);
          v83 = v163;
          sub_100032778();
          sub_10000C8EC(v142, v143, v144);
          sub_10003284C();
          v117 = v162;
          if (v134)
          {
LABEL_46:
            if (*(v117 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state))
            {
              if (qword_100058AA0 != -1)
              {
                sub_10000C994();
                swift_once();
              }

              v145 = sub_10003972C();
              sub_10000BF30(v145, qword_10005AB20);
              v146 = v117;
              v147 = sub_10003970C();
              v148 = sub_1000399AC();

              if (os_log_type_enabled(v147, v148))
              {
                sub_10002154C();
                v149 = swift_slowAlloc();
                sub_100021598();
                v150 = swift_slowAlloc();
                a10 = v150;
                *v149 = 136446210;
                v174 = v146;
                type metadata accessor for MediaRequest();
                v151 = v146;
                v152 = sub_10003989C();
                v154 = sub_10000BFDC(v152, v153, &a10);
                v88 = v173;

                *(v149 + 4) = v154;
                sub_1000328D4(&_mh_execute_header, v155, v156, "Ending existing moments request before starting the next %{public}s");
                sub_10000C54C(v150);
                v117 = v162;
                sub_10000C9F4();

                sub_10000C9F4();
              }

              (*(v172 + 16))(v164, v146 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid, v28);
              sub_10002EBD4();
              if (v83)
              {
                v157 = sub_1000327C8();
                v158(v157);

                goto LABEL_56;
              }

              v159 = sub_1000327C8();
              v160(v159);
            }
          }

LABEL_54:

          goto LABEL_55;
        }

        sub_1000327F0(v169);
        sub_1000328B4();
        v120 = sub_1000327C8();
        v121(v120);
        v117 = v162;
      }

      sub_10000C8EC(&unk_100059160, &qword_1000592B0, &qword_10003F980);
      v88 = v173;
      goto LABEL_54;
    }

LABEL_18:
    v88 = v173;
LABEL_55:
    sub_10002E440(v88);
    goto LABEL_56;
  }

  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v122 = sub_10003972C();
  sub_10000BF30(v122, qword_10005AB20);
  v123 = v79;
  v124 = sub_10003970C();
  v125 = sub_10003998C();

  if (os_log_type_enabled(v124, v125))
  {
    sub_10002154C();
    v126 = swift_slowAlloc();
    sub_100021598();
    v127 = swift_slowAlloc();
    a10 = v127;
    *v126 = 136446210;
    v174 = v123;
    type metadata accessor for MediaRequest();
    v123;
    v128 = sub_10003989C();
    v130 = sub_10000BFDC(v128, v129, &a10);

    *(v126 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v124, v125, "Using pre-warmed request %{public}s", v126, 0xCu);
    sub_10000C54C(v127);
    sub_10000C9F4();

    sub_10000C9F4();
  }

LABEL_56:
  sub_10003290C();
}

uint64_t sub_10002E440(void *a1)
{
  v3 = v1;
  v5 = sub_10003962C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 32);
  if (v10)
  {
    v11 = v10;
    sub_10003961C();
    v1 = v11;
    sub_10000AC84(a1, v19);
    if (v2)
    {
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v13 = *(v3 + 88);
      v14 = *(v3 + 96);
      v20 = v13;
      v15 = *&v11[OBJC_IVAR____TtC18FTLivePhotoService12MediaMoments_queue];

      v16 = v15;
      v1 = v20(v9, v19, a1, v16);

      sub_10000C54C(v19);
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    sub_100021228();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  return v1;
}

void sub_10002E610(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v7 = sub_10003972C();
  sub_10000BF30(v7, qword_10005AB20);
  v8 = a1;
  v9 = sub_10003970C();
  v10 = sub_10003998C();

  if (os_log_type_enabled(v9, v10))
  {
    sub_10002154C();
    v32 = a2;
    v11 = swift_slowAlloc();
    sub_100021598();
    v12 = swift_slowAlloc();
    v35[0] = v12;
    *v11 = 136446210;
    v33 = v8;
    sub_10000C944(0, &qword_100059920, TUMomentsMediaRecordRequest_ptr);
    v13 = v8;
    v14 = sub_10003989C();
    v16 = sub_10000BFDC(v14, v15, v35);

    *(v11 + 4) = v16;
    sub_1000328D4(&_mh_execute_header, v17, v18, "MediaRecordingController prewarm using %{public}s");
    sub_10000C54C(v12);
    sub_10000C9F4();

    a2 = v32;
    sub_10000C9F4();
  }

  sub_10002D930(v8, v19, v20, v21, v22, v23, v24, v25, v32, v33, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8]);
  if (!v3)
  {
    v27 = *(v4 + 24);
    *(v4 + 24) = v26;
    v28 = v26;

    v29 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid;
    v30 = sub_10003962C();
    sub_10000C9A8(v30);
    (*(v31 + 16))(a2, &v28[v29]);
  }
}

void sub_10002EBD4()
{
  sub_1000328F4();
  v2 = v1;
  v3 = v0;
  v4 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v5 = sub_10000CA0C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v106 = &v94 - v8;
  v105 = sub_1000395CC();
  v9 = sub_10000C9B8(v105);
  v99 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000C9CC();
  v98 = v14 - v13;
  v15 = sub_10003962C();
  v16 = sub_10000C9B8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_10002152C();
  v100 = v21 - v22;
  sub_1000215A4();
  __chkstk_darwin(v23);
  v107 = &v94 - v24;
  sub_1000215A4();
  __chkstk_darwin(v25);
  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v26 = sub_10003972C();
  v27 = sub_10000BF30(v26, qword_10005AB20);
  v28 = *(v18 + 2);
  sub_100032778();
  v101 = v30;
  v102 = v29;
  v30();
  v103 = v27;
  v31 = sub_10003970C();
  v32 = sub_1000399CC();
  if (os_log_type_enabled(v31, v32))
  {
    sub_10002154C();
    v33 = swift_slowAlloc();
    v97 = v1;
    v34 = v33;
    sub_100021598();
    v95 = swift_slowAlloc();
    v108[0] = v95;
    *v34 = 136446210;
    sub_100032740();
    sub_1000326F8(v35, v36);
    v37 = sub_100039B9C();
    v96 = v3;
    v39 = v38;
    v40 = sub_1000327D8();
    v41(v40);
    v42 = sub_10000BFDC(v37, v39, v108);
    v3 = v96;

    *(v34 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "MediaRecordingController will end recording with UUID %{public}s", v34, 0xCu);
    sub_10000C54C(v95);
    sub_10000C9F4();

    v2 = v97;
    sub_10000C9F4();
  }

  else
  {

    v43 = sub_1000327D8();
    v44(v43);
  }

  v45 = v3[3];
  v47 = v106;
  v46 = v107;
  if (v45)
  {
    if (*(v45 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state) == 3)
    {
      v48 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_videoURL;
      swift_beginAccess();
      sub_10000C88C(v45 + v48, v47, &unk_100058FA0, &unk_10003F260);
      v49 = v105;
      if (sub_10000BF08(v47, 1, v105) != 1)
      {
        v69 = v98;
        v68 = v99;
        (*(v99 + 32))(v98, v47, v49);
        if (v3[5])
        {
          v70 = v45;

          sub_1000397AC();

          v71 = v3[5];
        }

        else
        {
          v87 = v45;
        }

        v3[5] = 0;

        sub_10002F414(v45, v69);

        (*(v68 + 8))(v69, v105);
        goto LABEL_26;
      }

      v50 = v45;
      sub_10000C8EC(v47, &unk_100058FA0, &unk_10003F260);
    }

    else
    {
      v64 = v45;
    }

    sub_10002FBA4();
    if (!v2)
    {
      sub_10000CD58();
      v106 = v18;
      sub_100032778();
      v101();
      v72 = sub_10003970C();
      v73 = v46;
      v74 = sub_10003998C();
      if (os_log_type_enabled(v72, v74))
      {
        sub_10002154C();
        v76 = swift_slowAlloc();
        sub_100021598();
        v77 = swift_slowAlloc();
        v97 = 0;
        v78 = v77;
        v108[0] = v77;
        *v76 = 136446210;
        sub_100032740();
        sub_1000326F8(v79, v80);
        v81 = sub_100039B9C();
        v82 = v15;
        v83 = v3;
        v85 = v84;
        v104(v73, v82);
        v86 = sub_10000BFDC(v81, v85, v108);
        v3 = v83;

        *(v76 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v72, v74, "MediaRecordingController ended recording with UUID %{public}s", v76, 0xCu);
        sub_10000C54C(v78);
        sub_10000C9F4();

        sub_10000C9F4();
      }

      else
      {

        v104(v73, v15);
      }

      sub_10000BF68(v45 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_request, v108);
      v88 = v109;
      v89 = v110;
      sub_10000D3B0(v108, v109);
      sub_10003282C(v89);
      v90(v88, v89);
      swift_beginAccess();
      v91 = v45;
      v92 = v3[6];
      swift_isUniquelyReferenced_nonNull_native();
      v111 = v3[6];
      sub_100030D40();
      v3[6] = v111;

      swift_endAccess();

      sub_10000C54C(v108);
LABEL_26:
      v93 = v3[3];
      v3[3] = 0;

      goto LABEL_27;
    }
  }

  else
  {
    sub_100032778();
    v51();
    v52 = sub_10003970C();
    v53 = sub_1000399AC();
    if (os_log_type_enabled(v52, v53))
    {
      sub_10002154C();
      v54 = swift_slowAlloc();
      sub_100021598();
      v55 = swift_slowAlloc();
      v108[0] = v55;
      *v54 = 136446210;
      sub_100032740();
      sub_1000326F8(v56, v57);
      v58 = sub_100039B9C();
      v60 = v59;
      v61 = sub_100032858();
      v62(v61);
      v63 = sub_10000BFDC(v58, v60, v108);

      *(v54 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v52, v53, "Invalid state, no current request %{public}s", v54, 0xCu);
      sub_10000C54C(v55);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      v65 = sub_100032858();
      v66(v65);
    }

    sub_100021228();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();
  }

LABEL_27:
  sub_10003290C();
}

void sub_10002F414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10003962C();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  __chkstk_darwin(v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_1000395CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v69 - v24;
  __chkstk_darwin(v23);
  v78 = &v69 - v26;
  v27 = *(v3 + 40);
  *(v3 + 40) = 0;

  if ([*(v3 + 16) transcriptionEvaluationEnabled])
  {
    v77 = a2;
    v28 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_evalDirectoryURL;
    swift_beginAccess();
    sub_10000C88C(a1 + v28, v16, &unk_100058FA0, &unk_10003F260);
    if (sub_10000BF08(v16, 1, v17) == 1)
    {
      sub_10000C8EC(v16, &unk_100058FA0, &unk_10003F260);
      a2 = v77;
    }

    else
    {
      v73 = a1;
      v74 = v9;
      v29 = v78;
      (*(v18 + 32))(v78, v16, v17);
      if (qword_100058AA0 != -1)
      {
        swift_once();
      }

      v30 = sub_10003972C();
      v31 = sub_10000BF30(v30, qword_10005AB20);
      v32 = *(v18 + 16);
      v32(v25, v29, v17);
      v72 = v31;
      v33 = sub_10003970C();
      LODWORD(v71) = sub_10003998C();
      if (os_log_type_enabled(v33, v71))
      {
        v34 = swift_slowAlloc();
        v69 = v33;
        v35 = v34;
        v70 = swift_slowAlloc();
        v82 = v70;
        *v35 = 136315138;
        v32(v14, v25, v17);
        sub_10000E998(v14, 0, 1, v17);
        v36 = sub_10000B198(v14);
        v38 = v37;
        sub_10000C8EC(v14, &unk_100058FA0, &unk_10003F260);
        v39 = *(v18 + 8);
        v75 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v76 = v39;
        v39(v25, v17);
        v40 = sub_10000BFDC(v36, v38, &v82);

        v41 = v35;
        *(v35 + 4) = v40;
        v42 = v69;
        _os_log_impl(&_mh_execute_header, v69, v71, "Copying audio to temp directory for automation evaluation %s", v41, 0xCu);
        sub_10000C54C(v70);
      }

      else
      {

        v43 = *(v18 + 8);
        v75 = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v76 = v43;
        v43(v25, v17);
      }

      v44 = [objc_opt_self() defaultManager];
      a2 = v77;
      sub_10003955C(v45);
      v47 = v46;
      sub_10003953C();
      v48 = v78;
      sub_10003956C();

      sub_10003955C(v49);
      v51 = v50;
      v76(v22, v17);
      v82 = 0;
      v52 = [v44 copyItemAtURL:v47 toURL:v51 error:&v82];

      if (v52)
      {
        v53 = v82;
        v54 = v48;
      }

      else
      {
        v55 = v82;
        v56 = sub_10003951C();

        swift_willThrow();
        swift_errorRetain();
        v57 = sub_10003970C();
        v58 = sub_10003998C();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v82 = v72;
          *v59 = 136315138;
          v81 = v56;
          swift_errorRetain();
          sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
          v60 = sub_10003989C();
          v71 = v57;
          v62 = sub_10000BFDC(v60, v61, &v82);

          *(v59 + 4) = v62;
          v63 = v71;
          _os_log_impl(&_mh_execute_header, v71, v58, "Error copying audio to temp directory %s", v59, 0xCu);
          sub_10000C54C(v72);
        }

        else
        {
        }

        v54 = v78;
      }

      v76(v54, v17);
      a1 = v73;
      v9 = v74;
    }
  }

  (*(v79 + 16))(v9, a1 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid, v80);
  sub_10000C944(0, &qword_100059910, TUSandboxExtendedURL_ptr);
  (*(v18 + 16))(v22, a2, v17);
  v64 = sub_100030288(v22);
  v65 = objc_allocWithZone(TUMomentsRawVideoMessageDescriptor);
  v66 = sub_100030324(v9, v64);
  v67 = *(v3 + 56);
  if (v67)
  {
    v68 = *(v3 + 64);

    v67(v66);
    sub_10000BFCC(v67);
  }
}

void sub_10002FBA4()
{
  v1 = sub_10003962C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if (v6)
  {
    (*(v2 + 16))(v5, v6 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid, v1);
    v7 = v6;
    v8 = sub_1000395FC();
    (*(v2 + 8))(v5, v1);
    if ((v8 & 1) == 0)
    {
      sub_100021228();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_100021228();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }
}

void sub_10002FD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000328F4();
  a19 = v22;
  a20 = v23;
  v24 = sub_10003962C();
  v25 = sub_10000C9B8(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_10002152C();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v51 - v34;
  if (qword_100058AA0 != -1)
  {
    sub_10000C994();
    swift_once();
  }

  v36 = sub_10003972C();
  sub_10000BF30(v36, qword_10005AB20);

  v37 = sub_10003970C();
  v38 = sub_1000399AC();

  if (os_log_type_enabled(v37, v38))
  {
    v52 = v32;
    v53 = v27;
    v54 = v24;
    v55 = v21;
    sub_10002154C();
    v39 = swift_slowAlloc();
    sub_100021598();
    v40 = swift_slowAlloc();
    a10 = v40;
    *v39 = 136315138;
    v41 = *(v20 + 24);
    if (v41)
    {
      v56 = *(v20 + 24);
      type metadata accessor for MediaRequest();
      v42 = v41;
      v43 = sub_10003989C();
      v45 = v44;
    }

    else
    {
      v45 = 0xE300000000000000;
      v43 = 7104878;
    }

    v46 = sub_10000BFDC(v43, v45, &a10);

    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "MediaRecordingController connection invalidated. Ending the current request %s", v39, 0xCu);
    sub_10000C54C(v40);
    sub_10000C9F4();

    sub_10000C9F4();

    v24 = v54;
    v32 = v52;
    v27 = v53;
  }

  else
  {
  }

  v47 = *(v20 + 24);
  if (v47)
  {
    (*(v27 + 16))(v32, v47 + OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid, v24);
    (*(v27 + 32))(v35, v32, v24);
    sub_10002EBD4();
    (*(v27 + 8))(v35, v24);
  }

  else
  {
    v48 = sub_10003970C();
    v49 = sub_1000399AC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "MediaRecordingController current request does not exist", v50, 2u);
      sub_10000C9F4();
    }
  }

  sub_10003290C();
}

uint64_t sub_100030028()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
  sub_10000BFCC(*(v0 + 56));
  v4 = *(v0 + 80);
  sub_10000BFCC(*(v0 + 72));
  v5 = *(v0 + 96);

  return v0;
}

uint64_t sub_100030080()
{
  sub_100030028();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_1000300D8()
{
  *(v0 + 16) = [objc_allocWithZone(TUFeatureFlags) init];
  type metadata accessor for MediaRequest();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = sub_10003981C();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = sub_10002CB44;
  *(v0 + 96) = 0;
  return v0;
}

void sub_100030160(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v5 = qword_100058AA0;
    v6 = v2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_10003972C();
    sub_10000BF30(v7, qword_10005AB20);
    v8 = sub_10003970C();
    v9 = sub_10003998C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Hit timeout for ending request!", v10, 2u);
    }

    sub_10002F414(v6, a2);
    v11 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

id sub_100030288(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10003955C(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = sub_1000395CC();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id sub_100030324(uint64_t a1, void *a2)
{
  v3 = v2;
  isa = sub_1000395EC().super.isa;
  v7 = [v3 initWithUUID:isa videoURL:a2];

  v8 = sub_10003962C();
  sub_10000C9A8(v8);
  (*(v9 + 8))(a1);
  return v7;
}

unint64_t sub_1000303B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100039C1C();
  sub_1000398BC();
  v6 = sub_100039C3C();

  return sub_1000304B4(a1, a2, v6);
}

unint64_t sub_10003042C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10003962C();
  sub_100032740();
  sub_1000326F8(v5, v6);
  v7 = sub_10003983C();

  return sub_100030568(a1, v7);
}

unint64_t sub_1000304B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100039BAC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100030568(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_10003962C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1000326F8(&qword_1000592C0, &type metadata accessor for UUID);
    v10 = sub_10003984C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100030724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1000303B4(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v10 = *(*v3 + 24);
  sub_10000BEC0(&qword_100059918, &unk_10003FF40);
  sub_100039B4C(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(*(v14 + 48) + 16 * v7 + 8);

  v12 = *(*(v14 + 56) + 8 * v7);
  type metadata accessor for MediaRequest();
  sub_100039B5C();
  *v3 = v14;
  return v12;
}

uint64_t sub_100030800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10003042C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v11 = *(*v3 + 24);
    sub_10000BEC0(&qword_100059938, &qword_10003FF60);
    sub_100039B4C(isUniquelyReferenced_nonNull_native, v11);
    v12 = *(v25 + 48);
    v13 = sub_10003962C();
    sub_10000C9A8(v13);
    (*(v14 + 8))(v12 + *(v14 + 72) * v8, v13);
    v15 = *(v25 + 56);
    v16 = type metadata accessor for MessageRequest();
    sub_10000C9A8(v16);
    sub_10000C768(v15 + *(v17 + 72) * v8, a2);
    sub_100032740();
    sub_1000326F8(v18, v19);
    sub_100039B5C();
    *v3 = v25;
    sub_100032784();
  }

  else
  {
    type metadata accessor for MessageRequest();
    v20 = sub_10003286C();
  }

  return sub_10000E998(v20, v21, v22, v23);
}

uint64_t sub_100030968(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10003042C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v9 = *(*v2 + 24);
  sub_10000BEC0(&qword_100059940, &qword_10003FF68);
  sub_100039B4C(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(v17 + 48);
  v11 = sub_10003962C();
  sub_10000C9A8(v11);
  (*(v12 + 8))(v10 + *(v12 + 72) * v6, v11);
  v13 = *(*(v17 + 56) + 8 * v6);
  sub_10000C944(0, &qword_100059198, TUMomentsRawVideoMessageDescriptor_ptr);
  sub_100032740();
  sub_1000326F8(v14, v15);
  sub_100032778();
  sub_100039B5C();
  *v2 = v17;
  return v13;
}

void sub_100030A9C()
{
  sub_100012C88();
  v2 = sub_100032808();
  v3 = sub_10000C9B8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000C9CC();
  v6 = sub_100032894();
  sub_100032794(v6, v7);
  if (v9)
  {
    __break(1u);
LABEL_10:
    sub_100039BBC();
    __break(1u);
    return;
  }

  v10 = v8;
  sub_10000BEC0(&qword_100059938, &qword_10003FF60);
  if (sub_1000327A8())
  {
    v11 = *v1;
    sub_10003042C(v0);
    if ((v10 & 1) != (v12 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v10)
  {
    v13 = *(*v1 + 56);
    v14 = type metadata accessor for MessageRequest();
    sub_10000CA0C(v14);
    v16 = *(v15 + 72);
    sub_100012C70();

    sub_1000311DC(v17, v18);
  }

  else
  {
    v20 = sub_100032880();
    v21(v20);
    v22 = sub_100032838();
    sub_100031000(v22, v23, v24, v25);
    sub_100012C70();
  }
}

void sub_100030BF0()
{
  sub_100012C88();
  v3 = sub_100032808();
  v4 = sub_10000C9B8(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000C9CC();
  v7 = sub_100032894();
  sub_100032794(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  sub_10000BEC0(&qword_100059940, &qword_10003FF68);
  if (!sub_1000327A8())
  {
    goto LABEL_5;
  }

  v14 = *v2;
  v15 = sub_10003042C(v1);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_100039BBC();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    v17 = *(*v2 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v0;
    sub_100012C70();
  }

  else
  {
    v21 = sub_100032880();
    v22(v21);
    v23 = sub_100032838();
    sub_1000310DC(v23, v24, v25, v26);
    sub_100012C70();
  }
}

void sub_100030D40()
{
  sub_100012C88();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_1000303B4(v8, v6);
  sub_100032794(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_10000BEC0(v4, v2);
  if (!sub_1000327A8())
  {
    goto LABEL_5;
  }

  v20 = *v5;
  v21 = sub_1000303B4(v9, v7);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    sub_100039BBC();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  v23 = *v5;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v18);
    *(v24 + 8 * v18) = v11;
    sub_100012C70();
  }

  else
  {
    sub_100031194(v18, v9, v7, v11, v23);
    sub_100012C70();
  }
}

uint64_t sub_100030E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030ED0()
{
  v1 = sub_1000395CC();
  sub_10000C9B8(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_100030F88()
{
  v1 = sub_1000395CC();
  sub_10000CA0C(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_100030160(v3, v4);
}

uint64_t sub_100030FE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031000(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10003962C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for MessageRequest();
  result = sub_10000C768(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

uint64_t sub_1000310DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10003962C();
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

unint64_t sub_100031194(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1000311DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100031240(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, char *a6)
{
  v200 = a5;
  v11 = sub_10003966C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v184 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v179 = &v177 - v16;
  v204 = sub_10003952C();
  v17 = *(v204 - 8);
  v18 = v17[8];
  __chkstk_darwin(v204);
  v203 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000395CC();
  v206 = v20;
  v199 = *(v20 - 8);
  v21 = *(v199 + 64);
  v22 = __chkstk_darwin(v20);
  v180 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v202 = &v177 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v177 - v27;
  v29 = __chkstk_darwin(v26);
  v191 = &v177 - v30;
  __chkstk_darwin(v29);
  v205 = &v177 - v31;
  sub_10000E998(&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_videoURL], 1, 1, v20);
  v182 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_localCaptionsMachine;
  *&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_localCaptionsMachine] = 0;
  v183 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_remoteCaptionsMachine;
  *&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_remoteCaptionsMachine] = 0;
  v178 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_evalDirectoryURL;
  sub_10000E998(&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_evalDirectoryURL], 1, 1, v20);
  v32 = OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_uuid;
  v33 = sub_10003962C();
  v187 = *(v33 - 8);
  v34 = *(v187 + 16);
  v190 = a1;
  v188 = v33;
  v34(&a6[v32], a1);
  v189 = a2;
  sub_10000BF68(a2, &a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_request]);
  *&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_tuMediaRecordRequest] = a3;
  *&a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_queue] = a4;
  v193 = a6;
  a6[OBJC_IVAR____TtC18FTLivePhotoService12MediaRequest_state] = 0;
  v35 = a3;
  v196 = a4;
  v36 = [v35 sandboxURL];
  v37 = [v36 URL];

  sub_10003958C();
  v38 = [v35 localCaptionsFileName];
  v39 = sub_10003986C();
  v41 = v40;

  v209 = v39;
  v210 = v41;
  v198 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v42 = v17 + 13;
  v195 = v17[13];
  v43 = v203;
  v44 = v204;
  v195(v203);
  v197 = sub_10000E944();
  v45 = v191;
  sub_1000395AC();
  v46 = v17[1];
  v194 = v17 + 1;
  v46(v43, v44);

  v48 = v199 + 8;
  v47 = *(v199 + 8);
  v49 = v28;
  v50 = v206;
  v47(v28, v206);
  sub_10003957C();
  v51 = v45;
  v47(v45, v50);
  v52 = [v35 sandboxURL];
  v53 = [v52 URL];

  sub_10003958C();
  v201 = v35;
  v54 = [v35 remoteCaptionsFileName];
  v55 = sub_10003986C();
  v57 = v56;

  v209 = v55;
  v210 = v57;
  v58 = v203;
  v59 = v204;
  v185 = v42;
  v60 = v195;
  (v195)(v203, v198, v204);
  sub_1000395AC();
  v181 = v46;
  v46(v58, v59);
  v61 = v206;

  v47(v49, v61);
  sub_10003957C();
  v62 = v200;
  v47(v51, v61);
  v63 = TUCallTranscriptionSupported();
  v192 = v47;
  if (v63 && (![v62 offlineTranscriptionEnabled] || objc_msgSend(v62, "transcriptionEvaluationEnabled")))
  {
    v64 = v60;
    v65 = [v62 transcriptionEvaluationEnabled];
    v66 = v201;
    v186 = v48;
    if (!v65)
    {
LABEL_7:
      if (qword_100058AA0 != -1)
      {
        swift_once();
      }

      v109 = sub_10003972C();
      sub_10000BF30(v109, qword_10005AB20);
      v110 = sub_10003970C();
      v111 = sub_1000399CC();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        *v112 = 136315394;
        swift_beginAccess();
        sub_1000326F8(&qword_1000592D0, &type metadata accessor for URL);
        v113 = sub_100039B9C();
        v115 = sub_10000BFDC(v113, v114, &v209);

        *(v112 + 4) = v115;
        *(v112 + 12) = 2080;
        v116 = v202;
        swift_beginAccess();
        v117 = sub_100039B9C();
        v119 = sub_10000BFDC(v117, v118, &v209);

        *(v112 + 14) = v119;
        _os_log_impl(&_mh_execute_header, v110, v111, "Captions URLs: localCaptionsDestinationURL: %s remoteCaptionsDestinationURL: %s", v112, 0x16u);
        swift_arrayDestroy();

        v120 = v193;
      }

      else
      {

        v120 = v193;
        v116 = v202;
      }

      type metadata accessor for MediaRequest();
      swift_beginAccess();
      v145 = v196;
      sub_10000CAF8(v196, &v209);
      v146 = v201;
      v147 = [v201 mediaTokens];
      v148 = [v147 uplinkStreamToken];

      v149 = [v146 localeIdentifier];
      sub_10003986C();

      v150 = v184;
      sub_10003963C();
      v151 = type metadata accessor for CaptionsMachine();
      v152 = objc_allocWithZone(v151);
      v153 = v145;
      v154 = sub_10000FD0C(&v209, v148, v150, v153);
      v155 = *&v120[v182];
      *&v120[v182] = v154;

      swift_beginAccess();
      sub_10000CAF8(v153, &v209);
      v156 = [v146 mediaTokens];
      v157 = [v156 downlinkStreamToken];

      v158 = [v146 localeIdentifier];
      sub_10003986C();

      sub_10003963C();
      v159 = v151;
      v126 = v146;
      v160 = objc_allocWithZone(v159);
      v161 = sub_10000FD0C(&v209, v157, v150, v153);
      v162 = *&v120[v183];
      *&v120[v183] = v161;

      v163 = v206;
      v164 = v192;
      v192(v116, v206);
      v164(v205, v163);
      v121 = v200;
      goto LABEL_25;
    }

    sub_10003954C();
    v67 = [v66 sandboxURL];
    v68 = v51;
    v69 = [v67 URL];

    sub_10003958C();
    v70 = sub_10003953C();
    v72 = v71;
    v73 = v206;
    v47(v49, v206);
    v209 = v70;
    v210 = v72;
    v74 = v203;
    v177 = v49;
    v75 = v204;
    (v64)(v203, v198, v204);
    v76 = v180;
    sub_1000395AC();
    v77 = v75;
    v78 = v181;
    v181(v74, v77);
    v79 = v76;

    v47(v68, v73);
    v80 = [objc_opt_self() defaultManager];
    sub_10003955C(v81);
    v83 = v82;
    v209 = 0;
    v84 = [v80 createDirectoryAtURL:v82 withIntermediateDirectories:1 attributes:0 error:&v209];

    v85 = v209;
    if (v84)
    {
      v86 = v179;
      v87 = v206;
      (*(v199 + 16))(v179, v79, v206);
      v88 = v87;
      sub_10000E998(v86, 0, 1, v87);
      v89 = v193;
      v90 = v178;
      swift_beginAccess();
      v91 = v85;
      sub_100030E60(v86, &v89[v90]);
      swift_endAccess();
      v92 = [v201 localCaptionsFileName];
      v93 = sub_10003986C();
      v95 = v94;

      v209 = v93;
      v210 = v95;
      v96 = v203;
      v97 = v79;
      v98 = v204;
      (v195)(v203, v198, v204);
      v99 = v177;
      sub_1000395AC();
      v78(v96, v98);

      v100 = v191;
      sub_10003957C();
      v101 = v192;
      v192(v99, v88);
      v102 = *(v199 + 40);
      v199 += 40;
      v179 = v102;
      (v102)(v205, v100, v88);
      v103 = [v201 remoteCaptionsFileName];
      v104 = sub_10003986C();
      v106 = v105;

      v209 = v104;
      v210 = v106;
      (v195)(v96, v198, v98);
      sub_1000395AC();
      v181(v96, v98);
      v107 = v202;

      sub_10003957C();
      v108 = v206;
      v101(v99, v206);
      v101(v97, v108);
      (v179)(v107, v100, v108);
      goto LABEL_7;
    }

    v165 = v209;
    sub_10003951C();

    swift_willThrow();
    v166 = v192;
    v192(v79, v206);
    if (qword_100058AA0 != -1)
    {
      swift_once();
    }

    v167 = sub_10003972C();
    sub_10000BF30(v167, qword_10005AB20);
    v168 = sub_10003970C();
    v169 = sub_1000399AC();
    v170 = os_log_type_enabled(v168, v169);
    v121 = v200;
    v120 = v193;
    if (v170)
    {
      v171 = swift_slowAlloc();
      v172 = v206;
      *v171 = 0;
      _os_log_impl(&_mh_execute_header, v168, v169, "Error while creating captions machine", v171, 2u);

      v166(v202, v172);
      v166(v205, v172);
    }

    else
    {

      v173 = v206;
      v166(v202, v206);
      v166(v205, v173);
    }

    v126 = v201;
  }

  else
  {
    v121 = v62;
    if (qword_100058AA0 != -1)
    {
      swift_once();
    }

    v122 = sub_10003972C();
    sub_10000BF30(v122, qword_10005AB20);
    swift_unknownObjectRetain();
    v123 = sub_10003970C();
    v124 = sub_1000399CC();

    v125 = os_log_type_enabled(v123, v124);
    v126 = v201;
    if (v125)
    {
      v127 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *v127 = 136315650;
      v128 = TUCallTranscriptionSupportedLocales();
      v186 = v48;
      sub_1000398FC();

      v129 = sub_10003990C();
      v131 = v130;

      v132 = sub_10000BFDC(v129, v131, &v209);

      *(v127 + 4) = v132;
      v133 = v206;
      *(v127 + 12) = 2080;
      v134 = TUCurrentLocaleIdentifier();
      v135 = sub_10003986C();
      v137 = v136;

      v138 = sub_10000BFDC(v135, v137, &v209);

      *(v127 + 14) = v138;
      *(v127 + 22) = 2080;
      v208 = [v121 offlineTranscriptionEnabled];
      v139 = sub_10003989C();
      v141 = sub_10000BFDC(v139, v140, &v209);

      *(v127 + 24) = v141;
      _os_log_impl(&_mh_execute_header, v123, v124, "Not creating captions machines since we're only transcribing calls for %s, current locale is %s. Or feature flag for offline transcription is turned on %s", v127, 0x20u);
      swift_arrayDestroy();

      v126 = v201;

      v142 = v192;
      v192(v202, v133);
      v142(v205, v133);
    }

    else
    {

      v143 = v206;
      v144 = v192;
      v192(v202, v206);
      v144(v205, v143);
    }

    v120 = v193;
  }

LABEL_25:
  v174 = type metadata accessor for MediaRequest();
  v207.receiver = v120;
  v207.super_class = v174;
  v175 = objc_msgSendSuper2(&v207, "init");

  sub_10000C54C(v189);
  (*(v187 + 8))(v190, v188);
  return v175;
}

uint64_t sub_1000326F8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1000327A8()
{

  return sub_100039B4C(v1 & 1, v0);
}

uint64_t sub_1000327D8()
{
  result = v1;
  *(v2 - 208) = *(v0 + 8);
  return result;
}

uint64_t sub_1000327F0(uint64_t a1)
{

  return sub_10000C8EC(a1, v1, v2);
}

uint64_t sub_100032808()
{

  return sub_10003962C();
}

uint64_t sub_100032858()
{
  result = v0;
  v3 = *(v1 - 208);
  return result;
}

unint64_t sub_100032894()
{
  v3 = *v0;

  return sub_10003042C(v1);
}

uint64_t sub_1000328B4()
{
  v5 = v0;
  v6 = *(v3 - 144);

  return sub_10000C8EC(v2, v5, v1);
}

void sub_1000328D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_10003293C()
{
  if (qword_100058A90 != -1)
  {
    sub_10001B3E0();
  }

  v0 = sub_10003972C();
  sub_10000BF30(v0, qword_10005AAF0);
  oslog = sub_10003970C();
  v1 = sub_1000399CC();
  if (os_log_type_enabled(oslog, v1))
  {
    sub_10002154C();
    v2 = swift_slowAlloc();
    sub_100021598();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    type metadata accessor for AVCMomentsCapabilities(0);
    v4 = sub_10003989C();
    v6 = sub_10000BFDC(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Moments capabilities changed %{public}s", v2, 0xCu);
    sub_10000C54C(v3);
    sub_10000C9F4();

    sub_10000C9F4();
  }

  else
  {
  }
}

void sub_100032AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_100058A90 != -1)
    {
      sub_10001B3E0();
    }

    v12 = sub_10003972C();
    sub_10000BF30(v12, qword_10005AAF0);
    sub_10000C88C(a2, v37, &qword_100058C70, qword_10003F690);
    swift_errorRetain();
    v13 = sub_10003970C();
    v14 = sub_1000399AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v15 = 136446466;
      v35 = a4;
      v16 = sub_10000B0B4(v37);
      v18 = v17;
      sub_10000C8EC(v37, &qword_100058C70, qword_10003F690);
      v19 = sub_10000BFDC(v16, v18, &v36);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      swift_errorRetain();
      sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
      v20 = sub_10003989C();
      v22 = sub_10000BFDC(v20, v21, &v36);

      *(v15 + 14) = v22;
      a4 = v35;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 0x16u);
      swift_arrayDestroy();
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_10000C8EC(v37, &qword_100058C70, qword_10003F690);
    }

    v33 = (*(a5 + 72))(a4, a5);
    if (v33)
    {
      v34 = v33;
      v33(a2, a3);

      sub_10000BFCC(v34);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100058A90 != -1)
    {
      sub_10001B3E0();
    }

    v24 = sub_10003972C();
    sub_10000BF30(v24, qword_10005AAF0);
    sub_10000C88C(a2, v37, &qword_100058C70, qword_10003F690);
    v25 = sub_10003970C();
    v26 = sub_1000399CC();
    if (os_log_type_enabled(v25, v26))
    {
      sub_10002154C();
      v27 = swift_slowAlloc();
      sub_100021598();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136446210;
      v29 = sub_10000B0B4(v37);
      v31 = v30;
      sub_10000C8EC(v37, &qword_100058C70, qword_10003F690);
      v32 = sub_10000BFDC(v29, v31, &v36);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, a7, v27, 0xCu);
      sub_10000C54C(v28);
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_10000C8EC(v37, &qword_100058C70, qword_10003F690);
    }
  }
}

uint64_t sub_100032EE8()
{
  sub_10000BEC0(&qword_100059A98, &qword_10003FFD8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10003F6C0;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 32) = 0xD00000000000001BLL;
  *(v0 + 40) = 0x800000010003ED00;
  sub_100039C0C();
}

uint64_t sub_100032F84(unsigned __int8 a1, char a2)
{
  v2 = 0x676E6974696177;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x64657472617473;
    }

    if (v3 == 1)
    {
      v5 = 0x800000010003D4E0;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x676E6974696177;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0x64657472617473;
    }

    if (a2 == 1)
    {
      v6 = 0x800000010003D4E0;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100039BAC();
  }

  return v8 & 1;
}

uint64_t sub_100033080(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065746174;
  v3 = 0x5364696C61766E69;
  v4 = a1;
  v5 = 0x5364696C61766E69;
  v6 = 0xEC00000065746174;
  switch(v4)
  {
    case 1:
      v5 = 0x556E776F6E6B6E75;
      v6 = 0xEB00000000444955;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x800000010003D470;
      break;
    case 3:
      v5 = 0x6575716552637661;
      v6 = 0xEF726F7272457473;
      break;
    case 4:
      v6 = 0x800000010003D4A0;
      v5 = 0xD000000000000014;
      break;
    case 5:
      v6 = 0x800000010003D4C0;
      v5 = 0xD000000000000012;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x556E776F6E6B6E75;
      v2 = 0xEB00000000444955;
      break;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x800000010003D470;
      break;
    case 3:
      v3 = 0x6575716552637661;
      v2 = 0xEF726F7272457473;
      break;
    case 4:
      v2 = 0x800000010003D4A0;
      v3 = 0xD000000000000014;
      break;
    case 5:
      v2 = 0x800000010003D4C0;
      v3 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100039BAC();
  }

  return v8 & 1;
}

uint64_t sub_1000332A4()
{
  v16 = sub_1000399FC();
  v1 = sub_10000C9B8(v16);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10000C9CC();
  v8 = v7 - v6;
  v9 = sub_1000399DC();
  v10 = sub_10000C9A8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000C9CC();
  v13 = sub_10003976C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_10000C9CC();
  *(v0 + 24) = 0;
  sub_10000C944(0, &unk_100059550, OS_dispatch_queue_ptr);
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  sub_10003974C();
  sub_10000C610();
  sub_10000BEC0(&qword_100059560, &unk_10003F800);
  sub_10000C668();
  sub_100039A7C();
  (*(v3 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v0 + 32) = sub_100039A1C();
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for MessageMomentsAVCDelegate()) init];
  return v0;
}

void sub_1000334C0(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = [objc_allocWithZone(AVCMediaRecorderConfiguration) init];
  [v6 setMediaAvailability:3];
  v7 = [objc_allocWithZone(AVCMoments) initWithConfiguration:v6 delegate:*(v2 + 16) dispatchQueue:*(v2 + 32)];

  if (v7)
  {
    v8 = *(v3 + 24);
    *(v3 + 24) = v7;
    v9 = v7;

    *(*(v3 + 16) + OBJC_IVAR____TtC18FTLivePhotoService25MessageMomentsAVCDelegate_owner + 8) = &off_1000529E0;
    swift_unknownObjectWeakAssign();
    if (qword_100058A98 != -1)
    {
      sub_1000214D0();
      swift_once();
    }

    v10 = sub_10003972C();
    sub_10000BF30(v10, qword_10005AB08);
    v11 = sub_10003970C();
    v12 = sub_1000399CC();
    if (os_log_type_enabled(v11, v12))
    {
      sub_10002154C();
      v23 = a2;
      v13 = swift_slowAlloc();
      sub_100021598();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      type metadata accessor for AVCMomentsMediaType(0);
      v15 = sub_10003989C();
      v17 = sub_10000BFDC(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Generating new request for AVCMomentsMediaType %{public}s", v13, 0xCu);
      sub_10000C54C(v14);
      sub_10000C9F4();

      a2 = v23;
      sub_10000C9F4();
    }

    v18 = *(v3 + 24);
    if (v18 && (v19 = [v18 newRequestWithMediaType:a1 mode:1 requesteeID:0]) != 0)
    {
      v20 = v19;
      a2[3] = sub_10000C944(0, &qword_100058F90, AVCMomentsRequest_ptr);
      a2[4] = &off_1000515F0;

      *a2 = v20;
    }

    else
    {
      sub_10000C714();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10000C714();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }
}

uint64_t sub_10003378C()
{
  v1 = *(v0 + 48);
  sub_10000BFCC(*(v0 + 40));
  v2 = *(v0 + 64);
  sub_10000BFCC(*(v0 + 56));
  return v0;
}

uint64_t sub_1000337CC()
{
  sub_10003378C();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_100033824(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 48);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return sub_10000BFCC(v4);
}

uint64_t sub_10003383C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 64);
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return sub_10000BFCC(v4);
}

void sub_100033878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v52[-1] - v12;
  v14 = sub_1000395CC();
  v15 = sub_10000C9B8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10000C9CC();
  v22 = v21 - v20;
  if (a5)
  {
    swift_errorRetain();
    if (qword_100058A98 != -1)
    {
      sub_1000214D0();
      swift_once();
    }

    v23 = sub_10003972C();
    sub_10000BF30(v23, qword_10005AB08);
    sub_10000BF68(a2, v54);
    swift_errorRetain();
    v24 = sub_10003970C();
    v25 = sub_1000399AC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v26 = 136446466;
      sub_10000BF68(v54, v52);
      v27 = sub_10000B0B4(v52);
      v29 = v28;
      sub_10000C8EC(v52, &qword_100058C70, qword_10003F690);
      sub_10000C54C(v54);
      v30 = sub_10000BFDC(v27, v29, &v53);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      v52[0] = a5;
      swift_errorRetain();
      sub_10000BEC0(&unk_1000590A0, &qword_10003F270);
      v31 = sub_10003989C();
      v33 = sub_10000BFDC(v31, v32, &v53);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Moments finished processing request %{public}s with error %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      sub_10000C9F4();

      sub_10000C9F4();
    }

    else
    {

      sub_10000C54C(v54);
    }

    v38 = v6[7];
    if (v38)
    {
      v39 = v6[8];
      sub_10000BF68(a2, v54);

      v38(v54, a5);
      sub_10000BFCC(v38);

      sub_10000C8EC(v54, &qword_100058C70, qword_10003F690);
    }

    else
    {
    }
  }

  else
  {
    sub_10000C88C(a4, v13, &unk_100058FA0, &unk_10003F260);
    if (sub_10000BF08(v13, 1, v14) == 1)
    {
      sub_10000C8EC(v13, &unk_100058FA0, &unk_10003F260);
      if (qword_100058A98 != -1)
      {
        sub_1000214D0();
        swift_once();
      }

      v34 = sub_10003972C();
      sub_10000BF30(v34, qword_10005AB08);
      v35 = sub_10003970C();
      v36 = sub_1000399AC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Moments finished without an error or a videoURL", v37, 2u);
        sub_10000C9F4();
      }
    }

    else
    {
      (*(v17 + 32))(v22, v13, v14);
      if (qword_100058A98 != -1)
      {
        sub_1000214D0();
        swift_once();
      }

      v40 = sub_10003972C();
      sub_10000BF30(v40, qword_10005AB08);
      sub_10000BF68(a2, v54);
      v41 = sub_10003970C();
      v42 = sub_1000399CC();
      if (os_log_type_enabled(v41, v42))
      {
        sub_10002154C();
        v43 = swift_slowAlloc();
        sub_100021598();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v43 = 136446210;
        sub_10000BF68(v54, v52);
        v44 = sub_10000B0B4(v52);
        v46 = v45;
        sub_10000C8EC(v52, &qword_100058C70, qword_10003F690);
        sub_10000C54C(v54);
        v47 = sub_10000BFDC(v44, v46, &v53);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v41, v42, "Moments finished processing request %{public}s", v43, 0xCu);
        sub_10000C54C(v51);
        sub_10000C9F4();

        sub_10000C9F4();
      }

      else
      {

        sub_10000C54C(v54);
      }

      v48 = v6[5];
      if (v48)
      {
        v49 = v6[6];

        v48(a2, v22);
        sub_10000BFCC(v48);
      }

      (*(v17 + 8))(v22, v14);
    }
  }

  v50 = v6[3];
  v6[3] = 0;
}

uint64_t sub_100033E64()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_10000C984(v1);
  return v1;
}

_BYTE *storeEnumTagSinglePayload for MessageMomentsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100033F64);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100033FA0()
{
  result = qword_100059AA0;
  if (!qword_100059AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059AA0);
  }

  return result;
}

void sub_1000340A4(void *a1)
{
  swift_unknownObjectWeakAssign();
}

char *sub_1000340EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments;
  *&v5[OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments] = 0;
  swift_unknownObjectWeakInit();
  v13 = *&v5[v12];
  *&v5[v12] = 0;

  swift_unknownObjectWeakAssign();
  v18.receiver = v5;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "init");
  v15 = sub_100034D08(a1, a2, a3, v14, a5);

  if (v15)
  {
    v16 = *&v14[OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments];
    *&v14[OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments] = v15;
  }

  else
  {

    return 0;
  }

  return v14;
}

id sub_10003429C()
{
  result = *(v0 + OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments);
  if (result)
  {
    return [result streamToken];
  }

  __break(1u);
  return result;
}

SEL *sub_100034370(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments))
  {
    return [*(v1 + OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments) *result];
  }

  __break(1u);
  return result;
}

id sub_100034390(id result, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC18FTLivePhotoService12FTAVCMoments_moments);
  if (v5)
  {
    v6 = a4;
    v8 = result;
    if (a4)
    {
      v9 = v5;
      v6 = sub_10003985C();
    }

    else
    {
      v10 = v5;
    }

    v11 = [v5 newRequestWithMediaType:v8 mode:a2 requesteeID:v6];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100034568(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong moments:v2 capabilitiesDidChange:a2];
  }
}

void sub_100034654(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a3)
    {
      a3 = sub_10003950C();
    }

    [v9 *a4];
  }
}

void sub_100034704(void *a1, uint64_t a2, void *a3, void *a4, void *a5, SEL *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  sub_100034654(v13, a4, a5, a6);
}

void sub_100034854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_100034C98(a3, v17);
    v20 = sub_1000395CC();
    v22 = 0;
    if (sub_10000BF08(v17, 1, v20) != 1)
    {
      sub_10003955C(v21);
      v22 = v23;
      (*(*(v20 - 8) + 8))(v17, v20);
    }

    sub_100034C98(a4, v15);
    if (sub_10000BF08(v15, 1, v20) == 1)
    {
      v25 = 0;
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10003955C(v24);
      v25 = v26;
      (*(*(v20 - 8) + 8))(v15, v20);
      if (!a5)
      {
LABEL_9:
        [v19 moments:v6 didEndProcessingRequest:a2 stillImageURL:v22 movieURL:v25 error:a5];

        return;
      }
    }

    a5 = sub_10003950C();
    goto LABEL_9;
  }
}

void sub_100034BD4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong momentsServerDidDisconnect:v0];
  }
}

uint64_t sub_100034C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100034D08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a3)
  {
    v8 = sub_10003985C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(AVCMoments) initWithStreamToken:a1 requesterID:v8 delegate:a4 dispatchQueue:a5];

  return v9;
}

uint64_t sub_100034E0C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10003972C();
  sub_100034E84(v3, a2);
  sub_10000BF30(v3, a2);
  return sub_10003971C();
}

uint64_t *sub_100034E84(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100034F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000395CC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000BF08(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100034FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000395CC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000E998(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MessageStore()
{
  result = qword_100059B40;
  if (!qword_100059B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000350BC()
{
  sub_1000395CC();
  if (v0 <= 0x3F)
  {
    sub_100035158();
    if (v1 <= 0x3F)
    {
      sub_100035204();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100035158()
{
  if (!qword_100059B50)
  {
    sub_10003962C();
    type metadata accessor for MessageRequest();
    sub_100037308(&qword_1000591D8, &type metadata accessor for UUID);
    v0 = sub_10003982C();
    if (!v1)
    {
      atomic_store(v0, &qword_100059B50);
    }
  }
}

void sub_100035204()
{
  if (!qword_100059B58)
  {
    sub_10003962C();
    sub_10000C944(255, &qword_100059198, TUMomentsRawVideoMessageDescriptor_ptr);
    sub_100037308(&qword_1000591D8, &type metadata accessor for UUID);
    v0 = sub_10003982C();
    if (!v1)
    {
      atomic_store(v0, &qword_100059B58);
    }
  }
}

uint64_t sub_1000352C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v37 = a3;
  v41 = type metadata accessor for MessageRequest();
  v5 = sub_10000C9B8(v41);
  v39 = v6;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v36 - v12;
  sub_1000375D8();
  v13 = type metadata accessor for MessageStore();
  v14 = *(v3 + *(v13 + 24));
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = *(v3 + *(v13 + 24));
  result = swift_bridgeObjectRetain_n();
  v22 = 0;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
LABEL_8:
      v24 = v14;
      v25 = v38;
      sub_10000C7CC(*(v14 + 56) + *(v39 + 72) * (__clz(__rbit64(v18)) | (v23 << 6)), v38);
      sub_10000C768(v25, v11);
      v26 = &v11[*(v41 + 20)];
      v28 = *(v26 + 3);
      v27 = *(v26 + 4);
      sub_10000D3B0(v26, v28);
      v29 = (*(v27 + 8))(v28, v27);
      if (v29 == v40 && v30 == a2)
      {

        goto LABEL_18;
      }

      v32 = sub_100039BAC();

      if (v32)
      {
        break;
      }

      v18 &= v18 - 1;
      result = sub_10000C830(v11);
      v22 = v23;
      v14 = v24;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    v35 = v37;
    sub_10000C768(v11, v37);
    v33 = v35;
    v34 = 0;
LABEL_19:
    sub_10000E998(v33, v34, 1, v41);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v19)
      {

        v33 = v37;
        v34 = 1;
        goto LABEL_19;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10003553C()
{
  if (qword_100058A98 != -1)
  {
    sub_10001C35C();
  }

  v0 = sub_10003972C();
  sub_10000BF30(v0, qword_10005AB08);
  v1 = sub_10003970C();
  v2 = sub_1000399CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_1000216D8();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating video message folder", v3, 2u);
    sub_10000EB00();
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = *(type metadata accessor for MessageStore() + 20);
  sub_10003959C(1);
  v7 = sub_10003985C();

  v8 = [v5 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = sub_10003970C();
    v10 = sub_1000399CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_1000216D8();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "VideoMessage folder already exists - removing", v11, 2u);
      sub_10000EB00();
    }

    v12 = [v4 defaultManager];
    sub_10003955C(v13);
    v15 = v14;
    v30 = 0;
    v16 = [v12 removeItemAtURL:v14 error:&v30];

    if (!v16)
    {
      v25 = v30;
      sub_10003951C();
      goto LABEL_15;
    }

    v17 = v30;
  }

  v18 = [v4 defaultManager];
  sub_10003955C(v19);
  v21 = v20;
  v30 = 0;
  v22 = [v18 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v30];

  if (v22)
  {
    return v30;
  }

  v24 = v30;
  sub_10003951C();

  swift_willThrow();
  swift_errorRetain();
  v25 = sub_10003970C();
  v26 = sub_1000399AC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_10001B508();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to create video message folder %{public}@", v27, 0xCu);
    sub_10000C8EC(v28, &qword_100058DF0, &unk_10003F990);
    sub_10000EB00();
    sub_10000EB00();
  }

LABEL_15:

  return swift_willThrow();
}

uint64_t sub_1000358E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003962C();
  v5 = sub_10000C9B8(v4);
  v71 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000C9CC();
  v72 = v10 - v9;
  v11 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100037558();
  v70 = v13;
  sub_1000215A4();
  __chkstk_darwin(v14);
  v75 = &v67 - v15;
  sub_1000375D8();
  v16 = type metadata accessor for MessageRequest();
  v17 = sub_10000C9A8(v16);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v69 = &v67 - v23;
  sub_1000215A4();
  __chkstk_darwin(v24);
  v26 = &v67 - v25;
  if (qword_100058A98 != -1)
  {
    sub_10001C35C();
  }

  v27 = sub_10003972C();
  v28 = sub_10000BF30(v27, qword_10005AB08);
  sub_10000C7CC(a1, v26);
  v74 = v28;
  v29 = sub_10003970C();
  v30 = sub_1000399CC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = sub_10001B508();
    v68 = a1;
    v32 = v31;
    v33 = swift_slowAlloc();
    v73 = v2;
    v67 = v33;
    v76 = v33;
    *v32 = 136315138;
    sub_100037540();
    sub_100037308(v34, v35);
    sub_100039B9C();
    v36 = sub_10000C830(v26);
    v38 = sub_100037610(v36, v37, &v76);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Started processing message %s", v32, 0xCu);
    sub_10000C54C(v67);
    v2 = v73;
    sub_10000EB00();
    a1 = v68;
    sub_10000EB00();
  }

  else
  {

    sub_10000C830(v26);
  }

  v39 = *(type metadata accessor for MessageStore() + 24);
  v40 = v75;
  sub_10002C9C0(a1, *(v2 + v39), v75);
  v41 = sub_10000BF08(v40, 1, v16);
  sub_10000C8EC(v40, &qword_100058C90, &unk_10003F290);
  if (v41 == 1)
  {
    v75 = v16;
    v42 = v69;
    sub_10000C7CC(a1, v69);
    v43 = sub_10003970C();
    v44 = sub_1000399CC();
    if (os_log_type_enabled(v43, v44))
    {
      sub_10001B508();
      v74 = v39;
      v45 = sub_100023E38();
      v73 = v2;
      v46 = v45;
      v76 = v45;
      *v42 = 136446210;
      sub_100037540();
      sub_100037308(v47, v48);
      sub_1000375E4();
      sub_100039B9C();
      v49 = sub_10000C830(v42);
      v51 = sub_100037610(v49, v50, &v76);

      *(v42 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "Started processing message with UUID %{public}s", v42, 0xCu);
      sub_10000C54C(v46);
      sub_10000EB00();
      sub_10003756C();
    }

    else
    {

      sub_10000C830(v42);
    }

    v63 = v72;
    (*(v71 + 16))(v72, a1, v4);
    v64 = v70;
    sub_10000C7CC(a1, v70);
    sub_10000E998(v64, 0, 1, v75);
    return sub_100036E38(v64, v63);
  }

  else
  {
    sub_10000C7CC(a1, v22);
    v52 = sub_10003970C();
    v53 = sub_1000399AC();
    if (sub_1000375A8(v53))
    {
      sub_10001B508();
      v54 = sub_100023E38();
      v76 = v54;
      *v22 = 136446210;
      sub_100037540();
      sub_100037308(v55, v56);
      sub_1000375E4();
      v57 = sub_100039B9C();
      v59 = v58;
      sub_10000C830(v22);
      v60 = sub_10000BFDC(v57, v59, &v76);

      *(v22 + 4) = v60;
      sub_100037588(&_mh_execute_header, v61, v62, "Already processing message with UUID %{public}s");
      sub_10000C54C(v54);
      sub_10000EB00();
      sub_10003756C();
    }

    else
    {

      sub_10000C830(v22);
    }

    sub_1000372B4();
    swift_allocError();
    *v66 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100035ED0(uint64_t a1)
{
  v4 = sub_1000395CC();
  v5 = sub_10000C9B8(v4);
  v75 = v6;
  v76 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000C9CC();
  v11 = v10 - v9;
  v12 = sub_10003962C();
  v13 = sub_10000C9B8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100037558();
  v73 = v18;
  sub_1000215A4();
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  if (qword_100058A98 != -1)
  {
    sub_10001C35C();
  }

  v22 = sub_10003972C();
  v23 = sub_10000BF30(v22, qword_10005AB08);
  v24 = *(v15 + 16);
  v78 = a1;
  v72 = v24;
  v24(v21, a1, v12);
  v77 = v23;
  v25 = sub_10003970C();
  v26 = sub_1000399CC();
  v27 = sub_1000375A8(v26);
  v74 = v15;
  if (v27)
  {
    v28 = sub_10001B508();
    v70 = v11;
    v29 = v28;
    v30 = swift_slowAlloc();
    v71 = v1;
    v69 = v30;
    v80 = v30;
    *v29 = 136446210;
    sub_100037540();
    sub_100037308(v31, v32);
    v33 = sub_100039B9C();
    v34 = v12;
    v36 = v35;
    v37 = *(v15 + 8);
    (v37)(v21, v34);
    v38 = sub_10000BFDC(v33, v36, &v80);
    v12 = v34;

    *(v29 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v25, v2, "Discarding message %{public}s", v29, 0xCu);
    sub_10000C54C(v69);
    sub_10000EB00();
    v11 = v70;
    sub_10000EB00();
  }

  else
  {

    v37 = *(v15 + 8);
    (v37)(v21, v12);
  }

  v39 = type metadata accessor for MessageStore();
  v40 = v78;
  v41 = sub_10002CA5C(v78, *(v79 + *(v39 + 28)));
  if (v41)
  {

    v42 = sub_10003970C();
    v43 = sub_1000399CC();
    if (os_log_type_enabled(v42, v43))
    {
      *sub_1000216D8() = 0;
      sub_1000375F0(&_mh_execute_header, v44, v45, "Deleting message from disk");
      sub_10003756C();
    }

    sub_1000370AC();
    v46 = [objc_opt_self() defaultManager];
    sub_10003955C(v47);
    v49 = v48;
    v80 = 0;
    v50 = [v46 removeItemAtURL:v48 error:&v80];

    if (v50)
    {
      v51 = v80;
    }

    else
    {
      v64 = v80;
      sub_10003951C();

      swift_willThrow();
    }

    return (*(v75 + 8))(v11, v76);
  }

  else
  {
    v72(v73, v40, v12);
    v52 = sub_10003970C();
    v53 = sub_1000399AC();
    if (sub_1000375A8(v53))
    {
      sub_10001B508();
      v54 = sub_100023E38();
      v80 = v54;
      *v37 = 136446210;
      sub_100037540();
      sub_100037308(v55, v56);
      sub_1000375E4();
      v57 = sub_100039B9C();
      v59 = v58;
      v60 = sub_1000375C4();
      (v37)(v60);
      v61 = sub_10000BFDC(v57, v59, &v80);

      *(v37 + 4) = v61;
      sub_100037588(&_mh_execute_header, v62, v63, "Unable to find message %{public}s in processed store");
      sub_10000C54C(v54);
      sub_10000EB00();
      sub_10003756C();
    }

    else
    {

      v66 = sub_1000375C4();
      (v37)(v66);
    }

    sub_1000372B4();
    swift_allocError();
    *v67 = 0;
    return swift_willThrow();
  }
}

id sub_100036430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v122 = a2;
  v124 = sub_10003962C();
  v5 = sub_10000C9B8(v124);
  v116 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000C9CC();
  v115 = v10 - v9;
  sub_1000375D8();
  v11 = sub_1000395CC();
  v12 = sub_10000C9B8(v11);
  v125 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100037558();
  v114 = v16;
  sub_1000215A4();
  v18 = __chkstk_darwin(v17);
  v20 = &v106[-v19];
  __chkstk_darwin(v18);
  v121 = &v106[-v21];
  sub_1000215A4();
  __chkstk_darwin(v22);
  v24 = &v106[-v23];
  v25 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  sub_100037558();
  v113 = v27;
  sub_1000215A4();
  __chkstk_darwin(v28);
  v120 = &v106[-v29];
  sub_1000375D8();
  v119 = type metadata accessor for MessageRequest();
  v30 = sub_10000C9A8(v119);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_100037558();
  v117 = v33;
  sub_1000215A4();
  __chkstk_darwin(v34);
  v36 = &v106[-v35];
  if (qword_100058A98 != -1)
  {
    sub_10001C35C();
  }

  v118 = v20;
  v37 = sub_10003972C();
  v38 = sub_10000BF30(v37, qword_10005AB08);
  sub_10000C7CC(a1, v36);
  v123 = v38;
  v39 = sub_10003970C();
  v40 = sub_1000399CC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = sub_10001B508();
    v111 = swift_slowAlloc();
    v112 = v11;
    v126 = v111;
    *v41 = 136446210;
    sub_100037540();
    sub_100037308(v42, v43);
    sub_100039B9C();
    v44 = sub_10000C830(v36);
    v46 = sub_100037610(v44, v45, &v126);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Finished processing message %{public}s", v41, 0xCu);
    sub_10000C54C(v111);
    v11 = v112;
    sub_10000EB00();
    sub_10000EB00();
  }

  else
  {

    sub_10000C830(v36);
  }

  v47 = type metadata accessor for MessageStore();
  v48 = *(v47 + 24);
  v49 = v120;
  sub_10002C9C0(a1, *&v3[v48], v120);
  v50 = sub_10000BF08(v49, 1, v119);
  sub_10000C8EC(v49, &qword_100058C90, &unk_10003F290);
  v51 = v121;
  if (v50 == 1)
  {
    v52 = v117;
    sub_10000C7CC(a1, v117);
    v53 = sub_10003970C();
    v54 = sub_1000399CC();
    if (sub_1000375A8(v54))
    {
      sub_10001B508();
      v55 = sub_100023E38();
      v126 = v55;
      *v48 = 136446210;
      sub_100037540();
      sub_100037308(v56, v57);
      sub_1000375E4();
      sub_100039B9C();
      v58 = sub_10000C830(v52);
      v60 = sub_100037610(v58, v59, &v126);

      *(v48 + 4) = v60;
      sub_100037588(&_mh_execute_header, v61, v62, "Unable to find message %{public}s in processing store");
      sub_10000C54C(v55);
      sub_10000EB00();
      sub_10003756C();
    }

    else
    {

      sub_10000C830(v52);
    }

    sub_1000372B4();
    swift_allocError();
    *v80 = 0;
    swift_willThrow();
  }

  else
  {
    v119 = v47;
    v120 = v3;
    sub_1000370AC();
    v63 = v125 + 16;
    v64 = *(v125 + 16);
    (v64)(v51, v122, v11);
    v65 = v118;
    v117 = v63;
    v111 = v64;
    (v64)(v118, v24, v11);
    v66 = sub_10003970C();
    v67 = sub_1000399CC();
    v68 = os_log_type_enabled(v66, v67);
    v110 = a1;
    v112 = v48;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v109 = v24;
      v70 = v69;
      v108 = swift_slowAlloc();
      v126 = v108;
      *v70 = 136446466;
      sub_100037308(&qword_1000592D0, &type metadata accessor for URL);
      v107 = v67;
      v71 = sub_100039B9C();
      v73 = v72;
      v74 = *(v125 + 8);
      (v74)(v51, v11);
      v75 = sub_10000BFDC(v71, v73, &v126);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2082;
      v76 = sub_100039B9C();
      v78 = v77;
      v121 = v74;
      (v74)(v65, v11);
      v79 = sub_10000BFDC(v76, v78, &v126);

      *(v70 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v66, v107, "Found message, moving video from %{public}s to %{public}s", v70, 0x16u);
      swift_arrayDestroy();
      sub_10000EB00();
      v24 = v109;
      sub_10000EB00();
    }

    else
    {

      v81 = *(v125 + 8);
      (v81)(v65, v11);
      v121 = v81;
      (v81)(v51, v11);
    }

    v82 = [objc_opt_self() defaultManager];
    sub_10003959C(1);
    v83 = sub_10003985C();

    sub_10003959C(1);
    v84 = sub_10003985C();

    v126 = 0;
    v85 = [v82 copyItemAtPath:v83 toPath:v84 error:&v126];

    v53 = v126;
    v86 = v120;
    if (v85)
    {
      v87 = v24;
      v88 = v126;
      v89 = sub_10003970C();
      v90 = sub_1000399CC();
      if (os_log_type_enabled(v89, v90))
      {
        *sub_1000216D8() = 0;
        sub_1000375F0(&_mh_execute_header, v91, v92, "Finished processing and moved video");
        sub_10003756C();
      }

      v94 = v115;
      v93 = v116;
      v95 = v110;
      (*(v116 + 16))(v115, v110, v124);
      sub_10000C944(0, &qword_100059910, TUSandboxExtendedURL_ptr);
      v96 = v114;
      (v111)(v114, v87, v11);
      v97 = sub_100037210(v96, 0);
      v98 = objc_allocWithZone(TUMomentsRawVideoMessageDescriptor);
      v99 = sub_100030324(v94, v97);
      v100 = v113;
      sub_100030800(v95, v113);
      sub_10000C8EC(v100, &qword_100058C90, &unk_10003F290);
      v101 = [v99 uuid];
      sub_10003960C();

      v102 = *(v119 + 28);
      v53 = v99;
      v103 = *&v86[v102];
      swift_isUniquelyReferenced_nonNull_native();
      v126 = *&v86[v102];
      sub_100030BF0();
      *&v86[v102] = v126;
      (*(v93 + 8))(v94, v124);
      (v121)(v87, v11);
    }

    else
    {
      v104 = v126;
      sub_10003951C();

      swift_willThrow();
      (v121)(v24, v11);
    }
  }

  return v53;
}

uint64_t sub_100036E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000BEC0(&qword_100058C90, &unk_10003F290);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for MessageRequest();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10000BF08(a1, 1, v14) == 1)
  {
    sub_10000C8EC(a1, &qword_100058C90, &unk_10003F290);
    sub_100030800(a2, v9);
    v15 = sub_10003962C();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_10000C8EC(v9, &qword_100058C90, &unk_10003F290);
  }

  else
  {
    sub_10000C768(a1, v13);
    v17 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100030A9C();
    *v3 = v20;
    v18 = sub_10003962C();
    return (*(*(v18 - 8) + 8))(a2, v18);
  }
}

Swift::Int sub_100037048(char a1)
{
  sub_100039C1C();
  sub_100039C2C(a1 & 1);
  return sub_100039C3C();
}

uint64_t sub_1000370AC()
{
  v0 = sub_10003952C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for MessageStore() + 20);
  v8[0] = sub_1000395DC();
  v8[1] = v6;
  v9._countAndFlagsBits = 0x766F6D2E7761725FLL;
  v9._object = 0xE800000000000000;
  sub_1000398CC(v9);
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  sub_10000E944();
  sub_1000395BC();
  (*(v1 + 8))(v4, v0);
}

id sub_100037210(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10003955C(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 withExtensionType:a2];

  v9 = sub_1000395CC();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

unint64_t sub_1000372B4()
{
  result = qword_100059B90;
  if (!qword_100059B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059B90);
  }

  return result;
}

uint64_t sub_100037308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MessageStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000374A4);
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

unint64_t sub_1000374EC()
{
  result = qword_100059B98;
  if (!qword_100059B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100059B98);
  }

  return result;
}

uint64_t sub_10003756C()
{
}

void sub_100037588(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

BOOL sub_1000375A8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1000375F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100037610(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_10000BFDC(v3, v4, a3);
}

id sub_100037628()
{
  type metadata accessor for FTLivePhotoIDSService();
  result = sub_100023F48(0xD000000000000023, 0x800000010003EED0);
  qword_100059BA0 = result;
  return result;
}

id sub_100037698()
{
  if (qword_100058AA8 != -1)
  {
    swift_once();
  }

  v1 = qword_100059BA0;

  return v1;
}

id sub_1000376F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTLivePhotoIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100037810()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

_BYTE *storeEnumTagSinglePayload for MessageControllerStateMachine(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10003795CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_100037994()
{
  if (*v0)
  {
    sub_100021228();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
  }

  else
  {
    *v0 = 1;
  }
}

void sub_1000379F8()
{
  v1 = *v0;
  sub_100037A5C("start()", 7, 2, *v0);
  if (v1 == 1)
  {
    sub_100037C58(2);
  }

  else
  {
    sub_100037E80(1, v1);
  }
}

void sub_100037A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_100058A98 != -1)
  {
    swift_once();
  }

  v5 = sub_10003972C();
  sub_10000BF30(v5, qword_10005AB08);
  oslog = sub_10003970C();
  v6 = sub_1000399CC();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = sub_100039B1C();
    v10 = sub_10000BFDC(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    if (a4)
    {
      if (a4 == 1)
      {
        v11 = 0xD000000000000014;
      }

      else
      {
        v11 = 0x64657472617473;
      }

      if (a4 == 1)
      {
        v12 = 0x800000010003D4E0;
      }

      else
      {
        v12 = 0xE700000000000000;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      v11 = 0x676E6974696177;
    }

    v13 = sub_10000BFDC(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Called %{public}s with state %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100037C58(char a1)
{
  v3 = *v1;
  *v1 = a1;
  if (qword_100058A98 != -1)
  {
    swift_once();
  }

  v4 = sub_10003972C();
  sub_10000BF30(v4, qword_10005AB08);
  oslog = sub_10003970C();
  v5 = sub_1000399CC();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = 0x676E6974696177;
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = 0xD000000000000014;
    v9 = 0x800000010003D4E0;
    if (v3 != 1)
    {
      v8 = 0x64657472617473;
      v9 = 0xE700000000000000;
    }

    if (v3)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x676E6974696177;
    }

    if (v3)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_10000BFDC(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 0xD000000000000014;
      }

      else
      {
        v6 = 0x64657472617473;
      }

      if (a1 == 1)
      {
        v13 = 0x800000010003D4E0;
      }

      else
      {
        v13 = 0xE700000000000000;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = sub_10000BFDC(v6, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v5, "State transform from '%{public}s' to '%{public}s' succeeded", v7, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100037E80(char a1, char a2)
{
  if (qword_100058A98 != -1)
  {
    swift_once();
  }

  v4 = sub_10003972C();
  sub_10000BF30(v4, qword_10005AB08);
  v5 = sub_10003970C();
  v6 = sub_1000399AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0x676E6974696177;
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136446466;
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 0xD000000000000014;
      }

      else
      {
        v9 = 0x64657472617473;
      }

      if (a2 == 1)
      {
        v10 = 0x800000010003D4E0;
      }

      else
      {
        v10 = 0xE700000000000000;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      v9 = 0x676E6974696177;
    }

    v11 = sub_10000BFDC(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0xD000000000000014;
      }

      else
      {
        v7 = 0x64657472617473;
      }

      if (a1 == 1)
      {
        v12 = 0x800000010003D4E0;
      }

      else
      {
        v12 = 0xE700000000000000;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_10000BFDC(v7, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Invalid state '%{public}s' expected '%{public}s'", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_100021228();
  swift_allocError();
  *v14 = 0;
  return swift_willThrow();
}

void sub_1000380CC()
{
  v1 = *v0;
  sub_100037A5C("end()", 5, 2, *v0);
  if (v1 == 2)
  {
    sub_100037C58(0);
  }

  else
  {
    sub_100037E80(2, v1);
  }
}

void sub_100038130()
{
  sub_100037A5C("reset()", 7, 2, *v0);

  sub_100037C58(0);
}

void sub_1000381D0(uint64_t a1, char a2, os_log_t log)
{
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Rejecting the connection since it is not entitled %@, lockdownModeEnabled: %@", &v4, 0x16u);
}

void sub_100038270()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000289C();
  sub_1000028B4(&_mh_execute_header, v2, v3, "failed to resolve temporary directory (%d): %s", v4, v5, v6, v7, v8);
}

void sub_1000382F8()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_10000289C();
  sub_1000028B4(&_mh_execute_header, v2, v3, "failed to initialize temporary directory (%d): %s", v4, v5, v6, v7, v8);
}

void sub_1000384B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100007AA0();
  sub_100007A94();
  sub_100007A74(&_mh_execute_header, v2, v3, "Failed to donate %@ to firewall with error %@");
}

void sub_1000385FC(uint64_t a1, id *a2)
{
  v2 = [*a2 sessionsByToken];
  sub_100007A94();
  sub_100007A4C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000386A4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = [a2 remoteIDSDestinations];
  sub_100007A94();
  sub_100007A4C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10003874C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100007AA0();
  sub_100007A30(&_mh_execute_header, v2, v3, "Received non-zipped resource at %@", v4, v5, v6, v7, v8);
}

void sub_1000387B8(uint64_t *a1)
{
  v1 = *a1;
  sub_100007AA0();
  sub_100007A30(&_mh_execute_header, v2, v3, "Received moments resource with missing transaction ID in metadata: %@", v4, v5, v6, v7, v8);
}

void sub_100038864(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_100007AA0();
  sub_100007A30(&_mh_execute_header, v2, v3, "Failed to unzip file at URL %@", v4, v5, v6, v7, v8);
}

void sub_100038AD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100007AA0();
  sub_100007A94();
  sub_100007A5C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100038B54(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100007AA0();
  sub_100007A30(&_mh_execute_header, v2, v3, "Error saving resources with video url: %@", v4, v5, v6, v7, v8);
}

void sub_100038F00(void *a1)
{
  v1 = [a1 transactionID];
  sub_100007A68();
  sub_100007A4C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100038F8C(uint64_t a1, void *a2)
{
  v2 = [a2 remoteIDSDestinations];
  sub_100007A94();
  sub_100007A4C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10003909C(void *a1)
{
  [a1 streamToken];
  sub_100007A68();
  sub_100007A4C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000391D8(uint64_t *a1)
{
  v1 = *a1;
  sub_10000A11C();
  sub_100007A74(&_mh_execute_header, v2, v3, "Error retrieving contents of directory at URL %@: %@");
}

void sub_100039248(_BYTE *a1)
{
  *a1;
  sub_10000A11C();
  sub_100007A74(&_mh_execute_header, v1, v2, "%@ doesn't exist at client file url: %@");
}

void sub_100039408(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000A11C();
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error zipping directory at URL %@ to output URL %@", v5, 0x16u);
}

void sub_100039484(void *a1)
{
  v1 = a1[7];
  v2 = a1[4];
  v3 = a1[5];
  sub_10000A11C();
  v9 = v4;
  v10 = v5;
  v11 = v6;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error occurred during IMFileCopierOperation type %ld on inputURL %@ and outputURL %@", v8, 0x20u);
}