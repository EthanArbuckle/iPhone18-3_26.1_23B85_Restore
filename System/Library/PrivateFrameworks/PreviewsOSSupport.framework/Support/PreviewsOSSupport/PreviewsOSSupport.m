uint64_t sub_1000017C0()
{
  result = _set_user_dir_suffix();
  if ((result & 1) == 0)
  {
    v1 = UVLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_10002CC5C(v1);
    }

    exit(78);
  }

  return result;
}

dispatch_workloop_t sub_100001818(const char *a1)
{
  v1 = dispatch_workloop_create(a1);

  return v1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v25 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v24 = v9;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "previewsd starting up", v19, 2u);
    v9 = v24;
  }

  (*(v13 + 8))(v16, v12);
  sub_1000017C0();
  v20 = sub_100001818("com.apple.previewsd.workloop");
  qword_10003DC08 = v20;
  type metadata accessor for Daemon();
  swift_allocObject();
  qword_10003DC10 = sub_10001A32C(v20);
  aBlock[4] = sub_100001BEC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001C14;
  aBlock[3] = &unk_1000393B8;
  v21 = _Block_copy(aBlock);
  v22 = v25;
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100001C70();
  sub_100001CC8(&unk_10003CC60, &qword_10002E490);
  sub_100001D10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v22, v8);
  dispatch_main();
}

uint64_t sub_100001C14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100001C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100001C70()
{
  result = qword_10003D6C0;
  if (!qword_10003D6C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6C0);
  }

  return result;
}

uint64_t sub_100001CC8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001D10()
{
  result = qword_10003D6D0;
  if (!qword_10003D6D0)
  {
    sub_100001D74(&unk_10003CC60, &qword_10002E490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6D0);
  }

  return result;
}

uint64_t sub_100001D74(uint64_t *a1, uint64_t *a2)
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

BOOL sub_100001DEC(void *a1, uint64_t *a2)
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

uint64_t sub_100001E5C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100001EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100001FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PreviewsService.Variant();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for PreviewShellProxy()
{
  result = qword_10003CDF0;
  if (!qword_10003CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002128()
{
  type metadata accessor for PreviewsService.Variant();
  if (v0 <= 0x3F)
  {
    sub_1000021AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000021AC()
{
  if (!qword_10003CE00)
  {
    sub_100001D74(&qword_10003CE08, &qword_10002E4D8);
    sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8);
    v0 = type metadata accessor for ConcurrentOnDemand();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CE00);
    }
  }
}

uint64_t sub_100002250(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000022E8;

  return sub_100002CC4(a2);
}

uint64_t sub_1000022E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100002434, 0, 0);
  }
}

uint64_t sub_100002458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(type metadata accessor for PreviewShellProxy() + 20);
  v10 = async function pointer to ConcurrentOnDemand.invalidate(callsite:trace:)[1];
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  v12 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  *v11 = v6;
  v11[1] = sub_100002538;

  return ConcurrentOnDemand.invalidate(callsite:trace:)(a5, a6, v12);
}

uint64_t sub_100002538()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000262C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_100001CC8(&qword_10003CE40, &qword_10002E4E8);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(type metadata accessor for PreviewShellProxy() + 20);
  v7 = async function pointer to ConcurrentOnDemand.value.getter[1];
  v8 = swift_task_alloc();
  v2[8] = v8;
  v9 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  *v8 = v2;
  v8[1] = sub_100002760;

  return ConcurrentOnDemand.value.getter(v2 + 2, v9);
}

uint64_t sub_100002760()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100002B64, 0, 0);
  }

  else
  {
    v3[10] = v3[2];
    v4 = type metadata accessor for DaemonToShell();
    v5 = async function pointer to ShellConnection.makeSender<A>(for:)[1];
    v6 = swift_task_alloc();
    v3[11] = v6;
    v7 = sub_100004118(&qword_10003CE48, &type metadata accessor for DaemonToShell);
    *v6 = v3;
    v6[1] = sub_100002934;
    v8 = v3[7];

    return ShellConnection.makeSender<A>(for:)(v8, v4, v4, v7);
  }
}

uint64_t sub_100002934()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100002C10;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_100002A50;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100002A50()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_100004334(&qword_10003CE50, &qword_10003CE40, &qword_10002E4E8);
  sub_100004118(&qword_10003CE58, &type metadata accessor for DaemonToShell.TwoWayMessage);
  TransportSenderProtocol<>.send(message:reply:)();
  (*(v2 + 8))(v1, v3);
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100002B64()
{
  v1 = v0[9];
  v2 = v0[4];
  TransportReply.send(error:file:line:column:function:)();

  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002C10()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[4];
  TransportReply.send(error:file:line:column:function:)();

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100002CC4(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for PropertyList();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for ShellService();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = type metadata accessor for CancellationToken();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v1[13] = *(v9 + 64);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v10 = type metadata accessor for PreviewsService.Variant();
  v1[16] = v10;
  v11 = *(v10 - 8);
  v1[17] = v11;
  v12 = *(v11 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v1[20] = v13;
  v14 = *(v13 - 8);
  v1[21] = v14;
  v15 = *(v14 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100002F20, 0, 0);
}

uint64_t sub_100002F20()
{
  if (qword_10003CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_100003004;
  v2 = *(v0 + 32);

  return sub_100008E40(v2, 0);
}

uint64_t sub_100003004(int a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_100003AD4;
  }

  else
  {
    v5 = sub_10000311C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000311C()
{
  v92 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 32);
  static Logger.uv.getter();
  (*(v4 + 16))(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v81 = *(v0 + 232);
    v83 = *(v0 + 168);
    v85 = *(v0 + 160);
    v87 = *(v0 + 184);
    v8 = *(v0 + 152);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v91[0] = v12;
    *v11 = 136446466;
    sub_100004118(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_10001BD80(v13, v15, v91);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1026;
    *(v11 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully launched preview shell (%{public}s): %{public}d", v11, 0x12u);
    sub_1000041C8(v12);

    (*(v83 + 8))(v87, v85);
  }

  else
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    v20 = *(v0 + 152);
    v21 = *(v0 + 128);
    v22 = *(v0 + 136);

    (*(v22 + 8))(v20, v21);
    (*(v19 + 8))(v17, v18);
  }

  v23 = *(v0 + 200);
  v24 = *(v0 + 232);
  v25 = *(v0 + 120);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v29 = *(v0 + 56);
  v28 = *(v0 + 64);
  v30 = *(v0 + 32);
  type metadata accessor for PreviewAssertionManager();
  static PreviewAssertionManager.shared.getter();
  PreviewAssertionManager.takeActivePreviewAssertion(for:)();

  v31 = sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  (*(v27 + 104))(v26, enum case for ShellService.daemonPreviewService(_:), v28);
  default argument 2 of static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  v32 = static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  *(v0 + 208) = v32;
  if (v23)
  {
    v33 = *(v0 + 120);
    v34 = *(v0 + 88);
    v35 = *(v0 + 96);
    v37 = *(v0 + 72);
    v36 = *(v0 + 80);
    v38 = *(v0 + 64);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    (*(v37 + 8))(v36, v38);
    (*(v35 + 8))(v33, v34);
    v39 = *(v0 + 176);
    v41 = *(v0 + 136);
    v40 = *(v0 + 144);
    v42 = *(v0 + 128);
    v43 = *(v0 + 32);
    static Logger.uv.getter();
    (*(v41 + 16))(v40, v43, v42);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    LOBYTE(v39) = static os_log_type_t.error.getter();

    v88 = v39;
    v45 = os_log_type_enabled(v44, v39);
    v46 = *(v0 + 168);
    v47 = *(v0 + 176);
    v48 = *(v0 + 160);
    v50 = *(v0 + 136);
    v49 = *(v0 + 144);
    v51 = *(v0 + 128);
    if (v45)
    {
      v52 = swift_slowAlloc();
      v86 = v48;
      v80 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v91[0] = v84;
      *v52 = 136446466;
      sub_100004118(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v47;
      v55 = v54;
      (*(v50 + 8))(v49, v51);
      v56 = sub_10001BD80(v53, v55, v91);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2112;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 14) = v57;
      *v80 = v57;
      _os_log_impl(&_mh_execute_header, v44, v88, "Failed to launch & connect to preview shell (%{public}s): %@", v52, 0x16u);
      sub_100004160(v80);

      sub_1000041C8(v84);

      (*(v46 + 8))(v82, v86);
    }

    else
    {

      (*(v50 + 8))(v49, v51);
      (*(v46 + 8))(v47, v48);
    }

    v72 = *(v0 + 176);
    v71 = *(v0 + 184);
    v74 = *(v0 + 144);
    v73 = *(v0 + 152);
    v76 = *(v0 + 112);
    v75 = *(v0 + 120);
    v77 = *(v0 + 80);
    v90 = *(v0 + 56);
    swift_willThrow();

    v78 = *(v0 + 8);

    return v78();
  }

  else
  {
    v58 = v32;
    v60 = *(v0 + 112);
    v59 = *(v0 + 120);
    v61 = *(v0 + 96);
    v89 = *(v0 + 104);
    v62 = *(v0 + 80);
    v63 = *(v0 + 88);
    v64 = *(v0 + 64);
    v65 = *(v0 + 72);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    (*(v65 + 8))(v62, v64);
    ShellConnection.activate()();
    *(v0 + 16) = v58;
    (*(v61 + 16))(v60, v59, v63);
    v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v67 = swift_allocObject();
    (*(v61 + 32))(v67 + v66, v60, v63);
    sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8);
    ConcurrentInvalidatable.onInvalidation(_:)();

    *(v0 + 24) = v58;
    v68 = async function pointer to Transport.activation.getter[1];
    v69 = swift_task_alloc();
    *(v0 + 216) = v69;
    v70 = sub_100004334(&qword_10003CE70, &qword_10003CE08, &qword_10002E4D8);
    *v69 = v0;
    v69[1] = sub_1000038DC;

    return Transport.activation.getter(v31, v70);
  }
}

uint64_t sub_1000038DC()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_100003DE4;
  }

  else
  {
    v3 = sub_1000039F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000039F0()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[7];
  (*(v0[12] + 8))(v0[15], v0[11]);

  v8 = v0[1];
  v9 = v0[26];

  return v8(v9);
}

uint64_t sub_100003AD4()
{
  v38 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[4];
  static Logger.uv.getter();
  (*(v3 + 16))(v4, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  if (v9)
  {
    v35 = v0[20];
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37 = v34;
    *v16 = 136446466;
    sub_100004118(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant);
    v33 = v11;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v8;
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_10001BD80(v17, v19, &v37);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v32 = v21;
    _os_log_impl(&_mh_execute_header, v7, v31, "Failed to launch & connect to preview shell (%{public}s): %@", v16, 0x16u);
    sub_100004160(v32);

    sub_1000041C8(v34);

    (*(v10 + 8))(v33, v35);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v10 + 8))(v11, v12);
  }

  v23 = v0[22];
  v22 = v0[23];
  v25 = v0[18];
  v24 = v0[19];
  v27 = v0[14];
  v26 = v0[15];
  v28 = v0[10];
  v36 = v0[7];
  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_100003DE4()
{
  v39 = v0;
  v1 = v0[26];
  (*(v0[12] + 8))(v0[15], v0[11]);

  v2 = v0[28];
  v3 = v0[22];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[4];
  static Logger.uv.getter();
  (*(v4 + 16))(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[21];
  v12 = v0[22];
  v13 = v0[20];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];
  if (v10)
  {
    v36 = v0[20];
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v17 = 136446466;
    sub_100004118(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant);
    v34 = v12;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v9;
    v20 = v19;
    (*(v15 + 8))(v14, v16);
    v21 = sub_10001BD80(v18, v20, &v38);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v33 = v22;
    _os_log_impl(&_mh_execute_header, v8, v32, "Failed to launch & connect to preview shell (%{public}s): %@", v17, 0x16u);
    sub_100004160(v33);

    sub_1000041C8(v35);

    (*(v11 + 8))(v34, v36);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v11 + 8))(v12, v13);
  }

  v24 = v0[22];
  v23 = v0[23];
  v26 = v0[18];
  v25 = v0[19];
  v28 = v0[14];
  v27 = v0[15];
  v29 = v0[10];
  v37 = v0[7];
  swift_willThrow();

  v30 = v0[1];

  return v30();
}

uint64_t sub_100004118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004160(uint64_t a1)
{
  v2 = sub_100001CC8(&qword_10003CE68, &unk_10002EE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000041C8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004214()
{
  v1 = type metadata accessor for CancellationToken();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000429C()
{
  v1 = *(type metadata accessor for CancellationToken() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CancellationToken.cancel(dsoHandle:file:line:column:function:)();
}

uint64_t sub_100004334(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001D74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000437C(uint64_t a1)
{
  result = sub_1000043A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000043A4()
{
  result = qword_10003CE78;
  if (!qword_10003CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE78);
  }

  return result;
}

unint64_t sub_1000043F8(uint64_t a1)
{
  result = sub_100004420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100004420()
{
  result = qword_10003CE80[0];
  if (!qword_10003CE80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10003CE80);
  }

  return result;
}

uint64_t sub_1000044D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000044F0, 0, 0);
}

uint64_t sub_1000044F0()
{
  if (qword_10003CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000045D4;
  v2 = *(v0 + 24);

  return sub_100008E40(v2, 0);
}

uint64_t sub_1000045D4(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100004720, 0, 0);
  }
}

uint64_t sub_100004764()
{
  v1 = *(v0 + 16);
  v2 = static TimeoutError.timedOut(waitingFor:)();
  type metadata accessor for TimeoutError();
  sub_100004A24();
  v3 = swift_allocError();
  v2(v1);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100004890()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1000048C0()
{
  sub_100004890();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000490C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100004954(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004960(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000049BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100004A24()
{
  result = qword_10003CF88;
  if (!qword_10003CF88)
  {
    type metadata accessor for TimeoutError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF88);
  }

  return result;
}

unint64_t sub_100004AAC()
{
  type metadata accessor for LifecycleMonitor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_100005510(&_swiftEmptyArrayStorage);
  *(v0 + 112) = result;
  qword_10003DC18 = v0;
  return result;
}

void sub_100004AF8(void *a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_opt_self() predicateMatchingIdentifier:a2];
  sub_100001CC8(&qword_10003D068, &qword_10002E6C8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10002E640;
  *(v12 + 32) = v11;
  sub_100005464();
  v13 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  v15 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [v15 setValues:1];
  [a1 setStateDescriptor:v15];
  if (a3)
  {
    [a1 setEvents:1];
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 20) = a3 & 1;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  v18[4] = sub_1000054E8;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100004DC8;
  v18[3] = &unk_1000395B8;
  v17 = _Block_copy(v18);

  [a1 setUpdateHandler:v17];
  _Block_release(v17);
}

void sub_100004D04(int a1, id a2, void *a3, int a4, char a5, void (*a6)(void))
{
  if ([a2 pid] == a4)
  {
    if (a5)
    {
      v9 = [a3 exitEvent];
      if (!v9)
      {
        return;
      }

      goto LABEL_7;
    }

    v10 = [a3 state];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 taskState];

      if (v12 == 3)
      {
LABEL_7:
        a6();
      }
    }
  }
}

void sub_100004DC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

uint64_t sub_100004E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Identifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a1;
  (*(v5 + 32))(&v13[v12], &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_100014798(0, 0, v10, &unk_10002E6C0, v13);
}

uint64_t sub_100005048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100005068, a4, 0);
}

uint64_t sub_100005068()
{
  v1 = v0[2];
  sub_1000050C8(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000050C8(uint64_t a1)
{
  v3 = type metadata accessor for Identifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v1 + 112);
  if (*(v8 + 16))
  {

    v9 = sub_100010AC4(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      [v11 invalidate];
    }

    else
    {
    }
  }

  (*(v4 + 16))(v7, a1, v3);
  swift_beginAccess();
  sub_10001339C(0, v7);
  return swift_endAccess();
}

uint64_t sub_100005238()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000052A0()
{
  v1 = type metadata accessor for Identifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000536C(uint64_t a1)
{
  v4 = *(type metadata accessor for Identifier() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002538;

  return sub_100005048(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100005464()
{
  result = qword_10003D070;
  if (!qword_10003D070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003D070);
  }

  return result;
}

uint64_t sub_1000054B0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000054F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100005510(uint64_t a1)
{
  v2 = sub_100001CC8(&qword_10003D078, &qword_10002E6D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001CC8(&qword_10003D6E0, &qword_10002E6D8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005B8C(v10, v6, &qword_10003D078, &qword_10002E6D0);
      result = sub_100010AC4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Identifier();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1000056F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001CC8(&unk_10003D710, &qword_10002E6F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100010BDC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10000580C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001CC8(&qword_10003D090, &qword_10002E6F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100010BDC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100005910(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001CC8(&qword_10003D080, &qword_10002E6E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005B8C(v4, v13, &qword_10003D088, &qword_10002E6E8);
      result = sub_100010B98(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100005A4C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_100005A4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100005A5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001CC8(&qword_10003D098, qword_10002E700);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005B8C(v4, &v13, &qword_10003D0A0, &unk_10002F200);
      v5 = v13;
      v6 = v14;
      result = sub_100010BDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005A4C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100005B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001CC8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PreviewShellProxy();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100005CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PreviewShellProxy();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppManagerDaemon()
{
  result = qword_10003D100;
  if (!qword_10003D100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100005DB8()
{
  result = sub_100005E54();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PreviewShellProxy();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ConcurrentInvalidationHandle();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100005E54()
{
  result = qword_10003D110;
  if (!qword_10003D110)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10003D110);
  }

  return result;
}

uint64_t sub_100005EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v26 = a1;
  v25 = type metadata accessor for AppManagerDaemon();
  v29 = *(v25 - 8);
  v28 = *(v29 + 64);
  __chkstk_darwin(v25);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ExecutionLane();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  type metadata accessor for FutureSerialQueue();
  default argument 0 of FutureSerialQueue.init(on:)();
  v15 = FutureSerialQueue.__allocating_init(on:)();
  a3[3] = &type metadata for EmbeddedAppInstaller;
  a3[4] = &off_10003A298;
  *a3 = v15;
  v16 = *(v7 + 16);
  v16(v12, a1, v6);
  v17 = v25;
  v16(a3 + *(v25 + 20), v12, v6);
  v16(v10, v12, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v10, v6);
  LODWORD(v16) = *(type metadata accessor for PreviewShellProxy() + 20);
  sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  sub_100007DB0();
  ConcurrentOnDemand.init(create:)();
  v20 = *(v7 + 8);
  v20(v12, v6);
  *(a3 + *(v17 + 24)) = v30;
  v21 = v27;
  sub_100007FD4(a3, v27, type metadata accessor for AppManagerDaemon);
  v22 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v23 = swift_allocObject();
  sub_100008284(v21, v23 + v22, type metadata accessor for AppManagerDaemon);
  sub_100007AC8(&qword_10003D188);

  ConcurrentInvalidatable.onInvalidation(_:)();

  return (v20)(v26, v6);
}

uint64_t sub_100006294(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v34 = a1;
  v36 = type metadata accessor for InvalidationTrace();
  v33 = *(v36 - 8);
  v35 = *(v33 + 64);
  __chkstk_darwin(v36);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v3;
  v4 = type metadata accessor for PreviewShellProxy();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4 - 8);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - v8;
  v30 = &v27 - v8;
  v10 = type metadata accessor for Callsite();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = *(type metadata accessor for AppManagerDaemon() + 20);
  Callsite.init(_:_:_:_:)();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_100007FD4(v32 + v17, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PreviewShellProxy);
  v19 = v10;
  (*(v11 + 16))(v14, v16, v10);
  v20 = v33;
  (*(v33 + 16))(v3, v34, v36);
  v21 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v22 = (v5 + *(v11 + 80) + v21) & ~*(v11 + 80);
  v23 = v20;
  v24 = (v12 + *(v20 + 80) + v22) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_100008284(v28, v25 + v21, type metadata accessor for PreviewShellProxy);
  (*(v11 + 32))(v25 + v22, v14, v19);
  (*(v23 + 32))(v25 + v24, v29, v36);
  sub_100014798(0, 0, v30, &unk_10002E7F0, v25);

  return (*(v11 + 8))(v16, v19);
}

uint64_t sub_100006690(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ResetAppRequest();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for GrantExecutePermissionRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for CopyURLRequest();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for UninstallAppsRequest();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = type metadata accessor for InstallAppRequest();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();
  v18 = type metadata accessor for TransportReply();
  v2[19] = v18;
  v19 = *(v18 - 8);
  v2[20] = v19;
  v20 = *(v19 + 64) + 15;
  v2[21] = swift_task_alloc();
  v21 = type metadata accessor for AppManagerInterface.TwoWayMessage();
  v2[22] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10000694C, 0, 0);
}

uint64_t sub_10000694C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[2];
  sub_100001CC8(&qword_10003D190, &qword_10002E7D8);
  TransportMessage<>.body.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v6 = v0 + 21;
        v32 = v0[21];
        v33 = v0[2];
        v34 = v0[3];
        TransportMessage<>.reply.getter();
        sub_100022248(v32);
        v9 = v0 + 20;
        v10 = v0 + 19;
        goto LABEL_17;
      }

      v6 = v0 + 6;
      v13 = v0[6];
      v8 = v0[20];
      v7 = v0[21];
      v44 = v0[19];
      v9 = v0 + 5;
      v10 = v0 + 4;
      v14 = v0[2];
      v15 = v0[3];
      (*(v0[5] + 32))(v13, v0[23], v0[4]);
      TransportMessage<>.reply.getter();
      sub_10002AB84(v13, v7);
LABEL_9:
      (*(v8 + 8))(v7, v44);
LABEL_17:
      v35 = *v6;
      v36 = v0[23];
      v37 = v0[21];
      v38 = v0[18];
      v39 = v0[15];
      v40 = v0[12];
      v41 = v0[9];
      v42 = v0[6];
      (*(*v9 + 8))(v35, *v10);

      v43 = v0[1];

      return v43();
    }

    v19 = v0[21];
    v20 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[23], v0[7]);
    TransportMessage<>.reply.getter();
    v21 = swift_task_alloc();
    v0[25] = v21;
    *v21 = v0;
    v21[1] = sub_100006F84;
    v22 = v0[21];
    v23 = v0[9];
    v24 = v0[3];

    return sub_100028ED0(v23, v22);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v6 = v0 + 18;
      v16 = v0[18];
      v8 = v0[20];
      v7 = v0[21];
      v44 = v0[19];
      v9 = v0 + 17;
      v10 = v0 + 16;
      v17 = v0[2];
      v18 = v0[3];
      (*(v0[17] + 32))(v16, v0[23], v0[16]);
      TransportMessage<>.reply.getter();
      sub_100029A44(v16, v7);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v6 = v0 + 15;
      v5 = v0[15];
      v8 = v0[20];
      v7 = v0[21];
      v44 = v0[19];
      v9 = v0 + 14;
      v10 = v0 + 13;
      v11 = v0[2];
      v12 = v0[3];
      (*(v0[14] + 32))(v5, v0[23], v0[13]);
      TransportMessage<>.reply.getter();
      sub_10002A3B8(v5, v7);
      goto LABEL_9;
    }

    v26 = v0[21];
    v27 = v0[2];
    (*(v0[11] + 32))(v0[12], v0[23], v0[10]);
    TransportMessage<>.reply.getter();
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_100006D54;
    v29 = v0[21];
    v30 = v0[12];
    v31 = v0[3];

    return sub_1000287F0(v30, v29);
  }
}

uint64_t sub_100006D54()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100006EAC, 0, 0);
}

uint64_t sub_100006EAC()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[9];
  v6 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100006F84()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1000070DC, 0, 0);
}

uint64_t sub_1000070DC()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v7 = v0[1];

  return v7();
}

char *sub_1000071B4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v70 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v7 = &v64[-v6];
  v8 = __chkstk_darwin(v5);
  v71 = &v64[-v9];
  __chkstk_darwin(v8);
  v11 = &v64[-v10];
  static Logger.uv.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Attempting enumeration of development applications", v14, 2u);
  }

  v17 = *(v1 + 8);
  v16 = v1 + 8;
  v15 = v17;
  v17(v11, v0);
  v18 = [objc_opt_self() enumeratorWithOptions:0];
  aBlock[4] = sub_100007904;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000079A8;
  aBlock[3] = &unk_1000395E0;
  v19 = _Block_copy(aBlock);
  [v18 setFilter:v19];
  _Block_release(v19);
  v20 = &OS_dispatch_source_signal__prots;
  v21 = [v18 nextObject];
  if (v21)
  {
    v23 = v21;
    v72 = &_swiftEmptyArrayStorage;
    v24 = &OS_dispatch_source_signal__prots;
    *&v22 = 136315138;
    v73 = v22;
    *&v22 = 136315394;
    v66 = v22;
    v76 = v7;
    v77 = v16;
    v74 = v15;
    v75 = v18;
    do
    {
      v25 = [v23 v24[335].count];
      if (v25)
      {
        v39 = v25;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v68 = v41;
        static Logger.uv.getter();
        v42 = v23;

        v43 = Logger.logObject.getter();
        LODWORD(v41) = static os_log_type_t.debug.getter();

        v65 = v41;
        v44 = os_log_type_enabled(v43, v41);
        v67 = v42;
        if (v44)
        {
          v45 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v45 = v66;
          v46 = [v42 localizedName];
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v18;
          v50 = v49;

          v51 = sub_10001BD80(v47, v50, aBlock);
          v18 = v48;

          *(v45 + 4) = v51;
          *(v45 + 12) = 2080;
          *(v45 + 14) = sub_10001BD80(v69, v68, aBlock);
          _os_log_impl(&_mh_execute_header, v43, v65, "DevAppsEnumeration: found qualifying development application %s (%s)", v45, 0x16u);
          swift_arrayDestroy();

          v20 = &OS_dispatch_source_signal__prots;
        }

        v15(v71, v0);
        v52 = v72;
        v24 = &OS_dispatch_source_signal__prots;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_10002C5C8(0, *(v52 + 2) + 1, 1, v52);
        }

        v54 = *(v52 + 2);
        v53 = *(v52 + 3);
        v72 = v52;
        if (v54 >= v53 >> 1)
        {
          v72 = sub_10002C5C8((v53 > 1), v54 + 1, 1, v72);
        }

        v55 = v72;
        *(v72 + 2) = v54 + 1;
        v56 = &v55[16 * v54];
        v57 = v68;
        *(v56 + 4) = v69;
        *(v56 + 5) = v57;
        v38 = [v18 v20[334].count];
      }

      else
      {
        static Logger.uv.getter();
        v26 = v23;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          aBlock[0] = v30;
          *v29 = v73;
          v31 = v20;
          v32 = [v26 localizedName];
          v33 = v0;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v20 = v31;
          v24 = &OS_dispatch_source_signal__prots;
          v37 = sub_10001BD80(v34, v36, aBlock);

          *(v29 + 4) = v37;
          v0 = v33;
          v15 = v74;
          v7 = v76;
          _os_log_impl(&_mh_execute_header, v27, v28, "DevAppsEnumeration: missing bundleIdentifier for %s", v29, 0xCu);
          sub_1000041C8(v30);

          v18 = v75;
        }

        else
        {
        }

        v15(v7, v0);
        v38 = [v18 v20[334].count];
      }

      v23 = v38;
    }

    while (v23);
  }

  else
  {
    v72 = &_swiftEmptyArrayStorage;
  }

  v58 = v70;
  static Logger.uv.getter();
  v59 = v72;
  swift_bridgeObjectRetain_n();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = *(v59 + 2);
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v60, v61, "DevAppsEnumeration: found %ld development applications", v62, 0xCu);

    v15(v58, v0);
  }

  else
  {

    v15(v58, v0);
  }

  return v59;
}

uint64_t sub_100007904(void *a1)
{
  v1 = [a1 managementDomain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  sub_100007C00();
  if (v2 == static LSBundleRecord.playgroundsManagementDomain.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000079A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_100007A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007AC8(&qword_10003D188);

  return ConcurrentInvalidatable.invalidate(callsite:trace:)(a1, a2, a3, v6);
}

uint64_t sub_100007AC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppManagerDaemon();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007B0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a2);

  return sub_100005EB8(v9, a1, a3);
}

uint64_t sub_100007BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007C00()
{
  result = qword_10003D198;
  if (!qword_10003D198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003D198);
  }

  return result;
}

uint64_t sub_100007C4C()
{
  v1 = type metadata accessor for PreviewsService.Variant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007CD4(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002538;

  return sub_100002250(a1, v1 + v5);
}

unint64_t sub_100007DB0()
{
  result = qword_10003CE10;
  if (!qword_10003CE10)
  {
    sub_100001D74(&qword_10003CE08, &qword_10002E4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE10);
  }

  return result;
}

uint64_t sub_100007E14()
{
  v1 = (type metadata accessor for AppManagerDaemon() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1000041C8((v0 + v3));
  v5 = v0 + v3 + v1[7];
  v6 = type metadata accessor for PreviewsService.Variant();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for PreviewShellProxy() + 20);
  v8 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v0 + v3 + v1[8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100007F64(uint64_t a1)
{
  v3 = *(type metadata accessor for AppManagerDaemon() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100006294(a1, v4);
}

uint64_t sub_100007FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000803C()
{
  v1 = (type metadata accessor for PreviewShellProxy() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v20 = type metadata accessor for Callsite();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for InvalidationTrace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v19 = *(v10 + 64);
  v18 = v2 | v6 | v11;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for PreviewsService.Variant();
  (*(*(v14 - 8) + 8))(v0 + v3, v14);
  v15 = v1[7];
  v16 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  (*(v5 + 8))(v0 + v7, v20);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v19, v18 | 7);
}

uint64_t sub_100008284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000082EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewShellProxy() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Callsite() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for InvalidationTrace() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100002538;

  return sub_100002458(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

__n128 sub_1000084A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000084B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100008510(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

Swift::Int sub_100008574()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000085E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000866C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000086A8(uint64_t a1)
{
  v2 = sub_1000089B0();

  return HumanReadableError.description.getter(a1, v2);
}

unint64_t sub_1000086E8()
{
  result = qword_10003D1A0;
  if (!qword_10003D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1A0);
  }

  return result;
}

unint64_t sub_100008740()
{
  result = qword_10003D1A8;
  if (!qword_10003D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1A8);
  }

  return result;
}

unint64_t sub_100008798()
{
  result = qword_10003D1B0;
  if (!qword_10003D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1B0);
  }

  return result;
}

uint64_t sub_1000087FC(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v2 = 0xD00000000000001ELL;
    if (a1 == 6)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000025;
    if (a1 == 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = [objc_opt_self() mainBundle];
      v8._object = 0xE000000000000000;
      v5._countAndFlagsBits = 0xD000000000000017;
      v5._object = 0x80000001000302F0;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v8._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else if (a1)
  {
    return 0x206D726177657250;
  }

  else
  {
    return 0x206E776F6E6B6E55;
  }
}

unint64_t sub_1000089B0()
{
  result = qword_10003D1B8;
  if (!qword_10003D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppManagerError.Types(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppManagerError.Types(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100008B7C()
{
  result = qword_10003D1C0;
  if (!qword_10003D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1C0);
  }

  return result;
}

uint64_t sub_100008BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewShellProxy();
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

uint64_t sub_100008CB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreviewShellProxy();
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

uint64_t type metadata accessor for ShellPreviewService()
{
  result = qword_10003D220;
  if (!qword_10003D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008DBC()
{
  result = type metadata accessor for PreviewShellProxy();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConcurrentInvalidationHandle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100008E40(uint64_t a1, char a2)
{
  *(v3 + 141) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = type metadata accessor for PreviewsService.Variant();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  *(v3 + 56) = *(v5 + 64);
  *(v3 + 64) = swift_task_alloc();
  v6 = *(*(sub_100001CC8(&qword_10003D060, &qword_10002E6B0) - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v7 = type metadata accessor for Callsite();
  *(v3 + 80) = v7;
  v8 = *(v7 - 8);
  *(v3 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100008FA0, 0, 0);
}

uint64_t sub_100008FA0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v24 = *(v0 + 80);
  v3 = *(v0 + 141);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_100001CC8(&qword_10003D2C0, &qword_10002EAE0);
  v6 = static Future.create(dsoHandle:file:line:column:function:)();
  v8 = v7;
  *(v0 + 104) = v6;
  *(v0 + 112) = v7;
  *(v0 + 16) = *(v4 + 16);

  Callsite.init(_:_:_:_:)();
  v9 = swift_task_alloc();
  *(v9 + 16) = v5;
  v23 = v3;
  *(v9 + 24) = v3;
  *(v9 + 32) = v8;
  sub_100001CC8(&qword_10003D2C8, &qword_10002EAE8);
  sub_100004334(&qword_10003D2D0, &qword_10003D2C8, &qword_10002EAE8);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();

  (*(v1 + 8))(v2, v24);

  if (*(v0 + 140) == 1)
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = *(v0 + 24);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    (*(v12 + 16))(v11, v16, v14);
    v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = v15;
    (*(v12 + 32))(&v19[v18], v11, v14);
    v19[v18 + v13] = v23;

    sub_100014798(0, 0, v10, &unk_10002EAF8, v19);
  }

  v20 = async function pointer to Future<A>.value.getter[1];
  v21 = swift_task_alloc();
  *(v0 + 120) = v21;
  *v21 = v0;
  v21[1] = sub_1000092D8;

  return Future<A>.value.getter(v0 + 136);
}

uint64_t sub_1000092D8()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100009488;
  }

  else
  {
    v3 = sub_1000093EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000093EC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  v6 = *(v0 + 136);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100009488()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];
  v7 = v0[16];

  return v6();
}

uint64_t sub_10000951C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v59 = a3;
  v58 = type metadata accessor for ShellPreviewService();
  v54 = *(v58 - 8);
  v4 = *(v54 + 64);
  __chkstk_darwin(v58);
  v55 = v5;
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v53 = &v43 - v12;
  v51 = v13;
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Logger();
  v47 = *(v16 - 8);
  v48 = v16;
  v17 = *(v47 + 64);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v20 = *(v7 + 16);
  v20(v15, a1, v6);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = v23;
    v45 = swift_slowAlloc();
    v60 = v45;
    *v23 = 136315138;
    sub_10000D2E8(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = a1;
    v26 = v25;
    v27 = *(v7 + 8);
    v49 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50 = v27;
    v27(v15, v6);
    v28 = sub_10001BD80(v24, v26, &v60);
    a1 = v46;

    v29 = v44;
    *(v44 + 1) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "ShellPreviewService (%s) init", v29, 0xCu);
    sub_1000041C8(v45);
  }

  else
  {

    v30 = *(v7 + 8);
    v49 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50 = v30;
    v30(v15, v6);
  }

  (*(v47 + 8))(v19, v48);
  v31 = v53;
  v20(v53, a1, v6);
  v32 = v59;
  v20(v59, v31, v6);
  v33 = v52;
  v20(v52, v31, v6);
  v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v35 = swift_allocObject();
  (*(v7 + 32))(v35 + v34, v33, v6);
  v36 = *(type metadata accessor for PreviewShellProxy() + 20);
  sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8);
  ConcurrentOnDemand.init(create:)();
  v37 = v31;
  v38 = v50;
  v50(v37, v6);
  *(v32 + *(v58 + 20)) = v57;
  v39 = v56;
  sub_10000D60C(v32, v56, type metadata accessor for ShellPreviewService);
  v40 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v41 = swift_allocObject();
  sub_10000D8BC(v39, v41 + v40, type metadata accessor for ShellPreviewService);
  sub_10000D2E8(&qword_10003D298, type metadata accessor for ShellPreviewService);
  ConcurrentInvalidatable.onInvalidation(_:)();

  return v38(a1, v6);
}

uint64_t sub_100009AE0(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v36 = a1;
  v2 = type metadata accessor for InvalidationTrace();
  v30 = v2;
  v35 = *(v2 - 8);
  v37 = *(v35 + 64);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4;
  v5 = type metadata accessor for PreviewShellProxy();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v32 = &v28 - v10;
  v12 = type metadata accessor for Callsite();
  v29 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v28 - v17;
  Callsite.init(_:_:_:_:)();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_10000D60C(v33, v7, type metadata accessor for PreviewShellProxy);
  (*(v13 + 16))(v16, v18, v12);
  v20 = v35;
  (*(v35 + 16))(v4, v36, v2);
  v21 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v22 = (v6 + *(v13 + 80) + v21) & ~*(v13 + 80);
  v23 = v20;
  v24 = (v14 + *(v20 + 80) + v22) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_10000D8BC(v7, v25 + v21, type metadata accessor for PreviewShellProxy);
  v26 = v29;
  (*(v13 + 32))(v25 + v22, v16, v29);
  (*(v23 + 32))(v25 + v24, v31, v30);
  sub_100014798(0, 0, v32, &unk_10002E7F0, v25);

  return (*(v13 + 8))(v18, v26);
}

uint64_t sub_100009ECC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TransportReply();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DaemonToShell.TwoWayMessage();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(type metadata accessor for ShellPreviewService() - 8);
  v2[9] = v8;
  v2[10] = *(v8 + 64);
  v2[11] = swift_task_alloc();
  v9 = *(*(sub_100001CC8(&qword_10003D060, &qword_10002E6B0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = type metadata accessor for PreviewType();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v13 = type metadata accessor for ServiceMessage.Content();
  v2[16] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  updated = type metadata accessor for ShellUpdatePayload();
  v2[18] = updated;
  v16 = *(updated - 8);
  v2[19] = v16;
  v17 = *(v16 + 64) + 15;
  v2[20] = swift_task_alloc();
  v18 = *(*(type metadata accessor for PropertyList() - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v19 = *(*(sub_100001CC8(&qword_10003D2A0, &qword_10002EAB0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v20 = type metadata accessor for CapabilitiesPayload();
  v2[23] = v20;
  v21 = *(v20 - 8);
  v2[24] = v21;
  v22 = *(v21 + 64) + 15;
  v2[25] = swift_task_alloc();
  v23 = type metadata accessor for Logger();
  v2[26] = v23;
  v24 = *(v23 - 8);
  v2[27] = v24;
  v25 = *(v24 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v26 = type metadata accessor for ServiceMessage();
  v2[30] = v26;
  v27 = *(v26 - 8);
  v2[31] = v27;
  v28 = *(v27 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10000A2CC, 0, 0);
}

uint64_t sub_10000A2CC()
{
  v74 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[2];
  sub_100001CC8(&qword_10003D2A8, &qword_10002EAB8);
  TransportMessage<>.body.getter();
  static Logger.uv.getter();
  v72 = *(v3 + 16);
  v72(v2, v1, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[29];
  v13 = v0[30];
  v14 = v0[26];
  v15 = v0[27];
  if (v9)
  {
    v16 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v73 = v71;
    *v16 = 136446210;
    sub_10000D2E8(&qword_10003D2B8, &type metadata accessor for ServiceMessage);
    v69 = v14;
    v70 = v12;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v68 = v8;
    v20 = *(v11 + 8);
    v20(v10, v13);
    v21 = sub_10001BD80(v17, v19, &v73);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v68, "ShellPreviewService received %{public}s", v16, 0xCu);
    sub_1000041C8(v71);

    v22 = *(v15 + 8);
    v22(v70, v69);
  }

  else
  {

    v20 = *(v11 + 8);
    v20(v10, v13);
    v22 = *(v15 + 8);
    v22(v12, v14);
  }

  v0[34] = v20;
  v23 = v0[33];
  if (ServiceMessage.messageType.getter() == 1)
  {
    v24 = v0[33];
    v26 = v0[22];
    v25 = v0[23];
    v27 = v0[21];
    ServiceMessage.payload.getter();
    sub_10000D2E8(&qword_10003D2B0, &type metadata accessor for CapabilitiesPayload);
    PropertyListRepresentable.init(propertyList:)();
    v29 = v0[24];
    v28 = v0[25];
    v31 = v0[22];
    v30 = v0[23];
    (*(v29 + 56))(v31, 0, 1, v30);
    (*(v29 + 32))(v28, v31, v30);
    if (CapabilitiesPayload.isRunningInXTP.getter())
    {
      v32 = v0[28];
      static Logger.uv.getter();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "CapabilitiesPayload.isRunningInXTP is true, setting flag on shell launcher", v35, 2u);
      }

      v37 = v0[27];
      v36 = v0[28];
      v39 = v0[25];
      v38 = v0[26];
      v40 = v0[23];
      v41 = v0[24];

      v22(v36, v38);
      byte_10003DC38 = 1;
      (*(v41 + 8))(v39, v40);
    }

    else
    {
      (*(v0[24] + 8))(v0[25], v0[23]);
    }
  }

  v42 = v0[33];
  v44 = v0[16];
  v43 = v0[17];
  ServiceMessage.content.getter();
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v46 = v0[19];
    v45 = v0[20];
    v47 = v0[18];
    v49 = v0[14];
    v48 = v0[15];
    v50 = v0[13];
    (*(v46 + 32))(v45, v0[17], v47);
    ShellUpdatePayload.previewType.getter();
    v51 = sub_10000B180();
    (*(v49 + 8))(v48, v50);
    (*(v46 + 8))(v45, v47);
    if (v51)
    {
      v52 = v0[11];
      v53 = v0[12];
      v55 = v0[9];
      v54 = v0[10];
      v56 = v0[3];
      v57 = type metadata accessor for TaskPriority();
      (*(*(v57 - 8) + 56))(v53, 1, 1, v57);
      sub_10000D60C(v56, v52, type metadata accessor for ShellPreviewService);
      v58 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = 0;
      *(v59 + 24) = 0;
      sub_10000D8BC(v52, v59 + v58, type metadata accessor for ShellPreviewService);
      sub_100014A98(0, 0, v53, &unk_10002EAD0, v59);
    }
  }

  else
  {
    sub_10000AF64(v0[17], &type metadata accessor for ServiceMessage.Content);
  }

  v60 = v0[7];
  v61 = v0[6];
  v62 = v0[2];
  v72(v0[8], v0[33], v0[30]);
  swift_storeEnumTagMultiPayload();
  TransportMessage<>.reply.getter();
  v63 = swift_task_alloc();
  v0[35] = v63;
  *v63 = v0;
  v63[1] = sub_10000A92C;
  v64 = v0[8];
  v65 = v0[6];
  v66 = v0[3];

  return sub_10000262C(v64, v65);
}

uint64_t sub_10000A92C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  sub_10000AF64(v2, &type metadata accessor for DaemonToShell.TwoWayMessage);

  return _swift_task_switch(sub_10000AAB4, 0, 0);
}

uint64_t sub_10000AAB4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);
  v13 = *(v0 + 120);
  v14 = *(v0 + 96);
  v9 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v10 = (*(v0 + 248) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 272))(*(v0 + 264), *(v0 + 240));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000ABF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10000AC10, 0, 0);
}

uint64_t sub_10000AC10()
{
  if (qword_10003CC38 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10000ACF4;
  v2 = *(v0 + 24);

  return sub_100008E40(v2, 1);
}

uint64_t sub_10000ACF4(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    v7 = sub_10000AE54;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_10000AE24;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000AE24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40) != 0;
  *v1 = *(v0 + 48);
  *(v1 + 4) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10000AE54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40) != 0;
  *v1 = 0;
  *(v1 + 4) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10000AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D2E8(&qword_10003D298, type metadata accessor for ShellPreviewService);

  return ConcurrentInvalidatable.invalidate(callsite:trace:)(a1, a2, a3, v6);
}

uint64_t sub_10000AF64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000AFC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PreviewsService.Variant();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v7, enum case for PreviewsService.Variant.default(_:));

  return sub_10000951C(v7, a1, a2);
}

uint64_t sub_10000B0A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a2);

  return sub_10000951C(v9, a1, a3);
}

uint64_t sub_10000B180()
{
  v1 = v0;
  v2 = type metadata accessor for Callsite();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreviewType.HostLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for PreviewType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v1, v14);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 != enum case for PreviewType.hosted(_:))
  {
    if (v19 != enum case for PreviewType.static(_:))
    {
      Callsite.init(_:_:_:_:)();
      assertUnreachable(callsite:)();
      (*(v24 + 8))(v5, v2);
      (*(v15 + 8))(v18, v14);
    }

    return 0;
  }

  (*(v15 + 96))(v18, v14);
  (*(v7 + 32))(v13, v18, v6);
  (*(v7 + 16))(v11, v13, v6);
  v20 = (*(v7 + 88))(v11, v6);
  if (v20 != enum case for PreviewType.HostLocation.injectedScene(_:))
  {
    if (v20 == enum case for PreviewType.HostLocation.mainScene(_:))
    {
      (*(v7 + 8))(v13, v6);
      return 1;
    }

    if (v20 == enum case for PreviewType.HostLocation.simDisplayScene(_:) || v20 == enum case for PreviewType.HostLocation.external(_:) || v20 == enum case for PreviewType.HostLocation.nsPreview(_:))
    {
      (*(v7 + 8))(v13, v6);
      return 0;
    }

    Callsite.init(_:_:_:_:)();
    assertUnreachable(callsite:)();
    (*(v24 + 8))(v5, v2);
  }

  v21 = *(v7 + 8);
  v21(v13, v6);
  v21(v11, v6);
  return 0;
}

uint64_t sub_10000B5C0()
{
  v1 = (type metadata accessor for ShellPreviewService() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = type metadata accessor for PreviewsService.Variant();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(type metadata accessor for PreviewShellProxy() + 20);
  v8 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[7]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000B708(uint64_t a1)
{
  v4 = *(type metadata accessor for ShellPreviewService() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DADC;

  return sub_10000ABF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10000B7F8(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  if (!*(*a1 + 16))
  {
    v8 = 1;
    goto LABEL_14;
  }

  sub_1000109F0(a2);
  v8 = v7 ^ 1;
  if (((v7 ^ 1) & 1) != 0 || (a3 & 1) == 0)
  {
LABEL_7:
    if (!*(v6 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (!*(v6 + 16))
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = sub_1000109F0(a2);
  if (v10)
  {
    v11 = *(v6 + 56) + 32 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);

    sub_10000D390(v12, v13, v14);
    v8 = v13 ^ 1;
    goto LABEL_7;
  }

  v8 = 0;
  if (!*(v6 + 16))
  {
    goto LABEL_14;
  }

LABEL_8:
  v16 = sub_1000109F0(a2);
  if (v17)
  {
    v18 = *(v6 + 56) + 32 * v16;
    v27 = *v18;
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v30 = v20;
    v29 = v21;

    if ((a3 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_14:
  v21 = &_swiftEmptyArrayStorage;
  v30 = &_swiftEmptyArrayStorage;
  v29 = &_swiftEmptyArrayStorage;
  v27 = 3;
  if ((a3 & 1) == 0)
  {
    v19 = 0;
LABEL_20:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v30;
    goto LABEL_23;
  }

  v20 = &_swiftEmptyArrayStorage;
LABEL_16:

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v25 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v19 = 1;
  v21 = v29;
LABEL_23:
  v22 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *a1;
  sub_100011CEC(v27, v19, v20, v21, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v28;
  return v8 & 1;
}

uint64_t sub_10000BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 52) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  return _swift_task_switch(sub_10000BA6C, 0, 0);
}

uint64_t sub_10000BA6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10000BB24;
  v6 = *(v0 + 52);
  v7 = *(v0 + 24);

  return sub_100026DC8(v7, v6, v2, v3, v4);
}

uint64_t sub_10000BB24(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = sub_10000BCB4;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_10000BC4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000BC4C()
{
  v1 = *(v0 + 16);
  sub_10000BD28(*(v0 + 24), *(v0 + 48), *(v0 + 52));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000BCB4()
{
  v1 = *(v0 + 16);
  sub_10000BF9C(*(v0 + 24), *(v0 + 40), *(v0 + 52));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000BD28(uint64_t a1, int a2, char a3)
{
  v7 = type metadata accessor for Callsite();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v3 + 16);

  Callsite.init(_:_:_:_:)();
  v19 = a1;
  v20 = a3;
  sub_100001CC8(&qword_10003D2C8, &qword_10002EAE8);
  sub_100001CC8(&qword_10003D2D8, &qword_10002EB00);
  sub_100004334(&qword_10003D2D0, &qword_10003D2C8, &qword_10002EAE8);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v8 + 8))(v11, v7);

  v13 = v22;
  if (v22)
  {
    if (v22 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v15 = 0;
      while ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        LODWORD(v22) = a2;
        Promise.succeed(with:)();

        ++v15;
        if (v17 == i)
        {
        }
      }

      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v15 + 32);

      v17 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

uint64_t sub_10000BF9C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for PreviewsService.Variant();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v30 = &v30 - v11;
  v12 = type metadata accessor for Callsite();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v39 = *(v3 + 16);

  Callsite.init(_:_:_:_:)();
  v31 = a1;
  v36 = a1;
  v37 = a3;
  v38 = a2;
  sub_100001CC8(&qword_10003D2C8, &qword_10002EAE8);
  sub_100001CC8(qword_10003D2F8, &qword_10002EB18);
  sub_100004334(&qword_10003D2D0, &qword_10003D2C8, &qword_10002EAE8);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v13 + 8))(v16, v12);

  v18 = v40;
  if (v41)
  {
    if (v41 == 1)
    {
      if (v40 >> 62)
      {
        goto LABEL_19;
      }

      v19 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      if (v19)
      {
        v20 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }
          }

          else
          {
            if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_19:
              v19 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_5;
            }

            v21 = *(v18 + 8 * v20 + 32);

            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_14;
            }
          }

          Promise.fail(with:)();

          ++v20;
        }

        while (v22 != v19);
      }

      sub_10000D0E0(v18, 1);
      return sub_10000D0E0(v18, 1);
    }
  }

  else
  {
LABEL_15:
    v23 = type metadata accessor for TaskPriority();
    v24 = v30;
    (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
    v26 = v32;
    v25 = v33;
    v27 = v34;
    (*(v33 + 16))(v32, v31, v34);
    v28 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v35;
    (*(v25 + 32))(&v29[v28], v26, v27);
    v29[v28 + v8] = v18 & 1;

    sub_100014798(0, 0, v24, &unk_10002EB20, v29);
  }

  return result;
}

uint64_t sub_10000C400(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v12 = sub_1000109F0(a2);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(v11 + 56) + 32 * v12;
  v15 = *(v14 + 16);
  if (a3)
  {
    v16 = *(v14 + 24);
    (*(v7 + 16))(v10, a2, v6);

    sub_1000131B8(0, 0, 0, 0, v10);
    v19 = v15;
    sub_10000CB30(v16);
    return v19;
  }

  else if (*(v14 + 8))
  {
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);

    sub_1000131B8(0, 0, 0, 0, v10);
  }

  return v15;
}

uint64_t sub_10000C5B8(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v61 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v18 = *a1;
  if (!*(v18 + 16))
  {
    return 0;
  }

  v59 = v15;
  v60 = a2;
  v19 = sub_1000109F0(a2);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = *(v18 + 56) + 32 * v19;
  v22 = *v21;
  v23 = *(v21 + 16);
  v24 = *(v21 + 24);
  if (*(v21 + 8) == 1 && (a3 & 1) == 0)
  {
    return 0;
  }

  v55 = *(v21 + 8);
  v56 = v22;
  v57 = v23;

  v58 = v24;

  static Logger.uv.getter();
  v53 = *(v7 + 16);
  v54 = v7 + 16;
  v53(v12, v60, v6);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = v27;
    v29 = v28;
    v50 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63 = v52;
    *v29 = 136446978;
    if (a3)
    {
      v30 = 0x756F726765726F66;
    }

    else
    {
      v30 = 0x756F72676B636162;
    }

    v31 = sub_10001BD80(v30, 0xEA0000000000646ELL, &v63);
    v49 = v26;
    v32 = v31;

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    sub_10000D2E8(&qword_10003CE60, &type metadata accessor for PreviewsService.Variant);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v7 + 8))(v12, v6);
    v36 = sub_10001BD80(v33, v35, &v63);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2050;
    v37 = v56;
    *(v29 + 24) = v56;
    *(v29 + 32) = 2114;
    v38 = v29;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 34) = v39;
    v41 = v49;
    v40 = v50;
    *v50 = v39;
    _os_log_impl(&_mh_execute_header, v41, v51, "Failed %{public}s launch of Preview Shell (%{public}s) (%{public}ld retries remaining): %{public}@", v38, 0x2Au);
    sub_10000D330(v40, &qword_10003CE68, &unk_10002EE00);

    swift_arrayDestroy();

    (*(v59 + 8))(v17, v13);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
    (*(v59 + 8))(v17, v13);
    v37 = v56;
  }

  v42 = v60;
  if (v37 < 1)
  {
    v47 = v61;
    v53(v61, v60, v6);
    sub_1000131B8(0, 0, 0, 0, v47);
    v63 = v57;
    sub_10000CB30(v58);
    return v63;
  }

  else
  {
    v43 = v62;
    v44 = *v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *v43;
    v46 = v55;
    sub_100011CEC(v37 - 1, v55, v57, v58, v42, isUniquelyReferenced_nonNull_native);
    result = v46;
    *v43 = v63;
  }

  return result;
}

void *sub_10000CAE0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10000CB00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10000CB30(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10000CC20(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10000CCDC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10000CC20(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

uint64_t sub_10000CCDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100004334(&qword_10003D2F0, &qword_10003D2E8, &qword_10002EB10);
          for (i = 0; i != v6; ++i)
          {
            sub_100001CC8(&qword_10003D2E8, &qword_10002EB10);
            v9 = sub_10000CE8C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100001CC8(&qword_10003D2E0, &qword_10002EB08);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10000CE8C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10000CF0C;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000CF14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 32);
  result = sub_10000B7F8(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10000CF50(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000DADC;

  return sub_10000BA48(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_10000D070@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10000C400(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000D0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  result = sub_10000C5B8(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v7;
  }

  return result;
}

uint64_t sub_10000D0E0(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_10000D0F8()
{
  v1 = type metadata accessor for PreviewsService.Variant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10000D1C8(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewsService.Variant() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002538;

  return sub_10000BA48(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_10000D2E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001CC8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000D3D4()
{
  v1 = type metadata accessor for PreviewsService.Variant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D45C()
{
  v1 = (type metadata accessor for ShellPreviewService() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for PreviewsService.Variant();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(type metadata accessor for PreviewShellProxy() + 20);
  v7 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[7]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000D59C(uint64_t a1)
{
  v3 = *(type metadata accessor for ShellPreviewService() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100009AE0(a1, v4);
}

uint64_t sub_10000D60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D674()
{
  v1 = (type metadata accessor for PreviewShellProxy() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v20 = type metadata accessor for Callsite();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for InvalidationTrace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v19 = *(v10 + 64);
  v18 = v2 | v6 | v11;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for PreviewsService.Variant();
  (*(*(v14 - 8) + 8))(v0 + v3, v14);
  v15 = v1[7];
  v16 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  (*(v5 + 8))(v0 + v7, v20);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v19, v18 | 7);
}

uint64_t sub_10000D8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000D924(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewShellProxy() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Callsite() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for InvalidationTrace() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000DADC;

  return sub_100002458(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10000DAE0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10000DB84()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  return v0;
}

uint64_t sub_10000DC04()
{
  sub_10000DB84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10000DC74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10000DCB0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000DCBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000DD04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000DD5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000DD98(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10000DDB4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10000DDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000DE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10000DE54(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_10000DE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewShellProxy();
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

uint64_t sub_10000DF68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreviewShellProxy();
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

uint64_t type metadata accessor for CrashListenerService()
{
  result = qword_10003D4D8;
  if (!qword_10003D4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E06C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v36 = a1;
  v2 = type metadata accessor for InvalidationTrace();
  v30 = v2;
  v35 = *(v2 - 8);
  v37 = *(v35 + 64);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4;
  v5 = type metadata accessor for PreviewShellProxy();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v32 = &v28 - v10;
  v12 = type metadata accessor for Callsite();
  v29 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v28 - v17;
  Callsite.init(_:_:_:_:)();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_10000EAFC(v33, v7, type metadata accessor for PreviewShellProxy);
  (*(v13 + 16))(v16, v18, v12);
  v20 = v35;
  (*(v35 + 16))(v4, v36, v2);
  v21 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v22 = (v6 + *(v13 + 80) + v21) & ~*(v13 + 80);
  v23 = v20;
  v24 = (v14 + *(v20 + 80) + v22) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_10000EDAC(v7, v25 + v21, type metadata accessor for PreviewShellProxy);
  v26 = v29;
  (*(v13 + 32))(v25 + v22, v16, v29);
  (*(v23 + 32))(v25 + v24, v31, v30);
  sub_100014798(0, 0, v32, &unk_10002E7F0, v25);

  return (*(v13 + 8))(v18, v26);
}

uint64_t sub_10000E458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000E508(qword_10003D550);

  return ConcurrentInvalidatable.invalidate(callsite:trace:)(a1, a2, a3, v6);
}

uint64_t sub_10000E508(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CrashListenerService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E54C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a2;
  v32 = a1;
  v4 = type metadata accessor for CrashListenerService();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PreviewsService.Variant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = *(v8 + 16);
  v17(&v27 - v15, v28, v7);
  v17(v14, v16, v7);
  v17(a3, v14, v7);
  v17(v11, v14, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v11, v7);
  LODWORD(v18) = *(type metadata accessor for PreviewShellProxy() + 20);
  sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  sub_100007DB0();
  ConcurrentOnDemand.init(create:)();
  v20 = *(v8 + 8);
  v20(v14, v7);
  v21 = *(v30 + 20);
  v27 = a3;
  *(a3 + v21) = v32;
  v22 = a3;
  v23 = v29;
  sub_10000EAFC(v22, v29, type metadata accessor for CrashListenerService);
  v24 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v25 = swift_allocObject();
  sub_10000EDAC(v23, v25 + v24, type metadata accessor for CrashListenerService);
  sub_10000E508(qword_10003D550);

  ConcurrentInvalidatable.onInvalidation(_:)();

  return (v20)(v16, v7);
}

uint64_t sub_10000E8C4()
{
  v1 = type metadata accessor for PreviewsService.Variant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E94C()
{
  v1 = (type metadata accessor for CrashListenerService() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for PreviewsService.Variant();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(type metadata accessor for PreviewShellProxy() + 20);
  v7 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[7]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000EA8C(uint64_t a1)
{
  v3 = *(type metadata accessor for CrashListenerService() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000E06C(a1, v4);
}

uint64_t sub_10000EAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EB64()
{
  v1 = (type metadata accessor for PreviewShellProxy() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v20 = type metadata accessor for Callsite();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for InvalidationTrace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v19 = *(v10 + 64);
  v18 = v2 | v6 | v11;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for PreviewsService.Variant();
  (*(*(v14 - 8) + 8))(v0 + v3, v14);
  v15 = v1[7];
  v16 = sub_100001CC8(&qword_10003CD90, &qword_10002E4A0);
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  (*(v5 + 8))(v0 + v7, v20);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v19, v18 | 7);
}

uint64_t sub_10000EDAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000EE14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000EE50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000EE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000EEF0()
{
  type metadata accessor for StateDumpManager();
  swift_allocObject();
  result = sub_10000F218();
  qword_10003DC20 = result;
  return result;
}

uint64_t sub_10000EF2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = type metadata accessor for PropertyList();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  v26 = a2;
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  PropertyList.init()();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v25 = (v4 + 8);
  v30 = v7;

  for (i = 0; v11; result = )
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v15 << 10) | (16 * v16);
    v18 = (*(v30 + 48) + v17);
    v19 = *v18;
    v20 = v18[1];
    v29 = *(*(v30 + 56) + v17);
    __chkstk_darwin(result);
    *(&v24 - 4) = v21;
    *(&v24 - 3) = v20;
    *(&v24 - 1) = v29;

    v23 = v27;
    v22 = v28;
    PropertyList.init<A, B>(content:)();
    PropertyList.confidentlyMerge(_:)();
    (*v25)(v23, v22);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F184(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  *a1 = a3;
  a1[1] = a4;

  a5(v7);
  v8 = type metadata accessor for PropertyList();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, 0, 1, v8);
}

uint64_t sub_10000F218()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  aBlock = &_swiftEmptyDictionarySingleton;
  sub_100001CC8(&qword_10003D6A8, &unk_10002EDF0);
  *(v0 + 40) = OSAllocatedUnfairLock.init(value:)();
  sub_100012D9C(0, &qword_10003D6B0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v36 = sub_100012D7C;
  v37 = v0;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10000FB84;
  v35 = &unk_100039AD0;
  v14 = _Block_copy(&aBlock);

  v15 = os_state_add_handler();
  _Block_release(v14);

  *(v0 + 16) = v15;
  *(v0 + 24) = 0;
  v16 = SIG_IGN.getter();
  signal(29, v16);
  sub_100012D9C(0, &qword_10003D6B8, OS_dispatch_source_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v36 = sub_100012DE4;
  v37 = v0;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v19 = v27;
  v34 = sub_100001C14;
  v35 = &unk_100039AF8;
  v20 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  sub_1000103B0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v20);
  (*(v5 + 8))(v8, v29);
  (*(v9 + 8))(v12, v28);

  OS_dispatch_source.activate()();
  static Logger.uv.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "SIGINFO handler activated", v23, 2u);
  }

  (*(v30 + 8))(v19, v31);
  v24 = *(v1 + 32);
  *(v1 + 32) = v18;
  swift_unknownObjectRelease();
  return v1;
}

void *sub_10000F6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Callsite();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PropertyList();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*(a1 + 16) != 3)
  {
    return result;
  }

  v36[0] = objc_opt_self();
  v37 = *(a2 + 40);

  Callsite.init(_:_:_:_:)();
  sub_100001CC8(&qword_10003D690, &qword_10002EDE0);
  sub_100004334(&qword_10003D698, &qword_10003D690, &qword_10002EDE0);
  SynchronousAccessProviding.syncRead<A>(defaultCallsite:_:)();
  (*(v5 + 8))(v8, v4);

  PropertyList.serializableDictionary.getter();
  (*(v10 + 8))(v13, v9);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = 0;
  v16 = [v36[0] dataWithPropertyList:isa format:200 options:0 error:&v37];

  v17 = v37;
  if (!v16)
  {
    v24 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 != 2)
    {
      goto LABEL_19;
    }

    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (v27)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v28 <= 0x8000)
    {
LABEL_15:
      if (v21 != 2)
      {
        goto LABEL_31;
      }

      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      v27 = __OFSUB__(v29, v30);
      v22 = v29 - v30;
      if (!v27)
      {
LABEL_20:
        v23 = v22 + 200;
        if (!__OFADD__(v22, 200))
        {
          goto LABEL_21;
        }

        goto LABEL_34;
      }

      __break(1u);
LABEL_19:
      v22 = 0;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (v21)
  {
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      goto LABEL_51;
    }

    if (HIDWORD(v18) - v18 <= 0x8000)
    {
      goto LABEL_15;
    }

LABEL_25:
    sub_100012DEC(v18, v20);
    return 0;
  }

  v22 = BYTE6(v20);
  v23 = BYTE6(v20) + 200;
  if (__OFADD__(BYTE6(v20), 200))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    LODWORD(v34) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v34 = v34;
LABEL_37:
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v34))
    {
      *(v22 + 4) = v34;
      strcpy((v22 + 136), "previewsd state");
      if (v21 != 2)
      {
        if (!__OFSUB__(HIDWORD(v18), v18))
        {
          v35 = v22;
          goto LABEL_46;
        }

LABEL_55:
        __break(1u);
      }

      if (!__OFSUB__(*(v18 + 24), *(v18 + 16)))
      {
        v35 = v22;
        goto LABEL_46;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_50;
  }

  while (1)
  {
LABEL_21:
    v31 = calloc(v23, 1uLL);
    if (!v31)
    {
      goto LABEL_25;
    }

    v22 = v31;
    *v31 = 1;
    if (v21 <= 1)
    {
      if (!v21)
      {
        *(v31 + 1) = BYTE6(v20);
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    if (v21 != 2)
    {
      break;
    }

    v33 = *(v18 + 16);
    v32 = *(v18 + 24);
    v27 = __OFSUB__(v32, v33);
    v34 = v32 - v33;
    if (!v27)
    {
      goto LABEL_37;
    }

    __break(1u);
LABEL_31:
    LODWORD(v22) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      goto LABEL_52;
    }

    v22 = v22;
    v23 = v22 + 200;
    if (__OFADD__(v22, 200))
    {
      goto LABEL_34;
    }
  }

  *(v31 + 1) = 0;
LABEL_43:
  v35 = v31;
  strcpy(v31 + 136, "previewsd state");
LABEL_46:
  Data.copyBytes(to:count:)();
  sub_100012DEC(v18, v20);
  return v35;
}

uint64_t sub_10000FB84(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_10000FBD4(uint64_t a1)
{
  v69 = a1;
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v68 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Callsite();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  __chkstk_darwin(v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PropertyList();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v66 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v67 = &v64 - v19;
  v20 = __chkstk_darwin(v18);
  v65 = &v64 - v21;
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  static Logger.uv.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "SIGINFO received, logging current state dump", v26, 2u);
  }

  v27 = *(v14 + 8);
  v72 = v14 + 8;
  v27(v23, v13);
  v73 = *(v69 + 40);

  Callsite.init(_:_:_:_:)();
  sub_100001CC8(&qword_10003D690, &qword_10002EDE0);
  sub_100004334(&qword_10003D698, &qword_10003D690, &qword_10002EDE0);
  SynchronousAccessProviding.syncRead<A>(defaultCallsite:_:)();
  (*(v70 + 8))(v7, v71);

  PropertyList.serializableDictionary.getter();
  (*(v9 + 8))(v12, v8);
  v28 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v73 = 0;
  v30 = [v28 dataWithJSONObject:isa options:15 error:&v73];

  v31 = v73;
  if (!v30)
  {
    v48 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v49 = v66;
    static Logger.uv.getter();
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v27;
      v54 = v13;
      v55 = swift_slowAlloc();
      *v52 = 138412290;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to log state dump due to %@", v52, 0xCu);
      sub_100004160(v55);
      v13 = v54;
      v27 = v53;
    }

    else
    {
    }

    v61 = v49;
    v62 = v13;
    return (v27)(v61, v62);
  }

  v32 = v13;
  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  static String.Encoding.utf8.getter();
  v36 = String.init(data:encoding:)();
  if (!v37)
  {
    v57 = v65;
    static Logger.uv.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to log state dump as JSON couldn't be converted to string", v60, 2u);
    }

    sub_100012DEC(v33, v35);

    v61 = v57;
    v62 = v13;
    return (v27)(v61, v62);
  }

  v38 = v37;
  v39 = v27;
  v40 = v36;
  v41 = v67;
  static Logger.uv.getter();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v73 = v45;
    *v44 = 136315138;
    v46 = sub_10001BD80(v40, v38, &v73);

    *(v44 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "%s", v44, 0xCu);
    sub_1000041C8(v45);

    sub_100012DEC(v33, v35);

    v47 = v67;
  }

  else
  {

    sub_100012DEC(v33, v35);

    v47 = v41;
  }

  return v39(v47, v32);
}

uint64_t sub_1000103B0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100012E4C(&qword_10003D6C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001CC8(&unk_10003CC60, &qword_10002E490);
  sub_100004334(&qword_10003D6D0, &unk_10003CC60, &qword_10002E490);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10001049C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v31 = a1;
  v30 = type metadata accessor for Callsite();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v8;
    v22 = v5;
    v23 = v21;
    v32 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10001BD80(v31, a2, &v32);
    _os_log_impl(&_mh_execute_header, v17, v18, "state dump provider '%s' added", v20, 0xCu);
    sub_1000041C8(v23);
    v5 = v22;
    v8 = v27;

    a4 = v28;
  }

  (*(v13 + 8))(v16, v12);
  v32 = *(v5 + 40);

  v24 = Callsite.init(_:_:_:_:)();
  __chkstk_darwin(v24);
  *(&v26 - 4) = v31;
  *(&v26 - 3) = a2;
  *(&v26 - 2) = v29;
  *(&v26 - 1) = a4;
  sub_100001CC8(&qword_10003D690, &qword_10002EDE0);
  sub_100004334(&qword_10003D698, &qword_10003D690, &qword_10002EDE0);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v8 + 8))(v11, v30);
}

uint64_t sub_1000107FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  sub_100012248(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v13;
  return result;
}

uint64_t sub_100010898()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10001091C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_10001097C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_1000109F0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for PreviewsService.Variant();
  sub_100012E4C(&qword_10003D700, &type metadata accessor for PreviewsService.Variant);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100010C54(a1, v5, &type metadata accessor for PreviewsService.Variant, &qword_10003D708, &type metadata accessor for PreviewsService.Variant, &protocol conformance descriptor for PreviewsService.Variant);
}

unint64_t sub_100010AC4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Identifier();
  sub_100012E4C(&qword_10003D6E8, &type metadata accessor for Identifier);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100010C54(a1, v5, &type metadata accessor for Identifier, &qword_10003D6F0, &type metadata accessor for Identifier, &protocol conformance descriptor for Identifier);
}

unint64_t sub_100010B98(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100010DF4(a1, v4);
}

unint64_t sub_100010BDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100010EBC(a1, a2, v6);
}

unint64_t sub_100010C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_100012E4C(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100010DF4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012E94(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100012EF0(v8);
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

unint64_t sub_100010EBC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100010F74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreviewsService.Variant();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100001CC8(&qword_10003D6F8, qword_10002EE10);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v50 = v10;
    v41 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v7;
    v46 = (v7 + 32);
    v21 = result + 64;
    v44 = v11;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v49 = *(v7 + 72);
      v29 = v28 + v49 * v27;
      if (v45)
      {
        (*v46)(v50, v29, v6);
        v30 = *(v11 + 56) + 32 * v27;
        v48 = *v30;
        v47 = *(v30 + 8);
        v51 = *(v30 + 16);
      }

      else
      {
        (*v42)(v50, v29, v6);
        v31 = *(v11 + 56) + 32 * v27;
        v48 = *v31;
        v47 = *(v31 + 8);
        v51 = *(v31 + 16);
      }

      v32 = *(v14 + 40);
      sub_100012E4C(&qword_10003D700, &type metadata accessor for PreviewsService.Variant);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v14 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v14 + 48) + v49 * v22, v50, v6);
      v23 = *(v14 + 56) + 32 * v22;
      *v23 = v48;
      *(v23 + 8) = v47;
      *(v23 + 16) = v51;
      ++*(v14 + 16);
      v7 = v43;
      v11 = v44;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v11 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100011398(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Identifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100001CC8(&qword_10003D6E0, &qword_10002E6D8);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100012E4C(&qword_10003D6E8, &type metadata accessor for Identifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100011774(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001CC8(&unk_10003D710, &qword_10002E6F8);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100011A34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001CC8(&qword_10003D6A0, &qword_10002EDE8);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100011CEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v35 = a1;
  v36 = a3;
  v34 = a2;
  v11 = type metadata accessor for PreviewsService.Variant();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1000109F0(a5);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_100012560();
      goto LABEL_9;
    }

    sub_100010F74(v21, a6 & 1);
    v24 = *v7;
    v25 = sub_1000109F0(a5);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = v36;
  v28 = *v7;
  if (v22)
  {
    v29 = v28[7] + 32 * v18;
    v31 = *(v29 + 16);
    v30 = *(v29 + 24);
    *v29 = v35;
    *(v29 + 8) = v34 & 1;
    *(v29 + 16) = v27;
    *(v29 + 24) = a4;
  }

  else
  {
    (*(v12 + 16))(v15, a5, v11);
    return sub_1000123D0(v18, v15, v35, v34 & 1, v27, a4, v28);
  }
}

void sub_100011EF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Identifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100010AC4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100012810();
      goto LABEL_7;
    }

    sub_100011398(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_100010AC4(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1000124A8(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1000120C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100010BDC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100011774(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100010BDC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100012A84();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_100012248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100010BDC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100011A34(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100010BDC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100012BFC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_1000123D0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for PreviewsService.Variant();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1000124A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Identifier();
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

char *sub_100012560()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewsService.Variant();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001CC8(&qword_10003D6F8, qword_10002EE10);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v44 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 32 * v21;
        v28 = (v26 + 32 * v21);
        v43 = *v28;
        v42 = *(v28 + 8);
        v29 = v28[2];
        v30 = v28[3];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = *(v31 + 56) + v27;
        v6 = v37;
        *v32 = v43;
        *(v32 + 8) = v42;
        *(v32 + 16) = v29;
        *(v32 + 24) = v30;

        v16 = v44;
      }

      while (v44);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_100012810()
{
  v1 = v0;
  v32 = type metadata accessor for Identifier();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001CC8(&qword_10003D6E0, &qword_10002E6D8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100012A84()
{
  v1 = v0;
  sub_100001CC8(&unk_10003D710, &qword_10002E6F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100012BFC()
{
  v1 = v0;
  sub_100001CC8(&qword_10003D6A0, &qword_10002EDE8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_100012D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012D9C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100012DEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100012E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100012F4C()
{
  v0 = static PreviewsServiceConnection.Listener.hostToSim(machServiceName:description:)();

  return v0;
}

uint64_t sub_100013014()
{
  type metadata accessor for DaemonTransactionManager();
  inited = swift_initStaticObject();
  if (qword_10003CC28 != -1)
  {
    swift_once();
  }

  result = sub_10001049C(0xD000000000000018, 0x800000010002EE10, sub_1000130B8, 0);
  qword_10003DC28 = inited;
  return result;
}

uint64_t sub_1000130B8()
{
  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.currentState.getter();
}

uint64_t sub_100013164(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000131B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a3)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v6;
    sub_100011CEC(a1, a2 & 1, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    v14 = type metadata accessor for PreviewsService.Variant();
    result = (*(*(v14 - 8) + 8))(a5, v14);
    *v6 = v32;
  }

  else
  {
    v16 = *v5;
    v17 = sub_1000109F0(a5);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v33 = *v6;
      if (!v21)
      {
        sub_100012560();
        v22 = v33;
      }

      v23 = *(v22 + 48);
      v24 = type metadata accessor for PreviewsService.Variant();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);
      v27 = *(v22 + 56) + 32 * v19;
      v29 = *(v27 + 16);
      v28 = *(v27 + 24);

      sub_100013F88(v19, v22);
      result = (v26)(a5, v24);
      *v6 = v22;
    }

    else
    {
      v30 = type metadata accessor for PreviewsService.Variant();
      v31 = *(*(v30 - 8) + 8);

      return v31(a5, v30);
    }
  }

  return result;
}

uint64_t sub_10001339C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_100011EF4(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for Identifier();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_100010AC4(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_100012810();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for Identifier();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_1000142A8(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = type metadata accessor for Identifier();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_100013570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = *a5;
  v6 = type metadata accessor for Identifier();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v8 = *(*(sub_100001CC8(&qword_10003D7B8, &unk_10002F1D0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000136B0, 0, 0);
}

uint64_t sub_1000136B0()
{
  if (qword_10003CC20 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = qword_10003DC18;
  *(v0 + 176) = qword_10003DC18;
  *(v0 + 184) = PreviewsServiceConnection.remotePid.getter();

  return _swift_task_switch(sub_10001376C, v3, 0);
}

uint64_t sub_10001376C()
{
  v1 = [objc_opt_self() identifierWithPid:*(v0 + 46)];
  v2 = v0[13];
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 46);
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = 0;
    *(v5 + 28) = v4;
    *(v5 + 32) = sub_100013E44;
    *(v5 + 40) = v2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100013F24;
    *(v6 + 24) = v5;
    v0[6] = sub_100013F48;
    v0[7] = v6;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100013164;
    v0[5] = &unk_100039B48;
    v7 = _Block_copy(v0 + 2);
    v8 = objc_opt_self();

    v9 = [v8 monitorWithConfiguration:v7];
    _Block_release(v7);
    v10 = v0[7];

    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
      return _swift_task_switch(v11, v12, v13);
    }

    v14 = v0[22];
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[16];
    v30 = v0[17];
    v31 = v0[21];
    v18 = v0[15];
    v32 = v0[13];

    Identifier.init()();
    swift_beginAccess();
    v19 = v9;
    v20 = *(v14 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v14 + 112);
    *(v14 + 112) = 0x8000000000000000;
    sub_100011EF4(v19, v15, isUniquelyReferenced_nonNull_native);
    *(v14 + 112) = v33;
    swift_endAccess();
    (*(v17 + 16))(v16, v15, v18);
    v22 = v3;
    v23 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v14;
    (*(v17 + 32))(v24 + v23, v16, v18);

    CancelationToken<>.init(dsoHandle:file:line:column:function:_:)();

    (*(v17 + 8))(v15, v18);
    v25 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
    (*(*(v25 - 8) + 56))(v31, 0, 1, v25);
  }

  else
  {
    v26 = v0[21];
    v27 = v0[13];

    v28 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
  }

  v11 = sub_100013B6C;
  v12 = 0;
  v13 = 0;

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100013B6C()
{
  v1 = v0[20];
  sub_100013E4C(v0[21], v1);
  v2 = sub_100001CC8(&qword_10003D7C0, &qword_10002EE60);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[20];
    sub_100013EBC(v0[21]);
    sub_100013EBC(v4);
  }

  else
  {
    v0[11] = v0[13];
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[14];
    sub_1000146F0(&qword_10003D7C8);
    CancelationToken<>.cancel<A>(onInvalidationOf:)();
    sub_100013EBC(v5);
    (*(v3 + 8))(v6, v2);
  }

  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[18];
  v10 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100013CE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for InvalidationTrace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = a1;
  static InvalidationTrace.empty.getter();
  sub_1000146F0(&qword_10003D838);
  AnyInvalidatable.invalidate(file:line:column:function:trace:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100013E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CC8(&qword_10003D7B8, &unk_10002F1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013EBC(uint64_t a1)
{
  v2 = sub_100001CC8(&qword_10003D7B8, &unk_10002F1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013F48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100013F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100013F88(int64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for PreviewsService.Variant();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v42 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = a2 + 64;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v41(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100014740(&qword_10003D700, &type metadata accessor for PreviewsService.Variant);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v11);
          if (a1 != v11 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1000142A8(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Identifier();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100014740(&qword_10003D6E8, &type metadata accessor for Identifier);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1000145C8()
{
  v1 = type metadata accessor for Identifier();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001468C()
{
  v1 = *(type metadata accessor for Identifier() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100004E68(v2, v3);
}

uint64_t sub_1000146F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100001D74(&qword_10003D7D0, qword_10002EE68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005B8C(a3, v27 - v11, &qword_10003D060, &qword_10002E6B0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000D330(v12, &qword_10003D060, &qword_10002E6B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100014A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005B8C(a3, v27 - v11, &qword_10003D060, &qword_10002E6B0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000D330(v12, &qword_10003D060, &qword_10002E6B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100001CC8(&qword_10003D990, &qword_10002F000);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100001CC8(&qword_10003D990, &qword_10002F000);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100014DAC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for CancellationToken();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for PropertyList();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for ShellService();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v11 = type metadata accessor for PreviewsService.Variant();
  v2[16] = v11;
  v12 = *(v11 - 8);
  v2[17] = v12;
  v2[18] = *(v12 + 64);
  v2[19] = swift_task_alloc();
  v13 = *(*(sub_100001CC8(&qword_10003DA40, &qword_10002F158) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100014FD4, 0, 0);
}

uint64_t sub_100014FD4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[4];
  static Timeout.seconds(_:)();
  v7 = type metadata accessor for Timeout();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  (*(v3 + 16))(v1, v6, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[21] = v9;
  (*(v3 + 32))(v9 + v8, v1, v5);
  v10 = async function pointer to withTimeout<A>(_:perform:makeTimeoutError:)[1];
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_100015178;
  v12 = v0[20];

  return withTimeout<A>(_:perform:makeTimeoutError:)(v0 + 24, v12, &unk_10002F160, v9, &unk_10002E630, 0, &type metadata for Int32);
}

uint64_t sub_100015178()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  sub_10000D330(*(v2 + 160), &qword_10003DA40, &qword_10002F158);

  if (v0)
  {
    v6 = sub_100022188;
  }

  else
  {
    v6 = sub_1000152D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000152D8()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 32);
  v7 = *(v0 + 192);
  v8 = sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  (*(v3 + 104))(v2, enum case for ShellService.hostToShellPipeService(_:), v4);
  default argument 2 of static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  v9 = static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  if (v1)
  {
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 104);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    (*(v11 + 8))(v10, v12);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
  }

  else
  {
    v20 = v9;
    v35 = *(v0 + 160);
    v36 = *(v0 + 152);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);
    v34 = *(v0 + 96);
    v24 = *(v0 + 80);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);
    v27 = *(v0 + 48);
    v31 = *(v0 + 40);
    v32 = *(v0 + 56);
    v33 = *(v0 + 24);
    (*(*(v0 + 88) + 8))();
    (*(v22 + 8))(v21, v23);
    type metadata accessor for PreviewAssertionManager();
    static PreviewAssertionManager.shared.getter();
    PreviewAssertionManager.takeActivePreviewAssertion(for:)();

    *(v0 + 16) = v20;
    (*(v27 + 16))(v26, v25, v31);
    v28 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v29 = swift_allocObject();
    (*(v27 + 32))(v29 + v28, v26, v31);
    sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8);
    ConcurrentInvalidatable.onInvalidation(_:)();

    v33[3] = v8;
    v33[4] = sub_100004334(&qword_10003CE70, &qword_10003CE08, &qword_10002E4D8);
    *v33 = v20;
    (*(v27 + 8))(v25, v31);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100015620(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for CancellationToken();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for PropertyList();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for ShellService();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v11 = type metadata accessor for PreviewsService.Variant();
  v2[16] = v11;
  v12 = *(v11 - 8);
  v2[17] = v12;
  v2[18] = *(v12 + 64);
  v2[19] = swift_task_alloc();
  v13 = *(*(sub_100001CC8(&qword_10003DA40, &qword_10002F158) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100015848, 0, 0);
}

uint64_t sub_100015848()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[4];
  static Timeout.seconds(_:)();
  v7 = type metadata accessor for Timeout();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  (*(v3 + 16))(v1, v6, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[21] = v9;
  (*(v3 + 32))(v9 + v8, v1, v5);
  v10 = async function pointer to withTimeout<A>(_:perform:makeTimeoutError:)[1];
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_1000159EC;
  v12 = v0[20];

  return withTimeout<A>(_:perform:makeTimeoutError:)(v0 + 24, v12, &unk_10002F168, v9, &unk_10002E630, 0, &type metadata for Int32);
}

uint64_t sub_1000159EC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  sub_10000D330(*(v2 + 160), &qword_10003DA40, &qword_10002F158);

  if (v0)
  {
    v6 = sub_100015EE0;
  }

  else
  {
    v6 = sub_100015B4C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100015B4C()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 32);
  v7 = *(v0 + 192);
  v8 = sub_100001CC8(&qword_10003CE08, &qword_10002E4D8);
  v9 = enum case for ShellService.Instance.hostSide(_:);
  v10 = type metadata accessor for ShellService.Instance();
  (*(*(v10 - 8) + 104))(v2, v9, v10);
  (*(v3 + 104))(v2, enum case for ShellService.hostToAgentPipeService(_:), v4);
  default argument 2 of static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  v11 = static ShellConnection<>.createByMachLookup(for:variant:clientContext:)();
  if (v1)
  {
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    (*(v13 + 8))(v12, v14);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 120);
    v18 = *(v0 + 96);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
  }

  else
  {
    v38 = *(v0 + 160);
    v39 = *(v0 + 152);
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);
    v24 = v11;
    v25 = *(v0 + 104);
    v37 = *(v0 + 96);
    v26 = *(v0 + 80);
    v27 = *(v0 + 64);
    v28 = *(v0 + 72);
    v29 = *(v0 + 48);
    v34 = v27;
    v35 = *(v0 + 56);
    v30 = *(v0 + 40);
    v36 = *(v0 + 24);
    (*(*(v0 + 88) + 8))();
    (*(v22 + 8))(v23, v25);
    type metadata accessor for PreviewAssertionManager();
    static PreviewAssertionManager.shared.getter();
    PreviewAssertionManager.takeActivePreviewAssertion(for:)();

    *(v0 + 16) = v24;
    (*(v29 + 16))(v34, v28, v30);
    v31 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v32 = swift_allocObject();
    (*(v29 + 32))(v32 + v31, v34, v30);
    sub_100004334(&qword_10003CE10, &qword_10003CE08, &qword_10002E4D8);
    ConcurrentInvalidatable.onInvalidation(_:)();

    v36[3] = v8;
    v36[4] = sub_100004334(&qword_10003CE70, &qword_10003CE08, &qword_10002E4D8);
    *v36 = v24;
    (*(v29 + 8))(v28, v30);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100015EE0()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100015F88(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = type metadata accessor for Callsite();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v40 - v8;
  v9 = type metadata accessor for CancellationToken();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  v11 = __chkstk_darwin(v9);
  v45 = v12;
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v40 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_10001BD80(0x6C65685374736F48, 0xEF6D65747379536CLL, &v56);
    *(v21 + 12) = 2080;
    v55 = a1;
    type metadata accessor for PreviewsServiceConnection();

    v22 = String.init<A>(describing:)();
    v24 = sub_10001BD80(v22, v23, &v56);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "PipeListener<%s> got incoming connection: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  (*(v15 + 8))(v18, v14);
  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v44 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v25 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v42 = type metadata accessor for TaskPriority();
  v26 = *(v42 - 8);
  v41 = *(v26 + 56);
  v43 = v26 + 56;
  v27 = v50;
  v41(v50, 1, 1, v42);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = a1;
  v28[5] = v25;

  sub_100014798(0, 0, v27, &unk_10002F048, v28);

  v29 = v53;
  v56 = *(v53 + 32);

  v30 = v47;
  v31 = Callsite.init(_:_:_:_:)();
  __chkstk_darwin(v31);
  *(&v40 - 2) = 1;
  *(&v40 - 1) = v29;
  sub_100001CC8(&qword_10003D9B0, &qword_10002F050);
  sub_100004334(&qword_10003D9B8, &qword_10003D9B0, &qword_10002F050);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v48 + 8))(v30, v49);

  v56 = v25;
  v33 = v51;
  v32 = v52;
  v34 = v46;
  v35 = v54;
  (*(v51 + 16))(v46, v54, v52);
  v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v29;
  (*(v33 + 32))(v37 + v36, v34, v32);
  sub_100004334(&qword_10003D7C8, &qword_10003D7D0, qword_10002EE68);

  ConcurrentInvalidatable.onInvalidation(_:)();

  v41(v27, 1, 1, v42);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v29;
  v38[5] = v25;

  sub_100014798(0, 0, v27, &unk_10002F060, v38);

  return (*(v33 + 8))(v35, v32);
}

uint64_t sub_100016724(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = type metadata accessor for Callsite();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v40 - v8;
  v9 = type metadata accessor for CancellationToken();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  v11 = __chkstk_darwin(v9);
  v45 = v12;
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v40 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_10001BD80(0x6E65674174736F48, 0xEF6D657473795374, &v56);
    *(v21 + 12) = 2080;
    v55 = a1;
    type metadata accessor for PreviewsServiceConnection();

    v22 = String.init<A>(describing:)();
    v24 = sub_10001BD80(v22, v23, &v56);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "PipeListener<%s> got incoming connection: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  (*(v15 + 8))(v18, v14);
  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v44 = sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v25 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v42 = type metadata accessor for TaskPriority();
  v26 = *(v42 - 8);
  v41 = *(v26 + 56);
  v43 = v26 + 56;
  v27 = v50;
  v41(v50, 1, 1, v42);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = a1;
  v28[5] = v25;

  sub_100014798(0, 0, v27, &unk_10002F088, v28);

  v29 = v53;
  v56 = *(v53 + 32);

  v30 = v47;
  v31 = Callsite.init(_:_:_:_:)();
  __chkstk_darwin(v31);
  *(&v40 - 2) = 1;
  *(&v40 - 1) = v29;
  sub_100001CC8(&qword_10003D9D8, &qword_10002F090);
  sub_100004334(&qword_10003D9E0, &qword_10003D9D8, &qword_10002F090);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v48 + 8))(v30, v49);

  v56 = v25;
  v33 = v51;
  v32 = v52;
  v34 = v46;
  v35 = v54;
  (*(v51 + 16))(v46, v54, v52);
  v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v29;
  (*(v33 + 32))(v37 + v36, v34, v32);
  sub_100004334(&qword_10003D7C8, &qword_10003D7D0, qword_10002EE68);

  ConcurrentInvalidatable.onInvalidation(_:)();

  v41(v27, 1, 1, v42);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v29;
  v38[5] = v25;

  sub_100014798(0, 0, v27, &unk_10002F0A0, v38);

  return (*(v33 + 8))(v35, v32);
}

uint64_t sub_100016EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v16[1] = a3;
  v10 = type metadata accessor for Callsite();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[7] = *(a2 + 32);

  Callsite.init(_:_:_:_:)();
  v16[4] = -1;
  v16[5] = a2;
  sub_100001CC8(a4, a5);
  sub_100004334(a6, a4, a5);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)();
  (*(v11 + 8))(v14, v10);

  return CancellationToken.cancel(dsoHandle:file:line:column:function:)();
}

uint64_t sub_10001709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = *a5;
  v6 = type metadata accessor for InvalidationTrace();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000171E0, 0, 0);
}

uint64_t sub_1000171E0()
{
  v1 = v0[9];
  v2 = *(v0[8] + 24);
  v0[5] = v0[10];
  v0[6] = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68);
  v0[2] = v1;
  v3 = async function pointer to MessagePipe.addLeftTransport(_:)[1];

  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1000172D4;

  return MessagePipe.addLeftTransport(_:)(v0 + 2);
}

uint64_t sub_1000172D4()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100022214, 0, 0);
  }

  else
  {
    sub_1000041C8(v3 + 2);
    v4 = v3[16];
    v5 = v3[13];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100017424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = *a5;
  v6 = type metadata accessor for InvalidationTrace();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100017568, 0, 0);
}

uint64_t sub_100017568()
{
  v1 = v0[9];
  v2 = *(v0[8] + 24);
  v0[5] = v0[10];
  v0[6] = sub_100004334(&qword_10003D960, &qword_10003D7D0, qword_10002EE68);
  v0[2] = v1;
  v3 = async function pointer to MessagePipe.addLeftTransport(_:)[1];

  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10001765C;

  return MessagePipe.addLeftTransport(_:)(v0 + 2);
}

uint64_t sub_10001765C()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000177AC, 0, 0);
  }

  else
  {
    sub_1000041C8(v3 + 2);
    v4 = v3[16];
    v5 = v3[13];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1000177AC()
{
  v1 = v0[18];
  v2 = v0[16];
  sub_1000041C8(v0 + 2);
  static Logger.uv.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to attach client to message pipe: %@", v6, 0xCu);
    sub_10000D330(v7, &qword_10003CE68, &unk_10002EE00);
  }

  v9 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];
  v21 = v0[11];
  v15 = v0[9];
  v16 = v0[10];

  (*(v11 + 8))(v10, v13);
  v0[7] = v15;
  static InvalidationTrace.empty.getter();
  sub_100004334(&qword_10003D838, &qword_10003D7D0, qword_10002EE68);
  AnyInvalidatable.invalidate(file:line:column:function:trace:)();

  (*(v14 + 8))(v12, v21);
  v17 = v0[16];
  v18 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000179EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9 - 8);
  v13 = &v17 - v12;
  v14 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else
  {
    *a1 = v14;
    if (a1[1])
    {
      sub_100001CC8(&qword_10003D9C0, &qword_10002F068);
      Task.cancel()();
    }

    a1[1] = 0;
    if (!v14)
    {
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = a3;

      result = sub_100018A68(0, 0, v13, a5, v16);
      a1[1] = result;
    }
  }

  return result;
}

uint64_t sub_100017B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Callsite();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100017CF0, 0, 0);
}

uint64_t sub_100017CF0()
{
  v1 = v0[12];
  static Logger.uv.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Last pipe listener client went away, scheduling teardown...", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  static Clock<>.continuous.getter();
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100017E6C;
  v11 = v0[8];

  return sub_10001B844(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100017E6C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000221FC;
  }

  else
  {
    v6 = sub_100017FDC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100017FDC()
{
  v18 = v0;
  v1 = v0[11];
  static Logger.uv.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10001BD80(0x6C65685374736F48, 0xEF6D65747379536CLL, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Tearing down pipe listener on %s", v9, 0xCu);
    sub_1000041C8(v10);
  }

  v5(v6, v8);
  v11 = v0[5];
  v12 = *(v0[2] + 24);
  Callsite.init(_:_:_:_:)();
  v13 = async function pointer to MessagePipe.teardown(callsite:)[1];
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_100022200;
  v15 = v0[5];

  return MessagePipe.teardown(callsite:)(v15);
}

uint64_t sub_1000181C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Callsite();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10001834C, 0, 0);
}

uint64_t sub_10001834C()
{
  v1 = v0[12];
  static Logger.uv.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Last pipe listener client went away, scheduling teardown...", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  static Clock<>.continuous.getter();
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000184C8;
  v11 = v0[8];

  return sub_10001B844(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000184C8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100018824;
  }

  else
  {
    v6 = sub_100018638;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100018638()
{
  v18 = v0;
  v1 = v0[11];
  static Logger.uv.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10001BD80(0x6E65674174736F48, 0xEF6D657473795374, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Tearing down pipe listener on %s", v9, 0xCu);
    sub_1000041C8(v10);
  }

  v5(v6, v8);
  v11 = v0[5];
  v12 = *(v0[2] + 24);
  Callsite.init(_:_:_:_:)();
  v13 = async function pointer to MessagePipe.teardown(callsite:)[1];
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_1000188B0;
  v15 = v0[5];

  return MessagePipe.teardown(callsite:)(v15);
}

uint64_t sub_100018824()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_1000188B0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v10 = *v0;

  (*(v6 + 8))(v5, v7);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100018A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100005B8C(a3, v24 - v10, &qword_10003D060, &qword_10002E6B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D330(v11, &qword_10003D060, &qword_10002E6B0);
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

      sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);

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

  sub_10000D330(a3, &qword_10003D060, &qword_10002E6B0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100018D14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a4;
  v27 = a3;
  v5 = sub_100001CC8(&qword_10003D930, "~)");
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v15 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = v15;

  sub_100014798(0, 0, v14, &unk_10002EF50, v18);

  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v19 = type metadata accessor for CancellationToken();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  v17(v14, 1, 1, v16);
  sub_100005B8C(v10, v8, &qword_10003D930, "~)");
  v20 = (*(v26 + 80) + 64) & ~*(v26 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v27;
  v23 = v28;
  v21[4] = v28;
  v21[5] = v22;
  v21[6] = v29;
  v21[7] = v15;
  sub_100021C70(v8, v21 + v20, &qword_10003D930, "~)");

  v24 = v23;

  sub_100014798(0, 0, v14, &unk_10002EF60, v21);

  return sub_10000D330(v10, &qword_10003D930, "~)");
}

uint64_t sub_1000190E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a4;
  v27 = a3;
  v5 = sub_100001CC8(&qword_10003D930, "~)");
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v15 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = v15;

  sub_100014798(0, 0, v14, &unk_10002EFB8, v18);

  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v19 = type metadata accessor for CancellationToken();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  v17(v14, 1, 1, v16);
  sub_100005B8C(v10, v8, &qword_10003D930, "~)");
  v20 = (*(v26 + 80) + 64) & ~*(v26 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v27;
  v23 = v28;
  v21[4] = v28;
  v21[5] = v22;
  v21[6] = v29;
  v21[7] = v15;
  sub_100021C70(v8, v21 + v20, &qword_10003D930, "~)");

  v24 = v23;

  sub_100014798(0, 0, v14, &unk_10002EFC8, v21);

  return sub_10000D330(v10, &qword_10003D930, "~)");
}

uint64_t sub_1000194AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a4;
  v27 = a3;
  v5 = sub_100001CC8(&qword_10003D930, "~)");
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v15 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = v15;

  sub_100014798(0, 0, v14, &unk_10002F010, v18);

  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v19 = type metadata accessor for CancellationToken();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  v17(v14, 1, 1, v16);
  sub_100005B8C(v10, v8, &qword_10003D930, "~)");
  v20 = (*(v26 + 80) + 64) & ~*(v26 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v27;
  v23 = v28;
  v21[4] = v28;
  v21[5] = v22;
  v21[6] = v29;
  v21[7] = v15;
  sub_100021C70(v8, v21 + v20, &qword_10003D930, "~)");

  v24 = v23;

  sub_100014798(0, 0, v14, &unk_10002F020, v21);

  return sub_10000D330(v10, &qword_10003D930, "~)");
}

uint64_t sub_100019878(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v29 = a4;
  v27 = a3;
  v5 = sub_100001CC8(&qword_10003D930, "~)");
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_100001CC8(&qword_10003D060, &qword_10002E6B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  sub_100001CC8(&qword_10003D7D0, qword_10002EE68);
  swift_retain_n();
  v15 = dispatch thunk of DaemonConnection.__allocating_init(connection:role:serviceDescription:)();
  v16 = type metadata accessor for TaskPriority();
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = v15;

  sub_100014798(0, 0, v14, &unk_10002F0B8, v18);

  if (qword_10003CC30 != -1)
  {
    swift_once();
  }

  type metadata accessor for TransactionManager();
  static TransactionManager.shared.getter();
  TransactionManager.takeTransaction(for:)();

  v19 = type metadata accessor for CancellationToken();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  v17(v14, 1, 1, v16);
  sub_100005B8C(v10, v8, &qword_10003D930, "~)");
  v20 = (*(v26 + 80) + 64) & ~*(v26 + 80);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v22 = v27;
  v23 = v28;
  v21[4] = v28;
  v21[5] = v22;
  v21[6] = v29;
  v21[7] = v15;
  sub_100021C70(v8, v21 + v20, &qword_10003D930, "~)");

  v24 = v23;

  sub_100014798(0, 0, v14, &unk_10002F0C8, v21);

  return sub_10000D330(v10, &qword_10003D930, "~)");
}

uint64_t sub_100019C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v12 = *(*(sub_100001CC8(&qword_10003D930, "~)") - 8) + 64) + 15;
  v8[3] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_100019D2C;

  return sub_10001C578(a7, a5, a6);
}

uint64_t sub_100019D2C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100022184, 0, 0);
}

uint64_t sub_100019E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v12 = *(*(sub_100001CC8(&qword_10003D930, "~)") - 8) + 64) + 15;
  v8[3] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_100019D2C;

  return sub_10001E160(a7, a5, a6);
}

uint64_t sub_100019F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v12 = *(*(sub_100001CC8(&qword_10003D930, "~)") - 8) + 64) + 15;
  v8[3] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_100019FF8;

  return sub_10001F2D0(a7, a5, a6);
}

uint64_t sub_100019FF8()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_10001A0F4, 0, 0);
}

uint64_t sub_10001A0F4()
{
  v1 = v0[3];
  sub_100005B8C(v0[2], v1, &qword_10003D930, "~)");
  v2 = type metadata accessor for CancellationToken();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[3];
  if (v4 == 1)
  {
    sub_10000D330(v0[3], &qword_10003D930, "~)");
  }

  else
  {
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    (*(v3 + 8))(v5, v2);
  }

  v6 = v0[3];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001A244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v12 = *(*(sub_100001CC8(&qword_10003D930, "~)") - 8) + 64) + 15;
  v8[3] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_100019D2C;

  return sub_100020B74(a7, a5, a6);
}

void *sub_10001A32C(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v3 = type metadata accessor for PreviewsService.Variant();
  v4 = *(v3 - 8);
  v105 = v4[8];
  v5 = __chkstk_darwin(v3);
  v84 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v90 = v82 - v8;
  __chkstk_darwin(v7);
  v86 = v82 - v9;
  v10 = type metadata accessor for PreviewsService();
  v91 = v10;
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PreviewsServiceConnection.Listener();
  v16 = v11[13];
  v102 = (v11 + 13);
  v16(v14, enum case for PreviewsService.processExit(_:), v10);
  v89 = v16;
  v100 = v15;
  v17 = static PreviewsServiceConnection.Listener.local(service:)();
  v18 = v11[1];
  v18(v14, v10);
  v94 = v11 + 1;
  v95 = v18;
  v103 = v2;
  v2[3] = v17;
  v2[4] = sub_100024A1C;
  v2[5] = 0;
  v97 = enum case for PreviewsService.Variant.default(_:);
  v98 = v4;
  v19 = v4[13];
  v93 = v4 + 13;
  v101 = v19;
  v20 = v86;
  (v19)(v86);
  v21 = v4 + 2;
  v22 = v4[2];
  v99 = v21;
  v92 = v22;
  v23 = v90;
  v22(v90, v20, v3);
  v22(v14, v20, v3);
  v24 = v91;
  v16(v14, enum case for PreviewsService.agentPipe(_:), v91);
  v25 = static PreviewsServiceConnection.Listener.local(service:)();
  v18(v14, v24);
  v82[5] = sub_100001CC8(&qword_10003DA10, &qword_10002F0F8);
  v26 = swift_allocObject();
  v106 = 0;
  v107 = 0;
  v82[4] = sub_100001CC8(&qword_10003DA18, &qword_10002F100);
  v26[4] = OSAllocatedUnfairLock.init(value:)();
  v26[2] = v25;
  v82[3] = sub_100001CC8(&qword_10003DA20, &qword_10002F108);
  v27 = v84;
  v28 = v92;
  v92(v84, v23, v3);
  v29 = v98;
  v104 = *(v98 + 80);
  v30 = (v104 + 16) & ~v104;
  v96 = v30;
  v31 = swift_allocObject();
  v32 = v29[4];
  v87 = v29 + 4;
  v88 = v32;
  v32(v31 + v30, v27, v3);
  v33 = MessagePipe.__allocating_init(makeRightTransport:)();
  v34 = v29[1];
  v98 = v29 + 1;
  v85 = v34;
  v35 = v90;
  v34(v90, v3);
  v26[3] = v33;
  v36 = v86;
  v34(v86, v3);
  v103[6] = v26;
  v101(v36, v97, v3);
  v28(v35, v36, v3);
  v28(v14, v36, v3);
  v37 = v91;
  v89(v14, enum case for PreviewsService.shellPipe(_:), v91);
  v38 = static PreviewsServiceConnection.Listener.local(service:)();
  v95(v14, v37);
  v82[2] = sub_100001CC8(&qword_10003DA28, &qword_10002F120);
  v39 = swift_allocObject();
  v106 = 0;
  v107 = 0;
  v82[1] = sub_100001CC8(&qword_10003DA30, &qword_10002F128);
  v39[4] = OSAllocatedUnfairLock.init(value:)();
  v39[2] = v38;
  v82[0] = sub_100001CC8(&qword_10003DA38, &qword_10002F130);
  v40 = v84;
  v41 = v90;
  v28(v84, v90, v3);
  v42 = v28;
  v43 = v96;
  v44 = swift_allocObject();
  v88(v44 + v43, v40, v3);
  v45 = MessagePipe.__allocating_init(makeRightTransport:)();
  v46 = v41;
  v47 = v85;
  v85(v41, v3);
  v39[3] = v45;
  v47(v36, v3);
  v103[7] = v39;
  v101(v36, v97, v3);
  v42(v14, v36, v3);
  v48 = v91;
  v49 = v89;
  v89(v14, enum case for PreviewsService.preview(_:), v91);
  v84 = static PreviewsServiceConnection.Listener.local(service:)();
  v95(v14, v48);
  v50 = v88;
  v88(v46, v36, v3);
  v51 = v96;
  v52 = swift_allocObject();
  v50(v52 + v51, v46, v3);
  v53 = v50;
  v54 = v103;
  v103[8] = v84;
  v54[9] = sub_100021EA8;
  v54[10] = v52;
  v55 = v86;
  v101(v86, v97, v3);
  v92(v14, v55, v3);
  v56 = v91;
  v49(v14, enum case for PreviewsService.install(_:), v91);
  v84 = static PreviewsServiceConnection.Listener.local(service:)();
  v57 = v56;
  v95(v14, v56);
  v53(v46, v55, v3);
  v58 = v96;
  v59 = swift_allocObject();
  v53((v59 + v58), v46, v3);
  v60 = v103;
  v103[11] = v84;
  v60[12] = sub_100021EC0;
  v60[13] = v59;
  v61 = v97;
  v62 = v101;
  v101(v55, v97, v3);
  v89(v14, enum case for PreviewsService.crashListener(_:), v57);
  v102 = static PreviewsServiceConnection.Listener.local(service:)();
  v95(v14, v57);
  v63 = v55;
  v64 = v55;
  v65 = v88;
  v88(v46, v63, v3);
  v66 = v96;
  v67 = swift_allocObject();
  v65(v67 + v66, v46, v3);
  v68 = v65;
  v69 = v103;
  v103[14] = v102;
  v69[15] = sub_100021ED8;
  v69[16] = v67;
  v62(v64, v61, v3);
  v70 = sub_100012F4C();
  v71 = swift_allocObject();
  v106 = 0;
  v107 = 0;
  v71[4] = OSAllocatedUnfairLock.init(value:)();
  v71[2] = v70;
  v72 = v90;
  v92(v90, v64, v3);
  v73 = v96;
  v74 = swift_allocObject();
  v68(v74 + v73, v72, v3);
  v75 = MessagePipe.__allocating_init(makeRightTransport:)();
  v76 = v85;
  v85(v64, v3);
  v71[3] = v75;
  v69[17] = v71;
  v101(v64, v97, v3);
  v77 = sub_100012F4C();
  v78 = swift_allocObject();
  v106 = 0;
  v107 = 0;
  v78[4] = OSAllocatedUnfairLock.init(value:)();
  v78[2] = v77;
  v92(v72, v64, v3);
  v79 = swift_allocObject();
  v68(v79 + v73, v72, v3);
  v80 = MessagePipe.__allocating_init(makeRightTransport:)();
  v76(v64, v3);
  v78[3] = v80;
  v69[18] = v78;
  v69[19] = sub_100012F4C();
  v69[20] = sub_10000AFC4;
  v69[21] = 0;
  v69[2] = v83;
  return v69;
}