uint64_t sub_22CE40978(void *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v9 = *(v4 + *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_22CE40A60(a4, a2, a3);
  return sub_22CE85CE4();
}

uint64_t sub_22CE40A60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CE40B00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_22CE85FE4();
  return v7;
}

uint64_t sub_22CE40B6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF078, &qword_22CE88D30);
  sub_22CE85FE4();
  result = v17;
  v3 = MEMORY[0x277D84FA0];
  v18 = MEMORY[0x277D84FA0];
  v4 = *(v17 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v17 + 96);
    v15 = *(v17 + 16);
    v16 = v17;
    while (v5 < *(result + 16))
    {
      v7 = *v6 | (*(v6 + 2) << 16);
      if ((~v7 & 0x810000) == 0)
      {
        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v11 = *(v6 - 4);
        v10 = *(v6 - 3);
        v13 = *(v6 - 6);
        v12 = *(v6 - 5);
        v14 = *(v6 - 7);

        sub_22CE449A4(v13, v12, v11, v10, v9, v8, v7);

        sub_22CE82A9C(&v17, v13, v12);

        sub_22CE62988(v13, v12, v11, v10, v9, v8, v7);
        v4 = v15;
        result = v16;
      }

      ++v5;
      v6 += 36;
      if (v4 == v5)
      {
        v3 = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    return v3;
  }

  return result;
}

uint64_t sub_22CE40D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22CE40D8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22CE40D28(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *a2 = (*(v4 + 40))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_22CE40EB0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22CE40F80(*(v1 + 16), 0);
  v4 = sub_22CE41080(&v6, v3 + 32, v2, v1);

  sub_22CE412C8();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_22CE40F80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD8, &qword_22CE86D38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_22CE41080(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 16);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x44uLL);
      if (v14 == v10)
      {
        sub_22CE41214(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_22CE41214(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22CE412F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CE41348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CE413CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22CE40D28(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  *a2 = (*(v4 + 8))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

size_t sub_22CE414B4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22CE415BC(*(v1 + 16), 0);
  v4 = *(type metadata accessor for PushToken() - 8);
  v5 = sub_22CE416B8(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);

  sub_22CE412C8();
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

size_t sub_22CE415BC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECE8, &qword_22CE86D48);
  v4 = *(type metadata accessor for PushToken() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE416B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *(type metadata accessor for PushToken() - 8);
  v8 = *(v33 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_22CE41958(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for PushToken);
      v24 = v23;
      v25 = v31;
      sub_22CE419C0(v24, v31, type metadata accessor for PushToken);
      sub_22CE419C0(v25, a2, type metadata accessor for PushToken);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PushToken()
{
  result = qword_281445658;
  if (!qword_281445658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CE41958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE419C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE41A3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22CE41B00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t PushToken.token.getter()
{
  v1 = *v0;
  sub_22CE41BF0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_22CE41BF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22CE41C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_22CE41CAC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!a1)
    {
      v3 = [*(result + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) currentSession];
      if (!v3)
      {
LABEL_10:
        sub_22CE41DF8(v3);
      }

      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v4 = sub_22CE85C84();
      __swift_project_value_buffer(v4, qword_281445368);
      v5 = sub_22CE85C74();
      v6 = sub_22CE85FA4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_22CE3F000, v5, v6, "Device activity state is inactive but there is an active CarPlay session, should handle activity changes.", v7, 2u);
        MEMORY[0x2318C20D0](v7, -1, -1);
      }
    }

    LOBYTE(v3) = 1;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_22CE41DF8(char a1)
{
  v2 = v1;
  v4 = sub_22CE85974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22CE85D44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 32);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_22CE85D54();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (qword_281445360 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_22CE85C84();
  __swift_project_value_buffer(v16, qword_281445368);
  v17 = sub_22CE85C74();
  v18 = sub_22CE85FA4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = a1 & 1;
    _os_log_impl(&dword_22CE3F000, v17, v18, "Device activity state may have changed to %{BOOL,public}d", v19, 8u);
    MEMORY[0x2318C20D0](v19, -1, -1);
  }

  swift_beginAccess();
  sub_22CE422C0(v2 + 88, &v30);
  if (*(&v31 + 1))
  {
    sub_22CE40D28(&v30, v29);
    sub_22CE42330(&v30, &unk_27D9EEF30, &unk_22CE87948);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_22CE85C94();
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_22CE42330(&v30, &unk_27D9EEF30, &unk_22CE87948);
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  swift_beginAccess();
  sub_22CE423C0(&v30, v2 + 88);
  result = swift_endAccess();
  if (a1)
  {
    sub_22CE85954();
    v21 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
    swift_beginAccess();
    (*(v5 + 40))(v2 + v21, v8, v4);
    result = swift_endAccess();
    if ((*(v2 + 80) & 1) == 0)
    {
      v22 = sub_22CE85C74();
      v23 = sub_22CE85FA4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_22CE3F000, v22, v23, "Device is active; publishing budget level change event", v24, 2u);
        MEMORY[0x2318C20D0](v24, -1, -1);
      }

      *(v2 + 80) = 1;
      v25 = *(v2 + 24);
      LOBYTE(v30) = 1;
      return sub_22CE85CB4();
    }
  }

  else if (*(v2 + 80) == 1)
  {
    v26 = sub_22CE85C74();
    v27 = sub_22CE85FA4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22CE3F000, v26, v27, "Device is inactive; scheduling check after grace period", v28, 2u);
      MEMORY[0x2318C20D0](v28, -1, -1);
    }

    *(v2 + 80) = 0;
    return sub_22CE44A24();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22CE422C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF30, &unk_22CE87948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE42330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22CE42390()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22CE423C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF30, &unk_22CE87948);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE42438()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
    sub_22CE40A60(&qword_281444800, &qword_27D9EED78, &unk_22CE87210);
    sub_22CE85CD4();
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22CE42584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CE425CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CE42614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CE4265C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CE426A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CE426EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  sub_22CE40A60(&qword_281444800, &qword_27D9EED78, &unk_22CE87210);
  return sub_22CE85CD4();
}

uint64_t sub_22CE42788()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v1 = sub_22CE85C84();
    __swift_project_value_buffer(v1, qword_281445368);
    v2 = sub_22CE85C74();
    v3 = sub_22CE85FA4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22CE3F000, v2, v3, "Budget level resolver published a change", v4, 2u);
      MEMORY[0x2318C20D0](v4, -1, -1);
    }

    sub_22CE42F54();
  }

  return result;
}

uint64_t sub_22CE428B8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v30 = v1;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v28 = MEMORY[0x277D84F90];
  v29 = v2;
LABEL_4:
  v9 = v8;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v8 = v9;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(v30 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v30 + 56) + 72 * v11;
    v32[0] = *v15;
    v16 = *(v15 + 16);
    v17 = *(v15 + 32);
    v18 = *(v15 + 48);
    v33 = *(v15 + 64);
    v32[2] = v17;
    v32[3] = v18;
    v32[1] = v16;
    v34[0] = v14;
    v34[1] = v13;
    v39 = v33;
    v37 = v17;
    v38 = v18;
    v35 = v32[0];
    v36 = v16;
    v20 = *(&v16 + 1);
    v19 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v33 | (SBYTE2(v33) << 16);
    if ((v23 & 0x80000000) == 0)
    {

      sub_22CE41214(v32, v31);
      sub_22CE449A4(v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23);
      sub_22CE42330(v34, &qword_27D9EEE70, &unk_22CE87C20);
LABEL_18:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22CE604E4(0, *(v28 + 16) + 1, 1, v28);
        v28 = result;
      }

      v25 = *(v28 + 16);
      v24 = *(v28 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_22CE604E4((v24 > 1), v25 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 16) = v25 + 1;
      v26 = v28 + 16 * v25;
      *(v26 + 32) = v19;
      *(v26 + 40) = v20;
      v2 = v29;
      goto LABEL_4;
    }

    sub_22CE41214(v32, v31);
    sub_22CE449A4(v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23);
    sub_22CE42330(v34, &qword_27D9EEE70, &unk_22CE87C20);
    if (v23 != 2)
    {
      if (v23)
      {
        sub_22CE62924(v21, *(&v21 + 1), v22, *(&v22 + 1), 1);
        sub_22CE62988(v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23);
      }

      else
      {
        sub_22CE62924(v21, *(&v21 + 1), v22, *(&v22 + 1), 0);
        sub_22CE62988(v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23);
      }

      v20 = *(&v21 + 1);
      v19 = v21;
      goto LABEL_18;
    }

    result = sub_22CE62988(v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23);
    v9 = v8;
    v2 = v29;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v27 = sub_22CE4478C(v28);

      return v27;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE42C24()
{
  v0 = sub_22CE85D14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85D34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 40);
    aBlock[4] = sub_22CE42768;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CE42F10;
    aBlock[3] = &block_descriptor_20;
    v14 = result;
    v11 = _Block_copy(aBlock);

    sub_22CE85D24();
    v16 = MEMORY[0x277D84F90];
    sub_22CE42584(&qword_281445338, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    v13 = v5;
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v9, v4, v11);
    _Block_release(v11);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v13);
  }

  return result;
}

uint64_t sub_22CE42F10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_22CE42F54()
{
  v1 = v0;
  v122 = sub_22CE85D14();
  v121 = *(v122 - 8);
  v2 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v4 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85D34();
  v120 = *(v5 - 8);
  v6 = *(v120 + 64);
  MEMORY[0x28223BE20](v5);
  v119 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22CE85974();
  v138 = *(v116 - 8);
  v8 = *(v138 + 8);
  MEMORY[0x28223BE20](v116);
  v125 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Budget();
  v140 = *(v142 - 8);
  v10 = *(v140 + 64);
  v11 = MEMORY[0x28223BE20](v142);
  v115 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v110 - v14;
  MEMORY[0x28223BE20](v13);
  v139 = &v110 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE60, &qword_22CE87B40);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v143 = (&v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v22 = &v110 - v21;
  v23 = sub_22CE85D44();
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x28223BE20](v23);
  v27 = (&v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v0[6];
  *v27 = v28;
  v29 = v24[13];
  v129 = *MEMORY[0x277D85200];
  v128 = v24 + 13;
  v127 = v29;
  v29(v27);
  v134 = v28;
  v30 = sub_22CE85D54();
  v31 = v24[1];
  v130 = v27;
  v132 = v23;
  v131 = v24 + 1;
  v126 = v31;
  v31(v27, v23);
  if ((v30 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v117 = v4;
  v118 = v5;
  v32 = v1[36];
  v33 = v1[37];
  v135 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 33, v32);
  v34 = (*(v33 + 8))(v32, v33);
  LODWORD(v133) = 0;
  v35 = 0;
  v36 = *(v34 + 64);
  v136 = v34 + 64;
  v141 = v34;
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v40 = (v37 + 63) >> 6;
  v114 = (v138 + 40);
  v137 = v22;
  v138 = v15;
  while (2)
  {
    v41 = v35;
    v42 = v142;
    v43 = v143;
    if (!v39)
    {
LABEL_7:
      if (v40 <= v41 + 1)
      {
        v45 = v41 + 1;
      }

      else
      {
        v45 = v40;
      }

      v35 = v45 - 1;
      while (1)
      {
        v44 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v44 >= v40)
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
          (*(*(v57 - 8) + 56))(v43, 1, 1, v57);
          v39 = 0;
          goto LABEL_15;
        }

        v39 = *(v136 + 8 * v44);
        ++v41;
        if (v39)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_48;
    }

    while (1)
    {
      v44 = v41;
LABEL_14:
      v46 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v47 = v46 | (v44 << 6);
      v48 = (*(v141 + 48) + 16 * v47);
      v50 = *v48;
      v49 = v48[1];
      v51 = v139;
      sub_22CE5E660(*(v141 + 56) + *(v140 + 72) * v47, v139, type metadata accessor for Budget);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
      v53 = *(v52 + 48);
      v43 = v143;
      *v143 = v50;
      *(v43 + 8) = v49;
      sub_22CE5E5F8(v51, v43 + v53, type metadata accessor for Budget);
      (*(*(v52 - 8) + 56))(v43, 0, 1, v52);

      v35 = v44;
      v42 = v142;
      v22 = v137;
      v15 = v138;
LABEL_15:
      sub_22CE44874(v43, v22, &qword_27D9EEE60, &qword_22CE87B40);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
      if ((*(*(v54 - 8) + 48))(v22, 1, v54) == 1)
      {

        if (v133)
        {
          v105 = v135[7];
          v149 = sub_22CE5E868;
          v150 = v135;
          aBlock = MEMORY[0x277D85DD0];
          v146 = 1107296256;
          v147 = sub_22CE42F10;
          v148 = &block_descriptor_97;
          v106 = _Block_copy(&aBlock);

          v107 = v119;
          sub_22CE85D24();
          v144 = MEMORY[0x277D84F90];
          sub_22CE42614(&qword_281445338, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
          sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
          v108 = v117;
          v109 = v122;
          sub_22CE86034();
          MEMORY[0x2318C1890](0, v107, v108, v106);
          _Block_release(v106);
          (*(v121 + 8))(v108, v109);
          (*(v120 + 8))(v107, v118);
        }

        return;
      }

      v55 = *(v22 + 1);

      sub_22CE5E5F8(&v22[*(v54 + 48)], v15, type metadata accessor for Budget);
      v56 = *(v42 + 36);
      if (v15[v56])
      {
        break;
      }

      sub_22CE5E6C8(v15, type metadata accessor for Budget);
      v41 = v35;
      v43 = v143;
      if (!v39)
      {
        goto LABEL_7;
      }
    }

    v113 = &v15[*(v42 + 28)];
    v58 = *v113;
    v123 = *(v113 + 1);
    v59 = v130;
    *v130 = v134;
    v60 = v132;
    v127(v59, v129, v132);
    v61 = v134;
    LODWORD(v124) = sub_22CE85D54();
    v126(v59, v60);
    if ((v124 & 1) == 0)
    {
      goto LABEL_49;
    }

    v62 = v135;
    v64 = v135[11];
    v63 = v135[12];
    __swift_project_boxed_opaque_existential_1(v135 + 8, v64);
    aBlock = v58;
    v146 = v123;
    (*(v63 + 16))(&v144, &aBlock, v64, v63);
    v65 = v144;
    v66 = v15;
    if (v144 == v15[*(v142 + 32)])
    {
      goto LABEL_43;
    }

    v67 = v62[24];
    if (v67)
    {
      if (*(v67 + 16))
      {
        v68 = sub_22CE4DE0C(v144);
        if (v69)
        {
          v133 = *(*(v67 + 56) + 8 * v68);
          v70 = v142;
          goto LABEL_31;
        }
      }
    }

    LODWORD(v124) = v65;
    v70 = v142;
    if (qword_281444EA0 != -1)
    {
      swift_once();
    }

    v71 = off_281444EA8;
    v72 = *(*(off_281444EA8 + 5) + 16);
    os_unfair_lock_lock(v72);
    v73 = v71[4];
    if (!*(v73 + 16))
    {
      goto LABEL_52;
    }

    v74 = sub_22CE4DE0C(v124);
    if ((v75 & 1) == 0)
    {
      goto LABEL_53;
    }

    v133 = *(*(v73 + 56) + 8 * v74);
    os_unfair_lock_unlock(v72);
    v65 = v124;
LABEL_31:
    v76 = *&v15[v70[11]];
    v77 = *&v15[v70[5]];
    v78 = __OFSUB__(v76, v77);
    v79 = v76 - v77;
    v80 = v135;
    if (v78)
    {
      goto LABEL_50;
    }

    v78 = __OFSUB__(v133, v79);
    v81 = v133 - v79;
    if (!v78)
    {
      v124 = v81;
      v82 = *(v113 + 1);
      v123 = *v113;
      v83 = &v15[v70[6]];
      v84 = *(v83 + 1);
      v112 = *v83;
      v85 = v15[v56];
      v111 = v84;

      v113 = v82;

      sub_22CE85954();
      v86 = v80[23];
      if (v86)
      {
        if (*(v86 + 16))
        {
          v87 = sub_22CE4DE0C(v65);
          if (v88)
          {
            v89 = v85;
            v90 = *(*(v86 + 56) + 8 * v87);
            goto LABEL_42;
          }
        }
      }

      if (qword_281444EA0 != -1)
      {
        swift_once();
      }

      v91 = off_281444EA8;
      v92 = *(*(off_281444EA8 + 5) + 16);
      os_unfair_lock_lock(v92);
      v93 = v91[3];
      if (*(v93 + 16))
      {
        v94 = sub_22CE4DE0C(v65);
        if ((v95 & 1) == 0)
        {
          goto LABEL_55;
        }

        v96 = v92;
        v89 = v85;
        v90 = *(*(v93 + 56) + 8 * v94);
        os_unfair_lock_unlock(v96);
LABEL_42:
        v97 = v115;
        sub_22CE858C4();
        v98 = v70[5];
        v99 = &v97[v70[7]];
        v100 = v113;
        *v99 = v123;
        v99[1] = v100;
        v101 = &v97[v70[6]];
        v102 = v111;
        *v101 = v112;
        *(v101 + 1) = v102;
        v97[v70[9]] = v89;
        (*v114)(v97, v125, v116);
        *&v97[v98] = v124;
        *&v97[v70[10]] = v90;
        *&v97[v70[11]] = v133;
        v97[v70[8]] = v65;
        v103 = v135[36];
        v104 = v135[37];
        __swift_project_boxed_opaque_existential_1(v135 + 33, v103);
        (*(v104 + 24))(v97, v103, v104);
        sub_22CE5E6C8(v15, type metadata accessor for Budget);
        LODWORD(v133) = 1;
        v66 = v97;
LABEL_43:
        sub_22CE5E6C8(v66, type metadata accessor for Budget);
        continue;
      }

      goto LABEL_54;
    }

    break;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t type metadata accessor for Budget()
{
  result = qword_2814453E8;
  if (!qword_2814453E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CE43CDC()
{
  v1 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE18, &unk_22CE87900);
  sub_22CE85FE4();
  return v3;
}

uint64_t sub_22CE43D8C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t sub_22CE43DF0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v4 = sub_22CE85C84();
    __swift_project_value_buffer(v4, qword_281445368);
    sub_22CE40D28(a1, v16);
    v5 = sub_22CE85C74();
    v6 = sub_22CE85FA4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      sub_22CE40D28(v16, &v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE68, qword_22CE87B48);
      v9 = sub_22CE85E24();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v16);
      v12 = sub_22CE44280(v9, v11, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_22CE3F000, v5, v6, "Budget enforcement policy changed: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2318C20D0](v8, -1, -1);
      MEMORY[0x2318C20D0](v7, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    v13 = *(v3 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
    sub_22CE40A60(&qword_281444800, &qword_27D9EED78, &unk_22CE87210);
    sub_22CE85CD4();
  }

  return result;
}

uint64_t sub_22CE4402C()
{
  v1 = *v0;
  v2 = sub_22CE44074();

  return MEMORY[0x2821FB7B8](v1, &type metadata for Priority, &type metadata for Priority, v2);
}

unint64_t sub_22CE44074()
{
  result = qword_281445388[0];
  if (!qword_281445388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281445388);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelSubscriptionFailure.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_22CE44168()
{
  v1 = 0x6E7574726F70706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E696B61576E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

uint64_t storeEnumTagSinglePayload for ChannelSubscriptionFailure.Reason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22CE44280(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22CE4434C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_22CE44458(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22CE4434C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22CE826CC(a5, a6);
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
    result = sub_22CE86114();
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

uint64_t sub_22CE44458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_22CE444BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v2 = sub_22CE85C84();
    __swift_project_value_buffer(v2, qword_281445368);
    v3 = sub_22CE85C74();
    v4 = sub_22CE85FA4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22CE3F000, v3, v4, "Budget server says priority has changed; updating enabled topics", v5, 2u);
      MEMORY[0x2318C20D0](v5, -1, -1);
    }

    sub_22CE445D0();
  }
}

uint64_t sub_22CE445D0()
{
  sub_22CE40D28(v0 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v17);
  v1 = v18;
  v2 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v3 = (*(v2 + 32))(v1, v2);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  v5 = 0;
  v6 = *(v3 + 56);
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_8:
      v12 = (*(v3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_22CE783C8(v14, v13, 0);
      v9 &= v9 - 1;
      sub_22CE78AE0(v14, v13, v15, v16);

      result = swift_unknownObjectRelease();
      v5 = v11;
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
    }

    v9 = *(v3 + 56 + 8 * v11);
    ++v5;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE4478C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318C1800](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22CE82A9C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22CE44824@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 64);
}

uint64_t sub_22CE44874(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22CE448FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PushSubscription.subscriptionType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 66);
  v9 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 50) = v8;
  *(a1 + 48) = v9;
  return sub_22CE449A4(v2, v3, v4, v5, v6, v7, v9 | (v8 << 16));
}

uint64_t sub_22CE449A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if ((a7 & 0x800000) != 0)
  {
    v9 = a7;

    return sub_22CE62924(a3, a4, a5, a6, v9);
  }

  else
  {
  }
}

uint64_t sub_22CE44A24()
{
  v1 = v0;
  v70 = *v0;
  v66 = sub_22CE85C04();
  v64 = *(v66 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22CE85C14();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22CE85974();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v63 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v56[-v18];
  v20 = sub_22CE85D44();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = v1[4];
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_22CE85D54();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  sub_22CE422C0((v1 + 11), &v72);
  if (*(&v73 + 1))
  {
    sub_22CE40D28(&v72, v71);
    sub_22CE42330(&v72, &unk_27D9EEF30, &unk_22CE87948);
    __swift_project_boxed_opaque_existential_1(v71, v71[3]);
    sub_22CE85C94();
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_22CE42330(&v72, &unk_27D9EEF30, &unk_22CE87948);
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  swift_beginAccess();
  sub_22CE423C0(&v72, (v1 + 11));
  result = swift_endAccess();
  if ((v1[10] & 1) == 0)
  {
    sub_22CE6A4A0();
    v24 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
    swift_beginAccess();
    v62 = v8[2];
    v62(v17, &v24[v1], v7);
    sub_22CE85964();
    v28 = v8[1];
    v28(v17, v7);
    sub_22CE85954();
    v29 = sub_22CE858F4();
    v28(v17, v7);
    if (v29)
    {
      v60 = v28;
      if (qword_281445360 == -1)
      {
LABEL_8:
        v30 = sub_22CE85C84();
        __swift_project_value_buffer(v30, qword_281445368);
        v61 = v19;
        v62(v14, v19, v7);
        v31 = sub_22CE85C74();
        v32 = sub_22CE85FA4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v58 = v33;
          v59 = swift_slowAlloc();
          *&v72 = v59;
          *v33 = 136446210;
          sub_22CE4265C(&qword_2814452A0, MEMORY[0x277CC9578]);
          v57 = v32;
          v34 = sub_22CE86174();
          v36 = v35;
          v37 = v14;
          v38 = v60;
          v60(v37, v7);
          v39 = sub_22CE44280(v34, v36, &v72);

          v40 = v58;
          *(v58 + 1) = v39;
          v41 = v40;
          _os_log_impl(&dword_22CE3F000, v31, v57, "Device is inactive; scheduling activity check at %{public}s", v40, 0xCu);
          v42 = v59;
          __swift_destroy_boxed_opaque_existential_1(v59);
          MEMORY[0x2318C20D0](v42, -1, -1);
          MEMORY[0x2318C20D0](v41, -1, -1);

          v43 = v38;
        }

        else
        {

          v43 = v60;
          v60(v14, v7);
        }

        v50 = v63;
        v62(v63, &v24[v1], v7);
        sub_22CE85964();
        v43(v50, v7);
        (*(v64 + 104))(v65, *MEMORY[0x277D4D518], v66);
        v51 = v67;
        sub_22CE85BF4();
        v52 = v1[9];
        __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
        v53 = swift_allocObject();
        swift_weakInit();
        v54 = swift_allocObject();
        v55 = v70;
        *(v54 + 16) = v53;
        *(v54 + 24) = v55;

        sub_22CE85C24();

        (*(v68 + 8))(v51, v69);
        v43(v61, v7);

        swift_beginAccess();
        sub_22CE423C0(&v72, (v1 + 11));
        return swift_endAccess();
      }

LABEL_19:
      swift_once();
      goto LABEL_8;
    }

    v44 = v19;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v45 = sub_22CE85C84();
    __swift_project_value_buffer(v45, qword_281445368);
    v46 = sub_22CE85C74();
    v47 = sub_22CE85FA4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_22CE3F000, v46, v47, "Device is inactive and grace period has already expired.  Publishing budget level change event.", v48, 2u);
      MEMORY[0x2318C20D0](v48, -1, -1);
    }

    v49 = v1[3];
    LOBYTE(v72) = 0;
    sub_22CE85CB4();
    return (v28)(v44, v7);
  }

  return result;
}

uint64_t sub_22CE45348()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE45380()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE453C0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_22CE85974();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for PushEvent.EventType(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_22CE85AF4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_22CE45580(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22CE85974();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for PushEvent.EventType(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = sub_22CE85AF4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22CE45740()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22CE45790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22CE4F750();
  *a2 = result;
  return result;
}

uint64_t sub_22CE457BC(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE45800()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE45838()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE45870(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22CE4592C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22CE459DC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_22CE85974();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for IncomingMessage.EventType(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_22CE45B54(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_22CE85974();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for IncomingMessage.EventType(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22CE45CCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE45D14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22CE52070();
  *a2 = result;
  return result;
}

uint64_t sub_22CE45D40(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE45D84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE45DBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22CE4F750();
  *a2 = result;
  return result;
}

uint64_t sub_22CE45DE8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE45E2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE45E64()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE45E9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE45ED4()
{
  v1 = type metadata accessor for PushEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  v10 = sub_22CE85974();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = (v0 + v3 + v1[8]);
  type metadata accessor for PushEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = v11[1];

    sub_22CE4E0DC(v11[2], v11[3]);
    v15 = v11[4];
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = sub_22CE85B14();
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  v16 = v1[9];
  v17 = sub_22CE85AF4();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);
  v18 = v1[10];
  v19 = sub_22CE85AB4();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v5 + v18, 1, v19))
  {
    (*(v20 + 8))(v5 + v18, v19);
  }

  v21 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + v21);

  return MEMORY[0x2821FE8E8](v0, v21 + 8, v2 | 7);
}

uint64_t sub_22CE46128@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22CE4F750();
  *a2 = result;
  return result;
}

uint64_t sub_22CE46154(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE46198@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22CE54830();
  *a2 = result;
  return result;
}

uint64_t sub_22CE461C4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
}

uint64_t sub_22CE46220@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22CE52070();
  *a2 = result;
  return result;
}

uint64_t sub_22CE4624C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
}

uint64_t sub_22CE46294()
{
  v1 = (type metadata accessor for Budget() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_22CE85974();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[8] + 8);

  v8 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CE463A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CE46434()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_22CE4E0DC(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE46488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22CE85974();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22CE46548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22CE85974();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22CE46604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_22CE46654()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE466A4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CE466FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE4673C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CE4677C()
{
  v1 = *(v0 + 24);

  sub_22CE62988(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80) | (*(v0 + 82) << 16));

  return MEMORY[0x2821FE8E8](v0, 84, 7);
}

uint64_t sub_22CE467D0()
{
  v1 = type metadata accessor for PushEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = v1[7];
  v10 = sub_22CE85974();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = (v0 + v3 + v1[8]);
  type metadata accessor for PushEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = v11[1];

    sub_22CE4E0DC(v11[2], v11[3]);
    v15 = v11[4];
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = sub_22CE85B14();
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  v16 = v1[9];
  v17 = sub_22CE85AF4();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);
  v18 = v1[10];
  v19 = sub_22CE85AB4();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v5 + v18, 1, v19))
  {
    (*(v20 + 8))(v5 + v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CE46A08()
{
  MEMORY[0x2318C2140](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CE46A40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

size_t sub_22CE46AAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22CE415BC(*(a1 + 16), 0);
  v4 = *(type metadata accessor for PushToken() - 8);
  v5 = sub_22CE416B8(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  sub_22CE412C8();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

char *sub_22CE46B74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22CE40F80(*(a1 + 16), 0);
  v4 = sub_22CE41080(&v6, v3 + 32, v2, a1);
  sub_22CE412C8();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t PushTokenStore.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t PushTokenStore.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t sub_22CE46C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_22CE41958(a1, &v10 - v4, type metadata accessor for PushToken);
  v8 = type metadata accessor for PushToken();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  swift_beginAccess();

  sub_22CE46D68(v5, v6, v7);
  return swift_endAccess();
}

uint64_t sub_22CE46D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PushToken();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22CE42330(a1, &qword_27D9EEB28, &qword_22CE86BF0);
    sub_22CE49D08(a2, a3, type metadata accessor for PushToken, type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, v10);

    return sub_22CE42330(v10, &qword_27D9EEB28, &qword_22CE86BF0);
  }

  else
  {
    sub_22CE419C0(a1, v14, type metadata accessor for PushToken);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22CE61818(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22CE46F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Budget();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22CE42330(a1, &qword_27D9EEBA0, &qword_22CE86D20);
    sub_22CE49D08(a2, a3, type metadata accessor for Budget, type metadata accessor for Budget, &qword_27D9EEBA8, &qword_22CE86D28, v10);

    return sub_22CE42330(v10, &qword_27D9EEBA0, &qword_22CE86D20);
  }

  else
  {
    sub_22CE419C0(a1, v14, type metadata accessor for Budget);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22CE61B84(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22CE47160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_22CE61F00(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_22CE498B0(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_22CE4AA0C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14);
      swift_unknownObjectRelease();
      result = sub_22CE4A254(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_22CE47264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = type metadata accessor for PushToken();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  swift_beginAccess();

  sub_22CE46D68(v5, v7, v6);
  return swift_endAccess();
}

uint64_t sub_22CE4735C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  swift_beginAccess();
  v8 = *(v3 + 16);

  v10 = sub_22CE4D240(v9, v6, v7, a1, a2, sub_22CE4C5E4, sub_22CE4C5E4);

  v11 = *(v3 + 16);
  *(v3 + 16) = v10;
}

uint64_t sub_22CE47424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for PushToken();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();

  sub_22CE46D68(v7, a1, a2);
  return swift_endAccess();
}

uint64_t sub_22CE4751C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v30 = type metadata accessor for PushToken();
  v8 = *(*(v30 - 8) + 64);
  result = MEMORY[0x28223BE20](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = (v10 + 56);
    v16 = *(v10 + 72);
    do
    {
      sub_22CE41958(v14, v12, type metadata accessor for PushToken);
      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      swift_beginAccess();
      v20 = *(v2 + 16);
      v21 = sub_22CE498B0(v19, v18);
      if (v22)
      {
        v23 = v21;
        v24 = *(v2 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *(v2 + 16);
        v31 = v26;
        *(v2 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22CE4A620(type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, type metadata accessor for PushToken);
          v26 = v31;
        }

        v27 = *(*(v26 + 48) + 16 * v23 + 8);

        sub_22CE419C0(*(v26 + 56) + v23 * v16, v7, type metadata accessor for PushToken);
        sub_22CE4A060(v23, v26, type metadata accessor for PushToken);
        v28 = *(v2 + 16);
        *(v2 + 16) = v26;

        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      (*v15)(v7, v17, 1, v30);
      sub_22CE42330(v7, &qword_27D9EEB28, &qword_22CE86BF0);
      swift_endAccess();
      result = sub_22CE4CA2C(v12);
      v14 += v16;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_22CE477A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  v7 = sub_22CE4D880(v6, a1, a2, sub_22CE4CA88, sub_22CE4CA88);

  v8 = *(v2 + 16);
  *(v2 + 16) = v7;
}

uint64_t sub_22CE47848()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x277D84F98];
}

uint64_t sub_22CE4788C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v123 = &v114 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v10 = *(*(v132 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v132);
  v131 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v130 = (&v114 - v14);
  MEMORY[0x28223BE20](v13);
  v129 = &v114 - v15;
  v122 = type metadata accessor for PushToken();
  v134 = *(v122 - 8);
  v16 = *(v134 + 64);
  v17 = MEMORY[0x28223BE20](v122);
  v117 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v124 = &v114 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v114 - v21;
  v23 = *a3;
  v24 = a3[1];
  swift_beginAccess();
  v118 = v3;
  v25 = *(v3 + 16);

  v27 = sub_22CE4D240(v26, v23, v24, a1, a2, sub_22CE4CDFC, sub_22CE4CDFC);

  v115 = v27;
  v28 = sub_22CE4ACE8(v27, sub_22CE4B39C, sub_22CE4B39C);
  v114 = 0;
  v29 = *(v28 + 16);
  if (v29)
  {
    v136 = MEMORY[0x277D84F90];
    sub_22CE4BB20(0, v29, 0);
    v133 = v136;
    v30 = v28 + 64;
    v31 = -1 << *(v28 + 32);
    result = sub_22CE86044();
    v33 = result;
    v34 = 0;
    v116 = v28 + 72;
    v35 = v134;
    v119 = v29;
    v120 = v28 + 64;
    v121 = v28;
    v36 = v130;
    while ((v33 & 0x8000000000000000) == 0 && v33 < 1 << *(v28 + 32))
    {
      v39 = v33 >> 6;
      if ((*(v30 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
      {
        goto LABEL_54;
      }

      v125 = v34;
      v126 = *(v28 + 36);
      v127 = 1 << v33;
      v40 = v132;
      v41 = *(v132 + 48);
      v42 = *(v28 + 56);
      v43 = (*(v28 + 48) + 16 * v33);
      v45 = *v43;
      v44 = v43[1];
      v128 = *(v35 + 72);
      v46 = v129;
      sub_22CE41958(v42 + v128 * v33, &v129[v41], type metadata accessor for PushToken);
      *v36 = v45;
      v36[1] = v44;
      sub_22CE419C0(&v46[v41], v36 + *(v40 + 48), type metadata accessor for PushToken);
      v47 = v131;
      sub_22CE4D49C(v36, v131);
      v48 = *(v47 + 8);

      sub_22CE419C0(v47 + *(v40 + 48), v22, type metadata accessor for PushToken);
      v49 = v133;
      v136 = v133;
      v51 = *(v133 + 16);
      v50 = *(v133 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_22CE4BB20(v50 > 1, v51 + 1, 1);
        v49 = v136;
      }

      *(v49 + 16) = v51 + 1;
      v35 = v134;
      v52 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v133 = v49;
      result = sub_22CE419C0(v22, v49 + v52 + v51 * v128, type metadata accessor for PushToken);
      v28 = v121;
      v37 = 1 << *(v121 + 32);
      if (v33 >= v37)
      {
        goto LABEL_55;
      }

      v30 = v120;
      v53 = *(v120 + 8 * v39);
      if ((v53 & v127) == 0)
      {
        goto LABEL_56;
      }

      if (v126 != *(v121 + 36))
      {
        goto LABEL_57;
      }

      v54 = v53 & (-2 << (v33 & 0x3F));
      if (v54)
      {
        v37 = __clz(__rbit64(v54)) | v33 & 0x7FFFFFFFFFFFFFC0;
        v38 = v119;
      }

      else
      {
        v55 = v39 << 6;
        v56 = v39 + 1;
        v57 = (v116 + 8 * v39);
        v38 = v119;
        while (v56 < (v37 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            result = sub_22CE4D50C(v33, v126, 0);
            v37 = __clz(__rbit64(v58)) + v55;
            goto LABEL_19;
          }
        }

        result = sub_22CE4D50C(v33, v126, 0);
LABEL_19:
        v35 = v134;
      }

      v34 = v125 + 1;
      v33 = v37;
      if (v125 + 1 == v38)
      {

        v60 = v124;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v133 = MEMORY[0x277D84F90];
  v60 = v124;
  v35 = v134;
LABEL_22:
  v61 = sub_22CE4ACE8(v115, sub_22CE4AE58, sub_22CE4AE58);

  v62 = *(v61 + 16);
  if (v62)
  {
    v136 = MEMORY[0x277D84F90];
    sub_22CE4BB20(0, v62, 0);
    v63 = v136;
    v64 = v61 + 64;
    v65 = -1 << *(v61 + 32);
    result = sub_22CE86044();
    v66 = result;
    v67 = 0;
    v116 = v61 + 72;
    v119 = v62;
    v120 = v61 + 64;
    v121 = v61;
    while ((v66 & 0x8000000000000000) == 0 && v66 < 1 << *(v61 + 32))
    {
      v70 = v66 >> 6;
      if ((*(v64 + 8 * (v66 >> 6)) & (1 << v66)) == 0)
      {
        goto LABEL_59;
      }

      v125 = v67;
      v126 = *(v61 + 36);
      v127 = 1 << v66;
      v71 = v35;
      v72 = v132;
      v73 = *(v132 + 48);
      v74 = *(v61 + 56);
      v75 = (*(v61 + 48) + 16 * v66);
      v77 = *v75;
      v76 = v75[1];
      v128 = *(v71 + 72);
      v78 = v63;
      v79 = v129;
      sub_22CE41958(v74 + v128 * v66, &v129[v73], type metadata accessor for PushToken);
      v80 = v130;
      *v130 = v77;
      *(v80 + 8) = v76;
      v81 = &v79[v73];
      v63 = v78;
      sub_22CE419C0(v81, v80 + *(v72 + 48), type metadata accessor for PushToken);
      v82 = v131;
      sub_22CE4D49C(v80, v131);
      v83 = *(v82 + 8);

      v84 = v82 + *(v72 + 48);
      v85 = v117;
      sub_22CE419C0(v84, v117, type metadata accessor for PushToken);
      v136 = v78;
      v87 = *(v78 + 16);
      v86 = *(v78 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_22CE4BB20(v86 > 1, v87 + 1, 1);
        v63 = v136;
      }

      *(v63 + 16) = v87 + 1;
      v88 = v134;
      result = sub_22CE419C0(v85, v63 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + v87 * v128, type metadata accessor for PushToken);
      v61 = v121;
      v68 = 1 << *(v121 + 32);
      if (v66 >= v68)
      {
        goto LABEL_60;
      }

      v64 = v120;
      v89 = *(v120 + 8 * v70);
      if ((v89 & v127) == 0)
      {
        goto LABEL_61;
      }

      if (v126 != *(v121 + 36))
      {
        goto LABEL_62;
      }

      v35 = v88;
      v90 = v89 & (-2 << (v66 & 0x3F));
      if (v90)
      {
        v68 = __clz(__rbit64(v90)) | v66 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v91 = v70 << 6;
        v92 = v70 + 1;
        v93 = (v116 + 8 * v70);
        while (v92 < (v68 + 63) >> 6)
        {
          v95 = *v93++;
          v94 = v95;
          v91 += 64;
          ++v92;
          if (v95)
          {
            result = sub_22CE4D50C(v66, v126, 0);
            v68 = __clz(__rbit64(v94)) + v91;
            goto LABEL_25;
          }
        }

        result = sub_22CE4D50C(v66, v126, 0);
      }

LABEL_25:
      v67 = v125 + 1;
      v66 = v68;
      v69 = v118;
      if (v125 + 1 == v119)
      {

        v60 = v124;
        goto LABEL_42;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v63 = MEMORY[0x277D84F90];
  v69 = v118;
LABEL_42:
  v96 = *(v133 + 16);
  if (v96)
  {
    v132 = v63;
    v97 = v133 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v98 = v35;
    v99 = (v35 + 56);
    v100 = *(v98 + 72);
    do
    {
      sub_22CE41958(v97, v60, type metadata accessor for PushToken);
      v104 = *(v60 + 16);
      v103 = *(v60 + 24);
      swift_beginAccess();
      v105 = *(v69 + 16);
      v106 = sub_22CE498B0(v104, v103);
      if (v107)
      {
        v108 = v106;
        v109 = *(v69 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = *(v69 + 16);
        v135 = v111;
        *(v69 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22CE4A620(type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, type metadata accessor for PushToken);
          v111 = v135;
        }

        v112 = *(*(v111 + 48) + 16 * v108 + 8);

        v102 = v123;
        sub_22CE419C0(*(v111 + 56) + v108 * v100, v123, type metadata accessor for PushToken);
        sub_22CE4A060(v108, v111, type metadata accessor for PushToken);
        v113 = *(v69 + 16);
        *(v69 + 16) = v111;

        v101 = 0;
      }

      else
      {
        v101 = 1;
        v102 = v123;
      }

      (*v99)(v102, v101, 1, v122);
      sub_22CE42330(v102, &qword_27D9EEB28, &qword_22CE86BF0);
      swift_endAccess();
      v60 = v124;
      sub_22CE4CA2C(v124);
      v97 += v100;
      --v96;
    }

    while (v96);

    return v132;
  }

  else
  {
  }

  return v63;
}

uint64_t sub_22CE48348(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v119 = &v110 - v7;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v8 = *(*(v128 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v128);
  v127 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = (&v110 - v12);
  MEMORY[0x28223BE20](v11);
  v125 = &v110 - v13;
  v118 = type metadata accessor for PushToken();
  v130 = *(v118 - 8);
  v14 = *(v130 + 64);
  v15 = MEMORY[0x28223BE20](v118);
  v113 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v120 = &v110 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v110 - v19;
  swift_beginAccess();
  v114 = v2;
  v21 = *(v2 + 16);

  v23 = sub_22CE4D880(v22, a1, a2, sub_22CE4D518, sub_22CE4D518);

  v111 = v23;
  v24 = sub_22CE4ACE8(v23, sub_22CE4B39C, sub_22CE4B39C);
  v110 = 0;
  v25 = *(v24 + 16);
  if (v25)
  {
    v132 = MEMORY[0x277D84F90];
    sub_22CE4BB20(0, v25, 0);
    v129 = v132;
    v26 = v24 + 64;
    v27 = -1 << *(v24 + 32);
    result = sub_22CE86044();
    v29 = result;
    v30 = 0;
    v112 = v24 + 72;
    v31 = v130;
    v115 = v25;
    v116 = v24 + 64;
    v117 = v24;
    while ((v29 & 0x8000000000000000) == 0 && v29 < 1 << *(v24 + 32))
    {
      v34 = v29 >> 6;
      if ((*(v26 + 8 * (v29 >> 6)) & (1 << v29)) == 0)
      {
        goto LABEL_54;
      }

      v121 = v30;
      v122 = *(v24 + 36);
      v123 = 1 << v29;
      v35 = v128;
      v36 = *(v128 + 48);
      v37 = *(v24 + 56);
      v38 = (*(v24 + 48) + 16 * v29);
      v40 = *v38;
      v39 = v38[1];
      v124 = *(v31 + 72);
      v41 = v125;
      sub_22CE41958(v37 + v124 * v29, &v125[v36], type metadata accessor for PushToken);
      v42 = v126;
      *v126 = v40;
      *(v42 + 8) = v39;
      sub_22CE419C0(&v41[v36], v42 + *(v35 + 48), type metadata accessor for PushToken);
      v43 = v127;
      sub_22CE4D49C(v42, v127);
      v44 = *(v43 + 8);

      sub_22CE419C0(v43 + *(v35 + 48), v20, type metadata accessor for PushToken);
      v45 = v129;
      v132 = v129;
      v47 = *(v129 + 16);
      v46 = *(v129 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_22CE4BB20(v46 > 1, v47 + 1, 1);
        v45 = v132;
      }

      *(v45 + 16) = v47 + 1;
      v31 = v130;
      v48 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v129 = v45;
      result = sub_22CE419C0(v20, v45 + v48 + v47 * v124, type metadata accessor for PushToken);
      v24 = v117;
      v32 = 1 << *(v117 + 32);
      if (v29 >= v32)
      {
        goto LABEL_55;
      }

      v26 = v116;
      v49 = *(v116 + 8 * v34);
      if ((v49 & v123) == 0)
      {
        goto LABEL_56;
      }

      if (v122 != *(v117 + 36))
      {
        goto LABEL_57;
      }

      v50 = v49 & (-2 << (v29 & 0x3F));
      if (v50)
      {
        v32 = __clz(__rbit64(v50)) | v29 & 0x7FFFFFFFFFFFFFC0;
        v33 = v115;
      }

      else
      {
        v51 = v34 << 6;
        v52 = v34 + 1;
        v53 = (v112 + 8 * v34);
        v33 = v115;
        while (v52 < (v32 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            result = sub_22CE4D50C(v29, v122, 0);
            v32 = __clz(__rbit64(v54)) + v51;
            goto LABEL_19;
          }
        }

        result = sub_22CE4D50C(v29, v122, 0);
LABEL_19:
        v31 = v130;
      }

      v30 = v121 + 1;
      v29 = v32;
      if (v121 + 1 == v33)
      {

        v56 = v120;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v129 = MEMORY[0x277D84F90];
  v56 = v120;
  v31 = v130;
LABEL_22:
  v57 = sub_22CE4ACE8(v111, sub_22CE4AE58, sub_22CE4AE58);

  v58 = *(v57 + 16);
  if (v58)
  {
    v132 = MEMORY[0x277D84F90];
    sub_22CE4BB20(0, v58, 0);
    v59 = v132;
    v60 = v57 + 64;
    v61 = -1 << *(v57 + 32);
    result = sub_22CE86044();
    v62 = result;
    v63 = 0;
    v112 = v57 + 72;
    v115 = v58;
    v116 = v57 + 64;
    v117 = v57;
    while ((v62 & 0x8000000000000000) == 0 && v62 < 1 << *(v57 + 32))
    {
      v66 = v62 >> 6;
      if ((*(v60 + 8 * (v62 >> 6)) & (1 << v62)) == 0)
      {
        goto LABEL_59;
      }

      v121 = v63;
      v122 = *(v57 + 36);
      v123 = 1 << v62;
      v67 = v31;
      v68 = v128;
      v69 = *(v128 + 48);
      v70 = *(v57 + 56);
      v71 = (*(v57 + 48) + 16 * v62);
      v73 = *v71;
      v72 = v71[1];
      v124 = *(v67 + 72);
      v74 = v59;
      v75 = v125;
      sub_22CE41958(v70 + v124 * v62, &v125[v69], type metadata accessor for PushToken);
      v76 = v126;
      *v126 = v73;
      *(v76 + 8) = v72;
      v77 = &v75[v69];
      v59 = v74;
      sub_22CE419C0(v77, v76 + *(v68 + 48), type metadata accessor for PushToken);
      v78 = v127;
      sub_22CE4D49C(v76, v127);
      v79 = *(v78 + 8);

      v80 = v78 + *(v68 + 48);
      v81 = v113;
      sub_22CE419C0(v80, v113, type metadata accessor for PushToken);
      v132 = v74;
      v83 = *(v74 + 16);
      v82 = *(v74 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_22CE4BB20(v82 > 1, v83 + 1, 1);
        v59 = v132;
      }

      *(v59 + 16) = v83 + 1;
      v84 = v130;
      result = sub_22CE419C0(v81, v59 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + v83 * v124, type metadata accessor for PushToken);
      v57 = v117;
      v64 = 1 << *(v117 + 32);
      if (v62 >= v64)
      {
        goto LABEL_60;
      }

      v60 = v116;
      v85 = *(v116 + 8 * v66);
      if ((v85 & v123) == 0)
      {
        goto LABEL_61;
      }

      if (v122 != *(v117 + 36))
      {
        goto LABEL_62;
      }

      v31 = v84;
      v86 = v85 & (-2 << (v62 & 0x3F));
      if (v86)
      {
        v64 = __clz(__rbit64(v86)) | v62 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v87 = v66 << 6;
        v88 = v66 + 1;
        v89 = (v112 + 8 * v66);
        while (v88 < (v64 + 63) >> 6)
        {
          v91 = *v89++;
          v90 = v91;
          v87 += 64;
          ++v88;
          if (v91)
          {
            result = sub_22CE4D50C(v62, v122, 0);
            v64 = __clz(__rbit64(v90)) + v87;
            goto LABEL_25;
          }
        }

        result = sub_22CE4D50C(v62, v122, 0);
      }

LABEL_25:
      v63 = v121 + 1;
      v62 = v64;
      v65 = v114;
      if (v121 + 1 == v115)
      {

        v56 = v120;
        goto LABEL_42;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v59 = MEMORY[0x277D84F90];
  v65 = v114;
LABEL_42:
  v92 = *(v129 + 16);
  if (v92)
  {
    v128 = v59;
    v93 = v129 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v94 = v31;
    v95 = (v31 + 56);
    v96 = *(v94 + 72);
    do
    {
      sub_22CE41958(v93, v56, type metadata accessor for PushToken);
      v100 = *(v56 + 16);
      v99 = *(v56 + 24);
      swift_beginAccess();
      v101 = *(v65 + 16);
      v102 = sub_22CE498B0(v100, v99);
      if (v103)
      {
        v104 = v102;
        v105 = *(v65 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = *(v65 + 16);
        v131 = v107;
        *(v65 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22CE4A620(type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, type metadata accessor for PushToken);
          v107 = v131;
        }

        v108 = *(*(v107 + 48) + 16 * v104 + 8);

        v98 = v119;
        sub_22CE419C0(*(v107 + 56) + v104 * v96, v119, type metadata accessor for PushToken);
        sub_22CE4A060(v104, v107, type metadata accessor for PushToken);
        v109 = *(v65 + 16);
        *(v65 + 16) = v107;

        v97 = 0;
      }

      else
      {
        v97 = 1;
        v98 = v119;
      }

      (*v95)(v98, v97, 1, v118);
      sub_22CE42330(v98, &qword_27D9EEB28, &qword_22CE86BF0);
      swift_endAccess();
      v56 = v120;
      sub_22CE4CA2C(v120);
      v93 += v96;
      --v92;
    }

    while (v92);

    return v128;
  }

  else
  {
  }

  return v59;
}

uint64_t sub_22CE48DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v42 = a1;
  v43 = a2;
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v12 = sub_22CE85974();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for PushToken();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v39 - v25;
  swift_beginAccess();
  v27 = *(v3 + 16);
  if (!*(v27 + 16))
  {
    return (*(v20 + 56))(v44, 1, 1, v19);
  }

  v39 = v4;

  v28 = sub_22CE498B0(v42, v43);
  if ((v29 & 1) == 0)
  {

    return (*(v20 + 56))(v44, 1, 1, v19);
  }

  sub_22CE41958(*(v27 + 56) + *(v20 + 72) * v28, v24, type metadata accessor for PushToken);

  sub_22CE419C0(v24, v26, type metadata accessor for PushToken);
  sub_22CE4DD94(&v26[*(v19 + 32)], v11, &qword_27D9EEF40, &qword_22CE86C00);
  v30 = v41;
  if ((*(v41 + 48))(v11, 1, v12) == 1)
  {
    sub_22CE42330(v11, &qword_27D9EEF40, &qword_22CE86C00);
  }

  else
  {
    (*(v30 + 32))(v18, v11, v12);
    sub_22CE85954();
    v32 = sub_22CE85904();
    v33 = *(v30 + 8);
    v33(v16, v12);
    v33(v18, v12);
    if (v32)
    {
      v34 = *(v26 + 2);
      v35 = *(v26 + 3);
      v36 = *(v20 + 56);
      v37 = v40;
      v36(v40, 1, 1, v19);
      swift_beginAccess();

      sub_22CE46D68(v37, v34, v35);
      swift_endAccess();
      sub_22CE4CA2C(v26);
      return (v36)(v44, 1, 1, v19);
    }
  }

  v38 = v44;
  sub_22CE419C0(v26, v44, type metadata accessor for PushToken);
  return (*(v20 + 56))(v38, 0, 1, v19);
}

uint64_t PushTokenStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PushTokenStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

size_t sub_22CE4928C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return sub_22CE46AAC(v3);
}

uint64_t sub_22CE492D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_22CE41958(a1, &v12 - v5, type metadata accessor for PushToken);
  v10 = type metadata accessor for PushToken();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  swift_beginAccess();

  sub_22CE46D68(v6, v8, v9);
  return swift_endAccess();
}

uint64_t sub_22CE493F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = type metadata accessor for PushToken();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  swift_beginAccess();

  sub_22CE46D68(v6, v9, v8);
  return swift_endAccess();
}

uint64_t sub_22CE494F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *v3;
  v7 = *a3;
  v8 = a3[1];
  swift_beginAccess();
  v9 = *(v6 + 16);

  v11 = sub_22CE4D240(v10, v7, v8, a1, a2, sub_22CE4C5E4, sub_22CE4C5E4);

  v12 = *(v6 + 16);
  *(v6 + 16) = v11;
}

uint64_t sub_22CE495C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = *v2;
  v10 = type metadata accessor for PushToken();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  swift_beginAccess();

  sub_22CE46D68(v8, a1, a2);
  return swift_endAccess();
}

uint64_t sub_22CE496E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 16);

  v8 = sub_22CE4D880(v7, a1, a2, sub_22CE4CA88, sub_22CE4CA88);

  v9 = *(v5 + 16);
  *(v5 + 16) = v8;
}

uint64_t sub_22CE49788()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x277D84F98];
}

unint64_t sub_22CE498B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22CE86204();
  sub_22CE85E54();
  v6 = sub_22CE86244();

  return sub_22CE499D4(a1, a2, v6);
}

unint64_t sub_22CE49928(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22CE86204();
  MEMORY[0x2318C1AB0](a1);
  v4 = sub_22CE86244();
  return sub_22CE49A8C(a1, v4);
}

unint64_t sub_22CE49990(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22CE86064();

  return sub_22CE49AFC(a1, v5);
}

unint64_t sub_22CE499D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22CE86194())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22CE49A8C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22CE49AFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22CE4DCE4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2318C1910](v9, a1);
      sub_22CE4DD40(v9);
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

void *sub_22CE49BC4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB78, &qword_22CE86CF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

double sub_22CE49C48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22CE498B0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CE4A430();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 72 * v9;
    v15 = *(v14 + 48);
    *(a3 + 32) = *(v14 + 32);
    *(a3 + 48) = v15;
    *(a3 + 64) = *(v14 + 64);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    sub_22CE49E98(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22CE49D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_22CE498B0(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CE4A620(a4, a5, a6, a4);
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_22CE419C0(v22 + *(v30 + 72) * v17, a7, a4);
    sub_22CE4A060(v17, v20, a4);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

char *sub_22CE49E98(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22CE86054() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22CE86204();

      sub_22CE85E54();
      v13 = sub_22CE86244();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 72 * v3);
        v19 = (v18 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v19 + 72 || v3 != v6)
        {
          result = memmove(result, v19, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22CE4A060(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22CE86054() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_22CE86204();

      sub_22CE85E54();
      v15 = sub_22CE86244();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CE4A254(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22CE86054() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22CE86204();

      sub_22CE85E54();
      v13 = sub_22CE86244();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_22CE4A430()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD0, &qword_22CE86D30);
  v2 = *v0;
  v3 = sub_22CE86144();
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        result = sub_22CE41214(&v32, v31);
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

void *sub_22CE4A620(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v39 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_22CE86144();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_22CE41958(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_22CE419C0(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_22CE4A874()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB80, &qword_22CE86D00);
  v2 = *v0;
  v3 = sub_22CE86144();
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;

        result = sub_22CE41BF0(v25, v26);
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

void *sub_22CE4AA0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB50, &unk_22CE86CD0);
  v2 = *v0;
  v3 = sub_22CE86144();
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

        result = swift_unknownObjectRetain();
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

void *sub_22CE4AB8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB60, &qword_22CE86CE0);
  v2 = *v0;
  v3 = sub_22CE86144();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_22CE4ACE8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_22CE4B9E4(v13, v7, v5, a3);
  result = MEMORY[0x2318C20D0](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CE4AE58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v50 - v6;
  v67 = sub_22CE85974();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v67);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v50 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v12 = *(*(v66 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v66);
  v65 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v50 - v15);
  v17 = type metadata accessor for PushToken();
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = *(v63 + 64);
  result = MEMORY[0x28223BE20](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v69 = a3;
  v23 = *(a3 + 64);
  v53 = 0;
  v54 = a3 + 64;
  v24 = 1 << *(a3 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v61 = (v7 + 48);
  v62 = v27;
  v57 = (v7 + 8);
  v58 = (v7 + 32);
  v56 = v21;
  while (v26)
  {
    v28 = __clz(__rbit64(v26));
    v72 = (v26 - 1) & v26;
LABEL_11:
    v31 = v28 | (v22 << 6);
    v32 = v69[7];
    v33 = (v69[6] + 16 * v31);
    v35 = *v33;
    v34 = v33[1];
    v36 = *(v63 + 72);
    v55 = v31;
    sub_22CE41958(v32 + v36 * v31, v21, type metadata accessor for PushToken);
    *v16 = v35;
    v16[1] = v34;
    v37 = v66;
    sub_22CE41958(v21, v16 + *(v66 + 48), type metadata accessor for PushToken);
    v38 = v16;
    v39 = v16;
    v40 = v65;
    sub_22CE4DD94(v38, v65, &unk_27D9EEB30, &qword_22CE86BF8);
    v41 = *(v40 + 8);
    swift_bridgeObjectRetain_n();

    v42 = v40 + *(v37 + 48);
    v43 = v68;
    sub_22CE4DD94(v42 + *(v64 + 32), v68, &qword_27D9EEF40, &qword_22CE86C00);
    v44 = v67;
    if ((*v61)(v43, 1, v67) == 1)
    {
      sub_22CE42330(v39, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE42330(v43, &qword_27D9EEF40, &qword_22CE86C00);
      sub_22CE4CA2C(v42);
      sub_22CE4CA2C(v21);

      v16 = v39;
      v27 = v62;
      v26 = v72;
LABEL_15:
      *(v52 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (__OFADD__(v53++, 1))
      {
        __break(1u);
        return sub_22CE62310(v52, v51, v53, v69);
      }
    }

    else
    {
      v45 = v59;
      (*v58)(v59, v43, v44);
      v46 = v60;
      sub_22CE85954();
      v71 = sub_22CE85904();
      v70 = v34;
      v47 = *v57;
      (*v57)(v46, v44);
      v48 = v45;
      v21 = v56;
      v47(v48, v44);
      sub_22CE42330(v39, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v42);
      sub_22CE4CA2C(v21);

      v16 = v39;
      v27 = v62;
      v26 = v72;
      if ((v71 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v27)
    {
      return sub_22CE62310(v52, v51, v53, v69);
    }

    v30 = *(v54 + 8 * v22);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v72 = (v30 - 1) & v30;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE4B39C(unint64_t *a1, uint64_t a2, void *a3)
{
  v53[0] = a2;
  v54 = a1;
  v4 = &qword_22CE86C00;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = v53 - v7;
  v8 = sub_22CE85974();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v60 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = v53 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v14 = *(*(v69 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v69);
  v68 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (v53 - v17);
  v19 = type metadata accessor for PushToken();
  v66 = *(v19 - 8);
  v67 = v19;
  v20 = *(v66 + 64);
  result = MEMORY[0x28223BE20](v19);
  v72 = a3;
  v73 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v23 = 0;
  v26 = a3[8];
  v25 = a3 + 8;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v30 = (v27 + 63) >> 6;
  v64 = (v9 + 48);
  v65 = v30;
  v57 = (v9 + 8);
  v58 = (v9 + 32);
  v70 = v8;
  v56 = v25;
  v63 = v18;
  while (v29)
  {
    v32 = v4;
    v75 = (v29 - 1) & v29;
    v33 = __clz(__rbit64(v29)) | (v23 << 6);
    v34 = v73;
LABEL_12:
    v37 = v72[7];
    v38 = (v72[6] + 16 * v33);
    v39 = *v38;
    v40 = v38[1];
    v41 = *(v66 + 72);
    v62 = v33;
    sub_22CE41958(v37 + v41 * v33, v34, type metadata accessor for PushToken);
    *v18 = v39;
    v18[1] = v40;
    v42 = v69;
    sub_22CE41958(v34, v18 + *(v69 + 48), type metadata accessor for PushToken);
    v43 = v18;
    v44 = v68;
    sub_22CE4DD94(v43, v68, &unk_27D9EEB30, &qword_22CE86BF8);
    v45 = *(v44 + 8);
    v74 = v40;
    swift_bridgeObjectRetain_n();

    v46 = v44 + *(v42 + 48);
    v47 = v71;
    sub_22CE4DD94(v46 + *(v67 + 32), v71, &qword_27D9EEF40, v32);
    v48 = v70;
    if ((*v64)(v47, 1, v70) == 1)
    {
      v31 = v63;
      sub_22CE42330(v63, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE42330(v47, &qword_27D9EEF40, v32);
      sub_22CE4CA2C(v46);
      sub_22CE4CA2C(v34);

      v4 = v32;
      v18 = v31;
      v30 = v65;
      v29 = v75;
    }

    else
    {
      v49 = v59;
      (*v58)(v59, v47, v48);
      v50 = v60;
      sub_22CE85954();
      v61 = sub_22CE85904();
      v51 = *v57;
      (*v57)(v50, v48);
      v51(v49, v48);
      v25 = v56;
      v18 = v63;
      sub_22CE42330(v63, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v46);
      sub_22CE4CA2C(v34);

      v4 = v32;
      v30 = v65;
      v29 = v75;
      if (v61)
      {
        *(v54 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
        if (__OFADD__(v55++, 1))
        {
          __break(1u);
          return sub_22CE62310(v54, v53[0], v55, v72);
        }
      }
    }
  }

  v35 = v23;
  v34 = v73;
  while (1)
  {
    v23 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v23 >= v30)
    {
      return sub_22CE62310(v54, v53[0], v55, v72);
    }

    v36 = v25[v23];
    ++v35;
    if (v36)
    {
      v32 = v4;
      v75 = (v36 - 1) & v36;
      v33 = __clz(__rbit64(v36)) | (v23 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CE4B904(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v16 = a8(v15, a2, a3, a4, a5, a6, a7);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v16;
  }

  return result;
}

void *sub_22CE4B9E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_22CE4BA6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

size_t sub_22CE4BB20(size_t a1, int64_t a2, char a3)
{
  result = sub_22CE4C22C(a1, a2, a3, *v3, &qword_27D9EECE8, &qword_22CE86D48, type metadata accessor for PushToken);
  *v3 = result;
  return result;
}

char *sub_22CE4BB64(char *a1, int64_t a2, char a3)
{
  result = sub_22CE4BC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22CE4BB84(size_t a1, int64_t a2, char a3)
{
  result = sub_22CE4C22C(a1, a2, a3, *v3, &qword_27D9EECE0, &qword_22CE86D40, type metadata accessor for Budget);
  *v3 = result;
  return result;
}

char *sub_22CE4BBC8(char *a1, int64_t a2, char a3)
{
  result = sub_22CE4BD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CE4BBE8(void *a1, int64_t a2, char a3)
{
  result = sub_22CE4BEBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22CE4BC08(char *a1, int64_t a2, char a3)
{
  result = sub_22CE4C004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22CE4BC28(char *a1, int64_t a2, char a3)
{
  result = sub_22CE4C120(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22CE4BC48(size_t a1, int64_t a2, char a3)
{
  result = sub_22CE4C22C(a1, a2, a3, *v3, &qword_27D9EEB70, &qword_22CE86CF0, MEMORY[0x277CB9340]);
  *v3 = result;
  return result;
}

char *sub_22CE4BC8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB58, &qword_22CE88EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CE4BD98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD8, &qword_22CE86D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22CE4BEBC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB88, &qword_22CE86D08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB90, &qword_22CE86D10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CE4C004(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB98, &qword_22CE86D18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

char *sub_22CE4C120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB68, &qword_22CE86CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22CE4C22C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
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

void *sub_22CE4C450(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = a4;
      v17 = (*(a4 + 56) + ((v10 << 11) | (32 * v15)));
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      v9[3] = v20;
      if (v12 == v24)
      {

        sub_22CE41BF0(v19, v20);
        a4 = v16;
        v6 = v23;
        a3 = v24;
        goto LABEL_24;
      }

      v9 += 4;

      sub_22CE41BF0(v19, v20);
      result = v12;
      v21 = __OFADD__(v12++, 1);
      a4 = v16;
      if (v21)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v22 = v10 + 1;
    }

    else
    {
      v22 = v11;
    }

    v10 = v22 - 1;
    a3 = result;
    v6 = v23;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22CE4C5E4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a2;
  v61 = a5;
  v62 = a7;
  v64 = a6;
  v60 = a4;
  v53 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v8 = *(*(v65 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v65);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = (&v52 - v13);
  v15 = type metadata accessor for PushToken();
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  result = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v20 = 0;
  v63 = a3;
  v23 = a3[8];
  v22 = a3 + 8;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v57 = v19;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
LABEL_12:
    v32 = v29 | (v20 << 6);
    v33 = v63[7];
    v34 = (v63[6] + 16 * v32);
    v36 = *v34;
    v35 = v34[1];
    v37 = *(v58 + 72);
    v55 = v32;
    sub_22CE41958(v33 + v37 * v32, v19, type metadata accessor for PushToken);
    *v14 = v36;
    v14[1] = v35;
    v38 = v65;
    sub_22CE41958(v19, v14 + *(v65 + 48), type metadata accessor for PushToken);
    v39 = v59;
    sub_22CE4DD94(v14, v59, &unk_27D9EEB30, &qword_22CE86BF8);
    v40 = *(v39 + 8);
    swift_bridgeObjectRetain_n();

    v41 = v39 + *(v38 + 48);
    v42 = *(v41 + 48);
    v43 = *(v41 + 56);

    sub_22CE4CA2C(v41);
    if (v42 == v60 && v43 == v61)
    {
    }

    else
    {
      v45 = sub_22CE86194();

      if ((v45 & 1) == 0)
      {
        sub_22CE42330(v14, &unk_27D9EEB30, &qword_22CE86BF8);
        v19 = v57;
        sub_22CE4CA2C(v57);

        goto LABEL_18;
      }
    }

    v47 = v56;
    sub_22CE4DD94(v14, v56, &unk_27D9EEB30, &qword_22CE86BF8);
    v48 = *(v47 + 8);

    v49 = v47 + *(v65 + 48);
    v50 = *(v49 + 32);
    v51 = *(v49 + 40);

    sub_22CE4CA2C(v49);
    v19 = v57;
    if (v50 == v64 && v51 == v62)
    {

      sub_22CE42330(v14, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v19);
    }

    else
    {
      v28 = sub_22CE86194();

      sub_22CE42330(v14, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v19);

      if ((v28 & 1) == 0)
      {
LABEL_18:
        *(v53 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
        if (__OFADD__(v54++, 1))
        {
          goto LABEL_27;
        }
      }
    }
  }

  v30 = v20;
  while (1)
  {
    v20 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v20 >= v27)
    {
      return sub_22CE62310(v53, v52, v54, v63);
    }

    v31 = v22[v20];
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v26 = (v31 - 1) & v31;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22CE4CA2C(uint64_t a1)
{
  v2 = type metadata accessor for PushToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CE4CA88(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v50 = a4;
  v51 = a5;
  v44 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v6 = *(*(v49 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v43 - v9);
  v11 = type metadata accessor for PushToken();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  result = MEMORY[0x28223BE20](v11 - 8);
  v54 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v15 = 0;
  v52 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v53 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
    v24 = v54;
LABEL_12:
    v27 = v52[7];
    v28 = (v52[6] + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v47 + 72);
    v46 = v23;
    sub_22CE41958(v27 + v31 * v23, v24, type metadata accessor for PushToken);
    *v10 = v29;
    v10[1] = v30;
    v32 = v49;
    sub_22CE41958(v24, v10 + *(v49 + 48), type metadata accessor for PushToken);
    v33 = v10;
    v34 = v10;
    v35 = v48;
    sub_22CE4DD94(v33, v48, &unk_27D9EEB30, &qword_22CE86BF8);
    v36 = *(v35 + 8);
    swift_bridgeObjectRetain_n();

    v37 = v35 + *(v32 + 48);
    v38 = *(v37 + 32);
    v39 = *(v37 + 40);

    sub_22CE4CA2C(v37);
    if (v38 == v50 && v39 == v51)
    {

      sub_22CE42330(v34, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v54);

      v10 = v34;
      v21 = v53;
    }

    else
    {
      v41 = sub_22CE86194();

      sub_22CE42330(v34, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v54);

      v10 = v34;
      v21 = v53;
      if ((v41 & 1) == 0)
      {
        *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v45++, 1))
        {
          __break(1u);
          return sub_22CE62310(v44, v43, v45, v52);
        }
      }
    }
  }

  v25 = v15;
  v24 = v54;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_22CE62310(v44, v43, v45, v52);
    }

    v26 = v17[v15];
    ++v25;
    if (v26)
    {
      v53 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) | (v15 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE4CDFC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a2;
  v61 = a5;
  v62 = a7;
  v64 = a6;
  v60 = a4;
  v53 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v8 = *(*(v65 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v65);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = (&v52 - v13);
  v15 = type metadata accessor for PushToken();
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  result = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v20 = 0;
  v63 = a3;
  v23 = a3[8];
  v22 = a3 + 8;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v57 = v19;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
LABEL_12:
    v32 = v29 | (v20 << 6);
    v33 = v63[7];
    v34 = (v63[6] + 16 * v32);
    v36 = *v34;
    v35 = v34[1];
    v37 = *(v58 + 72);
    v56 = v32;
    sub_22CE41958(v33 + v37 * v32, v19, type metadata accessor for PushToken);
    *v14 = v36;
    v14[1] = v35;
    v38 = v65;
    sub_22CE41958(v19, v14 + *(v65 + 48), type metadata accessor for PushToken);
    v39 = v59;
    sub_22CE4DD94(v14, v59, &unk_27D9EEB30, &qword_22CE86BF8);
    v40 = *(v39 + 8);
    swift_bridgeObjectRetain_n();

    v41 = v39 + *(v38 + 48);
    v43 = *(v41 + 48);
    v42 = *(v41 + 56);

    sub_22CE4CA2C(v41);
    if (v43 == v60 && v42 == v61)
    {

      goto LABEL_19;
    }

    v45 = sub_22CE86194();

    if (v45)
    {
LABEL_19:
      v46 = v55;
      sub_22CE4DD94(v14, v55, &unk_27D9EEB30, &qword_22CE86BF8);
      v47 = *(v46 + 8);

      v48 = v46 + *(v65 + 48);
      v50 = *(v48 + 32);
      v49 = *(v48 + 40);

      sub_22CE4CA2C(v48);
      v19 = v57;
      if (v50 == v64 && v49 == v62)
      {

        sub_22CE42330(v14, &unk_27D9EEB30, &qword_22CE86BF8);
        sub_22CE4CA2C(v19);

        goto LABEL_22;
      }

      v28 = sub_22CE86194();

      sub_22CE42330(v14, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v19);

      if (v28)
      {
LABEL_22:
        *(v53 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        if (__OFADD__(v54++, 1))
        {
          __break(1u);
          return sub_22CE62310(v53, v52, v54, v63);
        }
      }
    }

    else
    {
      sub_22CE42330(v14, &unk_27D9EEB30, &qword_22CE86BF8);
      v19 = v57;
      sub_22CE4CA2C(v57);
    }
  }

  v30 = v20;
  while (1)
  {
    v20 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v20 >= v27)
    {
      return sub_22CE62310(v53, v52, v54, v63);
    }

    v31 = v22[v20];
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v26 = (v31 - 1) & v31;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CE4D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = a7;
  v25 = a6;
  v26 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 32);
  v14 = v13 & 0x3F;
  v15 = ((1 << v13) + 63) >> 6;
  v16 = 8 * v15;
  swift_bridgeObjectRetain_n();
  v17 = swift_bridgeObjectRetain_n();
  if (v14 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v21 = a4;
      v22 = swift_slowAlloc();

      v18 = sub_22CE4B904(v22, v15, a1, a2, a3, v21, a5, v24);
      MEMORY[0x2318C20D0](v22, -1, -1);

      goto LABEL_6;
    }
  }

  v24 = &v23;
  MEMORY[0x28223BE20](v17);
  bzero(&v23 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);

  v18 = v25(&v23 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v15, a1, a2, a3, a4, a5);

  if (v7)
  {
    swift_willThrow();
  }

LABEL_6:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_22CE4D49C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE4D50C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22CE4D518(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a2;
  v49 = a4;
  v50 = a5;
  v41 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEB30, &qword_22CE86BF8);
  v6 = *(*(v48 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v39 - v9);
  v11 = type metadata accessor for PushToken();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  result = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v51 = a3;
  v17 = *(a3 + 64);
  v44 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v42 = 0;
  v43 = (v18 + 63) >> 6;
  while (v20)
  {
    v21 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_11:
    v24 = v21 | (v16 << 6);
    v25 = v51[7];
    v26 = (v51[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v46 + 72);
    v45 = v24;
    sub_22CE41958(v25 + v29 * v24, v15, type metadata accessor for PushToken);
    *v10 = v27;
    v10[1] = v28;
    v30 = v48;
    sub_22CE41958(v15, v10 + *(v48 + 48), type metadata accessor for PushToken);
    v31 = v47;
    sub_22CE4DD94(v10, v47, &unk_27D9EEB30, &qword_22CE86BF8);
    v32 = *(v31 + 8);
    swift_bridgeObjectRetain_n();

    v33 = v31 + *(v30 + 48);
    v34 = *(v33 + 32);
    v35 = *(v33 + 40);

    sub_22CE4CA2C(v33);
    if (v34 == v49 && v35 == v50)
    {

      sub_22CE42330(v10, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v15);

      v20 = v52;
LABEL_18:
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
        return sub_22CE62310(v41, v40, v42, v51);
      }
    }

    else
    {
      v37 = sub_22CE86194();

      sub_22CE42330(v10, &unk_27D9EEB30, &qword_22CE86BF8);
      sub_22CE4CA2C(v15);

      v20 = v52;
      if (v37)
      {
        goto LABEL_18;
      }
    }
  }

  v22 = v16;
  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= v43)
    {
      return sub_22CE62310(v41, v40, v42, v51);
    }

    v23 = *(v44 + 8 * v16);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v52 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CE4D880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v16 = sub_22CE4BA6C(v19, v13, a1, a2, a3, a5);
      MEMORY[0x2318C20D0](v19, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v15);
  bzero(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v16 = a4(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3);

  if (v5)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_22CE4DC28(uint64_t a1, int a2)
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

uint64_t sub_22CE4DC48(uint64_t result, int a2, int a3)
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

void sub_22CE4DC98(uint64_t a1, unint64_t *a2)
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

uint64_t sub_22CE4DD94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t PushEvent.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE4DF2C()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE4DFA0()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t PushEvent.EventType.ActivityStartParameters.attributesType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PushEvent.EventType.ActivityStartParameters.attributesType.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PushEvent.EventType.ActivityStartParameters.attributesData.getter()
{
  v1 = *(v0 + 16);
  sub_22CE41BF0(v1, *(v0 + 24));
  return v1;
}

uint64_t PushEvent.EventType.ActivityStartParameters.attributesData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22CE4E0DC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_22CE4E0DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t PushEvent.EventType.ActivityStartParameters.contentSourceRequests.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t PushEvent.EventType.ActivityStartParameters.init(attributesType:attributesData:contentSourceRequests:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t PushEvent.subscriptionIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PushEvent.activityIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PushEvent.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t PushEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PushEvent(0) + 28);
  v4 = sub_22CE85974();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PushEvent.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushEvent(0) + 32);

  return sub_22CE4E2E0(v3, a1);
}

uint64_t sub_22CE4E2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushEvent.EventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PushEvent.contentSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PushEvent(0) + 36);
  v4 = sub_22CE85AF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PushEvent.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushEvent(0) + 40);

  return sub_22CE4E404(v3, a1);
}

uint64_t sub_22CE4E404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PushEvent.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PushEvent(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t PushEvent.description.getter()
{
  v1 = v0;
  sub_22CE860F4();
  MEMORY[0x2318C1750](0x6D617473656D6974, 0xEB00000000203A70);
  v2 = type metadata accessor for PushEvent(0);
  v3 = *(v2 + 28);
  sub_22CE85974();
  sub_22CE4E5E0();
  v4 = sub_22CE86174();
  MEMORY[0x2318C1750](v4);

  MEMORY[0x2318C1750](0xD000000000000016, 0x800000022CE89D30);
  MEMORY[0x2318C1750](*(v1 + 16), *(v1 + 24));
  MEMORY[0x2318C1750](0x54746E657665203BLL, 0xED0000203A657079);
  v5 = *(v2 + 32);
  type metadata accessor for PushEvent.EventType(0);
  sub_22CE86124();
  return 0;
}

unint64_t sub_22CE4E5E0()
{
  result = qword_2814452A0;
  if (!qword_2814452A0)
  {
    sub_22CE85974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814452A0);
  }

  return result;
}

uint64_t PushEvent.init(subscriptionIdentifier:activityIdentifier:topic:timestamp:eventType:contentSource:payload:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char *a11)
{
  v15 = *a5;
  v16 = a5[1];
  v17 = *a11;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = v15;
  *(a9 + 5) = v16;
  v18 = type metadata accessor for PushEvent(0);
  v19 = v18[7];
  v20 = sub_22CE85974();
  (*(*(v20 - 8) + 32))(&a9[v19], a6, v20);
  sub_22CE4E748(a7, &a9[v18[8]]);
  v21 = v18[9];
  v22 = sub_22CE85AF4();
  (*(*(v22 - 8) + 32))(&a9[v21], a8, v22);
  result = sub_22CE4E7AC(a10, &a9[v18[10]]);
  a9[v18[11]] = v17;
  return result;
}

uint64_t sub_22CE4E748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushEvent.EventType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE4E7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22CE4E820()
{
  result = qword_27D9EED68;
  if (!qword_27D9EED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EED68);
  }

  return result;
}

void sub_22CE4E8A0()
{
  sub_22CE85974();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PushEvent.EventType(319);
    if (v1 <= 0x3F)
    {
      sub_22CE85AF4();
      if (v2 <= 0x3F)
      {
        sub_22CE4E97C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22CE4E97C()
{
  if (!qword_281445298)
  {
    sub_22CE85AB4();
    v0 = sub_22CE86014();
    if (!v1)
    {
      atomic_store(v0, &qword_281445298);
    }
  }
}

uint64_t getEnumTagSinglePayload for PushEvent.Priority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushEvent.Priority(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22CE4EB88()
{
  result = sub_22CE85B14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22CE4EC20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CE4EC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Topic.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22CE86194();
  }
}

uint64_t Topic.unsuffixed.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Topic.suffixed.getter()
{
  v2 = *v0;
  v3 = v0[1];

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  return v2;
}

SessionPushNotifications::Topic __swiftcall Topic.init(suffixed:)(Swift::String suffixed)
{
  v2 = v1;
  v3 = sub_22CE85EF4();
  if (v3)
  {
    v5 = sub_22CE85E64();
    v6 = sub_22CE4EF5C(v5);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = MEMORY[0x2318C16D0](v6, v8, v10, v12);
    v15 = v14;

    *v2 = v13;
    v2[1] = v15;
  }

  else
  {
    __break(1u);
  }

  result.unsuffixed._object = v4;
  result.unsuffixed._countAndFlagsBits = v3;
  return result;
}

uint64_t Topic.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22CE85E54();
}

uint64_t Topic.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22CE86204();
  sub_22CE85E54();
  return sub_22CE86244();
}

uint64_t sub_22CE4EE90(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22CE86194();
  }
}

uint64_t sub_22CE4EEC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22CE86204();
  sub_22CE85E54();
  return sub_22CE86244();
}

uint64_t sub_22CE4EF0C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22CE85E54();
}

uint64_t sub_22CE4EF14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22CE86204();
  sub_22CE85E54();
  return sub_22CE86244();
}

uint64_t sub_22CE4EF5C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22CE85E94();

    return sub_22CE85F14();
  }

  return result;
}

unint64_t sub_22CE4EFFC()
{
  result = qword_2814453F8;
  if (!qword_2814453F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814453F8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22CE4F05C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CE4F0A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22CE4F0F4(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
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
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
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
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v47 = MEMORY[0x277D84F90];
    v33 = a2 >> 62;
    sub_22CE4BB64(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
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

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_22CE85804();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_22CE85824();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_22CE85804();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_22CE85824();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED70, &unk_22CE87DE0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_22CE87100;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_22CE85E14();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_22CE4BB64((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t PublicToken.environmentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PublicToken.token.getter()
{
  v1 = *(v0 + 16);
  sub_22CE41BF0(v1, *(v0 + 24));
  return v1;
}

uint64_t PublicToken.init(environmentName:token:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t PublicToken.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22CE4F0F4(v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
  sub_22CE4F5FC();
  v3 = sub_22CE85DC4();
  v5 = v4;

  sub_22CE860F4();

  MEMORY[0x2318C1750](v1, v2);
  MEMORY[0x2318C1750](0x3A6E656B6F74203BLL, 0xE900000000000020);
  MEMORY[0x2318C1750](v3, v5);

  return 0xD000000000000011;
}

unint64_t sub_22CE4F5FC()
{
  result = qword_2814447F0;
  if (!qword_2814447F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9EEF90, &qword_22CE87110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814447F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22CE4F6B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CE4F700(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22CE4F750()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
    sub_22CE40A60(&qword_2814447F8, &qword_27D9EED78, &unk_22CE87210);
    v2 = v0;
    v1 = sub_22CE85CE4();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_22CE4F814(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*sub_22CE4F824(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22CE4F750();
  return sub_22CE4F86C;
}

uint64_t sub_22CE4F86C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t BudgetLevelResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  BudgetLevelResolver.init()();
  return v0;
}

void *BudgetLevelResolver.init()()
{
  v20 = sub_22CE85FD4();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85FB4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22CE85D34();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v19 = v0;
  v0[2] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v0[3] = sub_22CE85CC4();
  v18[0] = sub_22CE4FC1C();
  v18[4] = "environmentName: ";
  sub_22CE85D24();
  v21 = MEMORY[0x277D84F90];
  v18[3] = sub_22CE42584(&qword_281445320, MEMORY[0x277D85230]);
  v18[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  sub_22CE86034();
  v12 = *MEMORY[0x277D85260];
  v13 = v1 + 104;
  v14 = *(v1 + 104);
  v18[1] = v13;
  v14(v4, v12, v20);
  v15 = sub_22CE86004();
  v16 = v19;
  v19[4] = v15;
  sub_22CE85D24();
  v21 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v14(v4, v12, v20);
  v16[5] = sub_22CE86004();
  v16[6] = MEMORY[0x277D84F90];
  v16[7] = MEMORY[0x277D84FA0];
  return v16;
}

unint64_t sub_22CE4FC1C()
{
  result = qword_281445310;
  if (!qword_281445310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281445310);
  }

  return result;
}

uint64_t sub_22CE4FC68(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  sub_22CE40D28(a1, v9);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  sub_22CE501DC(v9, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22CE501F4;
  *(v5 + 24) = v4;
  aBlock[4] = sub_22CE42390;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE50228;
  aBlock[3] = &block_descriptor;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE4FDD0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED88, &unk_22CE872C0);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v25 - v10;
  sub_22CE40D28(a2, v28);
  swift_beginAccess();
  v12 = *(a1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 48) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_22CE6039C(0, v12[2] + 1, 1, v12);
    *(a1 + 48) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_22CE6039C((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  sub_22CE501DC(v28, &v12[5 * v15 + 4]);
  *(a1 + 48) = v12;
  swift_endAccess();
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  *&v28[0] = (*(*(v17 + 8) + 8))(v16);
  v27 = *(a1 + 32);
  v18 = v27;
  v19 = sub_22CE85FC4();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED90, &qword_22CE88F00);
  sub_22CE4FC1C();
  sub_22CE40A60(&qword_281444830, &qword_27D9EED90, &qword_22CE88F00);
  sub_22CE42584(&qword_281445318, sub_22CE4FC1C);
  sub_22CE85CF4();
  sub_22CE505E4(v7);

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22CE42504;
  *(v22 + 24) = v21;
  sub_22CE40A60(&qword_281444848, &qword_27D9EED88, &unk_22CE872C0);
  v23 = v26;
  sub_22CE85D04();

  (*(v8 + 8))(v11, v23);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();
}

uint64_t sub_22CE501DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t BudgetLevelResolver.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t BudgetLevelResolver.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

SessionPushNotifications::Budget::Level __swiftcall BudgetLevelResolver.resolveBudgetLevel(topic:)(SessionPushNotifications::Topic topic)
{
  v2 = *topic.unsuffixed._countAndFlagsBits;
  v3 = *(v1 + 32);
  v5 = *(topic.unsuffixed._countAndFlagsBits + 8);
  return sub_22CE85FE4();
}

uint64_t sub_22CE50360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X8>)
{
  result = swift_beginAccess();
  v9 = *(a1 + 48);
  v10 = *(v9 + 16);
  if (v10)
  {
    v16 = a4;
    v11 = v9 + 32;

    v12 = 2;
    do
    {
      sub_22CE40D28(v11, v18);
      v13 = v19;
      v14 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v17[0] = a2;
      v17[1] = a3;
      (*(v14 + 16))(&v21, v17, v13, v14);
      v15 = v12;
      if (v21 < v12)
      {
        v15 = v21;
      }

      if (v21 != 3)
      {
        v12 = v15;
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v11 += 40;
      --v10;
    }

    while (v10);

    a4 = v16;
  }

  else
  {
    v12 = 2;
  }

  *a4 = v12;
  return result;
}

uint64_t sub_22CE5049C(uint64_t *a1)
{
  v2 = *(*v1 + 32);
  v4 = *a1;
  v5 = a1[1];
  return sub_22CE85FE4();
}

uint64_t sub_22CE505E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ChannelSubscriptionFailure.Reason.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t AppTokenInfo.init(topic:identifier:expirationDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a1[1];
  *a5 = *a1;
  a5[1] = v6;
  a5[2] = a2;
  a5[3] = a3;
  v7 = a5 + *(type metadata accessor for AppTokenInfo(0) + 24);

  return sub_22CE50774(a4, v7);
}

uint64_t sub_22CE50774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IncomingMessage.EventType.StartParameters.init(attributesType:attributesData:inputs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static IncomingMessage.EventType.StartParameters.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22CE86194() & 1) == 0 || (sub_22CE51390(v2, v4, v5, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_22CE508A8(v3, v7);
}

uint64_t sub_22CE508A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v12 = *(v3 - 2);
    v11 = *(v3 - 1);
    v13 = *v3;
    if (*i)
    {
      break;
    }

    if (*v3)
    {
      sub_22CE52040(*(v3 - 2), *(v3 - 1), *v3);
      v27 = v9;
      v28 = v8;
      v29 = 0;
      goto LABEL_32;
    }

    if (v9 == v12 && v8 == v11)
    {
      sub_22CE52040(*(i - 2), *(i - 1), 0);
      sub_22CE52040(v9, v8, 0);
      sub_22CE52058(v9, v8, 0);
      v5 = v9;
      v6 = v8;
      v7 = 0;
LABEL_6:
      sub_22CE52058(v5, v6, v7);
      goto LABEL_7;
    }

    v15 = *(v3 - 2);
    v16 = *(v3 - 1);
    v17 = sub_22CE86194();
    sub_22CE52040(v12, v11, 0);
    sub_22CE52040(v9, v8, 0);
    sub_22CE52058(v9, v8, 0);
    v18 = v12;
    v19 = v11;
    v20 = 0;
LABEL_27:
    sub_22CE52058(v18, v19, v20);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v10 != 1)
  {
    if (v13 != 2 || (v11 | v12) != 0)
    {
      v27 = *(v3 - 2);
      v28 = *(v3 - 1);
      v29 = *v3;
      goto LABEL_32;
    }

    sub_22CE52058(*(i - 2), *(i - 1), 2u);
    v5 = 0;
    v6 = 0;
    v7 = 2;
    goto LABEL_6;
  }

  if (v13 == 1)
  {
    if (v9 == v12 && v8 == v11)
    {
      sub_22CE52040(*(i - 2), *(i - 1), 1u);
      sub_22CE52040(v9, v8, 1u);
      sub_22CE52058(v9, v8, 1u);
      v5 = v9;
      v6 = v8;
      v7 = 1;
      goto LABEL_6;
    }

    v22 = *(i - 2);
    v23 = *(i - 1);
    v24 = *(v3 - 2);
    v25 = *(v3 - 1);
    v17 = sub_22CE86194();
    sub_22CE52040(v12, v11, 1u);
    sub_22CE52040(v9, v8, 1u);
    sub_22CE52058(v9, v8, 1u);
    v18 = v12;
    v19 = v11;
    v20 = 1;
    goto LABEL_27;
  }

  sub_22CE52040(*(v3 - 2), *(v3 - 1), *v3);
  v27 = v9;
  v28 = v8;
  v29 = 1;
LABEL_32:
  sub_22CE52040(v27, v28, v29);
  sub_22CE52058(v9, v8, v10);
  sub_22CE52058(v12, v11, v13);
  return 0;
}

uint64_t sub_22CE50B4C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22CE86194() & 1) == 0 || (sub_22CE51390(v2, v4, v5, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_22CE508A8(v3, v7);
}

uint64_t IncomingMessage.token.getter()
{
  v1 = *v0;
  sub_22CE51710(*v0, *(v0 + 8));
  return v1;
}

uint64_t IncomingMessage.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t IncomingMessage.channelID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t IncomingMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IncomingMessage(0) + 32);
  v4 = sub_22CE85974();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IncomingMessage.payload.getter()
{
  v1 = v0 + *(type metadata accessor for IncomingMessage(0) + 36);
  v2 = *v1;
  sub_22CE41BF0(*v1, *(v1 + 8));
  return v2;
}

uint64_t IncomingMessage.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IncomingMessage(0) + 40);

  return sub_22CE51744(v3, a1);
}

uint64_t IncomingMessage.alertConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IncomingMessage(0) + 44));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_22CE4DD94(v11, &v10, &unk_27D9EEF80, &qword_22CE872D8);
}

uint64_t IncomingMessage.relevanceScore.getter()
{
  v1 = (v0 + *(type metadata accessor for IncomingMessage(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t IncomingMessage.init(token:topic:channelID:priority:eventType:timestamp:payload:alertConfiguration:staleDate:relevanceScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = *a3;
  v19 = a3[1];
  v20 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v18;
  *(a9 + 24) = v19;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = v20;
  v21 = type metadata accessor for IncomingMessage(0);
  sub_22CE517C8(a7, a9 + v21[10]);
  v22 = v21[8];
  v23 = sub_22CE85974();
  (*(*(v23 - 8) + 32))(a9 + v22, a8, v23);
  v24 = (a9 + v21[9]);
  *v24 = a10;
  v24[1] = a11;
  v25 = (a9 + v21[11]);
  v26 = a12[3];
  v25[2] = a12[2];
  v25[3] = v26;
  v27 = a12[5];
  v25[4] = a12[4];
  v25[5] = v27;
  v28 = a12[1];
  *v25 = *a12;
  v25[1] = v28;
  result = sub_22CE50774(a13, a9 + v21[12]);
  v30 = a9 + v21[13];
  *v30 = a14;
  *(v30 + 8) = a15 & 1;
  return result;
}

uint64_t IncomingMessage.description.getter()
{
  sub_22CE860F4();
  MEMORY[0x2318C1750](0x203A6369706F74, 0xE700000000000000);
  v5 = v0[2];
  v7 = v0[3];
  sub_22CE86124();
  MEMORY[0x2318C1750](0x656E6E616863203BLL, 0xED0000203A44496CLL);
  v6 = v0[4];
  v8 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED98, &qword_22CE872E0);
  v1 = sub_22CE85E24();
  MEMORY[0x2318C1750](v1);

  MEMORY[0x2318C1750](0x3A6E656B6F74203BLL, 0xE900000000000020);
  sub_22CE51710(*v0, v0[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEDA0, &qword_22CE872E8);
  v2 = sub_22CE85E24();
  MEMORY[0x2318C1750](v2);

  MEMORY[0x2318C1750](0x54746E657665203BLL, 0xED0000203A657079);
  v3 = *(type metadata accessor for IncomingMessage(0) + 40);
  type metadata accessor for IncomingMessage.EventType(0);
  sub_22CE86124();
  return 0;
}

uint64_t sub_22CE51148(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22CE512D8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22CE4E0DC(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_22CE8228C(v14, a3, a4, &v13);
  v10 = v4;
  sub_22CE4E0DC(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_22CE512D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22CE85804();
  v11 = result;
  if (result)
  {
    result = sub_22CE85824();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22CE85814();
  sub_22CE8228C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_22CE51390(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22CE41BF0(a3, a4);
          return sub_22CE51148(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s24SessionPushNotifications15IncomingMessageV9EventTypeO15StartParametersV05InputG0O2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_22CE86194();
        sub_22CE52040(v6, v5, 0);
        sub_22CE52040(v3, v2, 0);
        sub_22CE52058(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_22CE52040(v14, v2, 0);
      sub_22CE52040(v3, v2, 0);
      sub_22CE52058(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_22CE86194();
        sub_22CE52040(v6, v5, 1u);
        sub_22CE52040(v3, v2, 1u);
        sub_22CE52058(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_22CE52058(v11, v12, v13);
        return v10 & 1;
      }

      sub_22CE52040(v8, v2, 1u);
      sub_22CE52040(v3, v2, 1u);
      sub_22CE52058(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_22CE52040(*a2, *(a2 + 8), v7);
    sub_22CE52040(v3, v2, v4);
    sub_22CE52058(v3, v2, v4);
    sub_22CE52058(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_22CE52058(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_22CE52058(v18, v19, v20);
  return 1;
}

uint64_t sub_22CE51710(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22CE41BF0(a1, a2);
  }

  return a1;
}

uint64_t sub_22CE51744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingMessage.EventType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE517C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IncomingMessage.EventType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22CE51830()
{
  result = qword_27D9EEDA8;
  if (!qword_27D9EEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEDA8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22CE51898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CE518E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22CE51974()
{
  sub_22CE519F8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22CE519F8()
{
  if (!qword_281445988)
  {
    sub_22CE85974();
    v0 = sub_22CE86014();
    if (!v1)
    {
      atomic_store(v0, &qword_281445988);
    }
  }
}

void sub_22CE51A78()
{
  sub_22CE51BC8(319, &qword_27D9EEDC0);
  if (v0 <= 0x3F)
  {
    sub_22CE51BC8(319, &qword_27D9EEDC8);
    if (v1 <= 0x3F)
    {
      sub_22CE85974();
      if (v2 <= 0x3F)
      {
        type metadata accessor for IncomingMessage.EventType(319);
        if (v3 <= 0x3F)
        {
          sub_22CE51BC8(319, &qword_27D9EEDD0);
          if (v4 <= 0x3F)
          {
            sub_22CE519F8();
            if (v5 <= 0x3F)
            {
              sub_22CE51BC8(319, &qword_27D9EEDD8);
              if (v6 <= 0x3F)
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

void sub_22CE51BC8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22CE86014();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22CE51C14()
{
  sub_22CE51C7C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_22CE51C7C()
{
  if (!qword_27D9EEDF0)
  {
    sub_22CE519F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9EEDF0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_24SessionPushNotifications15IncomingMessageV9EventTypeO15StartParametersV05InputG0O(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22CE51D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22CE51D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22CE51D90(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_24SessionPushNotifications15IncomingMessageV17LocalizableStringVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22CE51DEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_22CE51E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22CE51ED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22CE51F20(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22CE52040(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_22CE52058(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_22CE52070()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF00, &unk_22CE87740);
    sub_22CE40A60(&qword_281444808, &unk_27D9EEF00, &unk_22CE87740);
    v2 = v0;
    v1 = sub_22CE85CE4();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t (*sub_22CE52134(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22CE52070();
  return sub_22CE4F86C;
}

uint64_t WatchActivityMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  WatchActivityMonitor.init()();
  return v0;
}

uint64_t WatchActivityMonitor.init()()
{
  v1 = v0;
  v22 = *v0;
  v2 = sub_22CE85FD4();
  v20 = *(v2 - 8);
  v21 = v2;
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22CE85FB4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22CE85D34();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v0[2] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF00, &unk_22CE87740);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[3] = sub_22CE85CC4();
  v19 = sub_22CE5395C(0, &qword_281445310, 0x277D85C78);
  sub_22CE85D24();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CE52580();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  sub_22CE86034();
  (*(v20 + 104))(v5, *MEMORY[0x277D85260], v21);
  v13 = sub_22CE86004();
  v0[4] = v13;
  v0[5] = -1;
  *(v0 + 48) = 0;
  v14 = swift_allocObject();
  v15 = v22;
  *(v14 + 16) = v1;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22CE525D8;
  *(v16 + 24) = v14;
  aBlock[4] = sub_22CE42778;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE50228;
  aBlock[3] = &block_descriptor_0;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

unint64_t sub_22CE52580()
{
  result = qword_281445320;
  if (!qword_281445320)
  {
    sub_22CE85FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445320);
  }

  return result;
}

void sub_22CE525D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + 48) = sub_22CE5260C() & 1;
  sub_22CE5276C();
}

uint64_t sub_22CE5260C()
{
  v0 = swift_slowAlloc();
  v1 = IOPSCopyPowerSourcesByTypePrecise();
  if (*v0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    sub_22CE52ABC(v0, &v10);
    v7 = v10;
    v8 = v10;
    if (!*v0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v3 = sub_22CE85C84();
  __swift_project_value_buffer(v3, qword_281445368);
  v4 = sub_22CE85C74();
  v5 = sub_22CE85F94();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22CE3F000, v4, v5, "Could not get connected device list", v6, 2u);
    MEMORY[0x2318C20D0](v6, -1, -1);
  }

  v7 = 0;
  v8 = 0;
  if (*v0)
  {
LABEL_10:
    swift_unknownObjectRelease();
    v8 = v7;
  }

LABEL_11:
  MEMORY[0x2318C20D0](v0, -1, -1);
  return v8;
}

void sub_22CE5276C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  swift_weakInit();
  v21 = sub_22CE539C4;
  v22 = v3;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_22CE5343C;
  v20 = &block_descriptor_20_0;
  v4 = _Block_copy(&v17);

  swift_beginAccess();
  v5 = notify_register_dispatch("com.apple.system.accpowersources.source", (v1 + 40), v2, v4);
  swift_endAccess();
  _Block_release(v4);
  if (v5)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v6 = sub_22CE85C84();
    __swift_project_value_buffer(v6, qword_281445368);
    v7 = sub_22CE85C74();
    v8 = sub_22CE85F94();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22CE3F000, v7, v8, "Could not register for power source notifications", v9, 2u);
      MEMORY[0x2318C20D0](v9, -1, -1);
    }
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v21 = sub_22CE5369C;
  v22 = v10;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_22CE5343C;
  v20 = &block_descriptor_24;
  v11 = _Block_copy(&v17);

  swift_beginAccess();
  v12 = notify_register_dispatch("com.apple.system.accpowersources.attach", (v1 + 44), v2, v11);
  swift_endAccess();
  _Block_release(v11);
  if (v12)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v13 = sub_22CE85C84();
    __swift_project_value_buffer(v13, qword_281445368);
    v14 = sub_22CE85C74();
    v15 = sub_22CE85F94();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22CE3F000, v14, v15, "Could not register for attachment notifications", v16, 2u);
      MEMORY[0x2318C20D0](v16, -1, -1);
    }
  }
}

void sub_22CE52ABC(CFTypeRef *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v2 = a1;
  v4 = IOPSCopyPowerSourcesList(*a1);
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v42 = a2;
  v6 = sub_22CE85F34();

  if (v6 >> 62)
  {
    v7 = sub_22CE86134();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_57:

    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v37 = sub_22CE85C84();
    __swift_project_value_buffer(v37, qword_281445368);
    v38 = sub_22CE85C74();
    v39 = sub_22CE85FA4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22CE3F000, v38, v39, "Could not find a connected watch", v40, 2u);
      MEMORY[0x2318C20D0](v40, -1, -1);
    }

    v36 = 0;
    goto LABEL_62;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_57;
  }

LABEL_4:
  v8 = 0;
  v9 = (v6 & 0xC000000000000001);
  v46 = v6 & 0xFFFFFFFFFFFFFF8;
  while (v9)
  {
    v10 = MEMORY[0x2318C19A0](v8, v6);
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_49;
    }

LABEL_11:
    v12 = IOPSGetPowerSourceDescription(*v2, v10);
    if (!v12)
    {
      __break(1u);
      goto LABEL_64;
    }

    v13 = v12;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

LABEL_22:
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v19 = sub_22CE85C84();
      __swift_project_value_buffer(v19, qword_281445368);
      v20 = sub_22CE85C74();
      v21 = sub_22CE85F94();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22CE3F000, v20, v21, "Could not get power source description", v22, 2u);
        v23 = v22;
        v9 = (v6 & 0xC000000000000001);
        MEMORY[0x2318C20D0](v23, -1, -1);
      }

      goto LABEL_6;
    }

    v45[0] = 0;
    sub_22CE85D64();

    v14 = v45[0];
    if (!v45[0])
    {
      goto LABEL_22;
    }

    v15 = v2;
    v16 = sub_22CE536B8(v45[0]);
    if (v16 < 2u)
    {
      goto LABEL_15;
    }

    if (!*(v14 + 16) || (v24 = v16, v25 = sub_22CE498B0(0x4920726F646E6556, 0xE900000000000044), (v26 & 1) == 0) || (sub_22CE44458(*(v14 + 56) + 32 * v25, v45), sub_22CE5395C(0, &qword_27D9EEDF8, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
    {
      swift_unknownObjectRelease();

      goto LABEL_46;
    }

    v41 = [v43 integerValue];

    if (v24 == 2)
    {
      v9 = (v6 & 0xC000000000000001);
      if (v41 == 1452)
      {
        goto LABEL_15;
      }

LABEL_45:

      swift_unknownObjectRelease();
LABEL_46:
      v2 = v15;
      goto LABEL_7;
    }

    v9 = (v6 & 0xC000000000000001);
    if (v24 == 3)
    {
      v27 = v41;
      if (v41 == 76)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v24 != 4)
      {
        goto LABEL_45;
      }

      v27 = v41;
    }

    if (v27 != 1452)
    {
      goto LABEL_45;
    }

LABEL_15:
    if (!*(v14 + 16))
    {
      goto LABEL_45;
    }

    v17 = sub_22CE498B0(0xD000000000000012, 0x800000022CE8A070);
    v2 = v15;
    if (v18 & 1) != 0 && (sub_22CE44458(*(v14 + 56) + 32 * v17, v45), (swift_dynamicCast()))
    {
      if (v43 == 0x6863746157 && v44 == 0xE500000000000000)
      {
      }

      else
      {
        v28 = sub_22CE86194();

        if ((v28 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      if (!*(v14 + 16) || (v29 = sub_22CE498B0(0x6772616843207349, 0xEB00000000676E69), (v30 & 1) == 0))
      {
LABEL_40:

        swift_unknownObjectRelease();
        v9 = (v6 & 0xC000000000000001);
        goto LABEL_7;
      }

      sub_22CE44458(*(v14 + 56) + 32 * v29, v45);

      sub_22CE5395C(0, &qword_27D9EEDF8, 0x277CCABB0);
      v9 = (v6 & 0xC000000000000001);
      if (swift_dynamicCast())
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

LABEL_6:
    swift_unknownObjectRelease();
LABEL_7:
    ++v8;
    if (v11 == v7)
    {
      goto LABEL_57;
    }
  }

  if (v8 >= *(v46 + 16))
  {
    goto LABEL_50;
  }

  v10 = *(v6 + 8 * v8 + 32);
  swift_unknownObjectRetain();
  v11 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_11;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  v9 = v43;
  if (qword_281445360 == -1)
  {
    goto LABEL_52;
  }

LABEL_64:
  swift_once();
LABEL_52:
  v31 = sub_22CE85C84();
  __swift_project_value_buffer(v31, qword_281445368);
  v32 = v9;
  v33 = sub_22CE85C74();
  v34 = sub_22CE85FA4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67240192;
    *(v35 + 4) = [v32 BOOLValue];

    _os_log_impl(&dword_22CE3F000, v33, v34, "Found watch with charging state %{BOOL,public}d", v35, 8u);
    MEMORY[0x2318C20D0](v35, -1, -1);
  }

  else
  {

    v33 = v32;
  }

  v36 = [v32 BOOLValue];
  swift_unknownObjectRelease();
LABEL_62:
  *v42 = v36;
}