void sub_100001720()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for NotificationViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 heightAnchor];

    v4 = [v3 constraintEqualToConstant:0.0];
    [v4 setActive:1];

    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000018F8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_100004B84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004B64();
  v9 = sub_100004B74();
  v10 = sub_100004C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = v2;
    v12 = a1;
    v13 = v11;
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136446210;
    v15 = sub_100004CD4();
    v17 = sub_100003C70(v15, v16, &v30);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Did receive notification", v13, 0xCu);
    sub_100004248(v14);

    a1 = v12;
    v2 = v29;
  }

  (*(v5 + 8))(v8, v4);
  v18 = [a1 request];
  v19 = [v18 content];

  v20 = [v19 categoryIdentifier];
  v21 = sub_100004BA4();
  v23 = v22;

  if (v21 == sub_100004BA4() && v23 == v24)
  {

    sub_1000045B4();
  }

  else
  {
    v25 = sub_100004CC4();

    if (v25)
    {
      sub_1000045B4();
    }

    else
    {
      sub_100001D00(a1);
    }
  }

  v26 = [v2 extensionContext];
  if (v26)
  {
    v27 = v26;
    sub_10000456C(0, &qword_10000C5F0, UNNotificationAction_ptr);
    isa = sub_100004BE4().super.isa;

    [v27 setNotificationActions:isa];
  }

  else
  {
  }
}

void *sub_100001D00(void *a1)
{
  v56[1] = swift_getObjectType();
  v3 = sub_100004B84();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  (__chkstk_darwin)();
  v63 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004AC4();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  (__chkstk_darwin)();
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004AE4();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  (__chkstk_darwin)();
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004B24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = (__chkstk_darwin)();
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v56 - v20;
  v66 = 0;
  v22 = *(v1 + OBJC_IVAR___NotificationViewController_sleepStore);
  v23 = [a1 date];
  sub_100004B04();

  isa = sub_100004AF4().super.isa;
  v64 = *(v15 + 8);
  v65 = v14;
  v64(v21, v14);
  v25 = [v22 upcomingResolvedScheduleOccurrenceAfterDate:isa alarmStatus:&v66 error:0];

  if (v25)
  {
    v67 = &_swiftEmptyArrayStorage;
    v26 = [v25 wakeUpEvent];
    v27 = [v26 dueDate];

    sub_100004B04();
    sub_100004AD4();
    sub_100004AB4();
    v28 = sub_100004B14();
    v30 = v29;
    (*(v61 + 8))(v9, v62);
    (*(v59 + 8))(v13, v60);
    if (v66 - 2 >= 2)
    {
      if (v66 > 1)
      {
        result = sub_100004C94();
        __break(1u);
        return result;
      }

      if (qword_10000C520 != -1)
      {
        swift_once();
      }

      v47.super.isa = qword_10000C6F8;
      v55._countAndFlagsBits = 0xE000000000000000;
      v69._countAndFlagsBits = 0xD000000000000019;
      v69._object = 0x80000001000057D0;
      v71.value._countAndFlagsBits = 0;
      v71.value._object = 0;
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      sub_100004A84(v69, v71, v47, v73, v55);
      v32 = &HKSPBedtimeReminderTurnOnNextAlarmAction;
    }

    else
    {
      if (qword_10000C520 != -1)
      {
        swift_once();
      }

      v31.super.isa = qword_10000C6F8;
      v55._countAndFlagsBits = 0xE000000000000000;
      v68._object = 0x80000001000057B0;
      v68._countAndFlagsBits = 0xD000000000000018;
      v70.value._countAndFlagsBits = 0;
      v70.value._object = 0;
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      sub_100004A84(v68, v70, v31, v72, v55);
      v32 = &HKSPBedtimeReminderChangeNextAlarmAction;
    }

    sub_10000445C();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100005240;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = sub_100004518();
    *(v48 + 32) = v28;
    *(v48 + 40) = v30;
    sub_100004BB4();

    v49 = *v32;
    sub_100004BA4();
    v50 = sub_100004B94();

    v51 = sub_100004B94();

    v52 = [objc_opt_self() actionWithIdentifier:v50 title:v51 options:4];

    v53 = v52;
    sub_100004BD4();
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v54 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100004BF4();
    }

    sub_100004C04();

    v64(v19, v65);
    return v67;
  }

  else
  {
    sub_100004B64();
    v33 = a1;
    v34 = sub_100004B74();
    v35 = sub_100004C44();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v36 = 136446466;
      v37 = sub_100004CD4();
      v39 = sub_100003C70(v37, v38, &v67);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      v40 = [v33 date];
      sub_100004B04();

      sub_100004404();
      v41 = v65;
      v42 = sub_100004CA4();
      v44 = v43;
      v64(v21, v41);
      v45 = sub_100003C70(v42, v44, &v67);

      *(v36 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%{public}s] Did not find an upcoming occurrence after %{public}s", v36, 0x16u);
      swift_arrayDestroy();
    }

    (*(v57 + 8))(v63, v58);
    return &_swiftEmptyArrayStorage;
  }
}

void sub_100002500(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v125 = a2;
  v126 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_100004B54();
  v121 = *(v7 - 8);
  v122 = v7;
  v8 = *(v121 + 64);
  __chkstk_darwin(v7);
  v119 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100004AA4();
  v118 = *(v120 - 8);
  v10 = *(v118 + 64);
  __chkstk_darwin(v120);
  v117 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004B84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v116 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v115 = &v111 - v18;
  v19 = __chkstk_darwin(v17);
  v123 = &v111 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v111 - v22;
  __chkstk_darwin(v21);
  v25 = &v111 - v24;
  sub_100004B64();
  v26 = a1;
  v27 = sub_100004B74();
  v28 = sub_100004C54();

  v29 = os_log_type_enabled(v27, v28);
  v127 = v12;
  v124 = ObjectType;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    aBlock = v113;
    *v30 = 136446466;
    v31 = sub_100004CD4();
    v33 = sub_100003C70(v31, v32, &aBlock);
    v114 = v4;
    v34 = v33;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    v35 = v26;
    v36 = [v35 description];
    v37 = sub_100004BA4();
    v112 = v13;
    v38 = v37;
    v39 = v23;
    v40 = v26;
    v42 = v41;

    v4 = v114;
    v43 = sub_100003C70(v38, v42, &aBlock);
    v26 = v40;
    v23 = v39;

    *(v30 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v27, v28, "[%{public}s] Did receive notification response: %{public}s", v30, 0x16u);
    swift_arrayDestroy();

    v44 = *(v112 + 8);
    v44(v25, v127);
  }

  else
  {

    v44 = *(v13 + 8);
    v44(v25, v12);
  }

  v45 = [v26 actionIdentifier];
  v46 = sub_100004BA4();
  v48 = v47;

  if (sub_100004BA4() == v46 && v49 == v48)
  {

    goto LABEL_8;
  }

  v50 = sub_100004CC4();

  if (v50)
  {
LABEL_8:

    sub_100004B64();
    v51 = sub_100004B74();
    v52 = sub_100004C54();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock = v54;
      *v53 = 136446210;
      v55 = sub_100004CD4();
      v57 = sub_100003C70(v55, v56, &aBlock);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%{public}s] Forwarding action to change next alarm", v53, 0xCu);
      sub_100004248(v54);
    }

LABEL_10:

    v44(v23, v127);
    v58 = [objc_allocWithZone(HKSPAnalyticsSleepNotificationEvent) initWithType:0 action:1];
    v59 = [*(v4 + OBJC_IVAR___NotificationViewController_sleepStore) analyticsManager];
    [v59 trackEvent:v58];

    v60 = 2;
LABEL_11:
    v125(v60);

    return;
  }

  if (sub_100004BA4() == v46 && v61 == v48)
  {

    goto LABEL_16;
  }

  v62 = sub_100004CC4();

  if (v62)
  {
LABEL_16:

    v23 = v123;
    sub_100004B64();
    v51 = sub_100004B74();
    v63 = sub_100004C54();
    if (os_log_type_enabled(v51, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136446210;
      v66 = sub_100004CD4();
      v68 = sub_100003C70(v66, v67, &aBlock);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v51, v63, "[%{public}s] Forwarding action to turn on next alarm", v64, 0xCu);
      sub_100004248(v65);
    }

    goto LABEL_10;
  }

  if (sub_100004BA4() == v46 && v69 == v48)
  {

LABEL_23:

    v71 = *(v4 + OBJC_IVAR___NotificationViewController_sleepStore);
    v72 = swift_allocObject();
    *(v72 + 16) = v124;
    v132 = sub_1000049F0;
    v133 = v72;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_100003358;
    v131 = &unk_100008570;
    v73 = _Block_copy(&aBlock);

    [v71 configureSleepFocusWithState:3 completion:v73];
    _Block_release(v73);
    v74 = [objc_allocWithZone(HKSPAnalyticsSleepNotificationEvent) initWithType:1 action:2];
    v75 = [v71 analyticsManager];
LABEL_24:
    v76 = v75;
    [v76 trackEvent:v74];

    v125(1);
    return;
  }

  v70 = sub_100004CC4();

  if (v70)
  {
    goto LABEL_23;
  }

  if (sub_100004BA4() == v46 && v77 == v48)
  {

LABEL_29:

    v79 = *(v4 + OBJC_IVAR___NotificationViewController_sleepStore);
    v80 = swift_allocObject();
    *(v80 + 16) = v124;
    v132 = sub_1000042AC;
    v133 = v80;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_100003358;
    v131 = &unk_100008520;
    v81 = _Block_copy(&aBlock);

    [v79 configureSleepFocusWithState:2 completion:v81];
    _Block_release(v81);
    v74 = [objc_allocWithZone(HKSPAnalyticsSleepNotificationEvent) initWithType:1 action:3];
    v75 = [v79 analyticsManager];
    goto LABEL_24;
  }

  v78 = sub_100004CC4();

  if (v78)
  {
    goto LABEL_29;
  }

  if (sub_100004BA4() == v46 && v82 == v48)
  {

LABEL_34:
    v84 = HKSPSleepFocusConfigurationURL();
    if (v84)
    {
      v85 = v117;
      v86 = v84;
      sub_100004A94();

      v87 = v119;
      sub_100004B44();
      *(swift_allocObject() + 16) = v124;
      sub_100004B34();

      (*(v121 + 8))(v87, v122);
      (*(v118 + 8))(v85, v120);
    }

    else
    {
      v88 = v115;
      sub_100004B64();
      v89 = sub_100004B74();
      v90 = sub_100004C44();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        aBlock = v92;
        *v91 = 136446210;
        v93 = sub_100004CD4();
        v95 = sub_100003C70(v93, v94, &aBlock);

        *(v91 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v89, v90, "[%{public}s] failed to create sleep focus configuration url", v91, 0xCu);
        sub_100004248(v92);
      }

      v44(v88, v127);
    }

    v58 = [objc_allocWithZone(HKSPAnalyticsSleepNotificationEvent) initWithType:1 action:4];
    v96 = [*(v4 + OBJC_IVAR___NotificationViewController_sleepStore) analyticsManager];
    [v96 trackEvent:v58];

    v60 = 1;
    goto LABEL_11;
  }

  v83 = sub_100004CC4();

  if (v83)
  {
    goto LABEL_34;
  }

  v97 = v116;
  sub_100004B64();
  v98 = v26;
  v99 = sub_100004B74();
  v100 = sub_100004C54();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v101 = 136446466;
    v102 = sub_100004CD4();
    v104 = sub_100003C70(v102, v103, &aBlock);

    *(v101 + 4) = v104;
    *(v101 + 12) = 2082;
    v105 = [v98 actionIdentifier];
    v106 = sub_100004BA4();
    v108 = v107;

    v109 = sub_100003C70(v106, v108, &aBlock);

    *(v101 + 14) = v109;
    _os_log_impl(&_mh_execute_header, v99, v100, "[%{public}s] Forwarding unrecognized action %{public}s", v101, 0x16u);
    swift_arrayDestroy();

    v110 = v116;
  }

  else
  {

    v110 = v97;
  }

  v44(v110, v127);
  v125(2);
}

void sub_100003358(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000033D0(char a1, uint64_t a2)
{
  v4 = sub_100004B84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_100004B64();
    swift_errorRetain();
    v10 = sub_100004B74();
    v11 = sub_100004C44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v12 = 136446466;
      v14 = sub_100004CD4();
      v16 = sub_100003C70(v14, v15, &v20);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2114;
      if (a2)
      {
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v12 + 14) = v17;
      *v13 = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] failed to configure sleep focus with error: %{public}@", v12, 0x16u);
      sub_1000042E0(v13);

      sub_100004248(v19);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_1000035F0(uint64_t a1)
{
  v2 = sub_100004B84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_100004B64();
    swift_errorRetain();
    v8 = sub_100004B74();
    v9 = sub_100004C44();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = v2;
      v11 = v10;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136446466;
      v14 = sub_100004CD4();
      v16 = sub_100003C70(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2114;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v17;
      *v12 = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] failed to launch configuration with error: %{public}@", v11, 0x16u);
      sub_1000042E0(v12);

      sub_100004248(v13);

      return (*(v3 + 8))(v7, v18);
    }

    else
    {

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

id sub_1000038C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___NotificationViewController_sleepStore;
  v7 = objc_allocWithZone(HKSPSleepStore);
  v8 = sub_100004B94();
  v9 = [v7 initWithIdentifier:v8];

  *&v3[v6] = v9;
  if (a2)
  {
    v10 = sub_100004B94();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for NotificationViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_100003A94(void *a1)
{
  v3 = OBJC_IVAR___NotificationViewController_sleepStore;
  v4 = objc_allocWithZone(HKSPSleepStore);
  v5 = sub_100004B94();
  v6 = [v4 initWithIdentifier:v5];

  *&v1[v3] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NotificationViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100003C08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003C70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003D3C(v11, 0, 0, 1, a1, a2);
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
    sub_1000043A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004248(v11);
  return v7;
}

unint64_t sub_100003D3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003E48(a5, a6);
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
    result = sub_100004C84();
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

char *sub_100003E48(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003E94(a1, a2);
  sub_100003FC4(&off_1000084A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003E94(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000040B0(v5, 0);
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

  result = sub_100004C84();
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
        v10 = sub_100004BC4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000040B0(v10, 0);
        result = sub_100004C74();
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

uint64_t sub_100003FC4(uint64_t result)
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

  result = sub_10000413C(result, v12, 1, v3);
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

void *sub_1000040B0(uint64_t a1, uint64_t a2)
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

  sub_100004994(0, &qword_10000C5C8, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000413C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004994(0, &qword_10000C5C8, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

uint64_t sub_100004248(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000042C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042E0(uint64_t a1)
{
  sub_10000433C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000433C()
{
  if (!qword_10000C5B8)
  {
    sub_10000456C(255, &qword_10000C5C0, NSObject_ptr);
    v0 = sub_100004C64();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C5B8);
    }
  }
}

uint64_t sub_1000043A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100004404()
{
  result = qword_10000C5D0;
  if (!qword_10000C5D0)
  {
    sub_100004B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5D0);
  }

  return result;
}

void sub_10000445C()
{
  if (!qword_10000C5D8)
  {
    sub_1000044B4();
    v0 = sub_100004CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C5D8);
    }
  }
}

unint64_t sub_1000044B4()
{
  result = qword_10000C5E0;
  if (!qword_10000C5E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10000C5E0);
  }

  return result;
}

unint64_t sub_100004518()
{
  result = qword_10000C5E8;
  if (!qword_10000C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5E8);
  }

  return result;
}

uint64_t sub_10000456C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000045B4()
{
  v21._object = &_swiftEmptyArrayStorage;
  if (qword_10000C520 != -1)
  {
    swift_once();
  }

  v0 = qword_10000C6F8;
  v21._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 0x45434E454C4953;
  v25._object = 0xE700000000000000;
  v28.value._countAndFlagsBits = 0;
  v28.value._object = 0;
  v1.super.isa = qword_10000C6F8;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_100004A84(v25, v28, v1, v31, v21);
  v2 = HKSPBedtimeReminderSilenceAllNotificationsAction;
  v3 = sub_100004B94();

  v4 = objc_opt_self();
  v5 = [v4 actionWithIdentifier:v2 title:v3 options:0];

  v6 = v5;
  sub_100004BD4();
  if (*((v22._object & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22._object & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((v22._object & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_100004BF4();
  }

  sub_100004C04();
  v22._countAndFlagsBits = 0xE000000000000000;
  v26._countAndFlagsBits = 0x574F4C4C41;
  v26._object = 0xE500000000000000;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v7.super.isa = v0;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_100004A84(v26, v29, v7, v32, v22);
  v8 = HKSPBedtimeReminderAllowAllNotificationsAction;
  v9 = sub_100004B94();

  v10 = [v4 actionWithIdentifier:v8 title:v9 options:0];

  v11 = v10;
  sub_100004BD4();
  if (*((v23._object & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23._object & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((v23._object & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_100004BF4();
  }

  sub_100004C04();
  v23._countAndFlagsBits = 0xE000000000000000;
  v27._countAndFlagsBits = 0x52554749464E4F43;
  v27._object = 0xE900000000000045;
  v30.value._countAndFlagsBits = 0;
  v30.value._object = 0;
  v12.super.isa = v0;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100004A84(v27, v30, v12, v33, v23);
  v13 = HKSPBedtimeReminderConfigureNotificationsAction;
  v14 = sub_100004B94();

  v15 = [v4 actionWithIdentifier:v13 title:v14 options:0];

  v16 = v15;
  sub_100004BD4();
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_100004BF4();
  }

  sub_100004C04();

  return v24;
}

uint64_t sub_100004920()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100004994(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_100004A2C()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10000C6F8 = result;
  return result;
}