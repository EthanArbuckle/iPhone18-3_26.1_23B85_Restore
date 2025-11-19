uint64_t sub_1BAC2E344@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1BAC19210(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_1BAC2B560(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_1BAC1C8B0(v19, &qword_1EBC25868, &qword_1BAC3A3B8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Watchdog.__allocating_init(name:duration:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  Watchdog.init(name:duration:logger:)(a1, a2, a3, a4);
  return v11;
}

void Watchdog.pet(adding:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline);
  os_unfair_lock_lock(v3);
  v4 = sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8);
  sub_1BAC2E584(v3 + *(v4 + 28), a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1BAC2E584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC38514();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - v11;
  sub_1BAC2E9E4(a1, &v15 - v11);
  v13 = sub_1BAC1DA1C(v12, 1, v4);
  result = sub_1BAC1FAA0(v12);
  if (v13 != 1)
  {
    sub_1BAC1FAA0(a1);
    sub_1BAC38504();
    MEMORY[0x1BFAFE850](v8, a2);
    (*(v5 + 8))(v8, v4);
    return sub_1BAC1926C(a1, 0, 1, v4);
  }

  return result;
}

uint64_t Watchdog.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline));
  v2 = *(sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8) + 28);
  sub_1BAC1FAA0(v1 + v2);
  v3 = sub_1BAC38514();
  sub_1BAC1926C(v1 + v2, 1, 1, v3);
  os_unfair_lock_unlock(v1);
  v4 = *(v0 + 24);

  v5 = OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_logger;
  v6 = sub_1BAC383E4();
  sub_1BAC19294(v6);
  (*(v7 + 8))(v0 + v5);
  sub_1BAC1FAA0(v1 + v2);
  return v0;
}

uint64_t Watchdog.__deallocating_deinit()
{
  Watchdog.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t type metadata accessor for Watchdog()
{
  result = qword_1EBC25090;
  if (!qword_1EBC25090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAC2E87C()
{
  v0 = sub_1BAC383E4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1BAC2E980();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BAC2E980()
{
  if (!qword_1EBC25340)
  {
    sub_1BAC2B39C(&qword_1EBC25870, &qword_1BAC3A3C0);
    v0 = sub_1BAC383C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC25340);
    }
  }
}

uint64_t sub_1BAC2E9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAC2EA54(uint64_t a1)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v2 = sub_1BAC38514();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAC26FB4(&qword_1EBC25870, &qword_1BAC3A3C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = (a1 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_deadline));
  v15 = sub_1BAC26FB4(&qword_1EBC25878, &qword_1BAC3A3C8);
  sub_1BAC2E9E4(v14 + *(v15 + 28), v13);
  os_unfair_lock_unlock(v14);
  sub_1BAC2E9E4(v13, v11);
  if (sub_1BAC1DA1C(v11, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v11, v2);
    sub_1BAC21B20(&qword_1EBC25088, MEMORY[0x1E69E8008]);
    if ((sub_1BAC385F4() & 1) == 0)
    {
      sub_1BAC21678(v6);
LABEL_14:
      (*(v3 + 8))(v6, v2);
      v16 = v13;
      goto LABEL_15;
    }

    v17 = OBJC_IVAR____TtC22ProactiveDaemonSupport8Watchdog_logger;

    v18 = sub_1BAC383D4();
    v19 = sub_1BAC38754();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v17;
      v22 = v21;
      v36[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1BAC1914C(*(a1 + 16), *(a1 + 24), v36);
      _os_log_impl(&dword_1BAC16000, v18, v19, "WATCHDOG EXPIRED: The watchdog for %{public}s has expired. Capturing stackshot.", v20, 0xCu);
      sub_1BAC1905C(v22);
      MEMORY[0x1BFAFF600](v22, -1, -1);
      MEMORY[0x1BFAFF600](v20, -1, -1);
    }

    *(&v36[1] + 4) = 0;
    LODWORD(v36[0]) = 20;
    *(v36 + 4) = 1;
    getpid();
    v23 = sub_1BAC38614();
    v24 = WriteCrashReportWithStackshot();

    if (v24)
    {
      v25 = sub_1BAC383D4();
      v26 = sub_1BAC38774();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1BAC16000, v25, v26, "WATCHDOG EXPIRED: Stackshot acquired", v27, 2u);
        v28 = v27;
LABEL_12:
        MEMORY[0x1BFAFF600](v28, -1, -1);
      }
    }

    else
    {

      v25 = sub_1BAC383D4();
      v29 = sub_1BAC38764();

      if (os_log_type_enabled(v25, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v35 = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_1BAC1914C(*(a1 + 16), *(a1 + 24), &v35);
        _os_log_impl(&dword_1BAC16000, v25, v29, "WATCHDOG EXPIRED: The watchdog for %{public}s has expired. Unable to get stackshot.", v30, 0xCu);
        sub_1BAC1905C(v31);
        MEMORY[0x1BFAFF600](v31, -1, -1);
        v28 = v30;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  sub_1BAC1FAA0(v13);
  v16 = v11;
LABEL_15:
  result = sub_1BAC1FAA0(v16);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAC2EF1C()
{
  v10 = sub_1BAC387B4();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAC38794();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1BAC384F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1BAC2F1D0();
  sub_1BAC384E4();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1BAC21B20(&unk_1EBC25068, MEMORY[0x1E69E8030]);
  sub_1BAC26FB4(&qword_1EBC25888, &unk_1BAC3A420);
  sub_1BAC21B68(&qword_1EBC25080, &qword_1EBC25888, &unk_1BAC3A420);
  sub_1BAC38884();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1BAC387D4();
  qword_1EBC25238 = result;
  return result;
}

uint64_t sub_1BAC2F16C()
{
  v1 = *(*(sub_1BAC38514() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1BAC2EA54(v2);
}

unint64_t sub_1BAC2F1D0()
{
  result = qword_1EBC254B8;
  if (!qword_1EBC254B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC254B8);
  }

  return result;
}

uint64_t sub_1BAC2F224()
{
  sub_1BAC38B24();
  sub_1BAC38654();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F274()
{
  sub_1BAC38B24();
  AuditToken.hash(into:)();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F2DC()
{
  sub_1BAC38B24();
  sub_1BAC38B54();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F360()
{
  sub_1BAC38B24();
  sub_1BAC38654();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F3AC()
{
  sub_1BAC38B24();
  AuditToken.hash(into:)();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F410()
{
  sub_1BAC38B24();
  sub_1BAC38B54();
  return sub_1BAC38B64();
}

uint64_t sub_1BAC2F454()
{
  v5 = *MEMORY[0x1E69E9840];
  *task_info_out = 0u;
  v4 = 0u;
  result = sub_1BAC2FB40(task_info_out);
  if (result)
  {
    sub_1BAC388D4();
    MEMORY[0x1BFAFE990](0xD00000000000003CLL, 0x80000001BAC3B350);
    v2 = sub_1BAC38A24();
    MEMORY[0x1BFAFE990](v2);

    result = sub_1BAC389B4();
    __break(1u);
  }

  else
  {
    xmmword_1EBC25470 = *task_info_out;
    *&qword_1EBC25480 = v4;
    v1 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t static AuditToken.currentProcess.getter()
{
  if (qword_1EBC25468 != -1)
  {
    swift_once();
  }

  return xmmword_1EBC25470;
}

void sub_1BAC2F670(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AuditToken.init(rawValue:)(*a1, *a1);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
}

__n128 sub_1BAC2F6AC@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t AuditToken.hash(into:)()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1BAC19564();
  result = sub_1BAC38B34();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static AuditToken.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v17[0] = a5;
  v17[1] = a6;
  v17[2] = a7;
  v17[3] = a8;
  v8 = sub_1BAC20D84(v18, &v19);
  v10 = v9;
  v11 = sub_1BAC20D84(v17, v18);
  v13 = v12;
  v14 = MEMORY[0x1BFAFE660](v8, v10, v11, v12);
  sub_1BAC20F70(v11, v13);
  sub_1BAC20F70(v8, v10);
  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

BOOL sub_1BAC2F830()
{
  v0 = sub_1BAC389F4();

  return v0 != 0;
}

uint64_t sub_1BAC2F878()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1BAC2F274();
}

uint64_t sub_1BAC2F884()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return AuditToken.hash(into:)();
}

uint64_t sub_1BAC2F890()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1BAC2F3AC();
}

BOOL sub_1BAC2F8C8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BAC2F830();
  *a2 = result;
  return result;
}

BOOL sub_1BAC2F914@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1BAC2F830();
  *a1 = result;
  return result;
}

uint64_t sub_1BAC2F958(uint64_t a1)
{
  v2 = sub_1BAC20C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAC2F994(uint64_t a1)
{
  v2 = sub_1BAC20C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BAC2F9D4()
{
  result = qword_1EBC258A0;
  if (!qword_1EBC258A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC258A0);
  }

  return result;
}

unint64_t sub_1BAC2FA3C()
{
  result = qword_1EBC258A8;
  if (!qword_1EBC258A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC258A8);
  }

  return result;
}

unint64_t sub_1BAC2FA94()
{
  result = qword_1EBC25490;
  if (!qword_1EBC25490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25490);
  }

  return result;
}

unint64_t sub_1BAC2FAEC()
{
  result = qword_1EBC25498;
  if (!qword_1EBC25498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25498);
  }

  return result;
}

uint64_t MachIdentityToken.__allocating_init(consumingToken:)(int a1)
{
  sub_1BAC18FFC();
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MachIdentityToken.__allocating_init(copyingToken:)(mach_port_name_t a1)
{
  sub_1BAC18FFC();
  v2 = swift_allocObject();
  MachIdentityToken.init(copyingToken:)(a1);
  return v2;
}

uint64_t MachIdentityToken.init(copyingToken:)(mach_port_name_t name)
{
  if (name)
  {
    if (!mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1))
    {
      *(v1 + 16) = name;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1BAC1957C();
  sub_1BAC388D4();

  sub_1BAC1853C();
  sub_1BAC38A24();
  sub_1BAC190D4();

  sub_1BAC18D4C();
  result = sub_1BAC1AEF0();
  __break(1u);
  return result;
}

uint64_t MachIdentityToken.init(consumingToken:)(uint64_t result)
{
  if (result)
  {
    *(v1 + 16) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *MachIdentityToken.__allocating_init(xpcObject:)()
{
  sub_1BAC18FFC();
  swift_allocObject();
  return MachIdentityToken.init(xpcObject:)();
}

uint64_t *MachIdentityToken.init(xpcObject:)()
{
  v1 = *v0;
  v2 = xpc_mach_send_copy_right();
  swift_unknownObjectRelease();
  if (v2)
  {
    *(v0 + 4) = v2;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t MachIdentityToken.xpcObject()()
{
  v1 = *(v0 + 16);
  result = xpc_mach_send_create();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s22ProactiveDaemonSupport17MachIdentityTokenC05auditF0AA05AuditF0VyAA0deF5ErrorVYKF(kern_return_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  task_port = 0;
  v3 = task_identity_token_get_task_port(*(v1 + 16), 3u, &task_port);
  if (v3)
  {
    *a1 = v3;
    task_info_out[0] = v3;
    sub_1BAC2FECC();
    swift_willThrowTypedImpl();
  }

  else
  {
    *task_info_out = 0u;
    v8 = 0u;
    v4 = sub_1BAC2FF20(task_info_out, task_port);
    if (v4)
    {
      *a1 = v4;
      sub_1BAC2FECC();
      swift_willThrowTypedImpl();
    }

    else
    {
      v1 = *task_info_out;
    }

    mach_port_deallocate(*MEMORY[0x1E69E9A60], task_port);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

unint64_t sub_1BAC2FECC()
{
  result = qword_1EBC258B0;
  if (!qword_1EBC258B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC258B0);
  }

  return result;
}

Swift::UInt32 __swiftcall MachIdentityToken.copyToken()()
{
  v1 = *(v0 + 16);
  if (!mach_port_mod_refs(*MEMORY[0x1E69E9A60], v1, 0, 1))
  {
    return v1;
  }

  sub_1BAC1957C();
  sub_1BAC388D4();

  sub_1BAC1853C();
  sub_1BAC38A24();
  sub_1BAC190D4();

  sub_1BAC18D4C();
  result = sub_1BAC1AEF0();
  __break(1u);
  return result;
}

uint64_t sub_1BAC30080()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 128);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1BAC1926C(v2, 1, 1, *(v0 + 64));
  swift_getErrorValue();
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 32);
  Error.pds_launderToSimpleNSError(discardUserInfo:)(v11, v5);
  v13 = v12;
  v7(v2, v12);

  (*(v3 + 8))(v2, v4);
  v14 = *(v0 + 104);
  v15 = *(v0 + 88);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BAC30188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BAC2B560(a1, v9);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1BAC31148(v9, a2, a3);

    *v3 = v8;
  }

  else
  {
    sub_1BAC1C8B0(a1, &unk_1EBC257D0, &qword_1BAC3A350);
    sub_1BAC30F2C(a2, a3, v9);

    return sub_1BAC1C8B0(v9, &unk_1EBC257D0, &qword_1BAC3A350);
  }

  return result;
}

void sub_1BAC3025C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BAC26FB4(&unk_1EBC258C0, &qword_1BAC3A778);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v69 - v6;
  v8 = sub_1BAC383E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - v17;
  v19 = MEMORY[0x1BFAFF7E0](v2);
  if (sub_1BAC38424() == v19)
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v30 = sub_1BAC31CEC();
LABEL_19:
    *(a1 + 24) = v30;
    *a1 = v29;
    return;
  }

  if (sub_1BAC38454() == v19)
  {
    value = xpc_int64_get_value(v2);
    v32 = MEMORY[0x1E69E7360];
LABEL_22:
    *(a1 + 24) = v32;
    *a1 = value;
    return;
  }

  if (sub_1BAC38484() == v19)
  {
    value = xpc_uint64_get_value(v2);
    v32 = MEMORY[0x1E69E76D8];
    goto LABEL_22;
  }

  if (sub_1BAC383F4() == v19)
  {
    v33 = xpc_BOOL_get_value(v2);
    *(a1 + 24) = MEMORY[0x1E69E6370];
    *a1 = v33;
    return;
  }

  if (sub_1BAC38464() == v19)
  {
    v34 = xpc_double_get_value(v2);
    *(a1 + 24) = MEMORY[0x1E69E63B0];
    *a1 = v34;
    return;
  }

  if (sub_1BAC38474() == v19)
  {
    if (!xpc_string_get_string_ptr(v2))
    {
      if (qword_1ED76B760 != -1)
      {
        sub_1BAC18558();
      }

      v41 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
      v42 = sub_1BAC30DE8(v41, qword_1ED76B768);
      sub_1BAC1AF10();
      if (!sub_1BAC18D58(v42))
      {
        (*(v9 + 16))(v18, v42, v8);
        swift_unknownObjectRetain();
        v43 = sub_1BAC383D4();
        v44 = sub_1BAC38754();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71[0] = v70;
          *v45 = 136315138;
          v46 = [v2 description];
          v47 = sub_1BAC38624();
          v49 = v48;

          v50 = sub_1BAC1914C(v47, v49, v71);

          *(v45 + 4) = v50;
          _os_log_impl(&dword_1BAC16000, v43, v44, "Failed to get string pointer of XPC object: %s", v45, 0xCu);
          sub_1BAC190EC();
          sub_1BAC1900C();
        }

        (*(v9 + 8))(v18, v8);
      }

      goto LABEL_37;
    }

    v35 = sub_1BAC38674();
    v37 = MEMORY[0x1E69E6158];
    goto LABEL_27;
  }

  if (sub_1BAC38434() != v19)
  {
    if (sub_1BAC38414() == v19)
    {
      xpc_date_get_value_absolute();
      *(a1 + 24) = sub_1BAC38394();
      sub_1BAC1DAD4(a1);
      sub_1BAC38364();
      return;
    }

    if (sub_1BAC38404() != v19)
    {
      if (sub_1BAC38444() == v19)
      {
        v55 = sub_1BAC31354(v2);
        if (v55)
        {
          v29 = v55;
          v56 = &unk_1EBC258D8;
          v57 = &unk_1BAC3A780;
LABEL_45:
          v30 = sub_1BAC26FB4(v56, v57);
          goto LABEL_19;
        }
      }

      else
      {
        if (sub_1BAC384A4() != v19)
        {
          if (qword_1ED76B760 != -1)
          {
            sub_1BAC18558();
          }

          v20 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
          v21 = sub_1BAC30DE8(v20, qword_1ED76B768);
          sub_1BAC1AF10();
          if (!sub_1BAC18D58(v21))
          {
            (*(v9 + 16))(v13, v21, v8);
            v22 = sub_1BAC383D4();
            v23 = sub_1BAC38754();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              v71[0] = v25;
              *v24 = 136315138;
              v26 = MEMORY[0x1BFAFEC40](v19);
              v28 = sub_1BAC1914C(v26, v27, v71);

              *(v24 + 4) = v28;
              _os_log_impl(&dword_1BAC16000, v22, v23, "Unsupported XPC object type %s", v24, 0xCu);
              sub_1BAC1905C(v25);
              sub_1BAC1900C();
              MEMORY[0x1BFAFF600](v24, -1, -1);
            }

            (*(v9 + 8))(v13, v8);
          }

          goto LABEL_37;
        }

        v58 = sub_1BAC31934(v2);
        if (v58)
        {
          v29 = v58;
          v56 = &unk_1EBC258D0;
          v57 = &unk_1BAC39EB0;
          goto LABEL_45;
        }
      }

LABEL_37:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v2);
    if (!bytes_ptr)
    {
      if (qword_1ED76B760 != -1)
      {
        sub_1BAC18558();
      }

      v59 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
      v60 = sub_1BAC30DE8(v59, qword_1ED76B768);
      sub_1BAC1AF10();
      if (!sub_1BAC18D58(v60))
      {
        (*(v9 + 16))(v16, v60, v8);
        swift_unknownObjectRetain();
        v61 = sub_1BAC383D4();
        v62 = sub_1BAC38754();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71[0] = v70;
          *v63 = 136315138;
          v64 = [v2 description];
          v65 = sub_1BAC38624();
          v67 = v66;

          v68 = sub_1BAC1914C(v65, v67, v71);

          *(v63 + 4) = v68;
          _os_log_impl(&dword_1BAC16000, v61, v62, "Failed to get data pointer of XPC object: %s", v63, 0xCu);
          sub_1BAC190EC();
          sub_1BAC1900C();
        }

        (*(v9 + 8))(v16, v8);
      }

      goto LABEL_37;
    }

    v53 = bytes_ptr;
    length = xpc_data_get_length(v2);
    v35 = MEMORY[0x1BFAFE680](v53, length);
    v37 = MEMORY[0x1E6969080];
LABEL_27:
    *(a1 + 24) = v37;
    *a1 = v35;
    *(a1 + 8) = v36;
    return;
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
  v39 = [v38 UUIDString];
  sub_1BAC38624();

  sub_1BAC383A4();

  v40 = sub_1BAC383B4();
  if (sub_1BAC18D58(v7) == 1)
  {

    sub_1BAC1C8B0(v7, &unk_1EBC258C0, &qword_1BAC3A778);
    goto LABEL_37;
  }

  *(a1 + 24) = v40;
  v51 = sub_1BAC1DAD4(a1);
  (*(*(v40 - 8) + 32))(v51, v7, v40);
}

BOOL sub_1BAC30AA8()
{
  v0 = sub_1BAC383E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BAC38674();
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_1BAC3025C(v18, ObjectType);
  v9 = v19;
  if (v19)
  {
    sub_1BAC2B560(v18, v20);
    sub_1BAC19210(v20, v18);
    sub_1BAC30188(v18, v5, v7);
    sub_1BAC1905C(v20);
  }

  else
  {
    sub_1BAC1C8B0(v18, &unk_1EBC257D0, &qword_1BAC3A350);
    if (qword_1ED76B760 != -1)
    {
      swift_once();
    }

    v10 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
    v11 = sub_1BAC30DE8(v10, qword_1ED76B768);
    swift_beginAccess();
    if (sub_1BAC1DA1C(v11, 1, v0))
    {
    }

    else
    {
      (*(v1 + 16))(v4, v11, v0);

      v12 = sub_1BAC383D4();
      v13 = sub_1BAC38754();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18[0] = v15;
        *v14 = 136315138;
        v16 = sub_1BAC1914C(v5, v7, v18);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_1BAC16000, v12, v13, "Failed to get value in XPC dictionary for key: %s", v14, 0xCu);
        sub_1BAC1905C(v15);
        MEMORY[0x1BFAFF600](v15, -1, -1);
        MEMORY[0x1BFAFF600](v14, -1, -1);
      }

      else
      {
      }

      (*(v1 + 8))(v4, v0);
    }
  }

  return v9 != 0;
}

uint64_t sub_1BAC30D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1BAC30DE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_1BAC30E20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAC26FB4(&qword_1EBC258F0, &unk_1BAC3A788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1BAC30F2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BAC2DC1C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    sub_1BAC26FB4(&qword_1EBC25858, &qword_1BAC3A3A8);
    sub_1BAC38974();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_1BAC2B560((*(v14 + 56) + 32 * v9), a3);
    sub_1BAC38994();
    *v4 = v14;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1BAC31014(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BAC1BFAC(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  sub_1BAC26FB4(&qword_1EBC25958, &qword_1BAC3A798);
  if ((sub_1BAC38974() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_1BAC1BFAC(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_1BAC38AA4();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = a1;
  }

  else
  {
    sub_1BAC1C028(a2, v18);
    return sub_1BAC31290(v9, v18, a1, v14);
  }
}

_OWORD *sub_1BAC31148(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BAC2DC1C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1BAC26FB4(&qword_1EBC25858, &qword_1BAC3A3A8);
  if ((sub_1BAC38974() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1BAC2DC1C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BAC38AA4();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    sub_1BAC1905C(v17);

    return sub_1BAC2B560(a1, v17);
  }

  else
  {
    sub_1BAC312E8(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_1BAC31290(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1BAC312E8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BAC2B560(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

size_t sub_1BAC31354(void *a1)
{
  v2 = sub_1BAC383E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - v8;
  v10 = MEMORY[0x1BFAFF7E0](a1);
  if (v10 != sub_1BAC38444())
  {
    if (qword_1ED76B760 != -1)
    {
      swift_once();
    }

    v11 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
    v12 = sub_1BAC30DE8(v11, qword_1ED76B768);
    swift_beginAccess();
    v13 = 0;
    if (!sub_1BAC1DA1C(v12, 1, v2))
    {
      (*(v3 + 16))(v7, v12, v2);
      swift_unknownObjectRetain();
      v14 = sub_1BAC383D4();
      v15 = sub_1BAC38754();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v54 = v17;
        *v16 = 136315138;
        v18 = [a1 description];
        v19 = sub_1BAC38624();
        v21 = v20;

        v22 = sub_1BAC1914C(v19, v21, &v54);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_1BAC16000, v14, v15, "XPC object %s is not of type array", v16, 0xCu);
        sub_1BAC1905C(v17);
        MEMORY[0x1BFAFF600](v17, -1, -1);
        MEMORY[0x1BFAFF600](v16, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
      return 0;
    }

    return v13;
  }

  result = xpc_array_get_count(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    v25 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v26 = 0;
    v52 = (v3 + 16);
    v53 = v9;
    v13 = MEMORY[0x1E69E7CC0];
    v27 = &qword_1BAC3A350;
    v51 = (v3 + 8);
    v28 = &unk_1EBC257D0;
    v29 = 0x1ED76B000uLL;
    *&v24 = 134217984;
    v49 = v24;
    v50 = a1;
    do
    {
      v30 = xpc_array_get_value(a1, v26);
      ObjectType = swift_getObjectType();
      sub_1BAC3025C(&v54, ObjectType);
      swift_unknownObjectRelease();
      if (v55)
      {
        sub_1BAC2B560(&v54, &v56);
        sub_1BAC19210(&v56, &v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1BAC30E20(0, *(v13 + 2) + 1, 1, v13);
        }

        v33 = *(v13 + 2);
        v32 = *(v13 + 3);
        if (v33 >= v32 >> 1)
        {
          v13 = sub_1BAC30E20((v32 > 1), v33 + 1, 1, v13);
        }

        sub_1BAC1905C(&v56);
        *(v13 + 2) = v33 + 1;
        v34 = &v13[32 * v33];
        v35 = &v54;
      }

      else
      {
        sub_1BAC1C8B0(&v54, v28, v27);
        if (*(v29 + 1888) != -1)
        {
          swift_once();
        }

        v36 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
        v37 = sub_1BAC30DE8(v36, qword_1ED76B768);
        swift_beginAccess();
        if (!sub_1BAC1DA1C(v37, 1, v2))
        {
          v38 = v29;
          v39 = v2;
          v40 = v27;
          v41 = v28;
          v42 = v39;
          (*v52)(v53, v37);
          v43 = sub_1BAC383D4();
          v44 = sub_1BAC38754();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = v49;
            *(v45 + 4) = v26;
            _os_log_impl(&dword_1BAC16000, v43, v44, "Failed to get value in XPC array at index: %ld", v45, 0xCu);
            MEMORY[0x1BFAFF600](v45, -1, -1);
          }

          (*v51)(v53, v42);
          v28 = v41;
          v27 = v40;
          v2 = v42;
          v29 = v38;
          a1 = v50;
        }

        v46 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v57 = sub_1BAC31CEC();
        *&v56 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1BAC30E20(0, *(v13 + 2) + 1, 1, v13);
        }

        v48 = *(v13 + 2);
        v47 = *(v13 + 3);
        if (v48 >= v47 >> 1)
        {
          v13 = sub_1BAC30E20((v47 > 1), v48 + 1, 1, v13);
        }

        *(v13 + 2) = v48 + 1;
        v34 = &v13[32 * v48];
        v35 = &v56;
      }

      sub_1BAC2B560(v35, v34 + 2);
      ++v26;
    }

    while (v25 != v26);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAC31934(void *a1)
{
  v2 = sub_1BAC383E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1BFAFF7E0](a1);
  if (v7 != sub_1BAC384A4())
  {
    if (qword_1ED76B760 != -1)
    {
      swift_once();
    }

    v8 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
    v9 = sub_1BAC30DE8(v8, qword_1ED76B768);
    swift_beginAccess();
    v10 = 0;
    if (!sub_1BAC1DA1C(v9, 1, v2))
    {
      (*(v3 + 16))(v6, v9, v2);
      swift_unknownObjectRetain();
      v11 = sub_1BAC383D4();
      v12 = sub_1BAC38754();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v27 = v14;
        *v13 = 136315138;
        v15 = [a1 description];
        v16 = sub_1BAC38624();
        v18 = v17;

        v19 = sub_1BAC1914C(v16, v18, &v27);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_1BAC16000, v11, v12, "XPC object %s is not of type dictionary", v13, 0xCu);
        sub_1BAC1905C(v14);
        MEMORY[0x1BFAFF600](v14, -1, -1);
        MEMORY[0x1BFAFF600](v13, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return 0;
    }

    return v10;
  }

  v27 = MEMORY[0x1E69E7CC8];
  v20 = swift_allocObject();
  *(v20 + 16) = &v27;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1BAC31D30;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1BAC31D38;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAC30D90;
  aBlock[3] = &unk_1F38C95F8;
  v22 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v22);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v10 = v27;

    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAC31CEC()
{
  result = qword_1EBC258E0;
  if (!qword_1EBC258E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC258E0);
  }

  return result;
}

uint64_t sub_1BAC31D38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t XPCServiceClientConnection.__allocating_init(delegate:)()
{
  sub_1BAC1FB88();
  sub_1BAC19028();
  v0 = swift_allocObject();
  XPCServiceClientConnection.init(delegate:)();
  return v0;
}

uint64_t XPCServiceClientConnection.__allocating_init(remoteService:delegate:)(uint64_t a1)
{
  sub_1BAC19028();
  v2 = swift_allocObject();
  XPCServiceClientConnection.init(remoteService:delegate:)(a1);
  return v2;
}

uint64_t *XPCServiceClientConnection.init(remoteService:delegate:)(uint64_t a1)
{
  v3 = *v1;
  sub_1BAC17658();
  sub_1BAC353D0();
  v5 = *(v4 + 80);
  sub_1BAC353D0();
  v7 = *(v6 + 88);
  v11 = 0;
  v8 = type metadata accessor for XPCServiceClientConnection.State();
  v9 = sub_1BAC17788(&v11, v8);
  sub_1BAC1E838(v9);
  swift_unknownObjectRelease();
  v1[3] = a1;
  return v1;
}

uint64_t sub_1BAC31E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v11[2] = a2;
    v11[3] = a3;
    v8 = type metadata accessor for XPCServiceClientConnection.State();

    sub_1BAC17FE4(sub_1BAC21C18, v11, v7, v8, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      (*(v9 + 56))(ObjectType, v9);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BAC31FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v11[2] = a2;
    v11[3] = a3;
    v8 = type metadata accessor for XPCServiceClientConnection.State();

    sub_1BAC17FE4(sub_1BAC352CC, v11, v7, v8, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      (*(v9 + 48))(ObjectType, v9);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BAC32104(id *a1, uint64_t a2, uint64_t a3)
{
  v25 = sub_1BAC383E4();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(a3 + 48))(a2, a3);
  v11 = sub_1BAC383D4();
  v12 = sub_1BAC38774();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v3;
    v16 = v15;
    v26 = v15;
    *v14 = 136446210;
    v17 = (*(a3 + 24))(a2, a3);
    v19 = sub_1BAC1914C(v17, v18, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1BAC16000, v11, v12, "%{public}s: Connection to XPC Server invalidated.", v14, 0xCu);
    sub_1BAC1905C(v16);
    MEMORY[0x1BFAFF600](v16, -1, -1);
    v20 = v14;
    a1 = v23;
    MEMORY[0x1BFAFF600](v20, -1, -1);
  }

  result = (*(v7 + 8))(v10, v25);
  *a1 = 0;
  return result;
}

void sub_1BAC3232C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1BAC32394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BAC383E4();
  v9 = sub_1BAC184D0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1BAC3537C();
  v16 = v15 - v14;
  v17 = *(a5 + 48);
  v18 = sub_1BAC353B8();
  v19(v18, a5);
  v20 = a1;
  v21 = sub_1BAC383D4();
  v22 = sub_1BAC38754();

  if (os_log_type_enabled(v21, v22))
  {
    v37 = v11;
    v23 = swift_slowAlloc();
    v38 = a2;
    v24 = swift_slowAlloc();
    v36 = v8;
    v25 = swift_slowAlloc();
    v39 = v25;
    *v23 = 136446466;
    v26 = *(a5 + 24);
    v27 = sub_1BAC353B8();
    v29 = v28(v27, a5);
    v31 = sub_1BAC1914C(v29, v30, &v39);

    *(v23 + 4) = v31;
    *(v23 + 12) = 2114;
    v32 = a1;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v33;
    *v24 = v33;
    _os_log_impl(&dword_1BAC16000, v21, v22, "%{public}s: error during call: %{public}@.", v23, 0x16u);
    sub_1BAC3502C(v24);
    a2 = v38;
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    sub_1BAC1905C(v25);
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();

    (*(v37 + 8))(v16, v36);
  }

  else
  {

    (*(v11 + 8))(v16, v8);
  }

  swift_beginAccess();
  v34 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

unint64_t sub_1BAC32604()
{
  result = qword_1EBC25968;
  if (!qword_1EBC25968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25968);
  }

  return result;
}

uint64_t sub_1BAC32658()
{
  sub_1BAC1AEE4();
  sub_1BAC194B4();
  v3 = v2;
  v4 = *(v2 + 88);
  v5 = *v1;
  sub_1BAC184E4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = sub_1BAC327C0;
  }

  else
  {
    v8 = *(v3 + 80);

    v7 = sub_1BAC32764;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BAC32764()
{
  sub_1BAC1AEE4();

  sub_1BAC194D8();

  return v1();
}

uint64_t sub_1BAC327C0()
{
  sub_1BAC1AEE4();
  v1 = *(v0 + 80);

  v2 = *(v0 + 96);
  sub_1BAC194D8();

  return v3();
}

uint64_t sub_1BAC32824(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BAC383E4();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 48))(a3, a5);
  v14 = a1;
  v15 = sub_1BAC383D4();
  v16 = sub_1BAC38754();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = a2;
    v22 = v21;
    v35 = v21;
    *v18 = 136446466;
    v23 = (*(a5 + 24))(a3, a5);
    v25 = sub_1BAC1914C(v23, v24, &v35);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2114;
    v26 = a1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v27;
    *v20 = v27;
    _os_log_impl(&dword_1BAC16000, v15, v16, "%{public}s: error during call: %{public}@.", v18, 0x16u);
    sub_1BAC3502C(v20);
    MEMORY[0x1BFAFF600](v20, -1, -1);
    sub_1BAC1905C(v22);
    MEMORY[0x1BFAFF600](v22, -1, -1);
    MEMORY[0x1BFAFF600](v18, -1, -1);

    (*(v34 + 8))(v13, v31);
  }

  else
  {

    (*(v34 + 8))(v13, v10);
  }

  v35 = a1;
  v28 = a1;
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  return sub_1BAC386D4();
}

void sub_1BAC32AE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[2] = a3;
  v9 = sub_1BAC38864();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v38 - v13;
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v38 - v20;
  if (a2)
  {
    v22 = a2;
    v23 = sub_1BAC382E4();
    v24 = NSError.pds_unlaunderSimpleNSError()();

    if (v24)
    {
      v39 = v24;
      v25 = v24;
      sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
      sub_1BAC386F4();
      sub_1BAC386D4();

      return;
    }

    v39 = a2;
  }

  else
  {
    (*(v10 + 16))(v14, a1, v9);
    if (sub_1BAC1DA1C(v14, 1, a5) != 1)
    {
      (*(v15 + 32))(v21, v14, a5);
      (*(v15 + 16))(v19, v21, a5);
      sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
      sub_1BAC386F4();
      sub_1BAC386E4();
      (*(v15 + 8))(v21, a5);
      return;
    }

    (*(v10 + 8))(v14, v9);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(a4 + 40);
      ObjectType = swift_getObjectType();
      LOBYTE(v39) = 2;
      v28 = *(v26 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v38[1] = v38;
      v30 = *(AssociatedTypeWitness - 8);
      v31 = *(v30 + 64);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v33 = v38 - v32;
      swift_unknownObjectRetain();
      v28(&v39, ObjectType, v26);
      swift_getAssociatedConformanceWitness();
      v34 = sub_1BAC38A34();
      if (v34)
      {
        v35 = v34;
        (*(v30 + 8))(v33, AssociatedTypeWitness);
      }

      else
      {
        v35 = swift_allocError();
        (*(v30 + 32))(v37, v33, AssociatedTypeWitness);
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_1BAC32604();
      v35 = swift_allocError();
      *v36 = 2;
    }

    v39 = v35;
  }

  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  sub_1BAC386D4();
}

uint64_t sub_1BAC32FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BAC20A00;

  return XPCServiceClientConnection.call<A>(_:)(a1, a2, a3, a4);
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(existingConnection:localObject:delegate:)()
{
  sub_1BAC19028();
  swift_allocObject();
  v1 = sub_1BAC1AD48();
  BidirectionalXPCServiceClientConnection.init(existingConnection:localObject:delegate:)(v1, v2, v3, v4);
  return v0;
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(localObject:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BAC19028();
  v6 = swift_allocObject();
  BidirectionalXPCServiceClientConnection.init(localObject:delegate:)(a1, a2, a3);
  return v6;
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(remoteService:localObject:delegate:)()
{
  sub_1BAC19028();
  swift_allocObject();
  v1 = sub_1BAC1AD48();
  BidirectionalXPCServiceClientConnection.init(remoteService:localObject:delegate:)(v1, v2, v3, v4);
  return v0;
}

void *BidirectionalXPCServiceClientConnection.init(remoteService:localObject:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *v4;
  sub_1BAC17658();
  v9 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
  v10 = *(v7 + 88);
  v11 = *(v7 + 104);
  (*(v11 + 24))(v10, v11);
  v12 = sub_1BAC38614();

  v13 = [v9 _initWithRemoteService_name_options_];

  v5[3] = v13;
  LOBYTE(v27[0]) = 0;
  v25 = *(v8 + 96);
  v24 = *(v8 + 80);
  swift_unknownObjectRetain();
  sub_1BAC17D34(v27, v28);
  *&v15 = v24;
  *&v14 = v25;
  *(&v15 + 1) = v10;
  *(&v14 + 1) = v11;
  v27[0] = v15;
  v27[1] = v14;
  v16 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v5[2] = sub_1BAC17788(v28, v16);
  v5[5] = a4;
  swift_unknownObjectWeakAssign();
  v17 = v5[2];

  v18 = sub_1BAC17D90();
  v19 = v29;
  sub_1BAC17FE4(v18, v20, v21, v16, v22);
  if (v19)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

ProactiveDaemonSupport::ConnectionState __swiftcall BidirectionalXPCServiceClientConnection.getCurrentConnectionState()()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1BAC184B4();
  v12[2] = *(v3 + 80);
  sub_1BAC184B4();
  v12[3] = *(v4 + 88);
  sub_1BAC184B4();
  v12[4] = *(v5 + 96);
  sub_1BAC184B4();
  v13 = *(v6 + 104);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v13;
  v10 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  sub_1BAC17FE4(sub_1BAC344D8, v12, v2, v10, &type metadata for ConnectionState);
  return result;
}

uint64_t sub_1BAC334B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;

    v15[6] = a2;
    v15[7] = a3;
    v15[8] = a4;
    v15[9] = a5;
    v12 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
    sub_1BAC17FE4(sub_1BAC35118, v15, v11, v12, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v10 + 40);
      ObjectType = swift_getObjectType();
      (*(v13 + 56))(ObjectType, v13);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BAC33604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a5;

    v15[6] = a2;
    v15[7] = a3;
    v15[8] = a4;
    v15[9] = a5;
    v12 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
    sub_1BAC17FE4(sub_1BAC350DC, v15, v11, v12, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v10 + 40);
      ObjectType = swift_getObjectType();
      (*(v13 + 48))(ObjectType, v13);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1BAC33750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BAC194C0();
  a19 = v20;
  a20 = v21;
  v47 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v48 = sub_1BAC383E4();
  v31 = sub_1BAC184D0(v48);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1BAC3537C();
  v38 = v37 - v36;
  (*(v26 + 48))(v28, v26);
  v39 = sub_1BAC383D4();
  v40 = v24();
  if (os_log_type_enabled(v39, v40))
  {
    v46 = v30;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    a10 = v42;
    *v41 = 136446210;
    v43 = (*(v26 + 24))(v28, v26);
    v45 = sub_1BAC1914C(v43, v44, &a10);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1BAC16000, v39, v40, v47, v41, 0xCu);
    sub_1BAC1905C(v42);
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    v30 = v46;
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
  }

  (*(v33 + 8))(v38, v48);
  *v30 = 3;
  sub_1BAC35364();
}

void BidirectionalXPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1BAC194C0();
  v13 = v12;
  v41 = v15;
  v42 = v14;
  v17 = v16;
  v18 = *v10;
  sub_1BAC20CE4(v14, v15, v12);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v10[2];
  v43[2] = v27;
  v44 = v10;
  v29 = *(v28 + 96);
  v45 = *(v28 + 80);
  v46 = v29;
  v30 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v31 = sub_1BAC17C74();
  sub_1BAC17E04(sub_1BAC19480, v43, v26, v30, v31);
  if (!v11)
  {
    v40 = v17;
    sub_1BAC1AE98();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    sub_1BAC1D5B8();
    v33 = swift_allocObject();
    v33[2] = v13;
    v33[3] = v10;
    v33[4] = v32;
    v47 = sub_1BAC344E4;
    v48 = v33;
    *&v45 = MEMORY[0x1E69E9820];
    *(&v45 + 1) = 1107296256;
    *&v46 = sub_1BAC3232C;
    *(&v46 + 1) = &unk_1F38C9738;
    v34 = _Block_copy(&v45);

    [a10 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v34);
    v35 = swift_unknownObjectRetain();
    v42(v35);
    sub_1BAC19504();
    v36 = *(v32 + 16);
    if (v36)
    {
      v37 = *(v32 + 16);
      swift_willThrow();
      v38 = v36;

      swift_unknownObjectRelease();
      (*(v20 + 8))(v25, v13);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v20 + 32))(v40, v25, v13);
    }
  }

  sub_1BAC35364();
}

id sub_1BAC33BF4(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v51 = a4;
  v52 = a5;
  v50 = *a2;
  v8 = sub_1BAC383E4();
  v9 = sub_1BAC184D0(v8);
  v48 = v10;
  v49 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1BAC3537C();
  v15 = v14 - v13;
  v16 = v50[11];
  v17 = v50[13];
  v18 = *(v17 + 48);
  v19 = sub_1BAC353B8();
  v20(v19, v17);
  v21 = a1;
  v22 = sub_1BAC383D4();
  v23 = sub_1BAC38754();

  if (os_log_type_enabled(v22, v23))
  {
    v47 = a3;
    v24 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53[0] = v46;
    *v24 = 136446466;
    v25 = *(v17 + 24);
    v26 = sub_1BAC353B8();
    v28 = v27(v26, v17);
    v30 = a1;
    v31 = sub_1BAC1914C(v28, v29, v53);

    *(v24 + 4) = v31;
    a1 = v30;
    *(v24 + 12) = 2114;
    v32 = v30;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v33;
    v34 = v45;
    *v45 = v33;
    _os_log_impl(&dword_1BAC16000, v22, v23, "%{public}s: error during call: %{public}@.", v24, 0x16u);
    sub_1BAC3502C(v34);
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    sub_1BAC1905C(v46);
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
    a3 = v47;
    sub_1BAC18C84();
    MEMORY[0x1BFAFF600]();
  }

  v35 = (*(v48 + 8))(v15, v49);
  v36 = a2[2];
  MEMORY[0x1EEE9AC00](v35);
  v37 = v50;
  v38 = v51;
  v39 = v50[10];
  *(&v44 - 6) = v39;
  *(&v44 - 5) = v16;
  v40 = v37[12];
  *(&v44 - 4) = v38;
  *(&v44 - 3) = v40;
  *(&v44 - 2) = v17;
  v53[0] = v39;
  v53[1] = v16;
  v53[2] = v40;
  v53[3] = v17;
  v41 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  sub_1BAC17FE4(v52, (&v44 - 8), v36, v41, MEMORY[0x1E69E7CA8] + 8);
  swift_beginAccess();
  v42 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

uint64_t sub_1BAC33F18()
{
  sub_1BAC1AEE4();
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  sub_1BAC194D8();

  return v3();
}

uint64_t sub_1BAC33F7C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = *a2;
  v7 = sub_1BAC383E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v44[11];
  v43 = a2;
  v13 = v44[13];
  (*(v13 + 48))(v12, v13);
  v14 = a1;
  v15 = sub_1BAC383D4();
  v16 = sub_1BAC38754();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = v7;
    v18 = v17;
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45[0] = v41;
    *v18 = 136446466;
    v19 = *(v13 + 24);
    v38 = v16;
    v20 = v19(v12, v13);
    v22 = sub_1BAC1914C(v20, v21, v45);
    v40 = v8;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2114;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v26;
    v27 = v39;
    *v39 = v26;
    _os_log_impl(&dword_1BAC16000, v15, v38, "%{public}s: error during call: %{public}@.", v18, 0x16u);
    sub_1BAC3502C(v27);
    MEMORY[0x1BFAFF600](v27, -1, -1);
    v28 = v41;
    sub_1BAC1905C(v41);
    MEMORY[0x1BFAFF600](v28, -1, -1);
    MEMORY[0x1BFAFF600](v18, -1, -1);

    v29 = (*(v40 + 8))(v11, v42);
  }

  else
  {

    v29 = (*(v8 + 8))(v11, v7);
    v23 = a1;
  }

  v30 = v43[2];
  MEMORY[0x1EEE9AC00](v29);
  v31 = v44;
  v32 = v44[10];
  *&v37[-48] = v32;
  *&v37[-40] = v12;
  v33 = v31[12];
  *&v37[-32] = a4;
  *&v37[-24] = v33;
  *&v37[-16] = v13;
  v45[0] = v32;
  v45[1] = v12;
  v45[2] = v33;
  v45[3] = v13;
  v34 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  sub_1BAC17FE4(sub_1BAC35320, &v37[-64], v30, v34, MEMORY[0x1E69E7CA8] + 8);
  v45[0] = v23;
  v35 = v23;
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  sub_1BAC386F4();
  return sub_1BAC386D4();
}

uint64_t sub_1BAC34388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BAC2B648;

  return BidirectionalXPCServiceClientConnection.call<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1BAC34490()
{
  v1 = *v0;
  sub_1BAC38B24();
  MEMORY[0x1BFAFEE70](v1);
  return sub_1BAC38B64();
}

unint64_t sub_1BAC34568()
{
  result = qword_1EBC25970;
  if (!qword_1EBC25970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25970);
  }

  return result;
}

unint64_t sub_1BAC345C0()
{
  result = qword_1EBC25978;
  if (!qword_1EBC25978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC25978);
  }

  return result;
}

uint64_t dispatch thunk of ServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))();
}

{
  return (*(a5 + 32))();
}

uint64_t dispatch thunk of ServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(sub_1BAC1D258(a1, a2, a3, a4, a5, a6) + 40);
  sub_1BAC17870();
  v16 = v8 + *v8;
  v10 = *(v9 + 4);
  swift_task_alloc();
  sub_1BAC353C4();
  *(v6 + 16) = v11;
  *v11 = v12;
  v13 = sub_1BAC1ACB4(v11);

  return v14(v13);
}

uint64_t dispatch thunk of BidirectionalServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(sub_1BAC1D258(a1, a2, a3, a4, a5, a6) + 64);
  sub_1BAC17870();
  v16 = v8 + *v8;
  v10 = *(v9 + 4);
  swift_task_alloc();
  sub_1BAC353C4();
  *(v6 + 16) = v11;
  *v11 = v12;
  v13 = sub_1BAC1ACB4(v11);

  return v14(v13);
}

uint64_t getEnumTagSinglePayload for ConnectionState(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ConnectionState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for XPCServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BAC34E28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BAC34E64(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[16])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
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

uint64_t sub_1BAC34EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1BAC34EE0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BAC34F34(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BAC34F84(void *a1)
{
  v3 = *(v1 + 32);
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v4 = *(sub_1BAC386F4() - 8);
  v5 = *(v1 + 56);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_1BAC33F7C(a1, v5, v6, v3);
}

uint64_t sub_1BAC3502C(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&unk_1EBC259F0, &unk_1BAC3AC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAC35160(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v6 = *(sub_1BAC386F4() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1BAC32824(a1, v7, v3, v4, v5);
}

void sub_1BAC35218()
{
  sub_1BAC1FB88();
  v1 = *(v0 + 24);
  sub_1BAC2B39C(&qword_1EBC25778, &qword_1BAC39E90);
  v2 = *(sub_1BAC386F4() - 8);
  sub_1BAC17870();
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  v9 = sub_1BAC35340(v7);

  sub_1BAC32AE0(v9, v10, v11, v12, v13);
}

uint64_t sub_1BAC3538C()
{

  return swift_allocError();
}

uint64_t sub_1BAC353DC()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1BAC353F4()
{

  return swift_unknownObjectRelease_n();
}

uint64_t static XPCServiceBidirectionalServer.start()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_1BAC1ADC0();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAC184D0(AssociatedTypeWitness);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  static XPCServiceBidirectionalServer.start(context:)(v11, a1, a2);
  return (*(v6 + 8))(v11, AssociatedTypeWitness);
}

void static XPCServiceBidirectionalServer.start(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v7 = sub_1BAC383E4();
  v8 = sub_1BAC184D0(v7);
  v38 = v9;
  v39 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAC1ADC0();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1BAC184D0(AssociatedTypeWitness);
  v40 = v16;
  v41 = v15;
  v18 = *(v17 + 64);
  sub_1BAC18C48();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = swift_checkMetadataState();
  if ((*(AssociatedConformanceWitness + 64))(v22, AssociatedConformanceWitness))
  {
    v36 = [objc_allocWithZone(MEMORY[0x1E696B0D8]) init];
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    sub_1BAC19430();
    sub_1BAC1AC6C();
    swift_getAssociatedConformanceWitness();
    sub_1BAC366E8();
    swift_getAssociatedConformanceWitness();
    sub_1BAC178BC();
    (*(v23 + 24))(v22);
    v24 = sub_1BAC38614();

    v25 = [v36 _initWithRemoteName_];
  }

  else
  {
    v36 = sub_1BAC35A0C();
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    sub_1BAC19430();
    sub_1BAC1AC6C();
    swift_getAssociatedConformanceWitness();
    sub_1BAC366E8();
    swift_getAssociatedConformanceWitness();
    sub_1BAC178BC();
    (*(v26 + 24))(v22);
    v25 = sub_1BAC35A50();
  }

  (*(a3 + 56))(v25, a2, a3);
  v27 = (*(a3 + 48))(a2, a3);
  if (v27)
  {
    v28 = v27;
    type metadata accessor for BidirectionalDelegate();
    (*(v40 + 16))(v21, v42, v41);
    v29 = sub_1BAC35AC4(v21);
    (*(a3 + 80))(v29, a2, a3);
    [v28 setDelegate_];
    swift_unknownObjectRelease();
    [v28 activate];
  }

  else
  {
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    sub_1BAC19430();
    sub_1BAC1AC6C();
    swift_getAssociatedConformanceWitness();
    v30 = swift_getAssociatedConformanceWitness();
    v31 = v37;
    (*(v30 + 48))(v4, v30);
    v32 = sub_1BAC383D4();
    v33 = sub_1BAC38764();
    if (sub_1BAC18C54(v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BAC16000, v32, v33, "Failed to create Internal XPC service", v34, 2u);
      sub_1BAC1ADA8();
    }

    (*(v38 + 8))(v31, v39);
  }
}

unint64_t sub_1BAC35A0C()
{
  result = qword_1ED76BA50;
  if (!qword_1ED76BA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED76BA50);
  }

  return result;
}

id sub_1BAC35A50()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BAC38614();

  v2 = [v0 initWithMachServiceName_];

  return v2;
}

uint64_t XPCServiceBidirectionalServerInstanceParameters.clientApplicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id sub_1BAC35B58(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  sub_1BAC1ADC0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))(&v1[v4], a1, AssociatedTypeWitness);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_1BAC35CD0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = sub_1BAC1ACDC();
  v4 = sub_1BAC17674();
  v5 = sub_1BAC1DAB0(v4);
  if (v6(v5))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 48))(v3, v1) & 1;
  }
}

uint64_t sub_1BAC35D8C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v23 - v3;
  v4 = sub_1BAC383E4();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_projectBox();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  (*(v10 + 48))(v8, v10);
  v11 = sub_1BAC383D4();
  v12 = sub_1BAC38754();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v1;
    v15 = v14;
    v28[0] = v14;
    *v13 = 136446210;
    v16 = (*(v10 + 24))(v8, v10);
    v18 = sub_1BAC1914C(v16, v17, v28);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1BAC16000, v11, v12, "%{public}s BidirectionalDelegate: connection interrupted.", v13, 0xCu);
    sub_1BAC1905C(v15);
    v19 = v15;
    v1 = v23;
    MEMORY[0x1BFAFF600](v19, -1, -1);
    MEMORY[0x1BFAFF600](v13, -1, -1);
  }

  (*(v25 + 8))(v7, v26);
  v20 = v24;
  swift_beginAccess();
  v21 = v27;
  (*(v1 + 16))(v27, v20, AssociatedTypeWitness);
  (*(AssociatedConformanceWitness + 96))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v1 + 8))(v21, AssociatedTypeWitness);
}

id sub_1BAC36168()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAC361A0(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1BAC178BC();
  sub_1BAC1DAC8(v5);
  v7 = *(v6 + 8);

  return v7(&a1[v2]);
}

uint64_t sub_1BAC362CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_1BAC363A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BAC363C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1BAC36404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCServiceBidirectionalServerNullContext(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BAC365D4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAC366D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1BAC35D8C();
}

uint64_t sub_1BAC366F4()
{
  if (qword_1ED76B760 != -1)
  {
    sub_1BAC18558();
  }

  v0 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);

  return sub_1BAC30DE8(v0, qword_1ED76B768);
}

uint64_t static XPCServiceFrameworkGlobals.globalConnectionPolicy.getter()
{
  swift_beginAccess();
  v0 = sub_1BAC195AC();
  sub_1BAC24358(v0);
  return sub_1BAC195AC();
}

uint64_t static XPCServiceFrameworkGlobals.globalConnectionPolicy.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = off_1ED76B748;
  off_1ED76B748 = a1;
  qword_1ED76B750 = a2;
  return sub_1BAC1ADCC(v4);
}

uint64_t (*static XPCServiceFrameworkGlobals.globalConnectionPolicy.modify())()
{
  sub_1BAC195AC();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1BAC36854@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1ED76B748;
  v3 = qword_1ED76B750;
  if (off_1ED76B748)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1BAC36DE0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_1BAC24358(v2);
}

uint64_t sub_1BAC368EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BAC36DD8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_beginAccess();
  v5 = off_1ED76B748;
  off_1ED76B748 = v4;
  qword_1ED76B750 = v3;
  sub_1BAC24358(v1);
  return sub_1BAC1ADCC(v5);
}

uint64_t sub_1BAC369A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unsigned __int8 *__return_ptr, uint64_t *, void *))
{
  v6[1] = a3;
  v7 = a1;
  v6[0] = a2;
  a4(&v5, &v7, v6);
  return v5;
}

uint64_t sub_1BAC369F0()
{
  v0 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  sub_1BAC36E20(v0, qword_1ED76B768);
  v1 = sub_1BAC30DE8(v0, qword_1ED76B768);
  v2 = sub_1BAC383E4();

  return sub_1BAC1926C(v1, 1, 1, v2);
}

uint64_t static XPCServiceFrameworkGlobals.xpcObjectLogging.getter()
{
  if (qword_1ED76B760 != -1)
  {
    sub_1BAC18558();
  }

  v0 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  sub_1BAC30DE8(v0, qword_1ED76B768);
  swift_beginAccess();
  v1 = sub_1BAC195AC();
  return sub_1BAC2BAA8(v1, v2);
}

uint64_t static XPCServiceFrameworkGlobals.xpcObjectLogging.setter(uint64_t a1)
{
  if (qword_1ED76B760 != -1)
  {
    sub_1BAC18558();
  }

  v2 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  v3 = sub_1BAC30DE8(v2, qword_1ED76B768);
  swift_beginAccess();
  sub_1BAC36B88(a1, v3);
  swift_endAccess();
  return sub_1BAC2BB18(a1);
}

uint64_t sub_1BAC36B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static XPCServiceFrameworkGlobals.xpcObjectLogging.modify())()
{
  if (qword_1ED76B760 != -1)
  {
    sub_1BAC18558();
  }

  v0 = sub_1BAC26FB4(&qword_1EBC257E8, &qword_1BAC39F70);
  sub_1BAC30DE8(v0, qword_1ED76B768);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BAC36C8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BAC366F4();
  swift_beginAccess();
  return sub_1BAC2BAA8(v2, a1);
}

uint64_t sub_1BAC36CD8(uint64_t a1)
{
  v2 = sub_1BAC366F4();
  swift_beginAccess();
  sub_1BAC36B88(a1, v2);
  return swift_endAccess();
}

_BYTE *storeEnumTagSinglePayload for XPCServiceFrameworkGlobals(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BAC36DE0@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2, a2[1]);
  *a3 = result & 1;
  return result;
}

uint64_t *sub_1BAC36E20(uint64_t a1, uint64_t *a2)
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

uint64_t XPCServiceServerInstanceParameters.clientApplicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static XPCServiceServer.start()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_1BAC1ADC0();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1BAC184D0(AssociatedTypeWitness);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v14 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  static XPCServiceServer.start(context:)(v11, a1, a2);
  return (*(v7 + 8))(v11, AssociatedTypeWitness);
}

void static XPCServiceServer.start(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v7 = sub_1BAC383E4();
  v8 = sub_1BAC184D0(v7);
  v37 = v9;
  v38 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAC1ADC0();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1BAC184D0(AssociatedTypeWitness);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v36 - v20;
  v22 = swift_checkMetadataState();
  if ((*(AssociatedConformanceWitness + 48))(v22, AssociatedConformanceWitness))
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E696B0D8]) init];
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    sub_1BAC18D90();
    sub_1BAC178BC();
    (*(v24 + 24))(v22);
    v25 = sub_1BAC38614();

    v26 = [v23 _initWithRemoteName_];
  }

  else
  {
    sub_1BAC35A0C();
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    sub_1BAC18D90();
    sub_1BAC178BC();
    (*(v27 + 24))(v22);
    v26 = sub_1BAC35A50();
  }

  (*(a3 + 48))(v26, a2, a3);
  v28 = (*(a3 + 40))(a2, a3);
  if (v28)
  {
    v29 = v28;
    type metadata accessor for Delegate();
    (*(v17 + 16))(v21, v39, AssociatedTypeWitness);
    v30 = sub_1BAC3746C(v21);
    (*(a3 + 72))(v30, a2, a3);
    [v29 setDelegate_];
    swift_unknownObjectRelease();
    [v29 activate];
  }

  else
  {
    sub_1BAC1ADC0();
    swift_getAssociatedTypeWitness();
    v31 = sub_1BAC18D90();
    v32 = v36;
    (*(v31 + 48))(v4, v31);
    v33 = sub_1BAC383D4();
    v34 = sub_1BAC38764();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BAC16000, v33, v34, "Failed to create Internal XPC service", v35, 2u);
      sub_1BAC1ADA8();
    }

    (*(v37 + 8))(v32, v38);
  }
}

id sub_1BAC374A0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  sub_1BAC1ADC0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))(&v1[v4], a1, AssociatedTypeWitness);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, AssociatedTypeWitness);
  return v9;
}

uint64_t sub_1BAC37618()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = sub_1BAC1ACDC();
  sub_1BAC1AED8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = sub_1BAC1AC7C(AssociatedConformanceWitness);
  if (v6(v5))
  {
    return 0;
  }

  else
  {
    return (*(v1 + 32))(v3, v1) & 1;
  }
}

uint64_t sub_1BAC376E0(uint64_t a1)
{
  v2 = sub_1BAC383E4();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v8 = sub_1BAC383D4();
  v9 = sub_1BAC38754();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21[0] = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21[1] = a1;
    v13 = v12;
    v23 = v12;
    *v11 = 136446210;
    v14 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v16 = sub_1BAC1914C(v14, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1BAC16000, v8, v9, "%{public}s Delegate: connection interrupted.", v11, 0xCu);
    sub_1BAC1905C(v13);
    MEMORY[0x1BFAFF600](v13, -1, -1);
    MEMORY[0x1BFAFF600](v11, -1, -1);

    (*(v22 + 8))(v5, v21[0]);
  }

  else
  {

    (*(v22 + 8))(v5, v2);
  }

  swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v18 = *(v17 + 56);
  v19 = swift_checkMetadataState();
  return v18(v19, v17);
}

uint64_t sub_1BAC379A4(uint64_t a1)
{
  v2 = sub_1BAC383E4();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v8 = sub_1BAC383D4();
  v9 = sub_1BAC38774();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21[0] = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21[1] = a1;
    v13 = v12;
    v23 = v12;
    *v11 = 136446210;
    v14 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v16 = sub_1BAC1914C(v14, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1BAC16000, v8, v9, "%{public}s Delegate: connection invalidated.", v11, 0xCu);
    sub_1BAC1905C(v13);
    MEMORY[0x1BFAFF600](v13, -1, -1);
    MEMORY[0x1BFAFF600](v11, -1, -1);

    (*(v22 + 8))(v5, v21[0]);
  }

  else
  {

    (*(v22 + 8))(v5, v2);
  }

  swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v18 = *(v17 + 64);
  v19 = swift_checkMetadataState();
  return v18(v19, v17);
}

uint64_t sub_1BAC37CA8(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1BAC178BC();
  sub_1BAC1DAC8(v5);
  v7 = *(v6 + 8);

  return v7(&a1[v2]);
}

_BYTE *storeEnumTagSinglePayload for XPCServiceServerNullContext(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BAC37F94(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAC38094(uint64_t a1)
{
  v2 = sub_1BAC26FB4(&unk_1EBC257D0, &qword_1BAC3A350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAC38144()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  sub_1BAC178BC();
  sub_1BAC1DAC8(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1BAC381F0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}