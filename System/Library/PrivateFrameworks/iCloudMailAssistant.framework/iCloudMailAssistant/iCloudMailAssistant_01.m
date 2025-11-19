uint64_t sub_2148A7B4C()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v6 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_2148A7ED8;
  }

  else
  {
    sub_2148AA7D0(v2 + 16);
    v4 = sub_2148A7C68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2148A7C68()
{
  v1 = *(v0 + 488) + 1;
  if (v1 == *(v0 + 480))
  {
    v2 = *(v0 + 464);
    (*(v0 + 456))(*(v0 + 432), *(v0 + 448), *(v0 + 408));
    v3 = sub_21498E670();
    v4 = sub_21498FBD0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21488E000, v3, v4, "MAUnsubscribeAction: Background Task Completed", v5, 2u);
      MEMORY[0x216059AC0](v5, -1, -1);
    }

    v6 = *(v0 + 472);
    v7 = *(v0 + 432);
    v8 = *(v0 + 408);
    v9 = *(v0 + 416);

    v6(v7, v8);
    *(v0 + 512) = objc_opt_self();
    sub_21498FAB0();
    *(v0 + 520) = sub_21498FAA0();
    v11 = sub_21498FA50();

    return MEMORY[0x2822009F8](sub_2148A820C, v11, v10);
  }

  else
  {
    *(v0 + 488) = v1;
    v12 = *(v0 + 360);
    v13 = *(v0 + 352) + 72 * v1;
    *(v0 + 88) = *(v13 + 32);
    v15 = *(v13 + 64);
    v14 = *(v13 + 80);
    v16 = *(v13 + 96);
    *(v0 + 104) = *(v13 + 48);
    *(v0 + 152) = v16;
    *(v0 + 136) = v14;
    *(v0 + 120) = v15;
    v18 = *(v13 + 64);
    v17 = *(v13 + 80);
    v19 = *(v13 + 48);
    *(v0 + 80) = *(v13 + 96);
    *(v0 + 48) = v18;
    *(v0 + 64) = v17;
    *(v0 + 32) = v19;
    *(v0 + 16) = *(v13 + 32);
    v20 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v21 = *(v0 + 64);
    *(v0 + 192) = *(v0 + 48);
    *(v0 + 208) = v21;
    *(v0 + 224) = *(v0 + 80);
    v22 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v22;
    v23 = *v20;
    sub_2148A8F4C(v0 + 88, v0 + 232);
    v24 = swift_task_alloc();
    *(v0 + 496) = v24;
    *v24 = v0;
    v24[1] = sub_2148A7B4C;
    v25 = *(v0 + 384);
    v26 = *(v0 + 392);
    v27 = *(v0 + 368);
    v28 = *(v0 + 376);

    return sub_2149346F4(v0 + 160, 1, v27, v28, v25, v26);
  }
}

uint64_t sub_2148A7ED8()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 408);
  sub_2148AA7D0(v0 + 16);
  v2(v4, v3, v5);
  v6 = sub_21498E670();
  v7 = sub_21498FBB0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "MAUnsubscribeAction: Error While Unsubscribing", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = *(v0 + 472);
  v10 = *(v0 + 424);
  v11 = *(v0 + 408);
  v12 = *(v0 + 416) + 8;

  v9(v10, v11);
  v13 = *(v0 + 488) + 1;
  if (v13 == *(v0 + 480))
  {
    v14 = *(v0 + 464);
    (*(v0 + 456))(*(v0 + 432), *(v0 + 448), *(v0 + 408));
    v15 = sub_21498E670();
    v16 = sub_21498FBD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21488E000, v15, v16, "MAUnsubscribeAction: Background Task Completed", v17, 2u);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v18 = *(v0 + 472);
    v19 = *(v0 + 432);
    v20 = *(v0 + 408);
    v21 = *(v0 + 416);

    v18(v19, v20);
    *(v0 + 512) = objc_opt_self();
    sub_21498FAB0();
    *(v0 + 520) = sub_21498FAA0();
    v23 = sub_21498FA50();

    return MEMORY[0x2822009F8](sub_2148A820C, v23, v22);
  }

  else
  {
    *(v0 + 488) = v13;
    v24 = *(v0 + 360);
    v25 = *(v0 + 352) + 72 * v13;
    *(v0 + 88) = *(v25 + 32);
    v27 = *(v25 + 64);
    v26 = *(v25 + 80);
    v28 = *(v25 + 96);
    *(v0 + 104) = *(v25 + 48);
    *(v0 + 152) = v28;
    *(v0 + 136) = v26;
    *(v0 + 120) = v27;
    v30 = *(v25 + 64);
    v29 = *(v25 + 80);
    v31 = *(v25 + 48);
    *(v0 + 80) = *(v25 + 96);
    *(v0 + 48) = v30;
    *(v0 + 64) = v29;
    *(v0 + 32) = v31;
    *(v0 + 16) = *(v25 + 32);
    v32 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v33 = *(v0 + 64);
    *(v0 + 192) = *(v0 + 48);
    *(v0 + 208) = v33;
    *(v0 + 224) = *(v0 + 80);
    v34 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v34;
    v35 = *v32;
    sub_2148A8F4C(v0 + 88, v0 + 232);
    v36 = swift_task_alloc();
    *(v0 + 496) = v36;
    *v36 = v0;
    v36[1] = sub_2148A7B4C;
    v37 = *(v0 + 384);
    v38 = *(v0 + 392);
    v39 = *(v0 + 368);
    v40 = *(v0 + 376);

    return sub_2149346F4(v0 + 160, 1, v39, v40, v37, v38);
  }
}

uint64_t sub_2148A820C()
{
  v1 = v0[65];
  v2 = v0[64];

  v0[66] = [v2 sharedApplication];

  return MEMORY[0x2822009F8](sub_2148A8294, 0, 0);
}

uint64_t sub_2148A8294()
{
  v1 = v0[66];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = v0[50];
  swift_beginAccess();
  [v1 endBackgroundTask_];

  v6 = *MEMORY[0x277D767B0];
  swift_beginAccess();
  *(v5 + 16) = v6;

  v7 = v0[1];

  return v7();
}

uint64_t sub_2148A8374()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_items;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A580, &unk_2149924C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayPostUnsubscribeMs, &qword_27CA1A578, &qword_2149924B8);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayMailtoUnsubscribeMs, &qword_27CA1A578, &qword_2149924B8);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayUnsubscribeLinkMs, &qword_27CA1A578, &qword_2149924B8);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_mailtoUnsubscribeTimeoutMs, &qword_27CA1A578, &qword_2149924B8);
  v5 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onSuccessActions);

  v6 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions);

  v7 = *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onCompletionActions);

  return v0;
}

uint64_t sub_2148A8498()
{
  sub_2148A8374();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MAUnsubscribeAction()
{
  result = qword_27CA1A528;
  if (!qword_27CA1A528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148A8544()
{
  sub_2148A8638();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2148A875C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2148A8638()
{
  if (!qword_27CA1A538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A540, &qword_2149923D0);
    sub_2148A86A8();
    v0 = sub_21498E770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1A538);
    }
  }
}

unint64_t sub_2148A86A8()
{
  result = qword_27CA1A548;
  if (!qword_27CA1A548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A540, &qword_2149923D0);
    sub_2148AAB50(&qword_27CA1A550, MEMORY[0x277D232B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A548);
  }

  return result;
}

void sub_2148A875C()
{
  if (!qword_27CA1A558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A560, &qword_2149923D8);
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1A558);
    }
  }
}

uint64_t sub_2148A87C0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899138;

  return sub_2148A595C(a1, a2);
}

void (**sub_2148A891C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>))(char *, uint64_t, uint64_t)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_2148A48B0(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

void *sub_2148A8A04(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_2148A9494(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5C0, &qword_214992520);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2148A8B48(uint64_t result)
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

  result = sub_2148A962C(result, v11, 1, v3);
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

uint64_t sub_2148A8C40(uint64_t result)
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

  result = sub_2148A9750(result, v11, 1, v3);
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

uint64_t sub_2148A8D74(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_2148A99BC(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_2148A8ED0()
{
  result = qword_27CA1A588;
  if (!qword_27CA1A588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A540, &qword_2149923D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A588);
  }

  return result;
}

char *sub_2148A8FA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A598, &qword_2149924E8);
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

char *sub_2148A90C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
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

char *sub_2148A91D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A590, &qword_2149924E0);
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

void *sub_2148A934C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2148A9494(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5C8, &qword_214992528);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5C0, &qword_214992520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2148A962C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A630, &qword_214992568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2148A9750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A638, &unk_214992570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2148A9878(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A618, &qword_214992550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 384);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[384 * v8])
    {
      memmove(v12, v13, 384 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2148A99BC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2148A9B98(char *a1, int64_t a2, char a3)
{
  result = sub_2148A9D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2148A9BB8(char *a1, int64_t a2, char a3)
{
  result = sub_2148A9E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2148A9BD8(void *a1, int64_t a2, char a3)
{
  result = sub_2148AA150(a1, a2, a3, *v3, &qword_27CA1A5C8, &qword_214992528, &qword_27CA1A5C0, &qword_214992520);
  *v3 = result;
  return result;
}

size_t sub_2148A9C18(size_t a1, int64_t a2, char a3)
{
  result = sub_2148A9F74(a1, a2, a3, *v3, &qword_27CA1A608, &qword_214992540, MEMORY[0x277D232B0]);
  *v3 = result;
  return result;
}

size_t sub_2148A9C5C(size_t a1, int64_t a2, char a3)
{
  result = sub_2148A9F74(a1, a2, a3, *v3, &qword_27CA1A620, &qword_214992558, type metadata accessor for MATipDismissal);
  *v3 = result;
  return result;
}

void *sub_2148A9CA0(void *a1, int64_t a2, char a3)
{
  result = sub_2148AA150(a1, a2, a3, *v3, &qword_27CA1A670, &unk_2149926E0, &qword_27CA1A678, &qword_2149940C0);
  *v3 = result;
  return result;
}

void *sub_2148A9CE0(void *a1, int64_t a2, char a3)
{
  result = sub_2148AA150(a1, a2, a3, *v3, &qword_27CA1A660, &qword_2149926D0, &qword_27CA1A668, &qword_2149926D8);
  *v3 = result;
  return result;
}

char *sub_2148A9D20(char *a1, int64_t a2, char a3)
{
  result = sub_2148AA298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2148A9D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A590, &qword_2149924E0);
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

char *sub_2148A9E68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
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

size_t sub_2148A9F74(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_2148AA150(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2148AA298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A628, &qword_214992560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2148AA3C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  sub_21498E8D0();
  v10 = sub_21498E7C0();
  v11 = *(v10 - 8);
  v12 = 0;
  v13 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_2148AA824(v9, v7, &qword_27CA1A330, &qword_2149916E0);
    if ((*(v11 + 88))(v7, v10) == *MEMORY[0x277D232A0])
    {
      (*(v11 + 96))(v7, v10);
      v14 = *v7;
      v12 = *(v14 + 16);
      v13 = *(v14 + 24);
    }

    else
    {
      (*(v11 + 8))(v7, v10);
      v12 = 0;
      v13 = 0;
    }
  }

  result = sub_21489DFCC(v9, &qword_27CA1A330, &qword_2149916E0);
  v16 = 0;
  v17 = *(a2 + 16);
  v18 = a2 - 8;
  v19 = MEMORY[0x277D84F90];
LABEL_6:
  v20 = (v18 + 72 * v16);
  while (1)
  {
    if (v17 == v16)
    {
      return v12;
    }

    if (v16 >= v17)
    {
      break;
    }

    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_18;
    }

    v22 = v20[10];
    ++v16;
    v20 += 9;
    if (v22)
    {
      v31 = v13;
      v32 = v12;
      v23 = *v20;
      v25 = v20[2];
      v24 = v20[3];
      v30 = v20[4];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2148A8FA8(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_2148A8FA8((v26 > 1), v27 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 16) = v27 + 1;
      v28 = (v19 + 40 * v27);
      v28[4] = v23;
      v28[5] = v22;
      v28[6] = v25;
      v28[7] = v24;
      v13 = v31;
      v28[8] = v30;
      v16 = v21;
      v12 = v32;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2148AA6D8(uint64_t a1)
{
  v4 = v1[3];
  v13 = v1[2];
  v5 = v1[4];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v10 = v1[14];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_214899138;

  return sub_2148A76F4(a1, v13, v4, v5, (v1 + 5), v6, v7, v8);
}

uint64_t sub_2148AA824(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2148AA88C(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2148AA930()
{
  result = qword_27CA1A5B8;
  if (!qword_27CA1A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A5B8);
  }

  return result;
}

unint64_t sub_2148AA984()
{
  result = qword_27CA1A5D8;
  if (!qword_27CA1A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A5D8);
  }

  return result;
}

uint64_t sub_2148AA9D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2148AAA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A578, &qword_2149924B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2148AAA9C()
{
  result = qword_27CA1A5F8;
  if (!qword_27CA1A5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A5F0, &qword_21499B770);
    sub_2148AAB50(&qword_27CA1A600, MEMORY[0x277D232F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A5F8);
  }

  return result;
}

uint64_t sub_2148AAB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MAUnsubscribeAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAUnsubscribeAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2148AACEC()
{
  result = qword_27CA1A648;
  if (!qword_27CA1A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A648);
  }

  return result;
}

unint64_t sub_2148AAD44()
{
  result = qword_27CA1A650;
  if (!qword_27CA1A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A650);
  }

  return result;
}

unint64_t sub_2148AAD9C()
{
  result = qword_27CA1A658;
  if (!qword_27CA1A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A658);
  }

  return result;
}

uint64_t sub_2148AADF0()
{
  v0 = sub_21498FEF0();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148AAE40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v135 = a2;
  v152 = sub_21498E690();
  v146 = *(v152 - 8);
  v3 = *(v146 + 8);
  v4 = MEMORY[0x28223BE20](v152);
  v6 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v137 = &v120 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v139 = &v120 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v120 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v138 = &v120 - v15;
  MEMORY[0x28223BE20](v14);
  v134 = &v120 - v16;
  v17 = sub_21498E7C0();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v136 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v120 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v140 = &v120 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v120 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v120 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = (&v120 - v33);
  v144 = v18[2];
  v145 = v18 + 2;
  v144(&v120 - v33, a1, v17);
  v141 = v18[11];
  v142 = v18 + 11;
  if (v141(v34, v17) == *MEMORY[0x277D23270])
  {
    v35 = v18[12];
    v127 = v17;
    v129 = v18 + 12;
    v128 = v35;
    v35(v34, v17);
    v36 = *v34;
    v37 = *(v36 + 16);

    sub_2148AE1C0(v38, &v147);
    v39 = v147;
    v40 = v148;
    v41 = v151;
    if (*(v37 + 16))
    {
      v130 = v147;
      v131 = v148;
      v132 = v149;
      v133 = v150;
      v143 = v18;
      v42 = sub_214907F9C(0x4579616C70736964, 0xEC0000006C69616DLL);
      v43 = v143;
      if (v44)
      {
        v45 = *(v37 + 56);
        v126 = v143[9];
        v46 = v127;
        v144(v32, v45 + v126 * v42, v127);
        v47 = v141(v32, v46);
        v48 = *MEMORY[0x277D232A0];
        v124 = v47;
        if (v47 == v48)
        {
          v125 = v36;
          v128(v32, v46);
          v50 = *(*v32 + 16);
          v49 = *(*v32 + 24);

          if (*(v37 + 16))
          {
            v51 = sub_214907F9C(0x6C69616D456C6C61, 0xE900000000000073);
            v52 = v152;
            v53 = v146;
            if (v54)
            {
              v144(v29, *(v37 + 56) + v51 * v126, v46);
              if (v141(v29, v46) == *MEMORY[0x277D23278])
              {
                v122 = v50;
                v121 = v49;
                v128(v29, v46);
                v53 = *(*v29 + 16);

                v139 = *(v53 + 2);
                if (v139)
                {
                  v55 = 0;
                  v56 = MEMORY[0x277D84F90];
                  v57 = v53;
                  v138 = v53;
                  v123 = v41;
                  while (1)
                  {
                    if (v55 >= *(v53 + 2))
                    {
                      __break(1u);
                      goto LABEL_68;
                    }

                    v58 = v140;
                    v144(v140, &v57[(*(v143 + 80) + 32) & ~*(v143 + 80)], v46);
                    v59 = v141(v58, v46);
                    if (v59 != v124)
                    {
                      break;
                    }

                    v128(v58, v46);
                    v60 = *(*v58 + 16);
                    v61 = *(*v58 + 24);

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v56 = sub_2148A90C8(0, *(v56 + 16) + 1, 1, v56);
                    }

                    v63 = *(v56 + 16);
                    v62 = *(v56 + 24);
                    v52 = v63 + 1;
                    if (v63 >= v62 >> 1)
                    {
                      v56 = sub_2148A90C8((v62 > 1), v63 + 1, 1, v56);
                    }

                    ++v55;
                    *(v56 + 16) = v52;
                    v64 = v56 + 16 * v63;
                    *(v64 + 32) = v60;
                    *(v64 + 40) = v61;
                    v57 += v126;
                    v53 = v138;
                    v41 = v123;
                    if (v139 == v55)
                    {
                      goto LABEL_53;
                    }
                  }

                  sub_2148AF724(v130, v131);

                  (v143[1])(v58, v46);
                  if (qword_281190DA0 != -1)
                  {
                    swift_once();
                  }

                  v112 = v152;
                  v113 = __swift_project_value_buffer(v152, qword_281194E18);
                  v114 = v146;
                  v115 = v134;
                  (*(v146 + 2))(v134, v113, v112);
                  v116 = sub_21498E670();
                  v117 = sub_21498FBB0();
                  if (os_log_type_enabled(v116, v117))
                  {
                    v118 = swift_slowAlloc();
                    *v118 = 0;
                    _os_log_impl(&dword_21488E000, v116, v117, "[LiftUIUnwantedSender] failed to parse element in array 'allEmails'", v118, 2u);
                    MEMORY[0x216059AC0](v118, -1, -1);
                  }

                  v114[1](v115, v112);
                  type metadata accessor for LiftUIUnwantedSenderError();
                  sub_2148AF6CC();
                  swift_allocError();
                  *v119 = MEMORY[0x277D837D0];
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                }

                v56 = MEMORY[0x277D84F90];
LABEL_53:

                v81 = v152;
                v83 = v146;
                v80 = v121;
                if (!*(v37 + 16))
                {
                  goto LABEL_54;
                }

LABEL_33:
                v87 = sub_214907F9C(0x7463656C65537369, 0xEA00000000006465);
                if (v88)
                {
                  v89 = v136;
                  v144(v136, *(v37 + 56) + v126 * v87, v46);

                  if (v141(v89, v46) == *MEMORY[0x277D23258])
                  {
                    v128(v89, v46);
                    v90 = *(*v89 + 16);

                    v91 = v135;
                    *v135 = v122;
                    v91[1] = v80;
                    v91[2] = v56;
                    *(v91 + 24) = v90;
                    v92 = v131;
                    v91[4] = v130;
                    v91[5] = v92;
                    v93 = v133;
                    v91[6] = v132;
                    v91[7] = v93;
                    v91[8] = v41;
                    return result;
                  }

                  sub_2148AF724(v130, v131);

                  (v143[1])(v89, v46);
                  goto LABEL_55;
                }

LABEL_54:
                sub_2148AF724(v130, v131);

LABEL_55:
                v106 = v137;
                if (qword_281190DA0 != -1)
                {
                  swift_once();
                }

                v107 = __swift_project_value_buffer(v81, qword_281194E18);
                v83[2](v106, v107, v81);
                v108 = sub_21498E670();
                v109 = sub_21498FBB0();
                if (os_log_type_enabled(v108, v109))
                {
                  v110 = swift_slowAlloc();
                  *v110 = 0;
                  _os_log_impl(&dword_21488E000, v108, v109, "[LiftUIUnwantedSender] failed to parse key 'isSelected'", v110, 2u);
                  MEMORY[0x216059AC0](v110, -1, -1);
                }

                (v83[1])(v106, v81);
                type metadata accessor for LiftUIUnwantedSenderError();
                sub_2148AF6CC();
                swift_allocError();
                *v111 = MEMORY[0x277D839B0];
LABEL_60:
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
              }

              sub_2148AF724(v130, v131);

              (v143[1])(v29, v46);
            }

            else
            {
              sub_2148AF724(v130, v131);
            }
          }

          else
          {
            sub_2148AF724(v130, v131);

            v52 = v152;
            v53 = v146;
          }

          v41 = v138;
          if (qword_281190DA0 != -1)
          {
LABEL_68:
            swift_once();
          }

          v101 = __swift_project_value_buffer(v52, qword_281194E18);
          (*(v53 + 2))(v41, v101, v52);
          v102 = sub_21498E670();
          v103 = sub_21498FBB0();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&dword_21488E000, v102, v103, "[LiftUIUnwantedSender] failed to parse key 'allEmails'", v104, 2u);
            MEMORY[0x216059AC0](v104, -1, -1);
          }

          (*(v53 + 1))(v41, v52);
          type metadata accessor for LiftUIUnwantedSenderError();
          sub_2148AF6CC();
          swift_allocError();
          *v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
          goto LABEL_60;
        }

        (v43[1])(v32, v46);
      }

      v40 = v131;
      v39 = v130;
      if (*(v37 + 16))
      {
        v75 = sub_214907F9C(0x6C69616D65, 0xE500000000000000);
        if (v76)
        {
          v77 = *(v37 + 56);
          v78 = v143;
          v126 = v143[9];
          v46 = v127;
          v144(v24, v77 + v126 * v75, v127);
          if (v141(v24, v46) == *MEMORY[0x277D232A0])
          {
            v125 = v36;
            v128(v24, v46);
            v79 = *(*v24 + 16);
            v80 = *(*v24 + 24);
            v122 = v79;

            if (qword_281190DA0 != -1)
            {
              swift_once();
            }

            v81 = v152;
            v82 = __swift_project_value_buffer(v152, qword_281194E18);
            v83 = v146;
            (*(v146 + 2))(v139, v82, v81);
            v84 = sub_21498E670();
            v85 = sub_21498FBB0();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 0;
              _os_log_impl(&dword_21488E000, v84, v85, "[LiftUIUnwantedSender] parsing 'email' in backward-compatible mode", v86, 2u);
              MEMORY[0x216059AC0](v86, -1, -1);
            }

            (v83[1])(v139, v81);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
            v56 = swift_allocObject();
            *(v56 + 16) = xmmword_214991720;
            *(v56 + 32) = v122;
            *(v56 + 40) = v80;

            if (!*(v37 + 16))
            {
              goto LABEL_54;
            }

            goto LABEL_33;
          }

          sub_2148AF724(v130, v131);
          (v78[1])(v24, v46);
LABEL_38:
          v94 = v152;
          v95 = v146;
          if (qword_281190DA0 != -1)
          {
            swift_once();
          }

          v96 = __swift_project_value_buffer(v94, qword_281194E18);
          v95[2](v13, v96, v94);
          v97 = sub_21498E670();
          v98 = sub_21498FBB0();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            *v99 = 0;
            _os_log_impl(&dword_21488E000, v97, v98, "[LiftUIUnwantedSender] failed to parse key 'displayEmail'", v99, 2u);
            MEMORY[0x216059AC0](v99, -1, -1);
          }

          (v95[1])(v13, v94);
          type metadata accessor for LiftUIUnwantedSenderError();
          sub_2148AF6CC();
          swift_allocError();
          *v100 = MEMORY[0x277D837D0];
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        v39 = v130;
        v40 = v131;
      }
    }

    sub_2148AF724(v39, v40);

    goto LABEL_38;
  }

  v143 = v18;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v65 = v152;
  v66 = __swift_project_value_buffer(v152, qword_281194E18);
  v67 = v146;
  (*(v146 + 2))(v6, v66, v65);
  v68 = sub_21498E670();
  v69 = sub_21498FBB0();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_21488E000, v68, v69, "[LiftUIUnwantedSender] DecodabelStateType is not a dictionary", v70, 2u);
    MEMORY[0x216059AC0](v70, -1, -1);
  }

  v67[1](v6, v65);
  type metadata accessor for LiftUIUnwantedSenderError();
  sub_2148AF6CC();
  swift_allocError();
  v72 = v71;
  v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6C8, &unk_214992A00) + 48);
  v144(v72, a1, v17);
  *&v72[v73] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D0, &qword_2149933D0);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v143[1])(v34, v17);
}

uint64_t sub_2148AC0BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7B0, &qword_214992E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148B0108();
  sub_2149901C0();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_21498FFC0();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_21498FFC0();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  sub_21498FFC0();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_21498FFC0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2148AC27C()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_214990180();
    sub_21498F900();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_214990180();
    if (v0[3])
    {
LABEL_3:
      v2 = v0[2];
      sub_214990180();
      sub_21498F900();
      if (v0[5])
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_214990180();
      if (v0[7])
      {
        goto LABEL_5;
      }

      return sub_214990180();
    }
  }

  sub_214990180();
  if (!v0[5])
  {
    goto LABEL_10;
  }

LABEL_4:
  v3 = v0[4];
  sub_214990180();
  sub_21498F900();
  if (!v0[7])
  {
    return sub_214990180();
  }

LABEL_5:
  v4 = v0[6];
  sub_214990180();

  return sub_21498F900();
}

uint64_t sub_2148AC38C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A788, &qword_214992E80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AFF34();
  sub_2149901C0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_214990000();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22) = 1;
    sub_21498FFC0();
    v15 = *(v3 + 3);
    v26[0] = *(v3 + 2);
    v26[1] = v15;
    v16 = *(v3 + 5);
    v18 = *(v3 + 2);
    v17 = *(v3 + 3);
    v26[2] = *(v3 + 4);
    v26[3] = v16;
    v22 = v18;
    v23 = v17;
    v19 = *(v3 + 5);
    v24 = *(v3 + 4);
    v25 = v19;
    v27 = 2;
    sub_2148B0044(v26, v21);
    sub_2148B00B4();
    sub_21498FFE0();
    v21[0] = v22;
    v21[1] = v23;
    v21[2] = v24;
    v21[3] = v25;
    sub_21489DFCC(v21, &qword_27CA1A790, &qword_214992E88);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2148AC5AC()
{
  sub_214990160();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21498F900();
  sub_214990180();
  if (v4)
  {
    sub_21498F900();
  }

  if (v0[5] == 1)
  {
    sub_214990180();
  }

  else
  {
    v7 = *(v0 + 3);
    v8 = *(v0 + 4);
    v9 = *(v0 + 5);
    v6 = v0[4];
    sub_214990180();
    sub_2148AC27C();
  }

  return sub_214990190();
}

uint64_t sub_2148AC678(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A700, &qword_214992A20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AF768();
  sub_2149901C0();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6E8, &qword_214992A18);
  sub_2148AF810(&qword_27CA1A708, sub_2148AF888);
  sub_214990040();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2148AC804()
{
  v1 = 0x7463656A627573;
  v2 = 28532;
  if (*v0 != 2)
  {
    v2 = 1836020326;
  }

  if (*v0)
  {
    v1 = 2036625250;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148AC860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148AEB58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148AC888(uint64_t a1)
{
  v2 = sub_2148B0108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148AC8C4(uint64_t a1)
{
  v2 = sub_2148B0108();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148AC900@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2148AECB4(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2148AC95C()
{
  sub_214990160();
  sub_2148AC27C();
  return sub_214990190();
}

uint64_t sub_2148AC9A0()
{
  sub_214990160();
  sub_2148AC27C();
  return sub_214990190();
}

uint64_t sub_2148AC9DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_2148AE7C0(v7, v8) & 1;
}

uint64_t sub_2148ACA28()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x7261506C69616D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657079546B6E696CLL;
  }
}

uint64_t sub_2148ACA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148AEFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148ACAAC(uint64_t a1)
{
  v2 = sub_2148AFF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148ACAE8(uint64_t a1)
{
  v2 = sub_2148AFF34();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148ACB24@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2148AF0C4(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_2148ACB8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21498F900();
  if (v4)
  {
    sub_214990180();
    sub_21498F900();
    if (v6 == 1)
    {
      return sub_214990180();
    }
  }

  else
  {
    sub_214990180();
    if (v6 == 1)
    {
      return sub_214990180();
    }
  }

  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  sub_214990180();
  return sub_2148AC27C();
}

uint64_t sub_2148ACC58()
{
  v1 = v0;
  v2 = *v0;
  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  sub_214990160();
  sub_21498F900();
  if (!v5)
  {
    sub_214990180();
    if (v7 == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = *(v1 + 3);
    v10 = *(v1 + 4);
    v11 = *(v1 + 5);
    sub_214990180();
    sub_2148AC27C();
    return sub_214990190();
  }

  sub_214990180();
  sub_21498F900();
  if (v7 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_214990180();
  return sub_214990190();
}

uint64_t sub_2148ACD3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_2148AE928(v9, v10) & 1;
}

uint64_t sub_2148ACDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1160 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_214990080();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2148ACE48(uint64_t a1)
{
  v2 = sub_2148AF768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148ACE84(uint64_t a1)
{
  v2 = sub_2148AF768();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2148ACEC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2148AF3A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL static UnsubscribeAnalytics.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_214990080()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_214990080()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2148ACFA4()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

uint64_t sub_2148ACFEC()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

unint64_t sub_2148AD030()
{
  v1 = 0x6E6569736E617274;
  if (*v0 != 1)
  {
    v1 = 1802396018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2148AD090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148AF558(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148AD0B8(uint64_t a1)
{
  v2 = sub_2148AD2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148AD0F4(uint64_t a1)
{
  v2 = sub_2148AD2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnsubscribeAnalytics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A688, &qword_214992720);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AD2F0();
  sub_2149901C0();
  v17 = 0;
  v12 = v14[3];
  sub_214990000();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_214990000();
  v15 = 2;
  sub_214990030();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2148AD2F0()
{
  result = qword_27CA1A690;
  if (!qword_27CA1A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A690);
  }

  return result;
}

uint64_t UnsubscribeAnalytics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_21498F900();
  sub_21498F900();
  return MEMORY[0x216059200](v5);
}

uint64_t UnsubscribeAnalytics.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_214990160();
  sub_21498F900();
  sub_21498F900();
  MEMORY[0x216059200](v5);
  return sub_214990190();
}

uint64_t UnsubscribeAnalytics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A698, &qword_214992728);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AD2F0();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_21498FF60();
  v13 = v12;
  v21 = v11;
  v23 = 1;
  v19 = sub_21498FF60();
  v20 = v14;
  v22 = 2;
  v15 = sub_21498FF90();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v21;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2148AD6AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_214990160();
  sub_21498F900();
  sub_21498F900();
  MEMORY[0x216059200](v5);
  return sub_214990190();
}

uint64_t sub_2148AD72C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_21498F900();
  sub_21498F900();
  return MEMORY[0x216059200](v5);
}

uint64_t sub_2148AD780()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_214990160();
  sub_21498F900();
  sub_21498F900();
  MEMORY[0x216059200](v5);
  return sub_214990190();
}

unint64_t sub_2148AD800()
{
  result = qword_27CA1A6A0;
  if (!qword_27CA1A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6A0);
  }

  return result;
}

BOOL sub_2148AD854(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_214990080()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_214990080()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
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

uint64_t sub_2148AD904(uint64_t a1, int a2)
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

uint64_t sub_2148AD94C(uint64_t result, int a2, int a3)
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

unint64_t sub_2148AD9C8()
{
  result = qword_27CA1A6A8;
  if (!qword_27CA1A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6A8);
  }

  return result;
}

unint64_t sub_2148ADA20()
{
  result = qword_27CA1A6B0;
  if (!qword_27CA1A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6B0);
  }

  return result;
}

unint64_t sub_2148ADA78()
{
  result = qword_27CA1A6B8;
  if (!qword_27CA1A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6B8);
  }

  return result;
}

uint64_t sub_2148ADACC@<X0>(uint64_t *a1@<X8>)
{
  v81 = a1;
  v2 = sub_21498E7C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v79 = *(v1 + 24);
  v10 = v1[4];
  v83 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v74 = v10;
  v75 = v11;
  v76 = v1[8];
  v77 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7B8, &unk_214992EA0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7C0, &unk_214995AE0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v71[1] = *(v15 + 80);
  v73 = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_214992700;
  v80 = v18;
  v72 = v17;
  v19 = v18 + v17;
  v85 = v14;
  v20 = *(v14 + 48);
  strcpy((v18 + v17), "displayEmail");
  *(v19 + 13) = 0;
  *(v19 + 14) = -5120;
  v21 = swift_allocObject();
  *(v21 + 16) = v7;
  *(v21 + 24) = v8;
  *(v19 + v20) = v21;
  v22 = *(v3 + 104);
  v23 = v19 + v20;
  v24 = v16;
  v88 = *MEMORY[0x277D232A0];
  v89 = v3 + 104;
  v22(v23);
  v84 = v19;
  v25 = (v19 + v16);
  *v25 = 0x6C69616D456C6C61;
  v78 = v19 + v16;
  v25[1] = 0xE900000000000073;
  v26 = *(v9 + 16);
  v82 = v24;
  if (v26)
  {
    v87 = v22;
    v90 = MEMORY[0x277D84F90];

    sub_2148A9C18(0, v26, 0);
    v27 = v90;
    v86 = v3 + 32;
    v28 = (v9 + 40);
    v29 = v2;
    do
    {
      v31 = *(v28 - 1);
      v30 = *v28;
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v30;
      *v6 = v32;
      (v87)(v6, v88, v29);
      v90 = v27;
      v33 = v29;
      v34 = *(v27 + 16);
      v35 = *(v27 + 24);

      if (v34 >= v35 >> 1)
      {
        sub_2148A9C18(v35 > 1, v34 + 1, 1);
        v27 = v90;
      }

      *(v27 + 16) = v34 + 1;
      (*(v3 + 32))(v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34, v6, v33);
      v28 += 2;
      --v26;
      v29 = v33;
    }

    while (v26);
    v22 = v87;
    v24 = v82;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    v29 = v2;
  }

  v36 = v85;
  v37 = *(v85 + 48);
  v38 = swift_allocObject();
  *(v38 + 16) = v27;
  v39 = v78;
  *(v78 + v37) = v38;
  (v22)(v39 + v37, *MEMORY[0x277D23278], v29);
  v40 = 2 * v24;
  v41 = v84;
  v42 = (v84 + 2 * v24);
  v43 = v22;
  v44 = v24;
  v45 = *(v36 + 48);
  *v42 = 0x7463656C65537369;
  v42[1] = 0xEA00000000006465;
  v46 = swift_allocObject();
  *(v46 + 16) = v79;
  *(v42 + v45) = v46;
  (v22)(v42 + v45, *MEMORY[0x277D23258], v29);
  v47 = v41 + v40 + v44;
  v48 = *(v36 + 48);
  *v47 = 0x636974796C616E61;
  *(v47 + 8) = 0xE900000000000073;
  v49 = swift_allocObject();
  v50 = v83;
  if (v83)
  {
    v51 = v72;
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_214992710;
    v53 = v52 + v51;
    *v53 = 0xD000000000000010;
    *(v53 + 8) = 0x80000002149A1110;
    v54 = swift_allocObject();
    *(v54 + 16) = v74;
    *(v54 + 24) = v50;
    *&v48[v53] = v54;
    v86 = v49;
    v55 = v43;
    v56 = v29;
    v57 = v88;
    (v55)(&v48[v52 + v51], v88, v56);
    v58 = (v52 + v51 + v82);
    v87 = v48;
    v59 = *(v85 + 48);
    *v58 = 0x6E6569736E617274;
    v58[1] = 0xEB00000000644974;
    v60 = swift_allocObject();
    v61 = v77;
    *(v60 + 16) = v75;
    *(v60 + 24) = v61;
    *(v58 + v59) = v60;
    v62 = v57;
    v29 = v56;
    v43 = v55;
    v49 = v86;
    (v43)(v58 + v59, v62, v29);
    v63 = (v53 + v40);
    v64 = *(v85 + 48);
    *v63 = 1802396018;
    v63[1] = 0xE400000000000000;
    v65 = swift_allocObject();
    *(v65 + 16) = v76;
    *(v63 + v64) = v65;
    v66 = (v53 + v40 + v64);
    v48 = v87;
    (v43)(v66, *MEMORY[0x277D23248], v29);

    v67 = sub_2148E0C4C(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v49 + 16) = v67;
  }

  else
  {
    *(v49 + 16) = sub_2148E0C4C(MEMORY[0x277D84F90]);
  }

  *&v48[v47] = v49;
  v68 = swift_allocObject();
  (v43)(&v48[v47], *MEMORY[0x277D23270], v29);
  v69 = sub_2148E0C4C(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v68 + 16) = v69;
  *v81 = v68;
  return (v43)();
}

double sub_2148AE1C0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21498E690();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21498E7C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  if (*(a1 + 16))
  {
    v21 = sub_214907F9C(0xD000000000000014, 0x80000002149A1130);
    if (v22)
    {
      v23 = *(a1 + 56);
      v54 = *(v8 + 72);
      v55 = *(v8 + 16);
      v56 = v4;
      v55(v20, v23 + v54 * v21, v7);
      v53 = *(v8 + 88);
      if (v53(v20, v7) == *MEMORY[0x277D23270])
      {
        v24 = *(v8 + 96);
        v51 = v8 + 96;
        v52 = v8 + 16;
        v50 = v24;
        v24(v20, v7);
        v25 = *(*v20 + 16);

        if (*(v25 + 16))
        {
          v26 = sub_214907F9C(0x6E6569736E617274, 0xEB00000000644974);
          if (v27)
          {
            v55(v18, *(v25 + 56) + v26 * v54, v7);
            v28 = v53(v18, v7);
            if (v28 != *MEMORY[0x277D232A0])
            {

              (*(v8 + 8))(v18, v7);
              goto LABEL_16;
            }

            v49 = v28;
            v50(v18, v7);
            v29 = *(*v18 + 16);
            v30 = *(*v18 + 24);
            v48 = v29;

            if (*(v25 + 16) && (v31 = sub_214907F9C(1802396018, 0xE400000000000000), (v32 & 1) != 0))
            {
              v55(v15, *(v25 + 56) + v31 * v54, v7);

              if (v53(v15, v7) != *MEMORY[0x277D23248])
              {

                (*(v8 + 8))(v15, v7);
                goto LABEL_16;
              }

              v50(v15, v7);
              v33 = *(*v15 + 16);

              if (*(a1 + 16))
              {
                v34 = sub_214907F9C(0x6C69616D65, 0xE500000000000000);
                if (v35)
                {
                  v55(v12, *(a1 + 56) + v34 * v54, v7);
                  v36 = v53(v12, v7);
                  if (v36 == v49)
                  {
                    v50(v12, v7);
                    v38 = *(*v12 + 16);
                    v37 = *(*v12 + 24);

                    *a2 = v38;
                    a2[1] = v37;
                    a2[2] = v48;
                    a2[3] = v30;
                    a2[4] = v33;
                    return result;
                  }

                  (*(v8 + 8))(v12, v7);
                  goto LABEL_16;
                }
              }
            }

            else
            {
            }
          }
        }

LABEL_16:
        v40 = v56;
        v41 = v57;
        v42 = v58;
        if (qword_281190DA0 != -1)
        {
          swift_once();
        }

        v43 = __swift_project_value_buffer(v40, qword_281194E18);
        (*(v42 + 16))(v41, v43, v40);
        v44 = sub_21498E670();
        v45 = sub_21498FBB0();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_21488E000, v44, v45, "[LiftUIUnwantedSender] failed to parse element in dictionary 'impressionParameters'", v46, 2u);
          MEMORY[0x216059AC0](v46, -1, -1);
        }

        (*(v42 + 8))(v41, v40);
        goto LABEL_21;
      }

      (*(v8 + 8))(v20, v7);
    }
  }

LABEL_21:
  a2[4] = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t sub_2148AE7C0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_214990080();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_214990080();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_214990080();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (v25 && (a1[6] == a2[6] && v24 == v25 || (sub_214990080() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2148AE928(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_214990080() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (v6)
    {
      v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
      if (v7 || (sub_214990080() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  if (v6)
  {
    goto LABEL_17;
  }

LABEL_13:
  v8 = *(a1 + 48);
  v37[0] = *(a1 + 32);
  v37[1] = v8;
  v9 = *(a1 + 80);
  v37[2] = *(a1 + 64);
  v37[3] = v9;
  v10 = *(a2 + 48);
  v36[0] = *(a2 + 32);
  v36[1] = v10;
  v11 = *(a2 + 80);
  v36[2] = *(a2 + 64);
  v36[3] = v11;
  v12 = v37[0];
  if (*(&v37[0] + 1) == 1)
  {
    if (*(&v36[0] + 1) == 1)
    {
      v13 = 1;
      *&v28 = *&v37[0];
      *(&v28 + 1) = 1;
      v14 = *(a1 + 64);
      v29 = *(a1 + 48);
      v30 = v14;
      v31 = *(a1 + 80);
      sub_2148B0044(v37, v38);
      sub_2148B0044(v36, v38);
      v15 = &v28;
LABEL_22:
      sub_21489DFCC(v15, &qword_27CA1A790, &qword_214992E88);
      return v13 & 1;
    }
  }

  else if (*(&v36[0] + 1) != 1)
  {
    v23 = v36[0];
    v19 = *(a2 + 64);
    v24 = *(a2 + 48);
    v25 = v19;
    v26 = *(a2 + 80);
    v30 = v19;
    v31 = v26;
    v28 = v36[0];
    v29 = v24;
    v20 = *(a1 + 48);
    v21 = *(a1 + 80);
    v38[2] = *(a1 + 64);
    v38[3] = v21;
    v38[1] = v20;
    v38[0] = v37[0];
    v13 = sub_2148AE7C0(v38, &v28);
    sub_2148B0044(v37, v27);
    sub_2148B0044(v36, v27);
    sub_21489DFCC(&v23, &qword_27CA1A790, &qword_214992E88);
    v27[0] = v12;
    v22 = *(a1 + 64);
    v27[1] = *(a1 + 48);
    v27[2] = v22;
    v27[3] = *(a1 + 80);
    v15 = v27;
    goto LABEL_22;
  }

  v28 = v37[0];
  v17 = *(a1 + 64);
  v29 = *(a1 + 48);
  v30 = v17;
  v31 = *(a1 + 80);
  v32 = v36[0];
  v18 = *(a2 + 64);
  v33 = *(a2 + 48);
  v34 = v18;
  v35 = *(a2 + 80);
  sub_2148B0044(v37, v38);
  sub_2148B0044(v36, v38);
  sub_21489DFCC(&v28, &qword_27CA1A7C8, &qword_214992EB0);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_2148AEB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1836020326 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2148AECB4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7A0, &qword_214992E90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148B0108();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_21498FF20();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = sub_21498FF20();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_21498FF20();
  v27 = v15;
  v35 = 3;
  v16 = sub_21498FF20();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_2148B015C(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_2148B0194(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

uint64_t sub_2148AEFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B6E696CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261506C69616D65 && a2 == 0xEB00000000736D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2148AF0C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A770, &qword_214992E78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AFF34();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  LOBYTE(v31[0]) = 0;
  v11 = sub_21498FF60();
  v13 = v12;
  v24 = v11;
  LOBYTE(v31[0]) = 1;
  *&v23 = sub_21498FF20();
  *(&v23 + 1) = v14;
  v36 = 2;
  sub_2148AFF88();
  sub_21498FF40();
  (*(v10 + 8))(v8, v4);
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  v15 = *(&v23 + 1);
  v16 = v24;
  *&v25 = v24;
  *(&v25 + 1) = v13;
  v17 = v23;
  v26 = v23;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  sub_2148AFFDC(&v25, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v16;
  v31[1] = v13;
  v31[2] = v17;
  v31[3] = v15;
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v35 = v44;
  result = sub_2148B0014(v31);
  v19 = v28;
  v20 = v45;
  v45[2] = v27;
  v20[3] = v19;
  v21 = v30;
  v20[4] = v29;
  v20[5] = v21;
  v22 = v26;
  *v20 = v25;
  v20[1] = v22;
  return result;
}

void *sub_2148AF3A4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D8, &qword_214992A10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AF768();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6E8, &qword_214992A18);
    sub_2148AF810(&qword_27CA1A6F0, sub_2148AF7BC);
    sub_21498FFA0();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2148AF558(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1110 == a2 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEB00000000644974 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_214990080();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for LiftUIUnwantedSenderError()
{
  result = qword_27CA1A718;
  if (!qword_27CA1A718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2148AF6CC()
{
  result = qword_27CA1A6C0;
  if (!qword_27CA1A6C0)
  {
    type metadata accessor for LiftUIUnwantedSenderError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6C0);
  }

  return result;
}

uint64_t sub_2148AF724(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2148AF768()
{
  result = qword_27CA1A6E0;
  if (!qword_27CA1A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6E0);
  }

  return result;
}

unint64_t sub_2148AF7BC()
{
  result = qword_27CA1A6F8;
  if (!qword_27CA1A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6F8);
  }

  return result;
}

uint64_t sub_2148AF810(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A6E8, &qword_214992A18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148AF888()
{
  result = qword_27CA1A710;
  if (!qword_27CA1A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A710);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2148AF8F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_2148AF94C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_2148AFA20()
{
  sub_2148AFA94();
  if (v0 <= 0x3F)
  {
    sub_2148AFB28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2148AFA94()
{
  if (!qword_27CA1A728)
  {
    v0 = sub_2148AFADC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1A728);
    }
  }
}

unint64_t sub_2148AFADC()
{
  result = qword_27CA1A730;
  if (!qword_27CA1A730)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27CA1A730);
  }

  return result;
}

void sub_2148AFB28()
{
  if (!qword_27CA1A738)
  {
    sub_21498E7C0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A740, &qword_214992AA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CA1A738);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant20UnsubscribeAnalyticsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2148AFBE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2148AFC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant22UnsubscribeEmailParamsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
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

uint64_t sub_2148AFCCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2148AFD14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2148AFD80()
{
  result = qword_27CA1A748;
  if (!qword_27CA1A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A748);
  }

  return result;
}

unint64_t sub_2148AFDD8()
{
  result = qword_27CA1A750;
  if (!qword_27CA1A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A750);
  }

  return result;
}

unint64_t sub_2148AFE30()
{
  result = qword_27CA1A758;
  if (!qword_27CA1A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A758);
  }

  return result;
}

unint64_t sub_2148AFE88()
{
  result = qword_27CA1A760;
  if (!qword_27CA1A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A760);
  }

  return result;
}

unint64_t sub_2148AFEE0()
{
  result = qword_27CA1A768;
  if (!qword_27CA1A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A768);
  }

  return result;
}

unint64_t sub_2148AFF34()
{
  result = qword_27CA1A778;
  if (!qword_27CA1A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A778);
  }

  return result;
}

unint64_t sub_2148AFF88()
{
  result = qword_27CA1A780;
  if (!qword_27CA1A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A780);
  }

  return result;
}

uint64_t sub_2148B0044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A790, &qword_214992E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2148B00B4()
{
  result = qword_27CA1A798;
  if (!qword_27CA1A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A798);
  }

  return result;
}

unint64_t sub_2148B0108()
{
  result = qword_27CA1A7A8;
  if (!qword_27CA1A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7A8);
  }

  return result;
}

unint64_t sub_2148B01E8()
{
  result = qword_27CA1A7D0;
  if (!qword_27CA1A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7D0);
  }

  return result;
}

unint64_t sub_2148B0240()
{
  result = qword_27CA1A7D8;
  if (!qword_27CA1A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7D8);
  }

  return result;
}

unint64_t sub_2148B0298()
{
  result = qword_27CA1A7E0;
  if (!qword_27CA1A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7E0);
  }

  return result;
}

unint64_t sub_2148B02F0()
{
  result = qword_27CA1A7E8;
  if (!qword_27CA1A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7E8);
  }

  return result;
}

unint64_t sub_2148B0348()
{
  result = qword_27CA1A7F0;
  if (!qword_27CA1A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7F0);
  }

  return result;
}

unint64_t sub_2148B03A0()
{
  result = qword_27CA1A7F8;
  if (!qword_27CA1A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7F8);
  }

  return result;
}

uint64_t type metadata accessor for CustomRemoteContent()
{
  result = qword_27CA1A818;
  if (!qword_27CA1A818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148B048C()
{
  sub_21498E900();
  if (v0 <= 0x3F)
  {
    sub_2148B07D8(319, &qword_27CA1A828, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2148B06A0(319, &qword_27CA1A830, &qword_27CA1A838, &qword_21499B640);
      if (v2 <= 0x3F)
      {
        sub_2148B06A0(319, &qword_27CA1A840, &qword_27CA1A848, &qword_214993160);
        if (v3 <= 0x3F)
        {
          sub_2148B06F4(319, &qword_281190D68, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21498E5D0();
            if (v5 <= 0x3F)
            {
              sub_2148B06F4(319, &qword_27CA1A850, &type metadata for CustomRemoteContent.LoadingState, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_2148B0744();
                if (v7 <= 0x3F)
                {
                  sub_2148B07D8(319, &qword_27CA1A860, type metadata accessor for MARemoteViewModel, MEMORY[0x277CDF468]);
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

void sub_2148B06A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21498FCF0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2148B06F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2148B0744()
{
  if (!qword_27CA1B660)
  {
    sub_21498E8C0();
    sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330]);
    v0 = sub_21498ED30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1B660);
    }
  }
}

void sub_2148B07D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant19CustomRemoteContentV12LoadingState33_71E8631C5FC8C4AC9E539594EC7861FCLLO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_2148B085C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_2148B08A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_2149930D0;
    }
  }

  return result;
}

void *sub_2148B08F8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_2148B0930()
{
  v1 = sub_21498EDC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for CustomRemoteContent() + 52));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_21498FBC0();
    v9 = sub_21498EFC0();
    sub_21498E5A0();

    sub_21498EDB0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2148B0A8C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148B0B54()
{
  *v0;
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_2148B0C08()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148B0CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148B5014();
  *a2 = result;
  return result;
}

void sub_2148B0CFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x646F6874656DLL;
  v7 = 0xE400000000000000;
  v8 = 2036625250;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000002149A04B0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7107189;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2148B0D80()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x646F6874656DLL;
  v4 = 2036625250;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7107189;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2148B0E00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148B5014();
  *a1 = result;
  return result;
}

uint64_t sub_2148B0E34(uint64_t a1)
{
  v2 = sub_2148B4B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148B0E70(uint64_t a1)
{
  v2 = sub_2148B4B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148B0EAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v71 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A810, qword_214993110);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v71 - v10;
  v80 = sub_21498E900();
  v78 = *(v80 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21498E350();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v13);
  v74 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A918, &qword_2149933D8);
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  MEMORY[0x28223BE20](v16);
  v89 = &v71 - v18;
  v86 = sub_21498E600();
  v19 = *(v86 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v86);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21498E690();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CustomRemoteContent();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &v32[*(v30 + 44)];
  v91 = xmmword_2149930E0;
  sub_21498F400();
  v34 = v93;
  *v33 = v92;
  v85 = v33;
  *(v33 + 2) = v34;
  v35 = &v32[*(v28 + 48)];
  sub_21498E8C0();
  sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330]);
  v84 = sub_21498ED20();
  *v35 = v84;
  v35[1] = v36;
  v90 = v28;
  v37 = *(v28 + 52);
  v94 = v32;
  v38 = &v32[v37];
  KeyPath = swift_getKeyPath();
  *v38 = KeyPath;
  v38[8] = 0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v23, qword_281194E18);
  (*(v24 + 16))(v27, v39, v23);
  v40 = sub_21498E670();
  v41 = sub_21498FBD0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_21488E000, v40, v41, "CustomRemoteContent init", v42, 2u);
    MEMORY[0x216059AC0](v42, -1, -1);
  }

  (*(v24 + 8))(v27, v23);
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v43 = v86;
  v44 = __swift_project_value_buffer(v86, qword_281194E30);
  (*(v19 + 16))(v22, v44, v43);
  v45 = v90[10];
  sub_21498E5F0();
  v46 = v94;
  sub_21498E5B0();
  (*(v19 + 8))(v22, v43);
  v47 = v88;
  v48 = v88[4];
  __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  sub_2148B4B84();
  v49 = v87;
  sub_2149901B0();
  if (v49)
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
    v53 = sub_21498E5D0();
    (*(*(v53 - 8) + 8))(v46 + v45, v53);
    v54 = v85[2];
    sub_2148B45A0(*v85, v85[1]);
  }

  else
  {
    LOBYTE(v92) = 0;
    v50 = v82;
    v51 = sub_21498FF20();
    if (!v52)
    {
      v56 = v74;
      sub_21498E340();
      v57 = sub_21498E330();
      v59 = v58;
      (*(v75 + 8))(v56, v76);
      v52 = v59;
      v51 = v57;
      v50 = v82;
    }

    v61 = v79;
    v60 = v80;
    *v46 = v51;
    v46[1] = v52;
    v87 = v52;
    LOBYTE(v92) = 1;
    sub_2148B4BD8(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    v62 = v89;
    sub_21498FFA0();
    (*(v78 + 32))(v94 + v90[5], v61, v60);
    LOBYTE(v92) = 2;
    v63 = v77;
    sub_21498FF40();
    sub_2148B4C68(v63, v94 + v90[6], &qword_27CA1A800, &unk_214993100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
    LOBYTE(v92) = 3;
    sub_2148B4C20(&qword_27CA1A928, &qword_27CA1A838, &qword_21499B640);
    v64 = v50;
    v65 = v73;
    sub_21498FF40();
    sub_2148B4C68(v65, v94 + v90[7], &qword_27CA1A808, &unk_21499B730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    LOBYTE(v92) = 4;
    sub_2148B4C20(&qword_27CA1A930, &qword_27CA1A848, &qword_214993160);
    v66 = v72;
    sub_21498FF40();
    (*(v81 + 8))(v62, v64);
    v67 = v90;
    v68 = v66;
    v69 = v94;
    sub_2148B4C68(v68, v94 + v90[8], &qword_27CA1A810, qword_214993110);
    v70 = (v69 + v67[9]);
    *v70 = 0;
    v70[1] = 0;
    sub_2148B49C8(v69, v71, type metadata accessor for CustomRemoteContent);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_2148B4CD0(v69, type metadata accessor for CustomRemoteContent);
  }
}

uint64_t sub_2148B1A14()
{
  v1 = sub_21498E690();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CustomRemoteContent();
  v8 = (v0 + *(v7 + 48));
  if (*v8)
  {
    v9 = *(v7 + 20);
    v10 = *v8;

    sub_21498E8F0();

    sub_21498E1A0();

    v11 = sub_21498E1B0();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v6, 1, v11) == 1)
    {
      sub_21489DFCC(v6, &qword_27CA1A348, &qword_214991700);
      return 0;
    }

    else
    {
      v14 = sub_21498E170();
      (*(v12 + 8))(v6, v11);
      return v14;
    }
  }

  else
  {
    v15 = v8[1];
    sub_21498E8C0();
    sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_2148B1DF4@<X0>(uint64_t a1@<X8>)
{
  v166 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A810, qword_214993110);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v155 = &v137 - v4;
  v5 = type metadata accessor for CustomRemoteContent();
  v149 = *(v5 - 8);
  v6 = *(v149 + 64);
  MEMORY[0x28223BE20](v5);
  v151 = v7;
  v152 = (&v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A890, &qword_214993370);
  v8 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v154 = &v137 - v9;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A898, &qword_214993378);
  v10 = *(*(v165 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v165);
  v153 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v156 = &v137 - v13;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8A0, &qword_214993380);
  v14 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v164 = &v137 - v15;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8A8, &qword_214993388);
  v16 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v160 = (&v137 - v17);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8B0, &unk_214993390);
  v18 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v161 = &v137 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v148 = &v137 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v147 = &v137 - v25;
  v144 = sub_21498E510();
  v146 = *(v144 - 8);
  v26 = *(v146 + 64);
  MEMORY[0x28223BE20](v144);
  v28 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = (&v137 - v31);
  v33 = type metadata accessor for TracingContext(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MALiftUISource(0);
  v145 = *(v37 - 8);
  v38 = *(v145 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (&v137 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for MARemoteView(0);
  v41 = *(*(v157 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v157);
  v44 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v137 - v45;
  v158 = v5;
  v47 = *(v5 + 44);
  v48 = v1;
  v49 = (v1 + v47);
  v50 = *(v49 + 2);
  v167 = *v49;
  *&v168 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8B8, &qword_2149933B0);
  sub_21498F410();
  v51 = v170;
  v52 = v171;
  v53 = (v171 >> 60) & 3;
  if (v53)
  {
    if (v53 == 1)
    {
      v54 = v171;
      *v160 = v170;
      v55 = v51;
      swift_storeEnumTagMultiPayload();
      v56 = v55;
      sub_2148B4BD8(&qword_27CA1A340, type metadata accessor for MARemoteView);
      sub_2148B4744();
      v57 = v161;
      sub_21498EE90();
      v58 = &qword_27CA1A8B0;
      v59 = &unk_214993390;
      sub_2148AA824(v57, v164, &qword_27CA1A8B0, &unk_214993390);
      swift_storeEnumTagMultiPayload();
      sub_2148B4688();
      sub_2148B4798();
      sub_21498EE90();
      sub_2148B45A0(v55, v54);
      v60 = v57;
      return sub_21489DFCC(v60, v58, v59);
    }

    sub_2148B45A0(v170, v171);
    v72 = v154;
    sub_21498EBC0();
    v73 = v152;
    sub_2148B49C8(v1, v152, type metadata accessor for CustomRemoteContent);
    v74 = (*(v149 + 80) + 16) & ~*(v149 + 80);
    v75 = swift_allocObject();
    sub_2148B4960(v73, v75 + v74, type metadata accessor for CustomRemoteContent);
    v76 = (v72 + *(v150 + 36));
    v77 = v76 + *(sub_21498EC30() + 20);
    sub_21498FAC0();
    *v76 = &unk_2149933C0;
    v76[1] = v75;
    v78 = v158;
    v79 = v155;
    sub_2148AA824(&v48[v158[8]], v155, &qword_27CA1A810, qword_214993110);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v79, 1, v80) == 1)
    {
      sub_21489DFCC(v79, &qword_27CA1A810, qword_214993110);
      v82 = 2.0;
LABEL_15:
      LOBYTE(v170) = 0;
      sub_21498F400();
      v131 = v167;
      v132 = *(&v167 + 1);
      v133 = v153;
      sub_2148B4C68(v72, v153, &qword_27CA1A890, &qword_214993370);
      v134 = v133 + *(v165 + 36);
      *v134 = v131;
      *(v134 + 8) = v132;
      *(v134 + 16) = v82;
      v58 = &qword_27CA1A898;
      v59 = &qword_214993378;
      v135 = v156;
      sub_2148B4C68(v133, v156, &qword_27CA1A898, &qword_214993378);
      sub_2148AA824(v135, v164, &qword_27CA1A898, &qword_214993378);
      swift_storeEnumTagMultiPayload();
      sub_2148B4688();
      sub_2148B4798();
      sub_21498EE90();
      v60 = v135;
      return sub_21489DFCC(v60, v58, v59);
    }

    v66 = &v48[v78[12]];
    if (*v66)
    {
      v83 = *v66;

      sub_21498E750();

      (*(v81 + 8))(v79, v80);
      v82 = *&v167;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v151 = v28;
  v152 = v44;
  v153 = v36;
  v154 = v46;
  *v40 = v170;
  v40[1] = v52;
  v61 = v51;
  v143 = v40;
  v62 = v52;
  swift_storeEnumTagMultiPayload();
  v155 = v61;
  v156 = v62;
  sub_21489B70C(v61, v62);
  v63 = v48;
  v64 = *(sub_2148B0930() + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_appleAccount);

  v65 = [v64 accountStore];

  if (!v65)
  {
    __break(1u);
LABEL_18:
    v136 = v66[1];
    sub_21498E8C0();
    sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v140 = v65;
  v138 = *(sub_2148B0930() + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_appleAccount);

  v67 = sub_2148B1A14();
  v69 = v157;
  v141 = v32;
  v142 = v37;
  if (v68)
  {
    v70 = v67;
    v71 = v68;
  }

  else
  {
    v70 = *v48;
    v71 = *(v48 + 1);
  }

  v84 = v143;
  v85 = v153;
  v86 = *(v33 + 20);
  v149 = v86;
  v87 = v158[10];
  v88 = sub_21498E5D0();
  v153 = v88;
  v89 = *(v88 - 8);
  (*(v89 + 16))(&v85[v86], &v63[v87], v88);
  v90 = *(v89 + 56);
  v150 = v89 + 56;
  v158 = v90;
  (v90)(&v85[v86], 0, 1, v88);
  *v85 = v70;
  *(v85 + 1) = v71;
  v91 = v152;
  *v152 = v70;
  v91[1] = v71;
  v92 = v69[5];
  v139 = type metadata accessor for MALiftUISource;
  v93 = v84;
  sub_2148B49C8(v84, v91 + v92, type metadata accessor for MALiftUISource);
  *(v91 + v69[9]) = v140;
  v94 = v138;
  *(v91 + v69[10]) = v138;
  v95 = (v91 + v69[7]);
  v96 = sub_21498E8C0();
  *v95 = 0;
  v95[1] = 0;
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  v140 = v94;

  v99 = sub_21498E8B0();
  v138 = "Assistant19IntervalGuardAction";
  v100 = swift_allocObject();
  v101 = v146;
  v102 = v151;
  v103 = v144;
  (*(v146 + 104))(v151, *MEMORY[0x277D245A0], v144);
  LOBYTE(v89) = sub_21498E500();
  v104 = v103;
  v105 = v91;
  (*(v101 + 8))(v102, v104);
  *(v100 + 16) = v89 & 1;
  v106 = v141;
  *v141 = v100;
  v107 = *MEMORY[0x277D23258];
  v108 = sub_21498E7C0();
  v109 = *(v108 - 8);
  (*(v109 + 104))(v106, v107, v108);
  (*(v109 + 56))(v106, 0, 1, v108);
  sub_21498E8E0();
  v110 = v147;
  sub_2148B49C8(v93, v147, v139);
  (*(v145 + 56))(v110, 0, 1, v142);
  v111 = type metadata accessor for MARemoteViewModel(0);
  v167 = 0u;
  v168 = 0u;
  v169 = 0;
  v112 = *(v111 + 48);
  v113 = *(v111 + 52);
  swift_allocObject();

  v114 = sub_21490B164(v140, v110, v99, &v167);
  v115 = v91 + v69[6];
  *v115 = sub_21489B760;
  *(v115 + 1) = v114;
  v115[16] = 0;
  v116 = v149;
  sub_2148AA824(&v85[v149], v105 + v69[11], &qword_27CA1A320, &unk_2149916D0);
  v117 = v69;
  v118 = v148;
  sub_2148AA824(&v85[v116], v148, &qword_27CA1A320, &unk_2149916D0);
  v119 = type metadata accessor for MARemoteViewDelegate(0);
  v120 = *(v119 + 48);
  v121 = *(v119 + 52);
  v122 = swift_allocObject();
  v123 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  (v158)(v122 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, 1, 1, v153);
  v124 = qword_281190DA8;

  v125 = v143;
  if (v124 != -1)
  {
    swift_once();
  }

  sub_2148B4CD0(v85, type metadata accessor for TracingContext);
  sub_2148B4CD0(v125, type metadata accessor for MALiftUISource);
  v126 = sub_21498E600();
  __swift_project_value_buffer(v126, qword_281194E30);
  *(v122 + 16) = "LoadRemoteView";
  *(v122 + 24) = 14;
  *(v122 + 32) = 2;
  swift_beginAccess();
  sub_21489B818(v118, v122 + v123);
  swift_endAccess();
  v127 = (v122 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
  *v127 = sub_21489B7D8;
  v127[1] = v114;
  *(v105 + v117[8]) = v122;
  v128 = v154;
  sub_2148B4960(v105, v154, type metadata accessor for MARemoteView);
  sub_2148B49C8(v128, v160, type metadata accessor for MARemoteView);
  swift_storeEnumTagMultiPayload();
  sub_2148B4BD8(&qword_27CA1A340, type metadata accessor for MARemoteView);
  sub_2148B4744();
  v129 = v161;
  sub_21498EE90();
  sub_2148AA824(v129, v164, &qword_27CA1A8B0, &unk_214993390);
  swift_storeEnumTagMultiPayload();
  sub_2148B4688();
  sub_2148B4798();
  sub_21498EE90();
  sub_2148B45A0(v155, v156);
  sub_21489DFCC(v129, &qword_27CA1A8B0, &unk_214993390);
  return sub_2148B4CD0(v128, type metadata accessor for MARemoteView);
}

uint64_t sub_2148B2F9C(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_21498E690();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v7 = sub_21498E5D0();
  v1[26] = v7;
  v8 = *(v7 - 8);
  v1[27] = v8;
  v9 = *(v8 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v10 = sub_21498E600();
  v1[30] = v10;
  v11 = *(v10 - 8);
  v1[31] = v11;
  v12 = *(v11 + 64) + 15;
  v1[32] = swift_task_alloc();
  sub_21498FAB0();
  v1[33] = sub_21498FAA0();
  v14 = sub_21498FA50();
  v1[34] = v14;
  v1[35] = v13;

  return MEMORY[0x2822009F8](sub_2148B31D0, v14, v13);
}

uint64_t sub_2148B31D0()
{
  v86 = v0;
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[19];
  v8 = __swift_project_value_buffer(v3, qword_281194E30);
  (*(v2 + 16))(v1, v8, v3);
  v9 = type metadata accessor for CustomRemoteContent();
  v0[36] = v9;
  v83 = v9;
  v10 = *(v6 + 16);
  v10(v4, v7 + *(v9 + 40), v5);
  v11 = sub_21498E5F0();
  v12 = sub_21498FC80();
  if (sub_21498FCE0())
  {
    v13 = v0[29];
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_21498E5C0();
    _os_signpost_emit_with_name_impl(&dword_21488E000, v11, v12, v15, "LoadRemoteView", "", v14, 2u);
    MEMORY[0x216059AC0](v14, -1, -1);
  }

  v16 = v0[31];
  v17 = v0[29];
  v79 = v0[30];
  v81 = v0[32];
  v19 = v0[27];
  v18 = v0[28];
  v20 = v0[26];
  v21 = v0[19];

  v10(v18, v17, v20);
  v22 = sub_21498E650();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_21498E640();

  (*(v19 + 8))(v17, v20);
  (*(v16 + 8))(v81, v79);
  v25 = (v21 + v83[12]);
  if (*v25)
  {
    v26 = v0[19];
    v27 = v83[5];
    v28 = *v25;

    v29 = sub_21498E8F0();
    v0[37] = v30;
    v33 = v30;
    v82 = v29;
    v34 = v0[25];
    v35 = v0[19];

    sub_2148AA824(v35 + v83[6], v34, &qword_27CA1A800, &unk_214993100);
    v36 = sub_21498E900();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 48))(v34, 1, v36);
    if (v38 == 1)
    {
      sub_21489DFCC(v0[25], &qword_27CA1A800, &unk_214993100);
      v39 = 1;
    }

    else
    {

      sub_21498E8F0();
      v40 = v0[25];

      (*(v37 + 8))(v40, v36);
      v41 = sub_21491F750();
      if (v41 == 4)
      {
        v39 = 1;
      }

      else
      {
        v39 = v41;
      }
    }

    v42 = v0[24];
    sub_2148AA824(v0[19] + v83[7], v42, &qword_27CA1A808, &unk_21499B730);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      sub_21489DFCC(v0[24], &qword_27CA1A808, &unk_21499B730);
      v45 = 0;
      v46 = 0xF000000000000000;
    }

    else
    {
      sub_2148B4A4C();

      sub_21498E750();
      v71 = v0[24];

      (*(v44 + 8))(v71, v43);
      v72 = v0[17];
      v73 = sub_21498DF70();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      sub_21498DF60();
      v0[18] = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D0, &qword_2149933D0);
      sub_2148B4AC8();
      v45 = sub_21498DF50();
      v46 = v76;
    }

    v0[38] = v45;
    v0[39] = v46;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v47 = v0[23];
    v48 = v0[20];
    v49 = v0[21];
    v50 = __swift_project_value_buffer(v48, qword_281194E18);
    (*(v49 + 16))(v47, v50, v48);

    v51 = sub_21498E670();
    v52 = sub_21498FBD0();

    v80 = v39;
    if (os_log_type_enabled(v51, v52))
    {
      v78 = v46;
      v84 = v45;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v85[0] = v54;
      v55 = 0xE300000000000000;
      *v53 = 136315394;
      v56 = 5522759;
      v57 = 0xE300000000000000;
      v58 = 5526864;
      if (v39 != 2)
      {
        v58 = 0x4554454C4544;
        v57 = 0xE600000000000000;
      }

      if (v39)
      {
        v56 = 1414745936;
        v55 = 0xE400000000000000;
      }

      if (v39 <= 1u)
      {
        v59 = v56;
      }

      else
      {
        v59 = v58;
      }

      if (v39 <= 1u)
      {
        v60 = v55;
      }

      else
      {
        v60 = v57;
      }

      v77 = v0[23];
      v62 = v0[20];
      v61 = v0[21];
      v63 = sub_2149079F4(v59, v60, v85);

      *(v53 + 4) = v63;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2149079F4(v82, v33, v85);
      _os_log_impl(&dword_21488E000, v51, v52, "CustomRemoteContent with: [%s] %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v54, -1, -1);
      MEMORY[0x216059AC0](v53, -1, -1);

      (*(v61 + 8))(v77, v62);
      v45 = v84;
      v46 = v78;
    }

    else
    {
      v64 = v0[23];
      v65 = v0[20];
      v66 = v0[21];

      (*(v66 + 8))(v64, v65);
    }

    v67 = v0[19];
    v68 = sub_2148B0930();
    sub_2148994D0(v68 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository, (v0 + 2));

    v69 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v70 = swift_task_alloc();
    v0[40] = v70;
    *v70 = v0;
    v70[1] = sub_2148B3CB0;

    return sub_214937744(v82, v33, v80, v45, v46);
  }

  else
  {
    v31 = v25[1];
    sub_21498E8C0();
    sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330]);

    return sub_21498ED10();
  }
}

uint64_t sub_2148B3CB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 320);
  v8 = *v3;
  v6[41] = v2;

  v9 = v6[37];

  if (v2)
  {
    v10 = v6[34];
    v11 = v6[35];
    v12 = sub_2148B3F80;
  }

  else
  {
    v6[42] = a2;
    v6[43] = a1;
    v10 = v6[34];
    v11 = v6[35];
    v12 = sub_2148B3DF8;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_2148B3DF8()
{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[19];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v8 = (v7 + *(v5 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = v8[2];
  v0[10] = *v8;
  v0[11] = v9;
  v0[12] = v11;
  v0[15] = v1;
  v0[16] = v2;
  sub_21489B70C(v1, v2);
  sub_21489B70C(v1, v2);
  sub_2148B4A30(v10, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8B8, &qword_2149933B0);
  sub_21498F420();
  sub_21489B8F0(v4, v3);
  sub_21489B4F8(v1, v2);
  sub_21489B4F8(v1, v2);
  v12 = v0[12];
  sub_2148B45A0(v0[10], v0[11]);

  v13 = v0[32];
  v14 = v0[28];
  v15 = v0[29];
  v17 = v0[24];
  v16 = v0[25];
  v19 = v0[22];
  v18 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2148B3F80()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[33];

  sub_21489B8F0(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[41];
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = __swift_project_value_buffer(v7, qword_281194E18);
  (*(v6 + 16))(v5, v8, v7);
  v9 = v4;
  v10 = sub_21498E670();
  v11 = sub_21498FBB0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_21488E000, v10, v11, "CustomRemoteContent: error %@", v12, 0xCu);
    sub_21489DFCC(v13, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v13, -1, -1);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  v16 = v0[36];
  v18 = v0[21];
  v17 = v0[22];
  v20 = v0[19];
  v19 = v0[20];

  (*(v18 + 8))(v17, v19);
  v21 = (v20 + *(v16 + 44));
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v0[7] = *v21;
  v0[8] = v23;
  v0[9] = v24;
  v0[13] = v4;
  v0[14] = 0x1000000000000000;
  sub_2148B4A30(v22, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8B8, &qword_2149933B0);
  sub_21498F420();
  v25 = v0[9];
  sub_2148B45A0(v0[7], v0[8]);

  v26 = v0[32];
  v27 = v0[28];
  v28 = v0[29];
  v30 = v0[24];
  v29 = v0[25];
  v32 = v0[22];
  v31 = v0[23];

  v33 = v0[1];

  return v33();
}

uint64_t sub_2148B4220(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148B4BD8(&qword_27CA1A868, type metadata accessor for CustomRemoteContent);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148B42A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148B4BD8(&qword_27CA1A870, type metadata accessor for CustomRemoteContent);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148B4320(uint64_t a1)
{
  v2 = sub_2148B4BD8(&qword_27CA1A870, type metadata accessor for CustomRemoteContent);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148B439C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148B4BD8(&qword_27CA1A888, type metadata accessor for CustomRemoteContent);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148B4458()
{
  sub_2148B4BD8(&qword_27CA1A868, type metadata accessor for CustomRemoteContent);
  sub_2148B4BD8(&qword_27CA1A870, type metadata accessor for CustomRemoteContent);
  return swift_getOpaqueTypeConformance2();
}

void sub_2148B45A0(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
  }

  else if (!v2)
  {
    sub_21489B4F8(a1, a2);
  }
}

uint64_t sub_2148B45BC()
{
  v2 = *(type metadata accessor for CustomRemoteContent() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214899138;

  return sub_2148B2F9C(v0 + v3);
}

unint64_t sub_2148B4688()
{
  result = qword_27CA1A8C0;
  if (!qword_27CA1A8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A8B0, &unk_214993390);
    sub_2148B4BD8(&qword_27CA1A340, type metadata accessor for MARemoteView);
    sub_2148B4744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8C0);
  }

  return result;
}

unint64_t sub_2148B4744()
{
  result = qword_27CA1A8C8;
  if (!qword_27CA1A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8C8);
  }

  return result;
}

unint64_t sub_2148B4798()
{
  result = qword_27CA1A8D0;
  if (!qword_27CA1A8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A898, &qword_214993378);
    sub_2148B4824();
    sub_2148B490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8D0);
  }

  return result;
}

unint64_t sub_2148B4824()
{
  result = qword_27CA1A8D8;
  if (!qword_27CA1A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A890, &qword_214993370);
    sub_2148B4C20(&qword_27CA1A8E0, &qword_27CA1A8E8, &qword_2149933C8);
    sub_2148B4BD8(&qword_27CA1B7A0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8D8);
  }

  return result;
}

unint64_t sub_2148B490C()
{
  result = qword_27CA1A8F0;
  if (!qword_27CA1A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8F0);
  }

  return result;
}

uint64_t sub_2148B4960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148B49C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148B4A30(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
    return a1;
  }

  if (!v2)
  {
    return sub_21489B70C(a1, a2);
  }

  return a1;
}

unint64_t sub_2148B4A4C()
{
  result = qword_27CA1A900;
  if (!qword_27CA1A900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A6D0, &qword_2149933D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A900);
  }

  return result;
}

unint64_t sub_2148B4AC8()
{
  result = qword_27CA1A908;
  if (!qword_27CA1A908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A6D0, &qword_2149933D0);
    sub_2148B4BD8(&qword_27CA1A910, MEMORY[0x277D232B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A908);
  }

  return result;
}

unint64_t sub_2148B4B84()
{
  result = qword_27CA1A920;
  if (!qword_27CA1A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A920);
  }

  return result;
}

uint64_t sub_2148B4BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2148B4C20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2148B4C68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2148B4CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for CustomRemoteContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomRemoteContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2148B4E80()
{
  result = qword_27CA1A938;
  if (!qword_27CA1A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A940, &qword_214993418);
    sub_2148B4688();
    sub_2148B4798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A938);
  }

  return result;
}

unint64_t sub_2148B4F10()
{
  result = qword_27CA1A948;
  if (!qword_27CA1A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A948);
  }

  return result;
}

unint64_t sub_2148B4F68()
{
  result = qword_27CA1A950;
  if (!qword_27CA1A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A950);
  }

  return result;
}

unint64_t sub_2148B4FC0()
{
  result = qword_27CA1A958;
  if (!qword_27CA1A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A958);
  }

  return result;
}

uint64_t sub_2148B5014()
{
  v0 = sub_21498FEF0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148B5060()
{
  v1 = *(v0 + 56);

  sub_21498EB20();

  return v3;
}

uint64_t sub_2148B50AC()
{
  v1 = *(v0 + 64);

  sub_21498EB20();

  return v3;
}

uint64_t sub_2148B50F8()
{
  v1 = *(v0 + 72);

  sub_21498EB20();

  return v3;
}

uint64_t sub_2148B5144()
{
  v1 = *(v0 + 96);

  sub_21498EB20();

  return v3;
}

uint64_t sub_2148B5190()
{
  v1 = *(v0 + 104);

  sub_21498EB20();

  return v3;
}

uint64_t sub_2148B51DC()
{
  v1 = *(v0 + 112);

  sub_21498EB20();

  return v3;
}

uint64_t sub_2148B5228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

uint64_t sub_2148B52C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

double sub_2148B5360@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_2148B53EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

__n128 sub_2148B5460@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_2148B5530@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_2148B55D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();
}

uint64_t sub_2148B5674()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

uint64_t sub_2148B5730()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

uint64_t sub_2148B57C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();
}

uint64_t sub_2148B5834()
{
  v1[4] = v0;
  sub_21498FAB0();
  v1[5] = sub_21498FAA0();
  v3 = sub_21498FA50();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2148B58CC, v3, v2);
}

uint64_t sub_2148B58CC()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 4) + 16), *(*(v0 + 4) + 40));
  v2 = sub_21493B060(0xD00000000000003BLL, 0x80000002149A15B0);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;

  sub_21498EA20();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v3 = *(v0 + 3);
  *(v0 + 8) = v3;
  v7 = (*v3 + 256);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  *(v0 + 9) = v5;
  *v5 = v0;
  v5[1] = sub_2148B5ACC;

  return v8();
}

uint64_t sub_2148B5ACC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 80) = v5;
  *v5 = v4;
  v5[1] = sub_2148B5C28;
  v6 = *(v1 + 32);

  return sub_2148B8444();
}

uint64_t sub_2148B5C28()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2148BC75C, v4, v3);
}

uint64_t sub_2148B5D48()
{
  v1 = sub_21498E320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB20, &qword_214993BD0);
  sub_21498EB20();

  if (v18)
  {
    return 4271950;
  }

  v8 = v17;
  sub_21498E310();
  sub_21498E2E0();
  v10 = v9;
  v11 = v9;
  result = (*(v2 + 8))(v5, v1);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = v10 - v8;
  if (__OFSUB__(v10, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 >= 1296000)
  {
    return 0x737961642030;
  }

  v13 = __OFSUB__(1296000, v12);
  v14 = 1296000 - v12;
  if (!v13)
  {
    v16[1] = v14 / 86400;
    v17 = sub_214990050();
    v18 = v15;
    MEMORY[0x2160589C0](0x7379616420, 0xE500000000000000);
    return v17;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2148B5F58()
{
  v1 = sub_21498E320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB20, &qword_214993BD0);
  sub_21498EB20();

  if ((v16 & 1) == 0)
  {
    v7 = v15;
    sub_21498E310();
    sub_21498E2E0();
    v9 = v8;
    v10 = v8;
    (*(v2 + 8))(v5, v1);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        if (!__OFSUB__(v9, v7))
        {
          if (v9 - v7 > 1295999)
          {
            return;
          }

          if (!__OFADD__(v7, -1296000))
          {
            _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
            v12 = v11;
            v13 = sub_21498FB20();
            v14 = sub_21498F840();
            [v12 setObject:v13 forKey:v14];

            return;
          }

LABEL_14:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_2148B614C()
{
  v1[4] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAE0, qword_214993660) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_21498FAB0();
  v1[7] = sub_21498FAA0();
  v4 = sub_21498FA50();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_2148B6228, v4, v3);
}

uint64_t sub_2148B6228()
{
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = 1;

  sub_21498EA20();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v2 = *(v0 + 16);
  *(v0 + 80) = v2;
  v6 = (*v2 + 424);
  v7 = (*v6 + **v6);
  v3 = (*v6)[1];
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_2148B63F4;

  return v7();
}

uint64_t sub_2148B63F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 96) = a1;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_2148B6540, v6, v5);
}

uint64_t sub_2148B6540()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  *(v0 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v6 = sub_21498F810();
  v8 = v7;
  sub_21498E340();
  v9 = type metadata accessor for ResultContainer(0);
  v10 = (v3 + *(v9 + 20));
  *v10 = 0xD000000000000012;
  v10[1] = 0x80000002149A15F0;
  v11 = (v3 + *(v9 + 24));
  *v11 = v6;
  v11[1] = v8;
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v3, v4, &qword_27CA1AAE0, qword_214993660);

  sub_21498EA20();
  sub_21489DFCC(v3, &qword_27CA1AAE0, qword_214993660);
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v13 = v12;
  v14 = sub_21498F840();
  [v13 setObject:0 forKey:v14];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v16 = v15;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v18 = v17;
  v19 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey];
  v20 = *&v17[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey + 8];

  v21 = sub_21498F840();

  [v16 setBool:0 forKey:v21];

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = 0;

  sub_21498EA20();

  v22 = *(v0 + 8);
  v23 = *(v0 + 96);

  return v22(v23);
}

void sub_2148B67EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v31 - v6;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v8 = v7;
  v9 = [v7 dictionaryRepresentation];

  v10 = sub_21498F7E0();
  v11 = 0;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = "tegoriesDisabledTimestamp";
  v31 = a1;
  v32 = a2;
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return;
    }

    v14 = *(v10 + 64 + 8 * v16);
    ++v11;
    if (v14)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = (*(v10 + 48) + ((v16 << 10) | (16 * v17)));
        v20 = *v18;
        v19 = v18[1];

        if (sub_21498F950())
        {
          v21 = [objc_opt_self() defaultManager];
          v22 = sub_21498F840();
          v23 = [v21 containerURLForSecurityApplicationGroupIdentifier_];

          if (v23)
          {
            v24 = v33;
            sub_21498E160();

            v25 = 0;
          }

          else
          {
            v25 = 1;
            v24 = v33;
          }

          v26 = sub_21498E1B0();
          (*(*(v26 - 8) + 56))(v24, v25, 1, v26);
          sub_21489DFCC(v24, &qword_27CA1A348, &qword_214991700);
          v27 = objc_allocWithZone(type metadata accessor for NSUserDefaults.MailCleanupUserDefaults());
          v28 = sub_21498F840();
          v29 = [v27 initWithSuiteName_];

          if (!v29)
          {
            goto LABEL_19;
          }

          v30 = sub_21498F840();

          [v29 removeObjectForKey_];

          v11 = v16;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v11 = v16;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v16 = v11;
      }
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_2148B6B20()
{
  v1[6] = v0;
  v2 = sub_21498E690();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_21498FAB0();
  v1[10] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v1[11] = v6;
  v1[12] = v5;

  return MEMORY[0x2822009F8](sub_2148B6C14, v6, v5);
}

uint64_t sub_2148B6C14()
{
  v1 = v0[6];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;

  sub_21498EA20();
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2148B6D0C;

  return sub_214938AB4(0, 0, 1);
}

uint64_t sub_2148B6D0C(char a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 104);
  v10 = *v4;
  *(*v4 + 112) = v3;

  if (v3)
  {
    v11 = *(v8 + 88);
    v12 = *(v8 + 96);
    v13 = sub_2148B6FC4;
  }

  else
  {
    *(v8 + 120) = a3;
    *(v8 + 128) = a2;
    *(v8 + 137) = a1 & 1;
    v11 = *(v8 + 88);
    v12 = *(v8 + 96);
    v13 = sub_2148B6E4C;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_2148B6E4C()
{
  v1 = *(v0 + 137);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v3;

  sub_21498EA20();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 40) = v2;

  sub_21498EA20();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 136) = v1;

  sub_21498EA20();

  v6 = *(v0 + 72);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2148B6FC4()
{
  v1 = v0[10];

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_21498E670();
  v9 = sub_21498FBB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21488E000, v8, v9, "fetchRecommendations - %@", v11, 0xCu);
    sub_21489DFCC(v12, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  v15 = v0[14];
  v17 = v0[8];
  v16 = v0[9];
  v19 = v0[6];
  v18 = v0[7];

  (*(v17 + 8))(v16, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v15;

  sub_21498EA20();
  v20 = v0[9];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2148B71E4()
{
  v1[18] = v0;
  v2 = sub_21498E690();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  sub_21498FAB0();
  v1[22] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v1[23] = v6;
  v1[24] = v5;

  return MEMORY[0x2822009F8](sub_2148B72D8, v6, v5);
}

uint64_t sub_2148B72D8()
{
  v1 = v0[18];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[16] = 0;

  sub_21498EA20();
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_2148B73CC;

  return sub_21493A124((v0 + 2));
}

uint64_t sub_2148B73CC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 192);
    v6 = sub_2148B75E8;
  }

  else
  {
    v7 = *(v2 + 32);
    *(v2 + 216) = *(v2 + 16);
    *(v2 + 232) = v7;
    *(v2 + 248) = *(v2 + 48);
    *(v2 + 65) = *(v2 + 64);
    v4 = *(v2 + 184);
    v5 = *(v2 + 192);
    v6 = sub_2148B74FC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2148B74FC()
{
  v1 = *(v0 + 65);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v9 = *(v0 + 232);
  v10 = *(v0 + 216);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = v9;
  *(v0 + 72) = v10;
  *(v0 + 104) = v3;
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  sub_21498EA20();
  v6 = *(v0 + 168);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2148B75E8()
{
  v1 = v0[22];

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_21498E670();
  v9 = sub_21498FBB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21488E000, v8, v9, "fetchPreferences - %@", v11, 0xCu);
    sub_21489DFCC(v12, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  v15 = v0[26];
  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];

  (*(v17 + 8))(v16, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[17] = v15;

  sub_21498EA20();
  v20 = v0[21];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2148B7808()
{
  v1[5] = v0;
  v2 = sub_21498E690();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_21498FAB0();
  v1[9] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v1[10] = v6;
  v1[11] = v5;

  return MEMORY[0x2822009F8](sub_2148B78FC, v6, v5);
}

uint64_t sub_2148B78FC()
{
  v1 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;

  sub_21498EA20();
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_2148B79EC;

  return sub_214933DA0(0);
}

uint64_t sub_2148B79EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_2148B7BD8;
  }

  else
  {
    v4[14] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_2148B7B14;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2148B7B14()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[4] = v1;

  sub_21498EA20();
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2148B7BD8()
{
  v1 = v0[9];

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_21498E670();
  v9 = sub_21498FBB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21488E000, v8, v9, "fetchUnifiedRules - %@", v11, 0xCu);
    sub_21489DFCC(v12, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  v15 = v0[13];
  v17 = v0[7];
  v16 = v0[8];
  v19 = v0[5];
  v18 = v0[6];

  (*(v17 + 8))(v16, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v15;

  sub_21498EA20();
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2148B7DF8()
{
  v1[15] = v0;
  v2 = sub_21498E690();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_21498FAB0();
  v1[19] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v1[20] = v6;
  v1[21] = v5;

  return MEMORY[0x2822009F8](sub_2148B7EEC, v6, v5);
}

uint64_t sub_2148B7EEC()
{
  v1 = v0[15];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[12] = 0;

  sub_21498EA20();
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_2148B7FE4;

  return sub_214937B00((v0 + 2), 1);
}

uint64_t sub_2148B7FE4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_2148B8224;
  }

  else
  {
    v7 = sub_2148B8120;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2148B8120()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);

  v3 = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  sub_21489DFCC(v0 + 64, &qword_27CA1AB18, &unk_21499A610);
  *(v0 + 80) = *(v0 + 40);
  sub_21489DFCC(v0 + 80, &qword_27CA1AB18, &unk_21499A610);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = v3;

  sub_21498EA20();
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2148B8224()
{
  v1 = v0[19];

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_21498E670();
  v9 = sub_21498FBB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21488E000, v8, v9, "fetchUnifiedRules - %@", v11, 0xCu);
    sub_21489DFCC(v12, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  v15 = v0[23];
  v17 = v0[17];
  v16 = v0[18];
  v19 = v0[15];
  v18 = v0[16];

  (*(v17 + 8))(v16, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[13] = v15;

  sub_21498EA20();
  v20 = v0[18];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2148B8444()
{
  v1[3] = v0;
  v1[4] = sub_21498FAB0();
  v1[5] = sub_21498FAA0();
  v3 = sub_21498FA50();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2148B84E0, v3, v2);
}

uint64_t sub_2148B84E0()
{
  v1 = *(v0 + 4);
  v2 = *__swift_project_boxed_opaque_existential_1((*(v0 + 3) + 16), *(*(v0 + 3) + 40));
  v3 = sub_21493B060(0xD00000000000003BLL, 0x80000002149A15B0);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v3;

  sub_21498EA20();
  *(v0 + 8) = sub_21498FAA0();
  v4 = *(MEMORY[0x277D858E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 9) = v5;
  *v5 = v0;
  v5[1] = sub_2148B8648;
  v6 = *(v0 + 3);

  return MEMORY[0x282200600]();
}

uint64_t sub_2148B8648()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2148B878C, v5, v4);
}

uint64_t sub_2148B878C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2148B87EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  sub_21498FAB0();
  v3[5] = sub_21498FAA0();
  v6 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148B88BC, v6, v5);
}

uint64_t sub_2148B88BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_21498FAE0();
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_2148B8D10(v2, &unk_2149937B8, v7, &unk_2826C6F68, MEMORY[0x277D84F78] + 8, &unk_214993850);
  sub_21489DFCC(v2, &qword_27CA1B6D0, &qword_2149916C0);
  v6(v2, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;

  v9 = MEMORY[0x277D84F78];
  sub_2148B8D10(v2, &unk_2149937C8, v8, &unk_2826C6F68, MEMORY[0x277D84F78] + 8, &unk_214993850);
  sub_21489DFCC(v2, &qword_27CA1B6D0, &qword_2149916C0);
  v6(v2, 1, 1, v5);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;

  sub_2148B8D10(v2, &unk_2149937D8, v10, &unk_2826C6F68, v9 + 8, &unk_214993850);
  sub_21489DFCC(v2, &qword_27CA1B6D0, &qword_2149916C0);
  v6(v2, 1, 1, v5);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;

  sub_2148B8D10(v2, &unk_2149937E8, v11, &unk_2826C6F68, v9 + 8, &unk_214993850);
  sub_21489DFCC(v2, &qword_27CA1B6D0, &qword_2149916C0);
  v6(v2, 1, 1, v5);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;

  sub_2148B8D10(v2, &unk_2149937F8, v12, &unk_2826C6F68, MEMORY[0x277D84F78] + 8, &unk_214993850);
  sub_21489DFCC(v2, &qword_27CA1B6D0, &qword_2149916C0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2148B8C58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B71E4();
}

uint64_t sub_2148B8D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[0] = a6;
  v7 = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v25 - v13;
  sub_2148AA824(a1, v25 - v13, &qword_27CA1B6D0, &qword_2149916C0);
  v15 = sub_21498FAE0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_21489DFCC(v14, &qword_27CA1B6D0, &qword_2149916C0);
    if (*(a3 + 16))
    {
LABEL_3:
      v17 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_21498FA50();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_21498FAD0();
    (*(v16 + 8))(v14, v15);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v7;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v23 = (v20 | v18);
  if (v20 | v18)
  {
    v26[0] = 0;
    v26[1] = 0;
    v23 = v26;
    v26[2] = v18;
    v26[3] = v20;
  }

  v25[1] = 1;
  v25[2] = v23;
  v25[3] = v21;
  swift_task_create();
}

uint64_t sub_2148B8F20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899138;

  return sub_2148B6B20();
}

uint64_t sub_2148B8FB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B7808();
}

uint64_t sub_2148B9040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B7DF8();
}

uint64_t sub_2148B90F0()
{
  sub_21498FAB0();
  *(v0 + 32) = sub_21498FAA0();
  v2 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148B9184, v2, v1);
}

uint64_t sub_2148B9184()
{
  v2 = v0[3];
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v3 = v0[2];
  v0[5] = v3;
  v7 = (*v3 + 344);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2148B9304;

  return v8();
}

uint64_t sub_2148B9304()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t *sub_2148B9414()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__provider;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB28, &qword_214993D88);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unsubscribeRecommendations;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB30, &qword_214993D90);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__automationRecommendations;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB38, &qword_214993D98);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__showUnsubscribeInMessageList;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB40, &qword_214993DA0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unifiedRules;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB48, &qword_214993DA8);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__inlineTips;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB50, &qword_214993DB0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__preferences;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB58, &qword_214993DB8);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__cacheTTL;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB60, &qword_214993DC0);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v25 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedAutomationRecommendation;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB68, &qword_214993DC8);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  v27 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedUnsubscribeRecommendations;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB70, &qword_214993DD0);
  v29 = *(*(v28 - 8) + 8);
  v29(v0 + v27, v28);
  v30 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedUnifiedRule;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB78, &qword_214993DD8);
  (*(*(v31 - 8) + 8))(v0 + v30, v31);
  v32 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedInlineTip;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB80, &qword_214993DE0);
  (*(*(v33 - 8) + 8))(v0 + v32, v33);
  v29(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__isResettingMailCleanup, v28);
  v29(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__shouldShowOnboardingScreen, v28);
  v34 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__recommendationsError;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB88, &qword_214993DE8);
  v36 = *(*(v35 - 8) + 8);
  v36(v0 + v34, v35);
  v36(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unifiedRulesError, v35);
  v36(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__inlineTipsError, v35);
  v36(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__preferencesError, v35);
  v37 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__errorToPresent;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB90, &qword_214993DF0);
  (*(*(v38 - 8) + 8))(v0 + v37, v38);
  v39 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__resultToPresent;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB98, &qword_214993DF8);
  (*(*(v40 - 8) + 8))(v0 + v39, v40);
  return v0;
}

uint64_t sub_2148B9994()
{
  sub_2148B9414();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2148B9A14()
{
  sub_2148B9F60();
  if (v1 <= 0x3F)
  {
    v31 = *(v0 - 8) + 64;
    sub_2148BA004(319, &qword_27CA1AA18, &qword_27CA1AA20, &qword_214993608);
    if (v3 <= 0x3F)
    {
      v32 = *(v2 - 8) + 64;
      sub_2148BA004(319, &qword_27CA1AA28, &qword_27CA1AA30, &qword_214993610);
      if (v5 <= 0x3F)
      {
        v33 = *(v4 - 8) + 64;
        sub_2148BA004(319, &qword_27CA1AA38, &qword_27CA1AA40, &qword_214993618);
        if (v7 <= 0x3F)
        {
          v34 = *(v6 - 8) + 64;
          sub_2148BA004(319, &qword_27CA1AA48, &qword_27CA1AA50, &qword_214993620);
          if (v9 <= 0x3F)
          {
            v35 = *(v8 - 8) + 64;
            sub_2148BA004(319, &qword_27CA1AA58, &qword_27CA1AA60, &qword_214993628);
            if (v11 <= 0x3F)
            {
              v36 = *(v10 - 8) + 64;
              sub_2148BA004(319, &qword_27CA1AA68, &qword_27CA1AA70, &qword_214993630);
              if (v13 <= 0x3F)
              {
                v37 = *(v12 - 8) + 64;
                sub_2148B9FB8(319, &qword_27CA1AA78);
                if (v15 <= 0x3F)
                {
                  v38 = *(v14 - 8) + 64;
                  sub_2148BA004(319, &qword_27CA1AA80, &qword_27CA1AA88, &qword_214993638);
                  if (v17 <= 0x3F)
                  {
                    v39 = *(v16 - 8) + 64;
                    sub_2148B9FB8(319, &qword_27CA1AA90);
                    if (v19 <= 0x3F)
                    {
                      v20 = *(v18 - 8) + 64;
                      sub_2148BA004(319, &qword_27CA1AA98, &qword_27CA1AAA0, &qword_214993640);
                      if (v22 <= 0x3F)
                      {
                        v40 = *(v21 - 8) + 64;
                        sub_2148BA004(319, &qword_27CA1AAA8, &qword_27CA1AAB0, &qword_214993648);
                        if (v24 <= 0x3F)
                        {
                          v41 = *(v23 - 8) + 64;
                          sub_2148BA004(319, &qword_27CA1AAB8, &qword_27CA1AAC0, &unk_214993650);
                          if (v26 <= 0x3F)
                          {
                            v42 = *(v25 - 8) + 64;
                            sub_2148BA004(319, &qword_27CA1AAC8, &qword_27CA1AAD0, &qword_214994AB0);
                            if (v28 <= 0x3F)
                            {
                              v43 = *(v27 - 8) + 64;
                              sub_2148BA004(319, &qword_27CA1AAD8, &qword_27CA1AAE0, qword_214993660);
                              if (v30 <= 0x3F)
                              {
                                v44 = *(v29 - 8) + 64;
                                swift_updateClassMetadata2();
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
          }
        }
      }
    }
  }
}

void sub_2148B9F60()
{
  if (!qword_27CA1AA10)
  {
    type metadata accessor for iCloudMailAssistantProviderSwift();
    v0 = sub_21498EA30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1AA10);
    }
  }
}

void sub_2148B9FB8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21498EA30();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2148BA004(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21498EA30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2148BA0A0()
{
  result = sub_21498E350();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2148BA164(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2148BA19C()
{
  result = sub_21498E350();
  if (v1 <= 0x3F)
  {
    result = sub_2148BA220();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2148BA220()
{
  result = qword_27CA1AB08;
  if (!qword_27CA1AB08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CA1AB08);
  }

  return result;
}

unint64_t sub_2148BA284()
{
  result = qword_27CA1AB10;
  if (!qword_27CA1AB10)
  {
    sub_21498E350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AB10);
  }

  return result;
}

uint64_t sub_2148BA2DC@<X0>(uint64_t *a1@<X8>)
{
  _s9ViewModelCMa(0);
  result = sub_21498E9D0();
  *a1 = result;
  return result;
}

uint64_t sub_2148BA31C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21498E350();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 sub_2148BA3B8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v6;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *(a2 + 96) = v11;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_2148BA478(__int128 *a1, uint64_t *a2)
{
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v20 = *(a1 + 96);
  v4 = a1[1];
  v19[0] = *a1;
  v19[1] = v4;
  v5 = a1[3];
  v19[2] = a1[2];
  v19[3] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v16 = a1[4];
  v17 = v7;
  v18 = *(a1 + 96);
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v9 = a1[3];
  v14 = a1[2];
  v15 = v9;
  sub_2148AA824(v19, v11, &qword_27CA1AA88, &qword_214993638);

  return sub_21498EA20();
}

__n128 sub_2148BA578@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v6;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_2148BA628(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v12[4] = a1[4];
  v12[5] = v3;
  v12[6] = a1[6];
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v11[11] = a1[4];
  v11[12] = v7;
  v11[13] = a1[6];
  v8 = a1[1];
  v11[7] = *a1;
  v11[8] = v8;
  v9 = a1[3];
  v11[9] = a1[2];
  v11[10] = v9;
  sub_2148AA824(v12, v11, &qword_27CA1AAA0, &qword_214993640);

  return sub_21498EA20();
}

void *sub_2148BA6FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return memcpy(a2, v5, 0x179uLL);
}

uint64_t sub_2148BA78C(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x179uLL);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  memcpy(v7, __src, sizeof(v7));
  sub_2148AA824(__dst, &v6, &qword_27CA1AAB0, &qword_214993648);

  return sub_21498EA20();
}

uint64_t sub_2148BA890(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();
}

uint64_t sub_2148BA92C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  sub_2148AA824(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v15, v13, a5, a6);

  sub_21498EA20();
  return sub_21489DFCC(v15, a5, a6);
}

uint64_t sub_2148BAAA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v5;
  return result;
}

uint64_t sub_2148BAB24(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_2148BABE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

double sub_2148BAC60@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_2148BACF0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2;
  v9 = *(a1 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148BB870(v2, v3);

  return sub_21498EA20();
}

double sub_2148BADB4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2148BAE34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_2148BAEB0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_214899138;

  return sub_2148B87EC(a1, a2, v2);
}

uint64_t sub_2148BAF5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214899964;

  return sub_2148B8C58();
}

uint64_t sub_2148BB010()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214899964;

  return sub_2148B8F20();
}

uint64_t sub_2148BB0C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214899964;

  return sub_2148B8FB0();
}

uint64_t sub_2148BB178()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214899964;

  return sub_2148B9040();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2148BB26C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_2148B90D0(a1, v4, v5, v6);
}

uint64_t sub_2148BB334@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v5;
  return result;
}

uint64_t sub_2148BB3C4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_2148BB4C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v5;
  return result;
}

uint64_t sub_2148BB550(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_21498EA20();
}

uint64_t sub_2148BB5C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2148BB6C0;

  return v7(a1);
}

uint64_t sub_2148BB6C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2148BB7B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214899964;

  return sub_2148BB5C8(a1, v5);
}

uint64_t sub_2148BB870(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_2148BB880(a1, a2);
  }

  return a1;
}

uint64_t sub_2148BB880(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2148BB8C8(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_2148BB9BC;

  return v6(v2 + 16);
}

uint64_t sub_2148BB9BC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v4 = *(v1 + 24);
  *v3 = *(v1 + 16);
  v3[1] = v4;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2148BBB00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214899138;

  return sub_2148BB8C8(a1, v5);
}

uint64_t sub_2148BBBB8()
{
  v1 = sub_21498E690();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = type metadata accessor for TapToRadarDraft();
  v0[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v0[7] = swift_task_alloc();
  sub_21498FAB0();
  v0[8] = sub_21498FAA0();
  v8 = sub_21498FA50();
  v0[9] = v8;
  v0[10] = v7;

  return MEMORY[0x2822009F8](sub_2148BBD10, v8, v7);
}

uint64_t sub_2148BBD10()
{
  if (qword_27CA19F98 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v32 = *(&xmmword_27CA1BDF0 + 1);
  v33 = xmmword_27CA1BDF0;
  v30 = qword_27CA1BE00;
  v31 = unk_27CA1BE08;
  v29 = qword_27CA1BE10;

  v4 = v3;
  v28 = v3;
  sub_21498E310();
  v5 = sub_21498E320();
  v6 = *(*(v5 - 8) + 56);
  v34 = v0;
  v6(v4, 0, 1, v5);
  *v1 = 0x4449656C646E7542;
  *(v1 + 8) = 0xE800000000000000;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 88) = 10;
  *(v1 + 64) = 0;
  strcpy((v1 + 72), "Classification");
  *(v1 + 87) = -18;
  *(v1 + 112) = 6;
  *(v1 + 96) = 0x6375646F72706552;
  *(v1 + 104) = 0xEF7974696C696269;
  *(v1 + 120) = 0x656C746954;
  *(v1 + 128) = 0xE500000000000000;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0x7470697263736544;
  *(v1 + 160) = 0xEB000000006E6F69;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0x7364726F7779654BLL;
  *(v1 + 192) = 0xE800000000000000;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 200) = MEMORY[0x277D84F90];
  v8 = (v1 + v2[11]);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28) + 36);
  v6(v8 + v27, 1, 1, v5);
  *v8 = 0x7349664F656D6954;
  v8[1] = 0xEB00000000657573;
  v25 = (v1 + v2[12]);
  v26 = v8;
  *v25 = 0x656D686361747441;
  v25[1] = 0xEB0000000073746ELL;
  v25[2] = v7;
  v24 = (v1 + v2[13]);
  *v24 = 0xD000000000000011;
  v24[1] = 0x80000002149A1680;
  v24[2] = v7;
  v23 = (v1 + v2[14]);
  *v23 = 0xD000000000000014;
  v23[1] = 0x80000002149A16A0;
  v23[2] = v7;
  v22 = (v1 + v2[15]);
  strcpy(v22, "DeleteOnAttach");
  v22[15] = -18;
  v22[16] = 0;
  v9 = (v1 + v2[16]);
  *v9 = 0x4449656369766544;
  v9[1] = 0xE900000000000073;
  v9[2] = v7;
  v10 = v1 + v2[17];
  strcpy(v10, "DeviceClasses");
  *(v10 + 14) = -4864;
  *(v10 + 16) = v7;
  v11 = v1 + v2[18];
  strcpy(v11, "DeviceModels");
  *(v11 + 13) = 0;
  *(v11 + 14) = -5120;
  *(v11 + 16) = v7;
  v12 = (v1 + v2[19]);
  *v12 = 0xD000000000000016;
  v12[1] = 0x80000002149A16C0;
  v12[2] = 0;
  v13 = v1 + v2[20];
  *v13 = 0xD00000000000001ALL;
  *(v13 + 8) = 0x80000002149A16E0;
  *(v13 + 16) = 0;
  v14 = v1 + v2[21];
  *(v14 + 16) = 0;
  *v14 = 0x676169446F747541;
  *(v14 + 8) = 0xEF73636974736F6ELL;
  v15 = (v1 + v2[22]);
  *v15 = 0xD00000000000001BLL;
  v15[1] = 0x80000002149A1700;
  v15[2] = v7;
  v16 = (v1 + v2[23]);
  *v16 = 0xD000000000000018;
  v16[1] = 0x80000002149A1720;
  v16[2] = 0;
  v16[3] = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v17 = *(v1 + 56);
  v18 = *(v1 + 64);
  sub_2148BC644(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 32) = v33;
  *(v1 + 40) = v32;
  *(v1 + 48) = v30;
  *(v1 + 56) = v31;
  *(v1 + 64) = v29;
  *(v1 + 88) = 5;
  *(v1 + 112) = 4;
  *(v1 + 136) = 0xD00000000000001ALL;
  *(v1 + 144) = 0x80000002149A1660;
  *(v1 + 168) = 0xD00000000000001ALL;
  *(v1 + 176) = 0x80000002149A1660;
  *(v1 + 200) = v7;
  sub_2148BC688(v28, v26 + v27);
  v25[2] = v7;
  v24[2] = v7;
  v23[2] = v7;
  v22[16] = 0;
  v9[2] = v7;
  *(v10 + 16) = &unk_2826C4458;
  *(v11 + 16) = v7;
  v12[2] = 32;
  *(v13 + 16) = 1;
  *(v14 + 16) = 0;
  v15[2] = v7;
  v16[2] = 0;
  v16[3] = 0;
  v19 = swift_task_alloc();
  v34[11] = v19;
  *v19 = v34;
  v19[1] = sub_2148BC280;
  v20 = v34[7];

  return TapToRadarDraft.open()();
}

uint64_t sub_2148BC280()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_2148BC440;
  }

  else
  {
    v7 = sub_2148BC3BC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2148BC3BC()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_2148BC6F8(v2);
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2148BC440()
{
  v2 = v0[7];
  v1 = v0[8];

  sub_2148BC6F8(v2);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_21498E670();
  v10 = sub_21498FBB0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[12];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_21488E000, v9, v10, "Failed to open tap-to-radar error: %@", v13, 0xCu);
    sub_21489DFCC(v14, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v17 = v0[7];
  v18 = v0[4];
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2148BC644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2148BC688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148BC6F8(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2148BC7A8()
{
  sub_21498E900();
  if (v0 <= 0x3F)
  {
    sub_2148BC9E0(319, &qword_27CA1A828, MEMORY[0x277D23340]);
    if (v1 <= 0x3F)
    {
      sub_2148BC9E0(319, &qword_27CA1ABE0, type metadata accessor for HeaderImage);
      if (v2 <= 0x3F)
      {
        sub_2148BC9E0(319, &qword_27CA1ABE8, type metadata accessor for OBKLiftUIContent);
        if (v3 <= 0x3F)
        {
          type metadata accessor for OBWelcomeContentViewLayout(319);
          if (v4 <= 0x3F)
          {
            sub_2148BC9E0(319, &qword_27CA1ABF0, type metadata accessor for OBKLiftUICaption);
            if (v5 <= 0x3F)
            {
              sub_2148BC9E0(319, &qword_27CA1ABF8, type metadata accessor for OBKLiftUIButton);
              if (v6 <= 0x3F)
              {
                sub_2148BCA54(319, &qword_27CA1B660, MEMORY[0x277D23330], &qword_27CA1A858, MEMORY[0x277D23330]);
                if (v7 <= 0x3F)
                {
                  sub_2148BCA54(319, &qword_27CA1AC00, MEMORY[0x277D232E8], &qword_27CA1AC08, MEMORY[0x277D232E8]);
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

void sub_2148BC9E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21498FCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2148BCA54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2148BCAE8(a4, a5);
    v8 = sub_21498ED30();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2148BCAE8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2148BCB30()
{
  sub_2148BCBDC(319, &qword_27CA1AC20, MEMORY[0x277D23340]);
  if (v0 <= 0x3F)
  {
    sub_2148BCBDC(319, &qword_27CA1AC28, MEMORY[0x277D231A8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2148BCBDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2148BCC28@<X0>(void *a1@<X8>)
{
  v51 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC58, &qword_214993FD8);
  v2 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v4 = &v48 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC60, &qword_214993FE0);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for OBKLiftUIContent(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(v1 + v19[8], v10, &qword_27CA1ABB8, &qword_214993E40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21489DFCC(v10, &qword_27CA1ABB8, &qword_214993E40);
    goto LABEL_8;
  }

  sub_2148C5F40(v10, v18, type metadata accessor for OBKLiftUIContent);
  sub_2148C5ED8(v18, v16, type metadata accessor for OBKLiftUIContent);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2148C69F4(v18, type metadata accessor for OBKLiftUIContent);
    sub_2148C69F4(v16, type metadata accessor for OBKLiftUIContent);
LABEL_8:
    sub_2148BF39C(v4);
    v35 = sub_21498EFF0();
    v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC68, &qword_214993FE8) + 36)] = v35;
    v36 = sub_21498ECE0();
    v37 = sub_21498F000();
    v38 = &v4[*(v50 + 36)];
    *v38 = v36;
    v38[8] = v37;
    v39 = sub_2148BECC0();
    v40 = sub_2148BEEDC(v39);

    v29 = (v1 + v19[13]);
    v41 = *v29;
    if (*v29)
    {
      v31 = (v1 + v19[14]);
      v42 = *v31;
      if (*v31)
      {

        v43 = sub_2148BF014(v40, v41, v42, &qword_27CA1AC58, &qword_214993FD8, &qword_27CA1AD98, sub_2148C6BA4);

        sub_21489DFCC(v4, &qword_27CA1AC58, &qword_214993FD8);
        v52 = v43;
        v53 = 1;
        result = sub_21498EE90();
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_12:
    v46 = v29[1];
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
    sub_21498ED10();
    __break(1u);
    goto LABEL_13;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0);
  sub_21489DFCC(&v16[*(v20 + 48)], &qword_27CA1AC78, qword_214999F40);
  v21 = sub_21498E6A0();
  (*(*(v21 - 8) + 8))(v16, v21);
  v22 = v49;
  sub_2148BD2BC(v49);
  v23 = sub_21498EFF0();
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC80, &qword_214994000) + 36)) = v23;
  v24 = sub_21498ECE0();
  v25 = sub_21498F000();
  v26 = v22 + *(v48 + 36);
  *v26 = v24;
  *(v26 + 8) = v25;
  v27 = sub_2148BECC0();
  v28 = sub_2148BEEDC(v27);

  v29 = (v1 + v19[13]);
  v30 = *v29;
  if (!*v29)
  {
    goto LABEL_12;
  }

  v31 = (v1 + v19[14]);
  v32 = *v31;
  if (*v31)
  {

    v33 = sub_2148BF014(v28, v30, v32, &qword_27CA1AC60, &qword_214993FE0, &qword_27CA1AC88, sub_2148C5B0C);

    sub_21489DFCC(v22, &qword_27CA1AC60, &qword_214993FE0);
    v52 = v33;
    v53 = 0;
    sub_21498EE90();
    result = sub_2148C69F4(v18, type metadata accessor for OBKLiftUIContent);
LABEL_11:
    v44 = v55;
    v45 = v51;
    *v51 = v54;
    *(v45 + 8) = v44;
    return result;
  }

LABEL_13:
  v47 = v31[1];
  sub_21498E870();
  sub_2148BCAE8(&qword_27CA1AC08, MEMORY[0x277D232E8]);

  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148BD2BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v166 = a1;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD08, &qword_214994040);
  v3 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v155 = &v134 - v4;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACE0, &qword_214994028);
  v5 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v157 = &v134 - v6;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACF0, &qword_214994030);
  v142 = *(v156 - 8);
  v7 = *(v142 + 64);
  MEMORY[0x28223BE20](v156);
  v141 = &v134 - v8;
  v151 = sub_21498E6A0();
  v143 = *(v151 - 8);
  v9 = *(v143 + 64);
  v10 = MEMORY[0x28223BE20](v151);
  v138 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v11;
  MEMORY[0x28223BE20](v10);
  v150 = &v134 - v12;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACD0, &qword_214994020);
  v140 = *(v147 - 8);
  v13 = *(v140 + 64);
  MEMORY[0x28223BE20](v147);
  v139 = &v134 - v14;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD10, &qword_214994048);
  v15 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v164 = &v134 - v16;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD18, &qword_214994050);
  v17 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v145 = &v134 - v18;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACB0, &qword_214994010);
  v19 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v146 = &v134 - v20;
  v21 = type metadata accessor for OBKLiftUIView(0);
  v158 = *(v21 - 1);
  v22 = *(v158 + 64);
  MEMORY[0x28223BE20](v21);
  v159 = v23;
  v160 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD20, &qword_214994058);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v168 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v169 = &v134 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD28, &unk_214994060);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v167 = (&v134 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v134 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v134 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v134 - v43;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACC0, &qword_214994018);
  v153 = *(v161 - 8);
  v45 = *(v153 + 8);
  v46 = MEMORY[0x28223BE20](v161);
  v152 = (&v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46);
  v136 = &v134 - v48;
  v49 = sub_21498E900();
  v50 = *(v49 - 8);
  v170 = v49;
  v171 = v50;
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v135 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v52);
  v149 = &v134 - v54;
  MEMORY[0x28223BE20](v53);
  v148 = &v134 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v59 = &v134 - v58;
  sub_2148AA824(v2 + v21[7], &v134 - v58, &qword_27CA1ABB0, &qword_214993E38);
  v60 = type metadata accessor for HeaderImage(0);
  if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
  {
    v61 = (v2 + v21[13]);
    if (*v61)
    {
      v62 = v21[5];
      v63 = *v61;

      v64 = sub_21498E8F0();
      v65 = v170;
      v150 = v71;
      v151 = v64;

      sub_2148AA824(v2 + v21[6], v36, &qword_27CA1A800, &unk_214993100);
      v72 = v171;
      v73 = (*(v171 + 48))(v36, 1, v65);
      if (v73 == 1)
      {
        sub_21489DFCC(v36, &qword_27CA1A800, &unk_214993100);
      }

      else
      {

        sub_21498E8F0();

        (*(v72 + 8))(v36, v65);
      }

      sub_2148C0D28(v2 + v21[10], v167);
      sub_2148C1AA4(v2 + v21[11], v169);
      sub_2148C1AA4(v2 + v21[12], v168);
      sub_2148C2414();
      v74 = v160;
      sub_2148C5ED8(v2, v160, type metadata accessor for OBKLiftUIView);
      v75 = (*(v158 + 80) + 16) & ~*(v158 + 80);
      v76 = swift_allocObject();
      sub_2148C5F40(v74, v76 + v75, type metadata accessor for OBKLiftUIView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD40, &qword_214994078);
      sub_2148C5FA8();
      v77 = v152;
      sub_21498E470();
      v78 = v153;
      v79 = v161;
      (*(v153 + 2))(v155, v77, v161);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1ACE8, &qword_27CA1ACF0, &qword_214994030);
      sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018);
      v80 = v157;
      sub_21498EE90();
      sub_2148AA824(v80, v164, &qword_27CA1ACE0, &qword_214994028);
      swift_storeEnumTagMultiPayload();
      sub_2148C5C50();
      sub_2148C5D30();
      sub_21498EE90();
      sub_21489DFCC(v80, &qword_27CA1ACE0, &qword_214994028);
      return (*(v78 + 1))(v77, v79);
    }

LABEL_29:
    v133 = v61[1];
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v67 = v170;
    v68 = v171;
    if (EnumCaseMultiPayload == 1)
    {
      v155 = *(v171 + 32);
      v156 = v171 + 32;
      (v155)(v149, v59, v170);
      v61 = (v2 + v21[13]);
      if (!*v61)
      {
        goto LABEL_29;
      }

      v69 = v21[5];
      v70 = *v61;

      v91 = sub_21498E8F0();
      v151 = v92;

      sub_2148AA824(v2 + v21[6], v42, &qword_27CA1A800, &unk_214993100);
      v93 = (*(v68 + 48))(v42, 1, v67);
      v157 = v91;
      if (v93 == 1)
      {
        sub_21489DFCC(v42, &qword_27CA1A800, &unk_214993100);
        v153 = 0;
        v154 = 0;
      }

      else
      {

        v94 = sub_21498E8F0();
        v153 = v124;
        v154 = v94;

        (*(v68 + 8))(v42, v67);
      }

      sub_2148C0D28(v2 + v21[10], v167);
      sub_2148C1AA4(v2 + v21[11], v169);
      sub_2148C1AA4(v2 + v21[12], v168);
      LODWORD(v170) = sub_2148C2414();
      v95 = v171;
      v96 = v135;
      (*(v171 + 16))(v135, v149, v67);
      v152 = type metadata accessor for OBKLiftUIView;
      v97 = v160;
      sub_2148C5ED8(v2, v160, type metadata accessor for OBKLiftUIView);
      v98 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v99 = *(v158 + 80);
      v100 = swift_allocObject();
      v101 = v96;
      v102 = v67;
      (v155)(v100 + v98, v101, v67);
      sub_2148C5F40(v97, v100 + ((v51 + v99 + v98) & ~v99), type metadata accessor for OBKLiftUIView);
      sub_2148C5ED8(v2, v97, v152);
      v103 = swift_allocObject();
      sub_2148C5F40(v97, v103 + ((v99 + 16) & ~v99), type metadata accessor for OBKLiftUIView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD68, &qword_214994088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD40, &qword_214994078);
      sub_2148C6970();
      sub_2148C5FA8();
      v104 = v139;
      sub_21498E460();
      v105 = v140;
      v106 = v147;
      (*(v140 + 16))(v145, v104, v147);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018);
      sub_2148B4C20(&qword_27CA1ACC8, &qword_27CA1ACD0, &qword_214994020);
      v107 = v146;
      sub_21498EE90();
      sub_2148AA824(v107, v164, &qword_27CA1ACB0, &qword_214994010);
      swift_storeEnumTagMultiPayload();
      sub_2148C5C50();
      sub_2148C5D30();
      sub_21498EE90();
      sub_21489DFCC(v107, &qword_27CA1ACB0, &qword_214994010);
      (*(v105 + 8))(v104, v106);
      return (*(v171 + 8))(v149, v102);
    }

    else
    {
      v87 = *(v143 + 32);
      v87(v150, v59, v151);
      v61 = (v2 + v21[13]);
      if (!*v61)
      {
        goto LABEL_29;
      }

      v88 = v21[5];
      v89 = *v61;

      v90 = sub_21498E8F0();
      v148 = v110;
      v149 = v90;

      sub_2148AA824(v2 + v21[6], v39, &qword_27CA1A800, &unk_214993100);
      v111 = (*(v68 + 48))(v39, 1, v67);
      v153 = v87;
      if (v111 == 1)
      {
        sub_21489DFCC(v39, &qword_27CA1A800, &unk_214993100);
        v171 = 0;
        v152 = 0;
      }

      else
      {

        v171 = sub_21498E8F0();
        v152 = v132;

        (*(v68 + 8))(v39, v170);
      }

      sub_2148C0D28(v2 + v21[10], v167);
      sub_2148C1AA4(v2 + v21[11], v169);
      sub_2148C1AA4(v2 + v21[12], v168);
      v112 = v143;
      v113 = v138;
      v114 = v151;
      (*(v143 + 16))(v138, v150, v151);
      v115 = (*(v112 + 80) + 16) & ~*(v112 + 80);
      v116 = swift_allocObject();
      v153((v116 + v115), v113, v114);
      v117 = v160;
      sub_2148C5ED8(v2, v160, type metadata accessor for OBKLiftUIView);
      v118 = (*(v158 + 80) + 16) & ~*(v158 + 80);
      v119 = swift_allocObject();
      sub_2148C5F40(v117, v119 + v118, type metadata accessor for OBKLiftUIView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD40, &qword_214994078);
      sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8]);
      sub_2148C5FA8();
      v120 = v141;
      sub_21498E460();
      v121 = v142;
      v122 = v156;
      (*(v142 + 16))(v155, v120, v156);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1ACE8, &qword_27CA1ACF0, &qword_214994030);
      sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018);
      v123 = v157;
      sub_21498EE90();
      sub_2148AA824(v123, v164, &qword_27CA1ACE0, &qword_214994028);
      swift_storeEnumTagMultiPayload();
      sub_2148C5C50();
      sub_2148C5D30();
      sub_21498EE90();
      sub_21489DFCC(v123, &qword_27CA1ACE0, &qword_214994028);
      (*(v121 + 8))(v120, v122);
      return (*(v112 + 8))(v150, v151);
    }
  }

  else
  {
    v82 = v170;
    v83 = v171;
    (*(v171 + 32))(v148, v59, v170);
    v61 = (v2 + v21[13]);
    if (!*v61)
    {
      goto LABEL_29;
    }

    v84 = v21[5];
    v85 = *v61;

    v86 = sub_21498E8F0();
    v155 = v108;
    v156 = v86;

    sub_2148AA824(v2 + v21[6], v44, &qword_27CA1A800, &unk_214993100);
    v109 = (*(v83 + 48))(v44, 1, v82);
    if (v109 == 1)
    {
      sub_21489DFCC(v44, &qword_27CA1A800, &unk_214993100);
      v157 = 0;
    }

    else
    {

      v157 = sub_21498E8F0();

      (*(v83 + 8))(v44, v82);
    }

    sub_21498E8F0();

    sub_2148C0D28(v2 + v21[10], v167);
    sub_2148C1AA4(v2 + v21[11], v169);
    sub_2148C1AA4(v2 + v21[12], v168);
    sub_2148C2414();
    v125 = v160;
    sub_2148C5ED8(v2, v160, type metadata accessor for OBKLiftUIView);
    v126 = (*(v158 + 80) + 16) & ~*(v158 + 80);
    v127 = swift_allocObject();
    sub_2148C5F40(v125, v127 + v126, type metadata accessor for OBKLiftUIView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD40, &qword_214994078);
    sub_2148C5FA8();
    v128 = v136;
    sub_21498E470();
    v129 = v153;
    v130 = v161;
    (*(v153 + 2))(v145, v128, v161);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018);
    sub_2148B4C20(&qword_27CA1ACC8, &qword_27CA1ACD0, &qword_214994020);
    v131 = v146;
    sub_21498EE90();
    sub_2148AA824(v131, v164, &qword_27CA1ACB0, &qword_214994010);
    swift_storeEnumTagMultiPayload();
    sub_2148C5C50();
    sub_2148C5D30();
    sub_21498EE90();
    sub_21489DFCC(v131, &qword_27CA1ACB0, &qword_214994010);
    (*(v129 + 1))(v128, v130);
    return (*(v171 + 8))(v148, v170);
  }
}

uint64_t sub_2148BECC0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v16 = MEMORY[0x277D84F90];
  v9 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(v1 + *(v9 + 44), v8, &qword_27CA1ABC8, qword_214993E50);
  v10 = type metadata accessor for OBKLiftUIButton(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) == 1)
  {
    sub_21489DFCC(v8, &qword_27CA1ABC8, qword_214993E50);
  }

  else
  {
    v12 = *&v8[*(v10 + 28)];

    sub_2148C69F4(v8, type metadata accessor for OBKLiftUIButton);
    sub_2148A8A04(v12);
  }

  sub_2148AA824(v1 + *(v9 + 48), v6, &qword_27CA1ABC8, qword_214993E50);
  if (v11(v6, 1, v10) == 1)
  {
    sub_21489DFCC(v6, &qword_27CA1ABC8, qword_214993E50);
  }

  else
  {
    v13 = *&v6[*(v10 + 28)];

    sub_2148C69F4(v6, type metadata accessor for OBKLiftUIButton);
    sub_2148A8A04(v13);
  }

  return v16;
}