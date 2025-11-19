uint64_t sub_1001560F8(void *a1)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "ConnectionManager: Sending %@ to reporter", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  [objc_msgSend(objc_opt_self() "reporter")];

  return swift_unknownObjectRelease();
}

id sub_1001562BC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener] invalidate];
  [*&v0[v1] setDelegate:0];
  v2 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener] invalidate];
  [*&v0[v2] setDelegate:0];
  v3 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener] invalidate];
  [*&v0[v3] setDelegate:0];
  v4 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener] invalidate];
  [*&v0[v4] setDelegate:0];
  v5 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener] invalidate];
  [*&v0[v5] setDelegate:0];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ConnectionManager();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for ConnectionManager()
{
  result = qword_1003E02E8;
  if (!qword_1003E02E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001565C4()
{
  sub_100157F0C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001566A4()
{
  v1 = v0;
  v176 = sub_100005814(&unk_1003E0370, &qword_10033F320);
  v175 = *(v176 - 8);
  v2 = *(v175 + 64);
  __chkstk_darwin(v176);
  v174 = &v169 - v3;
  v4 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener;
  v5 = [*(v0 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener) serviceName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v10;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100008D04(v11, qword_1003FAA40);

  v180 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v190[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10021145C(v7, v9, v190);
    _os_log_impl(&_mh_execute_header, v13, v14, "Resuming XPC listener for Mach service %s...", v15, 0xCu);
    sub_10000839C(v16);
  }

  v173 = v9;
  [*(v1 + v4) setDelegate:v1];
  [*(v1 + v4) resume];
  v17 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener;
  v18 = [*(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener) serviceName];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v23;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v190[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10021145C(v20, v22, v190);
    _os_log_impl(&_mh_execute_header, v24, v25, "Resuming XPC listener for Mach service %s...", v26, 0xCu);
    sub_10000839C(v27);
  }

  [*(v1 + v17) setDelegate:v1];
  [*(v1 + v17) resume];
  v28 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener;
  v29 = [*(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener) serviceName];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v34;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v190[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10021145C(v31, v33, v190);
    _os_log_impl(&_mh_execute_header, v35, v36, "Resuming XPC listener for Mach service %s...", v37, 0xCu);
    sub_10000839C(v38);
  }

  [*(v1 + v28) setDelegate:v1];
  [*(v1 + v28) resume];
  [*(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceManager) startup];
  v39 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDaemonContainer;
  v178 = *(*(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDaemonContainer) + 352);
  swift_unknownObjectRetain();
  v40 = sub_100305F0C(0, 1, 1, _swiftEmptyArrayStorage);
  v42 = v40[2];
  v41 = v40[3];
  v43 = v42 + 1;
  if (v42 >= v41 >> 1)
  {
    v40 = sub_100305F0C((v41 > 1), v42 + 1, 1, v40);
  }

  v40[2] = v43;
  *&v40[2 * v42 + 4] = v178;
  *&v178 = v39;
  v44 = v40[3];
  v177 = *(*(v1 + v39) + 368);
  swift_unknownObjectRetain();
  if (v43 >= v44 >> 1)
  {
    v40 = sub_100305F0C((v44 > 1), v42 + 2, 1, v40);
  }

  v40[2] = v42 + 2;
  *&v40[2 * v43 + 4] = v177;
  v45 = [objc_allocWithZone(CDPWalrusStateController) init];
  v46 = [objc_allocWithZone(CDPStateController) init];
  v47 = [objc_opt_self() contextForPrimaryAccount];
  *&v177 = v46;
  v179 = v1;
  if (v47)
  {
    v48 = v47;
    v49 = v45;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Setting health check context type", v52, 2u);
    }

    [v48 setType:15];
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Passing primary context with health check context type to CDPRequestController", v55, 2u);
    }

    v56 = objc_allocWithZone(CDPWalrusStateController);
    v57 = v48;
    v58 = [v56 initWithContext:v57];
    v59 = [objc_allocWithZone(CDPStateController) initWithContext:v57];

    if (!v59)
    {
      __break(1u);
      return;
    }

    v60 = [objc_allocWithZone(ACAccountStore) init];
    v61 = type metadata accessor for CDPRequestController();
    v62 = swift_allocObject();
    v62[2] = v58;
    v62[3] = v59;
    v62[4] = v60;
    v188 = v61;
    v189 = &off_1003AA7A0;

    *&v187 = v62;
    sub_10003E950(&v187, v190);
    v63 = v49;
  }

  else
  {

    v64 = objc_allocWithZone(ACAccountStore);
    v63 = v45;
    v65 = v45;
    v66 = v46;
    v67 = [v64 init];
    v68 = type metadata accessor for CDPRequestController();
    v69 = swift_allocObject();
    v69[2] = v65;
    v69[3] = v66;
    v69[4] = v67;
    v190[3] = v68;
    v190[4] = &off_1003AA7A0;
    v190[0] = v69;
  }

  sub_100040738(v190, &v187);
  v70 = objc_allocWithZone(AKWalrusController);
  v71 = v63;
  v72 = [v70 init];
  type metadata accessor for AuthKitRequestController();
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  v74 = v188;
  v75 = sub_10003E968(&v187, v188);
  v76 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = (&v169 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78);
  v80 = *v78;
  v173 = v71;
  v81 = sub_100159580(v80, v71, v73);
  sub_10000839C(&v187);
  sub_100040738(*(v179 + v178) + 144, &v187);
  v82 = type metadata accessor for UserNotificationManager();
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  v85 = swift_allocObject();

  v171 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v86 = [objc_allocWithZone(AAFollowUpController) init];
  v87 = (v85 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
  v170 = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v87[3] = v170;
  v87[4] = &off_1003B1488;
  *v87 = v86;
  v88 = type metadata accessor for NotificationController();
  v89 = [objc_allocWithZone(v88) init];
  v90 = (v85 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController);
  v90[3] = v88;
  v90[4] = &off_1003B3148;
  *v90 = v89;
  sub_100040738(v190, v184);
  v91 = v188;
  v92 = sub_10003E968(&v187, v188);
  v93 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v92);
  v95 = (&v169 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v96 + 16))(v95);
  v97 = v185;
  v98 = sub_10003E968(v184, v185);
  v99 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v98);
  v101 = (&v169 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v102 + 16))(v101);
  v103 = *v95;
  v104 = *v101;
  v172 = v81;
  v105 = sub_100159764(v103, v81, v85, v104);
  sub_10000839C(v184);
  sub_10000839C(&v187);
  v107 = v40[2];
  v106 = v40[3];
  if (v107 >= v106 >> 1)
  {
    v40 = sub_100305F0C((v106 > 1), v107 + 1, 1, v40);
  }

  v40[2] = v107 + 1;
  v108 = &v40[2 * v107];
  v108[4] = v105;
  v108[5] = &off_1003B2FD0;
  v109 = v179;
  sub_100040738(*(v179 + v178) + 144, &v187);
  v110 = *(v82 + 48);
  v111 = *(v82 + 52);
  v112 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  v113 = [objc_allocWithZone(AAFollowUpController) init];
  v114 = (v112 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
  v114[3] = v170;
  v114[4] = &off_1003B1488;
  *v114 = v113;
  v115 = [objc_allocWithZone(v88) init];
  v116 = (v112 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController);
  v116[3] = v88;
  v116[4] = &off_1003B3148;
  *v116 = v115;
  v117 = v188;
  v118 = sub_10003E968(&v187, v188);
  *&v178 = &v169;
  v119 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v118);
  v121 = (&v169 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v122 + 16))(v121);
  v123 = *v121;
  v124 = type metadata accessor for DaemonAccountStore();
  v185 = v124;
  v186 = &off_1003AB0B8;
  v184[0] = v123;
  v182 = v82;
  v183 = &off_1003B3418;
  v181[0] = v112;
  type metadata accessor for TermsPushServiceDelegate();
  v125 = swift_allocObject();
  v126 = sub_10003E968(v184, v124);
  v127 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v126);
  v129 = (&v169 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v130 + 16))(v129);
  v131 = v182;
  v132 = sub_10003E968(v181, v182);
  v133 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v132);
  v135 = (&v169 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v136 + 16))(v135);
  v137 = *v129;
  v138 = *v135;
  v125[5] = v124;
  v125[6] = &off_1003AB0B8;
  v125[2] = v137;
  v125[10] = v82;
  v125[11] = &off_1003B3418;
  v125[7] = v138;
  sub_10000839C(v181);
  sub_10000839C(v184);
  sub_10000839C(&v187);
  v140 = v40[2];
  v139 = v40[3];
  if (v140 >= v139 >> 1)
  {
    v40 = sub_100305F0C((v139 > 1), v140 + 1, 1, v40);
  }

  v40[2] = v140 + 1;
  v141 = &v40[2 * v140];
  v141[4] = v125;
  v141[5] = &off_1003B2CE8;
  sub_100005814(&qword_1003D9B00, &unk_10033F1A0);
  v142 = v174;
  Dependency.init(dependencyId:config:)();
  v143 = v176;
  Dependency.wrappedValue.getter();
  v144 = *sub_1000080F8(&v187, v188);
  sub_1002C5CB4(v40, &off_1003A3748);
  (*(v175 + 8))(v142, v143);
  sub_10000839C(&v187);
  v145 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener;
  v146 = [*(v109 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener) serviceName];
  if (v146)
  {
    v147 = v146;
    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v150 = v149;
  }

  else
  {
    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v150 = v151;
  }

  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *&v187 = v155;
    *v154 = 136315138;
    v156 = sub_10021145C(v148, v150, &v187);

    *(v154 + 4) = v156;
    _os_log_impl(&_mh_execute_header, v152, v153, "Resuming XPC listener for Mach service %s...", v154, 0xCu);
    sub_10000839C(v155);
  }

  else
  {
  }

  [*(v109 + v145) setDelegate:v109];
  [*(v109 + v145) resume];
  v157 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener;
  v158 = [*(v109 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener) serviceName];
  if (v158)
  {
    v159 = v158;
    v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v162 = v161;
  }

  else
  {
    v160 = IdentityMachService.getter();
    v162 = v163;
  }

  v164 = Logger.logObject.getter();
  v165 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    *&v187 = v167;
    *v166 = 136315138;
    v168 = sub_10021145C(v160, v162, &v187);

    *(v166 + 4) = v168;
    _os_log_impl(&_mh_execute_header, v164, v165, "Resuming XPC listener for Mach service %s...", v166, 0xCu);
    sub_10000839C(v167);
  }

  else
  {
  }

  [*(v109 + v157) setDelegate:v109];
  [*(v109 + v157) resume];
  [*(v109 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_daemonManager) startup];
  sub_100157A34();

  sub_10000839C(v190);
}

void sub_100157A34()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v34 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_appleIDAvailabilityScheduler);

  sub_10025FF0C();

  v8 = *(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_postInstallActivityScheduler);
  v9 = v3[2];
  v36 = v3 + 2;
  v37 = v9;
  v9(v6, v8 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler__xpcActivityScheduler, v2);

  Dependency.wrappedValue.getter();
  v10 = v3[1];
  v34 = v3 + 1;
  v35 = v10;
  v10(v6, v2);
  v11 = sub_1000080F8(&v39, v42);
  sub_1002D8BCC();
  v12 = *v11;
  v13 = static String._fromUTF8Repairing(_:)();
  v15 = v14;
  v44 = 0;
  v45 = xmmword_100343D00;
  v46 = xmmword_100343D10;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = sub_100313A50(&v44, v13, v15, sub_10015B61C, v16);

  v18 = *(v12 + 16);
  *(v12 + 16) = v17;

  v19 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v20 = sub_10030F0FC("com.apple.appleaccountd.postinstall", 35, 2);
  sub_10031352C(v20, v19);

  sub_10000839C(&v39);
  sub_100040738(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_healthScheduler, &v39);
  v21 = v42;
  v22 = v43;
  sub_1000080F8(&v39, v42);
  (*(v22 + 8))(v21, v22);
  sub_10000839C(&v39);
  v37(v6, *(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_maintenanceActivityScheduler) + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler__xpcActivityScheduler, v2);

  Dependency.wrappedValue.getter();
  v35(v6, v2);
  v23 = sub_1000080F8(v38, v38[3]);
  sub_1002B2D88();
  v24 = *v23;
  v25 = static String._fromUTF8Repairing(_:)();
  v27 = v26;
  v28 = sub_1002B31D4();
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v28 < 9.22337204e18)
  {
    LOWORD(v39) = 257;
    v40 = v28 / 2;
    v41 = v40;
    v42 = v28;
    v43 = 32;
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = sub_100313A50(&v39, v25, v27, sub_10015B624, v29);

    v31 = *(v24 + 16);
    *(v24 + 16) = v30;

    v32 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    v33 = sub_10030F0FC("com.apple.appleaccountd.maintenance", 35, 2);
    sub_10031352C(v33, v32);

    sub_10000839C(v38);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100157F0C()
{
  if (!qword_1003D9A38)
  {
    sub_100008CBC(&qword_1003D9A40, &unk_10033F180);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003D9A38);
    }
  }
}

uint64_t sub_100157F70(void *a1, void *a2)
{
  v3 = v2;
  sub_100016034(0, &qword_1003DEC00, NSObject_ptr);
  v6 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener;
  v7 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener);
  v8 = static NSObject.== infix(_:_:)();

  if (v8 & 1) != 0 && [objc_opt_self() isIdentityKitEnabled] && (v9 = objc_msgSend(objc_opt_self(), "standardUserDefaults"), v10 = String._bridgeToObjectiveC()(), v11 = objc_msgSend(v9, "BOOLForKey:", v10), v9, v10, (v11))
  {
    v12 = 1;
  }

  else
  {
    if ((sub_10015B430(a2) & 1) == 0)
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100008D04(v44, qword_1003FAA40);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_18;
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Client does not have any valid entitlemnts.", v47, 2u);
      goto LABEL_17;
    }

    v12 = 0;
  }

  v13 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener);
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDaemonContainer);
    v16 = type metadata accessor for CustodianDaemonContainer();
    *(&v136 + 1) = v16;
    v137 = &off_1003A54A0;
    *&aBlock = v15;
    v17 = type metadata accessor for CustodianDaemonService();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = sub_10003E968(&aBlock, v16);
    v22 = *(*(v16 - 8) + 64);
    __chkstk_darwin(v21);
    v24 = (&aBlock - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = *v24;

    v27 = a2;
    v28 = sub_100159B20(v26, v27, v20);
    sub_10000839C(&aBlock);
    [v27 setExportedObject:{v28, aBlock}];
    v29 = [objc_opt_self() XPCInterface];
    [v27 setExportedInterface:v29];

    [v27 resume];
    v30 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_trustedContactInitiator), *(v3 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_trustedContactInitiator + 24));
    v31 = *v30;
    v32 = *(*v30 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_serialQueue);
    v33 = swift_allocObject();
    v33[2] = v31;
    v33[3] = sub_100159244;
    v33[4] = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10015B5B0;
    *(v34 + 24) = v33;
    v137 = sub_100071DCC;
    v138 = v34;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v136 = sub_10030F718;
    *(&v136 + 1) = &unk_1003AB018;
    v35 = _Block_copy(&aBlock);
    v36 = v32;

    dispatch_sync(v36, v35);

    _Block_release(v35);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }

    else if (qword_1003D7F20 == -1)
    {
LABEL_10:
      v37 = type metadata accessor for Logger();
      sub_100008D04(v37, qword_1003FAA40);
      v38 = v27;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        *(v41 + 4) = v38;
        *v42 = v38;
        v43 = v38;
        _os_log_impl(&_mh_execute_header, v39, v40, "New custodian connection accepted: %@", v41, 0xCu);
        sub_100008D3C(v42, &unk_1003D9140, &qword_10033E640);
      }

      goto LABEL_42;
    }

    swift_once();
    goto LABEL_10;
  }

  v49 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener);
  v50 = static NSObject.== infix(_:_:)();

  if ((v50 & 1) == 0)
  {
    v65 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener);
    v66 = static NSObject.== infix(_:_:)();

    if (v66)
    {
      v67 = type metadata accessor for PersonalInformationController();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      v70 = swift_allocObject();
      sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
      Dependency.init(dependencyId:config:)();
      sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
      Dependency.init(dependencyId:config:)();
      sub_100005814(&unk_1003DA950, &unk_1003436B0);
      Dependency.init(dependencyId:config:)();
      v71 = [objc_allocWithZone(AKAgeRangeSettingsProvider) init];
      *(&v136 + 1) = v67;
      v137 = &off_1003B5900;
      *&aBlock = v70;
      v72 = type metadata accessor for AgeMigrationDaemonService();
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      v75 = swift_allocObject();
      v76 = sub_10003E968(&aBlock, v67);
      v77 = *(*(v67 - 8) + 64);
      __chkstk_darwin(v76);
      v79 = (&aBlock - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v80 + 16))(v79);
      v81 = *v79;
      v82 = (v75 + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_personalInformationService);
      v82[3] = v67;
      v82[4] = &off_1003B5900;
      *v82 = v81;
      v83 = a2;
      sub_100005814(&qword_1003DF6C0, &unk_10033E6D0);
      Dependency.init(dependencyId:config:)();
      Dependency.init(dependencyId:config:)();
      Dependency.init(dependencyId:config:)();
      *(v75 + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_ageRangeSettingsProvider) = v71;
      *(v75 + 16) = v83;
      sub_10000839C(&aBlock);
      [v83 setExportedObject:{v75, aBlock}];
      v84 = [objc_opt_self() XPCInterface];
      [v83 setExportedInterface:v84];

      [v83 resume];
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      sub_100008D04(v85, qword_1003FAA40);
      v86 = v83;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_41;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v86;
      *v62 = v86;
      v87 = v86;
      v64 = "New age migration connection accepted: %@";
      goto LABEL_40;
    }

    v88 = *(v2 + v6);
    v89 = static NSObject.== infix(_:_:)();

    if (v89)
    {
      if (v12)
      {
LABEL_31:
        type metadata accessor for IdentityDaemonService();
        [a2 setExportedObject:swift_allocObject()];
        type metadata accessor for IdentityDaemonInterface();
        v90 = static IdentityDaemonInterface.exportedInterface.getter();
        [a2 setExportedInterface:v90];

        [a2 resume];
        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v91 = type metadata accessor for Logger();
        sub_100008D04(v91, qword_1003FAA40);
        v92 = a2;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v59, v60))
        {
          goto LABEL_41;
        }

        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        *(v61 + 4) = v92;
        *v62 = v92;
        v93 = v92;
        v64 = "New identity connection accepted: %@";
        goto LABEL_40;
      }

      v116 = String._bridgeToObjectiveC()();
      v117 = [a2 valueForEntitlement:v116];

      if (v117)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v140 = 0u;
        v141 = 0u;
      }

      aBlock = v140;
      v136 = v141;
      if (*(&v141 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v139 == 1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_100008D3C(&aBlock, &qword_1003D87C8, qword_100344800);
      }

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v124 = type metadata accessor for Logger();
      sub_100008D04(v124, qword_1003FAA40);
      v125 = a2;
      v45 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *&aBlock = v128;
        *v127 = 136315138;
        v129 = v125;
        v130 = [v129 description];
        v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v133 = v132;

        v134 = sub_10021145C(v131, v133, &aBlock);

        *(v127 + 4) = v134;
        _os_log_impl(&_mh_execute_header, v45, v126, "Client is missing Identity entitlement: %s", v127, 0xCu);
        sub_10000839C(v128);

        goto LABEL_17;
      }
    }

    else
    {
      v94 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener);
      v95 = static NSObject.== infix(_:_:)();

      if (v95)
      {
        sub_100153CB0(&aBlock);
        v96 = *(&v136 + 1);
        v97 = sub_10003E968(&aBlock, *(&v136 + 1));
        v98 = *(*(v96 - 8) + 64);
        __chkstk_darwin(v97);
        v100 = (&aBlock - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v101 + 16))(v100);
        v102 = *v100;
        updated = type metadata accessor for AccountUpdatePerformer();
        *(&v141 + 1) = updated;
        v142 = &off_1003B5158;
        *&v140 = v102;
        type metadata accessor for AccountService();
        v104 = swift_allocObject();
        v105 = sub_10003E968(&v140, updated);
        v106 = *(*(updated - 8) + 64);
        __chkstk_darwin(v105);
        v108 = (&aBlock - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v109 + 16))(v108);
        v110 = *v108;
        v104[6] = updated;
        v104[7] = &off_1003B5158;
        v104[2] = a2;
        v104[3] = v110;
        v111 = a2;
        sub_10000839C(&v140);
        sub_10000839C(&aBlock);
        [v111 setExportedObject:v104];
        v112 = [objc_opt_self() XPCInterface];
        [v111 setExportedInterface:v112];

        [v111 resume];
        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        sub_100008D04(v113, qword_1003FAA40);
        v114 = v111;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v59, v60))
        {
          goto LABEL_41;
        }

        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        *(v61 + 4) = v114;
        *v62 = v114;
        v115 = v114;
        v64 = "New AppleAccount service connection accepted: %@";
        goto LABEL_40;
      }

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      sub_100008D04(v118, qword_1003FAA40);
      v119 = a1;
      v45 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *v121 = 138412290;
        *(v121 + 4) = v119;
        *v122 = v119;
        v123 = v119;
        _os_log_impl(&_mh_execute_header, v45, v120, "Fatal error! Unknown XPC listener: %@", v121, 0xCu);
        sub_100008D3C(v122, &unk_1003D9140, &qword_10033E640);

LABEL_17:
      }
    }

LABEL_18:

    return 0;
  }

  v51 = type metadata accessor for AccountUserNotificationDaemonService();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  *(v54 + 16) = a2;
  v55 = a2;
  [v55 setExportedObject:v54];
  v56 = [objc_opt_self() XPCInterface];
  [v55 setExportedInterface:v56];

  [v55 resume];
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100008D04(v57, qword_1003FAA40);
  v58 = v55;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v59, v60))
  {
    goto LABEL_41;
  }

  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  *v61 = 138412290;
  *(v61 + 4) = v58;
  *v62 = v58;
  v63 = v58;
  v64 = "New account user notification connection accepted: %@";
LABEL_40:
  _os_log_impl(&_mh_execute_header, v59, v60, v64, v61, 0xCu);
  sub_100008D3C(v62, &unk_1003D9140, &qword_10033E640);

LABEL_41:

LABEL_42:

  return 1;
}

void sub_100159244(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA40);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "TrustedContactInitiator.start failed: %@", v3, 0xCu);
      sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }
}

uint64_t sub_100159458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = type metadata accessor for CDPRequestController();
  v14 = &off_1003AA7A0;
  *&v12 = a1;
  v10 = type metadata accessor for AuthKitRequestController();
  v11 = &off_1003B3850;
  *&v9 = a3;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DF628, &unk_100349290);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF660, &qword_1003436C0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v12, a4 + 16);
  *(a4 + 56) = a2;
  sub_10003E950(&v9, a4 + 64);
  return a4;
}

uint64_t sub_100159580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CDPRequestController();
  v27[3] = v6;
  v27[4] = &off_1003AA7A0;
  v27[0] = a1;
  v25 = type metadata accessor for AuthKitRequestController();
  v26 = &off_1003B3850;
  v24[0] = a3;
  v7 = type metadata accessor for WalrusPCSAuthRequestProvider(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_10003E968(v27, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v25;
  v17 = sub_10003E968(v24, v25);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_100159458(*v14, a2, *v20, v10);
  sub_10000839C(v24);
  sub_10000839C(v27);
  return v22;
}

void *sub_100159764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DaemonAccountStore();
  v51[3] = v8;
  v51[4] = &off_1003AB0B8;
  v51[0] = a1;
  v9 = type metadata accessor for WalrusPCSAuthRequestProvider(0);
  v49 = v9;
  v50 = &off_1003B2E58;
  v48[0] = a2;
  v10 = type metadata accessor for UserNotificationManager();
  v46 = v10;
  v47 = &off_1003B3418;
  v45[0] = a3;
  v11 = type metadata accessor for CDPRequestController();
  v43 = v11;
  v44 = &off_1003AA7A0;
  v42[0] = a4;
  type metadata accessor for WalrusPushServiceDelegate();
  v12 = swift_allocObject();
  v13 = sub_10003E968(v51, v8);
  v14 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v42[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v49;
  v19 = sub_10003E968(v48, v49);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v42[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v46;
  v25 = sub_10003E968(v45, v46);
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v42[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v43;
  v31 = sub_10003E968(v42, v43);
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = (&v42[-1] - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v16;
  v37 = *v22;
  v38 = *v28;
  v39 = *v34;
  v12[5] = v8;
  v12[6] = &off_1003AB0B8;
  v12[2] = v36;
  v12[10] = v9;
  v12[11] = &off_1003B2E58;
  v12[7] = v37;
  v12[15] = v10;
  v12[16] = &off_1003B3418;
  v12[12] = v38;
  v12[20] = v11;
  v12[21] = &off_1003AA7A0;
  v12[17] = v39;
  sub_10000839C(v42);
  sub_10000839C(v45);
  sub_10000839C(v48);
  sub_10000839C(v51);
  return v12;
}

void *sub_100159B20(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = type metadata accessor for CustodianDaemonContainer();
  v38 = &off_1003A54A0;
  v36[0] = a1;
  sub_100005814(&qword_1003D9A10, &qword_100343D80);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A20, &unk_10033F170);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9880, &unk_10033F010);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9A50, qword_100343CC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9A70, &unk_10033F060);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AF0, &qword_10033F198);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9B00, &unk_10033F1A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9B70, &unk_10033F1B0);
  Dependency.init(dependencyId:config:)();
  sub_100040738(v36, (a3 + 2));
  a3[7] = a2;
  v6 = sub_1000080F8(v36, v37);
  sub_100040738(*v6 + 184, (a3 + 13));
  v7 = sub_1000080F8(v36, v37);
  sub_100040738(*v7 + 104, (a3 + 8));
  v8 = sub_1000080F8(v36, v37);
  sub_100040738(*v8 + 64, (a3 + 18));
  v9 = sub_1000080F8(v36, v37);
  sub_100040738(*v9 + 24, (a3 + 23));
  v10 = sub_1000080F8(v36, v37);
  sub_100040738(*v10 + 144, (a3 + 28));
  v11 = sub_1000080F8(v36, v37);
  sub_100040738(*v11 + 272, (a3 + 33));
  v12 = sub_1000080F8(v36, v37);
  sub_100040738(*v12 + 384, (a3 + 38));
  v13 = sub_1000080F8(v36, v37);
  sub_100040738(*v13 + 424, (a3 + 43));
  v14 = sub_1000080F8(v36, v37);
  sub_100040738(*v14 + 464, (a3 + 48));
  a3[54] = *(*sub_1000080F8(v36, v37) + 16);
  sub_100040738((a3 + 18), v34);
  sub_100040738((a3 + 43), v33);
  v15 = *(*sub_1000080F8(v36, v37) + 16);
  v16 = v35;
  v17 = sub_10003E968(v34, v35);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = type metadata accessor for CustodianStorageController();
  v32[3] = v23;
  v32[4] = &off_1003A4C78;
  v32[0] = v22;
  type metadata accessor for CustodianSuggestionsManager();
  v24 = swift_allocObject();
  v25 = sub_10003E968(v32, v23);
  v26 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v24[10] = v23;
  v24[11] = &off_1003A4C78;
  v24[7] = v30;
  sub_10003E950(v33, (v24 + 2));
  v24[12] = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_10000839C(v32);
  sub_10000839C(v34);
  a3[53] = v24;
  sub_10000839C(v36);
  return a3;
}

void *sub_10015A158(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v14 = *a3;
  v15 = type metadata accessor for InheritanceStorageController();
  v46[3] = v15;
  v46[4] = &off_1003B0008;
  v46[0] = a1;
  v16 = a4(0);
  v44 = v16;
  v45 = a5;
  v42 = a6;
  v43[0] = a2;
  v41 = v14;
  v40[0] = a3;
  a7(0);
  v17 = swift_allocObject();
  v18 = sub_10003E968(v46, v15);
  v19 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v40[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v44;
  v24 = sub_10003E968(v43, v44);
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v40[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v41;
  v30 = sub_10003E968(v40, v41);
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = (&v40[-1] - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v36 = *v27;
  v37 = *v33;
  v17[5] = v15;
  v17[6] = &off_1003B0008;
  v17[7] = v36;
  v17[2] = v35;
  v17[10] = v16;
  v17[11] = a5;
  v17[15] = v14;
  v17[16] = a6;
  v17[12] = v37;
  sub_10000839C(v40);
  sub_10000839C(v43);
  sub_10000839C(v46);
  return v17;
}

uint64_t sub_10015A444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for InheritanceStorageController();
  v50[3] = v9;
  v50[4] = &off_1003B0008;
  v50[0] = a1;
  v10 = type metadata accessor for InheritanceSetupMessenger();
  v48 = v10;
  v49 = &off_1003AE2A0;
  v47[0] = a2;
  v45 = type metadata accessor for InheritanceFamilyManager();
  v46 = &off_1003B3860;
  *&v44 = a3;
  v42 = v8;
  v43 = &off_1003B2C48;
  v41[0] = a4;
  v11 = type metadata accessor for InheritanceInvitationHandler();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_10003E968(v50, v9);
  v16 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = v48;
  v21 = sub_10003E968(v47, v48);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = v42;
  v27 = sub_10003E968(v41, v42);
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v18;
  v33 = *v24;
  v34 = *v30;
  v35 = (v14 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController);
  v35[3] = v9;
  v35[4] = &off_1003B0008;
  *v35 = v32;
  v36 = (v14 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger);
  v36[3] = v10;
  v36[4] = &off_1003AE2A0;
  *v36 = v33;
  v40 = &off_1003B2C48;
  v39 = v8;
  *&v38 = v34;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v44, v14 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_familyManager);
  sub_10003E950(&v38, v14 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messageUtil);
  sub_10000839C(v41);
  sub_10000839C(v47);
  sub_10000839C(v50);
  return v14;
}

void *sub_10015A7C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for InheritanceCloudSharingController();
  v38[3] = v7;
  v38[4] = &off_1003AEC98;
  v38[0] = a1;
  v8 = type metadata accessor for InheritanceStorageController();
  v36 = v8;
  v37 = &off_1003B0008;
  v35[0] = a2;
  v33 = v6;
  v34 = &off_1003B3418;
  v32[0] = a3;
  type metadata accessor for InheritanceAccessKeyMessageHandler();
  v9 = swift_allocObject();
  v10 = sub_10003E968(v38, v7);
  v11 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v32[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v36;
  v16 = sub_10003E968(v35, v36);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v32[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = v33;
  v22 = sub_10003E968(v32, v33);
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v32[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v13;
  v28 = *v19;
  v29 = *v25;
  v9[5] = v7;
  v9[6] = &off_1003AEC98;
  v9[7] = v28;
  v9[2] = v27;
  v9[10] = v8;
  v9[11] = &off_1003B0008;
  v9[15] = v6;
  v9[16] = &off_1003B3418;
  v9[12] = v29;
  sub_10000839C(v32);
  sub_10000839C(v35);
  sub_10000839C(v38);
  return v9;
}

id sub_10015AAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v50 = *a5;
  v10 = type metadata accessor for DaemonAccountStore();
  v72[3] = v10;
  v72[4] = &off_1003AB0B8;
  v72[0] = a1;
  v52 = type metadata accessor for InheritanceInvitationHandler();
  v70 = v52;
  v71 = &off_1003AD888;
  v69[0] = a2;
  v51 = type metadata accessor for InheritanceInvitationResponseHandler();
  v67 = v51;
  v68 = &off_1003ADA28;
  v66[0] = a3;
  v11 = type metadata accessor for InheritanceAccessKeyMessageHandler();
  v64 = v11;
  v65 = &off_1003AD7D8;
  v63[0] = a4;
  v61 = v50;
  v62 = &off_1003AD7C8;
  v60[0] = a5;
  v53 = type metadata accessor for InheritanceMessageProcessor();
  v12 = objc_allocWithZone(v53);
  v13 = sub_10003E968(v72, v10);
  v14 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v70;
  v19 = sub_10003E968(v69, v70);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v67;
  v25 = sub_10003E968(v66, v67);
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v64;
  v31 = sub_10003E968(v63, v64);
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = (&v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = v61;
  v37 = sub_10003E968(v60, v61);
  v38 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v37);
  v40 = (&v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v16;
  v43 = *v22;
  v44 = *v28;
  v45 = *v34;
  v46 = *v40;
  v59[3] = v10;
  v59[4] = &off_1003AB0B8;
  v59[0] = v42;
  v58[4] = &off_1003AD888;
  v58[3] = v52;
  v58[0] = v43;
  v57[3] = v51;
  v57[4] = &off_1003ADA28;
  v57[0] = v44;
  v56[3] = v11;
  v56[4] = &off_1003AD7D8;
  v56[0] = v45;
  v55[3] = v50;
  v55[4] = &off_1003AD7C8;
  v55[0] = v46;
  sub_100040738(v59, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accountStore);
  sub_100040738(v58, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationHandler);
  sub_100040738(v57, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationResponseHandler);
  sub_100040738(v56, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler);
  sub_100040738(v55, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_beneficiaryRemovedMessageHandler);
  v54.receiver = v12;
  v54.super_class = v53;
  v47 = objc_msgSendSuper2(&v54, "init");
  sub_10000839C(v55);
  sub_10000839C(v56);
  sub_10000839C(v57);
  sub_10000839C(v58);
  sub_10000839C(v59);
  sub_10000839C(v60);
  sub_10000839C(v63);
  sub_10000839C(v66);
  sub_10000839C(v69);
  sub_10000839C(v72);
  return v47;
}

uint64_t sub_10015B004(uint64_t a1, uint64_t a2)
{
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceRequestManager();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E0400, &qword_100344870);
  Dependency.init(dependencyId:config:)();
  v4 = (a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
  type metadata accessor for InheritanceRecordsCleaner();
  sub_100005814(&qword_1003E0408, &unk_100343DD0);
  *v4 = String.init<A>(describing:)();
  v4[1] = v5;
  v6 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_queue;
  v7 = [objc_allocWithZone(NSOperationQueue) init];
  *(a2 + v6) = v7;
  *(a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_analyticsReporter) = a1;
  [v7 setMaxConcurrentOperationCount:1];
  return a2;
}

void sub_10015B224(uint64_t a1, unint64_t a2)
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(a1, a2, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "Handling launch event for %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  v12[0] = a1;
  v12[1] = a2;
  sub_1000709A0();
  if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found notification com.apple.keystore.lockstatus", v11, 2u);
    }
  }
}

uint64_t sub_10015B430(void *a1)
{
  v2 = &off_1003A3918;
  v3 = 10;
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    v6 = String._bridgeToObjectiveC()();

    v7 = [a1 valueForEntitlement:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v9)
      {
        return 1;
      }
    }

    else
    {
      sub_100008D3C(v12, &qword_1003D87C8, qword_100344800);
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_10015B570()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10015B5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015B5E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_10015B62C()
{
  result = qword_1003E03F0;
  if (!qword_1003E03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E03F0);
  }

  return result;
}

uint64_t sub_10015B688()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10015B718()
{
  v1 = *(v0 + 24);
  result = [v1 primaryAuthKitAccount];
  if (result)
  {
    v3 = result;
    v4 = [v1 DSIDForAccount:result];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 stringValue];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10015B7D0()
{
  v1 = *(v0 + 16);
  result = [v1 aa_primaryAppleAccount];
  if (result)
  {
    v3 = result;
    v4 = [result aa_altDSID];
    v5 = [v1 aa_authKitAccountForAltDSID:v4];

    if (v5)
    {
      v6 = [*(v0 + 24) custodianInfosForAccount:v5];
      if (v6)
      {
        v7 = v6;
        sub_100005814(&unk_1003DABD0, &qword_10033E720);
        v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        return v8;
      }
    }

    return 0;
  }

  return result;
}

id sub_10015B8BC()
{
  v1 = *(v0 + 16);
  result = [v1 aa_primaryAppleAccount];
  if (result)
  {
    v3 = result;
    v4 = [result aa_altDSID];
    v5 = [v1 aa_authKitAccountForAltDSID:v4];

    if (v5)
    {
      v6 = [objc_opt_self() sharedInstance];
      v7 = [v6 securityLevelForAccount:v5];

      result = v7;
      if ((v7 & 0x8000000000000000) == 0)
      {
        return result;
      }

      __break(1u);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10015B998(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10015B9B8, 0, 0);
}

uint64_t sub_10015B9B8()
{
  v1 = v0[18];
  v2 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10015BAE4;
  v3 = swift_continuation_init();
  v0[17] = sub_100005814(&unk_1003DEE00, qword_100343450);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10024442C;
  v0[13] = &unk_1003AB220;
  v0[14] = v3;
  [v2 saveVerifiedAccount:v1 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10015BAE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10015BC10;
  }

  else
  {
    v3 = sub_10015BBF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015BC10()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2(0);
}

id sub_10015BC80(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6 = 0;
  if ([v3 saveVerifiedAccount:a1 error:&v6])
  {
    return v6;
  }

  v5 = v6;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_10015BD58(unsigned __int8 a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = [v9 aa_primaryAppleAccount];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    v13 = String._bridgeToObjectiveC()();
    [v11 setAccountProperty:v12 forKey:v13];

    v14 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v15 = String._bridgeToObjectiveC()();
    [v11 setAccountProperty:v14 forKey:v15];

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    aBlock[4] = sub_10005B220;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013BB5C;
    aBlock[3] = &unk_1003AB1F8;
    v17 = _Block_copy(aBlock);
    v18 = v11;

    [v9 saveAccount:v18 withCompletionHandler:v17];
    _Block_release(v17);
  }

  else
  {
    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v18 = aBlock[0];
    a3(aBlock[0]);
  }
}

uint64_t sub_10015BF9C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10015C06C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_10015C08C, 0, 0);
}

uint64_t sub_10015C08C()
{
  v1 = v0[19];
  v2 = *(v0[20] + 16);
  sub_100308EB0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10015C204;
  v4 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003D89F0, &unk_10033E700);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015BF9C;
  v0[13] = &unk_1003AB1A8;
  v0[14] = v4;
  [v2 discoverPropertiesForAccount:v1 options:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10015C204()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_10013D56C;
  }

  else
  {
    v3 = sub_10015C314;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015C314()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10015C380(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_10015C3A4, 0, 0);
}

uint64_t sub_10015C3A4()
{
  v1 = *(v0[21].super.isa + 2);
  if (v0[20].super.isa)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v0[22].super.isa = v2.super.isa;
  isa = v0[19].super.isa;
  v0[2].super.isa = v0;
  v0[7].super.isa = &v0[18];
  v0[3].super.isa = sub_10015C508;
  v4 = swift_continuation_init();
  v0[17].super.isa = sub_100005814(&qword_1003E0590, qword_100343E60);
  v0[10].super.isa = _NSConcreteStackBlock;
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = sub_10013D5DC;
  v0[13].super.isa = &unk_1003AB180;
  v0[14].super.isa = v4;
  [v1 renewCredentialsForAccount:isa options:v2.super.isa completion:&v0[10]];

  return _swift_continuation_await(&v0[2]);
}

uint64_t sub_10015C508()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10015C684;
  }

  else
  {
    v3 = sub_10015C618;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015C618()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10015C684()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_10015C6F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10015C758()
{
  v1 = [*(*v0 + 16) aa_appleAccounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10015C7C0();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10015C7C0()
{
  result = qword_1003DE9A8;
  if (!qword_1003DE9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DE9A8);
  }

  return result;
}

uint64_t sub_10015C824()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10015C85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015C884(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000082A8;

  return v8();
}

uint64_t sub_10015C990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_1000BCD5C(0, 0, v7, &unk_100343EE8, v9);
}

uint64_t sub_10015CAA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10015CAE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082A8;

  return sub_10015C884(a1, v4, v5, v7);
}

uint64_t sub_10015CC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10000EF88;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_10015CD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[6] = a3;
  v6[7] = v3;
  v6[5] = a2;
  v8 = *v3;
  v6[8] = *v3;
  v6[9] = *(v8 + 88);
  sub_100008CBC(&qword_1003E06F8, &qword_1003440B8);
  v6[10] = swift_getTupleTypeMetadata2();
  v9 = *(*(type metadata accessor for Optional() - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(v8 + 80);
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v6[14] = *(v11 + 64);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v12 = *(*(sub_100005814(&qword_1003DABF0, &qword_10033F8A0) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[18] = v13;
  *v13 = v6;
  v13[1] = sub_10015CF4C;

  return sub_10015F080(a1, a3);
}

uint64_t sub_10015CF4C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10015D05C, v2, 0);
}

uint64_t sub_10015D05C()
{
  v55 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v48 = v2;
  v50 = v1;
  v3 = v0[13];
  v52 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v53 = *(v3 + 16);
  v53(v2, v7, v4);
  v10 = *(v6 + 96);
  type metadata accessor for ExpiringValueCache();
  WitnessTable = swift_getWitnessTable();
  v12 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v8;
  *(v13 + 3) = WitnessTable;
  *(v13 + 4) = v4;
  *(v13 + 5) = v5;
  *(v13 + 6) = v10;
  *(v13 + 7) = v8;
  (*(v3 + 32))(&v13[v12], v48, v4);
  swift_retain_n();
  v51 = sub_10001359C(0, 0, v50, &unk_1003440C8, v13);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = v0[15];
  v15 = v0[12];
  v17 = v0[6];
  v16 = v0[7];
  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAA40);
  v53(v14, v17, v15);
  swift_retain_n();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[12];
    v24 = v0[13];
    v47 = v0[7];
    v25 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v25 = 136315394;
    v53(v21, v22, v23);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    (*(v24 + 8))(v22, v23);
    v29 = sub_10021145C(v26, v28, &v54);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;

    v30 = Duration.description.getter();
    v32 = v31;

    v33 = sub_10021145C(v30, v32, &v54);

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v19, v20, "caching value for key: %s, expiring in %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v34 = v0[15];
    v35 = v0[12];
    v36 = v0[13];
    v37 = v0[7];

    (*(v36 + 8))(v34, v35);
  }

  v38 = v0[17];
  v49 = v0[15];
  v39 = v0[11];
  v41 = v0[9];
  v40 = v0[10];
  v42 = v0[7];
  v43 = v0[5];
  v53(v0[16], v0[6], v0[12]);
  v44 = *(v40 + 48);
  (*(*(v41 - 8) + 16))(v39, v43, v41);
  *(v39 + v44) = v51;
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  swift_beginAccess();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();

  v45 = v0[1];

  return v45();
}

uint64_t sub_10015D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = *a4;
  v5[7] = *a4;
  v8 = type metadata accessor for CancellationError();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = *(v7 + 88);
  v11 = type metadata accessor for Optional();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v13 = *(v12 + 64) + 15;
  v5[15] = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock();
  v5[16] = v14;
  v15 = *(v14 - 8);
  v5[17] = v15;
  v16 = *(v15 + 64) + 15;
  v5[18] = swift_task_alloc();
  v17 = *(v7 + 80);
  v5[19] = v17;
  v18 = *(v17 - 8);
  v5[20] = v18;
  v19 = *(v18 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10015D7F4, a4, 0);
}

uint64_t sub_10015D7F4()
{
  v35 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[5];
  v4 = v0[6];
  v6 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v6, qword_1003FAA40);
  v7 = *(v3 + 16);
  v0[28] = v7;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[26];
  if (v10)
  {
    v33 = v9;
    v13 = v0[19];
    v12 = v0[20];
    v31 = v0[5];
    v32 = v0[25];
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = Duration.description.getter();
    v17 = v16;

    v18 = sub_10021145C(v15, v17, &v34);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v7(v32, v11, v13);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    v22 = *(v12 + 8);
    v22(v11, v13);
    v23 = sub_10021145C(v19, v21, &v34);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v33, "sleeping for %s to expire value for key: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[19];
    v25 = v0[20];
    v26 = v0[5];

    v22 = *(v25 + 8);
    v22(v11, v24);
  }

  v0[30] = v22;
  v27 = v0[18];
  static Clock<>.continuous.getter();
  v28 = swift_task_alloc();
  v0[31] = v28;
  *v28 = v0;
  v28[1] = sub_10015DB28;
  v29 = v0[18];

  return sub_10015FEF4(0x86AC351052600000, 32, 0, 0, 1);
}

uint64_t sub_10015DB28()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = v2[18];
  v6 = v2[17];
  v7 = v2[16];
  v8 = v2[5];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_10015E5E4;
  }

  else
  {
    v9 = sub_10015DCA4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10015DCA4()
{
  v132 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  (*(v0 + 224))(*(v0 + 192), *(v0 + 48), *(v0 + 152));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 240);
  if (v5)
  {
    v7 = *(v0 + 224);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 152);
    v121 = *(v0 + 232);
    v126 = *(v0 + 160);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v131[0] = v12;
    *v11 = 136315138;
    v7(v8, v9, v10);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    v6(v9, v10);
    v16 = sub_10021145C(v13, v15, v131);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "checking for cancellation before removing value for key: %s", v11, 0xCu);
    sub_10000839C(v12);
  }

  else
  {
    v17 = *(v0 + 192);
    v18 = *(v0 + 152);
    v19 = *(v0 + 160);

    v6(v17, v18);
  }

  v20 = *(v0 + 256);
  static Task<>.checkCancellation()();
  if (v20)
  {
    *(v0 + 272) = v20;
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);
    *(v0 + 16) = v20;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v23 = swift_dynamicCast();
    v24 = *(v0 + 224);
    v25 = *(v0 + 232);
    v26 = *(v0 + 216);
    v27 = *(v0 + 152);
    if (v23)
    {
      v29 = *(v0 + 80);
      v28 = *(v0 + 88);
      v31 = *(v0 + 64);
      v30 = *(v0 + 72);
      v122 = *(v0 + 48);
      v127 = *(v0 + 176);

      (*(v30 + 32))(v29, v28, v31);
      v24(v127, v122, v27);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 240);
      if (v34)
      {
        v36 = *(v0 + 224);
        v37 = *(v0 + 200);
        v38 = *(v0 + 176);
        v39 = *(v0 + 152);
        v123 = *(v0 + 232);
        v128 = *(v0 + 160);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v131[0] = v41;
        *v40 = 136315138;
        v36(v37, v38, v39);
        v42 = String.init<A>(describing:)();
        v44 = v43;
        v35(v38, v39);
        v45 = sub_10021145C(v42, v44, v131);

        *(v40 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v32, v33, "Expiration cancelled, skipping value removal for key: %s", v40, 0xCu);
        sub_10000839C(v41);
      }

      else
      {
        v90 = *(v0 + 176);
        v91 = *(v0 + 152);
        v92 = *(v0 + 160);

        v35(v90, v91);
      }

      v94 = *(v0 + 72);
      v93 = *(v0 + 80);
      v95 = *(v0 + 64);
      sub_100160560(&qword_1003E0700, &type metadata accessor for CancellationError);
      swift_allocError();
      (*(v94 + 16))(v96, v93, v95);
      swift_willThrow();
      (*(v94 + 8))(v93, v95);
      v97 = *(v0 + 16);

      v99 = *(v0 + 200);
      v98 = *(v0 + 208);
      v101 = *(v0 + 184);
      v100 = *(v0 + 192);
      v103 = *(v0 + 168);
      v102 = *(v0 + 176);
      v104 = *(v0 + 144);
      v105 = *(v0 + 120);
      v106 = *(v0 + 80);
      v107 = *(v0 + 88);

      v108 = *(v0 + 8);

      return v108();
    }

    v62 = *(v0 + 168);
    v63 = *(v0 + 48);
    v64 = *(v0 + 16);

    v24(v62, v63, v27);
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 240);
    if (v67)
    {
      v69 = *(v0 + 224);
      v70 = *(v0 + 200);
      v71 = *(v0 + 168);
      v119 = *(v0 + 232);
      v120 = *(v0 + 160);
      v72 = *(v0 + 152);
      v73 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v131[0] = v130;
      *v73 = 136315394;
      v69(v70, v71, v72);
      v74 = String.init<A>(describing:)();
      v76 = v75;
      v68(v71, v72);
      v77 = sub_10021145C(v74, v76, v131);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2112;
      swift_errorRetain();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 14) = v78;
      *v125 = v78;
      _os_log_impl(&_mh_execute_header, v65, v66, "Expiration task failed for key (%s with error: %@)", v73, 0x16u);
      sub_100083380(v125);

      sub_10000839C(v130);
    }

    else
    {
      v111 = *(v0 + 160);
      v110 = *(v0 + 168);
      v112 = *(v0 + 152);

      v68(v110, v112);
    }

    v113 = *(v0 + 152);
    v114 = *(v0 + 96);
    v115 = *(v0 + 56);
    *(v0 + 24) = *(v0 + 40);
    v85 = swift_task_alloc();
    *(v0 + 280) = v85;
    v116 = *(v115 + 96);
    v87 = type metadata accessor for ExpiringValueCache();
    WitnessTable = swift_getWitnessTable();
    *v85 = v0;
    v89 = sub_10015EE24;
  }

  else
  {
    v46 = *(v0 + 232);
    v47 = *(v0 + 216);
    (*(v0 + 224))(*(v0 + 184), *(v0 + 48), *(v0 + 152));
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 240);
    if (v50)
    {
      v52 = *(v0 + 224);
      v53 = *(v0 + 200);
      v54 = *(v0 + 184);
      v55 = *(v0 + 152);
      v124 = *(v0 + 232);
      v129 = *(v0 + 160);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v131[0] = v57;
      *v56 = 136315138;
      v52(v53, v54, v55);
      v58 = String.init<A>(describing:)();
      v60 = v59;
      v51(v54, v55);
      v61 = sub_10021145C(v58, v60, v131);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v48, v49, "remove value for key: %s", v56, 0xCu);
      sub_10000839C(v57);
    }

    else
    {
      v79 = *(v0 + 184);
      v80 = *(v0 + 152);
      v81 = *(v0 + 160);

      v51(v79, v80);
    }

    v82 = *(v0 + 152);
    v83 = *(v0 + 96);
    v84 = *(v0 + 56);
    *(v0 + 32) = *(v0 + 40);
    v85 = swift_task_alloc();
    *(v0 + 264) = v85;
    v86 = *(v84 + 96);
    v87 = type metadata accessor for ExpiringValueCache();
    WitnessTable = swift_getWitnessTable();
    *v85 = v0;
    v89 = sub_10015EBD8;
  }

  v85[1] = v89;
  v117 = *(v0 + 120);
  v118 = *(v0 + 48);

  return sub_10015CC00(v117, v118, v87, WitnessTable);
}

uint64_t sub_10015E5E4()
{
  v85 = v0;
  v1 = v0[32];
  v0[2] = v1;
  v0[34] = v1;
  v2 = v0[11];
  v3 = v0[8];
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v4 = swift_dynamicCast();
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[19];
  if (v4)
  {
    v10 = v0[10];
    v9 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    v78 = v0[6];
    v81 = v0[22];

    (*(v11 + 32))(v10, v9, v12);
    v5(v81, v78, v8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[30];
    if (v15)
    {
      v17 = v0[28];
      v18 = v0[25];
      v19 = v0[22];
      v20 = v0[19];
      v79 = v0[29];
      v82 = v0[20];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v84[0] = v22;
      *v21 = 136315138;
      v17(v18, v19, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v16(v19, v20);
      v26 = sub_10021145C(v23, v25, v84);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "Expiration cancelled, skipping value removal for key: %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    else
    {
      v44 = v0[22];
      v45 = v0[19];
      v46 = v0[20];

      v16(v44, v45);
    }

    v48 = v0[9];
    v47 = v0[10];
    v49 = v0[8];
    sub_100160560(&qword_1003E0700, &type metadata accessor for CancellationError);
    swift_allocError();
    (*(v48 + 16))(v50, v47, v49);
    swift_willThrow();
    (*(v48 + 8))(v47, v49);
    v51 = v0[2];

    v53 = v0[25];
    v52 = v0[26];
    v55 = v0[23];
    v54 = v0[24];
    v57 = v0[21];
    v56 = v0[22];
    v58 = v0[18];
    v59 = v0[15];
    v60 = v0[10];
    v61 = v0[11];

    v62 = v0[1];

    return v62();
  }

  else
  {
    v27 = v0[21];
    v28 = v0[6];
    v29 = v0[2];

    v5(v27, v28, v8);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[30];
    if (v32)
    {
      v34 = v0[28];
      v35 = v0[25];
      v36 = v0[21];
      v76 = v0[29];
      v77 = v0[20];
      v37 = v0[19];
      v38 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84[0] = v83;
      *v38 = 136315394;
      v34(v35, v36, v37);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      v33(v36, v37);
      v42 = sub_10021145C(v39, v41, v84);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v43;
      *v80 = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Expiration task failed for key (%s with error: %@)", v38, 0x16u);
      sub_100083380(v80);

      sub_10000839C(v83);
    }

    else
    {
      v65 = v0[20];
      v64 = v0[21];
      v66 = v0[19];

      v33(v64, v66);
    }

    v67 = v0[19];
    v68 = v0[12];
    v69 = v0[7];
    v0[3] = v0[5];
    v70 = swift_task_alloc();
    v0[35] = v70;
    v71 = *(v69 + 96);
    v72 = type metadata accessor for ExpiringValueCache();
    WitnessTable = swift_getWitnessTable();
    *v70 = v0;
    v70[1] = sub_10015EE24;
    v74 = v0[15];
    v75 = v0[6];

    return sub_10015CC00(v74, v75, v72, WitnessTable);
  }
}

uint64_t sub_10015EBD8()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10015ED44, v5, 0);
}

uint64_t sub_10015ED44()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v8 = v0[15];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10015EE24()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10015EF90, v5, 0);
}

uint64_t sub_10015EF90()
{
  v1 = v0[34];
  swift_willThrow();
  v14 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[10];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10015F080(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v3[12] = *(v4 + 88);
  v5 = type metadata accessor for Optional();
  v3[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  sub_100008CBC(&qword_1003E06F8, &qword_1003440B8);
  v3[15] = swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for Optional();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v10 = *(v4 + 80);
  v3[24] = v10;
  v11 = *(v10 - 8);
  v3[25] = v11;
  v12 = *(v11 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10015F2B8, v2, 0);
}

uint64_t sub_10015F2B8()
{
  v115 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v108 = v6;
  if (v9)
  {
    v11 = v0[27];
    v13 = v0[24];
    v12 = v0[25];
    v14 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v114 = v111;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v107 = *(v12 + 8);
    v107(v10, v13);
    v18 = sub_10021145C(v15, v17, &v114);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetching cached value for key: %s", v14, 0xCu);
    sub_10000839C(v111);
  }

  else
  {
    v20 = v0[24];
    v19 = v0[25];

    v107 = *(v19 + 8);
    v107(v10, v20);
  }

  v22 = v0[23];
  v21 = v0[24];
  v23 = v0[22];
  v25 = v0[16];
  v24 = v0[17];
  v26 = v0[15];
  v28 = v0[10];
  v27 = v0[11];
  v29 = v0[9];
  swift_beginAccess();
  v30 = *(v28 + 128);
  v31 = *(v27 + 96);

  Dictionary.subscript.getter();

  v109 = *(v24 + 16);
  v109(v23, v22, v25);
  v32 = *(v26 - 8);
  v112 = *(v32 + 48);
  v33 = v112(v23, 1, v26);
  v34 = v0[22];
  if (v33 == 1)
  {
    (*(v0[17] + 8))(v0[22], v0[16]);
  }

  else
  {
    v35 = v0[12];
    v36 = *(v34 + *(v0[15] + 48));
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    Task.cancel()();

    (*(*(v35 - 8) + 8))(v34, v35);
  }

  v37 = v0[26];
  v38 = v0[24];
  v39 = v0[21];
  v99 = v37;
  v100 = v0[20];
  v41 = v0[15];
  v40 = v0[16];
  v101 = v40;
  v103 = v0[23];
  v42 = v0[9];
  v108(v0[27], v42, v38);
  (*(v32 + 56))(v39, 1, 1, v41);
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v108(v99, v42, v38);
  v109(v100, v103, v101);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v105 = v44;
    log = v43;
    v45 = v0[26];
    v46 = v0[27];
    v47 = v0[24];
    v48 = v0[25];
    v49 = v0[19];
    v50 = v0[16];
    v102 = v0[20];
    v104 = v0[15];
    v51 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v51 = 136315394;
    v108(v46, v45, v47);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    v107(v45, v47);
    v55 = sub_10021145C(v52, v54, &v114);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    v109(v49, v102, v50);
    v56 = v112(v49, 1, v104);
    v57 = v0[19];
    if (v56 == 1)
    {
      v58 = v0[12];
      (*(v0[17] + 8))(v0[19], v0[16]);
      v59 = *(v58 - 8);
      v60 = 1;
    }

    else
    {
      v68 = v0[14];
      v69 = v0[12];
      v70 = *(v57 + *(v0[15] + 48));

      v59 = *(v69 - 8);
      (*(v59 + 32))(v68, v57, v69);
      v60 = 0;
    }

    v71 = v0[20];
    v72 = v0[16];
    v73 = v0[17];
    v74 = v0[13];
    (*(v59 + 56))(v0[14], v60, 1, v0[12]);
    v75 = String.init<A>(describing:)();
    v77 = v76;
    v67 = *(v73 + 8);
    v67(v71, v72);
    v78 = sub_10021145C(v75, v77, &v114);

    *(v51 + 14) = v78;
    _os_log_impl(&_mh_execute_header, log, v105, "fetched cached value for key: %s, returning: %s", v51, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v62 = v0[25];
    v61 = v0[26];
    v63 = v0[24];
    v64 = v0[20];
    v65 = v0[16];
    v66 = v0[17];

    v67 = *(v66 + 8);
    v67(v64, v65);
    v107(v61, v63);
  }

  v79 = v0[18];
  v80 = v0[15];
  (*(v0[17] + 32))(v79, v0[23], v0[16]);
  v81 = v112(v79, 1, v80);
  v82 = v0[18];
  v83 = v0[12];
  if (v81 == 1)
  {
    v84 = v0[17] + 8;
    v67(v0[18], v0[16]);
    v85 = *(v83 - 8);
    v86 = 1;
  }

  else
  {
    v87 = v0[8];
    v88 = *(v82 + *(v0[15] + 48));

    v85 = *(v83 - 8);
    (*(v85 + 32))(v87, v82, v83);
    v86 = 0;
  }

  v89 = v0[27];
  v90 = v0[28];
  v91 = v0[26];
  v93 = v0[22];
  v92 = v0[23];
  v95 = v0[20];
  v94 = v0[21];
  v96 = v0[19];
  v110 = v0[18];
  v113 = v0[14];
  (*(v85 + 56))(v0[8], v86, 1, v0[12]);

  v97 = v0[1];

  return v97();
}

uint64_t sub_10015FBBC()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10015FBE4()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10015FC34(uint64_t a1)
{
  result = sub_10015FC5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10015FC5C()
{
  result = qword_1003E06B8;
  if (!qword_1003E06B8)
  {
    sub_100008CBC(&qword_1003DF788, qword_1003437B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E06B8);
  }

  return result;
}

uint64_t sub_10015FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000EF88;

  return sub_10015CD34(a1, a2, a3);
}

uint64_t sub_10015FDA4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000082A8;

  return sub_10015F080(a1, a2);
}

uint64_t sub_10015FE50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_10015FE8C()
{
  sub_100005814(&qword_1003DF788, qword_1003437B0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 128) = sub_1003093E4(_swiftEmptyArrayStorage);
  result = -1.59123824e-276;
  *(v0 + 112) = xmmword_100343EF0;
  qword_1003FA840 = v0;
  return result;
}

uint64_t sub_10015FEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10015FFF4, 0, 0);
}

uint64_t sub_10015FFF4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100160560(&qword_1003E0708, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100160560(&qword_1003E0710, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100160184;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100160184()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100160340, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100160340()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1001603AC()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 7);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100160470(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082A8;

  return sub_10015D57C(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_100160560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001605D8()
{
  sub_10000839C((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_100160660(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v48 - v9;
  v11 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  if (*(v3 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeDidSync))
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA40);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "TrustedContact CloudKit sync already completed", v19, 2u);
    }

    a1(0);
  }

  else
  {
    v49 = v7;
    v50 = v6;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    v21 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafePendingCompletions;
    swift_beginAccess();
    v22 = *(v3 + v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v21) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1003064E8(0, v22[2] + 1, 1, v22);
      *(v3 + v21) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1003064E8((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_100161B4C;
    v26[5] = v20;
    *(v3 + v21) = v22;
    swift_endAccess();
    v27 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeSyncInProgress;
    if (*(v3 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeSyncInProgress))
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100008D04(v28, qword_1003FAA40);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "TrustedContact CloudKit sync currently in progress", v31, 2u);
      }
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100008D04(v32, qword_1003FAA40);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Starting TrustedContact CloudKit sync", v35, 2u);
      }

      (*(v12 + 16))(v15, v3 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__accountStore, v11);
      Dependency.wrappedValue.getter();
      (*(v12 + 8))(v15, v11);
      v36 = [*(*sub_1000080F8(v51 v52) + 16)];
      sub_10000839C(v51);
      v37 = v49;
      if (v36)
      {
        v38 = [v36 aa_isSubscribedToTrustedContactContainers] ^ 1;
      }

      else
      {
        v38 = 0;
      }

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67109120;
        *(v41 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v39, v40, "TrustedContact CloudKit subscription needed: %{BOOL}d", v41, 8u);
      }

      *(v3 + v27) = 1;
      v42 = v50;
      (*(v37 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__syncManager, v50);
      Dependency.wrappedValue.getter();
      (*(v37 + 8))(v10, v42);
      v43 = sub_1000080F8(v51, v52);
      v44 = swift_allocObject();
      swift_weakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = v36;
      *(v45 + 32) = v38;
      v46 = *v43;

      v47 = v36;
      sub_1002E8E0C(3, v38, sub_100161BB8, v45);

      sub_10000839C(v51);
    }
  }
}

uint64_t sub_100160CF8(char a1, uint64_t a2, void *a3, char a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_serialQueue);
    v25 = v13;
    v24 = v19;

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    *(v20 + 32) = a4 & 1;
    *(v20 + 33) = a1 & 1;
    aBlock[4] = sub_100161C18;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003AB448;
    v21 = _Block_copy(aBlock);
    v22 = a3;

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_100161C40(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v25);
  }

  return result;
}

uint64_t sub_100161014(uint64_t a1, char *a2, char a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100161090(a2, a3 & 1, a4 & 1);
  }

  return result;
}

uint64_t sub_100161090(char *a1, char a2, char a3)
{
  v5 = v3;
  LOBYTE(v7) = a2;
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v33 - v13;
  if ((a3 & 1) == 0)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA40);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "TrustedContact CloudKit sync failed", v26, 2u);
    }

    type metadata accessor for AAError(0);
    v34 = 0;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100161C40(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = v33[0];
    goto LABEL_13;
  }

  v4 = v12;
  if (qword_1003D7F20 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA40);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "TrustedContact CloudKit sync succeeded", v18, 2u);
    }

    v19 = 0;
    *(v5 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeDidSync) = 1;
    if ((v7 & 1) != 0 && a1)
    {
      v20 = a1;
      [v20 aa_setSubscribedToTrustedContactContainers:1];
      (*(v10 + 16))(v14, v5 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__accountStore, v4);
      Dependency.wrappedValue.getter();
      v21 = *(v10 + 8);
      v10 += 8;
      v21(v14, v4);
      v22 = *sub_1000080F8(v33, v33[3]);
      sub_10015BC80(v20);

      sub_10000839C(v33);
      v19 = 0;
    }

LABEL_13:
    a1 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafePendingCompletions;
    swift_beginAccess();
    v14 = *&a1[v5];
    v27 = *(v14 + 2);

    if (!v27)
    {
      break;
    }

    v7 = 0;
    v28 = (v14 + 40);
    while (v7 < *(v14 + 2))
    {
      ++v7;
      v10 = *(v28 - 1);
      v29 = *v28;
      v34 = v19;

      (v10)(&v34);

      v28 += 2;
      if (v27 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_17:

  v30 = *&a1[v5];
  *&a1[v5] = _swiftEmptyArrayStorage;

  *(v5 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeSyncInProgress) = 0;
  return result;
}

uint64_t sub_100161598()
{
  v1 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__syncManager;
  v2 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafePendingCompletions);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactInitiator()
{
  result = qword_1003E0818;
  if (!qword_1003E0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100161700()
{
  sub_10000DAB8(319, &qword_1003D9A38, &qword_1003D9A40, &unk_10033F180);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100161820()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v1 - 8);
  v13 = v1;
  v2 = *(v12 + 64);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v11 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_serialQueue;
  v10[1] = sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_100161C40(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v0 + v11) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeDidSync) = 0;
  *(v0 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeSyncInProgress) = 0;
  *(v0 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafePendingCompletions) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_100161B14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100161B4C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100161B78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100161BCC(uint64_t a1)
{
  v3 = *(v1 + 16);

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_100161C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100161C40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100161C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
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

uint64_t sub_100161D6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
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

uint64_t type metadata accessor for URLConfigurationCache()
{
  result = qword_1003E0920;
  if (!qword_1003E0920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100161E70()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = sub_100016034(319, &qword_1003E0930, AAURLConfiguration_ptr);
    if (v2 <= 0x3F)
    {
      result = sub_100016034(319, &unk_1003E0938, NSHTTPURLResponse_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100161F2C()
{
  type metadata accessor for URLConfigurationManager();
  swift_allocObject();
  result = sub_100161F68();
  qword_1003FA848 = result;
  return result;
}

uint64_t sub_100161F68()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_100071C74();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100163F0C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_1001621C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = objc_allocWithZone(NSURLComponents);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithString:v7];

  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    [v9 setPath:v10];

    v11 = v9;
    v12 = String._bridgeToObjectiveC()();
    [v11 setQuery:v12];

    v13 = [v11 URL];
    if (v13)
    {
      v14 = v13;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
    }

    else
    {

      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    }

    return sub_100135D14(v5, a1);
  }

  else
  {
    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }
}

uint64_t sub_100162438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 56);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1001637A8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AB4D0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100163F0C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_100162708(uint64_t a1, void (*a2)(void *, void, id), uint64_t a3)
{
  v6 = sub_1001628A4();
  if (v6)
  {
    v7 = v6;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA40);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "cachedURLConfiguration is present", v11, 2u);
    }

    v12 = v7;
    a2(v7, 0, 0);
  }

  else
  {
    dispatch_suspend(*(a1 + 56));

    sub_1001637CC(a1, a1, a2, a3);
  }
}

id sub_1001628A4()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  swift_beginAccess();
  sub_100012D04(v1 + 16, &v39, &qword_1003E0A18, qword_100344288);
  if (*(&v40 + 1))
  {
    sub_10003E950(&v39, v42);
    static Date.now.getter();
    v10 = sub_1000080F8(v42, v42[3]);
    (*(v3 + 16))(v7, v10, v2);
    Date.timeIntervalSince(_:)();
    v12 = v11;
    v13 = *(v3 + 8);
    v13(v7, v2);
    v13(v9, v2);
    if (v12 > 600.0)
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      swift_beginAccess();
      sub_100163E9C(&v39, v1 + 16);
      swift_endAccess();
    }

    sub_10000839C(v42);
  }

  else
  {
    sub_100008D3C(&v39, &qword_1003E0A18, qword_100344288);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA40);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = *(v1 + 40);
    if (v19)
    {
      v20 = sub_1000080F8((v1 + 16), *(v1 + 40));
      v38 = &v38;
      v21 = *(v19 - 8);
      v22 = *(v21 + 64);
      __chkstk_darwin(v20);
      v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24);
      v25 = type metadata accessor for URLConfigurationCache();
      v26 = *(v21 + 8);
      v27 = *&v24[*(v25 + 20)];
      v26(v24, v19);
    }

    else
    {
      v27 = 0;
    }

    *(v17 + 4) = v27;
    *v18 = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "[URLConfigurationManager cachedURLConfiguration]: %@", v17, 0xCu);
    sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
  }

  v28 = *(v1 + 40);
  if (!v28)
  {
    return 0;
  }

  v29 = sub_1000080F8((v1 + 16), *(v1 + 40));
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33);
  v34 = type metadata accessor for URLConfigurationCache();
  v35 = *(v30 + 8);
  v36 = *&v33[*(v34 + 20)];
  v35(v33, v28);
  return v36;
}

uint64_t sub_100162D80(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, void *, uint64_t))
{
  if (a1 && a2)
  {
    v10 = qword_1003D7F20;
    v27 = a1;
    v11 = a2;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Successfully fetched URL configuration", v15, 2u);
    }

    if (qword_1003D7E08 != -1)
    {
      swift_once();
    }

    v16 = qword_1003FA848;
    v17 = type metadata accessor for URLConfigurationCache();
    v28[3] = v17;
    v28[4] = &off_1003AB470;
    v18 = sub_10000DBEC(v28);
    Date.init()();
    *(v18 + *(v17 + 20)) = v27;
    *(v18 + *(v17 + 24)) = v11;
    swift_beginAccess();
    sub_100163E9C(v28, v16 + 16);
    swift_endAccess();
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      if (a3)
      {
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        v25 = v24;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      *(v22 + 4) = v24;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch URL configuration, error: %@", v22, 0xCu);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);
    }
  }

  dispatch_resume(*(a4 + 56));
  return a5(a1, a2, a3);
}

void sub_10016309C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t, id))
{
  if (*(a1 + 24))
  {
    sub_100012D04(a1, v35, &qword_1003D87C8, qword_100344800);
    if (v36)
    {
      sub_100005814(&qword_1003DBB88, &qword_10033FC30);
      if (swift_dynamicCast())
      {
        v7 = objc_allocWithZone(AAURLConfiguration);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [v7 initWithDictionary:isa];

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_100008D04(v10, qword_1003FAA40);
        v11 = v9;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          *(v14 + 4) = v11;
          *v15 = v11;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v12, v13, "[URLConfigurationManager fetchURLConfiguration]: %@", v14, 0xCu);
          sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
        }

        v17 = v11;
        a4(v11, a2, 0);

        return;
      }
    }

    else
    {
      sub_100008D3C(v35, &qword_1003D87C8, qword_100344800);
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA40);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "[URLConfigurationManager fetchURLConfiguration]: Failed to convert object to dictionary.", v27, 2u);
    }

    if (a3)
    {
      v28 = _convertErrorToNSError(_:)();
    }

    else
    {
      v28 = 0;
    }

    v29 = [objc_opt_self() aa_errorWithCode:-4402 underlyingError:v28];

    a4(0, a2, v29);
  }

  else if (a3)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA40);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "[URLConfigurationManager fetchURLConfiguration]: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }

    a4(0, a2, a3);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA40);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "[URLConfigurationManager fetchURLConfiguration]: Both object and error are nil.", v33, 2u);
    }

    v34 = [objc_opt_self() aa_errorWithCode:-4402 underlyingError:0];
    a4(0, a2, v34);
  }
}

uint64_t sub_100163664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_100070AF0(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v9 = a3;
  v10 = a4;
  v8(v14, a3, a4);

  return sub_100008D3C(v14, &qword_1003D87C8, qword_100344800);
}

uint64_t sub_100163730()
{
  sub_100008D3C(v0 + 16, &qword_1003E0A18, qword_100344288);

  return swift_deallocClassInstance();
}

uint64_t sub_1001637B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001637CC(uint64_t a1, uint64_t a2, void (*a3)(void, void, id), uint64_t a4)
{
  v49 = type metadata accessor for URLRequest();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v49);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for URL();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  v16 = __chkstk_darwin(v14);
  v46 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v48 = &v44 - v18;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v20 = qword_1003D7F20;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v47 = sub_100008D04(v21, qword_1003FAA40);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v45 = v14;
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "[URLConfigurationManager fetchURLConfiguration] called.", v24, 2u);
    v14 = v45;
  }

  sub_1001621C8(v13);
  v25 = v51;
  if ((*(v51 + 48))(v13, 1, v14) == 1)
  {
    sub_100008D3C(v13, &qword_1003E7500, &qword_10033EC30);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[URLConfigurationManager fetchURLConfiguration]: configurationURL is nil.", v28, 2u);
    }

    v29 = [objc_opt_self() aa_errorWithCode:-4417 underlyingError:0];
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to fetch URL configuration, error: %@", v32, 0xCu);
      sub_100008D3C(v33, &unk_1003D9140, &qword_10033E640);
    }

    dispatch_resume(*(a2 + 56));
    a3(0, 0, v29);
  }

  else
  {
    v35 = v48;
    (*(v25 + 32))(v48, v13, v14);
    (*(v25 + 16))(v46, v35, v14);
    v36 = v50;
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v37 = [objc_opt_self() sharedSession];
    v38 = v25;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_100163E50;
    *(v40 + 24) = v19;
    aBlock[4] = sub_100163E94;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100163664;
    aBlock[3] = &unk_1003AB548;
    v41 = v14;
    v42 = _Block_copy(aBlock);

    v43 = [v37 bodyTaskWithRequest:isa completion:v42];
    _Block_release(v42);

    [v43 resume];
    swift_unknownObjectRelease();
    (*(v7 + 8))(v36, v49);
    (*(v38 + 8))(v35, v41);
  }
}

uint64_t sub_100163E5C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100163E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E0A18, qword_100344288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100163F0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100163F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E0AD0, qword_100344310);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = [objc_allocWithZone(AAMyPhotoRequest) initWithAccount:a2];
  if (v9)
  {
    v10 = v9;
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    aBlock[4] = sub_100165694;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001641BC;
    aBlock[3] = &unk_1003AB660;
    v13 = _Block_copy(aBlock);

    [v10 performRequestWithHandler:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_10016413C(uint64_t a1, void *a2)
{
  if (a2)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v3 = a2;
    sub_100005814(&qword_1003E0AD0, qword_100344310);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001641BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1001643F0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1001644C8;

  return sub_100164D08(v5);
}

uint64_t sub_1001644C8(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100164654()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10016469C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000082A8;

  return sub_1001643F0(v2, v3, v4);
}

uint64_t sub_100164750(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000EF88;

  return v7();
}

uint64_t sub_10016483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000BF7F8(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100164AF8(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
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

    sub_100164AF8(a3);

    return v23;
  }

LABEL_8:
  sub_100164AF8(a3);
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

uint64_t sub_100164AF8(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100164B60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100164B98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_1000BF868(a1, v5);
}

uint64_t sub_100164C50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_1000BF868(a1, v5);
}

uint64_t sub_100164D08(uint64_t a1)
{
  v1[13] = a1;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for URL.DirectoryHint();
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[19] = v6;
  v7 = *(v6 - 8);
  v1[20] = v7;
  v8 = *(v7 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100164E68, 0, 0);
}

uint64_t sub_100164E68()
{
  v1 = *(v0 + 104);
  type metadata accessor for IdentityDataStore();
  *(v0 + 184) = swift_initStackObject();
  v2 = [v1 identifier];
  if (v2)
  {
    v10 = v2;
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 128);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    sub_100165B80(v16, v18, v12);

    strcpy((v0 + 72), "identity.json");
    *(v0 + 86) = -4864;
    (*(v14 + 104))(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v15);
    sub_1000709A0();
    URL.appending<A>(component:directoryHint:)();
    (*(v14 + 8))(v13, v15);
    v19 = Data.init(contentsOf:options:)();
    v21 = v20;
    v22 = type metadata accessor for JSONDecoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for Identity();
    sub_1001655A8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    v27 = *(v0 + 152);
    v28 = *(v0 + 160);

    sub_100012324(v19, v21);

    v29 = *(v28 + 8);
    v29(v26, v27);
    v29(v25, v27);
    v30 = *(v0 + 96);
    v32 = *(v0 + 168);
    v31 = *(v0 + 176);
    v33 = *(v0 + 144);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);

    v36 = *(v0 + 8);

    return v36(v30);
  }

  else
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(0, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t sub_100165248()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_100165360, 0, 0);
}

uint64_t sub_100165360()
{
  v1 = *(v0 + 88);
  v2 = [v1 photoData];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = *(v0 + 120);
  UUID.init()();
  v8 = [v1 cropRect];
  v9 = 0uLL;
  if (v8)
  {
    v10 = v8;
    static CGRect._conditionallyBridgeFromObjectiveC(_:result:)();

    v9 = 0uLL;
    v11 = 0uLL;
  }

  else
  {
    v11 = 0uLL;
  }

  v12 = *(v0 + 184);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 104);
  *(v0 + 16) = v9;
  *(v0 + 32) = v11;
  *(v0 + 48) = 1;
  type metadata accessor for Identity.Avatar();
  sub_100052704(v4, v6);
  v16 = Identity.Avatar.__allocating_init(identifier:imageData:cropRect:)();
  type metadata accessor for Identity();
  UUID.init()();
  v17 = v16;
  v18 = Identity.__allocating_init(identifier:avatar:)();
  sub_100165748(v18, v15);
  v19 = *(v0 + 184);
  sub_100015D58(v4, v6);

  v21 = *(v0 + 168);
  v20 = *(v0 + 176);
  v22 = *(v0 + 144);
  v24 = *(v0 + 112);
  v23 = *(v0 + 120);

  v25 = *(v0 + 8);

  return v25(v18);
}

unint64_t sub_10016555C()
{
  result = qword_1003E0AC0;
  if (!qword_1003E0AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E0AC0);
  }

  return result;
}

unint64_t sub_1001655A8()
{
  result = qword_1003E0AC8;
  if (!qword_1003E0AC8)
  {
    type metadata accessor for Identity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E0AC8);
  }

  return result;
}

uint64_t sub_100165600()
{
  v1 = sub_100005814(&qword_1003E0AD0, qword_100344310);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_100165694(uint64_t a1, void *a2)
{
  v4 = *(*(sub_100005814(&qword_1003E0AD0, qword_100344310) - 8) + 80);

  sub_10016413C(a1, a2);
}

uint64_t sub_100165728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100165748(uint64_t a1, void *a2)
{
  v41[0] = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(v8);
  v42 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v41 - v12;
  v14 = [a2 identifier];
  if (!v14)
  {
    __break(1u);
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_100165B80(v16, v18, v13);

  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  URL.path(percentEncoded:)(1);
  v21 = String._bridgeToObjectiveC()();

  LOBYTE(v15) = [v20 fileExistsAtPath:v21];

  if ((v15 & 1) == 0)
  {
    v22 = [v19 defaultManager];
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v45[0] = 0;
    v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v45];

    if (!v26)
    {
      v40 = v45[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v43 + 8))(v13, v44);
    }

    v27 = v45[0];
  }

  strcpy(v45, "identity.json");
  HIWORD(v45[1]) = -4864;
  (*(v4 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_1000709A0();
  v28 = v42;
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v7, v3);
  v29 = type metadata accessor for JSONEncoder();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v45[0] = v41[0];
  type metadata accessor for Identity();
  sub_100165FC0();
  v32 = v41[1];
  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v32)
  {
  }

  else
  {
    v35 = v33;
    v36 = v34;

    Data.write(to:options:)();
    sub_100012324(v35, v36);
  }

  v37 = v44;
  v38 = *(v43 + 8);
  v38(v28, v44);
  return (v38)(v13, v37);
}

uint64_t sub_100165B80@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v42 = a3;
  v3 = type metadata accessor for URL.DirectoryHint();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v45 = &v35[-v14];
  v15 = __chkstk_darwin(v13);
  v17 = &v35[-v16];
  __chkstk_darwin(v15);
  v19 = &v35[-v18];
  v20 = [objc_opt_self() defaultManager];
  v21 = [v20 URLsForDirectory:14 inDomains:1];

  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v22 + 16))
  {

    if (*(v22 + 16))
    {
      (*(v8 + 16))(v17, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

      v23 = *(v8 + 32);
      v39 = v19;
      v23(v19, v17, v7);
      v46 = 0xD000000000000017;
      v47 = 0x800000010032F3E0;
      v24 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v25 = v41;
      v40 = v7;
      v38 = *(v41 + 104);
      v36 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v38(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
      sub_1000709A0();
      v26 = v45;
      URL.appending<A>(component:directoryHint:)();
      v37 = v12;
      v27 = *(v25 + 8);
      v27(v6, v3);
      v46 = v43;
      v47 = v44;
      v28 = v24;
      v29 = v38;
      v38(v6, v28, v3);
      URL.appending<A>(component:directoryHint:)();
      v27(v6, v3);
      v46 = 0x797469746E656449;
      v47 = 0xE800000000000000;
      v29(v6, v36, v3);
      v30 = v37;
      URL.appending<A>(component:directoryHint:)();
      v27(v6, v3);
      v31 = *(v8 + 8);
      v32 = v30;
      v33 = v40;
      v31(v32, v40);
      v31(v26, v33);
      return (v31)(v39, v33);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100165FC0()
{
  result = qword_1003E0B88;
  if (!qword_1003E0B88)
  {
    type metadata accessor for Identity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E0B88);
  }

  return result;
}

void *sub_100166018(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1002E0224(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_100005814(&unk_1003E7720, &qword_100346B60);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10033EB30;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1002E0224((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_100166388(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100167764(a1, a2, a3, a5, a6, a7);

  return swift_unknownObjectRelease();
}

void sub_1001663CC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  if (a1)
  {
    v44 = a4;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAB8);
    (*(v9 + 16))(v13, a2, v8);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v43 = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v20 = 136315394;
      sub_100168520(&qword_1003D9150, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v9 + 8))(v13, v8);
      v25 = sub_10021145C(v22, v24, &v46);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v26;
      *v21 = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "   checkInheritanceKey failed for beneficiaryID %s    error: %@", v20, 0x16u);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v42);

      a3 = v43;
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    type metadata accessor for InheritanceError(0);
    v45 = 2109;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v38 = v46;
    v39 = _convertErrorToNSError(_:)();

    a3(v39);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAB8);
    (*(v9 + 16))(v15, a2, v8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = a4;
      v32 = a3;
      v33 = v31;
      v46 = v31;
      *v30 = 136315138;
      sub_100168520(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v9 + 8))(v15, v8);
      v37 = sub_10021145C(v34, v36, &v46);

      *(v30 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "   checkInheritanceKey succeeded for beneficiaryID %s", v30, 0xCu);
      sub_10000839C(v33);
      a3 = v32;
    }

    else
    {

      (*(v9 + 8))(v15, v8);
    }

    type metadata accessor for InheritanceError(0);
    v45 = 2101;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v40 = v46;
    v39 = _convertErrorToNSError(_:)();

    a3(v39);
  }
}

void sub_1001669E4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v78 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_5;
  }

  v16 = *a1;
  v17 = sub_1003084DC(0x69636966656E6562, 0xEF64697555797261);
  if ((v18 & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = (*(v15 + 56) + 16 * v17);
  v21 = *v19;
  v20 = v19[1];

  v86 = v21;
  UUID.init(uuidString:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_100008D3C(v9, &qword_1003D8B60, &unk_10033F210);
LABEL_5:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "💥 Failure to parse beneficiaryInfo.", v25, 2u);
    }

    return;
  }

  (*(v11 + 32))(v14, v9, v10);
  v26 = *(v15 + 16);
  v85 = v20;
  if (v26)
  {
    v27 = sub_1003084DC(0x646F436D69616C63, 0xED00006873614865);
    if (v28)
    {
      v29 = (*(v15 + 56) + 16 * v27);
      v30 = v29[1];
      v80 = *v29;
    }

    else
    {
      v80 = 0;
      v30 = 0;
    }

    v20 = v85;
  }

  else
  {
    v80 = 0;
    v30 = 0;
  }

  v79 = v14;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_100008D04(v31, qword_1003FAAB8);

  v87 = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  v35 = os_log_type_enabled(v33, v34);
  v81 = v3;
  v82 = v30;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v88[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_10021145C(v86, v20, v88);
    _os_log_impl(&_mh_execute_header, v33, v34, "Beneficiary UUID: %s", v36, 0xCu);
    sub_10000839C(v37);

    v30 = v82;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v40 = os_log_type_enabled(v38, v39);
  v83 = a2;
  v84 = v11;
  v41 = v79;
  if (v40)
  {
    v42 = v30;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v89 = v44;
    *v43 = 136315138;
    v88[0] = v80;
    v88[1] = v42;

    sub_100005814(&qword_1003E26F0, &qword_10034B4C0);
    v45 = String.init<A>(describing:)();
    v47 = sub_10021145C(v45, v46, &v89);
    v11 = v84;

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "Claim code hash: %s", v43, 0xCu);
    sub_10000839C(v44);
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v88[0] = v51;
    *v50 = 136315138;
    if (*(v15 + 16) && (v52 = sub_1003084DC(0x4B64657070617277, 0xEA00000000007965), (v53 & 1) != 0))
    {
      v54 = (*(v15 + 56) + 16 * v52);
      v56 = *v54;
      v55 = v54[1];

      v57 = v56;
    }

    else
    {
      v57 = 0;
      v55 = 0xE000000000000000;
    }

    v58 = sub_10021145C(v57, v55, v88);

    *(v50 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v48, v49, "Wrapped Key: %s", v50, 0xCu);
    sub_10000839C(v51);

    v11 = v84;
  }

  else
  {
  }

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v88[0] = v62;
    *v61 = 136315138;
    if (*(v15 + 16) && (v63 = sub_1003084DC(0x4B64657070617277, 0xEE00687361487965), (v64 & 1) != 0))
    {
      v65 = (*(v15 + 56) + 16 * v63);
      v67 = *v65;
      v66 = v65[1];

      v68 = v67;
    }

    else
    {
      v68 = 0;
      v66 = 0xE000000000000000;
    }

    v69 = sub_10021145C(v68, v66, v88);

    *(v61 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v59, v60, "Wrapped Key Hash: %s", v61, 0xCu);
    sub_10000839C(v62);

    v11 = v84;
  }

  else
  {
  }

  v70 = v85;
  if (v82)
  {
    v71 = sub_1001672C8(v86, v85, v80, v82, v41);
    sub_100168568(v71, v72);
  }

  else
  {

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v88[0] = v76;
      *v75 = 136315138;
      v77 = sub_10021145C(v86, v70, v88);

      *(v75 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "Claim code is nil for uuid: %s", v75, 0xCu);
      sub_10000839C(v76);
    }

    else
    {
    }
  }

  (*(v11 + 8))(v41, v10);
}

uint64_t sub_1001672C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v36 = a3;
  v37 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v5;
  v38 = v18;
  v19 = sub_10031AF8C(a5);
  v21 = v18[2];
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v20;
  if (v18[3] < v24)
  {
    sub_1002CDBD0(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_10031AF8C(a5);
    if ((v6 & 1) == (v25 & 1))
    {
      goto LABEL_6;
    }

    v19 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v33 = v19;
    sub_1002D0C30();
    v19 = v33;
    v26 = v38;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v34 = v19;
    (*(v12 + 16))(v15, a5, v11);
    sub_1002CFDC0(v34, v15, a1, a2, v36, v37, v26);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  v26 = v38;
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v27 = (v26[7] + 32 * v19);
  result = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  *v27 = a1;
  v27[1] = a2;
  v32 = v37;
  v27[2] = v36;
  v27[3] = v32;
LABEL_11:
  *v7 = v26;
  return result;
}

void sub_1001674A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a1;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Claim code hash missing on idMS.... Checking if keys state on OT...", v14, 2u);
    a1 = v21;
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a3;
  v18[1] = a4;
  aBlock[4] = sub_100168468;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003AB720;
  v19 = _Block_copy(aBlock);

  [a2 checkInheritanceKeyForBeneficiaryID:isa completion:v19];
  _Block_release(v19);
}

void sub_100167764(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SHA256Digest();
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  __chkstk_darwin(v12);
  v100 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA256();
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = *(v101 + 64);
  v17 = __chkstk_darwin(v15);
  v99 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v106 = &v92 - v19;
  v20 = type metadata accessor for BeneficiaryInfoRecord();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  sub_100168334(a1, v23);
  v105 = a4;
  swift_unknownObjectRetain();
  v25 = sub_1001E36E8(v23);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100008D04(v26, qword_1003FAAB8);
  v28 = v25;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v98 = a2;
    v32 = a1;
    v33 = a3;
    v34 = a5;
    v35 = v31;
    v36 = v27;
    v37 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v28;
    *v37 = v28;
    v38 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "BeneficiaryInfo: %@", v35, 0xCu);
    sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);
    v27 = v36;

    a5 = v34;
    a3 = v33;
    a1 = v32;
    a2 = v98;
  }

  if (*(a2 + 16))
  {
    v39 = sub_10031AF8C(a1);
    if (v40)
    {
      v41 = *(a2 + 56) + 32 * v39;
      v43 = *(v41 + 16);
      v42 = *(v41 + 24);

      v44 = [v28 accessKey];
      if (v44 && (v45 = v44, v46 = [v44 claimTokenString], v45, v46))
      {
        v96 = v43;
        v97 = a5;
        v98 = v42;
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v27;
        v49 = v48;

        v50 = sub_100170228(v47, v49);
        v52 = v51;
        SHA256.init()();
        sub_100168520(&unk_1003DA8A0, &type metadata accessor for SHA256);
        v53 = v99;
        v54 = v102;
        dispatch thunk of HashFunction.init()();
        sub_100015D6C(v50, v52);
        v94 = v50;
        v93 = v52;
        sub_10018F16C(v50, v52);
        sub_100012324(v50, v52);
        v55 = v100;
        dispatch thunk of HashFunction.finalize()();
        v101 = *(v101 + 8);
        (v101)(v53, v54);
        v56 = v104;
        v110 = v104;
        v111 = sub_100168520(&qword_1003D8D70, &type metadata accessor for SHA256Digest);
        v57 = sub_10000DBEC(v109);
        v58 = v103;
        (*(v103 + 16))(v57, v55, v56);
        sub_1000080F8(v109, v110);
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
        (*(v58 + 8))(v55, v56);
        v59 = v107;
        v60 = v108;
        sub_10000839C(v109);
        sub_100012324(v94, v93);
        (v101)(v106, v54);
        v109[0] = sub_100166018(v59, v60);
        sub_100005814(&qword_1003DA1E0, &qword_100345E50);
        sub_10005A668();
        v61 = BidirectionalCollection<>.joined(separator:)();
        v63 = v62;
        sub_100012324(v59, v60);

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v109[0] = v67;
          *v66 = 136315138;
          *(v66 + 4) = sub_10021145C(v61, v63, v109);
          _os_log_impl(&_mh_execute_header, v64, v65, "localClaimCodeHash: %s", v66, 0xCu);
          sub_10000839C(v67);
        }

        v68 = v98;

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v109[0] = v72;
          *v71 = 136315138;
          v73 = v96;
          *(v71 + 4) = sub_10021145C(v96, v98, v109);
          _os_log_impl(&_mh_execute_header, v69, v70, "idMS ClaimCode Hash: %s", v71, 0xCu);
          sub_10000839C(v72);

          v68 = v98;
        }

        else
        {

          v73 = v96;
        }

        v109[0] = v61;
        v109[1] = v63;
        v107 = v73;
        v108 = v68;
        sub_1000709A0();
        v85 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();
        v88 = os_log_type_enabled(v86, v87);
        if (!v85)
        {
          if (v88)
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v86, v87, "🌈 Claim code matches!", v91, 2u);
          }

          sub_1001AE97C(1, 0, v105);

          goto LABEL_25;
        }

        if (v88)
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "🌧️ Claim code does not match.", v89, 2u);
        }

        type metadata accessor for InheritanceError(0);
        v107 = 2100;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v90 = v109[0];
        v82 = _convertErrorToNSError(_:)();

        v83 = v82;
        v84 = v105;
      }

      else
      {

        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "Claim code hash was not found in local CK record.", v80, 2u);
        }

        type metadata accessor for InheritanceError(0);
        v107 = 2102;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v81 = v109[0];
        v82 = _convertErrorToNSError(_:)();

        v83 = v82;
        v84 = v105;
      }

      sub_1001AE97C(0, v83, v84);

LABEL_25:
      return;
    }
  }

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "Claim code hash was not found in idMS response.", v76, 2u);
  }

  v77 = swift_allocObject();
  *(v77 + 16) = sub_100168328;
  *(v77 + 24) = v24;

  sub_1001674A8(a1, a3, sub_100168398, v77);
}

uint64_t sub_1001682F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100168334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryInfoRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100168398(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_1001683C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

void sub_100168468(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1001663CC(a1, v1 + v4, v6, v7);
}

uint64_t sub_100168508(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100168520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100168568(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001686DC(uint64_t a1, void *a2, void (*a3)(uint64_t, char *, uint64_t, uint64_t, void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, char *, uint64_t, uint64_t, void *))
{
  v215 = a6;
  v211 = a5;
  v206 = a3;
  v208 = a2;
  v216 = a1;
  v214 = a14;
  v213 = a13;
  v203 = type metadata accessor for SHA256Digest();
  v202 = *(v203 - 8);
  v21 = *(v202 + 64);
  __chkstk_darwin(v203);
  v199 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for SHA256();
  v200 = *(v201 - 8);
  v23 = *(v200 + 64);
  v24 = __chkstk_darwin(v201);
  v198 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v204 = &v194 - v26;
  v27 = type metadata accessor for BeneficiaryInfoRecord();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  v31[2] = a7;
  v31[3] = a8;
  v205 = a9;
  v31[4] = a9;
  v31[5] = a10;
  v31[6] = a11;
  v32 = swift_allocObject();
  v33 = a4;
  v32[2] = a4;
  v34 = v211;
  v35 = v215;
  v32[3] = v211;
  v32[4] = v35;
  v32[5] = v214;
  v32[6] = v31;
  v210 = v32;
  v207 = sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  sub_100168334(v216, v30);
  v213 = a7;
  swift_retain_n();
  v36 = a8;
  v212 = a10;
  swift_retain_n();
  v37 = a11;
  v38 = v36;
  v39 = v37;
  v40 = v38;
  v41 = v39;
  v42 = v33;
  swift_errorRetain();
  v209 = v34;

  v211 = v31;

  v43 = sub_1001E36E8(v30);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v207 = type metadata accessor for Logger();
  sub_100008D04(v207, qword_1003FAAB8);
  v44 = v43;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "BeneficiaryInfo: %@", v47, 0xCu);
    sub_100008D3C(v48, &unk_1003D9140, &qword_10033E640);
  }

  v214 = v40;

  v50 = v208;
  if (v208[2] && (v51 = sub_10031AF8C(v216), (v52 & 1) != 0))
  {
    v53 = v50[7] + 32 * v51;
    v55 = *(v53 + 16);
    v54 = *(v53 + 24);

    v56 = [v44 accessKey];
    v216 = v42;
    v197 = v41;
    v196 = v44;
    v206 = a18;
    if (!v56 || (v57 = v56, v58 = [v56 claimTokenString], v57, !v58))
    {
      v96 = v42;

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&_mh_execute_header, v97, v98, "Claim code hash was not found in local CK record.", v99, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v219 = 2102;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v100 = v226;
      v101 = _convertErrorToNSError(_:)();

      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;
      v220 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v219 = v101;
      sub_100070AF0(&v219, &v225);
      v105 = v101;
      v106 = v213;

      v204 = v214;
      v107 = v212;

      v208 = v197;
      v108 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v224 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v225, v102, v104, isUniquelyReferenced_nonNull_native);

      if (v96)
      {
        swift_getErrorValue();
        v110 = v223;
        swift_errorRetain();
        sub_100256810(v110);
        swift_getErrorValue();
        v111 = sub_100256874(v222);
        v112 = objc_allocWithZone(NSError);
        v113 = String._bridgeToObjectiveC()();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v115 = [v112 initWithDomain:v113 code:v111 userInfo:isa];

        v116 = _convertErrorToNSError(_:)();
        v117 = v209;
        [v209 populateUnderlyingErrorsStartingWithRootError:v116];
      }

      else
      {

        v118 = v108;
        v119 = _convertErrorToNSError(_:)();

        v117 = v209;
        [v209 populateUnderlyingErrorsStartingWithRootError:v119];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v207, qword_1003FAB30);
      v120 = v117;
      v121 = v215;

      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *&v219 = swift_slowAlloc();
        *v124 = 136315394;
        *(v124 + 4) = sub_10021145C(*(v121 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v121 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v219);
        *(v124 + 12) = 2080;
        v125 = [v120 debugDescription];
        v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v128 = v127;

        v129 = v126;
        v107 = v212;
        v130 = sub_10021145C(v129, v128, &v219);

        *(v124 + 14) = v130;
        v106 = v213;
        _os_log_impl(&_mh_execute_header, v122, v123, "%s - Reporting Preflight Event %s", v124, 0x16u);
        swift_arrayDestroy();
      }

      v95 = v214;
      v131 = v206;
      [*(v121 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v120];
      v132 = v204;
      v133 = v208;
      v131(v106, v204, v205, v107, v208);

      goto LABEL_43;
    }

    v195 = v55;
    v208 = v54;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62 = sub_100170228(v59, v61);
    v64 = v63;
    SHA256.init()();
    sub_100168520(&unk_1003DA8A0, &type metadata accessor for SHA256);
    v65 = v198;
    v66 = v201;
    dispatch thunk of HashFunction.init()();
    sub_100015D6C(v62, v64);
    v194 = v62;
    sub_10018F16C(v62, v64);
    sub_100012324(v62, v64);
    v67 = v199;
    dispatch thunk of HashFunction.finalize()();
    v200 = *(v200 + 8);
    (v200)(v65, v66);
    v68 = v203;
    v220 = v203;
    v221 = sub_100168520(&qword_1003D8D70, &type metadata accessor for SHA256Digest);
    v69 = sub_10000DBEC(&v219);
    v70 = v202;
    (*(v202 + 16))(v69, v67, v68);
    sub_1000080F8(&v219, v220);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v70 + 8))(v67, v68);
    v71 = v225;
    sub_10000839C(&v219);
    sub_100012324(v194, v64);
    (v200)(v204, v66);
    *&v219 = sub_100166018(v71, *(&v71 + 1));
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    sub_10005A668();
    v72 = BidirectionalCollection<>.joined(separator:)();
    v74 = v73;
    sub_100012324(v71, *(&v71 + 1));

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v219 = v78;
      *v77 = 136315138;
      *(v77 + 4) = sub_10021145C(v72, v74, &v219);
      _os_log_impl(&_mh_execute_header, v75, v76, "localClaimCodeHash: %s", v77, 0xCu);
      sub_10000839C(v78);
    }

    v79 = v208;

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();

    v82 = os_log_type_enabled(v80, v81);
    v83 = v212;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v219 = v85;
      *v84 = 136315138;
      v86 = v195;
      *(v84 + 4) = sub_10021145C(v195, v79, &v219);
      _os_log_impl(&_mh_execute_header, v80, v81, "idMS ClaimCode Hash: %s", v84, 0xCu);
      sub_10000839C(v85);

      v87 = v216;
      v88 = v197;
    }

    else
    {

      v87 = v216;
      v88 = v197;
      v86 = v195;
    }

    *&v219 = v72;
    *(&v219 + 1) = v74;
    *&v225 = v86;
    *(&v225 + 1) = v79;
    sub_1000709A0();
    v134 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.debug.getter();
    v137 = os_log_type_enabled(v135, v136);
    if (v134)
    {
      v138 = v213;
      v139 = v87;
      if (v137)
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&_mh_execute_header, v135, v136, "🌧️ Claim code does not match.", v140, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v219 = 2100;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v141 = v226;
      v142 = _convertErrorToNSError(_:)();

      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;
      v220 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v219 = v142;
      sub_100070AF0(&v219, &v225);
      v146 = v142;

      v208 = v214;

      v204 = v197;
      v147 = v146;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v224 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v225, v143, v145, v148);

      if (v139)
      {
        swift_getErrorValue();
        v149 = v218;
        swift_errorRetain();
        sub_100256810(v149);
        swift_getErrorValue();
        v150 = sub_100256874(v217);
        v151 = objc_allocWithZone(NSError);
        v152 = String._bridgeToObjectiveC()();

        v153 = Dictionary._bridgeToObjectiveC()().super.isa;

        v154 = [v151 initWithDomain:v152 code:v150 userInfo:v153];

        v155 = _convertErrorToNSError(_:)();
        v156 = v209;
        [v209 populateUnderlyingErrorsStartingWithRootError:v155];
      }

      else
      {

        v162 = v147;
        v163 = _convertErrorToNSError(_:)();

        v156 = v209;
        [v209 populateUnderlyingErrorsStartingWithRootError:v163];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v207, qword_1003FAB30);
      v120 = v156;
      v164 = v215;

      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *&v219 = swift_slowAlloc();
        *v167 = 136315394;
        *(v167 + 4) = sub_10021145C(*(v164 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v164 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v219);
        *(v167 + 12) = 2080;
        v168 = [v120 debugDescription];
        v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v170;

        v172 = v169;
        v83 = v212;
        v173 = sub_10021145C(v172, v171, &v219);

        *(v167 + 14) = v173;
        v138 = v213;
        _os_log_impl(&_mh_execute_header, v165, v166, "%s - Reporting Preflight Event %s", v167, 0x16u);
        swift_arrayDestroy();
      }

      v95 = v214;
      v174 = v206;
      [*(v164 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v120];
      v175 = v208;
      v176 = v204;
      v174(v138, v208, v205, v83, v204);

LABEL_43:

      v41 = v197;
      goto LABEL_44;
    }

    v157 = v213;
    if (v137)
    {
      v158 = swift_slowAlloc();
      *v158 = 0;
      _os_log_impl(&_mh_execute_header, v135, v136, "🌈 Claim code matches!", v158, 2u);
    }

    v159 = v214;

    v160 = v88;
    if (v87)
    {
      v161 = _convertErrorToNSError(_:)();
    }

    else
    {
      v161 = 0;
    }

    v178 = v209;
    v179 = v206;
    [v209 populateUnderlyingErrorsStartingWithRootError:v161];

    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    sub_100008D04(v207, qword_1003FAB30);
    v180 = v178;
    v181 = v215;

    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v209 = v159;
      v185 = v184;
      v208 = swift_slowAlloc();
      *&v219 = v208;
      *v185 = 136315394;
      *(v185 + 4) = sub_10021145C(*(v181 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v181 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v219);
      *(v185 + 12) = 2080;
      v186 = v179;
      v187 = v160;
      v188 = [v180 debugDescription];
      v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v191 = v190;

      v192 = v189;
      v157 = v213;
      v193 = sub_10021145C(v192, v191, &v219);
      v83 = v212;

      *(v185 + 14) = v193;
      v160 = v187;
      v179 = v186;
      _os_log_impl(&_mh_execute_header, v182, v183, "%s - Reporting Preflight Event %s", v185, 0x16u);
      swift_arrayDestroy();

      v159 = v209;
    }

    v41 = v197;
    [*(v181 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v180];
    v179(v157, v159, v205, v83, v160);
  }

  else
  {
    v89 = v44;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Claim code hash was not found in idMS response.", v92, 2u);
    }

    v93 = swift_allocObject();
    v94 = v210;
    *(v93 + 16) = a16;
    *(v93 + 24) = v94;

    sub_1001674A8(v216, v206, a17, v93);
  }

  v95 = v214;
LABEL_44:
}

uint64_t sub_10016A0E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11)
{
  v189 = a6;
  v179 = a3;
  v181 = a2;
  *&v177 = type metadata accessor for SHA256Digest();
  v176 = *(v177 - 8);
  v16 = *(v176 + 64);
  __chkstk_darwin(v177);
  v173 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for SHA256();
  v174 = *(v175 - 8);
  v18 = *(v174 + 64);
  v19 = __chkstk_darwin(v175);
  v172 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  *(&v177 + 1) = &v168 - v21;
  v22 = type metadata accessor for BeneficiaryInfoRecord();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a7;
  v26[3] = a8;
  v178 = a9;
  v26[4] = a9;
  v26[5] = a10;
  v26[6] = a11;
  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  v28 = a4;
  v29 = v189;
  v27[4] = v189;
  v27[5] = sub_10016D3F0;
  v183 = v27;
  v27[6] = v26;
  v180 = sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  v187 = a1;
  sub_100168334(a1, v25);

  v30 = a8;

  swift_errorRetain();

  v31 = v30;

  swift_errorRetain();
  v184 = a7;

  v188 = v31;
  v186 = a10;

  v185 = a11;
  v32 = v28;
  swift_errorRetain();
  swift_errorRetain();
  v182 = a5;

  v33 = sub_1001E36E8(v25);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100008D04(v34, qword_1003FAAB8);
  v35 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "BeneficiaryInfo: %@", v38, 0xCu);
    sub_100008D3C(v39, &unk_1003D9140, &qword_10033E640);
  }

  v41 = v181;
  v42 = v186;
  if (v181[2] && (v43 = sub_10031AF8C(v187), (v44 & 1) != 0))
  {
    v45 = v41[7] + 32 * v43;
    v46 = *(v45 + 24);
    v179 = *(v45 + 16);

    v181 = v35;
    v47 = [v35 accessKey];
    v187 = v32;
    v171 = v26;
    v180 = v34;
    if (!v47 || (v48 = v47, v49 = [v47 claimTokenString], v48, !v49))
    {

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "Claim code hash was not found in local CK record.", v89, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v192 = 2102;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v90 = v199;
      v91 = _convertErrorToNSError(_:)();

      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;
      v193 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v192 = v91;
      sub_100070AF0(&v192, &v198);
      v95 = v91;
      v96 = v184;

      v97 = v188;

      v76 = v185;
      swift_errorRetain();
      v98 = v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v197 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v198, v92, v94, isUniquelyReferenced_nonNull_native);

      if (v187)
      {
        swift_getErrorValue();
        v100 = v196;
        swift_errorRetain();
        sub_100256810(v100);
        swift_getErrorValue();
        v101 = sub_100256874(v195);
        v102 = objc_allocWithZone(NSError);
        v103 = String._bridgeToObjectiveC()();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v105 = [v102 initWithDomain:v103 code:v101 userInfo:isa];

        v29 = v189;
        v106 = _convertErrorToNSError(_:)();

        v107 = v182;
        [v182 populateUnderlyingErrorsStartingWithRootError:v106];
      }

      else
      {

        v108 = v98;
        v109 = _convertErrorToNSError(_:)();

        v107 = v182;
        [v182 populateUnderlyingErrorsStartingWithRootError:v109];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v180, qword_1003FAB30);
      v110 = v107;

      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *&v192 = swift_slowAlloc();
        *v113 = 136315394;
        *(v113 + 4) = sub_10021145C(*(v189 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v189 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v192);
        *(v113 + 12) = 2080;
        v114 = [v110 debugDescription];
        v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v117 = v116;

        v118 = v115;
        v76 = v185;
        v119 = sub_10021145C(v118, v117, &v192);
        v96 = v184;

        *(v113 + 14) = v119;
        v42 = v186;
        _os_log_impl(&_mh_execute_header, v111, v112, "%s - Reporting Preflight Event %s", v113, 0x16u);
        swift_arrayDestroy();

        v29 = v189;
      }

      [*(v29 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v110];
      v120 = v96;
      goto LABEL_42;
    }

    v170 = v46;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_100170228(v50, v52);
    v55 = v54;
    SHA256.init()();
    sub_100168520(&unk_1003DA8A0, &type metadata accessor for SHA256);
    v56 = v172;
    v57 = v175;
    dispatch thunk of HashFunction.init()();
    sub_100015D6C(v53, v55);
    v169 = v53;
    v168 = v55;
    sub_10018F16C(v53, v55);
    sub_100012324(v53, v55);
    v58 = v173;
    dispatch thunk of HashFunction.finalize()();
    v174 = *(v174 + 8);
    (v174)(v56, v57);
    v59 = v177;
    v193 = v177;
    v194 = sub_100168520(&qword_1003D8D70, &type metadata accessor for SHA256Digest);
    v60 = sub_10000DBEC(&v192);
    v61 = v176;
    (*(v176 + 16))(v60, v58, v59);
    sub_1000080F8(&v192, v193);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v61 + 8))(v58, v59);
    v62 = v198;
    sub_10000839C(&v192);
    sub_100012324(v169, v168);
    (v174)(*(&v177 + 1), v57);
    *&v192 = sub_100166018(v62, *(&v62 + 1));
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    sub_10005A668();
    v63 = BidirectionalCollection<>.joined(separator:)();
    v65 = v64;
    sub_100012324(v62, *(&v62 + 1));

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    v68 = os_log_type_enabled(v66, v67);
    *(&v177 + 1) = v65;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v192 = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_10021145C(v63, v65, &v192);
      _os_log_impl(&_mh_execute_header, v66, v67, "localClaimCodeHash: %s", v69, 0xCu);
      sub_10000839C(v70);
    }

    *&v177 = v63;
    v71 = v170;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v184;
    v76 = v185;
    if (v74)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v192 = v78;
      *v77 = 136315138;
      v79 = v179;
      *(v77 + 4) = sub_10021145C(v179, v71, &v192);
      _os_log_impl(&_mh_execute_header, v72, v73, "idMS ClaimCode Hash: %s", v77, 0xCu);
      sub_10000839C(v78);

      v42 = v186;
      v80 = v189;
      v81 = v187;
    }

    else
    {

      v42 = v186;
      v80 = v189;
      v81 = v187;
      v79 = v179;
    }

    v192 = v177;
    *&v198 = v79;
    *(&v198 + 1) = v71;
    sub_1000709A0();
    v121 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    v124 = os_log_type_enabled(v122, v123);
    if (v121)
    {
      if (v124)
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v122, v123, "🌧️ Claim code does not match.", v125, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v192 = 2100;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v126 = v199;
      v127 = _convertErrorToNSError(_:)();

      v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v129;
      v193 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v192 = v127;
      sub_100070AF0(&v192, &v198);
      v131 = v127;

      v179 = v188;

      swift_errorRetain();
      v98 = v131;
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v197 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v198, v128, v130, v132);

      if (v187)
      {
        swift_getErrorValue();
        v133 = v191;
        swift_errorRetain();
        sub_100256810(v133);
        swift_getErrorValue();
        v134 = sub_100256874(v190);
        v135 = objc_allocWithZone(NSError);
        v136 = String._bridgeToObjectiveC()();

        v137 = Dictionary._bridgeToObjectiveC()().super.isa;

        v138 = [v135 initWithDomain:v136 code:v134 userInfo:v137];

        v80 = v189;
        v139 = _convertErrorToNSError(_:)();

        v140 = v182;
        [v182 populateUnderlyingErrorsStartingWithRootError:v139];
      }

      else
      {

        v145 = v98;
        v146 = _convertErrorToNSError(_:)();

        v140 = v182;
        [v182 populateUnderlyingErrorsStartingWithRootError:v146];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v180, qword_1003FAB30);
      v110 = v140;

      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        *&v192 = swift_slowAlloc();
        *v149 = 136315394;
        *(v149 + 4) = sub_10021145C(*(v189 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v189 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v192);
        *(v149 + 12) = 2080;
        v150 = [v110 debugDescription];
        v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v153 = v152;

        v154 = v151;
        v76 = v185;
        v155 = sub_10021145C(v154, v153, &v192);
        v75 = v184;

        *(v149 + 14) = v155;
        v42 = v186;
        _os_log_impl(&_mh_execute_header, v147, v148, "%s - Reporting Preflight Event %s", v149, 0x16u);
        swift_arrayDestroy();

        v80 = v189;
      }

      [*(v80 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v110];
      v120 = v75;
      v97 = v179;
LABEL_42:
      sub_1001B8338(v120, v97, v178, v42, v76);

      goto LABEL_43;
    }

    v141 = v182;
    if (v124)
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "🌈 Claim code matches!", v142, 2u);
    }

    v143 = v188;

    swift_errorRetain();
    if (v81)
    {
      v144 = _convertErrorToNSError(_:)();
    }

    else
    {
      v144 = 0;
    }

    [v141 populateUnderlyingErrorsStartingWithRootError:v144];

    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    sub_100008D04(v180, qword_1003FAB30);
    v158 = v141;

    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *&v192 = swift_slowAlloc();
      *v161 = 136315394;
      *(v161 + 4) = sub_10021145C(*(v189 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v189 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v192);
      *(v161 + 12) = 2080;
      v162 = [v158 debugDescription];
      v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v165 = v164;

      v166 = v163;
      v42 = v186;
      v167 = sub_10021145C(v166, v165, &v192);
      v76 = v185;

      *(v161 + 14) = v167;
      _os_log_impl(&_mh_execute_header, v159, v160, "%s - Reporting Preflight Event %s", v161, 0x16u);
      swift_arrayDestroy();
      v80 = v189;
    }

    [*(v80 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v158];
    sub_1001B8338(v75, v143, v178, v42, v76);
  }

  else
  {
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Claim code hash was not found in idMS response.", v84, 2u);
    }

    v85 = swift_allocObject();
    v86 = v183;
    *(v85 + 16) = sub_10016D57C;
    *(v85 + 24) = v86;

    sub_1001674A8(v187, v179, sub_10016D578, v85);
  }

LABEL_43:

  v156 = v188;
}

uint64_t sub_10016BA4C(void *a1, void *a2, void (*a3)(uint64_t, char *, uint64_t, void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t, char *, uint64_t, void *))
{
  v204 = a8;
  v202 = a5;
  v199 = a3;
  v200 = a2;
  v207 = a13;
  v196 = type metadata accessor for SHA256Digest();
  v195 = *(v196 - 8);
  v21 = *(v195 + 64);
  __chkstk_darwin(v196);
  v192 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for SHA256();
  v193 = *(v194 - 8);
  v23 = *(v193 + 64);
  v24 = __chkstk_darwin(v194);
  v191 = &v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v197 = &v186 - v26;
  v27 = type metadata accessor for BeneficiaryInfoRecord();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  v32 = v204;
  v31[2] = a7;
  v31[3] = v32;
  v198 = a9;
  v31[4] = a9;
  v31[5] = a10;
  v33 = swift_allocObject();
  v34 = v202;
  v33[2] = a4;
  v33[3] = v34;
  v35 = v207;
  v33[4] = a6;
  v33[5] = v35;
  v201 = v33;
  v33[6] = v31;
  sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  v206 = a1;
  sub_100168334(a1, v30);
  v208 = a7;
  swift_retain_n();
  v36 = v32;
  v204 = a10;
  swift_retain_n();
  v37 = v36;
  v207 = a4;
  swift_errorRetain();
  v38 = v34;
  v205 = a6;

  v202 = v31;

  v39 = sub_1001E36E8(v30);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_100008D04(v40, qword_1003FAAB8);
  v42 = v39;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&_mh_execute_header, v43, v44, "BeneficiaryInfo: %@", v45, 0xCu);
    sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);
  }

  v48 = v200;
  v49 = v200[2];
  v50 = v205;
  v203 = v37;
  if (v49 && (v51 = sub_10031AF8C(v206), (v52 & 1) != 0))
  {
    v53 = v48[7] + 32 * v51;
    v54 = *(v53 + 24);
    v200 = *(v53 + 16);

    v206 = v42;
    v55 = [v42 accessKey];
    v199 = a17;
    if (v55 && (v56 = v55, v57 = [v55 claimTokenString], v56, v57))
    {
      v188 = v54;
      v189 = v38;
      v190 = v40;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = sub_100170228(v58, v60);
      v63 = v62;
      SHA256.init()();
      sub_100168520(&unk_1003DA8A0, &type metadata accessor for SHA256);
      v64 = v191;
      v65 = v194;
      dispatch thunk of HashFunction.init()();
      sub_100015D6C(v61, v63);
      v187 = v61;
      sub_10018F16C(v61, v63);
      sub_100012324(v61, v63);
      v66 = v192;
      dispatch thunk of HashFunction.finalize()();
      v193 = *(v193 + 8);
      (v193)(v64, v65);
      v67 = v196;
      v212 = v196;
      v213 = sub_100168520(&qword_1003D8D70, &type metadata accessor for SHA256Digest);
      v68 = sub_10000DBEC(&v211);
      v69 = v195;
      (*(v195 + 16))(v68, v66, v67);
      sub_1000080F8(&v211, v212);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v69 + 8))(v66, v67);
      v70 = v217;
      sub_10000839C(&v211);
      sub_100012324(v187, v63);
      (v193)(v197, v65);
      *&v211 = sub_100166018(v70, *(&v70 + 1));
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v71 = BidirectionalCollection<>.joined(separator:)();
      v73 = v72;
      sub_100012324(v70, *(&v70 + 1));

      v197 = v41;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v211 = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_10021145C(v71, v73, &v211);
        _os_log_impl(&_mh_execute_header, v74, v75, "localClaimCodeHash: %s", v76, 0xCu);
        sub_10000839C(v77);
      }

      v78 = v188;

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();

      v81 = os_log_type_enabled(v79, v80);
      v82 = v208;
      v83 = v205;
      if (v81)
      {
        v84 = v208;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v211 = v86;
        *v85 = 136315138;
        v87 = v200;
        *(v85 + 4) = sub_10021145C(v200, v78, &v211);
        _os_log_impl(&_mh_execute_header, v79, v80, "idMS ClaimCode Hash: %s", v85, 0xCu);
        sub_10000839C(v86);

        v82 = v84;

        v88 = v204;
        v89 = v203;
        v90 = v190;
      }

      else
      {

        v88 = v204;
        v89 = v203;
        v90 = v190;
        v87 = v200;
      }

      *&v211 = v71;
      *(&v211 + 1) = v73;
      *&v217 = v87;
      *(&v217 + 1) = v78;
      sub_1000709A0();
      v131 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.debug.getter();
      v134 = os_log_type_enabled(v132, v133);
      if (v131)
      {
        v135 = v83;
        if (v134)
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&_mh_execute_header, v132, v133, "🌧️ Claim code does not match.", v136, 2u);
        }

        type metadata accessor for InheritanceError(0);
        *&v211 = 2100;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v137 = v218;
        v138 = _convertErrorToNSError(_:)();

        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v140;
        v212 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
        *&v211 = v138;
        sub_100070AF0(&v211, &v217);
        v142 = v138;

        v197 = v89;

        v143 = v142;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v216 = &_swiftEmptyDictionarySingleton;
        sub_1002CF8B4(&v217, v139, v141, isUniquelyReferenced_nonNull_native);

        v200 = v143;
        if (v207)
        {
          swift_getErrorValue();
          v145 = v210;
          swift_errorRetain();
          sub_100256810(v145);
          swift_getErrorValue();
          v146 = sub_100256874(v209);
          v147 = objc_allocWithZone(NSError);
          v148 = String._bridgeToObjectiveC()();

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v150 = v147;
          v151 = v189;
          v152 = [v150 initWithDomain:v148 code:v146 userInfo:isa];

          v153 = _convertErrorToNSError(_:)();
          [v151 populateUnderlyingErrorsStartingWithRootError:v153];
        }

        else
        {

          v157 = v143;
          v158 = _convertErrorToNSError(_:)();

          v151 = v189;
          [v189 populateUnderlyingErrorsStartingWithRootError:v158];
        }

        v159 = v206;
        if (qword_1003D7F70 != -1)
        {
          swift_once();
        }

        sub_100008D04(v190, qword_1003FAB30);
        v160 = v151;

        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          *&v211 = v206;
          *v163 = 136315394;
          *(v163 + 4) = sub_10021145C(*(v135 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v135 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v211);
          *(v163 + 12) = 2080;
          v164 = v159;
          v165 = [v160 debugDescription];
          v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v168 = v167;

          v169 = v166;
          v135 = v205;
          v170 = sub_10021145C(v169, v168, &v211);
          v171 = v199;
          v172 = v208;

          *(v163 + 14) = v170;
          v159 = v164;
          v88 = v204;
          _os_log_impl(&_mh_execute_header, v161, v162, "%s - Reporting Preflight Event %s", v163, 0x16u);
          swift_arrayDestroy();

          v89 = v203;
        }

        else
        {

          v89 = v203;
          v172 = v208;
          v171 = v199;
        }

        [*(v135 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v160];
        v173 = v197;
        v171(v172, v197, v198, v88);
      }

      else
      {
        if (v134)
        {
          v154 = swift_slowAlloc();
          *v154 = 0;
          _os_log_impl(&_mh_execute_header, v132, v133, "🌈 Claim code matches!", v154, 2u);
        }

        v155 = v89;

        if (v207)
        {
          v156 = _convertErrorToNSError(_:)();
        }

        else
        {
          v156 = 0;
        }

        v174 = v189;
        [v189 populateUnderlyingErrorsStartingWithRootError:v156];

        if (qword_1003D7F70 != -1)
        {
          swift_once();
        }

        sub_100008D04(v90, qword_1003FAB30);
        v175 = v174;

        v176 = Logger.logObject.getter();
        v177 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *&v211 = swift_slowAlloc();
          *v178 = 136315394;
          *(v178 + 4) = sub_10021145C(*(v83 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v83 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v211);
          *(v178 + 12) = 2080;
          v179 = [v175 debugDescription];
          v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v182 = v181;

          v88 = v204;
          v183 = sub_10021145C(v180, v182, &v211);
          v83 = v205;

          *(v178 + 14) = v183;
          _os_log_impl(&_mh_execute_header, v176, v177, "%s - Reporting Preflight Event %s", v178, 0x16u);
          swift_arrayDestroy();
          v89 = v203;

          v82 = v208;
        }

        v184 = v199;
        [*(v83 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v175];
        v184(v82, v155, v198, v88);
      }
    }

    else
    {

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Claim code hash was not found in local CK record.", v98, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v211 = 2102;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v99 = v218;
      v100 = _convertErrorToNSError(_:)();

      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;
      v212 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v211 = v100;
      sub_100070AF0(&v211, &v217);
      v104 = v100;

      v197 = v37;
      v105 = v204;

      v200 = v104;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v216 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v217, v101, v103, v106);

      if (v207)
      {
        swift_getErrorValue();
        v107 = v215;
        swift_errorRetain();
        sub_100256810(v107);
        swift_getErrorValue();
        v108 = sub_100256874(v214);
        v109 = v38;
        v110 = objc_allocWithZone(NSError);
        v111 = String._bridgeToObjectiveC()();

        v112 = Dictionary._bridgeToObjectiveC()().super.isa;

        v113 = v110;
        v38 = v109;
        v114 = [v113 initWithDomain:v111 code:v108 userInfo:v112];

        v115 = _convertErrorToNSError(_:)();
        [v109 populateUnderlyingErrorsStartingWithRootError:v115];
      }

      else
      {

        v116 = v200;
        v117 = _convertErrorToNSError(_:)();

        [v38 populateUnderlyingErrorsStartingWithRootError:v117];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v40, qword_1003FAB30);
      v118 = v38;

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *&v211 = swift_slowAlloc();
        *v121 = 136315394;
        *(v121 + 4) = sub_10021145C(*(v50 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v50 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v211);
        *(v121 + 12) = 2080;
        v122 = [v118 debugDescription];
        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;

        v126 = v123;
        v50 = v205;
        v127 = sub_10021145C(v126, v125, &v211);
        v128 = v199;
        v129 = v208;

        *(v121 + 14) = v127;
        v105 = v204;
        _os_log_impl(&_mh_execute_header, v119, v120, "%s - Reporting Preflight Event %s", v121, 0x16u);
        swift_arrayDestroy();

        v89 = v203;
      }

      else
      {

        v89 = v203;
        v129 = v208;
        v128 = v199;
      }

      [*(v50 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v118];
      v130 = v197;
      v128(v129, v197, v198, v105);
    }
  }

  else
  {
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Claim code hash was not found in idMS response.", v93, 2u);
    }

    v94 = swift_allocObject();
    v95 = v201;
    *(v94 + 16) = a15;
    *(v94 + 24) = v95;

    sub_1001674A8(v206, v199, a16, v94);

    v89 = v203;
  }
}

uint64_t sub_10016D368()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10016D3A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10016D408()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10016D46C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10016D4EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10016D580()
{
  type metadata accessor for BenefactorAccessKeyHealthCheck();
  sub_100005814(&qword_1003E0D28, &unk_100344410);
  result = String.init<A>(describing:)();
  qword_1003E0C48 = result;
  unk_1003E0C50 = v1;
  return result;
}

uint64_t sub_10016D5D4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAB8);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v10 = 136315394;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v10 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v21);
      *(v10 + 12) = 2080;
      v21[3] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v11 = String.init<A>(describing:)();
      v13 = sub_10021145C(v11, v12, v21);

      *(v10 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s - failed to fetch manatee status: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    v14 = a1;
    return a3(v14);
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAB8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v19 = 136315138;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - manatee is not enabled, no benefactor access key checks needed.", v19, 0xCu);
      sub_10000839C(v20);
    }

    v14 = 0;
    return a3(v14);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10016D958(a3, a4);
  }

  return result;
}

void sub_10016D958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100005814(&qword_1003E0D30, qword_100344420);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - v10;
  (*(v8 + 16))(aBlock - v10, v3 + OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__inheritanceManager, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v12 = aBlock[0];
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v3;
  v13[5] = v6;
  aBlock[4] = sub_10016FD84;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10016F5FC;
  aBlock[3] = &unk_1003ABA38;
  v14 = _Block_copy(aBlock);

  [v12 fetchBenefactorsWithCompletion:v14];
  _Block_release(v14);
}

uint64_t sub_10016DB54()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__inheritanceManager;
  v2 = sub_100005814(&qword_1003E0D30, qword_100344420);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__storageController;
  v4 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BenefactorAccessKeyHealthCheck()
{
  result = qword_1003E0C90;
  if (!qword_1003E0C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016DC9C()
{
  sub_10016DD68();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10016DDC0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10016DD68()
{
  if (!qword_1003E0CA0)
  {
    type metadata accessor for InheritanceRequestManager();
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E0CA0);
    }
  }
}

void sub_10016DDC0()
{
  if (!qword_1003E1160)
  {
    sub_100008CBC(&unk_1003E01A0, &qword_1003443F0);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E1160);
    }
  }
}

uint64_t sub_10016DE50(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, NSObject *a6)
{
  v63 = a6;
  v64 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    a3(a2);
  }

  else
  {
    v58 = v16;
    v59 = v14;
    v27 = v63;
    v62 = v10;
    v53 = v25;
    v54 = v23;
    v55 = v22;
    v65 = a1;
    v57 = v19;
    if (qword_1003D7F48 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v56 = a4;
      v28 = type metadata accessor for Logger();
      sub_100008D04(v28, qword_1003FAAB8);
      v29 = v65;

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      v32 = os_log_type_enabled(v30, v31);
      v60 = v15;
      v61 = v11;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v33 = 136315394;
        if (qword_1003D7E10 != -1)
        {
          swift_once();
        }

        *(v33 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, aBlock);
        *(v33 + 12) = 2048;
        if (v65)
        {
          a4 = v27;
          v35 = v65 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        else
        {
          a4 = v27;
          v35 = 0;
        }

        *(v33 + 14) = v35;
        v11 = v65;

        _os_log_impl(&_mh_execute_header, v30, v31, "%s - performing access key health check on %ld benefactors", v33, 0x16u);
        sub_10000839C(v34);
      }

      else
      {
        a4 = v27;

        v11 = v29;
      }

      v63 = dispatch_group_create();
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      if (!v11)
      {
        break;
      }

      v27 = (v11 & 0xFFFFFFFFFFFFFF8);
      if (v11 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
        if (!v37)
        {
          break;
        }
      }

      else
      {
        v37 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v37)
        {
          break;
        }
      }

      v38 = 0;
      v15 = v11 & 0xC000000000000001;
      v39 = a3;
      while (1)
      {
        if (v15)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v38 >= v27[2].isa)
          {
            goto LABEL_28;
          }

          v40 = *(v11 + 8 * v38 + 32);
        }

        v11 = v40;
        a3 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          break;
        }

        aBlock[0] = v40;
        sub_10016E508(aBlock, v63, v64, v36, a4);

        ++v38;
        v41 = a3 == v37;
        a3 = v39;
        v11 = v65;
        if (v41)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      swift_once();
    }

LABEL_31:
    sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
    v43 = v53;
    v42 = v54;
    v44 = v55;
    (*(v54 + 104))(v53, enum case for DispatchQoS.QoSClass.background(_:), v55);
    v45 = static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v43, v44);
    v46 = swift_allocObject();
    v47 = v56;
    v46[2] = a3;
    v46[3] = v47;
    v46[4] = v36;
    aBlock[4] = sub_1000C540C;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003ABAB0;
    v48 = _Block_copy(aBlock);

    v49 = v57;
    static DispatchQoS.unspecified.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_10016FE34(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v50 = v59;
    v51 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v52 = v63;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();

    _Block_release(v48);
    (*(v61 + 8))(v50, v51);
    (*(v58 + 8))(v49, v60);
  }
}

void sub_10016E508(void **a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if ([v14 status] == 2)
  {
    dispatch_group_enter(a2);
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a4;
    v15[4] = a2;
    v15[5] = a5;
    v16 = v14;

    v17 = a2;
    sub_10016EB80(v16, sub_10016FEC4, v15);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAB8);
    v19 = v14;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v22 = 136315394;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, &v29);
      *(v22 + 12) = 2080;
      v23 = [v19 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v10 + 8))(v13, v9);
      v27 = sub_10021145C(v24, v26, &v29);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - BenefactorInfoRecord with beneficiaryID - %s is not accepted. Skipping health check.", v22, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_10016E86C(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    v14 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v26 = a4;
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27[0] = v25;
      *v17 = 136315394;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v17 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v27);
      *(v17 + 12) = 2080;
      v18 = [v14 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v9 + 8))(v12, v8);
      v22 = sub_10021145C(v19, v21, v27);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s - health check failed for benefactor - %s", v17, 0x16u);
      swift_arrayDestroy();

      a4 = v26;
    }

    else
    {
    }

    swift_beginAccess();
    v23 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(a4);
}

void sub_10016EB80(void *a1, uint64_t a2, void *a3)
{
  v93 = a2;
  v94 = a3;
  v92 = *v3;
  v5 = sub_100005814(&qword_1003E0D30, qword_100344420);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v82[-v8];
  v95 = type metadata accessor for UUID();
  v10 = *(v95 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v95);
  __chkstk_darwin(v12);
  v14 = &v82[-v13];
  v15 = [a1 accessKey];
  if (v15)
  {
    v16 = v14;
    v17 = v10;

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAB8);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *&v96[0] = swift_slowAlloc();
      *v22 = 136315394;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v96);
      *(v22 + 12) = 2080;
      v23 = [v19 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID);
      v24 = v95;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v24;
      v28 = v27;
      (*(v17 + 8))(v16, v26);
      v29 = sub_10021145C(v25, v28, v96);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s - BenefactorInfoRecord with beneficiaryID - %s has an access key. No repair needed.", v22, 0x16u);
      swift_arrayDestroy();
    }

    (v93)(0);
  }

  else
  {
    v85 = v3;
    v86 = v9;
    v88 = &v82[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v89 = v6;
    v87 = v11;
    v90 = v10;
    v91 = v14;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);
    v31 = a1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v89;
    v36 = v5;
    v37 = v85;
    if (v34)
    {
      v83 = v33;
      v84 = v32;
      v38 = swift_slowAlloc();
      *&v96[0] = swift_slowAlloc();
      *v38 = 136315394;
      v39 = v86;
      if (qword_1003D7E10 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v96);
      *(v38 + 12) = 2080;
      v40 = [v31 beneficiaryID];
      v41 = v91;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID);
      v42 = v95;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v42;
      v46 = v45;
      (*(v90 + 8))(v41, v44);
      v47 = sub_10021145C(v43, v46, v96);

      *(v38 + 14) = v47;
      v48 = v84;
      _os_log_impl(&_mh_execute_header, v84, v83, "%s - BenefactorInfoRecord with beneficiaryID - %s missing access key. Attempting repair by re-sending acceptance status.", v38, 0x16u);
      swift_arrayDestroy();

      v35 = v89;
    }

    else
    {

      v41 = v91;
      v39 = v86;
    }

    (v35)[2](v39, v37 + OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__inheritanceManager, v36);
    Dependency.wrappedValue.getter();
    (v35[1])(v39, v36);
    v49 = *&v96[0];
    v89 = *&v96[0];
    v50 = [v31 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = swift_allocObject();
    v52 = v93;
    v53 = v94;
    v51[2] = v31;
    v51[3] = v52;
    v54 = v92;
    v51[4] = v53;
    v51[5] = v54;
    v55 = v51;
    v86 = v51;
    v93 = v49 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_invitationResponder;
    v56 = objc_allocWithZone(type metadata accessor for InheritanceInvitationActionAnalyticsEvent());
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    v58 = v41;
    strcpy((inited + 32), "isFamilyInvite");
    *(inited + 47) = -18;
    v59 = v31;

    *(inited + 48) = Bool._bridgeToObjectiveC()();
    *(inited + 56) = 0xD000000000000013;
    *(inited + 64) = 0x8000000100330290;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    v60 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_10033EB30;
    strcpy((v61 + 32), "didCDPRepair");
    *(v61 + 45) = 0;
    *(v61 + 46) = -5120;
    LOBYTE(v96[0]) = 2;
    String.init<A>(describing:)();
    v62 = String._bridgeToObjectiveC()();

    *(v61 + 48) = v62;
    sub_1003093D0(v61);
    swift_setDeallocating();
    sub_10016FF1C(v61 + 32);
    v92 = v60;
    dispatch thunk of AAFTimedAnalyticsEvent.appendEvent(data:)();

    v63 = swift_allocObject();
    *(v63 + 16) = 1;
    *(v63 + 24) = v60;
    *(v63 + 32) = sub_10016FF10;
    *(v63 + 40) = v55;
    v64 = v93;
    v94 = sub_1000080F8((v93 + 40), *(v93 + 64));
    sub_10016FFDC(v64, v96);
    v65 = v90;
    v66 = v88;
    (*(v90 + 16))(v88, v58, v95);
    v67 = (*(v65 + 80) + 136) & ~*(v65 + 80);
    v68 = (v87 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    v70 = v96[5];
    *(v69 + 80) = v96[4];
    *(v69 + 96) = v70;
    *(v69 + 112) = v96[6];
    *(v69 + 128) = v97;
    v71 = v96[1];
    *(v69 + 16) = v96[0];
    *(v69 + 32) = v71;
    v72 = v96[3];
    *(v69 + 48) = v96[2];
    *(v69 + 64) = v72;
    v73 = v66;
    v74 = v95;
    (*(v65 + 32))(v69 + v67, v73, v95);
    v75 = v92;
    *(v69 + v68) = v92;
    v76 = v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v76 = sub_10016FF10;
    *(v76 + 8) = v86;
    *(v76 + 16) = 1;
    v77 = (v69 + ((v68 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v77 = sub_10016FFCC;
    v77[1] = v63;
    v78 = *v94;
    v79 = v75;
    swift_retain_n();
    v80 = v79;

    v81 = v91;
    sub_10021B0E8(v91, sub_100170158, v69);

    (*(v65 + 8))(v81, v74);
  }
}

uint64_t sub_10016F5FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100016034(0, &qword_1003E3170, AABenefactorInfo_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10016F6A0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a3(a1);
  }

  swift_errorRetain();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAB8);
  swift_errorRetain();
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v15, v16))
  {

    return a3(a1);
  }

  v27 = a4;
  v28 = a3;
  v17 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  *v17 = 136315650;
  if (qword_1003D7E10 != -1)
  {
    swift_once();
  }

  *(v17 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, &v30);
  *(v17 + 12) = 2080;
  v18 = [v14 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  v21 = v20;
  (*(v9 + 8))(v12, v8);
  v22 = sub_10021145C(v19, v21, &v30);

  *(v17 + 14) = v22;
  *(v17 + 22) = 2080;
  v29 = a1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v23 = String.init<A>(describing:)();
  v25 = sub_10021145C(v23, v24, &v30);

  *(v17 + 24) = v25;
  _os_log_impl(&_mh_execute_header, v15, v16, "%s - failed to send acceptance response for %s: %s", v17, 0x20u);
  swift_arrayDestroy();

  return v28(a1);
}

uint64_t sub_10016FA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24[-1] - v10;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAB8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v23 = v6;
    v15 = a1;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136315138;
    if (qword_1003D7E10 != -1)
    {
      swift_once();
    }

    *(v16 + 4) = sub_10021145C(qword_1003E0C48, unk_1003E0C50, v24);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s - started.", v16, 0xCu);
    sub_10000839C(v17);

    a1 = v15;
    v6 = v23;
  }

  else
  {
  }

  (*(v8 + 16))(v11, v3 + OBJC_IVAR____TtC13appleaccountd30BenefactorAccessKeyHealthCheck__storageController, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v18 = sub_1000080F8(v24, v24[3]);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = v19;
  v20[5] = v6;
  v21 = *v18;

  sub_10021E8F0(sub_10016FD74, v20);

  return sub_10000839C(v24);
}

uint64_t sub_10016FD34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10016FD74(uint64_t a1, char a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return sub_10016D5D4(a1, a2 & 1, *(v2 + 16), *(v2 + 24));
}

uint64_t sub_10016FD90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10016FDA8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10016FDE8(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_10016FE34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016FE7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10016FED0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10016FF1C(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003E8C10, &unk_100344990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016FF84()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100170038()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  (*(v2 + 8))(v0 + v3, v1);

  v5 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  if (*v5)
  {
    v6 = v5[1];
  }

  v7 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_100170158(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002068A0(a1, (v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100170228(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100005814(&qword_1003E0E50, &qword_1003444A8);
  if (swift_dynamicCast())
  {
    sub_10003E950(__src, &v41);
    sub_1000080F8(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_10000839C(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100008D3C(__src, &qword_1003E0E58, &unk_1003444B0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
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

  sub_10018EB64(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10018F8DC(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_10018EC2C(sub_1001928D4);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_10018F0F0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_10018F0F0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100015D58(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100015D58(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_100015D6C(*&__src[0], *(&__src[0] + 1));

  sub_100012324(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100170748()
{
  type metadata accessor for BenefactorHealthCheck();
  sub_100005814(&qword_1003E0E10, &unk_100344470);
  result = String.init<A>(describing:)();
  qword_1003E0D38 = result;
  unk_1003E0D40 = v1;
  return result;
}

uint64_t sub_10017079C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v71 = *(v17 - 8);
  v18 = *(v71 + 64);
  __chkstk_darwin(v17);
  v70 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  if (a2)
  {
    if (qword_1003D7F48 == -1)
    {
LABEL_3:
      v25 = type metadata accessor for Logger();
      sub_100008D04(v25, qword_1003FAAB8);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      sub_1000399DC(a1, 1);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v28 = 136315394;
        if (qword_1003D7E18 != -1)
        {
          swift_once();
        }

        *(v28 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, aBlock);
        *(v28 + 12) = 2080;
        v72 = a1;
        swift_errorRetain();
        sub_100005814(&unk_1003DBB60, &unk_10033E740);
        v29 = String.init<A>(describing:)();
        v31 = sub_10021145C(v29, v30, aBlock);

        *(v28 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s - failed to start health check. An error occured while fetching benefactors. Error :- %s", v28, 0x16u);
        swift_arrayDestroy();
      }

      return a3(a1);
    }

LABEL_28:
    swift_once();
    goto LABEL_3;
  }

  v69 = a3;
  a3 = *(a1 + 16);
  if (a3)
  {
    v61 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = v24;
    v63 = v22;
    v65 = v17;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v66 = v13;
    v68 = a4;
    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAB8);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    v36 = os_log_type_enabled(v34, v35);
    v67 = v12;
    v64 = v16;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, aBlock);
      *(v37 + 12) = 2048;
      *(v37 + 14) = a3;
      sub_1000399DC(a1, 0);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - performing health check on %ld benefactors", v37, 0x16u);
      sub_10000839C(v38);
    }

    else
    {
      sub_1000399DC(a1, 0);
    }

    v46 = dispatch_group_create();
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v48 = 0;
    v49 = *(type metadata accessor for BenefactorInfoRecord() - 8);
    while (1)
    {
      v50 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        break;
      }

      sub_1001710BC(a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48++, v46, a5, v47, a6);
      if (v50 == a3)
      {
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v52 = v61;
        v51 = v62;
        v53 = v63;
        (*(v62 + 104))(v61, enum case for DispatchQoS.QoSClass.background(_:), v63);
        v54 = static OS_dispatch_queue.global(qos:)();
        (*(v51 + 8))(v52, v53);
        v55 = swift_allocObject();
        v56 = v68;
        v55[2] = v69;
        v55[3] = v56;
        v55[4] = v47;
        aBlock[4] = sub_1000C540C;
        aBlock[5] = v55;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        aBlock[3] = &unk_1003ABC10;
        v57 = _Block_copy(aBlock);

        v58 = v70;
        static DispatchQoS.unspecified.getter();
        v72 = _swiftEmptyArrayStorage;
        sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
        v59 = v64;
        v60 = v67;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();

        _Block_release(v57);
        (*(v66 + 8))(v59, v60);
        (*(v71 + 8))(v58, v65);
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100008D04(v39, qword_1003FAAB8);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v69;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136315138;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v44 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, aBlock);
    _os_log_impl(&_mh_execute_header, v40, v41, "%s - no benefactors found. Skipping Benefactor Health Check", v44, 0xCu);
    sub_10000839C(v45);
  }

  return v43(0);
}

void sub_1001710BC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v10 = type metadata accessor for BenefactorInfoRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v31 - v16;
  if (*(a1 + *(v15 + 32)) == 2)
  {
    dispatch_group_enter(a2);
    sub_100194C44(a1, v17, type metadata accessor for BenefactorInfoRecord);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31[1] = a3;
    v31[2] = v5;
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    sub_100194EC4(v17, v21 + v18, type metadata accessor for BenefactorInfoRecord);
    *(v21 + v19) = a4;
    *(v21 + v20) = a2;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;

    v22 = a2;
    sub_1001717B4(a1, sub_10018FF1C, v21);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);
    sub_100194C44(a1, v14, type metadata accessor for BenefactorInfoRecord);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v26 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, &v33);
      *(v26 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_100195024(v14, type metadata accessor for BenefactorInfoRecord);
      v30 = sub_10021145C(v27, v29, &v33);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s - BenefactorInfoRecord with beneficiaryID - %s is not accepted. Skipping health check.", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100195024(v14, type metadata accessor for BenefactorInfoRecord);
    }
  }
}

void sub_1001714C4(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for BenefactorInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_100194C44(a2, v11, type metadata accessor for BenefactorInfoRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v15 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v22);
      *(v15 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_100195024(v11, type metadata accessor for BenefactorInfoRecord);
      v19 = sub_10021145C(v16, v18, v22);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - failed for benefactor - %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100195024(v11, type metadata accessor for BenefactorInfoRecord);
    }

    swift_beginAccess();
    v20 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1001717B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a2;
  v44 = a3;
  v42 = *v3;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for BenefactorInfoRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAB8);
  v45 = a1;
  sub_100194C44(a1, v16, type metadata accessor for BenefactorInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v39 = v12;
    v40 = v3;
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46[0] = v38;
    *v20 = 136315394;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v20 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v46);
    *(v20 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100195024(v16, type metadata accessor for BenefactorInfoRecord);
    v24 = sub_10021145C(v21, v23, v46);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s - fetching health record for beneficiaryID: %s", v20, 0x16u);
    swift_arrayDestroy();

    v12 = v39;
    v4 = v40;
  }

  else
  {

    sub_100195024(v16, type metadata accessor for BenefactorInfoRecord);
  }

  (*(v7 + 16))(v10, v4 + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v25 = sub_1000080F8(v46, v46[3]);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v45;
  v28 = v41;
  sub_100194C44(v45, v41, type metadata accessor for BenefactorInfoRecord);
  v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_100194EC4(v28, v32 + v29, type metadata accessor for BenefactorInfoRecord);
  v33 = (v32 + v30);
  v34 = v44;
  *v33 = v43;
  v33[1] = v34;
  *(v32 + v31) = v26;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
  v35 = *v25;

  sub_10021CBFC(v27, sub_100190160, v32);

  return sub_10000839C(v46);
}

uint64_t sub_100171CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v5 = *v3;
  v47 = a2;
  v48 = v5;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v45 = v15;
  v46 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  v44 = *(v12 + 16);
  v44(v17, a1, v11);
  v19 = v11;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v41 = v7;
    v42 = v6;
    v22 = v19;
    v43 = a1;
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51[0] = v40;
    *v23 = 136315394;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v23 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v51);
    *(v23 + 12) = 2080;
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v12 + 8))(v17, v22);
    v27 = sub_10021145C(v24, v26, v51);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s - starting individual beneficiary health check for %s", v23, 0x16u);
    swift_arrayDestroy();

    v28 = v22;
    v6 = v42;
    a1 = v43;
    v7 = v41;
  }

  else
  {

    (*(v12 + 8))(v17, v19);
    v28 = v19;
  }

  v29 = v49;
  (*(v7 + 16))(v10, v49 + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v30 = sub_1000080F8(v51, v51[3]);
  v31 = v46;
  v44(v46, a1, v28);
  v32 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v33 = (v45 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v28;
  v36 = v34;
  v37 = v47;
  *(v34 + 2) = v29;
  *(v34 + 3) = v37;
  *(v34 + 4) = v50;
  (*(v12 + 32))(&v34[v32], v31, v35);
  *(v36 + v33) = v48;
  v38 = *v30;

  sub_10021B0E8(a1, sub_100194758, v36);

  return sub_10000839C(v51);
}

uint64_t sub_1001721D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v35);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BenefactorInfoRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v34 - v17);
  sub_100012D04(a1, v34 - v17, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34[1] = a4;
    v19 = *v18;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAB8);
    v21 = v37;
    v22 = v35;
    (*(v37 + 16))(v10, v36, v35);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v25 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, &v38);
      *(v25 + 12) = 2080;
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v22;
      v30 = v29;
      (*(v37 + 8))(v10, v28);
      v31 = sub_10021145C(v27, v30, &v38);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2112;
      v32 = _convertErrorToNSError(_:)();
      *(v25 + 24) = v32;
      *v26 = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - error fetching beneficiary record for %s: %@", v25, 0x20u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      (*(v21 + 8))(v10, v22);
    }

    swift_errorRetain();
    a3(v19);
  }

  else
  {
    sub_100194EC4(v18, v14, type metadata accessor for BenefactorInfoRecord);
    sub_1001717B4(v14, a3, a4);
    return sub_100195024(v14, type metadata accessor for BenefactorInfoRecord);
  }
}