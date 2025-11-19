uint64_t FitnessModeObserver.__deallocating_deinit()
{
  if ((*(v0 + 36) & 1) == 0)
  {
    [objc_opt_self() cancelToken_];
  }

  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t AnalyticsEventMonitor.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t sub_1B4DDD274(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_1B4F675F4();
}

uint64_t sub_1B4DDD310()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t SessionClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1B4DDD388(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, char *), uint64_t a4, char *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_1B4DDC730(v6, 0);
}

uint64_t XPCClient.__deallocating_deinit()
{
  XPCClient.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TransportDispatchService.unregisterAll()()
{
  v1 = v0[3];
  os_unfair_lock_lock(*(v1 + 16));
  swift_beginAccess();
  v2 = v0[6];
  v3 = MEMORY[0x1E69E7CC8];
  v0[6] = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v4 = v0[7];
  v0[7] = v3;

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_1B4DDD4EC(unsigned __int8 *a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_1B4F67DA4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *a1;
  swift_beginAccess();
  v46 = a2;
  Strong = swift_weakLoadStrong();
  v44 = a3;
  if (!Strong)
  {
    v28 = 0;
    goto LABEL_10;
  }

  v13 = *(Strong + 32);

  v14 = *&v13[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue];
  *v11 = v14;
  v15 = *MEMORY[0x1E69E8020];
  v16 = v7[13];
  v16(v11, v15, v6);
  v17 = v14;
  v18 = sub_1B4F67DC4();
  v19 = v7[1];
  result = v19(v11, v6);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v21 = *(*&v13[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_coreTelephonyObserver] + OBJC_IVAR____TtC13SeymourClient21CoreTelephonyObserver_isCellularDataEnabled);

  if (v21 != 1 || (swift_beginAccess(), (v22 = swift_weakLoadStrong()) == 0))
  {
    v28 = 0;
    goto LABEL_8;
  }

  v23 = *(v22 + 32);

  v24 = *&v23[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue];
  *v11 = v24;
  v16(v11, v15, v6);
  v25 = v24;
  v26 = sub_1B4F67DC4();
  result = v19(v11, v6);
  if ((v26 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = *&v23[OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_coreTelephonyObserver];
  sub_1B4DDCE08(v47);

  v28 = LOBYTE(v47[0]) == 0;
LABEL_8:
  a3 = v44;
LABEL_10:
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v29 = sub_1B4F67C54();
  __swift_project_value_buffer(v29, qword_1EDB72490);
  v30 = sub_1B4F67C34();
  v31 = sub_1B4F685E4();
  v32 = HIBYTE(a3);
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47[0] = v34;
    *v33 = 136446722;
    v35 = 0x6C62616863616572;
    if (v32 == 1)
    {
      v36 = 0xE900000000000065;
    }

    else
    {
      v35 = 0x6168636165726E75;
      v36 = 0xEB00000000656C62;
    }

    if (v32)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0x65526E6F69746361;
    }

    if (v32)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xEE00646572697571;
    }

    v39 = sub_1B4DC4F88(v37, v38, v47);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2082;
    if (v45)
    {
      v40 = 0x616C696176616E75;
    }

    else
    {
      v40 = 0x6C62616C69617661;
    }

    if (v45)
    {
      v41 = 0xEB00000000656C62;
    }

    else
    {
      v41 = 0xE900000000000065;
    }

    v42 = sub_1B4DC4F88(v40, v41, v47);

    *(v33 + 14) = v42;
    *(v33 + 22) = 1026;
    *(v33 + 24) = v28;
    _os_log_impl(&dword_1B4DC2000, v30, v31, "Evaluating network conditions.\nCurrent network status: %{public}s\nInterface availability: %{public}s\nCellular availability: %{BOOL,public}d", v33, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v34, -1, -1);
    MEMORY[0x1B8C831D0](v33, -1, -1);

    a3 = v44;
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v49 = a3 & 0x1FF;
    v50 = BYTE2(a3) & 1;
    v51 = v32;
    v48 = v45;
    sub_1B4DDDA70(&v49, &v48, v28);
  }

  return result;
}

uint64_t sub_1B4DDD9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityTracer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4DDDA20(unsigned __int8 *a1)
{
  if (*(v1 + 26))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | (*(v1 + 27) << 24);
  if (*(v1 + 25))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1B4DDD4EC(a1, *(v1 + 16), v3 | v4 | *(v1 + 24));
}

void sub_1B4DDDA70(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v4 = v3;
  v52 = a3;
  v7 = sub_1B4F67DA4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 3);
  v53 = *a2;
  v14 = v4[6];
  *v12 = v14;
  v15 = *MEMORY[0x1E69E8020];
  v16 = v8[13];
  v16(v12, *MEMORY[0x1E69E8020], v7);
  v17 = v14;
  LOBYTE(v14) = sub_1B4F67DC4();
  v18 = v8[1];
  v18(v12, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_6;
  }

  v51 = v18;
  v50 = v13;
  if (v13 == 1)
  {

    LODWORD(v18) = 0;
  }

  else
  {
    v19 = sub_1B4F68D54();

    LODWORD(v18) = (v19 & 1) == 0;
  }

  if (qword_1EDB724A8 != -1)
  {
    goto LABEL_27;
  }

LABEL_6:
  v20 = sub_1B4F67C54();
  __swift_project_value_buffer(v20, qword_1EDB72490);
  swift_retain_n();
  v21 = sub_1B4F67C34();
  v22 = sub_1B4F685E4();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_25;
  }

  v47 = v7;
  v48 = v16;
  v44 = v22;
  v45 = v21;
  v49 = v15;
  v23 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v54[0] = v43;
  *v23 = 136447234;
  v46 = v18;
  v24 = sub_1B4F65F14();
  v26 = sub_1B4DC4F88(v24, v25, v54);

  *(v23 + 4) = v26;
  *(v23 + 12) = 2082;
  if (v53)
  {
    v27 = 0x616C696176616E75;
  }

  else
  {
    v27 = 0x6C62616C69617661;
  }

  if (v53)
  {
    v28 = 0xEB00000000656C62;
  }

  else
  {
    v28 = 0xE900000000000065;
  }

  v29 = sub_1B4DC4F88(v27, v28, v54);

  *(v23 + 14) = v29;
  *(v23 + 22) = 2082;
  v30 = 0x6168636165726E75;
  if (v50 == 1)
  {
    v30 = 0x6C62616863616572;
    v31 = 0xE900000000000065;
  }

  else
  {
    v31 = 0xEB00000000656C62;
  }

  if (v50)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0x65526E6F69746361;
  }

  if (v50)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xEE00646572697571;
  }

  v34 = sub_1B4DC4F88(v32, v33, v54);

  *(v23 + 24) = v34;
  *(v23 + 32) = 1026;
  v35 = v4[4];
  v36 = *(v35 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v12 = v36;
  v37 = v47;
  v48(v12, v49, v47);
  v38 = v36;
  LOBYTE(v34) = sub_1B4F67DC4();
  v51(v12, v37);
  if (v34)
  {
    v39 = *(*(v35 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_wifiObserver) + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_isEnabled);

    *(v23 + 34) = v39;

    *(v23 + 38) = 1026;
    *(v23 + 40) = v52 & 1;
    v40 = v45;
    _os_log_impl(&dword_1B4DC2000, v45, v44, "Cached network conditions updated\nNetwork conditions:%{public}s\nInterface availability: %{public}s\nNetwork status: %{public}s\nWi-Fi enabled: %{BOOL,public}d\nCellular availability:%{BOOL,public}d", v23, 0x2Cu);
    v18 = v43;
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v18, -1, -1);
    MEMORY[0x1B8C831D0](v23, -1, -1);

    LOBYTE(v18) = v46;
LABEL_25:
    v41 = v4[5];
    os_unfair_lock_lock(*(v41 + 16));
    sub_1B4DDE20C(v4, v18);
    os_unfair_lock_unlock(*(v41 + 16));
    return;
  }

  __break(1u);

  os_unfair_lock_unlock(*(v37 + 16));
  __break(1u);
}

uint64_t sub_1B4DDDF70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ActivityTracer();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_1B4DDD9BC(v6, a3);
}

uint64_t TransportDispatchService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t ActivityTrace.init(identifier:dso:)(const char *a1, uint64_t a2, char a3, void *a4)
{
  if ((a3 & 1) == 0)
  {
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    if (a1)
    {
      v7 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
      v8 = _os_activity_create(a4, a1, v7, OS_ACTIVITY_FLAG_DEFAULT);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
      v9 = swift_allocObject();
      *(v9 + 44) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = v8;
      *(v9 + 40) = 0;
      *(v4 + 40) = v9;
      return v4;
    }

    __break(1u);
  }

  sub_1B4F689C4();
  sub_1B4F689D4();

  MEMORY[0x1B8C818C0](0xD000000000000026, 0x80000001B4F832A0);
  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

uint64_t MachTimer.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t StreamingKeyDeliveryClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B4DDE20C(uint64_t a1, char a2)
{
  v4 = sub_1B4DF6DE8(*(a1 + 65), *(a1 + 66));
  if (v4 == 2)
  {
    os_unfair_lock_assert_owner(*(*(a1 + 40) + 16));
    result = *(a1 + 64);
    if (result <= 1)
    {
      v6 = sub_1B4F65F14();
      v8 = v7;
      if (v6 != sub_1B4F65F14() || v8 != v9)
      {
        v11 = sub_1B4F68D54();

        *(a1 + 64) = a2;
        if ((v11 & 1) == 0)
        {
          v12 = *(a1 + 16);
          v13 = *(a1 + 24);
          ObjectType = swift_getObjectType();
          v25 = a2;
          return (*(v13 + 8))(&v25, &type metadata for NetworkConditionsChanged, &protocol witness table for NetworkConditionsChanged, ObjectType, v13);
        }

        return result;
      }

      goto LABEL_17;
    }

LABEL_18:
    *(a1 + 64) = a2;
    return result;
  }

  a2 = v4 & 1;
  os_unfair_lock_assert_owner(*(*(a1 + 40) + 16));
  result = *(a1 + 64);
  if (result >= 2)
  {
    goto LABEL_18;
  }

  v15 = sub_1B4F65F14();
  v17 = v16;
  if (v15 == sub_1B4F65F14() && v17 == v18)
  {
LABEL_17:

    goto LABEL_18;
  }

  v20 = sub_1B4F68D54();

  *(a1 + 64) = a2;
  if ((v20 & 1) == 0)
  {
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = swift_getObjectType();
    v24 = a2;
    return (*(v22 + 8))(&v24, &type metadata for NetworkConditionsChanged, &protocol witness table for NetworkConditionsChanged, v23, v22);
  }

  return result;
}

uint64_t ActivityTracer.poster.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67BD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Signpost.init(identifier:signpostID:poster:telemetryEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = v6 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID;
  v12 = sub_1B4F67BA4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6 + v11, a4, v12);
  *(v6 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = a6;
  v14 = OBJC_IVAR____TtC13SeymourClient8Signpost_poster;
  v15 = sub_1B4F67BD4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6 + v14, a5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  (*(v16 + 8))(a5, v15);
  (*(v13 + 8))(a4, v12);
  *(v17 + 16) = 0;
  *(v6 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v17;
  return v6;
}

uint64_t sub_1B4DDE5C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

void sub_1B4DDE5FC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6468, &qword_1B4F790C0);
    sub_1B4F682A4();
  }

  else
  {
    sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
    sub_1B4DD8804(0, &unk_1EDB6DA58, 0x1E696C510);
    sub_1B4DD8D08();
    sub_1B4F67EF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6468, &qword_1B4F790C0);
    sub_1B4F682B4();
  }
}

uint64_t sub_1B4DDE718(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_1B4DDE758()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1B4ECDB60;
  }

  else
  {
    v3 = sub_1B4DDEC50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

Swift::Void __swiftcall Signpost.beginInterval()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DDE6FC((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1B4DDE8C8(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B4F67BA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v32 - v17;
  if (!*a1)
  {
    v20 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled);
    v21 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier);
    v35 = v2;
    v36 = v21;
    v33 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier + 16);
    v22 = *(v6 + 16);
    v34 = v22;
    v23 = (a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID);
    if (v20 != 1)
    {
      goto LABEL_7;
    }

    (v22)(&v32 - v17, v23, v5, v18);
    v24 = sub_1B4F67BC4();
    v10 = sub_1B4F68704();
    if ((sub_1B4F68794() & 1) == 0)
    {
LABEL_11:
      v10 = v19;
      goto LABEL_23;
    }

    v32 = v24;
    if (v33)
    {
      if (v36 >> 32)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if ((v36 & 0xFFFFF800) == 0xD800)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v36 >> 16 > 0x10)
      {
        goto LABEL_27;
      }

      v36 = &v37;
    }

    else if (!v36)
    {
      __break(1u);
LABEL_7:
      v22(v10, v23, v5);
      v24 = sub_1B4F67BC4();
      v19 = sub_1B4F68704();
      if ((sub_1B4F68794() & 1) == 0)
      {
LABEL_23:

        v34(v14, v10, v5);
        v28 = sub_1B4F67C14();
        v29 = *(v28 + 48);
        v30 = *(v28 + 52);
        swift_allocObject();
        v31 = sub_1B4F67C04();
        (*(v6 + 8))(v10, v5);
        *a1 = v31;
        return;
      }

      v32 = v24;
      if ((v33 & 1) == 0)
      {
        if (!v36)
        {
          __break(1u);
          goto LABEL_11;
        }

        goto LABEL_21;
      }

      if (!(v36 >> 32))
      {
        if ((v36 & 0xFFFFF800) == 0xD800)
        {
LABEL_30:
          __break(1u);
          return;
        }

        if (v36 >> 16 <= 0x10)
        {
          v36 = &v38;
LABEL_21:
          v25 = swift_slowAlloc();
          *v25 = 0;
          v27 = sub_1B4F67B94();
          _os_signpost_emit_with_name_impl(&dword_1B4DC2000, v32, v19, v27, v36, "", v25, 2u);
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1B4F67B94();
    _os_signpost_emit_with_name_impl(&dword_1B4DC2000, v32, v10, v26, v36, " enableTelemetry=YES ", v25, 2u);
    v10 = v19;
LABEL_22:
    MEMORY[0x1B8C831D0](v25, -1, -1);
    v24 = v32;
    goto LABEL_23;
  }
}

uint64_t sub_1B4DDEC50()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t static ActivityTracer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB70E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  v3 = __swift_project_value_buffer(v2, qword_1EDB70E18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B4DDED70(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1B4DDEE70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v8 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = sub_1B4EB8278;
  }

  else
  {
    v6 = v3[18];

    v5 = sub_1B4DDEF8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4DDEF8C()
{
  v1 = sub_1B4DDF210(*(v0 + 112), *(v0 + 160));
  if (!v1)
  {
    v1 = [objc_opt_self() kilocalorieUnit];
  }

  v2 = v1;
  v3 = sub_1B4DDF210(*(v0 + 120), *(v0 + 160));
  if (!v3)
  {
    v3 = [objc_opt_self() kilocalorieUnit];
  }

  v4 = v3;
  v5 = sub_1B4DDF210(*(v0 + 128), *(v0 + 160));
  if (!v5)
  {
    v5 = [objc_opt_self() meterUnitWithMetricPrefix_];
  }

  v6 = v5;
  v7 = sub_1B4DDF210(*(v0 + 136), *(v0 + 160));

  if (!v7)
  {
    v7 = [objc_opt_self() meterUnitWithMetricPrefix_];
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 136);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v14 = *(v0 + 80);
  v8 = [v2 unitString];
  sub_1B4F67F74();

  v15 = v2;
  v9 = [v4 unitString];
  sub_1B4F67F74();

  v10 = [v6 unitString];
  sub_1B4F67F74();

  v11 = [v7 unitString];
  sub_1B4F67F74();

  sub_1B4F684B4();
  sub_1B4F65C04();

  v12 = *(v0 + 8);

  return v12();
}

void *sub_1B4DDF210(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1B4F68B14();

    if (v4)
    {
      sub_1B4DD8804(0, &unk_1EDB6DA58, 0x1E696C510);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1B4DF4484(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1B4DDF31C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1B4DDF360()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

Swift::Void __swiftcall Signpost.endInterval()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DDF3A4((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1B4DDF41C(void *a1, uint64_t a2)
{
  v4 = sub_1B4F67BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  v14 = sub_1B4F67BA4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v24 = &v36 - v23;
  if (*a1)
  {
    v37 = v5;
    v38 = v4;
    v39 = v22;
    v40 = v21;
    *a1 = 0;
    v25 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled);
    v41 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier);
    LOBYTE(a1) = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier + 16);
    v26 = sub_1B4F67BC4();
    if (v25 != 1)
    {
      goto LABEL_7;
    }

    sub_1B4F67BF4();
    v18 = sub_1B4F686F4();
    v9 = v26;
    if ((sub_1B4F68794() & 1) == 0)
    {
LABEL_11:
      v18 = v24;
      v26 = v9;
      goto LABEL_29;
    }

    if (a1)
    {
      v27 = v37;
      a1 = v38;
      if (v41 >> 32)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((v41 & 0xFFFFF800) == 0xD800)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v41 >> 16 > 0x10)
      {
        goto LABEL_33;
      }

      v41 = &v43;
    }

    else
    {
      v27 = v37;
      a1 = v38;
      if (!v41)
      {
        __break(1u);
LABEL_7:
        sub_1B4F67BF4();
        v28 = sub_1B4F686F4();
        if ((sub_1B4F68794() & 1) == 0)
        {
LABEL_29:

          (*(v39 + 8))(v18, v40);
          return;
        }

        if ((a1 & 1) == 0)
        {
          v29 = v38;
          if (!v41)
          {
            __break(1u);
            goto LABEL_11;
          }

          goto LABEL_22;
        }

        v29 = v38;
        if (!(v41 >> 32))
        {
          if ((v41 & 0xFFFFF800) == 0xD800)
          {
LABEL_36:
            __break(1u);
            return;
          }

          if (v41 >> 16 <= 0x10)
          {
            v41 = &v44;
LABEL_22:

            sub_1B4F67C24();

            v31 = v37;
            if ((*(v37 + 88))(v9, v29) == *MEMORY[0x1E69E93E8])
            {
              v32 = "[Error] Interval already ended";
            }

            else
            {
              (*(v31 + 8))(v9, v29);
              v32 = "";
            }

            v33 = swift_slowAlloc();
            *v33 = 0;
            v35 = sub_1B4F67B94();
            _os_signpost_emit_with_name_impl(&dword_1B4DC2000, v26, v28, v35, v41, v32, v33, 2u);
LABEL_28:
            MEMORY[0x1B8C831D0](v33, -1, -1);
            goto LABEL_29;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }
    }

    sub_1B4F67C24();

    if ((*(v27 + 88))(v13, a1) == *MEMORY[0x1E69E93E8])
    {
      v30 = "[Error] Interval already ended";
    }

    else
    {
      (*(v27 + 8))(v13, a1);
      v30 = " enableTelemetry=YES ";
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_1B4F67B94();
    _os_signpost_emit_with_name_impl(&dword_1B4DC2000, v26, v18, v34, v41, v30, v33, 2u);
    v18 = v24;
    goto LABEL_28;
  }
}

uint64_t Signpost.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DDF3A4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = OBJC_IVAR____TtC13SeymourClient8Signpost_poster;
  v3 = sub_1B4F67BD4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID;
  v5 = sub_1B4F67BA4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ActivityTrace.__deallocating_deinit()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 44));
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v6 = *(v1 + 24);
    os_activity_scope_leave(&v6);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = v2;
    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 44));
  v3 = *(v0 + 40);

  result = swift_deallocClassInstance();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B4DDFA90@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSb13SeymourClientE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(a1);
  *a2 = result;
  return result;
}

uint64_t _sSb13SeymourClientE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(void *a1)
{
  v2 = sub_1B4F67F64();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_1B4F68894();
    swift_unknownObjectRelease();
    sub_1B4E2C940(&v7, v8);
    sub_1B4DDA43C(v8);
    v4 = sub_1B4F67F64();
    v5 = [a1 BOOLForKey_];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    sub_1B4DDA43C(v8);
    return 2;
  }

  return v5;
}

uint64_t sub_1B4DDFBA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B4DE0D94;

  return sub_1B4DDFC58(a1, v5);
}

uint64_t sub_1B4DDFC58(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE14E4;

  return v7(a1);
}

uint64_t NetworkEvaluator.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1B4DDFF44()
{
  v1 = v0;
  v2 = *(v0 + 88);

  sub_1B4F67CB4();

  sub_1B4DDC964(v1 + 16);
  sub_1B4DDFFB8(v1 + 32);
  v3 = *(v1 + 88);

  return swift_deallocClassInstance();
}

uint64_t Error.sanitized()(uint64_t a1, uint64_t a2)
{
  v98 = *(a1 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v95 = &v93[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v93[-v9];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v93[-v13];
  v15 = *(sub_1B4F68E04() + 16);

  if (!v15)
  {
    v16 = sub_1B4F68DD4();
    if (!v16)
    {
      v81 = v98;
      (*(v98 + 16))(v14, v2, a1);
      v82 = sub_1B4F68D24();
      if (v82)
      {
        v83 = v82;
        (*(v81 + 8))(v14, a1);
      }

      else
      {
        v83 = swift_allocError();
        (*(v81 + 32))(v92, v14, a1);
      }

      return v83;
    }
  }

  v17 = sub_1B4F68E04();
  v101 = a2;
  v100 = v2;
  v18 = sub_1B4F68DD4();
  v19 = *MEMORY[0x1E696AA08];
  v102 = a1;
  v97 = v10;
  v104 = v19;
  if (v18)
  {
    v20 = sub_1B4F67F74();
    v22 = v21;
    swift_getErrorValue();
    v23 = Error.sanitized()(v107, v108);
    swift_getErrorValue();
    v24 = v105;
    v25 = v106;
    *(&v117[0] + 1) = v106;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v116);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v24, v25);

    sub_1B4E2C940(&v116, &v113);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v111 = v17;
    v2 = &v111;
    sub_1B4E5E93C(&v113, v20, v22, isUniquelyReferenced_nonNull_native);

    v17 = v111;
  }

  v28 = (v17 + 64);
  v29 = 1 << *(v17 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v17 + 64);
  v32 = (v29 + 63) >> 6;
  v96 = *MEMORY[0x1E696A250];

  v99 = 0;
  v33 = 0;
  v103 = v17;
  if (!v31)
  {
LABEL_10:
    if (v32 <= v33 + 1)
    {
      v35 = v33 + 1;
    }

    else
    {
      v35 = v32;
    }

    v36 = v35 - 1;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {
        v31 = 0;
        v114 = 0u;
        v115 = 0u;
        v33 = v36;
        v113 = 0u;
        goto LABEL_19;
      }

      v31 = *&v28[8 * v34];
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_70:
    swift_allocError();
    (*(v32 + 32))(v84, v28, v31);
    goto LABEL_71;
  }

  while (1)
  {
    v34 = v33;
LABEL_18:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v37 | (v34 << 6);
    v39 = (*(v17 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    sub_1B4DC4F2C(*(v17 + 56) + 32 * v38, &v111);
    *&v113 = v41;
    *(&v113 + 1) = v40;
    sub_1B4E2C940(&v111, &v114);

LABEL_19:
    v116 = v113;
    v117[0] = v114;
    v117[1] = v115;
    v42 = *(&v113 + 1);
    if (!*(&v113 + 1))
    {
      break;
    }

    v18 = v116;
    sub_1B4E2C940(v117, &v111);
    v43 = sub_1B4F67F74();
    v2 = v44;
    if (v18 == v43 && v44 == v42)
    {

LABEL_24:

      goto LABEL_25;
    }

    v45 = sub_1B4F68D54();

    if (v45)
    {
      goto LABEL_24;
    }

    sub_1B4DC4F2C(&v111, &v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
    v2 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1B4DC4F2C(&v111, &v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1B4DC4F2C(&v111, &v113);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_1B4DC4F2C(&v111, v110);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_24;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v113);
          v2 = v100;
          if (Error.isContainerSanitized(object:)(&v111, v102, v101))
          {
            goto LABEL_24;
          }
        }
      }
    }

    v46 = sub_1B4F68DF4();
    v48 = v47;
    if (v46 == sub_1B4F67F74() && v48 == v49)
    {

LABEL_35:
      *(&v114 + 1) = MEMORY[0x1E69E6158];
      *&v113 = 0x657070697274733CLL;
      *(&v113 + 1) = 0xEA00000000003E64;
      sub_1B4E2C940(&v113, v110);
      v50 = v103;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v50;
      v52 = sub_1B4DF4344(v18, v42);
      v53 = v50[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        result = sub_1B4F68DB4();
        __break(1u);
        return result;
      }

      if (v50[3] >= v55)
      {
        if (v99)
        {
          if ((v51 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          LODWORD(v103) = v51;
          sub_1B4E29614();
          if ((v103 & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        LODWORD(v103) = v51;
        sub_1B4E27F34(v55, v99);
        v56 = sub_1B4DF4344(v18, v42);
        if ((v103 & 1) != (v57 & 1))
        {
          goto LABEL_79;
        }

        v52 = v56;
        if ((v103 & 1) == 0)
        {
LABEL_39:
          v2 = v109;
          v109[(v52 >> 6) + 8] |= 1 << v52;
          v58 = (v2[6] + 16 * v52);
          *v58 = v18;
          v58[1] = v42;
          sub_1B4E2C940(v110, (v2[7] + 32 * v52));
          v59 = v2[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            goto LABEL_76;
          }

          v103 = v2;
          v2[2] = v61;
          goto LABEL_44;
        }
      }

      v103 = v109;
      v2 = (v109[7] + 32 * v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      sub_1B4E2C940(v110, v2);
LABEL_44:
      v99 = 1;
      goto LABEL_25;
    }

    v94 = sub_1B4F68D54();

    if (v94)
    {
      goto LABEL_35;
    }

    *&v113 = 0;
    *(&v113 + 1) = 0xE000000000000000;
    __swift_project_boxed_opaque_existential_1(&v111, v112);
    sub_1B4F68D34();
    *(&v114 + 1) = MEMORY[0x1E69E6158];
    sub_1B4E2C940(&v113, v110);
    v62 = v103;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v62;
    v64 = sub_1B4DF4344(v18, v42);
    v66 = v62[2];
    v67 = (v65 & 1) == 0;
    v60 = __OFADD__(v66, v67);
    v68 = v66 + v67;
    if (v60)
    {
      goto LABEL_77;
    }

    if (v62[3] >= v68)
    {
      if ((v63 & 1) == 0)
      {
        v103 = v64;
        v71 = v65;
        sub_1B4E29614();
        v64 = v103;
        if (v71)
        {
LABEL_54:
          v70 = v64;

          v103 = v109;
          v2 = (v109[7] + 32 * v70);
          __swift_destroy_boxed_opaque_existential_1Tm(v2);
          sub_1B4E2C940(v110, v2);
          goto LABEL_25;
        }

        goto LABEL_58;
      }
    }

    else
    {
      LODWORD(v103) = v65;
      sub_1B4E27F34(v68, v63);
      v64 = sub_1B4DF4344(v18, v42);
      v69 = v65 & 1;
      LOBYTE(v65) = v103;
      if ((v103 & 1) != v69)
      {
        goto LABEL_79;
      }
    }

    if (v65)
    {
      goto LABEL_54;
    }

LABEL_58:
    v2 = v109;
    v109[(v64 >> 6) + 8] |= 1 << v64;
    v72 = (v2[6] + 16 * v64);
    *v72 = v18;
    v72[1] = v42;
    sub_1B4E2C940(v110, (v2[7] + 32 * v64));
    v73 = v2[2];
    v60 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v60)
    {
      goto LABEL_78;
    }

    v103 = v2;
    v2[2] = v74;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1Tm(&v111);
    if (!v31)
    {
      goto LABEL_10;
    }
  }

  v31 = v102;
  v75 = v100;
  if ((v99 & 1) == 0)
  {
    goto LABEL_72;
  }

  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v76 = sub_1B4F67C54();
  __swift_project_value_buffer(v76, qword_1EDB72490);
  v32 = v98;
  v77 = *(v98 + 16);
  v78 = v97;
  v77(v97, v75, v31);
  v2 = sub_1B4F67C34();
  LOBYTE(v33) = sub_1B4F685C4();
  if (!os_log_type_enabled(v2, v33))
  {

    (*(v32 + 8))(v78, v31);
    goto LABEL_72;
  }

  v18 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v80 = v78;
  v104 = v79;
  *v18 = 138412290;
  v28 = v95;
  v77(v95, v80, v31);
  if (!sub_1B4F68D24())
  {
    goto LABEL_70;
  }

  (*(v32 + 8))(v28, v31);
LABEL_71:
  v85 = _swift_stdlib_bridgeErrorToNSError();
  (*(v32 + 8))(v97, v31);
  *(v18 + 1) = v85;
  v86 = v104;
  *v104 = v85;
  _os_log_impl(&dword_1B4DC2000, v2, v33, "Found Errors from Core Data, original error before sanitization: %@", v18, 0xCu);
  sub_1B4DD2BC4(v86, &unk_1EB8F6DF0, &qword_1B4F79210);
  MEMORY[0x1B8C831D0](v86, -1, -1);
  MEMORY[0x1B8C831D0](v18, -1, -1);

LABEL_72:
  sub_1B4F68DF4();
  v87 = sub_1B4F68DE4();
  v88 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v89 = sub_1B4F67F64();

  v90 = sub_1B4F67EE4();

  v83 = [v88 initWithDomain:v89 code:v87 userInfo:v90];

  return v83;
}

void *ContentAvailabilityClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  v10 = type metadata accessor for XPCClient();
  swift_allocObject();
  v11 = sub_1B4DC42B8(v9, v7);

  v12 = *(v11 + 32);
  os_unfair_lock_lock(*(v12 + 16));
  if (*(v11 + 48) == 1)
  {
    *(v11 + 48) = 2;
    [*(v11 + 24) resume];
  }

  os_unfair_lock_unlock(*(v12 + 16));
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  v15 = sub_1B4DC6FFC(v11, a1, v14, v10, ObjectType, &protocol witness table for XPCClient, &protocol witness table for XPCClient, a2);

  return v15;
}

void *sub_1B4DE0F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();

  return sub_1B4DC6FFC(a1, a2, v15, a4, a5, a6, a7, a8);
}

uint64_t type metadata accessor for ContentAvailabilityUpdated()
{
  result = qword_1EDB717D8;
  if (!qword_1EDB717D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4DE1044()
{
  result = qword_1EDB6DA80;
  if (!qword_1EDB6DA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB6DA80);
  }

  return result;
}

uint64_t sub_1B4DE1090()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82230;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 118;
  v8 = *(v6 + 24);
  v9 = sub_1B4F66184();
  return v8(&v11, v9, MEMORY[0x1E69CBF20], MEMORY[0x1E69CBF28], ObjectType, v6);
}

uint64_t StorefrontCache.queryContentAvailability()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F75C8, &qword_1B4F7CC60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v15 - v5;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1B4F67F64();
  v9 = [v7 stringForKey_];

  if (!v9)
  {
    goto LABEL_4;
  }

  sub_1B4F67F74();

  sub_1B4F66164();
  v10 = sub_1B4F66184();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1B4F42E40(v6);
LABEL_4:
    v12 = *MEMORY[0x1E69CBF10];
    v13 = sub_1B4F66184();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  return (*(v11 + 32))(a1, v6, v10);
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t sub_1B4DE13F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B4DE14E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B4DE15DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1B4DE1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v29 = a7;
  v30 = a8;
  v32 = a4;
  v33 = a9;
  v31 = a3;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v27 = a10;
  v28 = a11;
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v17;
  (*(v13 + 16))(v16, v15);
  v19 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 9) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a5;
  *(v22 + 3) = a6;
  v23 = v30;
  *(v22 + 4) = v29;
  *(v22 + 5) = v23;
  v24 = v28;
  *(v22 + 6) = v27;
  *(v22 + 7) = v24;
  (*(v13 + 32))(&v22[v19], v16, a5);
  *&v22[v20] = v18;
  *&v22[v21] = v31;
  *&v22[(v21 + 9) & 0xFFFFFFFFFFFFFFF8] = v32;
  swift_unknownObjectRetain();

  return sub_1B4F675F4();
}

uint64_t sub_1B4DE17CC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 9) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v6 = *(v0 + v4);
  swift_unknownObjectRelease();
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v2 | 7);
}

uint64_t sub_1B4DE1878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*(v2[2] - 8) + 80) + 64) & ~*(*(v2[2] - 8) + 80);
  v4 = (*(*(v2[2] - 8) + 64) + v3 + 1) & 0xFFFFFFFFFFFFFFFELL;
  return sub_1B4DE1628(a1, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 9) & 0xFFFFFFFFFFFFFFF8)), v2[2], v2[3], v2[4], v2[5], a2, v2[6], v2[7]);
}

void sub_1B4DE1914(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(v2[2] - 8) + 80) + 64) & ~*(*(v2[2] - 8) + 80);
  v4 = (*(*(v2[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4DE19C0(a1, a2, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 9) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v4 + 9) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8)), v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
}

void sub_1B4DE19C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = sub_1B4F66E04();
  v17 = v16;
  sub_1B4DD3014(v15, v16);
  v18 = sub_1B4F64884();
  sub_1B4DD2B70(v15, v17);
  v19 = qword_1B4F71988[a5];
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a9;
  v21[5] = a10;
  v21[6] = a11;
  v21[7] = a12;
  v21[8] = v20;
  v21[9] = a1;
  v21[10] = a2;
  aBlock[4] = sub_1B4E56590;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4E54930;
  aBlock[3] = &block_descriptor_1;
  v22 = _Block_copy(aBlock);

  [a4 receiveRequest:v19 data:v18 completion:v22];
  sub_1B4DD2B5C(v15, v17);
  _Block_release(v22);
}

uint64_t sub_1B4DE1B9C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

unint64_t sub_1B4DE1BDC()
{
  result = qword_1EDB70118;
  if (!qword_1EDB70118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB70118);
  }

  return result;
}

uint64_t sub_1B4DE1C28()
{
  result = sub_1B4F668C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DE1C94()
{
  result = sub_1B4F66624();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static Promise<>.parallel(queue:maxConcurrent:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a1;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v35 = &v30 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourClient/PromiseConcurrency.swift";
  *(v17 + 24) = 38;
  *(v17 + 32) = 2;
  *(v17 + 40) = 36;
  *(v17 + 48) = &unk_1B4F73850;
  *(v17 + 56) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54F0, &qword_1B4F73858);
  v31 = v12;
  sub_1B4F675F4();
  v34 = *(v5 + 16);
  v34(v8, v12, v4);
  v18 = *(v5 + 80);
  v33 = (v18 + 16) & ~v18;
  v19 = (v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v32 = *(v5 + 32);
  v32(v20 + ((v18 + 16) & ~v18), v8, v4);
  v21 = v36;
  *(v20 + v19) = v36;
  v22 = v21;
  v23 = v35;
  sub_1B4F675F4();
  v24 = *(v5 + 8);
  v25 = v31;
  v24(v31, v4);
  v26 = swift_allocObject();
  *(v26 + 16) = nullsub_1;
  *(v26 + 24) = 0;
  v34(v25, v23, v4);
  v27 = swift_allocObject();
  v32(v27 + v33, v25, v4);
  v28 = (v27 + v19);
  *v28 = sub_1B4DE2BC8;
  v28[1] = v26;
  sub_1B4F675F4();
  return (v24)(v23, v4);
}

uint64_t sub_1B4DE2074()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DE20AC()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DE20E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B4DE2190()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE21CC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4DE236C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1B4DE2288()
{
  result = sub_1B4F673D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DE22F8()
{
  result = sub_1B4F679A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AchievementClient.populateAchievementProgressUpdates(forTemplateNames:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F85470;
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x80000001B4F854E0;
  v5._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v1 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 299;
  v15 = a1;
  v10 = *(v8 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v12 = sub_1B4DE24F8();
  v13 = sub_1B4E594C8();
  return v10(&v16, &v15, v11, v12, v13, ObjectType, v8);
}

unint64_t sub_1B4DE24F8()
{
  result = qword_1EDB70150;
  if (!qword_1EDB70150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52A8, &qword_1B4F72730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70150);
  }

  return result;
}

uint64_t sub_1B4DE2578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a6;
  v22 = a7;
  v23 = a3;
  v24 = a8;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(v12);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 9) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v19 = v21;
  v18 = v22;
  *(v17 + 2) = a5;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  (*(v10 + 32))(&v17[v14], v12, a5);
  *&v17[v15] = v13;
  *&v17[v16] = v23;
  *&v17[(v16 + 9) & 0xFFFFFFFFFFFFFFF8] = a4;
  swift_unknownObjectRetain();

  return sub_1B4F675F4();
}

uint64_t sub_1B4DE2710()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 9) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v6 = *(v0 + v4);
  swift_unknownObjectRelease();
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v2 | 7);
}

uint64_t sub_1B4DE27BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*(v2[2] - 8) + 80) + 40) & ~*(*(v2[2] - 8) + 80);
  v4 = (*(*(v2[2] - 8) + 64) + v3 + 1) & 0xFFFFFFFFFFFFFFFELL;
  return sub_1B4DE2578(a1, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 9) & 0xFFFFFFFFFFFFFFF8)), v2[2], v2[3], v2[4], a2);
}

void sub_1B4DE2834(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = (*(*(v2[2] - 8) + 80) + 40) & ~*(*(v2[2] - 8) + 80);
  v5 = (*(*(v2[2] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 9) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + ((v6 + 9) & 0xFFFFFFFFFFFFFFF8));
  v8 = v2[4];
  sub_1B4DCF3B4(a1, a2, v2 + v4, *(v2 + v5), *(v2 + v6));
}

char *sub_1B4DE28D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5800, &qword_1B4F73F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1B4DE29E4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v23 - v15;
  v23 = a1;
  if (a2)
  {
    v24 = 1;
    v17 = a1;
    a5(&v23);
    v18 = MEMORY[0x1E69E7CF8];
    v19 = a1;
    v20 = 1;
  }

  else
  {

    a3(&v23);
    v21 = sub_1B4F67654();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(sub_1B4DDDFD0, v22);

    (*(v12 + 8))(v16, v11);
    v18 = MEMORY[0x1E69E7CF8];
    v19 = a1;
    v20 = 0;
  }

  sub_1B4DDACF4(v19, v20, v18);
}

uint64_t sub_1B4DE2BD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_1B4F675F4();
}

uint64_t sub_1B4DE2C74()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B4DE2CC0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_1B4DDC730(v6, 0);
}

uint64_t static Optional<A>.read(from:key:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  (*(a1 + 8))();
  v3 = sub_1B4F687D4();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

void sub_1B4DE2DF0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B4F67F64();
  v5 = [a1 stringForKey_];

  if (v5)
  {
    v6 = sub_1B4F67F74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t sub_1B4DE2E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E8, &qword_1B4F6D0C0);
    v3 = sub_1B4F68994();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](v10);
      result = sub_1B4F68EC4();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t Platform.supportedFeatures.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = &unk_1F2CD4228;
    }

    else
    {
      v4 = &unk_1F2CD4258;
    }

    return sub_1B4DE2E78(v4);
  }

  if (a1)
  {
    v4 = &unk_1F2CD41E8;

    return sub_1B4DE2E78(v4);
  }

  v2 = sub_1B4DE2E78(&unk_1F2CD4178);

  return sub_1B4E45848(&unk_1F2CD41C0, v2);
}

uint64_t sub_1B4DE3054()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4DE30B4(uint64_t a1)
{
  result = a1 - 1;
  if (result >= 3)
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB72490);
    v3 = sub_1B4F67C34();
    v4 = sub_1B4F685D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B4DC2000, v3, v4, "### HKFitnessMode not handled", v5, 2u);
      MEMORY[0x1B8C831D0](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B4DE31D8()
{
  result = qword_1EDB6F220[0];
  if (!qword_1EDB6F220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB6F220);
  }

  return result;
}

uint64_t sub_1B4DE322C()
{
  sub_1B4DE3280();
  sub_1B4DC53AC();
  return sub_1B4F68124();
}

unint64_t sub_1B4DE3280()
{
  result = qword_1EDB6F218;
  if (!qword_1EDB6F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6F218);
  }

  return result;
}

void sub_1B4DE32D4(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000686374;
  v3 = *v1;
  v4 = 0xE900000000000073;
  v5 = 0x73656C6863746177;
  if (v3 != 1)
  {
    v5 = 0x615765746F6D6572;
    v4 = 0xEB00000000686374;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6157646572696170;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1B4DE3360(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B4DE0D94;

  return sub_1B4DDFC58(a1, v5);
}

uint64_t objectdestroy_16Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1B4DE34F0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B8C831F0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B8C831F0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *AchievementProgressEnvironment.init(cache:activePlanCompletedNumberOfWorkouts:activePlanTotalNumberOfWorkouts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5588, &qword_1B4F7CFB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v64 = &v63 - v8;
  *&v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_bestEnergyBurnedOfWorkoutModality] = 0;
  v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_isSessionGuided] = 0;
  v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_isSessionCompletingProgram] = 0;
  v9 = &v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_modalityIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_sessionDuration] = 0;
  v68 = v3;
  v69 = a1;
  *&v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_sessionEnergyBurned] = 0;
  v10 = sub_1B4F66F44();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F76E0, &qword_1B4F7CFB8);
  result = sub_1B4F68B94();
  v12 = result;
  v13 = 0;
  v14 = *(v10 + 64);
  v71 = result;
  v72 = v10;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v70 = (result + 8);
  if ((v16 & v14) != 0)
  {
    do
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_10:
      v22 = v19 | (v13 << 6);
      v23 = (v72[6] + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v72[7] + 8 * v22);
      v27 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      result = [v27 initWithInteger_];
      v12 = v71;
      *&v70[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
      v28 = (v12[6] + 16 * v22);
      *v28 = v24;
      v28[1] = v25;
      *(v12[7] + 8 * v22) = result;
      v29 = v12[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v12[2] = v31;
    }

    while (v17);
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v13 >= v18)
    {
      break;
    }

    v21 = *(v10 + 64 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_10;
    }
  }

  *&v68[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_numberOfWorkoutsOver5MinutesForModalities] = v12;
  v32 = sub_1B4F66F64();
  result = sub_1B4F68B94();
  v33 = 0;
  v71 = v32;
  v72 = result;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v32 + 64;
  v37 = v35 & *(v32 + 64);
  v38 = (v34 + 63) >> 6;
  v70 = (result + 8);
  if (!v37)
  {
LABEL_17:
    v40 = v33;
    while (1)
    {
      v33 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_30;
      }

      if (v33 >= v38)
      {

        v52 = v68;
        *&v68[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_numberOfGuidedWorkoutsOver5MinutesForModalities] = v72;
        *&v52[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_numberOfWorkoutsOver5Minutes] = sub_1B4F66F24();
        v53 = v64;
        sub_1B4F66F04();
        v54 = sub_1B4F666E4();
        v55 = *(v54 - 8);
        if ((*(v55 + 48))(v53, 1, v54) == 1)
        {
          sub_1B4DE3A9C(v53);
          v56 = 0;
        }

        else
        {
          v56 = sub_1B4F666D4();
          (*(v55 + 8))(v53, v54);
        }

        v58 = v68;
        v57 = v69;
        *&v68[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_currentWeeklyStreak] = v56;
        *&v58[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_longestWeeklyStreak] = sub_1B4F66F14();
        v59 = v66;
        *&v58[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_currentPlanCompletedNumberOfWorkouts] = v65;
        *&v58[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_currentPlanTotalNumberOfWorkouts] = v59;
        v60 = type metadata accessor for AchievementProgressEnvironment();
        v73.receiver = v58;
        v73.super_class = v60;
        v61 = objc_msgSendSuper2(&v73, sel_init);
        v62 = sub_1B4F66F74();
        (*(*(v62 - 8) + 8))(v57, v62);
        return v61;
      }

      v41 = *(v36 + 8 * v33);
      ++v40;
      if (v41)
      {
        v39 = __clz(__rbit64(v41));
        v37 = (v41 - 1) & v41;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v39 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
LABEL_22:
    v42 = v39 | (v33 << 6);
    v43 = (v71[6] + 16 * v42);
    v44 = *v43;
    v45 = v43[1];
    v46 = *(v71[7] + 8 * v42);
    v47 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    result = [v47 initWithInteger_];
    *&v70[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
    v48 = v72;
    v49 = (v72[6] + 16 * v42);
    *v49 = v44;
    v49[1] = v45;
    *(v48[7] + 8 * v42) = result;
    v50 = v48[2];
    v30 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v30)
    {
      break;
    }

    v72[2] = v51;
    if (!v37)
    {
      goto LABEL_17;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4DE3A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5588, &qword_1B4F7CFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B4DE3B04(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t type metadata accessor for SessionTerminated()
{
  result = qword_1EDB70C10;
  if (!qword_1EDB70C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4DE3C64()
{
  result = sub_1B4F64E44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

CNContact_optional __swiftcall ContactService.userContact(keys:)(Swift::OpaquePointer keys)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B4DE3FB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6250, &unk_1B4F7C970);
  v2 = sub_1B4F681B4();
  v19[0] = 0;
  v3 = [v1 smu:v2 meContactWithKeysToFetch:v19 error:?];

  v4 = v19[0];
  if (!v3)
  {
    v6 = v4;
    v7 = sub_1B4F647C4();

    swift_willThrow();
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B4F67C54();
    __swift_project_value_buffer(v8, qword_1EDB72490);
    v9 = v7;
    v10 = sub_1B4F67C34();
    v11 = sub_1B4F685E4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = MEMORY[0x1B8C826C0]();
      v16 = sub_1B4DC4F88(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B4DC2000, v10, v11, "[ContactService] Failed fetching user contact: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B8C831D0](v13, -1, -1);
      MEMORY[0x1B8C831D0](v12, -1, -1);
    }

    else
    {
    }

    v3 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  v18 = v3;
  result.value.super.isa = v18;
  result.is_nil = v5;
  return result;
}

uint64_t MetricClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PrivacyPreferenceClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1B4DE3FB4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t ServiceSubscriptionClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1B4DE40CC(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  v4 = sub_1B4F67F74();
  if (*(v3 + 16))
  {
    v6 = sub_1B4DF4344(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(v3 + 56) + 8 * v6);

      return v9;
    }
  }

  else
  {
  }

  v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v11 initWithInteger_];
}

uint64_t PersonalizationCatalogWorkoutReference.init(_:with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4F647A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v166 = v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1B4F649F4();
  v165 = *(v167 - 1);
  v12 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v167, v13);
  v15 = v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = v148 - v19;
  v21 = sub_1B4F64964();
  v163 = *(v21 - 8);
  v164 = v21;
  v22 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v168 = v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B4F66784();
  v27 = HIBYTE(v26) & 0xF;
  v28 = result & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v29 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
LABEL_146:

    goto LABEL_148;
  }

  v161 = v8;
  v162 = v7;
  if ((v26 & 0x1000000000000000) != 0)
  {
    LOBYTE(v174) = 0;
    v31 = sub_1B4F407B4(result, v26, 10);

    if ((v31 & 0x100000000) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_63;
  }

  if ((v26 & 0x2000000000000000) != 0)
  {
    v177 = result;
    v178 = v26 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v27)
      {
        v28 = v27 - 1;
        if (v27 != 1)
        {
          LODWORD(v31) = 0;
          v41 = &v177 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v31;
            if ((v43 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v31 = v43 + v42;
            if (__CFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v28)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_153:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v27)
      {
        LODWORD(v31) = 0;
        v46 = &v177;
        while (1)
        {
          v47 = *v46 - 48;
          if (v47 > 9)
          {
            break;
          }

          v48 = 10 * v31;
          if ((v48 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v31 = v48 + v47;
          if (__CFADD__(v48, v47))
          {
            break;
          }

          v46 = (v46 + 1);
          if (!--v27)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v27)
    {
      v28 = v27 - 1;
      if (v27 != 1)
      {
        LODWORD(v31) = 0;
        v35 = &v177 + 1;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v31;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v31 = v37 - v36;
          if (v37 < v36)
          {
            break;
          }

          ++v35;
          if (!--v28)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_151;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v26 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B4F68A34();
    v28 = v147;
  }

  v30 = *result;
  if (v30 == 43)
  {
    if (v28 >= 1)
    {
      if (--v28)
      {
        v31 = 0;
        if (result)
        {
          v38 = (result + 1);
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              goto LABEL_61;
            }

            v40 = 10 * v31;
            if ((v40 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            v31 = v40 + v39;
            if (__CFADD__(v40, v39))
            {
              goto LABEL_61;
            }

            ++v38;
            if (!--v28)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_61;
    }

    goto LABEL_152;
  }

  if (v30 == 45)
  {
    if (v28 >= 1)
    {
      if (--v28)
      {
        v31 = 0;
        if (result)
        {
          v32 = (result + 1);
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              goto LABEL_61;
            }

            v34 = 10 * v31;
            if ((v34 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            v31 = v34 - v33;
            if (v34 < v33)
            {
              goto LABEL_61;
            }

            ++v32;
            if (!--v28)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v28) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v28)
  {
    v31 = 0;
    if (result)
    {
      while (1)
      {
        v44 = *result - 48;
        if (v44 > 9)
        {
          goto LABEL_61;
        }

        v45 = 10 * v31;
        if ((v45 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_61;
        }

        v31 = v45 + v44;
        if (__CFADD__(v45, v44))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v28)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  v31 = 0;
  LOBYTE(v28) = 1;
LABEL_62:
  LOBYTE(v174) = v28;
  v49 = v28;

  if (v49)
  {
LABEL_148:
    v144 = sub_1B4F66224();
    sub_1B4F40D30();
    swift_allocError();
    (*(*(v144 - 8) + 104))(v145, *MEMORY[0x1E69CBF58], v144);
    swift_willThrow();

    v146 = sub_1B4F66874();
    return (*(*(v146 - 8) + 8))(a1, v146);
  }

LABEL_63:
  v50 = sub_1B4F667C4();
  v52 = sub_1B4DE5060(v50, v51);
  if ((v52 & 0x100000000) != 0)
  {
    goto LABEL_148;
  }

  v154 = v52;
  v155 = v31;
  v156 = a3;
  v157 = a2;
  v158 = v3;
  v53 = sub_1B4F66864();
  v55 = v54;
  v174 = v53;
  v175 = v54;
  v57 = v56 & 1;
  v176 = v56 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F75B0, &unk_1B4F7CC10);
  sub_1B4F65024();
  sub_1B4DE5390(v53, v55, v57);
  v170 = v172;
  v171 = v173;
  sub_1B4DE533C();
  sub_1B4F65034();
  v153 = v177;
  v152 = v178;
  v151 = v179;
  v169 = a1;
  v58 = sub_1B4F667F4();
  a2 = 0;
  a1 = *(v58 + 16);
  v160 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v59 = (v58 + 40 + 16 * a2);
  while (a1 != a2)
  {
    if (a2 >= *(v58 + 16))
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    ++a2;
    v60 = v59 + 2;
    v62 = *(v59 - 1);
    v61 = *v59;

    v63 = sub_1B4DE5060(v62, v61);
    v59 = v60;
    if ((v63 & 0x100000000) == 0)
    {
      v64 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = sub_1B4DE53A0(0, *(v160 + 2) + 1, 1, v160);
      }

      v66 = *(v160 + 2);
      v65 = *(v160 + 3);
      if (v66 >= v65 >> 1)
      {
        v160 = sub_1B4DE53A0((v65 > 1), v66 + 1, 1, v160);
      }

      v67 = v160;
      *(v160 + 2) = v66 + 1;
      *&v67[4 * v66 + 32] = v64;
      goto LABEL_65;
    }
  }

  v150 = sub_1B4F667A4();
  v149 = v68;
  v148[3] = v69;
  v70 = sub_1B4F66834();
  a2 = 0;
  v71 = *(v70 + 16);
  a1 = v70 + 40;
  v159 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v72 = (a1 + 16 * a2);
  while (v71 != a2)
  {
    if (a2 >= *(v70 + 16))
    {
      goto LABEL_140;
    }

    ++a2;
    v73 = v72 + 2;
    v75 = *(v72 - 1);
    v74 = *v72;

    v76 = sub_1B4DE5060(v75, v74);
    v72 = v73;
    if ((v76 & 0x100000000) == 0)
    {
      v77 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_1B4DE53A0(0, *(v159 + 2) + 1, 1, v159);
      }

      v79 = *(v159 + 2);
      v78 = *(v159 + 3);
      if (v79 >= v78 >> 1)
      {
        v159 = sub_1B4DE53A0((v78 > 1), v79 + 1, 1, v159);
      }

      v80 = v159;
      *(v159 + 2) = v79 + 1;
      *&v80[4 * v79 + 32] = v77;
      goto LABEL_75;
    }
  }

  sub_1B4F649B4();
  v81 = v166;
  sub_1B4F66794();
  sub_1B4F649C4();
  (*(v161 + 8))(v81, v162);
  (*(v165 + 8))(v15, v167);
  a1 = v163;
  v82 = v164;
  v83 = *(v163 + 48);
  if (v83(v20, 1, v164) == 1)
  {
    sub_1B4F64944();
    if (v83(v20, 1, v82) != 1)
    {
      sub_1B4E5ECFC(v20);
    }
  }

  else
  {
    v84 = *(a1 + 32);
    a1 += 32;
    v84(v168, v20, v82);
  }

  sub_1B4F66854();
  v85 = sub_1B4F66804();
  v86 = 0;
  v87 = *(v85 + 16);
  a2 = v85 + 40;
  v88 = MEMORY[0x1E69E7CC0];
LABEL_89:
  v89 = (a2 + 16 * v86);
  while (v87 != v86)
  {
    if (v86 >= *(v85 + 16))
    {
      goto LABEL_141;
    }

    ++v86;
    v90 = v89 + 2;
    a1 = *(v89 - 1);
    v91 = *v89;

    v92 = sub_1B4DE5060(a1, v91);
    v89 = v90;
    if ((v92 & 0x100000000) == 0)
    {
      v93 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_1B4DE53A0(0, *(v88 + 2) + 1, 1, v88);
      }

      v95 = *(v88 + 2);
      v94 = *(v88 + 3);
      a1 = v95 + 1;
      if (v95 >= v94 >> 1)
      {
        v88 = sub_1B4DE53A0((v94 > 1), v95 + 1, 1, v88);
      }

      *(v88 + 2) = a1;
      *&v88[4 * v95 + 32] = v93;
      goto LABEL_89;
    }
  }

  v96 = sub_1B4F66814();
  a2 = 0;
  v97 = *(v96 + 16);
  a1 = v96 + 40;
  v167 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v98 = (a1 + 16 * a2);
  while (v97 != a2)
  {
    if (a2 >= *(v96 + 16))
    {
      goto LABEL_142;
    }

    ++a2;
    v99 = v98 + 2;
    v101 = *(v98 - 1);
    v100 = *v98;

    v102 = sub_1B4DE5060(v101, v100);
    v98 = v99;
    if ((v102 & 0x100000000) == 0)
    {
      v103 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v167 = sub_1B4DE53A0(0, *(v167 + 2) + 1, 1, v167);
      }

      v105 = *(v167 + 2);
      v104 = *(v167 + 3);
      if (v105 >= v104 >> 1)
      {
        v167 = sub_1B4DE53A0((v104 > 1), v105 + 1, 1, v167);
      }

      v106 = v167;
      *(v167 + 2) = v105 + 1;
      *&v106[4 * v105 + 32] = v103;
      goto LABEL_99;
    }
  }

  v166 = v88;

  v107 = sub_1B4F66824();
  v108 = 0;
  v109 = *(v107 + 16);
  a1 = v107 + 40;
  v110 = MEMORY[0x1E69E7CC0];
LABEL_109:
  v111 = (a1 + 16 * v108);
  while (v109 != v108)
  {
    if (v108 >= *(v107 + 16))
    {
      goto LABEL_143;
    }

    ++v108;
    v112 = v111 + 2;
    a2 = *(v111 - 1);
    v113 = *v111;

    v114 = sub_1B4DE5060(a2, v113);
    v111 = v112;
    if ((v114 & 0x100000000) == 0)
    {
      v115 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1B4DE53A0(0, *(v110 + 2) + 1, 1, v110);
      }

      v117 = *(v110 + 2);
      v116 = *(v110 + 3);
      a2 = v117 + 1;
      if (v117 >= v116 >> 1)
      {
        v110 = sub_1B4DE53A0((v116 > 1), v117 + 1, 1, v110);
      }

      *(v110 + 2) = a2;
      *&v110[4 * v117 + 32] = v115;
      goto LABEL_109;
    }
  }

  v118 = sub_1B4F667B4();
  v119 = 0;
  v120 = *(v118 + 16);
  a1 = v118 + 40;
  a2 = MEMORY[0x1E69E7CC0];
LABEL_119:
  v121 = (a1 + 16 * v119);
  while (v120 != v119)
  {
    if (v119 >= *(v118 + 16))
    {
      goto LABEL_144;
    }

    ++v119;
    v122 = v121 + 2;
    v124 = *(v121 - 1);
    v123 = *v121;

    v125 = sub_1B4DE5060(v124, v123);
    v121 = v122;
    if ((v125 & 0x100000000) == 0)
    {
      v126 = v125;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_1B4DE53A0(0, *(a2 + 16) + 1, 1, a2);
      }

      v128 = *(a2 + 16);
      v127 = *(a2 + 24);
      if (v128 >= v127 >> 1)
      {
        a2 = sub_1B4DE53A0((v127 > 1), v128 + 1, 1, a2);
      }

      *(a2 + 16) = v128 + 1;
      *(a2 + 4 * v128 + 32) = v126;
      goto LABEL_119;
    }
  }

  v129 = sub_1B4F667D4();
  v130 = 0;
  a1 = *(v129 + 16);
  v131 = v129 + 40;
  v132 = MEMORY[0x1E69E7CC0];
LABEL_129:
  v133 = (v131 + 16 * v130);
  while (a1 != v130)
  {
    if (v130 >= *(v129 + 16))
    {
      goto LABEL_145;
    }

    ++v130;
    v134 = v133 + 2;
    v136 = *(v133 - 1);
    v135 = *v133;

    v137 = sub_1B4DE5060(v136, v135);
    v133 = v134;
    if ((v137 & 0x100000000) == 0)
    {
      v165 = v131;
      v138 = v137;
      v139 = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = sub_1B4DE53A0(0, *(v132 + 2) + 1, 1, v132);
      }

      v141 = *(v132 + 2);
      v140 = *(v132 + 3);
      if (v141 >= v140 >> 1)
      {
        v132 = sub_1B4DE53A0((v140 > 1), v141 + 1, 1, v132);
      }

      *(v132 + 2) = v141 + 1;
      *&v132[4 * v141 + 32] = v138;
      v110 = v139;
      v131 = v165;
      goto LABEL_129;
    }
  }

  v142 = v169;
  sub_1B4F66844();
  sub_1B4F67564();

  v143 = sub_1B4F66874();
  return (*(*(v143 - 8) + 8))(v142, v143);
}

uint64_t sub_1B4DE5060(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B4F407B4(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B4F68A34();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_1B4DE533C()
{
  result = qword_1EDB70028;
  if (!qword_1EDB70028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70028);
  }

  return result;
}

uint64_t sub_1B4DE5390(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

char *sub_1B4DE53A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56B0, &qword_1B4F73EE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_1B4DE54E4(char a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v13 = *(*v7 + 24);
  v14 = *(*v7 + 16);
  ObjectType = swift_getObjectType();
  v20 = a4;
  v19 = a1;
  v16 = *(v13 + 32);
  v17 = a5(0);
  return v16(&v20, &v19, MEMORY[0x1E69E6370], v17, MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], a6, a7, ObjectType, v13);
}

uint64_t sub_1B4DE55C4(char a1)
{
  v3 = *v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FD00;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 155;
  v11 = a1;
  return (*(v8 + 32))(&v12, &v11, MEMORY[0x1E69CB078], MEMORY[0x1E69E6158], MEMORY[0x1E69CB068], MEMORY[0x1E69CB070], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

uint64_t sub_1B4DE56FC(char a1)
{
  v3 = *v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FD20;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 156;
  v11 = a1;
  return (*(v8 + 32))(&v12, &v11, MEMORY[0x1E69CB078], MEMORY[0x1E69E6158], MEMORY[0x1E69CB068], MEMORY[0x1E69CB070], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v8);
}

BOOL ServiceSubscription.isSubscribed(date:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v16 - v3;
  v5 = sub_1B4F64964();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B4F66284() & 1) != 0 || (sub_1B4F66264() & 1) != 0 || (sub_1B4F66254())
  {
    return 1;
  }

  sub_1B4F66234();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B4E5ECFC(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v10, v4, v5);
    sub_1B4F648A4();
    v13 = v12;
    sub_1B4F648A4();
    v15 = v14;
    (*(v6 + 8))(v10, v5);
    return v15 < v13;
  }
}

uint64_t sub_1B4DE59E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65E64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE5A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65E64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE5ABC()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  v3 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B4DE5B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F668C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE5B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F668C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE5BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64E44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE5C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64E44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE626C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B4DE62B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66B74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66B74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE63FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE676C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE67DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66BB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66BB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE68B8()
{
  sub_1B4DE5390(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1B4DE68F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4DE69B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67194();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67194();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6A90()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DE6ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65DB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65DB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6C84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DE6CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_1B4F67674();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1B4DE6D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = sub_1B4F67674();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1B4DE6DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F65184();
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

uint64_t sub_1B4DE6E68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F65184();
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

uint64_t sub_1B4DE6F24()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DE6F5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DE6F9C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DE6FD4()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B4DE70A4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DE70E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67284();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67284();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE71C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67474();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67474();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE72A0()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v2 = sub_1B4F682C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B4DE7374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5218, &qword_1B4F71468);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE7464()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE749C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE7574()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DE75B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DE7608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66754();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66754();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7884()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4DE791C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  if (v2 >> 60 != 15)
  {
    sub_1B4DD2B70(*(v0 + 80), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B4DE7974()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  if (v2 >> 60 != 15)
  {
    sub_1B4DD2B70(*(v0 + 56), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B4DE7A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F674F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F674F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7CB8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DE7CF0()
{
  v1 = *(v0 + 4);
  v2 = *(*(v0 + 6) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 72) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v5 | 7);
}

uint64_t sub_1B4DE7DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66E84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66E84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7FA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DE7FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67524();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67524();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE80B4()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v2 = sub_1B4F682C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B4DE81A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DE81E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DE8220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66124();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE828C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66124();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE8300()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B4DE8344()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DE8384()
{
  v1 = *(v0 + 24);

  sub_1B4E6B7A8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B4DE83C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE849C()
{
  v1 = *(v0 + 32);
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B4DE8584()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE85C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66624();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE862C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66624();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F65274();
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

uint64_t sub_1B4DE875C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F65274();
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

uint64_t sub_1B4DE8818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66F74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8884(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66F74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE88F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F65854();
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

uint64_t sub_1B4DE89B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F65854();
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

uint64_t sub_1B4DE8A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64B34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64B34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_1B4DE8CB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 16);
  v7 = *(v4 - 8);
  v8 = type metadata accessor for TestProperty();
  return TestProperty.wrappedValue.getter(v8, a3);
}

__n128 sub_1B4DE8D04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B4DE8D18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE8D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67104();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67104();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE8E34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE8E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE8F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE902C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F673D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE9098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F673D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F64E14();
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

uint64_t sub_1B4DE91C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F64E14();
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

uint64_t sub_1B4DE94C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE952C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE959C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE9608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE96E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65D04();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE97C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65D04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66AC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE989C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66AC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65AD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE9978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65AD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE99E8()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B4DE9A20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DE9A58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE9A90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4DE9B40()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v2 = sub_1B4F682C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B4DE9BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F65B84();
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

uint64_t sub_1B4DE9CB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F65B84();
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

uint64_t sub_1B4DE9D7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE9DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F649A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE9E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F649A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9FC0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DEA000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA1B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66464();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66464();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA370(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4DEA388()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEA3C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEA3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F679A4();
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

uint64_t sub_1B4DEA4BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F679A4();
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

uint64_t sub_1B4DEA578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA834()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEA86C()
{
  v1 = sub_1B4F678C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DEA934()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEA97C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1B4DEAA14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B4F66AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B4DEAB54()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DEAB90()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEABCC()
{
  v1 = *(v0 + 16);
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v6));
  if (*(v0 + v7))
  {
    v8 = *(v0 + v7 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1B4DEACD4()
{
  v1 = *(v0 + 16);
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v6));

  if (*(v0 + v8))
  {
    v9 = *(v0 + v8 + 8);
  }

  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 16, v4 | 7);
}

uint64_t sub_1B4DEADC4()
{
  v1 = *(v0 + 16);
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  if (*(v0 + v6))
  {
    v7 = *(v0 + v6 + 8);
  }

  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v8));

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v4 | 7);
}

uint64_t sub_1B4DEAE98()
{
  v1 = *(v0 + 16);
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  if (*(v0 + 32))
  {
    v6 = *(v0 + 40);
  }

  v7 = (v4 + 112) & ~v4;
  v8 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  (*(v3 + 8))(v0 + v7, v2);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v5, v4 | 7);
}

uint64_t sub_1B4DEAF80()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEAFB8()
{
  v1 = *(v0 + 16);
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  v9 = *(v0 + v6);

  if (*(v0 + v8))
  {
    v10 = *(v0 + v8 + 8);
  }

  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v4 | 7);
}

uint64_t sub_1B4DEB0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB184()
{
  MEMORY[0x1B8C832C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEB1C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEB200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB2DC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEB314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66454();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66454();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6E38, &qword_1B4F7B1E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B4DEB4CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 40) = (a2 + 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6E38, &qword_1B4F7B1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B4DEB580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66964();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66964();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB66C()
{
  v1 = *(v0 + 32);
  v2 = sub_1B4F68374();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B4DEB734()
{
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DEB76C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEB7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F665B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F665B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65C34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65C34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEBA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F674B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEBAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F674B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEBCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F64B04();
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

uint64_t sub_1B4DEBD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F64B04();
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

uint64_t sub_1B4DEBE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66E54();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEBEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66E54();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEBF28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66914();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEBF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66914();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F67A34();
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

uint64_t sub_1B4DEC358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F67A34();
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

uint64_t sub_1B4DEC414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC4F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEC528()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEC570()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEC5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC6A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B4F67C54();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ActivityTracer();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B4DEC7CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B4F67C54();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ActivityTracer();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B4DECA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F64FD4();
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

uint64_t sub_1B4DECADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F64FD4();
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

uint64_t sub_1B4DECB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66014();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DECC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66014();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DECC74()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DECCAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B4DECCF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DECD2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4DECDD8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DECE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DECE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DECEFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DECF34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4DECFE0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DED020()
{
  v1 = sub_1B4F66354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DED0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66084();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66084();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65894();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65894();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED2B4()
{
  v1 = sub_1B4F64824();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 3);

  v7 = *(v0 + 6);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DED39C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DED3D4()
{
  v1 = sub_1B4F64824();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DED4B4()
{
  v1 = sub_1B4F64824();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1B4DED590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67BD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67BD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED66C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DED6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4DED72C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B4DED7B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67AF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67AF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED89C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AA4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AA4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F664E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F664E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEDA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEDAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEDB34()
{
  v1 = v0[3];

  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    sub_1B4DD2B70(v0[4], v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DEDB84()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEDBBC()
{
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B4DEDBF4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEDC2C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_1B4DD2B70(v0[10], v2);
  }

  v3 = v0[13];

  v4 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1B4DEDC8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[8];
  if (v2 >> 60 != 15)
  {
    sub_1B4DD2B70(v0[7], v2);
  }

  v3 = v0[10];

  v4 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B4DEDCEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B4DEDD34()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DEDD80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEDDB8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

Swift::Double __swiftcall ExponentialBackoffIntervalProvider.nextInterval()()
{
  if (*(v0 + 16))
  {
    v1 = *v0;
    result = *v0;
  }

  else
  {
    v1 = *v0;
    result = *(v0 + 8);
    if (*v0 < result)
    {
      result = *v0;
    }
  }

  *v0 = v1 * *(v0 + 24);
  return result;
}

void sub_1B4DEE47C()
{
  if (*(v0 + 16))
  {
    v1 = *v0;
  }

  else
  {
    v1 = *v0;
    if (*v0 < *(v0 + 8))
    {
      v2 = *v0;
    }
  }

  *v0 = v1 * *(v0 + 24);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B4DEE4CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4DEE4EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1B4DEE55C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4DEE57C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B4DEE600(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4DEE620(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1B4DEE65C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t ScoreMetric.scale(by:)()
{
  v0 = sub_1B4F65A94();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  sub_1B4F64DD4();
  sub_1B4F64DE4();
  sub_1B4F64E04();
  sub_1B4F64DB4();
  sub_1B4F66074();
  sub_1B4F64D74();
  sub_1B4F66074();
  sub_1B4F64D94();
  sub_1B4F66074();
  sub_1B4F64DA4();
  sub_1B4F66074();
  sub_1B4F64D84();
  sub_1B4F66074();
  return sub_1B4F64DC4();
}

uint64_t UserBodyMassMetric.applyingTimestampOffset(_:)()
{
  sub_1B4F66054();

  return sub_1B4F66064();
}

uint64_t sub_1B4DEE85C()
{
  sub_1B4F66054();

  return sub_1B4F66064();
}

uint64_t sub_1B4DEE8E4@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    sub_1B4F64914();
    v4 = 0;
  }

  v5 = sub_1B4F64964();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

void sub_1B4DEE984()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B4F67F64();
  v2 = [v0 stringArrayForKey_];

  if (v2)
  {
    v3 = sub_1B4F681C4();

    v4 = 0;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v7 = (v3 + 40 + 16 * v4);
    while (1)
    {
      if (v5 == v4)
      {

        sub_1B4DCF590(v6);

        return;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      ++v4;
      v8 = v7 + 2;
      v10 = *(v7 - 1);
      v9 = *v7;

      v11 = MEMORY[0x1B8C7EB80](v10, v9);
      v7 = v8;
      if (v11 != 3)
      {
        v12 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1B4E78958(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_1B4E78958((v13 > 1), v14 + 1, 1, v6);
        }

        *(v6 + 2) = v14 + 1;
        v6[v14 + 32] = v12;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    sub_1B4E2A5A8(&unk_1F2CD3D98);
  }
}

uint64_t sub_1B4DEEB60(uint64_t a1)
{
  result = MEMORY[0x1B8C81DD0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1B4E79108(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4DEEC7C(uint64_t a1)
{
  v2 = sub_1B4F66484();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v29 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v29 - v14;
  v16 = *(a1 + 16);
  v17 = sub_1B4DF30BC(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
  result = MEMORY[0x1B8C81DD0](v16, v2, v17);
  v19 = 0;
  v30 = a1;
  v31 = result;
  v22 = *(a1 + 64);
  v21 = a1 + 64;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v29[2] = v3 + 32;
  v29[3] = v3 + 16;
  v29[1] = v3 + 8;
  if ((v24 & v20) != 0)
  {
    do
    {
      v27 = v19;
LABEL_9:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v3 + 16))(v15, *(v30 + 48) + *(v3 + 72) * (v28 | (v27 << 6)), v2);
      (*(v3 + 32))(v7, v15, v2);
      sub_1B4E79258(v11, v7);
      result = (*(v3 + 8))(v11, v2);
    }

    while (v25);
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return v31;
    }

    v25 = *(v21 + 8 * v27);
    ++v19;
    if (v25)
    {
      v19 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4DEEEDC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v51 = &v41 - v6;
  v7 = sub_1B4F64E14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  v16 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v41 = v1;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1B4E257C4(0, v16, 0);
    v18 = -1 << *(a1 + 32);
    v55 = a1 + 56;
    v56 = v62;
    result = sub_1B4F688B4();
    v19 = result;
    v20 = 0;
    v48 = v8 + 8;
    v49 = v8 + 16;
    v46 = v15;
    v47 = v8 + 32;
    v42 = a1 + 64;
    v43 = v16;
    v44 = v8;
    v45 = a1;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
    {
      v22 = v19 >> 6;
      if ((*(v55 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_23;
      }

      v23 = *(a1 + 36);
      v52 = v20;
      v53 = v23;
      v24 = *(a1 + 48);
      v54 = *(v8 + 72);
      v25 = v50;
      (*(v8 + 16))(v50, v24 + v54 * v19, v7);
      sub_1B4F64DD4();
      v26 = sub_1B4F65A94();
      v27 = v51;
      (*(*(v26 - 8) + 56))(v51, 1, 1, v26);
      v61 = 1;
      v60 = 1;
      v59 = 1;
      v58 = 1;
      v57 = 1;
      sub_1B4F64DF4();
      sub_1B4DD2BC4(v27, &qword_1EB8F41B8, &qword_1B4F6A678);
      v8 = v44;
      (*(v44 + 8))(v25, v7);
      v28 = v56;
      v62 = v56;
      v29 = v45;
      v31 = *(v56 + 16);
      v30 = *(v56 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B4E257C4(v30 > 1, v31 + 1, 1);
        v28 = v62;
      }

      *(v28 + 16) = v31 + 1;
      v32 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v56 = v28;
      result = (*(v8 + 32))(v28 + v32 + v31 * v54, v46, v7);
      v21 = 1 << *(v29 + 32);
      if (v19 >= v21)
      {
        goto LABEL_24;
      }

      v33 = *(v55 + 8 * v22);
      if ((v33 & (1 << v19)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v29;
      if (v53 != *(v29 + 36))
      {
        goto LABEL_26;
      }

      v34 = v33 & (-2 << (v19 & 0x3F));
      if (v34)
      {
        v21 = __clz(__rbit64(v34)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v7;
        v36 = v22 << 6;
        v37 = v22 + 1;
        v38 = (v42 + 8 * v22);
        while (v37 < (v21 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_1B4DF3104(v19, v53, 0);
            v21 = __clz(__rbit64(v39)) + v36;
            goto LABEL_19;
          }
        }

        result = sub_1B4DF3104(v19, v53, 0);
LABEL_19:
        v7 = v35;
      }

      v20 = v52 + 1;
      v19 = v21;
      if (v52 + 1 == v43)
      {
        return v56;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t Session.applyingTimestampOffset(_:)@<X0>(uint64_t a1@<X8>)
{
  v383 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v392 = &v356 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v384 = &v356 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v382 = &v356 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v396 = &v356 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v381 = &v356 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v394 = &v356 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v380 = &v356 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v395 = &v356 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v379 = &v356 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v391 = &v356 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8, v39);
  v378 = &v356 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v385 = &v356 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8, v46);
  v377 = &v356 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v390 = &v356 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8, v53);
  v389 = &v356 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8, v57);
  v376 = &v356 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v388 = &v356 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62 - 8, v64);
  v363 = &v356 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8, v68);
  v375 = &v356 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v71);
  v412 = &v356 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73 - 8, v75);
  v374 = &v356 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77, v78);
  v411 = &v356 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80 - 8, v82);
  v410 = &v356 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  v85 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84 - 8, v86);
  v409 = &v356 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88 - 8, v90);
  v408 = &v356 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  v93 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92 - 8, v94);
  v407 = &v356 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96 - 8, v98);
  v372 = &v356 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100, v101);
  v406 = &v356 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103 - 8, v105);
  v405 = &v356 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  v108 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107 - 8, v109);
  v371 = &v356 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111, v112);
  v404 = &v356 - v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  v115 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114 - 8, v116);
  v370 = &v356 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v118, v119);
  v403 = &v356 - v120;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  v122 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121 - 8, v123);
  v369 = &v356 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v125, v126);
  v128 = &v356 - v127;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  v130 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129 - 8, v131);
  v362 = &v356 - v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  v134 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133 - 8, v135);
  v361 = &v356 - v136;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  v138 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137 - 8, v139);
  v360 = &v356 - v140;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  v142 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141 - 8, v143);
  v368 = &v356 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v145, v146);
  v401 = &v356 - v147;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  v149 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148 - 8, v150);
  v367 = &v356 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v152, v153);
  v400 = &v356 - v154;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  v156 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155 - 8, v157);
  v387 = &v356 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v159, v160);
  v399 = &v356 - v161;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  v163 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162 - 8, v164);
  v366 = &v356 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v166, v167);
  v169 = &v356 - v168;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  v171 = *(*(v170 - 8) + 64);
  MEMORY[0x1EEE9AC00](v170 - 8, v172);
  v365 = &v356 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v174, v175);
  v177 = &v356 - v176;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  v179 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178 - 8, v180);
  v364 = &v356 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v182, v183);
  v397 = &v356 - v184;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4148, &qword_1B4F6A648);
  v186 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185 - 8, v187);
  v359 = &v356 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v189, v190);
  v358 = &v356 - v191;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4150, &qword_1B4F6A650);
  v193 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192 - 8, v194);
  v196 = &v356 - v195;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  v198 = *(*(v197 - 8) + 64);
  MEMORY[0x1EEE9AC00](v197 - 8, v199);
  v201 = &v356 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v202, v203);
  v205 = &v356 - v204;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4158, &qword_1B4F6A658);
  v207 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206 - 8, v208);
  v210 = &v356 - v209;
  v211 = sub_1B4F67704();
  v373 = sub_1B4DEEEDC(v211);

  v212 = sub_1B4F65804();
  v213 = *(*(v212 - 8) + 56);
  v386 = v210;
  v213(v210, 1, 1, v212);
  v413 = v1;
  sub_1B4F67714();
  v214 = sub_1B4F65184();
  v215 = *(v214 - 8);
  v216 = (*(v215 + 48))(v201, 1, v214);
  v402 = v128;
  v398 = v177;
  v393 = v205;
  if (v216 == 1)
  {
    v217 = v169;
    sub_1B4DD2BC4(v201, &qword_1EB8F7050, &qword_1B4F71500);
    v218 = 1;
  }

  else
  {
    v219 = sub_1B4F65CA4();
    v220 = *(*(v219 - 8) + 56);
    v357 = v196;
    v220(v196, 1, 1, v219);
    v221 = sub_1B4F64EF4();
    v222 = *(*(v221 - 8) + 56);
    v217 = v169;
    v223 = v358;
    v222(v358, 1, 1, v221);
    v224 = v359;
    v222(v359, 1, 1, v221);
    v205 = v393;
    sub_1B4F65134();
    v225 = v357;
    sub_1B4F65174();
    sub_1B4DD2BC4(v224, &qword_1EB8F4148, &qword_1B4F6A648);
    sub_1B4DD2BC4(v223, &qword_1EB8F4148, &qword_1B4F6A648);
    sub_1B4DD2BC4(v225, &qword_1EB8F4150, &qword_1B4F6A650);
    (*(v215 + 8))(v201, v214);
    v218 = 0;
  }

  (*(v215 + 56))(v205, v218, 1, v214);
  v226 = v364;
  sub_1B4F677F4();
  v227 = sub_1B4F663B4();
  v228 = *(v227 - 8);
  v229 = (*(v228 + 48))(v226, 1, v227);
  v230 = v370;
  if (v229 == 1)
  {
    sub_1B4DD2BC4(v226, &qword_1EB8F4140, qword_1B4F789A0);
    v231 = 1;
    v232 = v400;
    v233 = v397;
  }

  else
  {
    sub_1B4F66394();
    v233 = v397;
    sub_1B4F663A4();
    (*(v228 + 8))(v226, v227);
    v231 = 0;
    v232 = v400;
  }

  v234 = v217;
  (*(v228 + 56))(v233, v231, 1, v227);
  v235 = v365;
  sub_1B4F67814();
  v236 = sub_1B4F66754();
  v237 = *(v236 - 8);
  v238 = (*(v237 + 48))(v235, 1, v236);
  v239 = v398;
  if (v238 == 1)
  {
    sub_1B4DD2BC4(v235, &qword_1EB8F4138, &qword_1B4F6A640);
    v240 = 1;
  }

  else
  {
    sub_1B4F66714();
    sub_1B4F66744();
    (*(v237 + 8))(v235, v236);
    v240 = 0;
  }

  (*(v237 + 56))(v239, v240, 1, v236);
  v241 = v366;
  sub_1B4F67724();
  v242 = sub_1B4F65274();
  v243 = *(v242 - 8);
  v244 = (*(v243 + 48))(v241, 1, v242);
  v245 = v375;
  if (v244 == 1)
  {
    sub_1B4DD2BC4(v241, &qword_1EB8F4130, &unk_1B4F78990);
    v246 = 1;
  }

  else
  {
    sub_1B4F65254();
    sub_1B4F65264();
    (*(v243 + 8))(v241, v242);
    v246 = 0;
  }

  v247 = v387;
  v248 = *(v243 + 56);
  v387 = v234;
  v248(v234, v246, 1, v242);
  sub_1B4F678B4();
  v249 = sub_1B4F67AF4();
  v250 = *(v249 - 8);
  if ((*(v250 + 48))(v247, 1, v249) == 1)
  {
    sub_1B4DD2BC4(v247, &qword_1EB8F4128, &qword_1B4F6A638);
    v251 = 1;
    v252 = v399;
  }

  else
  {
    sub_1B4F67AD4();
    v252 = v399;
    sub_1B4F67AE4();
    (*(v250 + 8))(v247, v249);
    v251 = 0;
  }

  (*(v250 + 56))(v252, v251, 1, v249);
  v253 = v367;
  sub_1B4F67774();
  v254 = sub_1B4F65AD4();
  v255 = *(v254 - 8);
  if ((*(v255 + 48))(v253, 1, v254) == 1)
  {
    sub_1B4DD2BC4(v253, &qword_1EB8F4120, &unk_1B4F78980);
    v256 = 1;
  }

  else
  {
    sub_1B4F65AB4();
    sub_1B4F65AC4();
    (*(v255 + 8))(v253, v254);
    v256 = 0;
  }

  v257 = v378;
  (*(v255 + 56))(v232, v256, 1, v254);
  v258 = v368;
  sub_1B4F677D4();
  v259 = sub_1B4F66014();
  v260 = *(v259 - 8);
  if ((*(v260 + 48))(v258, 1, v259) == 1)
  {
    sub_1B4DD2BC4(v258, &qword_1EB8F4118, &qword_1B4F6A630);
    v261 = 1;
    v262 = v401;
  }

  else
  {
    v263 = sub_1B4F669F4();
    v264 = v230;
    v265 = v257;
    v266 = v360;
    (*(*(v263 - 8) + 56))(v360, 1, 1, v263);
    v267 = sub_1B4F66A54();
    v268 = v245;
    v269 = v361;
    (*(*(v267 - 8) + 56))(v361, 1, 1, v267);
    v270 = sub_1B4F66BA4();
    v271 = v362;
    (*(*(v270 - 8) + 56))(v362, 1, 1, v270);
    v272 = v258;
    sub_1B4F65FF4();
    v262 = v401;
    sub_1B4F66004();
    sub_1B4DD2BC4(v271, &qword_1EB8F4100, &qword_1B4F6A618);
    v273 = v269;
    v245 = v268;
    sub_1B4DD2BC4(v273, &qword_1EB8F4108, &qword_1B4F6A620);
    v274 = v266;
    v257 = v265;
    v230 = v264;
    sub_1B4DD2BC4(v274, &qword_1EB8F4110, &qword_1B4F6A628);
    (*(v260 + 8))(v272, v259);
    v261 = 0;
  }

  v275 = v371;
  (*(v260 + 56))(v262, v261, 1, v259);
  v276 = v369;
  sub_1B4F67744();
  v277 = sub_1B4F65854();
  v278 = *(v277 - 8);
  if ((*(v278 + 48))(v276, 1, v277) == 1)
  {
    sub_1B4DD2BC4(v276, &qword_1EB8F40F8, &unk_1B4F78970);
    v279 = 1;
    v280 = v377;
    v281 = v402;
  }

  else
  {
    sub_1B4F65814();
    v281 = v402;
    sub_1B4F65844();
    (*(v278 + 8))(v276, v277);
    v279 = 0;
    v280 = v377;
  }

  (*(v278 + 56))(v281, v279, 1, v277);
  sub_1B4F676F4();
  v282 = sub_1B4F64FD4();
  v283 = *(v282 - 8);
  if ((*(v283 + 48))(v230, 1, v282) == 1)
  {
    sub_1B4DD2BC4(v230, &qword_1EB8F72D0, &qword_1B4F6A610);
    v284 = 1;
    v285 = v403;
  }

  else
  {
    sub_1B4F64F94();
    v285 = v403;
    sub_1B4F64FC4();
    (*(v283 + 8))(v230, v282);
    v284 = 0;
  }

  v286 = v411;
  (*(v283 + 56))(v285, v284, 1, v282);
  sub_1B4F677B4();
  v287 = sub_1B4F65D04();
  v288 = *(v287 - 8);
  if ((*(v288 + 48))(v275, 1, v287) == 1)
  {
    sub_1B4DD2BC4(v275, &qword_1EB8F40F0, &unk_1B4F78960);
    v289 = 1;
    v290 = v404;
  }

  else
  {
    sub_1B4F65CE4();
    v290 = v404;
    sub_1B4F65CF4();
    (*(v288 + 8))(v275, v287);
    v289 = 0;
  }

  (*(v288 + 56))(v290, v289, 1, v287);
  v291 = sub_1B4F66B74();
  (*(*(v291 - 8) + 56))(v405, 1, 1, v291);
  v292 = v372;
  sub_1B4F67784();
  v293 = sub_1B4F65B84();
  v294 = *(v293 - 8);
  if ((*(v294 + 48))(v292, 1, v293) == 1)
  {
    sub_1B4DD2BC4(v292, &qword_1EB8F40E0, &unk_1B4F78950);
    v295 = 1;
    v296 = v406;
  }

  else
  {
    sub_1B4F65B64();
    v296 = v406;
    sub_1B4F65B74();
    (*(v294 + 8))(v292, v293);
    v295 = 0;
  }

  v297 = v379;
  (*(v294 + 56))(v296, v295, 1, v293);
  v298 = sub_1B4F64AA4();
  (*(*(v298 - 8) + 56))(v407, 1, 1, v298);
  v299 = sub_1B4F66454();
  (*(*(v299 - 8) + 56))(v408, 1, 1, v299);
  v300 = sub_1B4F65DB4();
  (*(*(v300 - 8) + 56))(v409, 1, 1, v300);
  v301 = sub_1B4F66E84();
  (*(*(v301 - 8) + 56))(v410, 1, 1, v301);
  v302 = v374;
  sub_1B4F676D4();
  v303 = sub_1B4F64B04();
  v304 = *(v303 - 8);
  if ((*(v304 + 48))(v302, 1, v303) == 1)
  {
    sub_1B4DD2BC4(v302, &qword_1EB8F40B8, &qword_1B4F6A5F0);
    v305 = 1;
  }

  else
  {
    sub_1B4F64AE4();
    sub_1B4F64AF4();
    (*(v304 + 8))(v302, v303);
    v305 = 0;
  }

  v306 = v390;
  (*(v304 + 56))(v286, v305, 1, v303);
  sub_1B4F678A4();
  v307 = sub_1B4F67A34();
  v308 = *(v307 - 8);
  if ((*(v308 + 48))(v245, 1, v307) == 1)
  {
    sub_1B4DD2BC4(v245, &qword_1EB8F40B0, &unk_1B4F78920);
    v309 = 1;
    v310 = v412;
  }

  else
  {
    v311 = v245;
    sub_1B4F67A04();
    v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
    v313 = v363;
    (*(*(v312 - 8) + 56))(v363, 1, 1, v312);
    v310 = v412;
    sub_1B4F67A24();
    sub_1B4DD2BC4(v313, &qword_1EB8F40A8, &qword_1B4F6A5E8);
    (*(v308 + 8))(v311, v307);
    v309 = 0;
  }

  v314 = v385;
  v315 = v388;
  (*(v308 + 56))(v310, v309, 1, v307);
  v316 = v376;
  sub_1B4F67754();
  v317 = sub_1B4F65894();
  v318 = *(v317 - 8);
  if ((*(v318 + 48))(v316, 1, v317) == 1)
  {
    sub_1B4DD2BC4(v316, &qword_1EB8F40A0, &qword_1B4F6A5E0);
    v319 = 1;
  }

  else
  {
    sub_1B4F65874();
    sub_1B4F65884();
    (*(v318 + 8))(v316, v317);
    v319 = 0;
  }

  v320 = v380;
  (*(v318 + 56))(v315, v319, 1, v317);
  v321 = sub_1B4F65BC4();
  (*(*(v321 - 8) + 56))(v389, 1, 1, v321);
  sub_1B4F67834();
  v322 = sub_1B4F66914();
  v323 = *(v322 - 8);
  if ((*(v323 + 48))(v280, 1, v322) == 1)
  {
    sub_1B4DD2BC4(v280, &qword_1EB8F4090, &qword_1B4F6A5D8);
    v324 = 1;
  }

  else
  {
    sub_1B4F668F4();
    sub_1B4F66904();
    (*(v323 + 8))(v280, v322);
    v324 = 0;
  }

  v325 = v382;
  (*(v323 + 56))(v306, v324, 1, v322);
  v382 = sub_1B4DF206C(v373);

  sub_1B4F676E4();
  v326 = sub_1B4F64E44();
  v327 = *(v326 - 8);
  if ((*(v327 + 48))(v257, 1, v326) == 1)
  {
    sub_1B4DD2BC4(v257, &qword_1EB8F4088, &qword_1B4F6A5D0);
    v328 = 1;
  }

  else
  {
    sub_1B4F64E24();
    sub_1B4F64E34();
    (*(v327 + 8))(v257, v326);
    v328 = 0;
  }

  (*(v327 + 56))(v314, v328, 1, v326);
  sub_1B4F677A4();
  v329 = sub_1B4F65C34();
  v330 = *(v329 - 8);
  if ((*(v330 + 48))(v297, 1, v329) == 1)
  {
    sub_1B4DD2BC4(v297, &qword_1EB8F4080, &unk_1B4F788F0);
    v331 = 1;
    v332 = v391;
  }

  else
  {
    sub_1B4F65C14();
    v332 = v391;
    sub_1B4F65C24();
    (*(v330 + 8))(v297, v329);
    v331 = 0;
  }

  (*(v330 + 56))(v332, v331, 1, v329);
  sub_1B4F67764();
  v333 = sub_1B4F66084();
  v334 = *(v333 - 8);
  if ((*(v334 + 48))(v320, 1, v333) == 1)
  {
    sub_1B4DD2BC4(v320, &qword_1EB8F4078, &qword_1B4F6A5C8);
    v335 = 1;
  }

  else
  {
    sub_1B4F66054();
    sub_1B4F66064();
    (*(v334 + 8))(v320, v333);
    v335 = 0;
  }

  (*(v334 + 56))(v395, v335, 1, v333);
  v336 = v381;
  sub_1B4F67854();
  v337 = sub_1B4F66AC4();
  v338 = *(v337 - 8);
  if ((*(v338 + 48))(v336, 1, v337) == 1)
  {
    sub_1B4DD2BC4(v336, &qword_1EB8F4070, &unk_1B4F788E0);
    v339 = 1;
  }

  else
  {
    sub_1B4F66AA4();
    sub_1B4F66AB4();
    (*(v338 + 8))(v336, v337);
    v339 = 0;
  }

  (*(v338 + 56))(v394, v339, 1, v337);
  sub_1B4F67884();
  v340 = sub_1B4F679A4();
  v341 = *(v340 - 8);
  if ((*(v341 + 48))(v325, 1, v340) == 1)
  {
    sub_1B4DD2BC4(v325, &qword_1EB8F4068, &qword_1B4F6A5C0);
    v342 = 1;
  }

  else
  {
    sub_1B4F67974();
    sub_1B4F67994();
    (*(v341 + 8))(v325, v340);
    v342 = 0;
  }

  (*(v341 + 56))(v396, v342, 1, v340);
  sub_1B4F67844();
  v343 = v392;
  v344 = sub_1B4F66964();
  v345 = *(v344 - 8);
  if ((*(v345 + 48))(v343, 1, v344) == 1)
  {
    sub_1B4DD2BC4(v343, &qword_1EB8F4060, &unk_1B4F788D0);
    v346 = 1;
  }

  else
  {
    sub_1B4F66944();
    sub_1B4F66954();
    (*(v345 + 8))(v343, v344);
    v346 = 0;
  }

  v347 = v384;
  (*(v345 + 56))(v384, v346, 1, v344);
  v348 = v396;
  v349 = v394;
  v350 = v395;
  v351 = v391;
  v352 = v390;
  v353 = v389;
  v354 = v388;
  sub_1B4F67894();

  sub_1B4DD2BC4(v347, &qword_1EB8F4060, &unk_1B4F788D0);
  sub_1B4DD2BC4(v348, &qword_1EB8F4068, &qword_1B4F6A5C0);
  sub_1B4DD2BC4(v349, &qword_1EB8F4070, &unk_1B4F788E0);
  sub_1B4DD2BC4(v350, &qword_1EB8F4078, &qword_1B4F6A5C8);
  sub_1B4DD2BC4(v351, &qword_1EB8F4080, &unk_1B4F788F0);
  sub_1B4DD2BC4(v385, &qword_1EB8F4088, &qword_1B4F6A5D0);
  sub_1B4DD2BC4(v352, &qword_1EB8F4090, &qword_1B4F6A5D8);
  sub_1B4DD2BC4(v353, &qword_1EB8F4098, &unk_1B4F78910);
  sub_1B4DD2BC4(v354, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  sub_1B4DD2BC4(v412, &qword_1EB8F40B0, &unk_1B4F78920);
  sub_1B4DD2BC4(v411, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  sub_1B4DD2BC4(v410, &qword_1EB8F40C0, &unk_1B4F78930);
  sub_1B4DD2BC4(v409, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  sub_1B4DD2BC4(v408, &qword_1EB8F40D0, &unk_1B4F78940);
  sub_1B4DD2BC4(v407, &qword_1EB8F40D8, &qword_1B4F6A600);
  sub_1B4DD2BC4(v406, &qword_1EB8F40E0, &unk_1B4F78950);
  sub_1B4DD2BC4(v405, &qword_1EB8F40E8, &qword_1B4F6A608);
  sub_1B4DD2BC4(v404, &qword_1EB8F40F0, &unk_1B4F78960);
  sub_1B4DD2BC4(v403, &qword_1EB8F72D0, &qword_1B4F6A610);
  sub_1B4DD2BC4(v402, &qword_1EB8F40F8, &unk_1B4F78970);
  sub_1B4DD2BC4(v401, &qword_1EB8F4118, &qword_1B4F6A630);
  sub_1B4DD2BC4(v400, &qword_1EB8F4120, &unk_1B4F78980);
  sub_1B4DD2BC4(v399, &qword_1EB8F4128, &qword_1B4F6A638);
  sub_1B4DD2BC4(v387, &qword_1EB8F4130, &unk_1B4F78990);
  sub_1B4DD2BC4(v398, &qword_1EB8F4138, &qword_1B4F6A640);
  sub_1B4DD2BC4(v397, &qword_1EB8F4140, qword_1B4F789A0);
  sub_1B4DD2BC4(v393, &qword_1EB8F7050, &qword_1B4F71500);
  return sub_1B4DD2BC4(v386, &qword_1EB8F4158, &qword_1B4F6A658);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B4DF206C(uint64_t a1)
{
  v2 = sub_1B4F64E14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F41B0, MEMORY[0x1E69CB098]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E78E28(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF2208(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C81DD0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B4E79108(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4DF22A0(uint64_t a1)
{
  v2 = sub_1B4F67244();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F4178, MEMORY[0x1E69CCF40]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E7B8B0(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF243C(uint64_t a1)
{
  v2 = sub_1B4F67A94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E7B010(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF25D8(uint64_t a1)
{
  v2 = sub_1B4F65E04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F4190, MEMORY[0x1E69CB850]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E7AA50(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF2774(uint64_t a1)
{
  v2 = sub_1B4F65DE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F4188, MEMORY[0x1E69CB800]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E79BF0(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF2910(uint64_t a1)
{
  v2 = sub_1B4F660C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F4198, MEMORY[0x1E69CBE40]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E79910(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF2AAC(uint64_t a1)
{
  v2 = sub_1B4F670C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E79630(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF2C48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B4DF3068();
  result = MEMORY[0x1B8C81DD0](v2, MEMORY[0x1E69CB078], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4E7BE70(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4DF2CBC(uint64_t a1)
{
  v2 = sub_1B4F64F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F4170, MEMORY[0x1E69CB178]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E7C238(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF2E58(uint64_t a1)
{
  v2 = sub_1B4F67004();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1B4DF30BC(&qword_1EB8F4168, MEMORY[0x1E69CCCE0]);
  result = MEMORY[0x1B8C81DD0](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v7, v18, v2);
      sub_1B4E7C758(v11, v7);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1B4DF2FF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C81DD0](v2, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1B4E7CA38(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1B4DF3068()
{
  result = qword_1EDB700D0;
  if (!qword_1EDB700D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB700D0);
  }

  return result;
}

uint64_t sub_1B4DF30BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4DF3104(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t DisplayPreferences.applyingTimestampOffset(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = sub_1B4F669F4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_1B4F66A54();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = sub_1B4F66BA4();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_1B4F65FF4();
  sub_1B4F66004();
  sub_1B4DD2BC4(v4, &qword_1EB8F4100, &qword_1B4F6A618);
  sub_1B4DD2BC4(v9, &qword_1EB8F4108, &qword_1B4F6A620);
  return sub_1B4DD2BC4(v14, &qword_1EB8F4110, &qword_1B4F6A628);
}

uint64_t sub_1B4DF3370()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = sub_1B4F669F4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_1B4F66A54();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = sub_1B4F66BA4();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_1B4F65FF4();
  sub_1B4F66004();
  sub_1B4DD2BC4(v4, &qword_1EB8F4100, &qword_1B4F6A618);
  sub_1B4DD2BC4(v9, &qword_1EB8F4108, &qword_1B4F6A620);
  return sub_1B4DD2BC4(v14, &qword_1EB8F4110, &qword_1B4F6A628);
}

uint64_t BookmarksUpdated.changeset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65E64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BookmarksUpdated.init(changeset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65E64();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for BookmarksUpdated()
{
  result = qword_1EDB70D48;
  if (!qword_1EDB70D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4DF3728()
{
  result = sub_1B4F65E64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t XPCStreamHandler.init(publisher:streams:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4DC933C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

Swift::Void __swiftcall XPCStreamHandler.activate()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1B4DC9B7C();
    v5 = (v2 + 56);
    v25 = v1;
    do
    {
      v27 = v3;
      v11 = *(v5 - 3);
      v12 = *(v5 - 2);
      v13 = *(v5 - 1);
      v14 = *v5;
      v15 = qword_1EDB724A8;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_1B4F67C54();
      __swift_project_value_buffer(v16, qword_1EDB72490);

      v17 = sub_1B4F67C34();
      v18 = sub_1B4F685E4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v26 = v13;
        v20 = swift_slowAlloc();
        *&v29[0] = v20;
        *v19 = 136446210;

        v21 = v4;
        v22 = sub_1B4DC4F88(v11, v12, v29);

        *(v19 + 4) = v22;
        v4 = v21;
        _os_log_impl(&dword_1B4DC2000, v17, v18, "Registering xpc stream handler: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        v23 = v20;
        v13 = v26;
        MEMORY[0x1B8C831D0](v23, -1, -1);
        v24 = v19;
        v1 = v25;
        MEMORY[0x1B8C831D0](v24, -1, -1);
      }

      v5 += 4;
      v6 = sub_1B4F68654();
      sub_1B4DF3F50(v1, v29);
      v7 = swift_allocObject();
      *(v7 + 16) = v11;
      *(v7 + 24) = v12;
      *(v7 + 32) = v13;
      *(v7 + 40) = v14;
      v8 = v29[1];
      *(v7 + 48) = v29[0];
      *(v7 + 64) = v8;
      *(v7 + 80) = v29[2];
      aBlock[4] = sub_1B4DF3F88;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B4DF3EF0;
      aBlock[3] = &block_descriptor;
      v9 = _Block_copy(aBlock);

      v10 = sub_1B4F67FB4();
      xpc_set_event_stream_handler((v10 + 32), v6, v9);

      _Block_release(v9);

      v3 = v27 - 1;
    }

    while (v27 != 1);
  }
}

void sub_1B4DF3ACC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB72490);

  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1B4DC4F88(a2, a3, &v33);
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Handling xpc stream event: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B8C831D0](v15, -1, -1);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E40]))
  {
    v16 = sub_1B4F68024();
    v18 = v17;
    v19 = sub_1B4F67C34();
    v20 = sub_1B4F685E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1B4DC4F88(v16, v18, &v33);
      _os_log_impl(&dword_1B4DC2000, v19, v20, "Publishing stream event: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1B8C831D0](v22, -1, -1);
      MEMORY[0x1B8C831D0](v21, -1, -1);
    }

    v23 = a6[3];
    v24 = a6[4];
    __swift_project_boxed_opaque_existential_1(a6, v23);
    (*(v24 + 8))(v16, v18, v23, v24);
  }

  if (a5 && (v25 = sub_1B4F67FB4(), v26 = xpc_dictionary_get_BOOL(a1, (v25 + 32)), , v26))
  {
    if (xpc_dictionary_create_reply(a1))
    {
      v27 = sub_1B4F67C34();
      v28 = sub_1B4F685E4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B4DC2000, v27, v28, "Sending xpc stream reply", v29, 2u);
        MEMORY[0x1B8C831D0](v29, -1, -1);
      }

      xpc_dictionary_send_reply();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_1B4F67C34();
    v30 = sub_1B4F685E4();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B4DC2000, oslog, v30, "No reply required", v31, 2u);
      MEMORY[0x1B8C831D0](v31, -1, -1);
    }
  }
}

uint64_t sub_1B4DF3EF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

char *sub_1B4DF3F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41C0, &qword_1B4F6A728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B4DF408C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4DF40D4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t NoticePrivacyPreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F668C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NoticePrivacyPreferenceUpdated.init(preference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F668C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for NoticePrivacyPreferenceUpdated()
{
  result = qword_1EDB716B8;
  if (!qword_1EDB716B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EngagementBannerRuleInfo.contextProperties.getter()
{
  v0 = sub_1B4F66A14();

  return sub_1B4DEEB60(v0);
}

double EngagementBannerRuleInfo.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1B4F66A14();
  if (*(v6 + 16) && (v7 = sub_1B4DF4344(a1, a2), (v8 & 1) != 0))
  {
    sub_1B4DC4F2C(*(v6 + 56) + 32 * v7, a3);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1B4DF4344(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B4F68E84();
  sub_1B4F67FE4();
  v6 = sub_1B4F68EC4();

  return sub_1B4DF44C8(a1, a2, v6);
}

unint64_t sub_1B4DF43BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B4F66484();
  sub_1B4DF4968(&qword_1EB8F41A8);
  v5 = sub_1B4F67F14();

  return sub_1B4DF4580(a1, v5);
}

unint64_t sub_1B4DF4440(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B4F68934();

  return sub_1B4DF472C(a1, v5);
}

unint64_t sub_1B4DF4484(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B4F68754();

  return sub_1B4DF48A4(a1, v5);
}

unint64_t sub_1B4DF44C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B4F68D54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B4DF4580(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1B4F66484();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    do
    {
      v14(v10, *(v23 + 48) + v17 * v12, v4, v8);
      sub_1B4DF4968(&qword_1EB8F41C8);
      v18 = sub_1B4F67F54();
      (*(v15 - 8))(v10, v4);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1B4DF472C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B4DF47F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8C821F0](v9, a1);
      sub_1B4DF4850(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B4DF48A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B4DE1044();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B4F68764();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1B4DF4968(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4F66484();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MachTimer.State.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF4A38()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

double sub_1B4DF4A80()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + 16);
  if (*(v0 + 40) == 1)
  {
    sub_1B4F684B4();
    v3 = v3 + v4 - *(v0 + 24);
  }

  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t MachTimer.__allocating_init(state:)(char *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  *(v2 + 16) = 0;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  sub_1B4F684B4();
  *(v2 + 24) = v6;
  return v2;
}

uint64_t sub_1B4DF4B7C(char *a1)
{
  v2 = *a1;
  os_unfair_lock_assert_owner(*(*(v1 + 32) + 16));
  result = sub_1B4F684B4();
  if (*(v1 + 40) == 1)
  {
    *(v1 + 16) = *(v1 + 16) + v4 - *(v1 + 24);
  }

  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1B4DF4BE0(char a1)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v6 = a1;
  sub_1B4DF4B7C(&v6);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t MachTimer.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

unint64_t sub_1B4DF4C74()
{
  result = qword_1EB8F41D0;
  if (!qword_1EB8F41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F41D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MachTimer.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MachTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4DF4FE4()
{
  result = qword_1EDB70C48;
  if (!qword_1EDB70C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70C48);
  }

  return result;
}

uint64_t sub_1B4DF5038()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F6BCA0[v1]);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF50C0()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F6BCA0[v1]);
  return sub_1B4F68EC4();
}

uint64_t getEnumTagSinglePayload for TransportRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 4 < 0xFE9)
  {
    goto LABEL_17;
  }

  if (a2 + 368 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 368 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 368;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 368;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 368;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x171;
  v8 = v6 - 369;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TransportRequest(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 368 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 368 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 4 >= 0xFE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 4 > 0xFE8)
  {
    v6 = ((a2 - 65168) >> 16) + 1;
    *result = a2 + 368;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 368;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_1B4DF5280()
{
  result = qword_1EB8F41D8;
  if (!qword_1EB8F41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F41D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BagConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BagConstants(_WORD *result, int a2, int a3)
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