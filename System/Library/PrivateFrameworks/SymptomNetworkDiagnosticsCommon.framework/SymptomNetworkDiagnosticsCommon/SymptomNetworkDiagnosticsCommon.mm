uint64_t sub_29EC1A304@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC1A350(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_29EC1A3B4()
{
  v1 = (v0 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_29EC1A404(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t NDFXPCActivityManager.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = (v5 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_logger;
  v8 = sub_29EC23480();
  (*(*(v8 - 8) + 32))(v5 + v7, a1, v8);
  return v5;
}

uint64_t NDFXPCActivityManager.init(logger:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_logger;
  v5 = sub_29EC23480();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

void sub_29EC1A5DC(uint64_t a1, unint64_t a2)
{

  v4 = sub_29EC23460();
  v5 = sub_29EC23530();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_29EC1B4DC(a1, a2, v13);
    _os_log_impl(&dword_29EC19000, v4, v5, "Registering XPC activity: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x29EDACF00](v7, -1, -1);
    MEMORY[0x29EDACF00](v6, -1, -1);
  }

  v8 = *MEMORY[0x29EDCA998];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v13[4] = sub_29EC1A860;
  v13[5] = v10;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29EC1A8E0;
  v13[3] = &block_descriptor;
  v11 = _Block_copy(v13);

  v12 = sub_29EC234D0();
  xpc_activity_register((v12 + 32), v8, v11);

  _Block_release(v11);
}

uint64_t sub_29EC1A7E8()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EC1A820()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EC1A860(_xpc_activity_s *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29EC1A958(a1, v4, v5);
  }

  return result;
}

uint64_t sub_29EC1A8E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29EC1A958(_xpc_activity_s *a1, uint64_t a2, unint64_t a3)
{
  state = xpc_activity_get_state(a1);

  v7 = sub_29EC23460();
  v8 = sub_29EC23510();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29EC1B4DC(a2, a3, &v19);
    *(v9 + 12) = 2048;
    *(v9 + 14) = state;
    _os_log_impl(&dword_29EC19000, v7, v8, "XPC Activity ID: %s state: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x29EDACF00](v10, -1, -1);
    MEMORY[0x29EDACF00](v9, -1, -1);
  }

  if (state)
  {
    if (state == 3)
    {

      oslog = sub_29EC23460();
      v11 = sub_29EC23530();

      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_29EC1B4DC(a2, a3, &v19);
        _os_log_impl(&dword_29EC19000, oslog, v11, "XPC Activity ID: %s is deferred", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x29EDACF00](v13, -1, -1);
        v14 = v12;
LABEL_16:
        MEMORY[0x29EDACF00](v14, -1, -1);

        return;
      }
    }

    else
    {
      if (state == 2)
      {

        sub_29EC1AFDC(a1, a2, a3);
        return;
      }

      oslog = sub_29EC23460();
      v15 = sub_29EC23520();

      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_29EC1B4DC(a2, a3, &v19);
        *(v16 + 12) = 2048;
        *(v16 + 14) = state;
        _os_log_impl(&dword_29EC19000, oslog, v15, "XPC Activity ID:%s has unknown state: %ld", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x29EDACF00](v17, -1, -1);
        v14 = v16;
        goto LABEL_16;
      }
    }
  }

  else
  {

    sub_29EC1ACE4(a1, a2, a3);
  }
}

void sub_29EC1ACE4(_xpc_activity_s *a1, uint64_t a2, unint64_t a3)
{
  if ((*(*v3 + 96))())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 8))(a1, a2, a3, ObjectType, v8);
    if (v10)
    {
      xpc_activity_set_criteria(a1, v10);
      xpc_dictionary_create(0, 0, 0);

      v11 = sub_29EC23460();
      v12 = sub_29EC23530();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_29EC1B4DC(a2, a3, &v20);
        _os_log_impl(&dword_29EC19000, v11, v12, "Set override criteria for XPC Activity ID: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x29EDACF00](v14, -1, -1);
        MEMORY[0x29EDACF00](v13, -1, -1);
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }

    oslog = sub_29EC23460();
    v17 = sub_29EC23500();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_29EC19000, oslog, v17, "No override criteria provided for XPC activity check-in", v18, 2u);
      MEMORY[0x29EDACF00](v18, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_29EC23460();
    v15 = sub_29EC23520();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_29EC19000, oslog, v15, "No delegate configured to handle background task activity", v16, 2u);
      MEMORY[0x29EDACF00](v16, -1, -1);
    }
  }
}

void sub_29EC1AFDC(_xpc_activity_s *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;

  v8 = sub_29EC23460();
  v9 = sub_29EC23530();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_29EC1B4DC(a2, a3, &v25);
    _os_log_impl(&dword_29EC19000, v8, v9, "Running XPC Activity: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x29EDACF00](v11, -1, -1);
    MEMORY[0x29EDACF00](v10, -1, -1);
  }

  if (xpc_activity_should_defer(a1))
  {

    v12 = sub_29EC23460();
    v13 = sub_29EC23530();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_29EC1B4DC(a2, a3, &v25);
      _os_log_impl(&dword_29EC19000, v12, v13, "Deferring XPC Activity %s due to system request", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x29EDACF00](v15, -1, -1);
      MEMORY[0x29EDACF00](v14, -1, -1);
    }

    xpc_activity_set_state(a1, 3);
  }

  else
  {
    if ((*(*v4 + 96))())
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      (*(v17 + 16))(a1, a2, a3, ObjectType, v17);

      oslog = sub_29EC23460();
      v19 = sub_29EC23530();

      if (os_log_type_enabled(oslog, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_29EC1B4DC(a2, a3, &v25);
        _os_log_impl(&dword_29EC19000, oslog, v19, "Finished running XPC Activity: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x29EDACF00](v21, -1, -1);
        MEMORY[0x29EDACF00](v20, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      oslog = sub_29EC23460();
      v22 = sub_29EC23520();
      if (os_log_type_enabled(oslog, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_29EC19000, oslog, v22, "No delegate configured to handle background task activity", v23, 2u);
        MEMORY[0x29EDACF00](v23, -1, -1);
      }
    }
  }
}

uint64_t NDFXPCActivityManager.deinit()
{
  v1 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_logger;
  v2 = sub_29EC23480();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NDFXPCActivityManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_logger;
  v2 = sub_29EC23480();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon21NDFXPCActivityManager_delegate);
  swift_unknownObjectRelease();
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v4, v5);
}

uint64_t sub_29EC1B4DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EC1B5A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29EC1BCA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_29EC1B5A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29EC1B6B4(a5, a6);
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
    result = sub_29EC235A0();
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

uint64_t sub_29EC1B6B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_29EC1B700(a1, a2);
  sub_29EC1B830(&unk_2A2551068);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29EC1B700(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EC1B91C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29EC235A0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29EC234E0();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EC1B91C(v10, 0);
        result = sub_29EC23590();
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

uint64_t sub_29EC1B830(uint64_t result)
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

  result = sub_29EC1B990(result, v12, 1, v3);
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

void *sub_29EC1B91C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E730, &qword_29EC23D20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29EC1B990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E730, &qword_29EC23D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for NDFXPCActivityManager()
{
  result = qword_2A188E948;
  if (!qword_2A188E948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EC1BB4C()
{
  result = sub_29EC23480();
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

uint64_t sub_29EC1BCA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_29EC1BD80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_29EC23560();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_29EC1BE2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_29EC23560();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_29EC1BEE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29EC231B8();
  v3 = sub_29EC23480();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t NDFUserDefaultsBackedProperty.__allocating_init(wrappedValue:_:key:)(char *a1, void *a2, void *a3, char *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  NDFUserDefaultsBackedProperty.init(wrappedValue:_:key:)(a1, a2, a3, a4);
  return v11;
}

char *NDFUserDefaultsBackedProperty.init(wrappedValue:_:key:)(char *a1, void *a2, void *a3, char *a4)
{
  v5 = v4;
  v61 = a3;
  v62 = a4;
  v60 = a2;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v9 = *(v8 - 1);
  v10 = v9[8];
  MEMORY[0x2A1C7C4A8](a1, a2);
  v58 = &v50[-v11];
  v12 = sub_29EC23560();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v50[-v15];
  v17 = v9[7];
  v17(&v5[*(v7 + 136)], 1, 1, v8);
  v18 = *(*v5 + 144);
  v19 = sub_29EC231B8();
  v20 = sub_29EC23480();
  (*(*(v20 - 8) + 16))(&v5[v18], v19, v20);
  v21 = v62;
  *(v5 + 2) = v61;
  *(v5 + 3) = v21;
  v22 = *(*v5 + 120);
  v61 = v9;
  v62 = a1;
  v23 = v9[2];
  v23(&v5[v22], a1, v8);
  v24 = v60;
  *&v5[*(*v5 + 128)] = v60;
  v25 = v24;
  sub_29EC1CA20(v16);
  v60 = v8;
  v26 = v8;
  v27 = v59;
  v17(v16, 0, 1, v26);
  v28 = *(*v5 + 136);
  swift_beginAccess();
  v29 = *(v27 + 40);
  v56 = v16;
  v57 = v12;
  v29(&v5[v28], v16, v12);
  swift_endAccess();
  v30 = *(*v5 + 144);
  v31 = v25;

  v32 = sub_29EC23460();
  v33 = sub_29EC23510();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v52 = v23;
    v35 = v34;
    v36 = swift_slowAlloc();
    v53 = v36;
    v54 = swift_slowAlloc();
    v63[0] = v54;
    *v35 = 138413058;
    *(v35 + 4) = v31;
    *v36 = v31;
    *(v35 + 12) = 2080;
    v51 = v33;
    v38 = *(v5 + 2);
    v37 = *(v5 + 3);
    v55 = v31;

    v39 = sub_29EC1B4DC(v38, v37, v63);

    *(v35 + 14) = v39;
    *(v35 + 22) = 2080;
    (*(v27 + 16))(v56, &v5[v28], v57);
    v40 = sub_29EC234C0();
    v42 = sub_29EC1B4DC(v40, v41, v63);

    *(v35 + 24) = v42;
    *(v35 + 32) = 2080;
    v43 = v60;
    v52(v58, &v5[*(*v5 + 120)], v60);
    v44 = sub_29EC234C0();
    v46 = sub_29EC1B4DC(v44, v45, v63);

    *(v35 + 34) = v46;
    _os_log_impl(&dword_29EC19000, v32, v51, "Initialized NDFUserDefaultsBackingStore with %@ for key: %s, value: %s [default: %s]", v35, 0x2Au);
    v47 = v53;
    sub_29EC1D1B4(v53);
    MEMORY[0x29EDACF00](v47, -1, -1);
    v48 = v54;
    swift_arrayDestroy();
    MEMORY[0x29EDACF00](v48, -1, -1);
    MEMORY[0x29EDACF00](v35, -1, -1);

    (v61[1])(v62, v43);
  }

  else
  {

    (v61[1])(v62, v60);
  }

  return v5;
}

uint64_t sub_29EC1C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(*(a3 + a4 - 32) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1, a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6);
  return (*(**a2 + 192))(v7);
}

uint64_t sub_29EC1C600@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_29EC23560();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v13 - v8;
  sub_29EC1BD80(&v13 - v8);
  v10 = *(v3 - 8);
  v11 = *(v10 + 48);
  if (v11(v9, 1, v3) != 1)
  {
    return (*(v10 + 32))(a1, v9, v3);
  }

  (*(v10 + 16))(a1, v1 + *(*v1 + 120), v3);
  result = (v11)(v9, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_29EC1C7B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_29EC1D21C(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*sub_29EC1C830(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_29EC1C600(v9);
  return sub_29EC1C944;
}

void sub_29EC1C944(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_29EC1D21C(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_29EC1D21C((*a1)[4], a2);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_29EC1CA20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_29EC23560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v5, v8);
  v11 = &v49 - v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v9, v14);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v49 - v19;
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v49 - v22;
  v24 = *&v2[*(v3 + 128)];
  v25 = *(v2 + 3);
  v53 = *(v2 + 2);
  v54 = v25;
  v26 = sub_29EC234A0();
  v27 = [v24 valueForKey_];

  if (v27)
  {
    sub_29EC23570();
    swift_unknownObjectRelease();
    sub_29EC1DBE0(&v57, v58);
  }

  else
  {
    memset(v58, 0, sizeof(v58));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E740, &unk_29EC23DC0);
  v28 = swift_dynamicCast();
  v29 = *(v12 + 56);
  if (v28)
  {
    v29(v11, 0, 1, v4);
    v52 = *(v12 + 32);
    v52(v23, v11, v4);
    v30 = *(*v2 + 144);
    v31 = *(v12 + 16);
    v31(v20, v23, v4);

    v32 = sub_29EC23460();
    v33 = sub_29EC23530();

    v51 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v58[0] = v50;
      *v34 = 136315394;
      v31(v55, v20, v4);
      v35 = sub_29EC234C0();
      v37 = v36;
      (*(v12 + 8))(v20, v4);
      v38 = sub_29EC1B4DC(v35, v37, v58);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_29EC1B4DC(v53, v54, v58);
      _os_log_impl(&dword_29EC19000, v32, v51, "Loaded value %s for key: %s", v34, 0x16u);
      v39 = v50;
      swift_arrayDestroy();
      MEMORY[0x29EDACF00](v39, -1, -1);
      MEMORY[0x29EDACF00](v34, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v20, v4);
    }

    return (v52)(v56, v23, v4);
  }

  else
  {
    v29(v11, 1, 1, v4);
    (*(v6 + 8))(v11, v5);
    v40 = *(*v2 + 144);

    v41 = sub_29EC23460();
    v42 = sub_29EC23530();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v58[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_29EC1B4DC(v53, v54, v58);
      *(v43 + 12) = 2080;
      (*(v12 + 16))(v55, &v2[*(*v2 + 120)], v4);
      v45 = sub_29EC234C0();
      v47 = sub_29EC1B4DC(v45, v46, v58);

      *(v43 + 14) = v47;
      _os_log_impl(&dword_29EC19000, v41, v42, "No stored value found for key: %s, using default: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29EDACF00](v44, -1, -1);
      MEMORY[0x29EDACF00](v43, -1, -1);
    }

    return (*(v12 + 16))(v56, &v2[*(*v2 + 120)], v4);
  }
}

char *NDFUserDefaultsBackedProperty.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 120)], *(v1 + 80));

  v3 = *(*v0 + 136);
  v4 = sub_29EC23560();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 144);
  v6 = sub_29EC23480();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t NDFUserDefaultsBackedProperty.__deallocating_deinit()
{
  NDFUserDefaultsBackedProperty.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

uint64_t sub_29EC1D1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E738, &unk_29EC23D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29EC1D21C(uint64_t a1, uint64_t a2)
{
  v74 = *v2;
  v4 = *(v74 + 80);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x2A1C7C4A8](a1, a2);
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v78 = &v72 - v10;
  v11 = sub_29EC23560();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = *(TupleTypeMetadata2 - 8);
  v13 = *(v76 + 64);
  v15 = MEMORY[0x2A1C7C4A8](TupleTypeMetadata2, v14);
  v17 = &v72 - v16;
  v18 = *(v11 - 8);
  v19 = v18[8];
  v21 = MEMORY[0x2A1C7C4A8](v15, v20);
  v82 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v75 = &v72 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = &v72 - v28;
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v72 - v31;
  v33 = v5[2];
  v84 = a1;
  v87 = v5 + 2;
  v88 = v33;
  v33(&v72 - v31, a1, v4);
  v79 = v5[7];
  v80 = v5 + 7;
  v79(v32, 0, 1, v4);
  v83 = v2;
  sub_29EC1BD80(v29);
  v77 = TupleTypeMetadata2;
  v34 = *(TupleTypeMetadata2 + 48);
  v35 = v18[2];
  v35(v17, v32, v11);
  v85 = v34;
  v35(&v17[v34], v29, v11);
  v86 = v5;
  v36 = v5[6];
  v89 = v4;
  if (v36(v17, 1, v4) == 1)
  {
    v37 = v18[1];
    v37(v29, v11);
    v37(v32, v11);
    v38 = v89;
    if (v36(&v17[v85], 1, v89) == 1)
    {
      v37(v17, v11);
      return;
    }
  }

  else
  {
    v73 = v29;
    v39 = v18;
    v40 = v75;
    v35(v75, v17, v11);
    v41 = v85;
    if (v36(&v17[v85], 1, v89) != 1)
    {
      v66 = v86;
      v67 = v78;
      v38 = v89;
      (v86[4])(v78, &v17[v41], v89);
      v68 = *(v74 + 104);
      v69 = sub_29EC23490();
      v70 = v66[1];
      v70(v67, v38);
      v71 = v39[1];
      v71(v73, v11);
      v71(v32, v11);
      v70(v40, v38);
      v71(v17, v11);
      v43 = v84;
      v44 = v88;
      if (v69)
      {
        return;
      }

      goto LABEL_7;
    }

    v42 = v18[1];
    v42(v73, v11);
    v42(v32, v11);
    v38 = v89;
    (v86[1])(v40, v89);
  }

  (*(v76 + 8))(v17, v77);
  v43 = v84;
  v44 = v88;
LABEL_7:
  v72 = v11;
  v45 = v83;
  v46 = *(*v83 + 144);
  v47 = v81;
  v44(v81, v43, v38);

  v48 = sub_29EC23460();
  v49 = sub_29EC23530();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v90[0] = v89;
    *v50 = 136315650;
    v51 = v82;
    sub_29EC1BD80(v82);
    v52 = sub_29EC234C0();
    v54 = sub_29EC1B4DC(v52, v53, v90);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    v88(v78, v47, v38);
    v55 = sub_29EC234C0();
    v57 = v56;
    (v86[1])(v47, v38);
    v58 = sub_29EC1B4DC(v55, v57, v90);

    *(v50 + 14) = v58;
    *(v50 + 22) = 2080;
    *(v50 + 24) = sub_29EC1B4DC(v45[2], v45[3], v90);
    _os_log_impl(&dword_29EC19000, v48, v49, "Set value %s -> %s for key: %s", v50, 0x20u);
    v59 = v89;
    swift_arrayDestroy();
    MEMORY[0x29EDACF00](v59, -1, -1);
    v60 = v50;
    v44 = v88;
    MEMORY[0x29EDACF00](v60, -1, -1);
  }

  else
  {

    (v86[1])(v47, v38);
    v51 = v82;
  }

  v44(v51, v43, v38);
  v79(v51, 0, 1, v38);
  sub_29EC1BE2C(v51);
  v61 = *(v45 + *(*v45 + 128));
  v62 = sub_29EC235C0();
  v63 = v45[2];
  v64 = v45[3];
  v65 = sub_29EC234A0();
  [v61 setValue:v62 forKey:v65];
  swift_unknownObjectRelease();
}

__n128 sub_29EC1D9FC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_29EC1DA0C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_29EC23560();
    if (v4 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = sub_29EC23480();
      if (v5 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

_OWORD *sub_29EC1DBE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t NonReentrantAsyncMethod.init(continuation:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for NonReentrantAsyncMethod();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t type metadata accessor for NonReentrantAsyncMethod()
{
  result = qword_2A188E9D8;
  if (!qword_2A188E9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NonReentrantAsyncMethod.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NonReentrantAsyncMethod.continuation.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_29EC1DDEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NonReentrantAsyncMethod() + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = &unk_29EC23E30;
  a2[1] = v6;
}

uint64_t sub_29EC1DE6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29EC1DF54;

  return v6();
}

uint64_t sub_29EC1DF54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EC1E048(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for NonReentrantAsyncMethod() + 20));
  v7 = v6[1];

  *v6 = &unk_29EC23E20;
  v6[1] = v5;
  return result;
}

uint64_t sub_29EC1E0C8(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EC1E70C;

  return v5();
}

uint64_t NonReentrantAsyncMethod.block.getter()
{
  v1 = (v0 + *(type metadata accessor for NonReentrantAsyncMethod() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NonReentrantAsyncMethod.block.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NonReentrantAsyncMethod() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_29EC1E294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
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

uint64_t sub_29EC1E370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E748, &qword_29EC23DD0);
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

void sub_29EC1E434()
{
  sub_29EC1E4B8();
  if (v0 <= 0x3F)
  {
    sub_29EC1E51C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29EC1E4B8()
{
  if (!qword_2A188E750)
  {
    v0 = sub_29EC234F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A188E750);
    }
  }
}

unint64_t sub_29EC1E51C()
{
  result = qword_2A188E758;
  if (!qword_2A188E758)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A188E758);
  }

  return result;
}

uint64_t sub_29EC1E56C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EC1E5A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_29EC1E70C;

  return sub_29EC1E0C8(v2);
}

uint64_t sub_29EC1E650(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EC1DF54;

  return sub_29EC1DE6C(a1, v5);
}

uint64_t sub_29EC1E74C()
{
  v1 = *v0;
  sub_29EC23650();
  sub_29EC23660();
  return sub_29EC23680();
}

uint64_t sub_29EC1E7C0()
{
  v1 = *v0;
  sub_29EC23650();
  sub_29EC23660();
  return sub_29EC23680();
}

uint64_t sub_29EC1E804@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29EC21B20(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

id NDFDevicePayload.init(coder:)(id a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v123 = &v115[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v125 = &v115[-v11];
  MEMORY[0x2A1C7C4A8](v10, v12);
  v131 = &v115[-v13];
  v14 = sub_29EC23450();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v129 = &v115[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v18, v20);
  v130 = &v115[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E768, &qword_29EC23E58);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8, v24);
  v26 = &v115[-v25];
  v27 = sub_29EC23430();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v33 = &v115[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v31, v34);
  v136 = &v115[-v35];
  v36 = (v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceModel);
  *v36 = 0;
  v36[1] = 0;
  v37 = v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_designatedDeviceReachability;
  *v37 = 0;
  v124 = v37;
  v37[2] = 1;
  v134 = v15;
  v38 = *(v15 + 56);
  v137 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID;
  v132 = v14;
  v133 = v38;
  v38(v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID, 1, 1, v14);
  v138 = v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_netSigV4;
  *v138 = xmmword_29EC23E40;
  v139 = v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_netSigV6;
  v128 = xmmword_29EC23E40;
  *v139 = xmmword_29EC23E40;
  v39 = (v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_obscuredSSID);
  *v39 = 0;
  v39[1] = 0;
  v140 = v39;
  v40 = v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_natCount;
  *v40 = 0;
  v126 = v40;
  v40[2] = 1;
  v41 = v1 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_networkProperties;
  *v41 = 0;
  v127 = v41;
  v41[8] = 1;
  sub_29EC21DF0(0, &qword_2A188E770, 0x29EDB8DB0);
  v42 = sub_29EC23550();
  if (!v42)
  {
    goto LABEL_8;
  }

  v43 = v42;
  v135 = a1;
  (*(v28 + 56))(v26, 1, 1, v27);
  sub_29EC21C60(&qword_2A188E778, MEMORY[0x29EDB9BC8]);
  sub_29EC235B0();

  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {

LABEL_9:
    v55 = v36[1];

    sub_29EC21B44(v2 + v137);
    sub_29EC21BAC(*v138, *(v138 + 1));
    sub_29EC21BAC(*v139, *(v139 + 1));
    v56 = v140[1];

    type metadata accessor for NDFDevicePayload();
    v57 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x30);
    v58 = *((*MEMORY[0x29EDCA1E8] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v44 = *(v28 + 32);
  v44(v33, v26, v27);
  v45 = v136;
  v44(v136, v33, v27);
  v46 = sub_29EC21DF0(0, &qword_2A188E780, 0x29EDBA140);
  a1 = v135;
  v47 = sub_29EC23550();
  if (!v47)
  {
    (*(v28 + 8))(v45, v27);
    goto LABEL_8;
  }

  v48 = v47;
  v120 = v46;
  v121 = v28;
  v122 = v27;
  v49 = v131;
  v50 = v132;
  v133(v131, 1, 1, v132);
  v51 = sub_29EC21C60(&qword_2A188E788, MEMORY[0x29EDB9C08]);
  sub_29EC235B0();

  v52 = v134;
  v54 = v134 + 48;
  v53 = *(v134 + 48);
  if (v53(v49, 1, v50) == 1)
  {
    (*(v121 + 8))(v136, v122);
LABEL_8:

    goto LABEL_9;
  }

  v119 = v54;
  v117 = v53;
  v118 = v51;
  v60 = *(v52 + 32);
  v61 = v129;
  (v60)(v129, v49, v50);
  v62 = v130;
  v131 = v60;
  (v60)(v130, v61, v50);
  sub_29EC21DF0(0, &qword_2A188E790, 0x29EDBA070);
  v63 = sub_29EC23550();
  if (!v63 || (LOWORD(v152) = 0, BYTE2(v152) = 1, v64 = v63, sub_29EC23620(), v64, BYTE2(v152) == 1))
  {

    (*(v134 + 8))(v62, v50);
    (*(v121 + 8))(v136, v122);
    goto LABEL_9;
  }

  v116 = v152;
  (*(v121 + 16))(v2 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_timestamp, v136, v122);
  (*(v134 + 16))(v2 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceID, v62, v50);
  v129 = sub_29EC21DF0(0, &qword_2A188E798, 0x29EDBA0F8);
  v65 = sub_29EC23550();
  if (v65)
  {
    v152 = 0;
    v153 = 0;
    v66 = v65;
    sub_29EC234B0();

    v67 = v153;
    if (v153)
    {
      v68 = v152;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
    v67 = 0;
  }

  v69 = 1;
  swift_beginAccess();
  v70 = v36[1];
  *v36 = v68;
  v36[1] = v67;

  *(v2 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceRole) = v116;
  v71 = sub_29EC23550();
  if (v71)
  {
    v150 = 0;
    v151 = 1;
    v72 = v71;
    sub_29EC23620();

    v73 = v150;
    v69 = v151;
  }

  else
  {
    v73 = 0;
  }

  v74 = 1;
  v75 = v124;
  swift_beginAccess();
  *v75 = v73;
  v75[2] = v69;
  v76 = sub_29EC23550();
  if (v76)
  {
    v77 = v76;
    v74 = 1;
    v78 = v123;
    v79 = v132;
    v133(v123, 1, 1, v132);
    sub_29EC235B0();

    v80 = v117(v78, 1, v79);
    v81 = v125;
    if (v80 != 1)
    {
      (v131)(v125, v78, v79);
      v74 = 0;
    }
  }

  else
  {
    v79 = v132;
    v81 = v125;
  }

  v133(v81, v74, 1, v79);
  v82 = v137;
  swift_beginAccess();
  sub_29EC21CA8(v81, v2 + v82);
  swift_endAccess();
  sub_29EC21DF0(0, &qword_2A188E7A0, 0x29EDB8DA0);
  v83 = v135;
  v84 = sub_29EC23550();
  if (v84)
  {
    v149 = v128;
    v85 = v84;
    sub_29EC233F0();

    v86 = *(&v149 + 1);
    v87 = v134;
    if (*(&v149 + 1) >> 60 == 15)
    {
      v88 = 0;
      v86 = 0xF000000000000000;
    }

    else
    {
      v88 = v149;
    }
  }

  else
  {
    v88 = 0;
    v86 = 0xF000000000000000;
    v87 = v134;
  }

  v89 = v138;
  swift_beginAccess();
  v90 = *v89;
  v91 = v89[1];
  *v89 = v88;
  v89[1] = v86;
  sub_29EC21BAC(v90, v91);
  v92 = sub_29EC23550();
  if (v92 && (v148 = v128, v93 = v92, sub_29EC233F0(), v93, v94 = *(&v148 + 1), *(&v148 + 1) >> 60 != 15))
  {
    v95 = v148;
  }

  else
  {
    v95 = 0;
    v94 = 0xF000000000000000;
  }

  v96 = v139;
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  *v96 = v95;
  v96[1] = v94;
  sub_29EC21BAC(v97, v98);
  v99 = sub_29EC23550();
  if (v99)
  {
    v146 = 0;
    v147 = 0;
    v100 = v99;
    sub_29EC234B0();

    v101 = v147;
    if (v147)
    {
      v102 = v146;
    }

    else
    {
      v102 = 0;
    }
  }

  else
  {
    v102 = 0;
    v101 = 0;
  }

  v103 = 1;
  v104 = v140;
  swift_beginAccess();
  v105 = v104[1];
  *v104 = v102;
  v104[1] = v101;

  v106 = sub_29EC23550();
  if (v106)
  {
    v144 = 0;
    v145 = 1;
    v107 = v106;
    sub_29EC23620();

    v108 = v144;
    v103 = v145;
  }

  else
  {
    v108 = 0;
  }

  v109 = 1;
  v110 = v126;
  swift_beginAccess();
  *v110 = v108;
  v110[2] = v103;
  v111 = sub_29EC23550();
  (*(v87 + 8))(v130, v79);
  (*(v121 + 8))(v136, v122);
  if (v111)
  {
    v142 = 0;
    v143 = 1;
    sub_29EC23640();

    v111 = v142;
    v109 = v143;
  }

  v112 = v127;
  swift_beginAccess();
  *v112 = v111;
  v112[8] = v109;
  v113 = type metadata accessor for NDFDevicePayload();
  v141.receiver = v2;
  v141.super_class = v113;
  v114 = objc_msgSendSuper2(&v141, sel_init);

  return v114;
}

uint64_t sub_29EC1F6DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29EC23450();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id NDFDevicePayload.init(timestamp:deviceID:deviceRole:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceModel];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_designatedDeviceReachability];
  *v8 = 0;
  v8[2] = 1;
  v9 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID;
  v10 = sub_29EC23450();
  v11 = *(v10 - 8);
  (*(v11 + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_netSigV4] = xmmword_29EC23E40;
  *&v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_netSigV6] = xmmword_29EC23E40;
  v12 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_obscuredSSID];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_natCount];
  *v13 = 0;
  v13[2] = 1;
  v14 = &v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_networkProperties];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_timestamp;
  v16 = sub_29EC23430();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v3[v15], a1, v16);
  (*(v11 + 16))(&v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceID], a2, v10);
  *&v3[OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceRole] = a3;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for NDFDevicePayload();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v11 + 8))(a2, v10);
  (*(v17 + 8))(a1, v16);
  return v18;
}

void sub_29EC1F9EC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v58 = &v57 - v7;
  v8 = sub_29EC23450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29EC23430();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x29EDCA1E8];
  (*((*MEMORY[0x29EDCA1E8] & *v1) + 0xC0))(v18);
  v22 = sub_29EC23410();
  (*(v15 + 8))(v20, v14);
  v23 = sub_29EC234A0();
  [a1 encodeObject:v22 forKey:v23];

  (*((*v21 & *v2) + 0xD8))();
  v24 = sub_29EC23440();
  v57 = *(v9 + 8);
  v57(v13, v8);
  v25 = sub_29EC234A0();
  [a1 encodeObject:v24 forKey:v25];

  (*((*v21 & *v2) + 0x108))();
  if (v26)
  {
    v27 = sub_29EC234A0();
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_29EC234A0();
  [a1 encodeObject:v27 forKey:v28];
  swift_unknownObjectRelease();

  (*((*v21 & *v2) + 0xF0))();
  v29 = sub_29EC23610();
  v30 = sub_29EC234A0();
  [a1 encodeObject:v29 forKey:v30];

  if (((*((*v21 & *v2) + 0x120))() & 0x10000) != 0)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_29EC23610();
  }

  v32 = v58;
  v33 = sub_29EC234A0();
  [a1 encodeObject:v31 forKey:v33];
  swift_unknownObjectRelease();

  v34 = MEMORY[0x29EDCA1E8];
  (*((*MEMORY[0x29EDCA1E8] & *v2) + 0x138))();
  if ((*(v9 + 48))(v32, 1, v8) == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_29EC23440();
    v57(v32, v8);
  }

  v36 = sub_29EC234A0();
  [a1 encodeObject:v35 forKey:v36];
  swift_unknownObjectRelease();

  v37 = (*((*v34 & *v2) + 0x150))();
  if (v38 >> 60 == 15)
  {
    v39 = 0;
  }

  else
  {
    v40 = v37;
    v41 = v38;
    v39 = sub_29EC233E0();
    sub_29EC21BAC(v40, v41);
  }

  v42 = sub_29EC234A0();
  [a1 encodeObject:v39 forKey:v42];
  swift_unknownObjectRelease();

  v43 = (*((*v34 & *v2) + 0x168))();
  if (v44 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v46 = v43;
    v47 = v44;
    v45 = sub_29EC233E0();
    sub_29EC21BAC(v46, v47);
  }

  v48 = sub_29EC234A0();
  [a1 encodeObject:v45 forKey:v48];
  swift_unknownObjectRelease();

  (*((*v34 & *v2) + 0x180))();
  if (v49)
  {
    v50 = sub_29EC234A0();
  }

  else
  {
    v50 = 0;
  }

  v51 = sub_29EC234A0();
  [a1 encodeObject:v50 forKey:v51];
  swift_unknownObjectRelease();

  if (((*((*v34 & *v2) + 0x198))() & 0x10000) != 0)
  {
    v52 = 0;
  }

  else
  {
    v52 = sub_29EC23610();
  }

  v53 = sub_29EC234A0();
  [a1 encodeObject:v52 forKey:v53];
  swift_unknownObjectRelease();

  (*((*v34 & *v2) + 0x1B0))();
  if (v54)
  {
    v55 = 0;
  }

  else
  {
    v55 = sub_29EC23630();
  }

  v56 = sub_29EC234A0();
  [a1 encodeObject:v55 forKey:v56];
  swift_unknownObjectRelease();
}

uint64_t sub_29EC20350(uint64_t a1, void **a2)
{
  v4 = sub_29EC23430();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return (*((*MEMORY[0x29EDCA1E8] & **a2) + 0xC8))(v8);
}

uint64_t sub_29EC20540(uint64_t a1, void **a2)
{
  v4 = sub_29EC23450();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return (*((*MEMORY[0x29EDCA1E8] & **a2) + 0xE0))(v8);
}

uint64_t sub_29EC2065C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_29EC20708(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_29EC207FC@<X0>(void **a1@<X0>, _WORD *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_29EC208B0()
{
  v1 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceRole;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_29EC208F4(__int16 a1)
{
  v3 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_deviceRole;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_29EC209A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x108))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC20A08(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x29EDCA1E8] & **a2) + 0x110);

  return v4(v2, v3);
}

uint64_t sub_29EC20B00@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x120))();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_29EC20CB0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_29EC21D18(a1, &v10 - v7);
  return (*((*MEMORY[0x29EDCA1E8] & **a2) + 0x140))(v8);
}

uint64_t sub_29EC20D88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID;
  swift_beginAccess();
  return sub_29EC21D18(v1 + v3, a1);
}

uint64_t sub_29EC20DE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_homeKitGroupID;
  swift_beginAccess();
  sub_29EC21CA8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_29EC20EA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x150))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC20F04(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x29EDCA1E8] & **a2) + 0x158);
  sub_29EC21D88(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_29EC21000@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC21064(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x29EDCA1E8] & **a2) + 0x170);
  sub_29EC21D88(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_29EC210F4(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_29EC21D88(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_29EC21158(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_29EC21BAC(v7, v8);
}

uint64_t sub_29EC21214@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x180))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_29EC21278(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x29EDCA1E8] & **a2) + 0x188);

  return v4(v2, v3);
}

uint64_t sub_29EC21304(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_29EC21364(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_29EC21420@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x198))();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_29EC21508(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  return *v2 | (*(v2 + 2) << 16);
}

uint64_t sub_29EC21560(int a1, void *a2)
{
  v4 = v2 + *a2;
  result = swift_beginAccess();
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t sub_29EC21610@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x1B0))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_29EC216E8()
{
  v1 = (v0 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_networkProperties);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29EC21734(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload_networkProperties;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void *sub_29EC217F4()
{
  v6[1] = *MEMORY[0x29EDCA608];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_29EC23400();
  }

  else
  {
    v3 = v2;
    sub_29EC233D0();

    swift_willThrow();
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t static NDFDevicePayload.decodedObject(from:)()
{
  sub_29EC21DF0(0, &qword_2A188E7A8, 0x29EDBA000);
  type metadata accessor for NDFDevicePayload();
  return sub_29EC23540();
}

id NDFDevicePayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NDFDevicePayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDFDevicePayload();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EC21B20(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 6u) << 8);
}

uint64_t sub_29EC21B44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EC21BAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EC21BC0(a1, a2);
  }

  return a1;
}

uint64_t sub_29EC21BC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for NDFDevicePayload()
{
  result = qword_2A188EBF0;
  if (!qword_2A188EBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EC21C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29EC21CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EC21D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188E760, &qword_29EC23E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EC21D88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29EC21D9C(a1, a2);
  }

  return a1;
}

uint64_t sub_29EC21D9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29EC21DF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_29EC21E3C()
{
  result = qword_2A188E7B0;
  if (!qword_2A188E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E7B0);
  }

  return result;
}

void sub_29EC21EA8()
{
  v0 = sub_29EC23430();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_29EC23450();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_29EC228A8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_29EC228A8()
{
  if (!qword_2A188E820)
  {
    sub_29EC23450();
    v0 = sub_29EC23560();
    if (!v1)
    {
      atomic_store(v0, &qword_2A188E820);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NDFDaemonError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NDFDaemonError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_29EC22968(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EC22984(uint64_t result, int a2)
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

SymptomNetworkDiagnosticsCommon::NDFDeviceRole_optional __swiftcall NDFDeviceRole.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_29EC22A24()
{
  v1 = *v0;
  sub_29EC23650();
  sub_29EC23670();
  return sub_29EC23680();
}

uint64_t sub_29EC22A6C()
{
  v1 = *v0;
  sub_29EC23650();
  sub_29EC23670();
  return sub_29EC23680();
}

unint64_t sub_29EC22ADC()
{
  result = qword_2A188E890;
  if (!qword_2A188E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E890);
  }

  return result;
}

unint64_t sub_29EC22B34()
{
  result = qword_2A188E898;
  if (!qword_2A188E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E898);
  }

  return result;
}

unint64_t sub_29EC22B8C()
{
  result = qword_2A188E8A0;
  if (!qword_2A188E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E8A0);
  }

  return result;
}

unint64_t sub_29EC22BE4()
{
  result = qword_2A188E8A8;
  if (!qword_2A188E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E8A8);
  }

  return result;
}

unint64_t sub_29EC22C48()
{
  result = qword_2A188E8B0;
  if (!qword_2A188E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E8B0);
  }

  return result;
}

unint64_t sub_29EC22CA0()
{
  result = qword_2A188E8B8;
  if (!qword_2A188E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A188E8B8);
  }

  return result;
}

BOOL sub_29EC22D38(void *a1, uint64_t *a2)
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

void *sub_29EC22D68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_29EC22D94@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_29EC22E80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _s31SymptomNetworkDiagnosticsCommon13NDFDeviceRoleOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s31SymptomNetworkDiagnosticsCommon13NDFDeviceRoleOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFNetworkProperties(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NDFNetworkProperties(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_29EC2309C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_29EC23128()
{
  v0 = sub_29EC23480();
  __swift_allocate_value_buffer(v0, qword_2A188E920);
  __swift_project_value_buffer(v0, qword_2A188E920);
  v1 = sub_29EC23360();
  v2 = *v1;
  v3 = v1[1];

  v4 = sub_29EC23388();
  v5 = *v4;
  v6 = *(v4 + 1);

  return sub_29EC23470();
}

uint64_t sub_29EC231B8()
{
  if (qword_2A188F180 != -1)
  {
    swift_once();
  }

  v0 = sub_29EC23480();

  return __swift_project_value_buffer(v0, qword_2A188E920);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29EC23254@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A188F180 != -1)
  {
    swift_once();
  }

  v2 = sub_29EC23480();
  v3 = __swift_project_value_buffer(v2, qword_2A188E920);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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