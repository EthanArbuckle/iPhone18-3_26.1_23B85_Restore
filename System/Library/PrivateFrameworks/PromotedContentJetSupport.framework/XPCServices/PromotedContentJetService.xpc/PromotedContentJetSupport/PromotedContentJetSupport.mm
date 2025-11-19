void EnterSandbox(void *a1)
{
  v1 = a1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B578();
  }

  bzero(v3, 0x400uLL);
  [v1 cString];
  if (!_set_user_dir_suffix() || !confstr(65537, v3, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B648();
    }

LABEL_11:
    exit(1);
  }

  v2 = realpath_DARWIN_EXTSN(v3, 0);
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B5C0();
    }

    goto LABEL_11;
  }

  free(v2);
}

NSString sub_100001604()
{
  result = sub_10000BC30();
  qword_1000148A8 = result;
  return result;
}

double sub_100001644()
{
  type metadata accessor for JetServiceState();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  qword_1000148B0 = v0;
  return result;
}

uint64_t sub_10000167C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = a1;
  v2 = sub_10000210C(&qword_100014560, &qword_10000C3C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_10000B750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000BBC0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  sub_10000BBA0();
  v19 = sub_10000BBB0();
  v20 = sub_10000BCD0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = v12;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received request for PromotedContentJetService", v21, 2u);
    v12 = v29;
  }

  v22 = *(v12 + 8);
  v22(v18, v11);
  if (qword_1000144F0 != -1)
  {
    swift_once();
  }

  if (*(qword_1000148B0 + 32))
  {
    sub_10000B950();
    sub_1000021CC(&qword_100014568, &type metadata accessor for JetServiceReceiver);

    sub_10000BBF0();
  }

  else
  {
    type metadata accessor for JetServiceState();
    sub_100002214(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100002154(v5);
      sub_10000BBA0();
      v24 = sub_10000BBB0();
      v25 = sub_10000BCF0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to create JetPack cache directory", v26, 2u);
      }

      v22(v16, v11);
      return sub_10000BC00();
    }

    else
    {
      v27 = (*(v7 + 32))(v10, v5, v6);
      __chkstk_darwin(v27);
      *(&v28 - 2) = v10;
      sub_10000B950();
      sub_1000021CC(&qword_100014568, &type metadata accessor for JetServiceReceiver);
      sub_10000BBF0();
      return (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_100001B6C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10000BB00();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10000BBC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BBA0();
  v11 = sub_10000BBB0();
  v12 = sub_10000BCD0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Using existing JavaScript environment", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  if (qword_1000144F0 != -1)
  {
    swift_once();
  }

  sub_100002E20();

  v14 = qword_1000148B0;
  v15 = sub_10000B8E0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = sub_10000B8D0();
  sub_10000BAF0();
  v19 = sub_10000B7D0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_10000B7A0();
  type metadata accessor for JetServiceProcessor();
  v23 = swift_allocObject();
  *(v23 + 40) = v14;
  *(v23 + 48) = &off_1000108E0;
  *(v23 + 32) = 1;
  *(v23 + 16) = a1;
  *(v23 + 24) = v22;
  *(v23 + 56) = v18;
  sub_1000021CC(&qword_100014570, type metadata accessor for JetServiceProcessor);
  v24 = sub_10000B950();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  result = sub_10000B940();
  *a2 = result;
  return result;
}

uint64_t sub_100001E44@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10000BB00();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (qword_1000144F0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000353C(a1);

  v7 = qword_1000148B0;
  v8 = sub_10000B8E0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = sub_10000B8D0();
  sub_10000BAF0();
  v12 = sub_10000B7D0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_10000B7A0();
  type metadata accessor for JetServiceProcessor();
  v16 = swift_allocObject();
  *(v16 + 40) = v7;
  *(v16 + 48) = &off_1000108E0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v6;
  *(v16 + 24) = v15;
  *(v16 + 56) = v11;
  sub_1000021CC(&qword_100014570, type metadata accessor for JetServiceProcessor);
  v17 = sub_10000B950();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_10000B940();

  *a2 = v20;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10000BBE0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10000BC30();
  EnterSandbox(v5);

  sub_10000BBD0();
  v6 = sub_10000BC20();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_10000BC10();
  dispatch_main();
}

uint64_t sub_10000210C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002154(uint64_t a1)
{
  v2 = sub_10000210C(&qword_100014560, &qword_10000C3C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000021CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002214@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000BBC0();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  __chkstk_darwin(v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000B710();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000B750();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v37 - v16;
  v18 = [objc_opt_self() defaultManager];
  v44[0] = 0;
  v19 = [v18 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v44];

  v20 = v44[0];
  if (v19)
  {
    sub_10000B720();
    v21 = v20;

    v44[0] = 0xD000000000000026;
    v44[1] = 0x800000010000CF10;
    v39 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v40 = a1;
    v23 = v41;
    v22 = v42;
    v38 = *(v41 + 104);
    v38(v9);
    v37[1] = sub_100005CA8();
    sub_10000B740();
    v43 = v10;
    v24 = *(v23 + 8);
    v24(v9, v22);
    v25 = v11;
    v26 = *(v11 + 8);
    v26(v15, v43);
    strcpy(v44, "JetPackCache");
    BYTE5(v44[1]) = 0;
    HIWORD(v44[1]) = -5120;
    (v38)(v9, v39, v22);
    a1 = v40;
    sub_10000B740();
    v24(v9, v22);
    v10 = v43;
    v26(v17, v43);
    v27 = 0;
  }

  else
  {
    v28 = v43;
    v42 = v11;
    v29 = v44[0];
    sub_10000B700();

    swift_willThrow();
    sub_10000BBA0();
    swift_errorRetain();
    v30 = sub_10000BBB0();
    v31 = sub_10000BCF0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v2;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to get cache directory %@", v33, 0xCu);
      sub_100005FE4(v34, &qword_100014780, &qword_10000C4C0);

      v2 = v32;
    }

    else
    {
    }

    (*(v28 + 8))(v5, v2);
    v27 = 1;
    v25 = v42;
  }

  return (*(v25 + 56))(a1, v27, 1, v10);
}

uint64_t sub_100002734(uint64_t a1, const char *a2, char a3)
{
  v6 = v3;
  v7 = sub_10000BBC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B930();
  result = swift_dynamicCastClass();
  if (result)
  {
    sub_10000BBA0();
    v13 = sub_10000BBB0();
    v14 = sub_10000BCE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, a2, v15, 2u);
    }

    result = (*(v8 + 8))(v11, v7);
    *(v6 + 16) = a3;
  }

  return result;
}

uint64_t sub_100002934()
{
  v0 = sub_10000B780();
  sub_100005C44(v0, qword_1000148B8);
  sub_100005B44(v0, qword_1000148B8);
  return sub_10000B770();
}

uint64_t sub_100002990@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_10000BA00();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin();
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000210C(&qword_1000147A0, &unk_10000C528);
  v6 = *(sub_10000BA20() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_10000C3E0;
  v9 = enum case for DeviceCapability.Platform.iOS(_:);
  v10 = v2[13];
  v10(v5, enum case for DeviceCapability.Platform.iOS(_:), v1);
  sub_10000BA10();
  v11 = v2[1];
  v11(v5, v1);
  v10(v5, v9, v1);
  sub_10000BA10();
  v11(v5, v1);
  v12 = [objc_opt_self() longBuildVersion];
  sub_10000BC40();

  [objc_opt_self() isAppleInternalInstall];
  return sub_10000B9E0();
}

void sub_100002BF8()
{
  v1 = sub_10000BBC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[4];
  v0[4] = 0;

  v7 = v0[2];
  v0[2] = 0;

  v8 = v0[5];
  v0[5] = 0;

  v9 = v0[3];
  if (v9)
  {
    v10 = v0[3];
    swift_unknownObjectRetain();
    sub_10000BBA0();
    v11 = sub_10000BBB0();
    v12 = sub_10000BCE0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Removing JSStack reload listener", v13, 2u);
    }

    (*(v2 + 8))(v5, v1);
    v14 = [objc_opt_self() defaultCenter];
    v15 = qword_1000144E8;
    swift_unknownObjectRetain();
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_1000148A8;
    v17 = sub_10000BC30();
    [v14 removeObserver:v9 name:v16 object:v17];

    swift_unknownObjectRelease_n();
  }
}

uint64_t sub_100002E20()
{
  v1 = sub_10000BBC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = *(v0 + 16);
  if (v10)
  {
    v11 = sub_10000BCC0();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_10000BC90();
    swift_retain_n();
    v12 = sub_10000BC80();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    sub_10000323C(0, 0, v9, &unk_10000C520, v13);
  }

  else
  {
    sub_10000BBA0();
    v15 = sub_10000BBB0();
    v16 = sub_10000BCF0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Tried to restart the watchdog when one doesn't exist", v17, 2u);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_100003068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_10000BC90();
  v4[4] = sub_10000BC80();
  sub_10000BAD0();
  sub_1000062D0(&qword_100014798, 255, &type metadata accessor for TaskTimer);
  v6 = sub_10000BC70();

  return _swift_task_switch(sub_10000314C, v6, v5);
}

uint64_t sub_10000314C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_10000BAC0();
  v5 = sub_10000BC70();

  return _swift_task_switch(sub_1000031DC, v5, v4);
}

uint64_t sub_1000031DC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000210C(&qword_100014790, &qword_10000C4C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100005F7C(a3, v26 - v10, &qword_100014790, &qword_10000C4C8);
  v12 = sub_10000BCC0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005FE4(v11, &qword_100014790, &qword_10000C4C8);
  }

  else
  {
    sub_10000BCB0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10000BC70();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10000BC50() + 32;
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

      sub_100005FE4(a3, &qword_100014790, &qword_10000C4C8);

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

  sub_100005FE4(a3, &qword_100014790, &qword_10000C4C8);
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

uint64_t sub_10000353C(uint64_t a1)
{
  v2 = v1;
  v39 = sub_10000BBC0();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v38 - v10;
  v12 = sub_10000B9F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v2[5])
  {
    type metadata accessor for BuildMonitor();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v2[5] = v17;
  }

  sub_100002990(v16);
  v18 = v2[5];
  if (v18)
  {
    v19 = type metadata accessor for BuildMonitor();
    v21 = sub_1000062D0(&qword_100014768, v20, type metadata accessor for BuildMonitor);
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v41 = 0;
    v42 = 0;
  }

  aBlock = v18;
  v43 = v19;
  v44 = v21;

  v22 = sub_1000051BC(a1, v16, &aBlock);
  (*(v13 + 8))(v16, v12);
  sub_100005FE4(&aBlock, &qword_100014760, &qword_10000C4B0);
  v23 = v2[4];
  v2[4] = v22;

  v24 = sub_10000BCC0();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  sub_10000BC90();

  v25 = sub_10000BC80();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v2;
  sub_10000323C(0, 0, v11, &unk_10000C4D8, v26);

  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_10000BBA0();
    v27 = sub_10000BBB0();
    v28 = sub_10000BCE0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Listening for environment changes to reload JSStack", v29, 2u);
    }

    (*(v4 + 8))(v7, v39);
    v30 = [objc_opt_self() defaultCenter];
    if (qword_1000144E8 != -1)
    {
      swift_once();
    }

    v31 = qword_1000148A8;
    v32 = sub_10000BC30();
    v33 = [objc_opt_self() currentQueue];
    v44 = sub_100005DB4;
    v45 = v2;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10000460C;
    v43 = &unk_100010920;
    v34 = _Block_copy(&aBlock);

    v35 = [v30 addObserverForName:v31 object:v32 queue:v33 usingBlock:v34];
    _Block_release(v34);

    v36 = v2[3];
    v2[3] = v35;
    swift_unknownObjectRelease();
  }

  return v22;
}

uint64_t sub_100003A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_10000BCC0() - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_10000BC90();
  v4[4] = sub_10000BC80();
  v7 = sub_10000BC70();
  v4[5] = v7;
  v4[6] = v6;

  return _swift_task_switch(sub_100003B30, v7, v6);
}

uint64_t sub_100003B30()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000BAD0();
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v2;

  sub_10000BCA0();
  v4 = _s25PromotedContentJetSupport9TaskTimerC12timeInterval4name8priority7repeats6active9operationACSd_SSScPS2byyYaYbKYAcntYacfCTu[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100003C50;
  v6 = v0[3];
  v7.n128_u64[0] = 30.0;

  return _s25PromotedContentJetSupport9TaskTimerC12timeInterval4name8priority7repeats6active9operationACSd_SSScPS2byyYaYbKYAcntYacfC(0xD00000000000001FLL, 0x800000010000D070, v6, 0, 1, &unk_10000C510, v3, v7);
}

uint64_t sub_100003C50(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return _swift_task_switch(sub_100003D78, v5, v4);
}

uint64_t sub_100003D78()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v5 = *(v4 + 16);
  *(v4 + 16) = v1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_100003E1C()
{
  sub_10000BC90();
  *(v0 + 24) = sub_10000BC80();
  v2 = sub_10000BC70();

  return _swift_task_switch(sub_100003EB0, v2, v1);
}

uint64_t sub_100003EB0()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100002BF8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100003F18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000BCC0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_100004360(0, 0, v6, &unk_10000C4E8, v8);
}

uint64_t sub_100004024()
{
  v1 = sub_10000BBC0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100004110;

  return sub_100004700();
}

uint64_t sub_100004110()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10000425C, 0, 0);
  }
}

uint64_t sub_10000425C()
{
  v1 = v0[4];
  sub_10000BBA0();
  v2 = sub_10000BBB0();
  v3 = sub_10000BCD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reloaded JavaScript environment after a configuration change", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100004360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000210C(&qword_100014790, &qword_10000C4C8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100005F7C(a3, v24 - v10, &qword_100014790, &qword_10000C4C8);
  v12 = sub_10000BCC0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005FE4(v11, &qword_100014790, &qword_10000C4C8);
  }

  else
  {
    sub_10000BCB0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10000BC70();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10000BC50() + 32;

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

      sub_100005FE4(a3, &qword_100014790, &qword_10000C4C8);

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

  sub_100005FE4(a3, &qword_100014790, &qword_10000C4C8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000460C(uint64_t a1)
{
  v2 = sub_10000B6E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_10000B6D0();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100004700()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = sub_10000BBC0();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_10000B9F0();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = *(*(sub_10000210C(&qword_100014560, &qword_10000C3C8) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v9 = sub_10000B750();
  v1[16] = v9;
  v10 = *(v9 - 8);
  v1[17] = v10;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_10000BC90();
  v1[19] = sub_10000BC80();
  v13 = sub_10000BC70();
  v1[20] = v13;
  v1[21] = v12;

  return _swift_task_switch(sub_10000490C, v13, v12);
}

uint64_t sub_10000490C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_100002214(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[19];
    v5 = v0[15];
    v6 = v0[11];

    sub_100005FE4(v5, &qword_100014560, &qword_10000C3C8);
    sub_10000BBA0();
    v7 = sub_10000BBB0();
    v8 = sub_10000BCF0();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to reload JetPack while getting cache directory", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);
    goto LABEL_15;
  }

  v14 = v0[7];
  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  if (!*(v14 + 40))
  {
    type metadata accessor for BuildMonitor();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v14 + 40) = v15;
  }

  v16 = *(v0[7] + 32);
  v0[22] = v16;
  if (!v16)
  {
    v20 = v0[19];

    v21 = v0[7];
    sub_100002990(v0[14]);
    v22 = *(v21 + 40);
    if (v22)
    {
      v23 = type metadata accessor for BuildMonitor();
      v25 = sub_1000062D0(&qword_100014768, v24, type metadata accessor for BuildMonitor);
    }

    else
    {
      v23 = 0;
      v25 = 0;
      v0[3] = 0;
      v0[4] = 0;
    }

    v27 = v0[17];
    v26 = v0[18];
    v28 = v0[16];
    v30 = v0[13];
    v29 = v0[14];
    v31 = v0[12];
    v32 = v0[7];
    v0[2] = v22;
    v0[5] = v23;
    v0[6] = v25;

    v33 = sub_1000051BC(v26, v29, (v0 + 2));
    (*(v30 + 8))(v29, v31);
    (*(v27 + 8))(v26, v28);
    sub_100005FE4((v0 + 2), &qword_100014760, &qword_10000C4B0);
    v34 = *(v32 + 32);
    *(v32 + 32) = v33;

LABEL_15:
    v35 = v0[18];
    v36 = v0[14];
    v37 = v0[15];
    v38 = v0[11];

    v39 = v0[1];

    return v39();
  }

  v17 = *(&async function pointer to dispatch thunk of IntentDispatcher.requestGarbageCollection() + 1);
  v40 = (&async function pointer to dispatch thunk of IntentDispatcher.requestGarbageCollection() + async function pointer to dispatch thunk of IntentDispatcher.requestGarbageCollection());

  v18 = swift_task_alloc();
  v0[23] = v18;
  *v18 = v0;
  v18[1] = sub_100004C7C;

  return v40();
}

uint64_t sub_100004C7C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;

  v6 = *(v2 + 176);
  if (v0)
  {

    v7 = *(v3 + 160);
    v8 = *(v3 + 168);
    v9 = sub_10000632C;
  }

  else
  {

    v7 = *(v3 + 160);
    v8 = *(v3 + 168);
    v9 = sub_100004DC0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100004DC0()
{
  v1 = v0[19];

  v2 = v0[7];
  sub_100002990(v0[14]);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = type metadata accessor for BuildMonitor();
    v6 = sub_1000062D0(&qword_100014768, v5, type metadata accessor for BuildMonitor);
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v0[3] = 0;
    v0[4] = 0;
  }

  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  v13 = v0[7];
  v0[2] = v3;
  v0[5] = v4;
  v0[6] = v6;

  v14 = sub_1000051BC(v7, v10, (v0 + 2));
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  sub_100005FE4((v0 + 2), &qword_100014760, &qword_10000C4B0);
  v15 = *(v13 + 32);
  *(v13 + 32) = v14;

  v16 = v0[18];
  v17 = v0[14];
  v18 = v0[15];
  v19 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100004F58()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100004FCC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000050C4;

  return v7(a1);
}

uint64_t sub_1000050C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000051BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v3 = sub_10000B830();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  (__chkstk_darwin)();
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10000B750();
  v59 = *(v60 - 8);
  v7 = *(v59 + 64);
  (__chkstk_darwin)();
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10000BBC0();
  v9 = *(v68 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v61 = &v58 - v15;
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v18 = sub_10000210C(&qword_100014770, &qword_10000C4B8);
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - v20;
  v22 = sub_10000B780();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000B890();
  v69 = *(v27 - 8);
  v70 = v27;
  v28 = *(v69 + 64);
  __chkstk_darwin(v27);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B880();
  v31 = sub_10000B930();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v72 = sub_10000B920();
  v71 = objc_opt_self();
  if ([v71 isAppleInternalInstall])
  {
    sub_10000B870();
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_100005FE4(v21, &qword_100014770, &qword_10000C4B8);
    }

    else
    {
      (*(v23 + 32))(v26, v21, v22);
      sub_10000B980();

      (*(v23 + 8))(v26, v22);
    }
  }

  else
  {
    if (qword_1000144F8 != -1)
    {
      swift_once();
    }

    sub_100005B44(v22, qword_1000148B8);
    sub_10000B980();
  }

  v34 = sub_10000B9D0();
  sub_10000B9A0();
  sub_10000B9B0();

  v35 = sub_10000BAA0();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_10000BA90();
  sub_10000BA50();

  v38 = sub_10000B9F0();
  v75[3] = v38;
  v75[4] = sub_1000062D0(&qword_100014778, 255, &type metadata accessor for DeviceInfo);
  v39 = sub_100005B7C(v75);
  (*(*(v38 - 8) + 16))(v39, v66, v38);
  sub_10000BA60();

  sub_100005BE0(v75);
  sub_100005F7C(v67, &v73, &qword_100014760, &qword_10000C4B0);
  if (v74)
  {
    sub_100005C2C(&v73, v75);
    sub_10000BA40();

    sub_100005BE0(v75);
  }

  else
  {
    sub_100005FE4(&v73, &qword_100014760, &qword_10000C4B0);
  }

  if (sub_10000B850())
  {
    sub_10000BBA0();
    v40 = sub_10000BBB0();
    v41 = sub_10000BCD0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Only using bundled JetPack.", v42, 2u);
    }

    (*(v9 + 8))(v17, v68);
LABEL_24:
    sub_10000BA70();

    goto LABEL_25;
  }

  if (![v71 isAppleInternalInstall])
  {
LABEL_21:
    sub_10000BBA0();
    v53 = sub_10000BBB0();
    v54 = sub_10000BCD0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Either use cache or fallback to bundled JetPack.", v55, 2u);
    }

    (*(v9 + 8))(v13, v68);
    sub_10000BA70();

    goto LABEL_24;
  }

  sub_10000B840();
  v44 = v62;
  v43 = v63;
  if ((*(v62 + 88))(v6, v63) != enum case for JetServiceSettings.Environment.custom(_:))
  {
    (*(v44 + 8))(v6, v43);
    goto LABEL_21;
  }

  (*(v44 + 96))(v6, v43);
  v45 = v59;
  v46 = v60;
  (*(v59 + 32))(v64, v6, v60);
  sub_10000BBA0();
  v47 = sub_10000BBB0();
  v48 = sub_10000BCD0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Only use custom URL to fetch JetPack.", v49, 2u);
  }

  (*(v9 + 8))(v61, v68);
  v50 = *(v34 + 48);
  v51 = *(v34 + 52);
  swift_allocObject();
  sub_10000B9C0();
  sub_10000B970();

  v52 = v64;
  sub_10000B990();

  sub_10000BA70();

  (*(v45 + 8))(v52, v46);
LABEL_25:
  if ([v71 isAppleInternalInstall] && (sub_10000B860() & 1) != 0)
  {
    sub_10000BA30();
  }

  v56 = sub_10000BA80();

  (*(v69 + 8))(v30, v70);
  return v56;
}

uint64_t sub_100005B44(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005B7C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100005BE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005C2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *sub_100005C44(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100005CA8()
{
  result = qword_100014788;
  if (!qword_100014788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014788);
  }

  return result;
}

uint64_t sub_100005D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006328;

  return sub_100003A6C(a1, v4, v5, v6);
}

uint64_t sub_100005DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005E88;

  return sub_100004024();
}

uint64_t sub_100005E88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005F7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000210C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005FE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000210C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006044()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000607C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006328;

  return sub_100004FCC(a1, v5);
}

uint64_t sub_100006134()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100006328;

  return sub_100003DFC(v2, v3, v4);
}

uint64_t sub_1000061DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000621C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005E88;

  return sub_100003068(a1, v4, v5, v6);
}

uint64_t sub_1000062D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100006330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_10000B8F0();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = sub_10000BBC0();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = sub_10000BB30();
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();
  v15 = sub_10000B910();
  v5[23] = v15;
  v16 = *(v15 - 8);
  v5[24] = v16;
  v17 = *(v16 + 64) + 15;
  v5[25] = swift_task_alloc();
  v18 = sub_10000BB20();
  v5[26] = v18;
  v19 = *(v18 - 8);
  v5[27] = v19;
  v20 = *(v19 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v21 = sub_10000BB00();
  v5[30] = v21;
  v22 = *(v21 - 8);
  v5[31] = v22;
  v23 = *(v22 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v24 = *(*(sub_10000210C(&qword_100014868, &qword_10000C618) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();

  return _swift_task_switch(sub_10000662C, 0, 0);
}

uint64_t sub_10000662C()
{
  v0[37] = *(v0[13] + 16);
  v1 = *(&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + 1);
  v5 = (&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter);
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_1000066E0;
  v3 = v0[36];

  return v5(v3);
}

uint64_t sub_1000066E0()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return _swift_task_switch(sub_1000067DC, 0, 0);
}

uint64_t sub_1000067DC()
{
  v59 = v0;
  v1 = v0[36];
  v2 = sub_10000B7F0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100005FE4(v1, &qword_100014868, &qword_10000C618);
    v56 = 0xE200000000000000;
    v52 = 16718;
  }

  else
  {
    v52 = sub_10000B7E0();
    v56 = v4;
    (*(v3 + 8))(v1, v2);
  }

  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[29];
  v10 = v0[24];
  v53 = v0[25];
  v11 = v0[23];
  v12 = v0[11];
  v0[39] = *(v0[13] + 24);
  sub_10000B790();
  sub_10000B7C0();
  v55 = *(v8 + 16);
  v55(v6, v5, v7);
  sub_10000B2E4();
  sub_100007350();
  sub_10000B338(v13);
  (*(v10 + 16))(v53, v12, v11);
  sub_10000B348();
  sub_100007350();
  sub_10000B338(v14);

  v15 = sub_10000BB10();
  v16 = sub_10000BD30();

  if (sub_10000BD40())
  {
    v17 = v0[34];
    v54 = v16;
    v19 = v0[30];
    v18 = v0[31];
    v20 = v0[24];
    v21 = v0[25];
    v50 = v0[23];
    v51 = v0[35];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v58 = v23;
    *v22 = 134349570;
    *(v22 + 4) = sub_10000BAE0();
    v24 = *(v18 + 8);
    v24(v17, v19);
    *(v22 + 12) = 2050;
    *(v22 + 14) = sub_10000B900();
    (*(v20 + 8))(v21, v50);
    *(v22 + 22) = 2082;
    v25 = sub_10000AB6C(v52, v56, &v58);

    *(v22 + 24) = v25;
    v26 = sub_10000BAE0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v54, v26, "Dispatch Intent", "id=%{name=id,public}llu type=%{name=type,public}ld jsVersion=%{name=jsVersion,public}s", v22, 0x20u);
    sub_100005BE0(v23);
  }

  else
  {
    v27 = v0[34];
    v29 = v0[30];
    v28 = v0[31];
    v31 = v0[24];
    v30 = v0[25];
    v32 = v0[23];

    (*(v31 + 8))(v30, v32);
    v24 = *(v28 + 8);
    v24(v27, v29);
  }

  v0[40] = v24;
  v33 = v0[29];
  v34 = v0[26];
  v35 = v0[27];
  v36 = v0[10];
  v55(v0[33], v0[35], v0[30]);
  v37 = sub_10000BB70();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v0[41] = sub_10000BB60();
  v40 = *(v35 + 8);
  v0[42] = v40;
  v0[43] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v33, v34);
  v42 = v36[3];
  v41 = v36[4];
  v43 = sub_10000B3EC(v36, v42);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  v0[7] = swift_getAssociatedConformanceWitness();
  v0[8] = swift_getAssociatedConformanceWitness();
  v44 = sub_100005B7C(v0 + 2);
  v45 = *(&async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:dependencies:) + 1);
  v57 = &async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:dependencies:) + async function pointer to dispatch thunk of IntentDispatcher.dispatch<A>(_:dependencies:);
  v46 = swift_task_alloc();
  v0[44] = v46;
  *v46 = v0;
  v46[1] = sub_100006D0C;
  v47 = v0[37];
  v48 = v0[12];

  return (v57)(v44, v43, v48, v42, v41);
}

uint64_t sub_100006D0C()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_1000071B8;
  }

  else
  {
    v3 = sub_100006E20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006E20()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = *(v0 + 256);
  v4 = *(v0 + 224);
  sub_10000B7C0();
  v5 = sub_10000BB10();
  sub_10000BB50();
  v6 = sub_10000BD20();
  if (sub_10000BD40())
  {
    v7 = *(v0 + 328);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 160);

    sub_10000BB80();

    if ((*(v9 + 88))(v8, v10) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v11 = "";
    }

    v12 = *(v0 + 256);
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_10000BAE0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v14, "Dispatch Intent", v11, v13, 2u);
  }

  v16 = *(v0 + 336);
  v15 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = v5;
  v19 = *(v0 + 248);
  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23 = *(v0 + 208);
  v24 = *(v0 + 152);

  v17(v20, v21);
  v16(v22, v23);
  sub_10000BBA0();
  v25 = sub_10000BBB0();
  v26 = sub_10000BCD0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Successfully dispatched request. Sending reply...", v27, 2u);
  }

  v28 = *(v0 + 328);
  v29 = *(v0 + 280);
  v42 = *(v0 + 320);
  v43 = *(v0 + 288);
  v44 = *(v0 + 272);
  v45 = *(v0 + 264);
  v30 = *(v0 + 248);
  v31 = *(v0 + 240);
  v46 = *(v0 + 256);
  v47 = *(v0 + 232);
  v48 = *(v0 + 224);
  v49 = *(v0 + 200);
  v50 = *(v0 + 176);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  v34 = *(v0 + 136);
  v51 = *(v0 + 128);
  v35 = *(v0 + 72);

  (*(v33 + 8))(v32, v34);
  v36 = *(v0 + 40);
  v41 = *(v0 + 56);
  v37 = sub_10000B3EC((v0 + 16), v36);
  *(v35 + 24) = v36;
  *(v35 + 32) = v41;
  v38 = sub_100005B7C(v35);
  (*(*(v36 - 8) + 16))(v38, v37, v36);

  v42(v29, v31);
  sub_100005BE0((v0 + 16));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1000071B8()
{
  v1 = v0[13];
  sub_10000B39C(v0 + 2);
  if (*(v1 + 56))
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[14];
    (*(v3 + 104))(v2, enum case for JetServiceTelemetryErrorCode.jsError(_:), v4);
    sub_10000B8C0();
    (*(v3 + 8))(v2, v4);
  }

  v5 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[31];
  v13 = v0[30];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[28];
  v20 = v0[25];
  v21 = v0[22];
  v22 = v0[19];
  v23 = v0[16];
  swift_willThrow();

  v7(v9, v13);

  v14 = v0[1];
  v15 = v0[45];

  return v14();
}

uint64_t sub_1000073C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10000B8F0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_10000210C(&qword_100014868, &qword_10000C618) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_10000BBC0();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v11 = sub_10000B750();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v14 = *(*(sub_10000B8A0() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000075F4, 0, 0);
}

uint64_t sub_1000075F4()
{
  v135 = v0;
  v1 = *(v0 + 176);
  sub_10000B174(*(v0 + 24), v1);
  v2 = sub_10000210C(&qword_100014878, &qword_10000C630);
  v3 = (*(*(v2 - 8) + 48))(v1, 2, v2);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(*(v0 + 32) + 16);
      v5 = *(&async function pointer to dispatch thunk of IntentDispatcher.clearCache() + 1);
      v129 = (&async function pointer to dispatch thunk of IntentDispatcher.clearCache() + async function pointer to dispatch thunk of IntentDispatcher.clearCache());
      v6 = swift_task_alloc();
      *(v0 + 184) = v6;
      *v6 = v0;
      v6[1] = sub_100008024;

      return v129();
    }

    else
    {
      v33 = *(*(v0 + 32) + 16);
      v34 = *(&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + 1);
      v131 = (&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter);
      v35 = swift_task_alloc();
      *(v0 + 320) = v35;
      *v35 = v0;
      v35[1] = sub_100009640;
      v36 = *(v0 + 64);

      return v131(v36);
    }
  }

  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 160);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 120);
  v14 = (v8 + *(v2 + 48));
  v15 = *v14;
  *(v0 + 216) = *v14;
  v130 = v14[1];
  *(v0 + 224) = v130;
  *(v0 + 328) = *(v8 + *(v2 + 64));
  (*(v11 + 32))(v9);
  sub_10000BB90();
  v16 = *(v11 + 16);
  *(v0 + 232) = v16;
  *(v0 + 240) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v10, v9, v12);
  v17 = sub_10000BBB0();
  v18 = sub_10000BD10();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 160);
  v21 = *(v0 + 136);
  v124 = *(v0 + 128);
  v22 = *(v0 + 120);
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  if (v19)
  {
    v120 = v15;
    v25 = swift_slowAlloc();
    v117 = v24;
    v26 = swift_slowAlloc();
    v134[0] = v26;
    *v25 = 136315138;
    v113 = v18;
    v27 = sub_10000B730(1);
    v115 = v22;
    v29 = v28;
    v30 = *(v21 + 8);
    v30(v20, v124);
    v31 = sub_10000AB6C(v27, v29, v134);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v17, v113, "[%s] Fetching JetPack", v25, 0xCu);
    sub_100005BE0(v26);

    v15 = v120;

    v32 = *(v23 + 8);
    v32(v115, v117);
  }

  else
  {

    v30 = *(v21 + 8);
    v30(v20, v124);
    v32 = *(v23 + 8);
    v32(v22, v24);
  }

  *(v0 + 248) = v30;
  *(v0 + 256) = v32;
  v37 = objc_allocWithZone(AMSSnapshotBag);
  sub_10000B1D8(v15, v130);
  isa = sub_10000B760().super.isa;
  v39 = [v37 initWithData:isa];
  *(v0 + 264) = v39;

  sub_10000B22C(v15, v130);
  if (v39)
  {
    v40 = *(*(v0 + 32) + 16);
    v41 = *(&async function pointer to dispatch thunk of IntentDispatcher.fetchForCache(_:bag:) + 1);
    v132 = (&async function pointer to dispatch thunk of IntentDispatcher.fetchForCache(_:bag:) + async function pointer to dispatch thunk of IntentDispatcher.fetchForCache(_:bag:));
    v42 = swift_task_alloc();
    *(v0 + 272) = v42;
    *v42 = v0;
    v42[1] = sub_100008518;
    v43 = *(v0 + 168);

    return v132(v43, v39);
  }

  sub_10000B280();
  swift_allocError();
  swift_willThrow();
  v45 = *(v0 + 232);
  v44 = *(v0 + 240);
  v46 = *(v0 + 168);
  v47 = *(v0 + 144);
  v48 = *(v0 + 128);
  v49 = *(v0 + 96);
  sub_10000BB90();
  v45(v47, v46, v48);
  v50 = sub_10000BBB0();
  v121 = sub_10000BD10();
  v51 = os_log_type_enabled(v50, v121);
  v53 = *(v0 + 248);
  v52 = *(v0 + 256);
  v55 = *(v0 + 136);
  v54 = *(v0 + 144);
  v56 = *(v0 + 128);
  v57 = *(v0 + 96);
  v58 = *(v0 + 72);
  v125 = *(v0 + 80);
  if (v51)
  {
    v118 = *(v0 + 72);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v134[0] = v60;
    *v59 = 136315138;
    v114 = v57;
    v116 = v52;
    v61 = sub_10000B730(1);
    v63 = v62;
    v53(v54, v56);
    v64 = sub_10000AB6C(v61, v63, v134);

    *(v59 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v50, v121, "[%s] Failed to fetch JetPack", v59, 0xCu);
    sub_100005BE0(v60);

    v116(v114, v118);
  }

  else
  {

    v53(v54, v56);
    v52(v57, v58);
  }

  v65 = sub_10000B6F0();
  v66 = [v65 domain];

  v67 = sub_10000BC40();
  v69 = v68;

  if (v67 == 0x44726F727245504ALL && v69 == 0xED00006E69616D6FLL)
  {

    goto LABEL_23;
  }

  v70 = sub_10000BD70();

  if (v70)
  {
LABEL_23:
    if (*(v0 + 328) == 1 && *(*(v0 + 32) + 56))
    {
      v72 = *(v0 + 48);
      v71 = *(v0 + 56);
      v73 = *(v0 + 40);
      (*(v72 + 104))(v71, enum case for JetServiceTelemetryErrorCode.jetpackError(_:), v73);

      sub_10000B8C0();

      (*(v72 + 8))(v71, v73);
    }

    v74 = *(v0 + 88);
    sub_10000BBA0();
    v75 = sub_10000BBB0();
    v76 = sub_10000BD00();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Downloaded Malformed JetPack. Cache was not updated.", v77, 2u);
    }

    v78 = *(v0 + 256);
    v80 = *(v0 + 216);
    v79 = *(v0 + 224);
    v122 = *(v0 + 168);
    v126 = *(v0 + 248);
    v81 = *(v0 + 136);
    v119 = *(v0 + 128);
    v82 = *(v0 + 80);
    v83 = *(v0 + 88);
    v84 = *(v0 + 72);
    v85 = *(v0 + 16);

    v78(v83, v84);
    *(v85 + 24) = &type metadata for String;
    *(v85 + 32) = &protocol witness table for String;
    *(v85 + 40) = &protocol witness table for String;

    sub_10000B22C(v80, v79);
    strcpy(v85, "Update Failed");
    *(v85 + 14) = -4864;
    v126(v122, v119);
    v87 = *(v0 + 168);
    v86 = *(v0 + 176);
    v89 = *(v0 + 152);
    v88 = *(v0 + 160);
    v90 = *(v0 + 144);
    v92 = *(v0 + 112);
    v91 = *(v0 + 120);
    v94 = *(v0 + 96);
    v93 = *(v0 + 104);
    v95 = *(v0 + 88);
    v127 = *(v0 + 64);
    v133 = *(v0 + 56);

    v96 = *(v0 + 8);
    goto LABEL_30;
  }

  v97 = *(v0 + 248);
  v98 = *(v0 + 216);
  v99 = *(v0 + 224);
  v100 = *(v0 + 168);
  v101 = *(v0 + 128);
  v102 = *(v0 + 136);
  swift_willThrow();
  sub_10000B22C(v98, v99);
  v97(v100, v101);
  v104 = *(v0 + 168);
  v103 = *(v0 + 176);
  v106 = *(v0 + 152);
  v105 = *(v0 + 160);
  v107 = *(v0 + 144);
  v109 = *(v0 + 112);
  v108 = *(v0 + 120);
  v111 = *(v0 + 96);
  v110 = *(v0 + 104);
  v112 = *(v0 + 88);
  v123 = *(v0 + 64);
  v128 = *(v0 + 56);

  v96 = *(v0 + 8);
LABEL_30:

  return v96();
}

uint64_t sub_100008024()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100009960;
  }

  else
  {
    v3 = sub_100008138;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008138()
{
  v1 = *(*(v0 + 32) + 40);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1000081CC;

  return sub_100004700();
}

uint64_t sub_1000081CC()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100008418;
  }

  else
  {
    v3 = sub_1000082E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000082E0()
{
  v1 = v0[2];
  v1[3] = &type metadata for String;
  v1[4] = &protocol witness table for String;
  v1[5] = &protocol witness table for String;
  *v1 = 0x6574656C706D6F43;
  v1[1] = 0xE900000000000064;
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v14 = v0[8];
  v15 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100008418()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100008518(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *(*v4 + 272);
  v9 = *v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  *(v5 + 329) = a3;
  *(v5 + 296) = v3;

  if (v3)
  {
    v7 = sub_100009A60;
  }

  else
  {
    v7 = sub_100008634;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100008634()
{
  v83 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 112);
  v4 = *(v0 + 329);
  sub_10000BBA0();
  sub_10000B2D4();
  v5 = sub_10000BBB0();
  v6 = sub_10000BCE0();
  sub_10000B2DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 329);
    v9 = *(v0 + 280);
    v8 = *(v0 + 288);
    v76 = *(v0 + 112);
    v79 = *(v0 + 256);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v82 = v13;
    *v12 = 136315138;
    v14 = sub_10000B960();
    v16 = sub_10000AB6C(v14, v15, &v82);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cache fetch result: %s", v12, 0xCu);
    sub_100005BE0(v13);

    v79(v76, v10);
    if ((*(v0 + 329) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = *(v0 + 256);
    v23 = *(v0 + 112);
    v24 = *(v0 + 72);
    v25 = *(v0 + 80);

    v22(v23, v24);
    if ((*(v0 + 329) & 1) == 0)
    {
LABEL_3:
      if (*(v0 + 328) == 1)
      {
        v17 = *(v0 + 32);
        v19 = *(v0 + 280);
        v18 = *(v0 + 288);
        if (*(v17 + 56))
        {
          v20 = *(v17 + 32);
          v21 = *(v17 + 56);

          v85._countAndFlagsBits = v19;
          v85._object = v18;
          sub_10000B8B0(0, v85, v20);
          sub_10000B2DC();

LABEL_13:
          v34 = *(v0 + 232);
          v33 = *(v0 + 240);
          v35 = *(v0 + 168);
          v36 = *(v0 + 152);
          v37 = *(v0 + 128);
          v38 = *(v0 + 104);
          sub_10000BB90();
          v34(v36, v35, v37);
          v39 = sub_10000BBB0();
          v40 = sub_10000BD10();
          v41 = os_log_type_enabled(v39, v40);
          v42 = *(v0 + 256);
          v43 = *(v0 + 248);
          v44 = *(v0 + 216);
          v45 = *(v0 + 224);
          v46 = *(v0 + 168);
          v47 = *(v0 + 152);
          v48 = *(v0 + 128);
          v49 = *(v0 + 136);
          v74 = v44;
          v75 = *(v0 + 80);
          v50 = *(v0 + 72);
          v77 = v50;
          v80 = *(v0 + 104);
          if (v41)
          {
            v72 = *(v0 + 264);
            v73 = *(v0 + 224);
            v51 = swift_slowAlloc();
            v69 = v40;
            v52 = swift_slowAlloc();
            v82 = v52;
            *v51 = 136315138;
            v70 = v42;
            v71 = v46;
            v53 = sub_10000B730(1);
            v55 = v54;
            v43(v47, v48);
            v56 = sub_10000AB6C(v53, v55, &v82);

            *(v51 + 4) = v56;
            _os_log_impl(&_mh_execute_header, v39, v69, "[%s] Successfully fetched JetPack", v51, 0xCu);
            sub_100005BE0(v52);

            sub_10000B22C(v74, v73);
            v70(v80, v77);
            v43(v71, v48);
          }

          else
          {

            sub_10000B22C(v74, v45);
            v43(v47, v48);
            v42(v80, v77);
            v43(v46, v48);
          }

          v57 = *(v0 + 16);
          v57[3] = &type metadata for String;
          v57[4] = &protocol witness table for String;
          v57[5] = &protocol witness table for String;
          *v57 = 0x6574656C706D6F43;
          v57[1] = 0xE900000000000064;
          v59 = *(v0 + 168);
          v58 = *(v0 + 176);
          v61 = *(v0 + 152);
          v60 = *(v0 + 160);
          v62 = *(v0 + 144);
          v64 = *(v0 + 112);
          v63 = *(v0 + 120);
          v66 = *(v0 + 96);
          v65 = *(v0 + 104);
          v67 = *(v0 + 88);
          v78 = *(v0 + 64);
          v81 = *(v0 + 56);

          v68 = *(v0 + 8);

          return v68();
        }

        v31 = *(v0 + 280);
        v32 = *(v0 + 288);
      }

      else
      {
        v29 = *(v0 + 280);
        v30 = *(v0 + 288);
      }

      sub_10000B2DC();
      goto LABEL_13;
    }
  }

  v26 = *(*(v0 + 32) + 40);
  v27 = swift_task_alloc();
  *(v0 + 304) = v27;
  *v27 = v0;
  v27[1] = sub_100008BC4;

  return sub_100004700();
}

uint64_t sub_100008BC4()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_100009090;
  }

  else
  {
    v3 = sub_100008CD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008CD8()
{
  v61 = v0;
  if (*(v0 + 328) == 1)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 329);
    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    if (*(v1 + 56))
    {
      v5 = *(v1 + 32);
      v6 = *(v1 + 56);

      v63._countAndFlagsBits = v4;
      v63._object = v3;
      sub_10000B8B0(v2 & 1, v63, v5);
      sub_10000B2DC();

      goto LABEL_7;
    }

    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
  }

  else
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 288);
    v9 = *(v0 + 329) & 1;
  }

  sub_10000B2DC();
LABEL_7:
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v14 = *(v0 + 168);
  v15 = *(v0 + 152);
  v16 = *(v0 + 128);
  v17 = *(v0 + 104);
  sub_10000BB90();
  v13(v15, v14, v16);
  v18 = sub_10000BBB0();
  v19 = sub_10000BD10();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 256);
  v22 = *(v0 + 248);
  v23 = *(v0 + 216);
  v24 = *(v0 + 224);
  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 136);
  v54 = v23;
  v55 = *(v0 + 80);
  v29 = *(v0 + 72);
  v56 = v29;
  v58 = *(v0 + 104);
  if (v20)
  {
    v52 = *(v0 + 264);
    v53 = *(v0 + 224);
    v30 = swift_slowAlloc();
    v49 = v19;
    v31 = swift_slowAlloc();
    v60 = v31;
    *v30 = 136315138;
    v50 = v21;
    v51 = v25;
    v32 = sub_10000B730(1);
    v34 = v33;
    v22(v26, v27);
    v35 = sub_10000AB6C(v32, v34, &v60);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v18, v49, "[%s] Successfully fetched JetPack", v30, 0xCu);
    sub_100005BE0(v31);

    sub_10000B22C(v54, v53);
    v50(v58, v56);
    v22(v51, v27);
  }

  else
  {

    sub_10000B22C(v54, v24);
    v22(v26, v27);
    v21(v58, v56);
    v22(v25, v27);
  }

  v36 = *(v0 + 16);
  v36[3] = &type metadata for String;
  v36[4] = &protocol witness table for String;
  v36[5] = &protocol witness table for String;
  *v36 = 0x6574656C706D6F43;
  v36[1] = 0xE900000000000064;
  v38 = *(v0 + 168);
  v37 = *(v0 + 176);
  v40 = *(v0 + 152);
  v39 = *(v0 + 160);
  v41 = *(v0 + 144);
  v43 = *(v0 + 112);
  v42 = *(v0 + 120);
  v45 = *(v0 + 96);
  v44 = *(v0 + 104);
  v46 = *(v0 + 88);
  v57 = *(v0 + 64);
  v59 = *(v0 + 56);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100009090()
{
  v88 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  sub_10000B2DC();

  v4 = *(v0 + 312);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 168);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  v10 = *(v0 + 96);
  sub_10000BB90();
  v6(v8, v7, v9);
  v11 = sub_10000BBB0();
  v79 = sub_10000BD10();
  v12 = os_log_type_enabled(v11, v79);
  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v18 = *(v0 + 96);
  v19 = *(v0 + 72);
  v82 = *(v0 + 80);
  if (v12)
  {
    v77 = *(v0 + 72);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v87 = v21;
    *v20 = 136315138;
    v75 = v18;
    v76 = v13;
    v22 = sub_10000B730(1);
    v24 = v23;
    v14(v15, v17);
    v25 = sub_10000AB6C(v22, v24, &v87);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v11, v79, "[%s] Failed to fetch JetPack", v20, 0xCu);
    sub_100005BE0(v21);

    v76(v75, v77);
  }

  else
  {

    v14(v15, v17);
    v13(v18, v19);
  }

  v26 = sub_10000B6F0();
  v27 = [v26 domain];

  v28 = sub_10000BC40();
  v30 = v29;

  if (v28 == 0x44726F727245504ALL && v30 == 0xED00006E69616D6FLL)
  {
  }

  else
  {
    v31 = sub_10000BD70();

    if ((v31 & 1) == 0)
    {
      v58 = *(v0 + 248);
      v59 = *(v0 + 216);
      v60 = *(v0 + 224);
      v61 = *(v0 + 168);
      v62 = *(v0 + 128);
      v63 = *(v0 + 136);
      swift_willThrow();
      sub_10000B22C(v59, v60);
      v58(v61, v62);
      v65 = *(v0 + 168);
      v64 = *(v0 + 176);
      v67 = *(v0 + 152);
      v66 = *(v0 + 160);
      v68 = *(v0 + 144);
      v70 = *(v0 + 112);
      v69 = *(v0 + 120);
      v72 = *(v0 + 96);
      v71 = *(v0 + 104);
      v73 = *(v0 + 88);
      v81 = *(v0 + 64);
      v85 = *(v0 + 56);

      v57 = *(v0 + 8);
      goto LABEL_15;
    }
  }

  if (*(v0 + 328) == 1 && *(*(v0 + 32) + 56))
  {
    v33 = *(v0 + 48);
    v32 = *(v0 + 56);
    v34 = *(v0 + 40);
    (*(v33 + 104))(v32, enum case for JetServiceTelemetryErrorCode.jetpackError(_:), v34);

    sub_10000B8C0();

    (*(v33 + 8))(v32, v34);
  }

  v35 = *(v0 + 88);
  sub_10000BBA0();
  v36 = sub_10000BBB0();
  v37 = sub_10000BD00();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Downloaded Malformed JetPack. Cache was not updated.", v38, 2u);
  }

  v39 = *(v0 + 256);
  v41 = *(v0 + 216);
  v40 = *(v0 + 224);
  v80 = *(v0 + 168);
  v83 = *(v0 + 248);
  v42 = *(v0 + 136);
  v78 = *(v0 + 128);
  v43 = *(v0 + 80);
  v44 = *(v0 + 88);
  v45 = *(v0 + 72);
  v46 = *(v0 + 16);

  v39(v44, v45);
  *(v46 + 24) = &type metadata for String;
  *(v46 + 32) = &protocol witness table for String;
  *(v46 + 40) = &protocol witness table for String;

  sub_10000B22C(v41, v40);
  strcpy(v46, "Update Failed");
  *(v46 + 14) = -4864;
  v83(v80, v78);
  v48 = *(v0 + 168);
  v47 = *(v0 + 176);
  v50 = *(v0 + 152);
  v49 = *(v0 + 160);
  v51 = *(v0 + 144);
  v53 = *(v0 + 112);
  v52 = *(v0 + 120);
  v55 = *(v0 + 96);
  v54 = *(v0 + 104);
  v56 = *(v0 + 88);
  v84 = *(v0 + 64);
  v86 = *(v0 + 56);

  v57 = *(v0 + 8);
LABEL_15:

  return v57();
}

uint64_t sub_100009640()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_10000973C, 0, 0);
}

uint64_t sub_10000973C()
{
  v1 = v0[8];
  v2 = sub_10000B7F0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[2];
  if (v4 == 1)
  {
    sub_100005FE4(v1, &qword_100014868, &qword_10000C618);
    v5[3] = &type metadata for String;
    v5[4] = &protocol witness table for String;
    v5[5] = &protocol witness table for String;
  }

  else
  {
    v6 = sub_10000B7E0();
    v8 = v7;
    (*(v3 + 8))(v1, v2);
    v5[3] = &type metadata for String;
    v5[4] = &protocol witness table for String;
    v5[5] = &protocol witness table for String;
    if (v8)
    {
      v9 = v0[2];
      *v9 = v6;
      goto LABEL_6;
    }
  }

  v9 = v0[2];
  *v9 = 0x6E776F6E6B6E55;
  v8 = 0xE700000000000000;
LABEL_6:
  v9[1] = v8;
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[18];
  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];
  v22 = v0[8];
  v23 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100009960()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[24];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100009A60()
{
  v85 = v0;

  v1 = *(v0 + 296);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  sub_10000BB90();
  v3(v5, v4, v6);
  v8 = sub_10000BBB0();
  v76 = sub_10000BD10();
  v9 = os_log_type_enabled(v8, v76);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  v15 = *(v0 + 96);
  v16 = *(v0 + 72);
  v79 = *(v0 + 80);
  if (v9)
  {
    v74 = *(v0 + 72);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v84 = v18;
    *v17 = 136315138;
    v72 = v15;
    v73 = v10;
    v19 = sub_10000B730(1);
    v21 = v20;
    v11(v12, v14);
    v22 = sub_10000AB6C(v19, v21, &v84);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v76, "[%s] Failed to fetch JetPack", v17, 0xCu);
    sub_100005BE0(v18);

    v73(v72, v74);
  }

  else
  {

    v11(v12, v14);
    v10(v15, v16);
  }

  v23 = sub_10000B6F0();
  v24 = [v23 domain];

  v25 = sub_10000BC40();
  v27 = v26;

  if (v25 == 0x44726F727245504ALL && v27 == 0xED00006E69616D6FLL)
  {
  }

  else
  {
    v28 = sub_10000BD70();

    if ((v28 & 1) == 0)
    {
      v55 = *(v0 + 248);
      v56 = *(v0 + 216);
      v57 = *(v0 + 224);
      v58 = *(v0 + 168);
      v59 = *(v0 + 128);
      v60 = *(v0 + 136);
      swift_willThrow();
      sub_10000B22C(v56, v57);
      v55(v58, v59);
      v62 = *(v0 + 168);
      v61 = *(v0 + 176);
      v64 = *(v0 + 152);
      v63 = *(v0 + 160);
      v65 = *(v0 + 144);
      v67 = *(v0 + 112);
      v66 = *(v0 + 120);
      v69 = *(v0 + 96);
      v68 = *(v0 + 104);
      v70 = *(v0 + 88);
      v78 = *(v0 + 64);
      v82 = *(v0 + 56);

      v54 = *(v0 + 8);
      goto LABEL_15;
    }
  }

  if (*(v0 + 328) == 1 && *(*(v0 + 32) + 56))
  {
    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = *(v0 + 40);
    (*(v30 + 104))(v29, enum case for JetServiceTelemetryErrorCode.jetpackError(_:), v31);

    sub_10000B8C0();

    (*(v30 + 8))(v29, v31);
  }

  v32 = *(v0 + 88);
  sub_10000BBA0();
  v33 = sub_10000BBB0();
  v34 = sub_10000BD00();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Downloaded Malformed JetPack. Cache was not updated.", v35, 2u);
  }

  v36 = *(v0 + 256);
  v38 = *(v0 + 216);
  v37 = *(v0 + 224);
  v77 = *(v0 + 168);
  v80 = *(v0 + 248);
  v39 = *(v0 + 136);
  v75 = *(v0 + 128);
  v40 = *(v0 + 80);
  v41 = *(v0 + 88);
  v42 = *(v0 + 72);
  v43 = *(v0 + 16);

  v36(v41, v42);
  *(v43 + 24) = &type metadata for String;
  *(v43 + 32) = &protocol witness table for String;
  *(v43 + 40) = &protocol witness table for String;

  sub_10000B22C(v38, v37);
  strcpy(v43, "Update Failed");
  *(v43 + 14) = -4864;
  v80(v77, v75);
  v45 = *(v0 + 168);
  v44 = *(v0 + 176);
  v47 = *(v0 + 152);
  v46 = *(v0 + 160);
  v48 = *(v0 + 144);
  v50 = *(v0 + 112);
  v49 = *(v0 + 120);
  v52 = *(v0 + 96);
  v51 = *(v0 + 104);
  v53 = *(v0 + 88);
  v81 = *(v0 + 64);
  v83 = *(v0 + 56);

  v54 = *(v0 + 8);
LABEL_15:

  return v54();
}

uint64_t sub_10000A004(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10000B820();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_10000BBC0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_10000210C(&qword_100014868, &qword_10000C618) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10000A164, 0, 0);
}

uint64_t sub_10000A164()
{
  v1 = *(v0[3] + 16);
  v2 = *(&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + 1);
  v6 = (&async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter + async function pointer to dispatch thunk of IntentDispatcher.jsVersion.getter);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10000A214;
  v4 = v0[11];

  return v6(v4);
}

uint64_t sub_10000A214()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_10000A310, 0, 0);
}

uint64_t sub_10000A310()
{
  v0[13] = *(v0[3] + 40);
  sub_10000BC90();
  v0[14] = sub_10000BC80();
  v2 = sub_10000BC70();

  return _swift_task_switch(sub_10000A3B0, v2, v1);
}

uint64_t sub_10000A3B0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);

  v3 = *(v2 + 40);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 16);
  }

  *(v0 + 120) = v3;

  return _swift_task_switch(sub_10000A428, 0, 0);
}

uint64_t sub_10000A428()
{
  v35 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_10000AA38(*(v0 + 88), *(v0 + 80));
  sub_10000B810();
  sub_10000BBA0();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_10000BBB0();
  v8 = sub_10000BCE0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 88);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  if (v9)
  {
    v33 = *(v0 + 56);
    v17 = swift_slowAlloc();
    v30 = v8;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;
    v31 = v11;
    v32 = v10;
    v19 = sub_10000B800();
    v21 = v20;
    (*(v15 + 8))(v13, v16);
    v22 = sub_10000AB6C(v19, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v7, v30, "Including metadata in response: %s", v17, 0xCu);
    sub_100005BE0(v18);

    (*(v12 + 8))(v31, v33);
    v23 = v32;
  }

  else
  {

    (*(v15 + 8))(v13, v16);
    (*(v12 + 8))(v11, v14);
    v23 = v10;
  }

  sub_100005FE4(v23, &qword_100014868, &qword_10000C618);
  v25 = *(v0 + 80);
  v24 = *(v0 + 88);
  v26 = *(v0 + 72);
  v27 = *(v0 + 48);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10000A6A4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_10000A718(uint64_t a1)
{
  v3 = sub_10000210C(&qword_100014898, &qword_10000C640);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 24);
  v8 = sub_10000BB00();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_10000B7B0();
  return sub_100005FE4(v6, &qword_100014898, &qword_10000C640);
}

uint64_t sub_10000A838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100006328;

  return sub_100006330(a1, a2, a3, a4);
}

uint64_t sub_10000A8F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005E88;

  return sub_1000073C0(a1, a2);
}

uint64_t sub_10000A9A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006328;

  return sub_10000A004(a1);
}

uint64_t sub_10000AA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_100014868, &qword_10000C618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10000AAB0()
{
  sub_10000BDC0();
  sub_10000BDD0(0);
  return sub_10000BDE0();
}

Swift::Int sub_10000AB1C()
{
  sub_10000BDC0();
  sub_10000BDD0(0);
  return sub_10000BDE0();
}

uint64_t sub_10000AB6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000AC38(v11, 0, 0, 1, a1, a2);
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
    sub_10000B114(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005BE0(v11);
  return v7;
}

unint64_t sub_10000AC38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000AD44(a5, a6);
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
    result = sub_10000BD60();
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

char *sub_10000AD44(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000AD90(a1, a2);
  sub_10000AEC0(&off_1000108B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000AD90(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000AFAC(v5, 0);
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

  result = sub_10000BD60();
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
        v10 = sub_10000BC60();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000AFAC(v10, 0);
        result = sub_10000BD50();
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

uint64_t sub_10000AEC0(uint64_t result)
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

  result = sub_10000B020(result, v12, 1, v3);
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

void *sub_10000AFAC(uint64_t a1, uint64_t a2)
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

  sub_10000210C(&qword_100014870, &qword_10000C620);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B020(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000210C(&qword_100014870, &qword_10000C620);
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

uint64_t sub_10000B114(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B174(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B8A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B1D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000B22C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000B280()
{
  result = qword_100014880;
  if (!qword_100014880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014880);
  }

  return result;
}

unint64_t sub_10000B2E4()
{
  result = qword_100014888;
  if (!qword_100014888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014888);
  }

  return result;
}

uint64_t sub_10000B338(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000B348()
{
  result = qword_100014890;
  if (!qword_100014890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014890);
  }

  return result;
}

uint64_t *sub_10000B39C(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

void *sub_10000B3EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetServiceProcessor.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for JetServiceProcessor.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_10000B524()
{
  result = qword_1000148A0;
  if (!qword_1000148A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000148A0);
  }

  return result;
}

void sub_10000B5C0()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failed to resolve temporary directory: %{darwin.errno}d", v1, 8u);
}

void sub_10000B648()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to initialize temporary directory: %{darwin.errno}d", v1, 8u);
}