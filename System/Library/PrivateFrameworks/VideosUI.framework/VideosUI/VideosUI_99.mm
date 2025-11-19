uint64_t sub_1E3E59090(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = v5;
      v14 = *v4;
      v15 = *v6;
      v16 = v14;
      [v15 relativeTime];
      v18 = v17;
      [v16 relativeTime];
      v20 = v19;

      if (v18 >= v20)
      {
        break;
      }

      v21 = v6;
      v22 = v7 == v6++;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v7;
      v5 = v13;
    }

    v21 = v4;
    v22 = v7 == v4++;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v21;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[v9];
  v41 = v4;
LABEL_25:
  v24 = v6 - 1;
  v25 = v5 - 1;
  while (v11 > v4 && v6 > v7)
  {
    v27 = v7;
    v28 = v25;
    v29 = v24;
    v30 = *v24;
    v31 = *(v11 - 1);
    v32 = v30;
    [v31 relativeTime];
    v34 = v33;
    [v32 relativeTime];
    v36 = v35;

    v5 = v28;
    v37 = v28 + 1;
    if (v34 < v36)
    {
      v22 = v37 == v6;
      v6 = v29;
      v7 = v27;
      v4 = v41;
      if (!v22)
      {
        *v5 = *v29;
        v6 = v29;
      }

      goto LABEL_25;
    }

    if (v11 != v37)
    {
      *v28 = *(v11 - 1);
    }

    v25 = v28 - 1;
    --v11;
    v24 = v29;
    v7 = v27;
    v4 = v41;
  }

LABEL_38:
  v38 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v38])
  {
    memmove(v6, v4, 8 * v38);
  }

  return 1;
}

uint64_t sub_1E3E592F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3E59384((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1E3E59384(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1ECF2A420);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1ECF3A0A8, &qword_1ECF3A0A0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A0A0);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E59538()
{
  OUTLINED_FUNCTION_27_2();
  v0 = sub_1E41FDF34();
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  v2[1] = sub_1E327C238;

  return sub_1E3E56BBC();
}

uint64_t sub_1E3E59608(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3E5964C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E49BC0();
}

unint64_t sub_1E3E596EC()
{
  result = qword_1EE270F20;
  if (!qword_1EE270F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE270F20);
  }

  return result;
}

uint64_t objectdestroy_55Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E3E59790()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E52574();
}

uint64_t sub_1E3E59824()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E51068();
}

uint64_t sub_1E3E598C4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E54330();
}

uint64_t sub_1E3E59948()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E54858();
}

uint64_t sub_1E3E599CC()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E54D9C();
}

uint64_t sub_1E3E59A50()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E55200();
}

uint64_t sub_1E3E59AD4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_128(v1);

  return sub_1E3E558A0();
}

uint64_t get_enum_tag_for_layout_string_8VideosUI19PlayerHapticManagerC0D13CleanupReason33_8B6EDCD0ECA2EB174AF3BF28DB41AB7ALLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3E59B70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3E59BC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_1E3E59D78()
{
  sub_1E4205F14();
  sub_1E4205ED4();
  OUTLINED_FUNCTION_50();

  return v0;
}

uint64_t sub_1E3E59E08()
{
  OUTLINED_FUNCTION_24();

  return sub_1E3E520C4();
}

uint64_t OUTLINED_FUNCTION_48_39(unint64_t *a1, uint64_t *a2)
{

  return sub_1E328FCF4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_77_20()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_83_16()
{

  return sub_1E41FE404();
}

void OUTLINED_FUNCTION_94_19(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_96_18()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_122_10(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

void OUTLINED_FUNCTION_125_10()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_128_10()
{

  return sub_1E4206F64();
}

void OUTLINED_FUNCTION_130_13()
{

  JUMPOUT(0x1E69109E0);
}

void OUTLINED_FUNCTION_131_12()
{

  sub_1E3E4BD68(v0);
}

uint64_t OUTLINED_FUNCTION_132_10()
{

  return sub_1E4206F64();
}

void (*sub_1E3E5A0FC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 256);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E37BB578;
}

unint64_t sub_1E3E5A17C()
{
  v1 = v0;
  if (v0[37])
  {
    v2 = v0[36];
  }

  else
  {
    v3 = 0xE000000000000000;
    sub_1E42074B4();

    v4 = v0[3];
    if (v4)
    {
      v5 = v0[2];
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v3 = v0[3];
    }

    MEMORY[0x1E69109E0](v5, v3);

    v2 = 0xD00000000000001ALL;
    v1[36] = 0xD00000000000001ALL;
    v1[37] = 0x80000001E42863B0;
  }

  return v2;
}

uint64_t sub_1E3E5A2A4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3[32] = 0;
  swift_unknownObjectWeakInit();
  v3[33] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0);
  swift_allocObject();
  v3[34] = sub_1E4200544();
  v3[35] = 0;
  v3[36] = 0;
  v3[37] = 0;

  v7 = sub_1E39BEDCC(a1, a2, a3);
  if (!v7)
  {

    goto LABEL_11;
  }

  ViewModelKeys.rawValue.getter(31);
  sub_1E3277E60(v8, v9, a2, &v14);

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_3_201())
    {
      *(v7 + 264) = v13;
    }
  }

  else
  {
    sub_1E325F748(&v14, &unk_1ECF296E0);
  }

  ViewModelKeys.rawValue.getter(33);
  sub_1E3277E60(v10, v11, a2, &v14);

  if (!v15)
  {

    sub_1E325F748(&v14, &unk_1ECF296E0);
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_3_201() & 1) == 0)
  {
LABEL_11:

    return v7;
  }

  *(v7 + 280) = v13;

  return v7;
}

uint64_t sub_1E3E5A48C(void *a1)
{
  if (!swift_dynamicCastClass())
  {
    goto LABEL_8;
  }

  v2 = sub_1E39BE4D0();
  if (!v2)
  {

    v8 = sub_1E39BE4D0();

    if (!v8)
    {
      v7 = 1;
      return sub_1E39C0504(a1) & v7 & 1;
    }

    goto LABEL_8;
  }

  v3 = v2;

  v4 = sub_1E39BE4D0();

  if (!v4)
  {

LABEL_8:
    v7 = 0;
    return sub_1E39C0504(a1) & v7 & 1;
  }

  sub_1E3BA3590();
  sub_1E3744600(v3);

  v5 = sub_1E37766C4();
  sub_1E3744600(v4);

  v6 = sub_1E4205C44();

  v7 = [v5 isEqualToDictionary_];

  return sub_1E39C0504(a1) & v7 & 1;
}

uint64_t sub_1E3E5A658()
{
  sub_1E32AF6F8(v0 + 248);
}

uint64_t sub_1E3E5A6A0()
{
  v0 = ViewModel.deinit();
  sub_1E32AF6F8(v0 + 248);

  return v0;
}

uint64_t sub_1E3E5A6F0()
{
  v0 = sub_1E3E5A6A0();

  return MEMORY[0x1EEE6BDC0](v0, 304, 7);
}

uint64_t sub_1E3E5A720()
{
  v1 = sub_1E4205CB4();
  v2 = v0[35];
  if (v2)
  {

    v1 = v2;
  }

  (*(*v0 + 416))(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A250);
    type metadata accessor for TimeBasedVariantResolver();
    if (swift_dynamicCast())
    {
      v3 = (*(*v6 + 376))();

      if (v3)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7[0] = v1;
        sub_1E3E5B654(v3, sub_1E394C454, 0, isUniquelyReferenced_nonNull_native, v7);
        v1 = v7[0];
      }
    }
  }

  else
  {
    sub_1E325F748(v7, &qword_1ECF2FFF0);
  }

  if (!*(v1 + 16))
  {

    return 0;
  }

  return v1;
}

uint64_t sub_1E3E5A8E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0);
  sub_1E32752B0(&qword_1ECF2A2A0, &qword_1ECF3E1E0);
  return sub_1E42006B4();
}

uint64_t sub_1E3E5A96C(void (*a1)(void))
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  (*(*v1 + 416))(&v40, v10);
  if (!*(&v41 + 1))
  {
    sub_1E325F748(&v40, &qword_1ECF2FFF0);
LABEL_7:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v23(v8);

    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_6_21();
      v27 = OUTLINED_FUNCTION_100();
      v38 = a1;
      v28 = v27;
      *&v40 = v27;
      *v26 = 136315138;
      v29 = sub_1E3E5A17C();
      v31 = sub_1E3270FC8(v29, v30, &v40);
      v37 = v3;
      v32 = v31;

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1E323F000, v24, v25, "%s no children resolver, ignore", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      a1 = v38;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v8, v37);
    }

    else
    {

      (*(v5 + 8))(v8, v3);
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A250);
  type metadata accessor for TimeBasedVariantResolver();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = v39;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v14(v12);

  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_6_21();
    v37 = v13;
    v18 = v17;
    v19 = OUTLINED_FUNCTION_100();
    v38 = a1;
    v36 = v19;
    *&v40 = v19;
    *v18 = 136315138;
    v20 = sub_1E3E5A17C();
    v22 = sub_1E3270FC8(v20, v21, &v40);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1E323F000, v15, v16, "%s resolve children", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    a1 = v38;
    OUTLINED_FUNCTION_6_0();
    v13 = v37;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v12, v3);
  v40 = 0u;
  v41 = 0u;
  (*(*v13 + 368))(&v40);

  sub_1E325F748(&v40, &unk_1ECF296E0);
LABEL_10:
  a1(1);
  if (v1[3])
  {
    v33 = v1[2];
    v34 = v1[3];
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  *&v40 = v33;
  *(&v40 + 1) = v34;

  sub_1E4200524();
}

void (*sub_1E3E5AE1C(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 888))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3E5AEA0()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v7(v6);

  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = OUTLINED_FUNCTION_100();
    v18[0] = v11;
    *v10 = 136315138;
    v12 = sub_1E3E5A17C();
    v14 = sub_1E3270FC8(v12, v13, v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v8, v9, "%s didUpdateVariant", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v6, v1);
  if (*(v0 + 24))
  {
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v18[0] = v15;
  v18[1] = v16;

  sub_1E4200524();
}

uint64_t sub_1E3E5B0EC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_lockupUpdatingObserver;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_viewModel) = a1;

  v3 = sub_1E3B500B4();

  sub_1E3E5B158();

  return v3;
}

uint64_t sub_1E3E5B158()
{
  v1 = v0;
  result = dynamic_cast_existential_1_conditional(*(v0 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_viewModel));
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);

    v6(ObjectType, v4);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322E0);
    sub_1E32752B0(&qword_1ECF322E8, &qword_1ECF322E0);
    v7 = sub_1E4200844();

    v9[3] = sub_1E42004F4();
    v9[4] = MEMORY[0x1E695BF08];

    v9[0] = v7;
    v8 = OBJC_IVAR____TtC8VideosUI14LockupUpdating_lockupUpdatingObserver;
    swift_beginAccess();
    sub_1E3ABD288(v9, v1 + v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3E5B314()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v8(v7);

  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v20 = v12;
    *v11 = 136315138;
    v13 = *(v1 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_viewModel);
    if (*(v13 + 24))
    {
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
    }

    else
    {
      v15 = 0xE400000000000000;
      v14 = 1819047278;
    }

    v16 = sub_1E3270FC8(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v9, v10, "LockupUpdating::handleViewModelChanged id: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v17 = (*(v4 + 8))(v7, v2);
  (*(*v1 + 208))(v17);
  type metadata accessor for LockupUpdating();
  sub_1E3E5B950();
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t sub_1E3E5B5A8()
{
  v0 = sub_1E3B4FF80();

  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI14LockupUpdating_lockupUpdatingObserver, &qword_1ECF322D8);
  return v0;
}

uint64_t sub_1E3E5B600()
{
  v0 = sub_1E3E5B5A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E5B654(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1E394CDB0(a1, a2, a3, v31);
  v29[2] = v31[0];
  v29[3] = v31[1];
  v29[4] = v31[2];
  v30 = v32;

  while (1)
  {
    sub_1E394CDEC(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_1E34AF4DC();
    }

    v8 = v28;
    sub_1E329504C(v29, v27);
    v9 = *a5;
    v11 = sub_1E327D33C(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        sub_1E4207654();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E394C160(v14, a4 & 1);
      v16 = sub_1E327D33C(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_1E328438C(*(*a5 + 56) + 32 * v11, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);

        v19 = (*(v18 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_1E329504C(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1E329504C(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for LockupUpdating()
{
  result = qword_1EE2A5800;
  if (!qword_1EE2A5800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3E5B950()
{
  result = qword_1ECF36BE0;
  if (!qword_1ECF36BE0)
  {
    type metadata accessor for LockupUpdating();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36BE0);
  }

  return result;
}

uint64_t sub_1E3E5B9A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3E5B314();
  }

  return result;
}

void sub_1E3E5B9FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v45 = v4;
  memset(__src, 0, 32);
  LOBYTE(__src[2]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A258);
  sub_1E42038E4();
  v50 = v57;
  v51 = v56;
  v48 = v59;
  v49 = v58;
  v52 = v61;
  v72 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  v47 = sub_1E4200544();
  if (v1)
  {

    v46 = v1;
    goto LABEL_8;
  }

  v5 = *(*v3 + 392);

  if (v5(v6))
  {
    type metadata accessor for ButtonLayout();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v46 = v7;
      goto LABEL_8;
    }
  }

  v46 = 0;
LABEL_8:
  v8 = *(*v3 + 464);

  v10 = (v8)(v9);
  if (!v10)
  {
    v15 = 0;
LABEL_21:
    v53 = v1;
    v16 = v8();
    if (v16)
    {
      v17 = v16;
      v18 = sub_1E32AE9B0(v16);
      for (i = 0; ; ++i)
      {
        if (v18 == i)
        {

          v24 = 0;
          goto LABEL_40;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1E6911E60](i, v17);
        }

        else
        {
          if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_84;
        }

        v21 = v20;
        v54[0] = *(v20 + 98);
        LOWORD(v71[0]) = 23;
        sub_1E3742F1C();
        sub_1E4206254();
        sub_1E4206254();
        if (v56 == *&__src[0] && v57 == *(&__src[0] + 1))
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_97_0();

        if (v23)
        {
          goto LABEL_37;
        }
      }

LABEL_37:

      v24 = v21;
      if (*v21 == _TtC8VideosUI13TextViewModel)
      {
LABEL_40:
        v25 = (v8)(v16);
        if (v25)
        {
          v26 = v25;
          v27 = sub_1E32AE9B0(v25);
          for (j = 0; ; ++j)
          {
            if (v27 == j)
            {

              v29 = 0;
              goto LABEL_59;
            }

            if ((v26 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x1E6911E60](j, v26);
            }

            else
            {
              if (j >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_87;
              }

              v29 = *(v26 + 8 * j + 32);
            }

            if (__OFADD__(j, 1))
            {
              goto LABEL_86;
            }

            v54[0] = *(v29 + 98);
            LOWORD(v71[0]) = 15;
            sub_1E3742F1C();
            OUTLINED_FUNCTION_8_6();
            sub_1E4206254();
            OUTLINED_FUNCTION_8_6();
            sub_1E4206254();
            if (v56 == *&__src[0] && v57 == *(&__src[0] + 1))
            {
              break;
            }

            v31 = OUTLINED_FUNCTION_97_0();

            if (v31)
            {
              goto LABEL_56;
            }
          }

LABEL_56:

          if (*v29 == _TtC8VideosUI13TextViewModel)
          {
            goto LABEL_59;
          }
        }

        v29 = 0;
LABEL_59:
        if (v53)
        {
          v32 = *(*v53 + 2096);

          v34 = v32(v33);
          v35 = (*(*v53 + 2048))();
          v36 = (*(*v53 + 2072))();
        }

        else
        {
          if (v15 && (v37 = *(*v15 + 392), v38 = , v39 = v37(v38), , v39))
          {
            type metadata accessor for ImageLayout();
            v34 = swift_dynamicCastClass();
            if (!v34)
            {
            }
          }

          else
          {
            v34 = 0;
          }

          if (v24 && (, v40 = sub_1E3C27528(), , v40))
          {
            type metadata accessor for TextLayout();
            v35 = swift_dynamicCastClass();
            if (!v35)
            {
            }
          }

          else
          {
            v35 = 0;
          }

          if (v29 && (, v41 = sub_1E3C27528(), , v41))
          {
            type metadata accessor for TextLayout();
            v36 = swift_dynamicCastClass();
            if (!v36)
            {
            }
          }

          else
          {
            v36 = 0;
          }
        }

        LOBYTE(__src[0]) = 1;
        (*(*v3 + 776))(&v56, __src, &unk_1F5D5DAC8, &off_1F5D5C998);

        if (v59)
        {
          v42 = v45;
          if (swift_dynamicCast())
          {
            v44 = *(&__src[0] + 1);
            v43 = *&__src[0];
          }

          else
          {
            v43 = 0;
            v44 = 0;
          }
        }

        else
        {
          sub_1E329505C(&v56);
          v43 = 0;
          v44 = 0;
          v42 = v45;
        }

        *&__src[0] = v3;
        *(&__src[0] + 1) = v46;
        *&__src[1] = v34;
        *(&__src[1] + 1) = v35;
        *&__src[2] = v36;
        *(&__src[2] + 1) = v43;
        *&__src[3] = v44;
        *(&__src[3] + 1) = v51;
        *&__src[4] = v50;
        *(&__src[4] + 1) = v49;
        *&__src[5] = v48;
        *(&__src[5] + 9) = v71[0];
        HIDWORD(__src[5]) = *(v71 + 3);
        BYTE8(__src[5]) = v72;
        *&__src[6] = v52;
        *(&__src[6] + 1) = v47;
        v56 = v3;
        v57 = v46;
        v58 = v34;
        v59 = v35;
        v60 = v36;
        v61 = v43;
        v62 = v44;
        v63 = v51;
        v64 = v50;
        v65 = v49;
        v66 = v48;
        v67 = v72;
        *v68 = v71[0];
        *&v68[3] = *(v71 + 3);
        v69 = v52;
        v70 = v47;
        sub_1E3D5CA5C(__src, v54);
        sub_1E3D5D0AC(&v56);
        memcpy(v42, __src, 0x70uLL);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    v24 = 0;
    goto LABEL_40;
  }

  v11 = v10;
  v12 = sub_1E32AE9B0(v10);
  for (k = 0; ; ++k)
  {
    if (v12 == k)
    {

      v15 = 0;
      goto LABEL_21;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](k, v11);
    }

    else
    {
      if (k >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }
    }

    if (__OFADD__(k, 1))
    {
      break;
    }

    type metadata accessor for ImageViewModel();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_1E3E5C294()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E32752B0(&qword_1EE28A190, &qword_1ECF2D3C0);
  return sub_1E42006B4();
}

void sub_1E3E5C31C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A260);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v70 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A268);
  OUTLINED_FUNCTION_0_10();
  v78 = v8;
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A270);
  OUTLINED_FUNCTION_0_10();
  v80 = v16;
  v81 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v70 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A278);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v70 - v27;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A280);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v32 = v1[6];
  if (!v32)
  {
    goto LABEL_6;
  }

  v33 = v1[1];
  if (!v33)
  {
    goto LABEL_6;
  }

  v72 = v14;
  v73 = v30;
  v74 = v31;
  v75 = v6;
  v76 = v3;
  v71 = v1[5];
  v34 = *(*v33 + 2336);

  if ((v34(v35) & 1) == 0)
  {

    v6 = v75;
LABEL_6:
    OUTLINED_FUNCTION_42_6();
    v54 = swift_allocObject();
    v55 = OUTLINED_FUNCTION_16_121(v54);
    MEMORY[0x1EEE9AC00](v55);
    *(&v70 - 2) = v1;
    sub_1E3D5CA5C(v1, &v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A288);
    sub_1E3E5EB98();
    sub_1E4203964();
    v56 = v1[1];
    v57 = OUTLINED_FUNCTION_10_139(&qword_1ECF3A318, &qword_1ECF3A268);
    v58 = v56;
    v59 = v79;
    sub_1E38838AC(v58, 2u, 2, v57, v19);
    (*(v78 + 8))(v11, v59);
    v60 = sub_1E4203DA4();
    v62 = v61;
    v63 = v83;
    v64 = v25 + *(v83 + 36);
    sub_1E3E5DF60();
    v65 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A320) + 36));
    *v65 = v60;
    v65[1] = v62;
    v66 = OUTLINED_FUNCTION_159();
    v67(v66);
    sub_1E3743538(v25, v6, &qword_1ECF3A278);
    swift_storeEnumTagMultiPayload();
    v68 = sub_1E3E5EFB4();
    v69 = sub_1E32822E0();
    v85 = v63;
    v86 = MEMORY[0x1E69E6158];
    v87 = v68;
    v88 = v69;
    OUTLINED_FUNCTION_6_176();
    sub_1E4201F44();
    sub_1E325F6F0(v25, &qword_1ECF3A278);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_42_6();
  v36 = swift_allocObject();
  v37 = OUTLINED_FUNCTION_16_121(v36);
  MEMORY[0x1EEE9AC00](v37);
  *(&v70 - 2) = v1;
  sub_1E3D5CA5C(v1, &v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A288);
  sub_1E3E5EB98();
  v38 = v72;
  sub_1E4203964();
  v39 = OUTLINED_FUNCTION_10_139(&qword_1ECF3A318, &qword_1ECF3A268);
  v40 = v77;
  v41 = v79;
  sub_1E38838AC(v33, 2u, 2, v39, v77);
  (*(v78 + 8))(v38, v41);
  v42 = sub_1E4203DA4();
  v44 = v43;
  v45 = v83;
  v46 = &v28[*(v83 + 36)];
  sub_1E3E5DF60();
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A320) + 36)];
  *v47 = v42;
  v47[1] = v44;
  (*(v80 + 32))(v28, v40, v81);
  v85 = v71;
  v86 = v32;
  v48 = sub_1E3E5EFB4();
  v49 = sub_1E32822E0();
  v50 = MEMORY[0x1E69E6158];
  v51 = v73;
  sub_1E4203414();
  sub_1E325F6F0(v28, &qword_1ECF3A278);
  v52 = v74;
  v53 = v82;
  (*(v74 + 16))(v75, v51, v82);
  swift_storeEnumTagMultiPayload();
  v85 = v45;
  v86 = v50;
  v87 = v48;
  v88 = v49;
  OUTLINED_FUNCTION_6_176();
  OUTLINED_FUNCTION_32_0();
  sub_1E4201F44();

  (*(v52 + 8))(v51, v53);
LABEL_7:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E5CA80(uint64_t a1)
{
  v2 = *(a1 + 72);
  v16[0] = *(a1 + 56);
  v16[1] = v2;
  v16[2] = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A348);
  sub_1E42038F4();
  sub_1E40421AC(2, 0, v17, v16);
  v3 = *(&v16[0] + 1);
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(*v4 + 1784);

    if (v5(v6) != 11)
    {
      sub_1E3751DB0();
      if (sub_1E4205E84())
      {
        v7 = (*(**a1 + 624))();
        if (v7)
        {
          while (1)
          {
            type metadata accessor for CollectionViewModel();
            v8 = swift_dynamicCastClass();
            if (v8)
            {
              v9 = *(*v8 + 1440);

              v11 = v9(v10);

              if (v11)
              {
                break;
              }
            }

            v12 = (*(*v7 + 624))();

            v7 = v12;
            if (!v12)
            {
              goto LABEL_11;
            }
          }

          v13 = sub_1E39BE4D0();
          if (!v13)
          {

            goto LABEL_12;
          }

          sub_1E3744600(v13);

          sub_1E3744600(v11);

          v14 = objc_allocWithZone(VUIRouterDataSource);
          v3 = sub_1E37C07A4();

          sub_1E38E5014(v16);
        }
      }
    }

LABEL_11:
  }

LABEL_12:
  v15 = v3;
  sub_1E4200524();
}

void sub_1E3E5CD44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2C0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v49 = v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v51 = v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v52 = v11;
  v12 = (**a1 + 464);
  v54 = *v12;
  v13 = (*v12)();
  v53 = a2;
  if (!v13)
  {
    v17 = 0;
LABEL_14:
    v18 = v54();
    if (v18)
    {
      v19 = v18;
      sub_1E32AE9B0(v18);
      OUTLINED_FUNCTION_14_138();
      while (1)
      {
        if (v2 == v3)
        {

          v20 = 0;
          goto LABEL_33;
        }

        if (v56)
        {
          v24 = OUTLINED_FUNCTION_159();
          v20 = MEMORY[0x1E6911E60](v24);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_60;
          }

          v20 = *(v19 + 8 * v3 + 32);
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_59;
        }

        LOWORD(v57[0]) = *(v20 + 98);
        v21 = sub_1E3742F1C();
        sub_1E4206254();
        OUTLINED_FUNCTION_26_92();
        OUTLINED_FUNCTION_22_79();
        v22 = v22 && v21 == v57;
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_97_0();

        if (v23)
        {
          goto LABEL_30;
        }

        ++v3;
      }

LABEL_30:

      if (*v20 == _TtC8VideosUI13TextViewModel)
      {
LABEL_33:
        v25 = (v54)(v18);
        if (v25)
        {
          v26 = v25;
          sub_1E32AE9B0(v25);
          OUTLINED_FUNCTION_14_138();
          while (1)
          {
            if (v2 == v3)
            {

              goto LABEL_51;
            }

            if (v56)
            {
              v31 = OUTLINED_FUNCTION_159();
              v27 = MEMORY[0x1E6911E60](v31);
            }

            else
            {
              if (v3 >= *(v55 + 16))
              {
                goto LABEL_62;
              }

              v27 = *(v26 + 8 * v3 + 32);
            }

            if (__OFADD__(v3, 1))
            {
              goto LABEL_61;
            }

            LOWORD(v57[0]) = *(v27 + 98);
            v28 = sub_1E3742F1C();
            sub_1E4206254();
            OUTLINED_FUNCTION_26_92();
            OUTLINED_FUNCTION_22_79();
            if (v22 && v28 == v57)
            {
              break;
            }

            v30 = OUTLINED_FUNCTION_97_0();

            if (v30)
            {
              goto LABEL_49;
            }

            ++v3;
          }

LABEL_49:

          if (*v27 == _TtC8VideosUI13TextViewModel)
          {
            goto LABEL_52;
          }
        }

LABEL_51:
        v27 = 0;
LABEL_52:
        sub_1E3E5D3E8(v17, v20, a1, v27, v49);
        if (*(a1 + 8) && (OUTLINED_FUNCTION_8(), (*(v32 + 176))(v57), (v58 & 1) == 0))
        {
          v35.n128_u64[0] = v57[2];
          v36.n128_u64[0] = v57[3];
          v33.n128_u64[0] = v57[0];
          v34.n128_u64[0] = v57[1];
          v37 = j_nullsub_1(v33, v34, v35, v36);
        }

        else
        {
          v37 = OUTLINED_FUNCTION_5_8();
        }

        v41 = v37;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        v45 = sub_1E4202734();
        sub_1E3741EA0(v49, v51, &qword_1ECF3A2C0);
        v46 = v51 + *(v48 + 36);
        *v46 = v45;
        *(v46 + 8) = v41;
        *(v46 + 16) = v42;
        *(v46 + 24) = v43;
        *(v46 + 32) = v44;
        *(v46 + 40) = 0;
        sub_1E4203DA4();
        OUTLINED_FUNCTION_12_135();
        sub_1E42015C4();
        sub_1E3741EA0(v51, v52, &qword_1ECF3A2B0);
        memcpy((v52 + *(v50 + 36)), v59, 0x70uLL);
        sub_1E4203DA4();
        OUTLINED_FUNCTION_12_135();
        sub_1E42015C4();

        sub_1E3741EA0(v52, v53, &qword_1ECF3A2A0);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A288);
        memcpy((v53 + *(v47 + 36)), __src, 0x70uLL);
        return;
      }
    }

    v20 = 0;
    goto LABEL_33;
  }

  v3 = v13;
  v14 = sub_1E32AE9B0(v13);
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      v17 = 0;
      goto LABEL_14;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1E6911E60](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v2 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for ImageViewModel();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;

      goto LABEL_14;
    }
  }

  __break(1u);
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
}

uint64_t sub_1E3E5D3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a4;
  v86 = a3;
  v87 = a2;
  v85 = a5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v72 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v79 = v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v75 = v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v77 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v71 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A310);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A350);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v83 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A358);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v71 - v24;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v71 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A300);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v71 - v35;
  if (a1)
  {
    if (!v87)
    {

      v50 = v79;
      sub_1E3E5DDC4(v49, v79);
      v51 = v72;
      v52 = v76;
      (*(v72 + 16))(v11, v50, v76);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_6_15();
      v53 = v75;
      sub_1E4201F44();
      sub_1E3743538(v53, v83, &qword_1ECF2CDB8);
      swift_storeEnumTagMultiPayload();
      sub_1E3E5EED0();
      sub_1E38ADC9C();
      v54 = v85;
      sub_1E4201F44();

      sub_1E325F6F0(v53, &qword_1ECF2CDB8);
      (*(v51 + 8))(v79, v52);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2E0);
      v56 = v54;
      return __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
    }

    v79 = v34;
    v37 = v86;
    v38 = MEMORY[0x1E69DDCE0];
    if (*(v86 + 16))
    {
      OUTLINED_FUNCTION_8();
      v40 = *(v39 + 152);

      v40(v88, v41);
      v37 = v86;
      if ((v89 & 1) == 0)
      {
        v42 = *&v88[3];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v42 = *(v38 + 24);
LABEL_12:
    if (*(v37 + 24) && (OUTLINED_FUNCTION_8(), (*(v57 + 152))(v90), (v91 & 1) == 0))
    {
      v58 = *&v90[1];
    }

    else
    {
      v58 = *(v38 + 8);
    }

    v62 = v42 + v58;
    *v32 = sub_1E4201B84();
    *(v32 + 1) = v62;
    *(v32 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A368);
    sub_1E3E5E21C();
    sub_1E3741EA0(v32, v36, &qword_1ECF3A300);
    sub_1E3743538(v36, v25, &qword_1ECF3A300);
    OUTLINED_FUNCTION_8_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v63, &qword_1ECF3A300);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v64, v65);
    sub_1E4201F44();
    OUTLINED_FUNCTION_15_129();
    swift_storeEnumTagMultiPayload();
    sub_1E3E5EED0();
    sub_1E38ADC9C();
    OUTLINED_FUNCTION_13_143();

    sub_1E325F6F0(v28, &qword_1ECF3A2F0);
    v47 = v36;
    v48 = &qword_1ECF3A300;
LABEL_20:
    sub_1E325F6F0(v47, v48);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2E0);
    v56 = v32;
    return __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
  }

  v43 = v77;
  if (v87)
  {
    if (!v78)
    {

      sub_1E3C27528();

      OUTLINED_FUNCTION_18();
      v66 = v17;
      sub_1E3F23370();
      v67 = v43;
      v68 = v74;
      (*(v43 + 16))(v11, v66, v74);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_6_15();
      v69 = v75;
      OUTLINED_FUNCTION_159();
      sub_1E4201F44();
      sub_1E3743538(v69, v83, &qword_1ECF2CDB8);
      swift_storeEnumTagMultiPayload();
      sub_1E3E5EED0();
      sub_1E38ADC9C();
      v70 = v85;
      sub_1E4201F44();

      sub_1E325F6F0(v69, &qword_1ECF2CDB8);
      (*(v67 + 8))(v66, v68);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2E0);
      v56 = v70;
      return __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
    }

    *v20 = sub_1E4201D44();
    *(v20 + 1) = 0;
    v20[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A360);
    sub_1E3E5E908();
    v32 = &qword_1ECF3A310;
    sub_1E3743538(v20, v25, &qword_1ECF3A310);
    OUTLINED_FUNCTION_8_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v44, v45);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v46, &qword_1ECF3A310);
    sub_1E4201F44();
    OUTLINED_FUNCTION_15_129();
    swift_storeEnumTagMultiPayload();
    sub_1E3E5EED0();
    sub_1E38ADC9C();
    OUTLINED_FUNCTION_13_143();

    sub_1E325F6F0(v28, &qword_1ECF3A2F0);
    v47 = v20;
    v48 = &qword_1ECF3A310;
    goto LABEL_20;
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A2E0);
  v60 = v85;

  return __swift_storeEnumTagSinglePayload(v60, 1, 1, v59);
}

uint64_t sub_1E3E5DDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = (*(*v5 + 248))();
    v8 = v7;
    v9 = (*(*v5 + 352))();
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v8)
    {
      v6 = 0;
    }
  }

  else
  {
    v11 = 0;
    v6 = 0;
  }

  v12 = j__OUTLINED_FUNCTION_51_1();
  v13 = j__OUTLINED_FUNCTION_18();
  v14 = j__OUTLINED_FUNCTION_18();
  v15 = sub_1E3EB9C0C(v6, v11, 0, 0, 0, 1, v12 & 1, 2, v18, 0, 1, 0, 1, 0, 2, v13 & 1, v14 & 1);
  (*(*a1 + 392))(v15);

  v16 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(a1, v18, v5, v16 & 1, 0, 0, a2);
  return sub_1E375C31C(v18);
}

void sub_1E3E5DF60()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A340);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-1] - v14;
  LOBYTE(v23) = 43;
  OUTLINED_FUNCTION_8();
  (*(v16 + 776))(v22, &v23, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v22[3])
  {
    sub_1E329505C(v22);
LABEL_6:
    v20 = 1;
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0 || v23 != 1)
  {
    goto LABEL_6;
  }

  v21 = sub_1E42036E4();
  v23 = v21;
  (*(v6 + 104))(v9, *MEMORY[0x1E697E668], v4);
  OUTLINED_FUNCTION_42_6();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_16_121(v17);
  sub_1E3D5CA5C(v1, v22);
  v18 = MEMORY[0x1E69815C0];
  v19 = OUTLINED_FUNCTION_51_1();
  sub_1E3D951F8(v9, v19 & 1, sub_1E3E5F250, v17, v18, MEMORY[0x1E6981580]);

  (*(v6 + 8))(v9, v4);

  (*(v12 + 32))(v3, v15, v10);
  v20 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v3, v20, 1, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E5E21C()
{
  OUTLINED_FUNCTION_31_1();
  v76 = v0;
  v2 = v1;
  v4 = v3;
  v73 = v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A370);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v63 = v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A378);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v71 = v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A380);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v62 = v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v77 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v67 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v74 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v66 = (v21 - v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v62 - v25;
  v27 = *(**v4 + 464);
  v28 = v27(v24);
  if (!v28 || (v29 = sub_1E3841D9C(v2, v28), v31 = v30, v28 = , (v31 & 1) != 0))
  {
    v29 = 0;
  }

  v32 = (v27)(v28);
  if (!v32 || (v33 = sub_1E3841D9C(v76, v32), v35 = v34, , (v35 & 1) != 0))
  {
    v33 = 0;
  }

  v64 = v18;
  v65 = v26;
  if (v29 >= v33)
  {
    sub_1E3C27528();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E3E5DDC4(v2, v26);
    v49 = *(v77 + 16);
    v50 = v67;
    v51 = v18;
    v52 = v75;
    v49(v67, v51, v75);
    v53 = v74;
    v54 = *(v74 + 16);
    v55 = v66;
    v56 = v26;
    v57 = v69;
    v54(v66, v56, v69);
    v58 = v63;
    v49(v63, v50, v52);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A388);
    v54(v58 + *(v59 + 48), v55, v57);
    v60 = *(v53 + 8);
    v60(v55, v57);
    v61 = *(v77 + 8);
    v77 += 8;
    v61(v50, v52);
    sub_1E3743538(v58, v71, &qword_1ECF3A370);
    swift_storeEnumTagMultiPayload();
    sub_1E32752B0(&qword_1ECF3A390, &qword_1ECF3A380);
    sub_1E32752B0(&qword_1ECF3A398, &qword_1ECF3A370);
    sub_1E4201F44();
    sub_1E325F6F0(v58, &qword_1ECF3A370);
    v60(v65, v57);
    v61(v64, v52);
  }

  else
  {
    v36 = v26;
    sub_1E3E5DDC4(v2, v26);
    sub_1E3C27528();

    OUTLINED_FUNCTION_18();
    v37 = v18;
    sub_1E3F23370();
    v38 = *(v74 + 16);
    v39 = v66;
    v40 = v69;
    v38(v66, v36, v69);
    v41 = v77;
    v42 = *(v77 + 16);
    v43 = v67;
    v44 = v75;
    v42(v67, v37, v75);
    v45 = v62;
    v38(v62, v39, v40);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3A0);
    v42(v45 + *(v46 + 48), v43, v44);
    v47 = *(v41 + 8);
    v47(v43, v44);
    v48 = *(v74 + 8);
    v48(v39, v40);
    sub_1E3743538(v45, v71, &qword_1ECF3A380);
    swift_storeEnumTagMultiPayload();
    sub_1E32752B0(&qword_1ECF3A390, &qword_1ECF3A380);
    sub_1E32752B0(&qword_1ECF3A398, &qword_1ECF3A370);
    sub_1E4201F44();
    sub_1E325F6F0(v45, &qword_1ECF3A380);
    v47(v64, v75);
    v48(v65, v40);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E5E908()
{
  OUTLINED_FUNCTION_31_1();
  v22 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1E3C27528();

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  sub_1E3C27528();

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v17 = *(v3 + 16);
  v17(v10, v16, v1);
  v17(v7, v13, v1);
  v18 = v22;
  v17(v22, v10, v1);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3A8);
  v17(&v18[*(v19 + 48)], v7, v1);
  v20 = *(v3 + 8);
  v20(v13, v1);
  v20(v16, v1);
  v20(v7, v1);
  v20(v10, v1);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3E5EB98()
{
  result = qword_1ECF3A290;
  if (!qword_1ECF3A290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A288);
    sub_1E3E5EC24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A290);
  }

  return result;
}

unint64_t sub_1E3E5EC24()
{
  result = qword_1ECF3A298;
  if (!qword_1ECF3A298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2A0);
    sub_1E3E5ECB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A298);
  }

  return result;
}

unint64_t sub_1E3E5ECB0()
{
  result = qword_1ECF3A2A8;
  if (!qword_1ECF3A2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2B0);
    sub_1E3E5ED3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2A8);
  }

  return result;
}

unint64_t sub_1E3E5ED3C()
{
  result = qword_1ECF3A2B8;
  if (!qword_1ECF3A2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2C0);
    sub_1E3E5EDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2B8);
  }

  return result;
}

unint64_t sub_1E3E5EDC0()
{
  result = qword_1ECF3A2C8;
  if (!qword_1ECF3A2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2D0);
    sub_1E3E5EE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2C8);
  }

  return result;
}

unint64_t sub_1E3E5EE44()
{
  result = qword_1ECF3A2D8;
  if (!qword_1ECF3A2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2E0);
    sub_1E3E5EED0();
    sub_1E38ADC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2D8);
  }

  return result;
}

unint64_t sub_1E3E5EED0()
{
  result = qword_1ECF3A2E8;
  if (!qword_1ECF3A2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A2F0);
    sub_1E32752B0(&qword_1ECF3A2F8, &qword_1ECF3A300);
    sub_1E32752B0(&qword_1ECF3A308, &qword_1ECF3A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A2E8);
  }

  return result;
}

unint64_t sub_1E3E5EFB4()
{
  result = qword_1ECF3A328;
  if (!qword_1ECF3A328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A268);
    sub_1E32752B0(&qword_1ECF3A318, &qword_1ECF3A268);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289230, &qword_1ECF3A320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A328);
  }

  return result;
}

unint64_t sub_1E3E5F108()
{
  result = qword_1ECF3A330;
  if (!qword_1ECF3A330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A278);
    sub_1E3E5EFB4();
    sub_1E32822E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A330);
  }

  return result;
}

uint64_t objectdestroyTm_45()
{

  OUTLINED_FUNCTION_42_6();

  return swift_deallocObject();
}

id sub_1E3E5F2C0()
{
  v1 = [v0 colorWithAlphaComponent_];

  return v1;
}

id sub_1E3E5F2F8(void *a1, void *a2)
{
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = a2;
  v7 = a1;
  return OUTLINED_FUNCTION_18_106();
}

id sub_1E3E5F368(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  return v5;
}

id sub_1E3E5F3B8(void *a1)
{
  v1 = [a1 colorWithAlphaComponent_];

  return v1;
}

id sub_1E3E5F3F0()
{
  v1 = objc_opt_self();
  v2 = [v1 traitCollectionWithUserInterfaceStyle_];
  v3 = [v0 resolvedColorWithTraitCollection_];

  v4 = [v1 traitCollectionWithUserInterfaceStyle_];
  v5 = [v0 resolvedColorWithTraitCollection_];

  return v3;
}

void sub_1E3E5F4B0()
{
  if (qword_1EE28C680 != -1)
  {
    OUTLINED_FUNCTION_11_145();
  }

  v1 = qword_1EE28C688;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_10_140();
  }

  v3 = qword_1EE28C6B8;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1EE2AA768 = v9;
}

uint64_t *sub_1E3E5F58C()
{
  if (qword_1EE28D528 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA768;
}

void sub_1E3E5F5DC()
{
  if (qword_1EE28C690 != -1)
  {
    OUTLINED_FUNCTION_7_188();
  }

  v1 = qword_1EE28C698;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_6_177();
  }

  v3 = qword_1EE28C6C8;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1EE2AA760 = v9;
}

uint64_t *sub_1E3E5F6B8()
{
  if (qword_1EE28D520 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA760;
}

void sub_1E3E5F708()
{
  if (qword_1EE28C6A0 != -1)
  {
    OUTLINED_FUNCTION_3_202();
  }

  v1 = qword_1EE28C6A8;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_2_202();
  }

  v3 = qword_1EE28C6D8;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1EE2AA758 = v9;
}

uint64_t *sub_1E3E5F7E4()
{
  if (qword_1EE28D518 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA758;
}

void sub_1E3E5F834()
{
  sub_1E3755B54();
  v0 = sub_1E4206F24();
  v1 = sub_1E4206F24();
  OUTLINED_FUNCTION_2_4();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4 = v1;
  v5 = v0;
  v6 = OUTLINED_FUNCTION_18_106();

  qword_1EE2AA6F8 = v6;
}

uint64_t *sub_1E3E5F90C()
{
  if (qword_1EE28D4B8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6F8;
}

void sub_1E3E5F95C()
{
  sub_1E3755B54();
  OUTLINED_FUNCTION_11_12();
  v0 = sub_1E4206F24();
  v1 = [v0 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_11_12();
  v2 = sub_1E4206F24();
  v3 = [v2 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v1;
  v8 = OUTLINED_FUNCTION_20_100();

  qword_1EE2AA6B8 = v8;
}

uint64_t *sub_1E3E5FA50()
{
  if (qword_1EE28D488 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6B8;
}

void *sub_1E3E5FACC()
{
  if (qword_1EE28C678 != -1)
  {
    OUTLINED_FUNCTION_13_144();
  }

  return &qword_1EE2AA6C8;
}

void **sub_1E3E5FB0C()
{
  if (qword_1EE28D498 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6D0;
}

void *sub_1E3E5FB88()
{
  if (qword_1EE28D4A8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6E0;
}

void sub_1E3E5FC08(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [v8 whiteColor];
  v12 = [v11 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_2_4();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v15 = v12;
  v16 = v10;
  v17 = sub_1E3E61218(a4, v13);

  *a5 = v17;
}

void *sub_1E3E5FD24()
{
  if (qword_1EE28D480 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6B0;
}

void *sub_1E3E5FD88()
{
  if (qword_1EE28D500 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA740;
}

void *sub_1E3E5FDEC()
{
  if (qword_1EE28D4E0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA720;
}

uint64_t sub_1E3E5FE3C()
{
  sub_1E3755B54();
  OUTLINED_FUNCTION_11_12();
  result = sub_1E4206F24();
  qword_1EE2AA700 = result;
  return result;
}

uint64_t *sub_1E3E5FE74()
{
  if (qword_1EE28D4C0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA700;
}

void sub_1E3E5FEC4()
{
  if (qword_1EE28C6B0 != -1)
  {
    OUTLINED_FUNCTION_10_140();
  }

  v1 = qword_1EE28C6B8;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_11_145();
  }

  v3 = qword_1EE28C688;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1ECF716C0 = v9;
}

uint64_t *sub_1E3E5FFA0()
{
  if (qword_1ECF65900 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716C0;
}

void sub_1E3E5FFF0()
{
  if (qword_1EE28C6C0 != -1)
  {
    OUTLINED_FUNCTION_6_177();
  }

  v1 = qword_1EE28C6C8;
  OUTLINED_FUNCTION_17_118();
  if (!v2)
  {
    OUTLINED_FUNCTION_7_188();
  }

  v3 = qword_1EE28C698;
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v4);
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v3;
  v7 = v0;
  v8 = v6;
  v9 = OUTLINED_FUNCTION_1_236();

  qword_1ECF716C8 = v9;
}

uint64_t *sub_1E3E600CC()
{
  if (qword_1ECF65908 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716C8;
}

void *sub_1E3E6011C()
{
  if (_MergedGlobals_246 != -1)
  {
    OUTLINED_FUNCTION_9_145();
  }

  return &qword_1EE2AA6E8;
}

void *sub_1E3E60170()
{
  if (qword_1EE28D510 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA750;
}

void *sub_1E3E601D4()
{
  if (qword_1ECF65910 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716D0;
}

void *sub_1E3E60238()
{
  if (qword_1ECF65918 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716D8;
}

void *sub_1E3E6029C()
{
  if (qword_1ECF65920 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716E0;
}

void *sub_1E3E60300()
{
  if (qword_1ECF65928 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716E8;
}

uint64_t *sub_1E3E60364()
{
  if (qword_1EE28D4F0 != -1)
  {
    OUTLINED_FUNCTION_5_188();
  }

  return &qword_1EE2AA730;
}

void *sub_1E3E603B8()
{
  if (qword_1EE28D4D0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA710;
}

void *sub_1E3E6041C()
{
  if (qword_1ECF65930 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716F0;
}

void *sub_1E3E60480()
{
  if (qword_1EE28D4E8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA728;
}

void *sub_1E3E604E4()
{
  if (qword_1EE28D4F8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA738;
}

void *sub_1E3E60548()
{
  if (qword_1ECF65938 != -1)
  {
    swift_once();
  }

  return &qword_1ECF716F8;
}

void *sub_1E3E605D4()
{
  if (qword_1EE28D4A0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6D8;
}

void *sub_1E3E60638()
{
  if (qword_1ECF65940 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71700;
}

void *sub_1E3E6069C()
{
  if (qword_1EE28D490 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6C0;
}

uint64_t *sub_1E3E60700()
{
  if (qword_1EE28D530 != -1)
  {
    OUTLINED_FUNCTION_14_139();
  }

  return &qword_1EE2AA770;
}

void sub_1E3E60740()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_21_92()) initWithRed:0.0 green:0.380392157 blue:0.8 alpha:1.0];
  v2 = [objc_allocWithZone(*(v0 + 2184)) initWithRed:0.152941176 green:0.576470588 blue:1.0 alpha:1.0];
  OUTLINED_FUNCTION_2_4();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = objc_allocWithZone(*(v0 + 2184));
  v5 = v2;
  v6 = v1;
  v7 = OUTLINED_FUNCTION_18_106();

  qword_1EE2AA708 = v7;
}

uint64_t *sub_1E3E60824()
{
  if (qword_1EE28D4C8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA708;
}

void sub_1E3E60874()
{
  if (qword_1EE28D530 != -1)
  {
    OUTLINED_FUNCTION_14_139();
  }

  v0 = qword_1EE2AA770;
  v1 = [v0 colorWithAlphaComponent_];

  qword_1EE2AA6F0 = v1;
}

uint64_t *sub_1E3E608EC()
{
  if (qword_1EE28D4B0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA6F0;
}

id sub_1E3E6093C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
  qword_1EE2AA748 = result;
  return result;
}

uint64_t *sub_1E3E6097C()
{
  if (qword_1EE28D508 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA748;
}

id sub_1E3E609CC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
  qword_1EE2AA718 = result;
  return result;
}

uint64_t *sub_1E3E60A14()
{
  if (qword_1EE28D4D8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA718;
}

void *sub_1E3E60A78()
{
  if (qword_1ECF65948 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71708;
}

double sub_1E3E60AC8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 vui_nativeScale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_1EE2AB220 = 1.0 / v2;
  return result;
}

uint64_t *sub_1E3E60B34()
{
  if (qword_1EE2A6AD8 != -1)
  {
    OUTLINED_FUNCTION_4_204();
  }

  return &qword_1EE2AB220;
}

double sub_1E3E60B74()
{
  if (qword_1EE2A6AD8 != -1)
  {
    OUTLINED_FUNCTION_4_204();
  }

  result = *&qword_1EE2AB220;
  qword_1EE2AB230 = qword_1EE2AB220;
  return result;
}

uint64_t *sub_1E3E60BBC()
{
  if (qword_1EE2A6AE8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB230;
}

void sub_1E3E60C0C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  if (qword_1EE28D4F0 != -1)
  {
    OUTLINED_FUNCTION_5_188();
  }

  v2 = qword_1EE2AA730;
  OUTLINED_FUNCTION_2_4();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_16_122(v3);
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v5 = v2;
  v6 = v1;
  v7 = OUTLINED_FUNCTION_1_236();

  qword_1EE2AB228 = v7;
}

uint64_t *sub_1E3E60CFC()
{
  if (qword_1EE2A6AE0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB228;
}

void sub_1E3E60D4C()
{
  OUTLINED_FUNCTION_21_92();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = objc_allocWithZone(*(v0 + 2184));
  v8 = v5;
  v9 = v3;
  v10 = OUTLINED_FUNCTION_20_100();

  qword_1ECF71710 = v10;
}

uint64_t *sub_1E3E60E58()
{
  if (qword_1ECF65950 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71710;
}

id sub_1E3E60ED4(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = *a3;
  *a4 = *a3;

  return v6;
}

void **sub_1E3E60F2C()
{
  if (qword_1EE2A6AF0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB238;
}

id sub_1E3E60F7C()
{
  sub_1E3755B54();
  result = sub_1E39F9114(0x38313831383123, 0xE700000000000000);
  if (!result)
  {
    result = [objc_opt_self() blackColor];
  }

  qword_1ECF71718 = result;
  return result;
}

uint64_t *sub_1E3E60FE8()
{
  if (qword_1ECF65958 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71718;
}

void sub_1E3E61038()
{
  sub_1E39537A8();
  qword_1EE2AB200 = v0;
  *algn_1EE2AB208 = v1;
  qword_1EE2AB210 = v2;
  unk_1EE2AB218 = v3;
}

uint64_t *sub_1E3E61064()
{
  if (qword_1EE2A6AD0 != -1)
  {
    OUTLINED_FUNCTION_12_136();
  }

  return &qword_1EE2AB200;
}

id sub_1E3E610A4()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
  qword_1EE28C688 = result;
  return result;
}

id sub_1E3E610E0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.6];
  qword_1EE28C698 = result;
  return result;
}

id sub_1E3E61120()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.4];
  qword_1EE28C6A8 = result;
  return result;
}

id sub_1E3E61160()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:1.0];
  qword_1EE28C6B8 = result;
  return result;
}

id sub_1E3E6119C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.5];
  qword_1EE28C6C8 = result;
  return result;
}

id sub_1E3E611D8()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.3];
  qword_1EE28C6D8 = result;
  return result;
}

id sub_1E3E61218(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E3A01924;
  v6[3] = &block_descriptor_125;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

uint64_t sub_1E3E612D0()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for ProgressLayout();
    v1 = sub_1E3FB3220();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3E6136C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E374E9C4();
  v2 = *sub_1E374E9C4();
  (*(v2 + 312))(0x404E000000000000, 0);

  v3 = *(**(v1 + 104) + 208);

  v3(0x404E000000000000, 0);

  OUTLINED_FUNCTION_36();
  v5 = *(v4 + 1808);

  v5(1);

  OUTLINED_FUNCTION_36();
  v7 = *(v6 + 440);

  v7(0x3FF0000000000000, 0);

  v8 = *(v1 + 104);

  sub_1E39537A8();
  *&v22 = v9;
  *(&v22 + 1) = v10;
  *&v23 = v11;
  *(&v23 + 1) = v12;
  v24 = 0;
  (*(*v8 + 560))(&v22);

  v13 = sub_1E3E612D0();
  __asm { FMOV            V1.2D, #5.0 }

  v22 = xmmword_1E42971B0;
  v23 = _Q1;
  v24 = 0;
  (*(*v13 + 160))(&v22);

  sub_1E3C37CBC(v19, 39);

  sub_1E3C37CBC(v20, 115);

  return v1;
}

uint64_t sub_1E3E615F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  OUTLINED_FUNCTION_36();
  v20 = (*(v19 + 464))();
  v86 = v4;
  v85 = v18;
  if (v20)
  {
    v21 = v20;
    v74 = v14;
    v75 = v12;
    v76 = v11;
    v77 = a1;
    result = sub_1E32AE9B0(v20);
    v23 = result;
    for (i = 0; ; ++i)
    {
      if (v23 == i)
      {

        OUTLINED_FUNCTION_201();
        v18 = v85;
        v11 = v76;
        goto LABEL_19;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v21);
        v25 = result;
      }

      else
      {
        if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v25 = *(v21 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      LOWORD(v93) = *(v25 + 98);
      v96 = 39;
      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      v4 = v89;
      if (v87[0] == v88 && v87[1] == v89)
      {

LABEL_18:

        sub_1E3EB9BB4(v87);
        v29 = sub_1E374E9C4();
        v30 = OUTLINED_FUNCTION_18();
        v31 = v74;
        sub_1E37E8BE8(v25, v87, v29, v30 & 1, 0, 0, v74);

        sub_1E375C31C(v87);
        v18 = v85;
        v32 = v31;
        v11 = v76;
        (*(v75 + 32))(v85, v32, v76);
        OUTLINED_FUNCTION_201();
        goto LABEL_19;
      }

      v27 = sub_1E42079A4();

      if (v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    v28 = 1;
LABEL_19:
    v33 = 1;
    __swift_storeEnumTagSinglePayload(v18, v28, 1, v11);
    OUTLINED_FUNCTION_36();
    v35 = (*(v34 + 464))();
    if (v35)
    {
      v36 = v35;
      result = sub_1E32AE9B0(v35);
      v37 = result;
      for (j = 0; ; ++j)
      {
        if (v37 == j)
        {

          v33 = 1;
          OUTLINED_FUNCTION_201();
          v42 = v82;
          v18 = v85;
          goto LABEL_40;
        }

        if ((v36 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](j, v36);
          v39 = result;
        }

        else
        {
          if (j >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v39 = *(v36 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_43;
        }

        v96 = *(v39 + 98);
        v95 = 115;
        sub_1E3742F1C();
        sub_1E4206254();
        sub_1E4206254();
        v4 = v94;
        if (v88 == v93 && v89 == v94)
        {
          break;
        }

        v41 = sub_1E42079A4();

        if (v41)
        {
          goto LABEL_36;
        }
      }

LABEL_36:

      v44 = sub_1E39295EC(v43);
      v45 = sub_1E3E612D0();
      (*(*v45 + 152))(&v88);
      v46 = v88;
      v47 = v89;
      v48 = v90;
      v49 = v91;

      if (v92)
      {
        v54 = OUTLINED_FUNCTION_5_8();
      }

      else
      {
        v50.n128_u64[0] = v46;
        v51.n128_u64[0] = v47;
        v52.n128_u64[0] = v48;
        v53.n128_u64[0] = v49;
        v54 = j_nullsub_1(v50, v51, v52, v53);
      }

      v58 = v54;
      v59 = v55;
      v60 = v56;
      v61 = v57;
      OUTLINED_FUNCTION_201();
      v18 = v85;
      v62 = sub_1E4202734();

      KeyPath = swift_getKeyPath();
      v64 = v79;
      v65 = (v79 + *(v4 + 36));
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
      v67 = *MEMORY[0x1E697DBA8];
      sub_1E4200B44();
      OUTLINED_FUNCTION_2();
      (*(v68 + 104))(v65 + v66, v67);
      *v65 = KeyPath;
      *v64 = v44;
      *(v64 + 8) = v62;
      *(v64 + 16) = v58;
      *(v64 + 24) = v59;
      *(v64 + 32) = v60;
      *(v64 + 40) = v61;
      *(v64 + 48) = 0;
      v69 = v78;
      sub_1E3E61ED0(v64, v78);
      v42 = v82;
      sub_1E3E61ED0(v69, v82);
      v33 = 0;
    }

    else
    {
      v42 = v82;
    }

LABEL_40:
    __swift_storeEnumTagSinglePayload(v42, v33, 1, v4);
    v70 = v81;
    sub_1E32D7CE4(v18, v81);
    v71 = v83;
    sub_1E3E61DF8(v42, v83);
    v72 = v84;
    sub_1E32D7CE4(v70, v84);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3C0);
    sub_1E3E61DF8(v71, v72 + *(v73 + 48));
    sub_1E3E61E68(v42);
    sub_1E32D7D4C(v18);
    sub_1E3E61E68(v71);
    return sub_1E32D7D4C(v70);
  }

  return result;
}

uint64_t sub_1E3E61DF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E61E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3E61ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3E61F98()
{
  result = qword_1ECF3A3C8;
  if (!qword_1ECF3A3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A3C8);
  }

  return result;
}

uint64_t sub_1E3E61FFC(uint64_t a1)
{
  v2 = *(*a1 + 1640);

  v2(v3);

  return a1;
}

uint64_t sub_1E3E62060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A3D8);
  sub_1E32752B0(&qword_1ECF3A3E0, &qword_1ECF3A3D8);
  sub_1E3E62294();

  return sub_1E4203844();
}

uint64_t sub_1E3E6213C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4201B84();
  (*(*v1 + 1208))();
  sub_1E32822E0();
  v4 = sub_1E4202C44();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  sub_1E37E6F1C(v4, v6, v8 & 1);

  sub_1E37434B8(v4, v6, v8 & 1);

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8 & 1;
  *(a1 + 48) = v10;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1E3E62264@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1E3A0A6B8(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E3E62294()
{
  result = qword_1ECF3A3E8;
  if (!qword_1ECF3A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A3E8);
  }

  return result;
}

uint64_t sub_1E3E6231C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201934();
  *a1 = result;
  return result;
}

void *sub_1E3E623A4()
{
  type metadata accessor for TextLayout();
  v0[13] = sub_1E383BCC0();
  v0[14] = sub_1E383BCC0();
  type metadata accessor for DescriptionTemplateLayout();
  v0[15] = sub_1E3D4F8C4();
  type metadata accessor for CanonicalFooterLayout();
  v0[16] = sub_1E3DE9A08(2);
  v1 = sub_1E3C2F9A0();

  (*(v2 + 800))(5);
  v3 = sub_1E3755B54();
  v4 = objc_opt_self();
  v5 = [v4 systemGroupedBackgroundColor];
  v6 = [v4 secondarySystemGroupedBackgroundColor];
  v7 = sub_1E3E5F2F8(v5, v6);

  OUTLINED_FUNCTION_9_2();
  (*(v8 + 752))(v7);
  __asm { FMOV            V0.2D, #24.0 }

  v467 = xmmword_1E42D7370;
  v468 = xmmword_1E42D7380;
  v469 = 0;
  v463 = 0x4024000000000000;
  v464 = _Q0;
  v465 = 0x4038000000000000;
  v466 = 0;
  v459 = xmmword_1E42CDF90;
  v460 = _Q0;
  v461 = 0;
  type metadata accessor for UIEdgeInsets();
  v15 = v14;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_33_13();
  OUTLINED_FUNCTION_13_19();
  v24 = OUTLINED_FUNCTION_9_146(v16, v17, v18, v19, v20, v21, v22, v23, v185, v194, v203, v212, v223, v232, v241, v250, v259, v269, v279, v289, v299, v309, v319, v329, v339, v348, v357, v366, v375, v385, v395, v404, v414, v424, v434, v444, 0);
  sub_1E3C2FCB8(v24, v25);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v34 = OUTLINED_FUNCTION_28_1(v26, v27, v28, v29, v30, v31, v32, v33, v186, v195, v204, v213, v224, v233, v242, v251, v260, v270, v280, v290, v300, v310, v320, v330, v340, v349, v358, v367, v376, v386, v396, v405, v415, v425, v435, v445, __dst[0]);
  v35(v34, 1);
  v36 = *sub_1E3E5FD88();
  v37 = (*v1 + 1720);
  v38 = *v37;
  v39 = v36;
  v38();
  v40 = v38;
  sub_1E3952C58();
  *&v467 = v41;
  *(&v467 + 1) = v42;
  *&v468 = v43;
  *(&v468 + 1) = v44;
  v469 = 0;
  OUTLINED_FUNCTION_8();
  (*(v45 + 160))(&v467);

  (v38)(v46);
  v47 = v37;
  OUTLINED_FUNCTION_2_1();
  v49 = *(v48 + 680);
  v214 = v39;
  v49(v39);

  (v40)(v50);
  OUTLINED_FUNCTION_2_1();
  (*(v51 + 1792))(7);

  (v40)(v52);
  LOBYTE(__dst[0]) = 10;
  LOBYTE(v463) = 11;
  LOBYTE(v459) = 11;
  LOBYTE(v458) = 7;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v456) = v457;
  v53 = sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v397) = v455;
  v61 = OUTLINED_FUNCTION_2_203(v53, v54, v55, v56, v57, v58, v59, v60, v47, v40, v39, v214, v225, v234, v243, v252, v261, v271, v281, v291, v301, v311, v321, v331, v341, v350, v359, v368, v377, v387, v397, v406, v416, v426, v436, v446, __dst[0]);
  sub_1E3C2FCB8(v61, v62);
  OUTLINED_FUNCTION_8_159();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v71 = OUTLINED_FUNCTION_28_1(v63, v64, v65, v66, v67, v68, v69, v70, v187, v196, v205, v215, v226, v235, v244, v253, v262, v272, v282, v292, v302, v312, v322, v332, v342, v351, v360, v369, v378, v388, v398, v407, v417, v427, v437, v447, __dst[0]);
  v72(v71, 54);

  (v40)(v73);
  *&__dst[0] = *sub_1E3E60548();
  v463 = 0;
  *&v459 = 0;
  v74 = *&__dst[0];
  v458 = [v4 clearColor];
  sub_1E3C3DE00(v3);
  v456 = v457;
  v75 = sub_1E3C3DE00(v3);
  v83 = OUTLINED_FUNCTION_2_203(v75, v76, v77, v78, v79, v80, v81, v82, v188, v197, v206, v216, v227, v236, v245, v254, v263, v273, v283, v293, v303, v313, v323, v333, v343, v352, v361, v370, v379, v389, v455, v408, v418, v428, v438, v448, __dst[0]);
  sub_1E3C2FCB8(v83, v84);
  v85 = __src[0];
  v86 = __src[1];
  v87 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v96 = OUTLINED_FUNCTION_28_1(v88, v89, v90, v91, v92, v93, v94, v95, v189, v198, v207, v217, v228, v237, v246, v255, v264, v274, v284, v294, v304, v314, v324, v334, v344, v353, v362, v371, v380, v390, v399, v409, v419, v429, v439, v449, __dst[0]);
  v97(v96, 24);

  v98 = v199;
  v199();
  LOBYTE(__dst[0]) = 3;
  LOBYTE(v463) = 27;
  LOBYTE(v459) = 27;
  LOBYTE(v458) = 2;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v456) = v457;
  v99 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v400) = v455;
  v107 = OUTLINED_FUNCTION_2_203(v99, v100, v101, v102, v103, v104, v105, v106, v190, v199, v208, v218, v229, v238, v247, v256, v265, v275, v285, v295, v305, v315, v325, v335, v345, v354, v363, v372, v381, v391, v400, v410, v420, v430, v440, v450, __dst[0]);
  sub_1E3C2FCB8(v107, v108);
  OUTLINED_FUNCTION_8_159();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v117 = OUTLINED_FUNCTION_28_1(v109, v110, v111, v112, v113, v114, v115, v116, v191, v200, v209, v219, v230, v239, v248, v257, v266, v276, v286, v296, v306, v316, v326, v336, v346, v355, v364, v373, v382, v392, v401, v411, v421, v431, v441, v451, __dst[0]);
  v118(v117, 48);

  (v98)(v119);
  OUTLINED_FUNCTION_2_1();
  (*(v120 + 2056))(2, 0);

  (v98)(v121);
  OUTLINED_FUNCTION_2_1();
  (*(v122 + 1984))(1);

  (v98)(v123);
  OUTLINED_FUNCTION_2_1();
  (*(v124 + 256))(0x408C500000000000, 0);

  (v98)(v125);
  OUTLINED_FUNCTION_2_1();
  (*(v126 + 1720))(3);

  OUTLINED_FUNCTION_9_2();
  v128 = *(v127 + 1744);
  v128();
  sub_1E3952C94();
  v463 = v129;
  *&v464 = v130;
  *(&v464 + 1) = v131;
  v465 = v132;
  v466 = 0;
  OUTLINED_FUNCTION_8();
  (*(v133 + 160))(&v463);

  (v128)(v134);
  OUTLINED_FUNCTION_2_1();
  (*(v135 + 680))(v210);

  (v128)(v136);
  OUTLINED_FUNCTION_2_1();
  (*(v137 + 1696))(15);

  (v128)(v138);
  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  sub_1E3952C94();
  *&v459 = v139;
  *(&v459 + 1) = v140;
  *&v460 = v141;
  *(&v460 + 1) = v142;
  v461 = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_33_13();
  OUTLINED_FUNCTION_13_19();
  sub_1E3C3DE00(v15);
  LOBYTE(v383) = v442;
  v143 = sub_1E3C3DE00(v15);
  LOBYTE(v267) = v327;
  v151 = OUTLINED_FUNCTION_9_146(v143, v144, v145, v146, v147, v148, v149, v150, v192, v201, v210, v220, v287, v297, v307, v317, v267, v277, v287, v297, v307, v317, v327, v337, v402, v412, v422, v432, v383, v393, v402, v412, v422, v432, v442, v452, __dst[0]);
  sub_1E3C2FCB8(v151, v152);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v161 = OUTLINED_FUNCTION_28_1(v153, v154, v155, v156, v157, v158, v159, v160, v193, v202, v211, v221, v231, v240, v249, v258, v268, v278, v288, v298, v308, v318, v328, v338, v347, v356, v365, v374, v384, v394, v403, v413, v423, v433, v443, v453, __dst[0]);
  v162(v161, 1);

  OUTLINED_FUNCTION_9_2();
  v164 = *(v163 + 1768);
  v164();
  sub_1E3952C88();
  *&__src[0] = v165;
  *(&__src[0] + 1) = v166;
  *&__src[1] = v167;
  *(&__src[1] + 1) = v168;
  LOBYTE(__src[2]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v169 + 160))(__src);

  (v164)(v170);
  sub_1E3952C88();
  *&__dst[0] = v171;
  *(&__dst[0] + 1) = v172;
  *&__dst[1] = v173;
  *(&__dst[1] + 1) = v174;
  LOBYTE(__dst[2]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v175 + 184))(__dst);

  v177 = (v98)(v176);
  sub_1E3C37CBC(v177, 23);

  v179 = (v128)(v178);
  sub_1E3C37CBC(v179, 15);

  v181 = (v164)(v180);
  sub_1E3C37CBC(v181, 9);

  OUTLINED_FUNCTION_9_2();
  v183 = (*(v182 + 1792))();
  sub_1E3C37CBC(v183, 107);

  return v1;
}

id sub_1E3E62F38(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E69DD298]);

  return [v3 initWithEffect_];
}

unint64_t sub_1E3E62F90()
{
  result = qword_1ECF3A400;
  if (!qword_1ECF3A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A400);
  }

  return result;
}

uint64_t sub_1E3E63028()
{
  OUTLINED_FUNCTION_1_237();
  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3E6306C()
{
  OUTLINED_FUNCTION_1_237();
  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3E630B0()
{
  sub_1E3E630E8();
  sub_1E4201F04();
  __break(1u);
}

unint64_t sub_1E3E630E8()
{
  result = qword_1ECF3A408;
  if (!qword_1ECF3A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A408);
  }

  return result;
}

uint64_t sub_1E3E6313C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E381BEF8(__src);
  memcpy((a3 + 24), __src, 0x150uLL);
  v6 = type metadata accessor for HorizontalMultiGroupCollectionView();
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *a3 = sub_1E381AE50;
  *(a3 + 8) = a1;
  *(a3 + 16) = 0;
  *(a3 + v6[8]) = a1;
  memcpy(__dst, (a3 + 24), sizeof(__dst));
  memcpy((a3 + 24), a2, 0x150uLL);

  sub_1E3743538(a2, v15, &qword_1ECF2B5C0);
  sub_1E325F6F0(__dst, &qword_1ECF2B5C0);
  memcpy(v15, a2, sizeof(v15));
  result = sub_1E3748B78(v15);
  v9 = 0.0;
  v10 = 0.0;
  if (result != 1)
  {
    v11 = *&v15[25];
    v12 = *&v15[26];
    v13 = v15[27];
    result = sub_1E325F6F0(a2, &qword_1ECF2B5C0);
    v10 = 0.0;
    if (v13)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v11;
    }

    if ((v13 & 1) == 0)
    {
      v10 = v12;
    }
  }

  v14 = a3 + v6[7];
  *v14 = v9;
  *(v14 + 8) = v10;
  *(v14 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for HorizontalMultiGroupCollectionView()
{
  result = qword_1EE2916F0;
  if (!qword_1EE2916F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E63310()
{
  OUTLINED_FUNCTION_41_5();
  v6 = v0;
  v69 = v7;
  v8 = type metadata accessor for HorizontalMultiGroupCollectionView();
  v9 = v8 - 8;
  v66 = *(v8 - 8);
  v65 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v64 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A410);
  OUTLINED_FUNCTION_0_10();
  v62 = v11;
  v63 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v60 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A418);
  OUTLINED_FUNCTION_0_10();
  v67 = v15;
  v68 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v61 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_49_2();
  type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_2_204();
  sub_1E3E6722C(v21, v22);
  v23 = sub_1E4200BC4();
  v24 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v25 = *(v23 + v24);

  v27 = (*(*v25 + 1040))(v26);
  v58[2] = (*(*v25 + 960))();
  v59 = v9;
  v28 = (v6 + *(v9 + 36));
  v30 = v28[1];
  v31 = v28[2];
  v83 = *v28;
  v29 = v83;
  v84 = v30;
  v85 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  v32 = *v82[0].i64;
  v58[1] = type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v32);
  j_nullsub_1(v33, v34, v35, v36);
  OUTLINED_FUNCTION_3();
  v83 = v29;
  v84 = v30;
  v85 = v31;
  sub_1E42038F4();
  sub_1E3746E10(v1);
  v37 = sub_1E42012F4();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v37);
  memcpy(v82, (v6 + 24), 0x150uLL);
  v38 = sub_1E3748B78(v82);
  v39.i32[0] = 1;
  v40.i32[0] = v38;
  v41 = vdupq_lane_s32(*&vceqq_s32(v40, v39), 0);
  v42 = vbicq_s8(v82[15], v41);
  v43 = vbicq_s8(v82[14], v41);
  if (!v27)
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v86 = v43;
  v87 = v42;
  v88 = v38 == 1;
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_5_11();
  sub_1E389BFA8();
  sub_1E325F6F0(v1, &qword_1ECF2A250);
  v79 = v29;
  v80 = v30;
  v81 = v31;
  sub_1E42038F4();
  sub_1E3A25950(v78);
  v45 = v44;
  sub_1E42026E4();
  v70 = v45;
  v71 = v27;
  v72 = v6;
  v73 = &v83;
  v74 = v2;
  v75 = v3;
  v76 = v4;
  v77 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A420);
  sub_1E32752B0(&qword_1ECF3A428, &qword_1ECF3A420);
  v46 = v60;
  sub_1E4200AD4();

  sub_1E42026E4();
  OUTLINED_FUNCTION_18_107();
  v48 = sub_1E32752B0(v47, &qword_1ECF3A410);
  v50 = v61;
  v49 = v62;
  sub_1E3E3665C(v62, v61);
  (*(v63 + 8))(v46, v49);
  v78 = *(v6 + *(v59 + 40));
  v51 = v6;
  v52 = v64;
  sub_1E3E65A24(v51, v64);
  v53 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v54 = swift_allocObject();
  sub_1E3E65A88(v52, v54 + v53);
  type metadata accessor for CollectionViewModel();

  v79 = v49;
  v80 = v48;
  OUTLINED_FUNCTION_13_145();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_137();
  sub_1E3E6722C(v55, v56);
  v57 = v67;
  sub_1E4203524();
  sub_1E375B760(&v83);

  (*(v68 + 8))(v50, v57);
  OUTLINED_FUNCTION_42();
}

id sub_1E3E639B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  v65 = a2;
  v66 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A488);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A490);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v70 = v22;
  v23 = type metadata accessor for HorizontalMultiGroupCollectionView();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A498);
  OUTLINED_FUNCTION_0_10();
  v61 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4A0);
  OUTLINED_FUNCTION_17_2(v30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v67 = v32;
  *a4 = sub_1E4201B64();
  *(a4 + 8) = a5;
  *(a4 + 16) = 0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v34 = result;
    v63 = v16;
    v64 = a4;
    v35 = [result vStackInForEachEnabled];

    v71[42] = sub_1E3E66208(a1);
    if (v35)
    {
      KeyPath = swift_getKeyPath();
      sub_1E3E65A24(v65, &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_32_68();
      v37 = v36 & 0xFFFFFFFFFFFFFFF8;
      v38 = ((v36 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + 343) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      sub_1E3E65A88(v25, v35 + v40);
      *(v40 + v37) = a1;
      v41 = v66;
      memcpy((v40 + v38), v66, 0x150uLL);
      *(v40 + v39) = a5;
      v42 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v42 = a6;
      v42[1] = a7;
      v42[2] = a8;
      v42[3] = a9;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_1E3E66A34;
      *(v43 + 24) = v40;

      sub_1E37E6E1C(v41, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4D8);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v44, &qword_1ECF3A4A8);
      sub_1E375BEF4();
      OUTLINED_FUNCTION_1();
      sub_1E32752B0(v45, &qword_1ECF3A4D8);
      sub_1E4203B34();
      v46 = v61;
      v47 = v68;
      (*(v61 + 16))(v70, v29, v68);
      swift_storeEnumTagMultiPayload();
      sub_1E3E666F4();
      sub_1E3E667A4();
      v48 = v67;
      sub_1E4201F44();
      (*(v46 + 8))(v29, v47);
    }

    else
    {
      v61 = swift_getKeyPath();
      sub_1E3E65A24(v65, &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_32_68();
      v50 = v49 & 0xFFFFFFFFFFFFFFF8;
      v51 = ((v49 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v51 + 343) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      sub_1E3E65A88(v25, v35 + v53);
      *(v53 + v50) = a1;
      v54 = v66;
      memcpy((v53 + v51), v66, 0x150uLL);
      *(v53 + v52) = a5;
      v55 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v55 = a6;
      v55[1] = a7;
      v55[2] = a8;
      v55[3] = a9;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_1E3E663C4;
      *(v56 + 24) = v53;

      sub_1E37E6E1C(v54, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4B0);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v57, &qword_1ECF3A4A8);
      sub_1E375BEF4();
      sub_1E3E66614();
      sub_1E4203B34();
      v59 = KeyPath;
      v58 = v63;
      (*(KeyPath + 16))(v70, v20, v63);
      swift_storeEnumTagMultiPayload();
      sub_1E3E666F4();
      sub_1E3E667A4();
      v48 = v67;
      sub_1E4201F44();
      (*(v59 + 8))(v20, v58);
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4E8);
    return sub_1E3E66828(v48, v64 + *(v60 + 44));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3E6408C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v67 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CBE0);
  OUTLINED_FUNCTION_0_10();
  v65 = v4;
  v66 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v64 = v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v63 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A438);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v60 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v60 - v19;
  v21 = *v0;
  if (!(*(**v0 + 968))(v18))
  {
    (*(*v0[3] + 904))();
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(*(v0 + 51));
  v26.n128_f64[0] = j_nullsub_1(v22, v23, v24, v25);
  v28 = v27;
  v29 = (*(*v21 + 1040))(v26);
  v30 = v29;
  v60[3] = v28;
  if (v29)
  {
    v31 = sub_1E37D027C(v29);

    if (v31)
    {
      v30 = (*(*v31 + 872))(v32);

      if (v30)
      {
        v30 = sub_1E37D027C(v30);
      }
    }

    else
    {
      v30 = 0;
    }
  }

  v69[3] = &unk_1F5D5D888;
  v69[4] = &off_1F5D5C918;
  LOBYTE(v69[0]) = 8;
  v33 = j__OUTLINED_FUNCTION_18();
  sub_1E39C29F0(v69, v33 & 1);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v60[1] = v1[46];
  memcpy(v69, v1 + 4, 0x150uLL);
  sub_1E37E6E1C(v69, &v68);
  OUTLINED_FUNCTION_5_8();
  v34 = v1[50];
  MEMORY[0x1EEE9AC00](v35);
  v60[2] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A448);
  sub_1E3E65E7C();
  sub_1E3CBD2B8();
  OUTLINED_FUNCTION_25();
  sub_1E3CBD2BC(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v34);
  v51 = sub_1E4202764();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v51)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v12, v16, &qword_1ECF3A438);
  OUTLINED_FUNCTION_7_3(v16 + *(v61 + 36));
  sub_1E3741EA0(v16, v20, &qword_1ECF3A440);
  v52 = v67;
  sub_1E3741EA0(v20, v67, &qword_1ECF3A440);
  v53 = v64;
  OUTLINED_FUNCTION_25();
  sub_1E39E19A0(v54, v55, v56);
  v57 = sub_1E4202764();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v57)
  {
    sub_1E4202774();
  }

  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A478) + 52);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v59 = v63;
  (*(v65 + 32))(v63, v53, v66);
  OUTLINED_FUNCTION_7_3(v59 + *(v62 + 36));
  sub_1E3741EA0(v59, v52 + v58, &qword_1ECF2CBA0);

  OUTLINED_FUNCTION_42();
}

void sub_1E3E64640()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A470);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A480);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v39 = v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A460);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = [objc_opt_self() sharedInstance];
  if (v17)
  {
    v18 = v17;
    v36 = v6;
    v37 = v7;
    v19 = [v17 vStackInForEachEnabled];

    v20 = (*(*v4[3] + 872))();
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v21 = v20;
    }

    v43 = v21;
    if (v19)
    {
      KeyPath = swift_getKeyPath();
      v22 = swift_allocObject();
      memcpy((v22 + 16), v4, 0x1A8uLL);
      *(v22 + 440) = v2;
      sub_1E3E66100(v4, &v41);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B618);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v23, &unk_1ECF2C790);
      sub_1E375BEF4();
      OUTLINED_FUNCTION_1();
      sub_1E32752B0(v24, &qword_1ECF2B618);
      sub_1E4203B34();
      v25 = v40;
      (*(v13 + 16))(v39, v16, v40);
      swift_storeEnumTagMultiPayload();
      sub_1E3E65F08();
      sub_1E3E65FB8();
      sub_1E4201F44();
      (*(v13 + 8))(v16, v25);
    }

    else
    {
      swift_getKeyPath();
      v26 = swift_allocObject();
      memcpy((v26 + 16), v4, 0x1A8uLL);
      *(v26 + 440) = v2;
      sub_1E3E66100(v4, &v41);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B638);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v27, &unk_1ECF2C790);
      sub_1E375BEF4();
      v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B628);
      v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
      v30 = OUTLINED_FUNCTION_6_8();
      v41 = v29;
      v42 = v30;
      OUTLINED_FUNCTION_9_142();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v41 = v28;
      v42 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_1E4203B34();
      v32 = KeyPath;
      v33 = v37;
      (*(KeyPath + 16))(v39, v0, v37);
      swift_storeEnumTagMultiPayload();
      sub_1E3E65F08();
      sub_1E3E65FB8();
      sub_1E4201F44();
      (*(v32 + 8))(v0, v33);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3E64B94()
{
  OUTLINED_FUNCTION_31_1();
  v30 = v2;
  v4 = v3;
  v31 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  memcpy(v35, v0 + 4, sizeof(v35));
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v16, v17, v18, v19, v20);
  v29 = v0;
  v21 = *v0;
  v22 = OUTLINED_FUNCTION_6_8();
  v23 = OUTLINED_FUNCTION_51_1();
  sub_1E3C6184C(v21, v4, v23 & 1, 0, 0, v6, v22);
  (*(v8 + 8))(v1, v6);
  v32 = v4;
  if (v30)
  {
    v33 = v30;
    type metadata accessor for ViewModel();
    sub_1E3E6722C(&qword_1EE23BA60, type metadata accessor for ViewModel);

    v24 = sub_1E4205E84();

    v25 = 0;
    if (v24)
    {
      v26 = v29[2];
      v27 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v25 = *(v26 + v27);
    }
  }

  else
  {
    v25 = 0;
  }

  v33 = v6;
  v34 = v22;
  OUTLINED_FUNCTION_9_142();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3A610C8(v25, v10, OpaqueTypeConformance2);

  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E64EB0()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v0;
  v2 = v1;
  v48 = v3;
  sub_1E4201F84();
  OUTLINED_FUNCTION_0_10();
  v46 = v5;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3A4F8);
  v8 = sub_1E4201734();
  OUTLINED_FUNCTION_3_203();
  v11 = sub_1E3E6722C(v9, v10);
  v52 = v8;
  v53 = v11;
  OUTLINED_FUNCTION_5_189();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v2[3];
  v42 = v2[5];
  v43 = v13;
  v40 = v2;
  v52 = v13;
  v53 = v7;
  v54 = v42;
  v55 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_4_205();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28960);
  sub_1E42013A4();
  v14 = v2[2];
  swift_getTupleTypeMetadata2();
  sub_1E4203EE4();
  OUTLINED_FUNCTION_15_13();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  OUTLINED_FUNCTION_0_81();
  v21 = swift_getWitnessTable();
  v52 = v15;
  v53 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v39 - v30;
  sub_1E4201D54();
  *&v32 = v40[4];
  *(&v32 + 1) = v42;
  *&v33 = v14;
  *(&v33 + 1) = v43;
  v49 = v33;
  v50 = v32;
  v51 = v44;
  sub_1E4203A34();
  OUTLINED_FUNCTION_29_81();
  v52 = v35;
  v53 = v34;
  v36 = v45;
  sub_1E4202274();
  sub_1E4202F84();
  (*(v46 + 8))(v36, v47);
  (*(v17 + 8))(v20, v15);
  v37 = *(v24 + 16);
  v37(v31, v28, OpaqueTypeMetadata2);
  v38 = *(v24 + 8);
  v38(v28, OpaqueTypeMetadata2);
  v37(v48, v31, OpaqueTypeMetadata2);
  v38(v31, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E65298()
{
  OUTLINED_FUNCTION_31_1();
  v78 = v0;
  v79 = v1;
  v73 = v2;
  v77 = v3;
  v75 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v76 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v64 - v7;
  v84 = v8;
  v85 = v9;
  v10 = v9;
  v86 = v11;
  v87 = v12;
  v13 = v12;
  v65 = v12;
  v14 = type metadata accessor for LazyHStickySection();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3A4F8);
  v69 = v20;
  v21 = sub_1E4201734();
  OUTLINED_FUNCTION_3_203();
  v24 = sub_1E3E6722C(v22, v23);
  v84 = v21;
  v85 = v24;
  OUTLINED_FUNCTION_5_189();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v10;
  v85 = v20;
  v25 = v10;
  v86 = v13;
  v87 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_4_205();
  WitnessTable = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28960);
  v72 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v80 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v64 = v30 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v67 = &v64 - v34;
  v35 = v14;
  v36 = v73;
  (*(v16 + 16))(v19, v73, v35, v33);
  v37 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v38 = swift_allocObject();
  v39 = v79;
  *(v38 + 2) = v78;
  *(v38 + 3) = v25;
  v40 = v25;
  v41 = v65;
  *(v38 + 4) = v39;
  *(v38 + 5) = v41;
  (*(v16 + 32))(&v38[v37], v19, v35);
  v42 = v36;
  v43 = v69;
  v44 = OpaqueTypeConformance2;
  MEMORY[0x1E690D7F0](sub_1E3E67284, v38, v40, v69, v41, OpaqueTypeConformance2);

  v84 = v40;
  v85 = v43;
  v86 = v41;
  v87 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v64;
  sub_1E42034A4();
  v47 = OUTLINED_FUNCTION_13_8();
  v48(v47);
  v49 = sub_1E32752B0(&qword_1ECF28958, &qword_1ECF28960);
  v83[2] = v45;
  v83[3] = v49;
  v50 = v72;
  WitnessTable = swift_getWitnessTable();
  v51 = v80;
  v52 = *(v80 + 16);
  v53 = v67;
  v52(v67, v46, v50);
  v54 = *(v51 + 8);
  v80 = v51 + 8;
  v71 = v54;
  v54(v46, v50);
  v55 = v74;
  v56 = v75;
  v57 = *(v75 + 16);
  v58 = v42;
  v59 = v78;
  v57(v74, v58, v78);
  v52(v46, v53, v50);
  v84 = v46;
  v60 = v76;
  v57(v76, v55, v59);
  v85 = v60;
  v83[0] = v50;
  v83[1] = v59;
  v81 = WitnessTable;
  v82 = v79;
  sub_1E3910324(&v84, 2, v83);
  v61 = *(v56 + 8);
  v61(v55, v59);
  v62 = v53;
  v63 = v71;
  v71(v62, v50);
  v61(v60, v59);
  v63(v46, v50);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E65860()
{
  sub_1E4201F84();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1E4202264();
  OUTLINED_FUNCTION_13_8();
  sub_1E4200E84();
  v4 = v3;
  v19 = v5;
  v7 = v6;
  v9 = v8;
  v10 = *(v1 + 8);
  v11 = OUTLINED_FUNCTION_13_8();
  v10(v11);
  OUTLINED_FUNCTION_29_81();
  v20 = v13;
  v21 = v12;
  sub_1E4202274();
  sub_1E4200E94();
  v14 = OUTLINED_FUNCTION_13_8();
  v10(v14);
  if (v24)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v20;
  }

  if (v24)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v21;
  }

  if (v24)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v22;
  }

  if (v24)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v23;
  }

  CGRectGetWidth(*&v15);
  v25.origin.x = v4;
  v25.origin.y = v19;
  v25.size.width = v7;
  v25.size.height = v9;
  CGRectGetWidth(v25);
}

uint64_t sub_1E3E65A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalMultiGroupCollectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E65A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalMultiGroupCollectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E65AEC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for HorizontalMultiGroupCollectionView();
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_2_204();
  sub_1E3E6722C(v5, v6);
  sub_1E4200BC4();
  sub_1E37CDC8C(v4);
}

void sub_1E3E65C08()
{
  sub_1E3E290B0();
  if (v0 <= 0x3F)
  {
    sub_1E39BB660(319, &qword_1EE259C58, &unk_1F5D8B8B8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3E29194(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1E3E29194(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CollectionViewModel();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E3E65D60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 424))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E3E65DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 408) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 424) = 1;
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

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3E65E7C()
{
  result = qword_1ECF3A450;
  if (!qword_1ECF3A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A448);
    sub_1E3E65F08();
    sub_1E3E65FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A450);
  }

  return result;
}

unint64_t sub_1E3E65F08()
{
  result = qword_1ECF3A458;
  if (!qword_1ECF3A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A460);
    sub_1E32752B0(&qword_1EE288510, &qword_1ECF2B618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A458);
  }

  return result;
}

unint64_t sub_1E3E65FB8()
{
  result = qword_1ECF3A468;
  if (!qword_1ECF3A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A468);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

void sub_1E3E661A0(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201D44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B640);
  sub_1E3E64B94();
}

uint64_t sub_1E3E66208(unint64_t a1)
{
  v1 = a1;
  result = sub_1E32AE9B0(a1);
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v27 = v1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x1E6911E60](v4, v1);
      v10 = result;
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4F0);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      v1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1E3E663C4()
{
  OUTLINED_FUNCTION_41_5();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for HorizontalMultiGroupCollectionView();
  OUTLINED_FUNCTION_70_4();
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  OUTLINED_FUNCTION_20_101();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_26_93();
  memcpy(__dst, v1, sizeof(__dst));
  if (__OFSUB__(sub_1E32AE9B0(v15), 1))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + v13 + *(v11 + 32));
    type metadata accessor for CollectionInteractor();
    OUTLINED_FUNCTION_2_204();
    sub_1E3E6722C(v17, v18);

    sub_1E4200BC4();
    v19 = v0 + v13 + *(v11 + 28);
    v20 = *(v19 + 16);
    v30 = *v19;
    v31 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E42038F4();
    v21 = v32;
    v22 = v33;
    v23 = sub_1E42010C4();
    v25 = v24;

    sub_1E37E6E1C(v1, &v30);
    v26 = sub_1E4202784();
    v27 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v26)
    {
      v27 = sub_1E4202774();
    }

    v29 = v1[14];
    v28 = v1[15];
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    LOBYTE(v30) = 0;
    *v10 = v16;
    *(v10 + 8) = v23;
    *(v10 + 16) = v25;
    *(v10 + 24) = v8;
    memcpy((v10 + 32), __dst, 0x150uLL);
    *(v10 + 368) = v6;
    *(v10 + 376) = v29;
    *(v10 + 392) = v28;
    *(v10 + 408) = v21;
    *(v10 + 416) = v22;
    *(v10 + 424) = v27;
    *(v10 + 432) = v2;
    *(v10 + 440) = v3;
    *(v10 + 448) = v4;
    *(v10 + 456) = v5;
    *(v10 + 464) = 0;
    OUTLINED_FUNCTION_42();
  }
}

unint64_t sub_1E3E66614()
{
  result = qword_1ECF3A4C0;
  if (!qword_1ECF3A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A4B0);
    sub_1E3E666A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A4C0);
  }

  return result;
}

unint64_t sub_1E3E666A0()
{
  result = qword_1EE294B70;
  if (!qword_1EE294B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE294B70);
  }

  return result;
}

unint64_t sub_1E3E666F4()
{
  result = qword_1ECF3A4C8;
  if (!qword_1ECF3A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A498);
    sub_1E32752B0(&qword_1ECF3A4D0, &qword_1ECF3A4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A4C8);
  }

  return result;
}

unint64_t sub_1E3E667A4()
{
  result = qword_1ECF3A4E0;
  if (!qword_1ECF3A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A488);
    sub_1E3E66614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A4E0);
  }

  return result;
}

uint64_t sub_1E3E66828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A4A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_28Tm_1()
{
  v1 = type metadata accessor for HorizontalMultiGroupCollectionView();
  OUTLINED_FUNCTION_70_4();
  v4 = *(v3 + 64);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_1E3264CE0();
  v6 = *(v0 + v5 + 104);
  if (v6 != 1)
  {
  }

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v0 + v5 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1E3E66A34()
{
  OUTLINED_FUNCTION_41_5();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for HorizontalMultiGroupCollectionView();
  OUTLINED_FUNCTION_70_4();
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  OUTLINED_FUNCTION_20_101();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_26_93();
  memcpy(__dst, v1, sizeof(__dst));
  v16 = sub_1E4201D44();
  v38 = 0;
  if (__OFSUB__(sub_1E32AE9B0(v15), 1))
  {
    __break(1u);
  }

  else
  {
    v32 = v16;
    v17 = v1;
    v18 = *(v0 + v13 + *(v11 + 32));
    type metadata accessor for CollectionInteractor();
    OUTLINED_FUNCTION_2_204();
    sub_1E3E6722C(v19, v20);

    sub_1E4200BC4();
    v21 = v0 + v13 + *(v11 + 28);
    v22 = *(v21 + 16);
    v34 = *v21;
    v35 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E42038F4();
    v23 = v36;
    v24 = v37;
    v25 = sub_1E42010C4();
    v27 = v26;

    sub_1E37E6E1C(v17, &v34);
    v28 = sub_1E4202784();
    v29 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v28)
    {
      v29 = sub_1E4202774();
    }

    v33 = *(v17 + 224);
    v31 = *(v17 + 240);
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    LOBYTE(v34) = 0;
    v30 = v38;
    *v10 = v32;
    *(v10 + 8) = 0;
    *(v10 + 16) = v30;
    *(v10 + 24) = v18;
    *(v10 + 32) = v25;
    *(v10 + 40) = v27;
    *(v10 + 48) = v8;
    memcpy((v10 + 56), __dst, 0x150uLL);
    *(v10 + 392) = v6;
    *(v10 + 400) = v33;
    *(v10 + 416) = v31;
    *(v10 + 432) = v23;
    *(v10 + 440) = v24;
    *(v10 + 448) = v29;
    *(v10 + 456) = v2;
    *(v10 + 464) = v3;
    *(v10 + 472) = v4;
    *(v10 + 480) = v5;
    *(v10 + 488) = 0;
    OUTLINED_FUNCTION_42();
  }
}

uint64_t sub_1E3E66CA0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3E66D2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1E3E66EF4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v24 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v24))
      {
        v19 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v19 = v25;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (v14 + a1) & ~v13;
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v23 = (v20 >> v16) + 1;
      if (v15)
      {
        v26 = v20 & ~(-1 << v16);
        v27 = OUTLINED_FUNCTION_32_0();
        bzero(v27, v28);
        if (v15 == 3)
        {
          *v6 = v26;
          *(v6 + 2) = BYTE2(v26);
        }

        else if (v15 == 2)
        {
          *v6 = v26;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      v21 = OUTLINED_FUNCTION_32_0();
      bzero(v21, v22);
      *v6 = v20;
      v23 = 1;
    }

    switch(v19)
    {
      case 1:
        *(v6 + v15) = v23;
        break;
      case 2:
        *(v6 + v15) = v23;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(v6 + v15) = v23;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1E3E67190()
{
  result = qword_1EE2A0A58[0];
  if (!qword_1EE2A0A58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A478);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A0A58);
  }

  return result;
}

uint64_t sub_1E3E6722C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3E67284()
{
  OUTLINED_FUNCTION_36_58();
  OUTLINED_FUNCTION_36_58();
  sub_1E3E65860();
  v1 = v0;
  v2 = sub_1E4201734();
  OUTLINED_FUNCTION_3_203();
  v5 = sub_1E3E6722C(v3, v4);
  return MEMORY[0x1E690B6D0](v2, v5, v1, 0.0);
}

uint64_t sub_1E3E67350()
{
  sub_1E37414E0();
  sub_1E4205DB4();
  sub_1E3E673C4();
  return sub_1E4205DB4();
}

unint64_t sub_1E3E673C4()
{
  result = qword_1ECF3A508;
  if (!qword_1ECF3A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A508);
  }

  return result;
}

uint64_t sub_1E3E67418()
{
  if ((sub_1E373F6E0() & 1) == 0)
  {
    return 0;
  }

  return sub_1E389CC78();
}

uint64_t sub_1E3E6746C()
{
  sub_1E4207B44();
  sub_1E37414E0();
  OUTLINED_FUNCTION_43_53();
  sub_1E3E673C4();
  OUTLINED_FUNCTION_43_53();
  return sub_1E4207BA4();
}

uint64_t sub_1E3E67504()
{
  sub_1E4207B44();
  sub_1E37414E0();
  OUTLINED_FUNCTION_43_53();
  sub_1E3E673C4();
  OUTLINED_FUNCTION_43_53();
  return sub_1E4207BA4();
}

uint64_t sub_1E3E675D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3E67628(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E3E676B4()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3E676F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1E3E67794()
{
  v1 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints;
  OUTLINED_FUNCTION_5_0();
  return *(v0 + v1);
}

uint64_t sub_1E3E677D0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3E67870()
{
  v1 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___portraitFullScreenSizeClass;
  result = *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___portraitFullScreenSizeClass);
  if (result == 8)
  {
    v3 = v0;
    if ([objc_opt_self() isPad])
    {
      v4 = objc_opt_self();
      v5 = [v4 mainScreen];
      [v5 vui_bounds];
      OUTLINED_FUNCTION_3();

      v6 = OUTLINED_FUNCTION_14_25();
      v7 = [v4 mainScreen];
      [v7 vui_bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v17.origin.x = v9;
      v17.origin.y = v11;
      v17.size.width = v13;
      v17.size.height = v15;
      Height = CGRectGetHeight(v17);
      if (Height < v6)
      {
        v6 = Height;
      }

      type metadata accessor for LayoutGrid();
      result = sub_1E3A2579C(v6);
    }

    else
    {
      result = 7;
    }

    *(v3 + v1) = result;
  }

  return result;
}

uint64_t sub_1E3E6799C()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *v0;
  sub_1E34AF604(*v0);
  return v1;
}

uint64_t sub_1E3E679E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  v5 = *v2;
  *v2 = a1;
  v2[1] = a2;
  return sub_1E34AF594(v5);
}

uint64_t sub_1E3E67A80()
{
  v1 = OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary);
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23B120);
    sub_1E3E67B18();
    v2 = sub_1E4205CB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1E3E67B18()
{
  result = qword_1ECF3A518;
  if (!qword_1ECF3A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A518);
  }

  return result;
}

uint64_t (*sub_1E3E67B84(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3E67A80();
  return sub_1E3E67BCC;
}

id sub_1E3E67C18()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_validResultCategoryId);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___portraitFullScreenSizeClass) = 8;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_scrollHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary) = 0;

  j__OUTLINED_FUNCTION_18();
  sub_1E41C9E78();
  v4 = v3;
  v5 = type metadata accessor for CollectionImpressionManager();
  v6 = v4;
  v8[3] = v5;
  v8[4] = &off_1F5D8D100;
  v8[0] = sub_1E3F0AE3C();
  sub_1E41C8454(v8);

  return v6;
}

void sub_1E3E67D0C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_validResultCategoryId);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_isShowingHints) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___portraitFullScreenSizeClass) = 8;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_scrollHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController____lazy_storage___prototypeCellDictionary) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3E67DE8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SearchStackViewController();
  objc_msgSendSuper2(&v9, sel_vui_viewDidLoad);
  OUTLINED_FUNCTION_26_3();
  v2 = *((*MEMORY[0x1E69E7D40] & v1) + 0x1B8);
  v3 = v2();
  [v3 setKeyboardDismissMode_];

  v4 = v2();
  sub_1E4206934();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4297BE0;
  v6 = sub_1E42001D4();
  v7 = MEMORY[0x1E69DC2B0];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
  sub_1E4206944();
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for SearchStackViewController()
{
  result = qword_1EE295FA0;
  if (!qword_1EE295FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E67FA4()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x5D8))(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A578);
    sub_1E4205D14();
    v2(v3, 0);
  }
}

id sub_1E3E680BC(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for SearchStackViewController();
  result = objc_msgSendSuper2(&v25, sel_vui_didMoveToParentViewController_, a1);
  if (a1)
  {
    v12 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v12, v4);
    v13 = a1;
    v14 = sub_1E41FFC94();
    v15 = sub_1E4206814();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = a1;
      v18 = v13;
      _os_log_impl(&dword_1E323F000, v14, v15, "SearchController::SearchStack:: calling did host from did move to parent %@", v16, 0xCu);
      sub_1E325F748(v17, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v19 = (*(v6 + 8))(v10, v4);
    result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x550))(v19);
    if (result)
    {
      v21 = v20;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_18_1();
      v24 = (*(v23 + 440))();
      (*(v21 + 16))(v24, v2, ObjectType, v21);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1E3E683AC(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (a1)
  {
    v10 = [v1 parentViewController];
    if (v10)
    {

      v11 = sub_1E324FBDC();
      (*(v5 + 16))(v9, v11, v3);
      v12 = v1;
      v13 = sub_1E41FFC94();
      v14 = sub_1E4206814();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        v17 = [v12 parentViewController];
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&dword_1E323F000, v13, v14, "SearchController::SearchStack:: calling did host from did move to window with parent %@", v15, 0xCu);
        sub_1E325F748(v16, &unk_1ECF28E30);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v18 = (*(v5 + 8))(v9, v3);
      v19 = MEMORY[0x1E69E7D40];
      if ((*((*MEMORY[0x1E69E7D40] & *v12) + 0x550))(v18))
      {
        v21 = v20;
        ObjectType = swift_getObjectType();
        v23 = (*((*v19 & *v12) + 0x1B8))();
        (*(v21 + 16))(v23, v12, ObjectType, v21);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1E3E686B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FE7E4();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for SearchStackViewController();
  objc_msgSendSuper2(&v18, sel_vuiCollectionView_didSelectItemAt_, a1, v4);

  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x218))();
  sub_1E42000B4();

  if (v16)
  {
    OUTLINED_FUNCTION_18_1();
    v7 = *(v6 + 1360);

    if (v7(v8))
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(v17, 0, ObjectType, v10);
      v12 = OUTLINED_FUNCTION_53();
      sub_1E3790548(v12, v13);

      swift_unknownObjectRelease();
    }

    else
    {
      v14 = OUTLINED_FUNCTION_53();
      sub_1E3790548(v14, v15);
    }
  }
}

void sub_1E3E68924()
{
  sub_1E41CCFC8();
  type metadata accessor for HintListCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(218);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v2 = OUTLINED_FUNCTION_1_238();
  [v2 v3];

  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A530);
    swift_getObjCClassFromMetadata();
    sub_1E384EE08(220);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_7_8();
    v4 = OUTLINED_FUNCTION_1_238();
    [v4 v5];
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A530);
    swift_getObjCClassFromMetadata();
    sub_1E384EE08(219);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_7_8();
    v6 = OUTLINED_FUNCTION_1_238();
    [v6 v7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D518);
    swift_getObjCClassFromMetadata();
    sub_1E384EE08(221);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_7_8();
    v8 = OUTLINED_FUNCTION_1_238();
    [v8 v9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A540);
    swift_getObjCClassFromMetadata();
    v10 = 213;
  }

  else
  {
    type metadata accessor for CardCollectionViewCell();
    swift_getObjCClassFromMetadata();
    sub_1E384EE08(213);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_7_8();
    v11 = OUTLINED_FUNCTION_1_238();
    [v11 v12];

    v10 = 216;
  }

  sub_1E384EE08(v10);
  v13 = sub_1E4205ED4();

  v14 = OUTLINED_FUNCTION_1_238();
  [v14 v15];

  type metadata accessor for SearchListCell();
  swift_getObjCClassFromMetadata();
  v16 = sub_1E4205ED4();
  v17 = OUTLINED_FUNCTION_1_238();
  [v17 v18];

  v19 = sub_1E4205ED4();
  v20 = OUTLINED_FUNCTION_1_238();
  [v20 v21];

  if (TVAppFeature.isEnabled.getter(10))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1E384EE08(214);
    v55 = v23;
    v61 = v24;
    v25 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_17_119();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_10_65();
    v26 = OUTLINED_FUNCTION_6_178();
    [v26 v27];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A520);
    v28 = swift_getObjCClassFromMetadata();
    sub_1E384EE08(217);
    v56 = v29;
    v62 = v30;
    OUTLINED_FUNCTION_17_119();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_10_65();
    v31 = OUTLINED_FUNCTION_6_178();
    [v31 v32];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A0);
    v33 = swift_getObjCClassFromMetadata();
    sub_1E384EE08(170);
    v57 = v34;
    v63 = v35;
    OUTLINED_FUNCTION_17_119();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_38();

    v36 = OUTLINED_FUNCTION_6_178();
    v38 = v33;
  }

  else
  {
    type metadata accessor for CardCollectionViewCell();
    v25 = swift_getObjCClassFromMetadata();
    sub_1E384EE08(214);
    v58 = v39;
    v64 = v40;
    OUTLINED_FUNCTION_9_147();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_10_65();
    v41 = OUTLINED_FUNCTION_1_238();
    [v41 v42];

    type metadata accessor for MonogramLockupCell();
    v43 = swift_getObjCClassFromMetadata();
    sub_1E384EE08(217);
    v57 = v44;
    v63 = v45;
    OUTLINED_FUNCTION_9_147();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_38();

    v36 = OUTLINED_FUNCTION_6_178();
    v38 = v43;
  }

  [v36 v37];

  type metadata accessor for MonogramLockupCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(215);
  v59 = v46;
  v65 = v47;
  v48 = MEMORY[0x1E69E61D0];
  OUTLINED_FUNCTION_9_147();
  sub_1E4205ED4();
  OUTLINED_FUNCTION_10_65();
  v49 = OUTLINED_FUNCTION_1_238();
  [v49 v50];

  type metadata accessor for QueryDescriptionBannerViewCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(89);
  v60 = v51;
  v66 = v52;
  OUTLINED_FUNCTION_9_147();
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v53 = OUTLINED_FUNCTION_1_238();
  [v53 v54];
}

uint64_t sub_1E3E68DB8(uint64_t a1)
{
  v2 = v1;
  sub_1E41CCFCC();
  v3 = sub_1E41D6804();
  v4 = *v3;
  v5 = v3[1];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x210);

  v7 = v6(v201);
  v9 = v8;
  swift_isUniquelyReferenced_nonNull_native();
  v180 = *v9;
  v10 = sub_1E38C5C90(v4, v5, 0xD000000000000029, 0x80000001E4286510);
  *v9 = v180;
  v18 = OUTLINED_FUNCTION_20_102(v10, v11, v12, v13, v14, v15, v16, v17, v103, a1, v117, v123, v130, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201[0]);
  v7(v18);
  v124 = sub_1E3CE414C();
  v19 = *v124;
  v20 = v124[1];

  v29 = OUTLINED_FUNCTION_34_63(v21, v22, v23, v24, v25, v26, v27, v28, v104, v111, "-list-header-element-kind", v124, v131, v139, v146, v153, v160, v167, v174, v181, v188, v195, v201[0]);
  v30 = v6(v29);
  v32 = v31;
  swift_isUniquelyReferenced_nonNull_native();
  v182 = *v32;
  v33 = sub_1E38C5C90(v19, v20, 0xD000000000000026, 0x80000001E4286540);
  *v32 = v182;
  v41 = OUTLINED_FUNCTION_20_102(v33, v34, v35, v36, v37, v38, v39, v40, v105, v112, v118, v125, v132, v140, v147, v154, v161, v168, v175, v182, v189, v196, v201[0]);
  v30(v41);
  type metadata accessor for SearchTopResultsListHeader();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = sub_1E4205ED4();

  v44 = sub_1E4205ED4();

  v45 = v113;
  [v113 vui:ObjCClassFromMetadata registerClass:v43 forSupplementaryViewOfKind:v44 withReuseIdentifier:?];

  v46 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1E0);
  v55 = OUTLINED_FUNCTION_34_63(v47, v48, v49, v50, v51, v52, v53, v54, v106, v113, v119, v126, v133, v141, v148, v155, v162, v169, v176, v183, v190, v197, v201[0]);
  v56 = v46(v55);
  v58 = v57;
  swift_isUniquelyReferenced_nonNull_native();
  v184 = *v58;
  v59 = sub_1E3E6C880(0xD000000000000029, 0x80000001E4286510, 142);
  *v58 = v184;
  v67 = OUTLINED_FUNCTION_20_102(v59, v60, v61, v62, v63, v64, v65, v66, v107, v114, v120, v127, v134, v142, v149, v156, v163, v170, v177, v184, v191, v198, v201[0]);
  v56(v67);
  type metadata accessor for QueryDescriptionBannerViewCell();
  v68 = swift_getObjCClassFromMetadata();
  v69 = sub_1E3EF63A0();
  OUTLINED_FUNCTION_5_0();

  v70 = sub_1E4205ED4();

  sub_1E3EF6394();
  OUTLINED_FUNCTION_5_0();

  v71 = sub_1E4205ED4();

  [v45 vui:v68 registerClass:v70 forSupplementaryViewOfKind:v71 withReuseIdentifier:?];

  OUTLINED_FUNCTION_5_0();
  v72 = *v69;
  v73 = v69[1];

  v82 = OUTLINED_FUNCTION_34_63(v74, v75, v76, v77, v78, v79, v80, v81, v108, v115, v121, v128, v135, v143, v150, v157, v164, v171, v178, v185, v192, v199, v201[0]);
  v83 = v46(v82);
  v85 = v84;
  swift_isUniquelyReferenced_nonNull_native();
  v136 = *v85;
  sub_1E3E6C880(v72, v73, 89);
  *v85 = v136;
  v83(v201, 0);
  type metadata accessor for SearchHistoryListHeaderView();
  v86 = swift_getObjCClassFromMetadata();
  v87 = v122;
  v88 = sub_1E4205ED4();

  v89 = sub_1E4205ED4();

  [v45 vui:v86 registerClass:v88 forSupplementaryViewOfKind:v89 withReuseIdentifier:?];

  v98 = OUTLINED_FUNCTION_34_63(v90, v91, v92, v93, v94, v95, v96, v97, v109, v116, v122, v129, v136, v144, v151, v158, v165, v172, v179, v186, v193, v200, v201[0]);
  v99 = v46(v98);
  v101 = v100;
  swift_isUniquelyReferenced_nonNull_native();
  v137 = *v101;
  sub_1E3E6C880(0xD000000000000026, v87 | 0x8000000000000000, 143);
  *v101 = v137;
  return v99(v201, 0);
}

uint64_t sub_1E3E69240(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v2 += 173;
  v3 = *v2;
  (*v2)();
  if (!v4)
  {
LABEL_11:
    v11 = 1;
    return v11 & 1;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = (v3)(v5);
  if (!v7)
  {
    if (v9)
    {
      v11 = 0;
LABEL_14:

      return v11 & 1;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    if (v6 == v8 && v7 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1E42079A4();
    }

    goto LABEL_14;
  }

  v11 = 0;
  return v11 & 1;
}

void sub_1E3E69328(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for SearchCollectionViewModel();
  v4 = OUTLINED_FUNCTION_22_10();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_38();

      v6 = sub_1E40175B0();
    }

    else
    {

      v6 = 0.0;
    }

    type metadata accessor for LayoutGrid();
    v15 = sub_1E3A2579C(v6);
    (*(*v5 + 1664))();
    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 || (sub_1E373F6E0() & 1) == 0 || ((*(*v5 + 1344))(), (sub_1E373F6E0() & 1) == 0))
    {
      v16 = sub_1E373F6E0();
      v17 = *v5;
      if (v16)
      {
        (*(v17 + 1344))();
        if (sub_1E373F6E0())
        {
          OUTLINED_FUNCTION_5_190();
          v14 = sub_1E3ADB20C();
          if ((sub_1E3A24FDC(v15) & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_25:
          OUTLINED_FUNCTION_154();
          if (((*(v18 + 1408))() & 1) == 0)
          {
            sub_1E3280A90(0, &qword_1EE23AEC0);
            v19 = sub_1E42062A4();
            [v14 setBoundarySupplementaryItems_];
          }

          goto LABEL_34;
        }

        if (sub_1E373F6E0())
        {
          goto LABEL_28;
        }
      }

      else if (((*(v17 + 1672))() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_190();
        v14 = sub_1E3ADB20C();
        if ((sub_1E3A24FDC(v15) & 1) == 0)
        {
          goto LABEL_34;
        }

        *v36 = v5[49];
        sub_1E3741534();
        if (sub_1E4205E84())
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

      OUTLINED_FUNCTION_5_190();
      sub_1E3AD9A2C(v21);
      goto LABEL_30;
    }

LABEL_28:
    OUTLINED_FUNCTION_5_190();
    sub_1E3ADA628(v20);
LABEL_30:
    v14 = *v36;
    v22 = v37;
    v23 = v38;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;

    v29 = *&v36[8];
    v28 = *&v36[24];
    v31 = *&v36[40];
    v30 = *&v36[56];
    v33 = *&v36[72];
    v32 = *&v36[88];
    v35 = *&v36[104];
    v34 = *&v36[120];
    goto LABEL_36;
  }

  type metadata accessor for CollectionViewModel();
  v7 = OUTLINED_FUNCTION_22_10();
  if (v7)
  {
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);

    v10 = sub_1E3BA9824();
    if (v8)
    {
      if (v9 == *v10 && v8 == v10[1])
      {
      }

      else
      {
        v12 = sub_1E42079A4();

        if ((v12 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v14 = sub_1E3ADB20C();
LABEL_34:

      goto LABEL_35;
    }

LABEL_11:
  }

  if (sub_1E373F6E0())
  {
    sub_1E3AD9330();
    v14 = v13;
LABEL_35:
    sub_1E3790540(v36);
    v34 = *&v36[112];
    v35 = *&v36[96];
    v32 = *&v36[80];
    v33 = *&v36[64];
    v30 = *&v36[48];
    v31 = *&v36[32];
    v28 = *&v36[16];
    v29 = *v36;
    v22 = *&v36[128];
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    goto LABEL_36;
  }

  sub_1E41CCFD0();
  v14 = *v36;
  v34 = *&v36[120];
  v32 = *&v36[88];
  v35 = *&v36[104];
  v30 = *&v36[56];
  v33 = *&v36[72];
  v28 = *&v36[24];
  v31 = *&v36[40];
  v29 = *&v36[8];
  v22 = v37;
  v23 = v38;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  v27 = v42;
LABEL_36:
  *a2 = v14;
  *(a2 + 8) = v29;
  *(a2 + 24) = v28;
  *(a2 + 40) = v31;
  *(a2 + 56) = v30;
  *(a2 + 72) = v33;
  *(a2 + 88) = v32;
  *(a2 + 104) = v35;
  *(a2 + 120) = v34;
  *(a2 + 136) = v22;
  *(a2 + 144) = v23;
  *(a2 + 152) = v24;
  *(a2 + 160) = v25;
  *(a2 + 168) = v26;
  *(a2 + 176) = v27;
}

void sub_1E3E697C8(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SearchCollectionViewModel();
  v4 = OUTLINED_FUNCTION_4_84();
  if (v4)
  {
    v5 = v4;
    v6 = *(*a1 + 960);

    if (v6(v7))
    {
      type metadata accessor for SearchViewModel();
      v8 = OUTLINED_FUNCTION_22_10();
      if (v8)
      {
        v9 = v8;
        v10 = sub_1E38BAE74(v83);
        v76 = v83[0];
        v79 = v83[4];
        v80 = v83[3];
        v11 = v85;
        v12 = v84;
        v75 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
        v13 = v75(v10);
        v14 = sub_1E407F528(v13);
        v16 = v15;

        v17 = (*(*v5 + 1584))();
        OUTLINED_FUNCTION_23_86();

        if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
        {
          sub_1E389CC78();
        }

        v78 = v12 | (v11 << 16);
        OUTLINED_FUNCTION_26();
        v74 = v20;
        v81 = (*(v19 + 1064))(v17, v20 & 1);
        v21 = *(*v9 + 392);
        if (v21())
        {
          OUTLINED_FUNCTION_30();
          v23 = (*(v22 + 1560))();

          if ((v21)(v24))
          {
            OUTLINED_FUNCTION_26_0();
            v26 = (*(v25 + 1576))();

            if (v26)
            {
              v73 = v26;
              v72 = v23;
              sub_1E3C2AE10();
              v28 = v27;
              v30 = v29;
              v32 = v31;
              if (TVAppFeature.isEnabled.getter(10))
              {
                if (v21())
                {
                  OUTLINED_FUNCTION_30();
                  (*(v33 + 1640))(v28, v30, v32);
                }
              }

              else
              {
                OUTLINED_FUNCTION_26();
                (*(v34 + 1056))(v28, v30, v32, v17);
              }

              if (sub_1E389CC78())
              {
                sub_1E3E6C0C8(v81, v72);
              }
            }
          }
        }

        v35 = v76 & 0xFFFFFFFFFFFFFF00;
        v36 = v9[49];
        OUTLINED_FUNCTION_15_94();
        v38 = (*(v37 + 1480))();
        v39 = v38;
        v40 = v36 & 0xFF00FFFF | (v17 << 16);
        v41 = sub_1E3E6A064(v40, v38);

        if (v41)
        {

          [v41 prepareForReuse];
          v42 = [v41 vuiCellView];
          v43 = OUTLINED_FUNCTION_4_206();
          [v44 v45];

          v46 = v41;
LABEL_47:
          type metadata accessor for SearchCellFactory();
          v86[0] = v35 | 1;
          *&v86[1] = v14;
          v86[2] = v16;
          v86[3] = v80;
          v86[4] = v79;
          v88 = BYTE2(v78);
          v87 = v78;
          sub_1E3B44C90(v46, v9, v86, v5, v81);

          OUTLINED_FUNCTION_45_54();
          return;
        }

        v77 = v76 & 0xFFFFFFFFFFFFFF00;
        if (sub_1E389CC78())
        {
          v47 = 0x80000001E42864F0;
          if ((TVAppFeature.isEnabled.getter(10) & 1) != 0 && (LOWORD(v86[0]) = v9[49], sub_1E3741534(), (sub_1E4205E84() & 1) == 0))
          {
            OUTLINED_FUNCTION_23_86();

            sub_1E384EE08(&qword_1F5D5CE68);
            v49 = v48;
            v47 = v55;
          }

          else
          {

            v49 = 0xD00000000000001ALL;
          }

          v56 = (v75)(v48);
          OUTLINED_FUNCTION_15_94();
          v58 = (*(v57 + 224))(v49, v47);

          if (v58)
          {
            goto LABEL_41;
          }
        }

        else if (sub_1E389CC78())
        {
          v50 = 0x80000001E42864B0;
          if (v74)
          {
            v51 = 0xD000000000000018;
            OUTLINED_FUNCTION_23_86();

            if (sub_1E373F6E0())
            {
              v51 = 0xD00000000000001DLL;
              v50 = 0x80000001E42864D0;
            }
          }

          else if (TVAppFeature.isEnabled.getter(10))
          {
            OUTLINED_FUNCTION_23_86();

            sub_1E384EE08(v39);
            v51 = v59;
            v50 = v60;
          }

          else
          {
            v51 = 0xD000000000000018;
          }

          v61 = (v75)();
          OUTLINED_FUNCTION_15_94();
          v63 = (*(v62 + 224))(v51, v50);

          if (v63)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v52 = (v75)();
          OUTLINED_FUNCTION_23_86();

          sub_1E384EE08(v2);
          OUTLINED_FUNCTION_15_94();
          v54 = (*(v53 + 224))();

          if (v54)
          {
LABEL_41:
            swift_getObjCClassFromMetadata();
            v64 = OUTLINED_FUNCTION_4_206();
            v46 = [v65 v66];
LABEL_43:
            OUTLINED_FUNCTION_15_94();
            v68 = *(v67 + 1496);
            v41 = v46;
            v69 = v68(v86);
            v71 = v70;
            if (v46)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v82 = *v71;
              sub_1E3E6C9B0(v41, v40);
              *v71 = v82;
            }

            else
            {
            }

            v69(v86, 0);
            v35 = v77;
            goto LABEL_47;
          }
        }

        v46 = 0;
        goto LABEL_43;
      }
    }
  }

  OUTLINED_FUNCTION_45_54();

  j__OUTLINED_FUNCTION_3_24();
}

void *sub_1E3E6A064(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3E6C518(a1 & 0xFFFFFF);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void sub_1E3E6A0B0(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v89 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v80 - v8;
  OUTLINED_FUNCTION_26_3();
  v11 = *((*MEMORY[0x1E69E7D40] & v10) + 0x218);
  v12 = v11();
  sub_1E4200104();

  v13 = v11();
  sub_1E42000B4();

  v90 = v9;
  if (v102)
  {
    v94 = v101;
    v95 = v102;
    v96 = v103;
    sub_1E4200034();

    v14 = v101;
    v15 = v102;
    v93 = v103;
  }

  else
  {
    v14 = 0;
    v93 = 0;
    v15 = 0;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3E6C2B0();
  v17 = sub_1E3A2579C(v16);
  type metadata accessor for SearchViewModel();
  v18 = swift_dynamicCastClass();
  v88 = v14;
  v91 = v15;
  if (v18)
  {
    if (v15)
    {
      v19 = v18;
      type metadata accessor for SearchCollectionViewModel();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v86 = v5;
        OUTLINED_FUNCTION_26_0();
        v23 = *(v22 + 1656);

        v23(v17);

        v24 = sub_1E3E6BCE4(a3, v21);
        v26 = v25;

        v101 = v24;
        v102 = v26;
        sub_1E4206174();
        v27 = sub_1E4205ED4();

        v28 = sub_1E41FE7E4();
        v87 = [v92 vui:v27 dequeueReusableCellWithIdentifier:v28 indexPath:?];

        v29 = *(*v21 + 1584);
        v83 = *v21 + 1584;
        v82 = v29;
        LODWORD(v27) = v29();
        v30 = sub_1E373F6E0();
        v84 = v27;
        if (v30 & 1) != 0 || (sub_1E373F6E0())
        {
          v31 = sub_1E389CC78();
        }

        else
        {
          v31 = 0;
        }

        v48 = [v92 vuiTraitCollection];
        sub_1E3C2AE10();
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v85 = v51;
        if ((v31 & 1) != 0 || (TVAppFeature.isEnabled.getter(10) & 1) == 0)
        {
          v58 = (*(*v19 + 1056))(v50, v52, v54, v84);
        }

        else
        {
          v55 = (*v19 + 392);
          v81 = *v55;
          v80[1] = v55;

          v57 = v81(v56);

          if (v57)
          {
            (*(*v57 + 1640))(v50, v85, v54);
          }
        }

        v59 = (v82)(v58);
        v60 = (*(*v19 + 1064))(v59, v31 & 1);
        if (sub_1E389CC78())
        {
          sub_1E3E6C0C8(v60, v17);
        }

        v61 = 0;
        if ((v31 & 1) != 0 || (TVAppFeature.isEnabled.getter(10) & 1) == 0)
        {
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v63 = 2;
          v67 = 0;
        }

        else
        {
          v62 = sub_1E38BAE74(&v94);
          v63 = v94;
          v64 = v97;
          v65 = v98;
          v66 = v99 | (v100 << 16);
          if (v94 == 2)
          {
            v61 = v95;
            v67 = v96;
          }

          else
          {
            [v92 frame];
            v61 = v74;
            v67 = v75;
          }
        }

        type metadata accessor for SearchCellFactory();
        v101 = v63;
        v102 = v61;
        v103 = v67;
        v104 = v64;
        v105 = v65;
        v107 = BYTE2(v66);
        v106 = v66;
        v68 = v87;
        v69 = v87;

        type metadata accessor for Accessibility();
        sub_1E40A8408();
        if (v70)
        {
          v71 = sub_1E4205ED4();
        }

        else
        {
          v71 = 0;
        }

        v5 = v86;
        [v69 setVuiAccessibilityIdentifier_];

        v46 = v89;
        v47 = v90;
        goto LABEL_51;
      }
    }
  }

  v32 = sub_1E373F6E0();
  v33 = sub_1E41CD42C(v92, a2, a3);
  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

  v87 = v33;
  v34 = (*(*a3 + 392))(v33);
  sub_1E3E6C0C8(v34, v17);

  if (!v15)
  {
    v47 = v90;
    if (v87)
    {
      v41 = v87;
LABEL_47:
      v77 = type metadata accessor for Accessibility();
      v78 = v41;
      sub_1E40A8408();
      if (v79)
      {
        sub_1E4205ED4();
        OUTLINED_FUNCTION_38();
      }

      else
      {
        v77 = 0;
      }

      v46 = v89;
      [v78 setVuiAccessibilityIdentifier_];

      goto LABEL_51;
    }

    v46 = v89;
LABEL_51:
    (*(v46 + 8))(v47, v5);
    sub_1E3790548(v88, v91);
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v35 = v87;
  if (!v87)
  {
LABEL_16:
    v46 = v89;
    v47 = v90;
    goto LABEL_51;
  }

  v86 = v5;
  type metadata accessor for HintListCell();
  v36 = swift_dynamicCastClass();
  v37 = v15;
  v38 = v15;
  v39 = v93;
  sub_1E3E6CAD4(v14, v37);
  if (!v36)
  {

    v41 = v35;
    v5 = v86;
    v47 = v90;
    goto LABEL_47;
  }

  v40 = v14;
  v41 = v35;
  v42 = v90;
  v43 = sub_1E4200014();
  v101 = v40;
  v102 = v38;
  v103 = v39;
  v44 = sub_1E41FFFA4();
  if (sub_1E39DFFC8())
  {
    OUTLINED_FUNCTION_154();
    (*(v45 + 152))(1);

LABEL_46:

    v5 = v86;
    v47 = v42;
    goto LABEL_47;
  }

  if (v43 < 2)
  {
    goto LABEL_44;
  }

  v72 = sub_1E41FE844();
  if (!__OFSUB__(v44, 1))
  {
    if (v72 == v44 - 1)
    {
      OUTLINED_FUNCTION_154();
      (*(v73 + 152))(0);
LABEL_45:

      goto LABEL_46;
    }

LABEL_44:
    OUTLINED_FUNCTION_154();
    (*(v76 + 152))(1);
    goto LABEL_45;
  }

  __break(1u);
}

void sub_1E3E6AA0C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  type metadata accessor for SearchCollectionViewModel();
  v12 = OUTLINED_FUNCTION_4_84();
  if (v12)
  {
    p_isa = v12;
    v127 = v7;
    v128 = a3;
    v129 = a2;
    OUTLINED_FUNCTION_26_0();
    v15 = *(v14 + 1584);

    v15(v16);
    if ((sub_1E389CC78() & 1) == 0 && ((sub_1E39DFFC8() & 1) == 0 || ([objc_opt_self() isPad] & 1) == 0))
    {
      goto LABEL_31;
    }

    type metadata accessor for LayoutGrid();
    sub_1E3E6C2B0();
    v126 = sub_1E3A2579C(v17);
    sub_1E3E6C2B0();
    sub_1E3A258E4(v18);
    v20 = v19;
    v22 = v21;
    v23 = *(*p_isa + 968);

    v25 = v23(v24);

    if (!v25)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_110_9();
    v27 = v25[49];
    v28 = (*(v26 + 464))();
    v29 = v25;
    v30 = sub_1E3AE003C(v27, v28);
    v32 = v31;

    if (v32)
    {
      v125 = v25;
      v33 = v30 == v129 && v32 == v128;
      if (v33)
      {
      }

      else
      {
        v34 = sub_1E42079A4();

        if ((v34 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_110_9();
      v36 = (*(v35 + 512))();
      sub_1E37D26AC(v129, v128, v36);
      v38 = v37;

      if (!v38)
      {
LABEL_30:

LABEL_31:

        goto LABEL_32;
      }

      (*(*p_isa + 1344))(v39);
      if (sub_1E373F6E0())
      {
        v40 = sub_1E3A253B8(v126);
        v42 = v41;
        if (v40 == sub_1E3A253B8(4) && v42 == v43)
        {
        }

        else
        {
          v45 = sub_1E42079A4();

          if (v45)
          {
            OUTLINED_FUNCTION_26();
            v46 += 49;
            v42 = *v46;
            if ((*v46)())
            {
              OUTLINED_FUNCTION_30();
              (*(v47 + 192))(aBlock);
              OUTLINED_FUNCTION_3_204();
              if (!v33)
              {
                *(v48 + 8) = v20;
              }

              v49 = OUTLINED_FUNCTION_21_93();
              v50(v49);
            }

            v51 = v129;
            if (!v42())
            {
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_30();
            v52 = OUTLINED_FUNCTION_38_50();
            v53(v52);
            OUTLINED_FUNCTION_3_204();
            if (!v33)
            {
              *(v54 + 24) = v22;
            }

            goto LABEL_49;
          }
        }

        OUTLINED_FUNCTION_26();
        v51 = v129;
        if (!(*(v66 + 392))())
        {
LABEL_50:
          OUTLINED_FUNCTION_53();
          sub_1E4205ED4();
          OUTLINED_FUNCTION_26_94();
          OUTLINED_FUNCTION_73_1();
          v72 = sub_1E41FE7E4();
          v73 = OUTLINED_FUNCTION_16_123(v72, sel_vui_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath_);

          v74 = v73;
          v75 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v76 = OUTLINED_FUNCTION_15_130(v75);
          v77 = sub_1E393D9C4(v29, v73, aBlock, 0);

LABEL_75:

          sub_1E325F748(aBlock, &qword_1ECF296C0);
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_30();
        v67 = OUTLINED_FUNCTION_38_50();
        v68(v67);
        OUTLINED_FUNCTION_3_204();
        if (!v33)
        {
          *(v69 + 8) = 0x4028000000000000;
        }

LABEL_49:
        v70 = OUTLINED_FUNCTION_21_93();
        v71(v70);

        goto LABEL_50;
      }

      if ((sub_1E373F6E0() & 1) == 0)
      {
        if ((sub_1E39DFFC8() & 1) == 0)
        {
          goto LABEL_58;
        }

        v79 = p_isa[2];
        v78 = p_isa[3];

        v80 = sub_1E39D0198();
        if (!v78)
        {
          goto LABEL_58;
        }

        if (v79 == *v80 && v78 == v80[1])
        {

          goto LABEL_36;
        }

        v82 = sub_1E42079A4();

        if ((v82 & 1) == 0)
        {
LABEL_58:
          v83 = sub_1E324FBDC();
          (*(v127 + 16))(v11, v83, v5);

          v84 = sub_1E41FFC94();
          v85 = sub_1E42067F4();

          if (os_log_type_enabled(v84, v85))
          {
            v124 = v85;
            v86 = swift_slowAlloc();
            aBlock[0] = swift_slowAlloc();
            *v86 = 136315650;
            *(v86 + 4) = sub_1E3270FC8(v129, v128, aBlock);
            *(v86 + 12) = 2080;
            v87 = (*(*v25 + 376))();
            sub_1E3270FC8(v87, v88, aBlock);
            v89 = OUTLINED_FUNCTION_73_1();
            *(v86 + 14) = v25;
            *(v86 + 22) = 2080;
            v90 = (*(*p_isa + 376))(v89);
            v92 = sub_1E3270FC8(v90, v91, aBlock);

            *(v86 + 24) = v92;
            p_isa = &v84->isa;
            _os_log_impl(&dword_1E323F000, v84, v124, "Search: Unexpected %s %s inside %s", v86, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_0();
            v93 = v25;
            OUTLINED_FUNCTION_6_0();

            (*(v127 + 8))(v11, v5);
          }

          else
          {

            (*(v127 + 8))(v11, v5);
            v93 = v25;
          }

          sub_1E4205ED4();
          OUTLINED_FUNCTION_26_94();
          OUTLINED_FUNCTION_73_1();
          v121 = sub_1E41FE7E4();
          v122 = OUTLINED_FUNCTION_16_123(v121, sel_vui_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath_);

          v74 = v122;
          v123 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v76 = OUTLINED_FUNCTION_15_130(v123);
          v77 = sub_1E393D9C4(v93, v122, aBlock, 0);

          goto LABEL_75;
        }
      }

LABEL_36:
      if ((sub_1E39DFFC8() & 1) != 0 || (sub_1E3E6C1F8(v126) & 1) == 0)
      {
        OUTLINED_FUNCTION_26();
        v94 += 49;
        v57 = *v94;
        if ((*v94)())
        {
          OUTLINED_FUNCTION_30();
          (*(v95 + 192))(aBlock);
          OUTLINED_FUNCTION_3_204();
          if (!v33)
          {
            *(v96 + 8) = v20;
          }

          v97 = OUTLINED_FUNCTION_21_93();
          v98(v97);
        }

        v62 = v129;
        if (!v57())
        {
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_30();
        v99 = OUTLINED_FUNCTION_38_50();
        v100(v99);
        OUTLINED_FUNCTION_3_204();
        if (!v33)
        {
          *(v101 + 24) = v22;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26();
        v56 += 49;
        v57 = *v56;
        if ((*v56)())
        {
          OUTLINED_FUNCTION_30();
          (*(v58 + 192))(aBlock);
          OUTLINED_FUNCTION_3_204();
          if (!v33)
          {
            *(v59 + 8) = 0;
          }

          v60 = OUTLINED_FUNCTION_21_93();
          v61(v60);
        }

        v62 = v129;
        if (!v57())
        {
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_30();
        v63 = OUTLINED_FUNCTION_38_50();
        v64(v63);
        OUTLINED_FUNCTION_3_204();
        if (!v33)
        {
          *(v65 + 24) = 0;
        }
      }

      v102 = OUTLINED_FUNCTION_21_93();
      v103(v102);

LABEL_68:
      OUTLINED_FUNCTION_53();
      sub_1E4205ED4();
      OUTLINED_FUNCTION_26_94();
      OUTLINED_FUNCTION_73_1();
      v104 = sub_1E41FE7E4();
      v105 = OUTLINED_FUNCTION_16_123(v104, sel_vui_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath_);

      v106 = v105;
      v107 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      v108 = OUTLINED_FUNCTION_15_130(v107);
      v109 = sub_1E393D9C4(v29, v105, aBlock, 0);

      sub_1E325F748(aBlock, &qword_1ECF296C0);
      if (v106)
      {
        type metadata accessor for SearchHistoryListHeaderView();
        v110 = OUTLINED_FUNCTION_22_10();
        if (v110)
        {
          v111 = v110;
          v112 = OBJC_IVAR____TtC8VideosUI27SearchHistoryListHeaderView_clearButton;
          OUTLINED_FUNCTION_5_0();
          v113 = *(v111 + v112);
          if (v113)
          {
            type metadata accessor for Accessibility();
            v114 = v113;
            sub_1E40A7DC8();
            sub_1E38E89A0(v115, v116, v114);

            v117 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v118 = swift_allocObject();
            v118[2] = v117;
            v118[3] = v125;
            v118[4] = v113;
            aBlock[4] = sub_1E3E6CBB0;
            aBlock[5] = v118;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1E37C0588;
            aBlock[3] = &block_descriptor_126;
            v119 = _Block_copy(aBlock);
            v120 = v114;

            [v120 setSelectActionHandler_];

            _Block_release(v119);
          }

          else
          {
          }

          goto LABEL_78;
        }
      }

      else
      {
      }

LABEL_78:
      OUTLINED_FUNCTION_54_0();
      return;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_54_0();

  sub_1E41CD430();
}

void sub_1E3E6B734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E324FBDC();
  (*(v7 + 16))(v11, v12, v5);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1E323F000, v13, v14, "Search: clearButton did click", v15, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x550))();
    v20 = v19;

    if (v18)
    {
      ObjectType = swift_getObjectType();
      (*(v20 + 8))(a2, a3, ObjectType, v20);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E3E6B928()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  OUTLINED_FUNCTION_26_3();
  v7 = *((*MEMORY[0x1E69E7D40] & v6) + 0x218);
  v8 = v7();
  sub_1E4200104();

  v9 = v7();
  sub_1E42000A4();

  return (*(v2 + 8))(v5, v0);
}

void (*sub_1E3E6BA6C(uint64_t a1))(uint64_t)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SearchStackViewController();
  objc_msgSendSuper2(&v6, sel_vuiScrollViewDidScroll_, a1);
  OUTLINED_FUNCTION_26_3();
  result = (*((*MEMORY[0x1E69E7D40] & v3) + 0x5B0))();
  if (result)
  {
    v5 = result;
    result(a1);
    return sub_1E34AF594(v5);
  }

  return result;
}

void sub_1E3E6BB8C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 440))();
  (*((*v2 & *v4) + 0xB8))(a1);
}

void sub_1E3E6BC44()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 440))();
  v2 = [v1 collectionViewLayout];

  [v2 invalidateLayout];
}

unint64_t sub_1E3E6BCE4(uint64_t a1, uint64_t a2)
{
  sub_1E384EE08(*(a1 + 98));
  v4 = v3;
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    (*(v5 + 1584))();
    sub_1E3AFFC64();
    if (sub_1E4205E84())
    {
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        v6 = 0xD00000000000001ALL;
        goto LABEL_10;
      }

      if (sub_1E373F6E0())
      {
        v6 = 0xD00000000000001ALL;
LABEL_10:

        return v6;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26();
      (*(v7 + 1584))();
      if (sub_1E4205E84())
      {
        v6 = 0xD000000000000018;
        if (sub_1E373F6E0())
        {
          v6 = 0xD00000000000001DLL;
          goto LABEL_10;
        }

        if (TVAppFeature.isEnabled.getter(10) & 1) == 0 || (sub_1E373F6E0())
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v4;
}

double sub_1E3E6BE9C(double a1, double a2, uint64_t a3, uint64_t a4)
{
  sub_1E41CD338();
  OUTLINED_FUNCTION_7_23();
  type metadata accessor for CollectionViewModel();
  if (OUTLINED_FUNCTION_4_84())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v8 + 1344))();
    if (sub_1E373F6E0() & 1) != 0 || (type metadata accessor for SearchCollectionViewModel(), OUTLINED_FUNCTION_4_84()) && (OUTLINED_FUNCTION_26_0(), (*(v9 + 1584))(), sub_1E3AFFC64(), (sub_1E4205E84()))
    {
      if (a4)
      {
        swift_getObjectType();
        v4 = sub_1E40175B0();
      }

      else
      {
        v4 = 0.0;
      }

      type metadata accessor for LayoutGrid();
      v10 = sub_1E3A2579C(v4);
      if ((sub_1E39DFFC8() & 1) != 0 || (sub_1E3E6C1F8(v10) & 1) == 0)
      {
        if ((TVAppFeature.isEnabled.getter(10) & 1) != 0 && (sub_1E3741534(), (sub_1E4205E84() & 1) == 0))
        {
          v11.n128_f64[0] = a1;
          v12.n128_f64[0] = a2;
        }

        else
        {
          v11.n128_u64[0] = *MEMORY[0x1E69DDCE0];
          v12.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 8);
        }
      }

      else
      {
        sub_1E39DFFC8();
        sub_1E39416C8();
        OUTLINED_FUNCTION_5_0();
        v11.n128_f64[0] = sub_1E3952C40();
      }

      nullsub_1(v11, v12);
      OUTLINED_FUNCTION_7_23();
    }
  }

  return v4;
}

uint64_t sub_1E3E6C0C8(uint64_t a1, char a2)
{
  if (a1 && (type metadata accessor for HintListCellLayout(), OUTLINED_FUNCTION_4_84()) || (result = TVAppFeature.isEnabled.getter(10), (result & 1) == 0))
  {
    type metadata accessor for LayoutGrid();
    sub_1E3E6C2B0();
    sub_1E3A258E4(v5);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    if ((sub_1E39DFFC8() & 1) != 0 || (result = sub_1E3E6C1F8(a2), (result & 1) == 0))
    {
      result = sub_1E3A24FDC(a2);
      if (result)
      {
        if (!a1)
        {
          return result;
        }

        *&v18 = sub_1E3952C64();
        *(&v18 + 1) = v15;
        *&v19 = v16;
        *(&v19 + 1) = v17;
      }

      else
      {
        if (!a1)
        {
          return result;
        }

        *&v18 = v7;
        *(&v18 + 1) = v9;
        *&v19 = v11;
        *(&v19 + 1) = v13;
      }
    }

    else
    {
      if (!a1)
      {
        return result;
      }

      v14 = *(MEMORY[0x1E69DDCE0] + 16);
      v18 = *MEMORY[0x1E69DDCE0];
      v19 = v14;
    }

    v20 = 0;
    return (*(*a1 + 184))(&v18);
  }

  return result;
}

uint64_t sub_1E3E6C1F8(char a1)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v2 = sub_1E3E67870();
    if (v2 != 7)
    {
      v3 = v2;
      v4 = sub_1E3A253B8(a1);
      v6 = v5;
      if (sub_1E3A253B8(v3) == v4 && v7 == v6)
      {
      }

      else
      {
        v9 = 1;
        v10 = sub_1E42079A4();

        if (v10)
        {
          return v9;
        }
      }
    }
  }

  return 0;
}

void sub_1E3E6C2B0()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 440))();
  [v2 frame];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_14_25();
  if ([objc_opt_self() isPad])
  {
    v3 = [v0 vuiIsRTL];
    v4 = [v0 view];
    v5 = v4;
    if (v3)
    {
      if (v4)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    else if (v4)
    {
LABEL_6:
      [v4 safeAreaInsets];

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1E3E6C404()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_delegate);

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_scrollHandler));
}

id sub_1E3E6C46C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchStackViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3E6C518(int a1)
{
  sub_1E4207B44();
  sub_1E37414E0();
  sub_1E4205DB4();
  sub_1E3E673C4();
  sub_1E4205DB4();
  v2 = sub_1E4207BA4();
  return sub_1E3E6C5B8(a1 & 0xFFFFFF, v2);
}

unint64_t sub_1E3E6C5B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v10 = ~v3;
    sub_1E3742F1C();
    do
    {
      sub_1E4206254();
      sub_1E4206254();
      if (v13 == v11 && v14 == v12)
      {
      }

      else
      {
        v6 = sub_1E42079A4();

        if ((v6 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      sub_1E389D0D4();
      sub_1E4206254();
      sub_1E4206254();
      if (v13 == v11 && v14 == v12)
      {

        return v4;
      }

      v8 = sub_1E42079A4();

      if (v8)
      {
        return v4;
      }

LABEL_15:
      v4 = (v4 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1E3E6C79C(int a1)
{
  v2 = v1;
  v3 = sub_1E3E6C518(a1 & 0xFFFFFF);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A560);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  sub_1E3280A90(0, &qword_1EE23B120);
  sub_1E3E67B18();
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

unint64_t sub_1E3E6C880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E3740AE8(a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A568);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E3740AE8(a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = (v15[7] + 16 * v11);
    *v16 = a1;
    v16[1] = a2;
  }

  else
  {

    return sub_1E3E6CB18(v11, a3, a1, a2, v15);
  }
}

void sub_1E3E6C9B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E3E6C518(a2 & 0xFFFFFF);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A560);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E3E6C518(a2 & 0xFFFFFF);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v9) = a1;
  }

  else
  {

    sub_1E3E6CB60(v9, a2 & 0xFFFFFF, a1, v13);
  }
}

uint64_t sub_1E3E6CAD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E3E6CB18(unint64_t result, __int16 a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 2 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

unint64_t sub_1E3E6CB60(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 4 * result;
  *v4 = a2;
  *(v4 + 2) = BYTE2(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_1E3E6CBC0()
{
  result = qword_1ECF3A550;
  if (!qword_1ECF3A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A550);
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchPrototypeDictKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFEFA)
  {
    if ((a2 + 33489158) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16711943;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 0x107;
  v3 = v4 - 263;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchPrototypeDictKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33489158) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFEF9)
  {
    v3 = 0;
  }

  if (a2 > 0xFEF9)
  {
    *result = a2 + 262;
    *(result + 2) = (a2 - 65274) >> 16;
    if (v3)
    {
      v4 = ((a2 - 65274) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 262;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1E3E6CDFC()
{
  sub_1E3AC5818();

  return OUTLINED_FUNCTION_32_0();
}

void sub_1E3E6CE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  v75 = v23;
  v76 = v24;
  v26 = v25;
  v77 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v74 = v34;
  v35 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_1_239();
  sub_1E3E70478(v42, v43);
  *(v33 + 96) = sub_1E4201754();
  *(v33 + 104) = v44;
  *(v33 + 112) = sub_1E3E6CDD0;
  *(v33 + 120) = 0;
  *(v33 + 128) = 0;
  v45 = type metadata accessor for StackTemplateView();
  v46 = *(v45 + 52);
  *(v33 + v46) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v47 = *(v45 + 56);
  v48 = v29;
  v49 = (v33 + v47);
  *v49 = 0;
  v49[1] = 0;
  v50 = sub_1E324FBDC();
  (*(v37 + 16))(v41, v50, v35);

  v51 = sub_1E41FFC94();
  v52 = sub_1E4206814();

  if (os_log_type_enabled(v51, v52))
  {
    v71 = v35;
    v72 = v48;
    v73 = v22;
    v53 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v79[0] = v70;
    *v53 = 136315394;
    if (v31[3])
    {
      v54 = v31[2];
      v55 = v31[3];
    }

    else
    {
      v55 = 0xE400000000000000;
      v54 = 1819047278;
    }

    v59 = sub_1E3270FC8(v54, v55, v79);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    v60 = sub_1E41E1364(v72);
    v62 = sub_1E3270FC8(v60, v61, v79);
    v48 = v72;

    *(v53 + 14) = v62;
    _os_log_impl(&dword_1E323F000, v51, v52, "StackTemplateView::init id:%s, showcaseValue:%s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E69143B0](v70, -1, -1);
    MEMORY[0x1E69143B0](v53, -1, -1);

    (*(v37 + 8))(v41, v71);
    v58 = v77;
    v22 = v73;
  }

  else
  {

    v56 = OUTLINED_FUNCTION_33_11();
    v57(v56);
    v58 = v77;
  }

  *(v33 + 56) = v48;
  type metadata accessor for TemplateViewModel();
  OUTLINED_FUNCTION_2_205();
  sub_1E3E70478(v63, v64);

  v65 = sub_1E42010C4();
  *(v33 + 40) = v66;
  *(v33 + 48) = v74;
  *v33 = v75;
  *(v33 + 8) = v76;
  *(v33 + 16) = v22 & 1;
  *(v33 + 24) = a21;
  *(v33 + 32) = v65;
  *(v33 + 64) = v58;
  *(v33 + 72) = v26;
  LOBYTE(v78[0]) = 5;
  (*(*v31 + 776))(v79, v78, &unk_1F5D5DAC8, &off_1F5D5C998);

  if (v79[3])
  {
    v67 = swift_dynamicCast();
    v68 = v78[0];
    v69 = v78[1];
    if (!v67)
    {
      v68 = 0;
      v69 = 0;
    }
  }

  else
  {
    sub_1E329505C(v79);
    v68 = 0;
    v69 = 0;
  }

  *(v33 + 80) = v68;
  *(v33 + 88) = v69;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6D29C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for StackTemplateView();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A580);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v17 = *(v0 + 40);
  v18 = (*(*v17 + 464))(v14);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1E32AE9B0(v19);
  v54 = v10;
  v55 = v3;
  if (v20)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v48 = OUTLINED_FUNCTION_21_17();
      v53 = MEMORY[0x1E6911E60](v48);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_40;
      }

      v53 = *(v19 + 32);
    }
  }

  else
  {
    v53 = 0;
  }

  sub_1E3E6F548(v1, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v7 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = v19;
  v21 = sub_1E3E6F5AC(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + ((v10 + 24) & ~v10));
  v22 = (*(**(v1 + 40) + 464))(v21);
  if (v22)
  {
    v23 = v22;
    if (sub_1E32AE9B0(v22))
    {
      if ((v23 & 0xC000000000000001) == 0)
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v24 = *(v23 + 32);

        goto LABEL_14;
      }

LABEL_40:
      v49 = OUTLINED_FUNCTION_21_17();
      v24 = MEMORY[0x1E6911E60](v49);
LABEL_14:

      switch(*(v24 + 98))
      {
        case 'Q':
        case 'R':
        case 'V':
          goto LABEL_15;
        case 'S':
          OUTLINED_FUNCTION_111();
          v31 = (*(v30 + 392))();
          if (!v31)
          {
            goto LABEL_33;
          }

          v32 = v31;
          type metadata accessor for CanonicalBannerLayout();
          OUTLINED_FUNCTION_20_2();
          v33 = swift_dynamicCastClass();
          if (v33 && (v51 = v33, v52 = v32, OUTLINED_FUNCTION_111(), (v35 = (*(v34 + 488))()) != 0) && (v50 = sub_1E373E010(35, v35), , v50))
          {

            v37 = (*(*v51 + 1912))(v36);
            if (v37 == 3)
            {

LABEL_15:
            }

            else
            {
              LOBYTE(v57) = v37;
              LOBYTE(v56) = 2;
              sub_1E39ABD54();
              v47 = sub_1E4205E84();

              if (v47)
              {
                goto LABEL_34;
              }
            }

            v25 = sub_1E4202744();
            v26 = sub_1E4202774();
            sub_1E4202774();
            if (sub_1E4202774() == v25)
            {
              goto LABEL_35;
            }
          }

          else
          {

LABEL_33:
          }

          break;
        case 'T':
          OUTLINED_FUNCTION_111();
          if (!(*(v27 + 392))())
          {
            goto LABEL_33;
          }

          type metadata accessor for RoomBannerLayout();
          OUTLINED_FUNCTION_20_2();
          v52 = swift_dynamicCastClass();

          if (!v52)
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_111();
          v29 = (*(v28 + 488))();
          if (!v29)
          {
            goto LABEL_33;
          }

          v52 = sub_1E373E010(39, v29);

          if (!v52)
          {
            goto LABEL_34;
          }

          goto LABEL_15;
        case 'U':
          goto LABEL_33;
        default:
          if (*(v24 + 98) != 123)
          {
            goto LABEL_33;
          }

          goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

LABEL_34:
  v26 = sub_1E4202774();
LABEL_35:

  v57 = sub_1E3E6F610;
  v58 = v3;
  v59 = v26;
  v56 = v17;
  sub_1E3E6F548(v1, &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = swift_allocObject();
  sub_1E3E6F5AC(&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + ((v10 + 16) & ~v10));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A588);
  type metadata accessor for TemplateViewModel();
  sub_1E3E6F760();
  OUTLINED_FUNCTION_2_205();
  sub_1E3E70478(v39, v40);
  sub_1E4203524();

  type metadata accessor for StackTemplateCellCache();
  OUTLINED_FUNCTION_7_189();
  sub_1E3E70478(v41, v42);
  OUTLINED_FUNCTION_32_0();
  v43 = sub_1E4200BC4();
  v44 = sub_1E4200504();
  v45 = v55;
  (*(v12 + 32))(v55, v16, v54);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A598) + 36));
  *v46 = v44;
  v46[1] = v43;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6D964()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v1;
  v36 = v2;
  v4 = v3;
  v44 = v5;
  sub_1E4201FA4();
  OUTLINED_FUNCTION_0_10();
  v42 = v7;
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5A8);
  OUTLINED_FUNCTION_0_10();
  v38 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5B0);
  OUTLINED_FUNCTION_0_10();
  v39 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5B8);
  OUTLINED_FUNCTION_0_10();
  v40 = v20;
  v41 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_5();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5C0);
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  sub_1E4202704();
  v45 = v4;
  v46 = v36;
  v47 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5C8);
  sub_1E3E6FC48();
  sub_1E4200AD4();
  sub_1E4201F94();
  v27 = sub_1E4202704();
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v27)
  {
    sub_1E42026F4();
  }

  v28 = sub_1E328FCF4(&qword_1EE289EF8, &qword_1ECF3A5A8);
  sub_1E4203244();
  (*(v42 + 8))(v10, v43);
  v29 = OUTLINED_FUNCTION_33_11();
  v30(v29);
  v48 = v11;
  v49 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4203314();
  (*(v39 + 8))(v18, v14);
  sub_1E4202704();
  v48 = v14;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  sub_1E3E3665C(v41, v26);
  (*(v40 + 8))(v0, v32);
  v33 = v44;
  (*(v23 + 32))(v44, v26, v37);
  v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5E0) + 36));
  *v34 = 0xD000000000000019;
  v34[1] = 0x80000001E4286690;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6DDEC()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v1;
  v54 = v2;
  v4 = v3;
  v50 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v42 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_23_87(v10, v41);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v46 = v14;
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4202084();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5D8);
  OUTLINED_FUNCTION_0_10();
  v43 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5F0);
  OUTLINED_FUNCTION_0_10();
  v48 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  if (sub_1E32AE9B0(v4))
  {
    v42 = "$_prototypeCellDictionary";
    v30 = sub_1E4201D54();
    v41 = &v41;
    MEMORY[0x1EEE9AC00](v30);
    *(&v41 - 4) = v54;
    *(&v41 - 3) = v4;
    *(&v41 - 2) = v44;
    LODWORD(v55) = 0;
    sub_1E3E70478(&qword_1EE2889E8, MEMORY[0x1E697FCB0]);
    sub_1E4207CD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5F8);
    v44 = v6;
    sub_1E328FCF4(&qword_1EE288330, &qword_1ECF3A5F8);
    sub_1E4200AA4();
    sub_1E328FCF4(&qword_1EE289F00, &qword_1ECF3A5D8);
    sub_1E3E6FE64();
    sub_1E42031E4();
    (*(v43 + 8))(v20, v16);
    v31 = v49;
    v32 = &v23[*(v49 + 36)];
    *v32 = 0xD00000000000001ALL;
    *(v32 + 1) = 0x80000001E42866B0;
    v33 = v47;
    sub_1E3E6F548(v54, v47);
    v34 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v35 = swift_allocObject();
    sub_1E3E6F5AC(v33, v35 + v34);
    v36 = sub_1E3E6FD28();
    sub_1E401A3CC(0xD000000000000019, v42 | 0x8000000000000000, sub_1E3E70020, v35, v31, v36);

    sub_1E325F6F0(v23, &qword_1ECF3A5D0);
    v37 = v48;
    v38 = v51;
    (*(v48 + 16))(v53, v27, v51);
    swift_storeEnumTagMultiPayload();
    v55 = v31;
    v56 = v36;
    OUTLINED_FUNCTION_10_141();
    OUTLINED_FUNCTION_9_148();
    sub_1E4201F44();
    (*(v37 + 8))(v27, v38);
  }

  else
  {
    nullsub_1(v28, v29);
    v39 = v42;
    (*(v42 + 16))(v53, v0, v6);
    swift_storeEnumTagMultiPayload();
    v40 = sub_1E3E6FD28();
    v55 = v49;
    v56 = v40;
    OUTLINED_FUNCTION_10_141();
    OUTLINED_FUNCTION_9_148();
    sub_1E4201F44();
    (*(v39 + 8))(v0, v6);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6E448()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v35 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A600);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A608);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  sub_1E3E6E714();
  sub_1E4203DA4();
  sub_1E4200D94();
  v50 = 1;
  v49 = v44;
  v48 = v46;
  v36 = 0;
  v37 = 1;
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v20 = *(v1 + 48);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60);
  v22 = sub_1E374AD84();
  sub_1E3A610C8(v20, v21, v22);
  v33 = v16;
  sub_1E379D7E4(v19, v16, &qword_1ECF3A608);
  v23 = *(v4 + 16);
  v24 = v8;
  v25 = v8;
  v26 = v11;
  v27 = v11;
  v28 = v34;
  v23(v25, v26, v34);
  v29 = v35;
  sub_1E379D7E4(v16, v35, &qword_1ECF3A608);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A610);
  v23(v29 + *(v30 + 48), v24, v28);
  v31 = *(v4 + 8);
  v31(v27, v28);
  sub_1E325F6F0(v19, &qword_1ECF3A608);
  v31(v24, v28);
  sub_1E325F6F0(v33, &qword_1ECF3A608);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6E714()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v2 = v1;
  v50 = v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A618);
  OUTLINED_FUNCTION_0_10();
  v44 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  KeyPath = &v43 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A620);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = OUTLINED_FUNCTION_23_87(v12, v43);
  v14 = OUTLINED_FUNCTION_8_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A628);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v26 = [objc_opt_self() sharedInstance];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 vStackInForEachEnabled];

    v29 = v18 + 7;
    v52 = v2;
    if (v28)
    {
      KeyPath = swift_getKeyPath();
      sub_1E3E6F548(v46, &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v31 = swift_allocObject();
      sub_1E3E6F5AC(v19, v31 + v30);
      *(v31 + ((v29 + v30) & 0xFFFFFFFFFFFFFFF8)) = v2;
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A640);
      OUTLINED_FUNCTION_14_11();
      sub_1E328FCF4(v32, &unk_1ECF2C790);
      sub_1E328FCF4(&qword_1EE288548, &qword_1ECF3A640);
      sub_1E4203B34();
      swift_getKeyPath();
      v33 = v47;
      sub_1E4203B24();

      v34 = *(v21 + 8);
      v35 = OUTLINED_FUNCTION_33_11();
      v34(v35);
      (*(v21 + 16))(v49, v25, v33);
      swift_storeEnumTagMultiPayload();
      sub_1E3E704BC();
      sub_1E3E7056C();
      OUTLINED_FUNCTION_33_11();
      sub_1E4201F44();
      (v34)(v25, v33);
    }

    else
    {
      swift_getKeyPath();
      sub_1E3E6F548(v46, v19);
      v36 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v37 = swift_allocObject();
      sub_1E3E6F5AC(v19, v37 + v36);
      *(v37 + ((v29 + v36) & 0xFFFFFFFFFFFFFFF8)) = v2;
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A630);
      OUTLINED_FUNCTION_14_11();
      sub_1E328FCF4(v38, &unk_1ECF2C790);
      sub_1E3E70300();
      sub_1E4203B34();
      swift_getKeyPath();
      v39 = KeyPath;
      v40 = v51;
      sub_1E4203B24();

      v41 = v44;
      v42 = *(v44 + 8);
      v42(v8, v40);
      (*(v41 + 16))(v49, v39, v40);
      swift_storeEnumTagMultiPayload();
      sub_1E3E704BC();
      sub_1E3E7056C();
      sub_1E4201F44();
      v42(v39, v40);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3E6ED08()
{
  LOBYTE(v3) = 3;
  (*(*v0 + 776))(v4, &v3, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1E329505C(v4);
  }

  if (!v0[3])
  {
    return 0;
  }

  v1 = v0[2];

  return v1;
}

uint64_t sub_1E3E6EDE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E6ED08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1E3E6EE0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if ((*(**(v0 + 40) + 1048))())
  {

LABEL_3:
    v13 = 0;
    goto LABEL_6;
  }

  v14 = sub_1E37D027C(v3);
  if (!v14)
  {
    goto LABEL_3;
  }

  v15 = v14;

  v13 = v15 == v5;
LABEL_6:
  v16 = *(v1 + 96);
  if (v16)
  {
    type metadata accessor for StackTemplateView();

    sub_1E3746E10(v12);
    sub_1E37FB85C(v5, v3, v16, v13, v19);

    (*(v8 + 8))(v12, v6);
    sub_1E3E6F034();
    sub_1E375B760(v19);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for AppEnvironment();
    OUTLINED_FUNCTION_1_239();
    sub_1E3E70478(v17, v18);
    OUTLINED_FUNCTION_21_17();
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E3E6EFE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1E3E6F034()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v0;
  v38 = v2;
  v34 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB58);
  OUTLINED_FUNCTION_0_10();
  v36 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A650);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A658);
  OUTLINED_FUNCTION_0_10();
  v35 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - v20;
  if (!sub_1E385053C())
  {
    memcpy(v39, v34, sizeof(v39));
    nullsub_1(v28, v29);
    memcpy(v40, v39, 0x150uLL);
    sub_1E3A546A4(v5, v40, 0, v37[3], v1);
    v30 = v36;
    (*(v36 + 16))(v12, v1, v6);
    swift_storeEnumTagMultiPayload();
    sub_1E3E703A4();
    OUTLINED_FUNCTION_14_14();
    sub_1E4201F44();
    (*(v30 + 8))(v1, v6);
    goto LABEL_5;
  }

  v33[0] = v12;
  v33[1] = v18;
  v34 = v9;
  v36 = v6;
  v22 = v37[12];
  if (v22)
  {
    v37 = v37[7];
    v23 = *(*v22 + 216);

    v25 = v23(v24);

    v26 = *(*v22 + 184);

    v26(v27);

    sub_1E41144F4(v5, v37, v25, v17);
    swift_getOpaqueTypeConformance2();
    sub_1E4203374();
    (*(v35 + 8))(v17, v13);
    sub_1E379D7E4(v21, v33[0], &qword_1ECF3A638);
    swift_storeEnumTagMultiPayload();
    sub_1E3E703A4();
    OUTLINED_FUNCTION_14_14();
    sub_1E4201F44();
    sub_1E325F6F0(v21, &qword_1ECF3A638);
LABEL_5:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_1_239();
  sub_1E3E70478(v31, v32);
  OUTLINED_FUNCTION_21_17();
  sub_1E4201744();
  __break(1u);
}

id sub_1E3E6F480()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 launchConfig];

  v2 = [v1 layoutReuseIdleTimeToLive];
  return v2;
}

uint64_t type metadata accessor for StackTemplateView()
{
  result = qword_1EE2A19E0;
  if (!qword_1EE2A19E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E6F548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackTemplateView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E6F5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackTemplateView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3E6F610()
{
  v0 = OUTLINED_FUNCTION_22_80();
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3E6D964();
}

uint64_t sub_1E3E6F684(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for StackTemplateView();
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for StackTemplateCellCache();
  OUTLINED_FUNCTION_7_189();
  sub_1E3E70478(v5, v6);
  sub_1E4200BC4();
  sub_1E3E8A3D8(v4);
}

unint64_t sub_1E3E6F760()
{
  result = qword_1EE289A40;
  if (!qword_1EE289A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A588);
    sub_1E328FCF4(&qword_1EE2893E0, &qword_1ECF3A590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A40);
  }

  return result;
}

void sub_1E3E6F85C()
{
  sub_1E38468A4();
  if (v0 <= 0x3F)
  {
    sub_1E3DDADC8(319, &qword_1EE28A128, &unk_1ECF326C0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ShowcaseValue();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NavigationBarObservableModel(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ViewMetricsRecorder();
          if (v4 <= 0x3F)
          {
            sub_1E3E6FBDC(319, &qword_1EE23B5F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1E381EC50();
              if (v6 <= 0x3F)
              {
                sub_1E3E6FA04();
                if (v7 <= 0x3F)
                {
                  sub_1E38D5D68();
                  if (v8 <= 0x3F)
                  {
                    sub_1E3DDADC8(319, &qword_1EE23ACC8, &unk_1ECF2C3F0);
                    if (v9 <= 0x3F)
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
}

void sub_1E3E6FA04()
{
  if (!qword_1EE289E40)
  {
    type metadata accessor for StackTemplateCellCache();
    sub_1E3E70478(qword_1EE25EC38, type metadata accessor for StackTemplateCellCache);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E40);
    }
  }
}

unint64_t sub_1E3E6FA98()
{
  result = qword_1EE2898D0;
  if (!qword_1EE2898D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A588);
    type metadata accessor for TemplateViewModel();
    sub_1E3E6F760();
    sub_1E3E70478(&qword_1EE279850, type metadata accessor for TemplateViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE288808, &qword_1ECF3A5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898D0);
  }

  return result;
}

void sub_1E3E6FBDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1E3E6FC48()
{
  result = qword_1EE288E28;
  if (!qword_1EE288E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A5D0);
    sub_1E3E6FD28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E28);
  }

  return result;
}

unint64_t sub_1E3E6FD28()
{
  result = qword_1EE289910;
  if (!qword_1EE289910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A5D8);
    sub_1E328FCF4(&qword_1EE289F00, &qword_1ECF3A5D8);
    sub_1E3E6FE64();
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE288888, &qword_1ECF2D708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289910);
  }

  return result;
}

unint64_t sub_1E3E6FE64()
{
  result = qword_1EE296610[0];
  if (!qword_1EE296610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE296610);
  }

  return result;
}

uint64_t objectdestroy_2Tm_3()
{
  type metadata accessor for StackTemplateView();
  OUTLINED_FUNCTION_144();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  OUTLINED_FUNCTION_27_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v3 + v1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_124();
  if (v5)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3E70020(double a1, double a2)
{
  v5 = type metadata accessor for StackTemplateView();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  v8 = v2 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  v9 = (*(**(v8 + 40) + 464))(v6);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  result = sub_1E32AE9B0(v10);
  if (result)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v18 = OUTLINED_FUNCTION_21_17();
      v12 = MEMORY[0x1E6911E60](v18);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v12 = *(v10 + 32);
    }

    if (sub_1E385053C())
    {

      v13 = *(v8 + 56);
LABEL_10:
      v14 = (*(*v13 + 224))(result);
      v15 = sub_1E40AAD7C(a1, a2, v14);
      v16 = (*(*v13 + 200))(a1, a2);
      return (*(*v13 + 184))(v16, v15);
    }

    v13 = *(v8 + 56);
    if ((*(*v13 + 392))())
    {
      v17 = sub_1E385054C(*(v12 + 98));

      if (v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return result;
}