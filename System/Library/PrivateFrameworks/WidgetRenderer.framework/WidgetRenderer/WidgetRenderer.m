void static Bootstrap.startApplication(supportedServices:)(uint64_t a1)
{
  sub_1DAED172C();
  sub_1DAED171C();
  qword_1EE00AD18 = a1;

  if (qword_1EE00AC58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011B70);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED200C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    sub_1DAECE1DC();
    sub_1DAECE1AC();
    v7 = sub_1DAECDFEC();
    v9 = v8;

    v10 = sub_1DAD6482C(v7, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Preferences: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  v11 = sub_1DAED250C();
  v12 = MEMORY[0x1E127E170]();
  type metadata accessor for Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v14)
  {
    sub_1DAED1CEC();
    v14 = sub_1DAED1CBC();
  }

  type metadata accessor for AppDelegate();
  v15 = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(v15);
  if (!v16)
  {
    sub_1DAED1CEC();
    delegateClassNamea = sub_1DAED1CBC();

    v16 = delegateClassNamea;
  }

  delegateClassName = v16;
  UIApplicationMain(v11, v12, v14, v16);
}

uint64_t sub_1DAD63C34(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DAECEDDC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t type metadata accessor for AppDelegate()
{
  result = qword_1EE00B440;
  if (!qword_1EE00B440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD63D94()
{
  result = sub_1DAED18CC();
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

char *sub_1DAD63EA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08890, &qword_1DAEDD970);
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_lastDataProtectionValue;
  v10 = *MEMORY[0x1E69859A0];
  v11 = sub_1DAED18CC();
  (*(*(v11 - 8) + 104))(&v0[v9], v10, v11);
  *&v0[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_dataProtectionMonitorSubscription] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_memoryWarningSimulationSubscription] = 0;
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for AppDelegate();
  v26.receiver = v0;
  v26.super_class = v12;
  v13 = objc_msgSendSuper2(&v26, sel_init);
  sub_1DAECE1DC();
  v14 = v13;
  sub_1DAECE1AC();
  v15 = sub_1DAECE0FC();

  v25 = v15;
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v16 = sub_1DAED20EC();
  v24 = v16;
  v17 = sub_1DAED20AC();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
  sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240);
  sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
  sub_1DAECEFBC();
  sub_1DAD64398(v4, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1DAD64B94(&qword_1EE00AC30, &qword_1ECC08890, &qword_1DAEDD970);
  v18 = v23;
  v19 = sub_1DAECF00C();

  (*(v22 + 8))(v8, v18);
  v20 = *&v14[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_memoryWarningSimulationSubscription];
  *&v14[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_memoryWarningSimulationSubscription] = v19;

  return v14;
}

uint64_t sub_1DAD6429C()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DAD642F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DAD64398(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1DAD643F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08688, &unk_1DAED6CC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1DAD6446C(uint64_t result)
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

  result = sub_1DADC5A30(result, v12, 1, v3);
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

uint64_t sub_1DAD64558(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DAD643F8(v5, 0);
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

  result = sub_1DAED25BC();
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
        v10 = sub_1DAED1DEC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DAD643F8(v10, 0);
        result = sub_1DAED255C();
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

uint64_t sub_1DAD64688(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DAD64558(a1, a2);
  sub_1DAD6446C(&unk_1F56AF960);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

unint64_t sub_1DAD646D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DAD64688(a5, a6);
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
    result = sub_1DAED25BC();
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DAD6482C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DAD646D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DAD642F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_1DAD648F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DAD6495C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAD649C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAD64B94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DAD64BE0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1DAD64C18()
{
  type metadata accessor for ServiceFacade();
  memset(v1, 0, sizeof(v1));
  v2 = 0;
  swift_allocObject();
  result = sub_1DAD64C94(0, v1);
  qword_1EE011BD8 = result;
  return result;
}

void *sub_1DAD64C94(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECE23C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + 16) = 0u;
  v11 = v2 + 16;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  sub_1DAD650B0();
  *(v2 + 200) = a1;
  _s14WidgetRenderer12ViewDecodersC018registerArchivablecD0yyFZ_0();
  v12 = sub_1DAECE30C();
  *(v2 + 184) = sub_1DAECE2FC();
  if (a1)
  {
    v13 = sub_1DAECE39C();
    (*(v7 + 104))(v10, *MEMORY[0x1E6994098], v6);
    v14 = sub_1DAECE38C();
    v15 = MEMORY[0x1E6994170];
    v3[21] = v13;
    v3[22] = v15;
    v3[18] = v14;
  }

  else
  {
    sub_1DAECE3BC();
    sub_1DAECE3AC();
    sub_1DAD657D8(&v37, v2 + 144);
  }

  sub_1DAED114C();
  sub_1DAD648F8((v3 + 18), &v37);
  sub_1DAED113C();
  v16 = [objc_opt_self() mainScreen];
  [v16 bounds];
  v18 = v17;
  v20 = v19;

  v21 = v3[23];
  v38 = v12;
  v39 = MEMORY[0x1E6994130];
  *&v37 = v21;
  type metadata accessor for WidgetSceneForegroundContentLimiter();
  swift_allocObject();
  v22 = v21;
  v3[24] = sub_1DAD65D20(3, &v37, v18, v20);
  v23 = type metadata accessor for DataProtectionSuspensionMonitor();
  v24 = objc_allocWithZone(v23);

  v26 = sub_1DAD66228(v25);
  v3[16] = v23;
  v3[17] = sub_1DAD88900(qword_1EE00ADE8, type metadata accessor for DataProtectionSuspensionMonitor);
  v3[13] = v26;
  sub_1DAED140C();
  v3[12] = sub_1DAED13FC();
  v27 = qword_1EE00AD18;
  if (sub_1DAD6749C(0, qword_1EE00AD18))
  {
    sub_1DAD85DAC(a2, &v37);
    v28 = type metadata accessor for WidgetServices();
    v29 = swift_allocObject();

    sub_1DAD85E40(v30, &v37);
    v38 = v28;
    v39 = &off_1F56B0650;
    *&v37 = v29;
    swift_beginAccess();
    sub_1DAD94438(&v37, v11, &qword_1ECC08380, &unk_1DAED6590);
    swift_endAccess();
  }

  else
  {
  }

  v31 = sub_1DAD6749C(1, v27);

  if (v31)
  {
    v32 = type metadata accessor for ActivityServices();
    swift_allocObject();

    v34 = sub_1DADDE1D8(v33);

    v38 = v32;
    v39 = &off_1F56B0628;

    *&v37 = v34;
    sub_1DAD64398(a2, &qword_1ECC08138, &qword_1DAED6448);
    swift_beginAccess();
    sub_1DAD94438(&v37, v11 + 40, &unk_1ECC0A170, &qword_1DAED6440);
    swift_endAccess();
  }

  else
  {
    sub_1DAD64398(a2, &qword_1ECC08138, &qword_1DAED6448);
  }

  return v3;
}

void sub_1DAD650B0()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v0 = sub_1DAED20DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_1DAED208C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = *(*(sub_1DAED0A3C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v7 = sub_1DAECE0CC();

  if (v7)
  {
    v8 = sub_1DAD84C40();
    v33[1] = "tyArchiveServiceStore-";
    v33[2] = v8;
    sub_1DAED0A1C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DAD88900(&qword_1EE00AA50, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
    sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480);
    sub_1DAED23CC();
    (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v0);
    v9 = sub_1DAED210C();
    v10 = qword_1ECC08128;
    qword_1ECC08128 = v9;
    v11 = v9;

    out_token = -1;
    v12 = swift_allocObject();
    *(v12 + 16) = 60;
    v13 = (v12 + 16);
    v14 = swift_allocObject();
    v14[2] = 0xD000000000000025;
    v14[3] = 0x80000001DAEE0AE0;
    v14[4] = v12;
    aBlock[4] = sub_1DADDE6D8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DADDD0EC;
    aBlock[3] = &block_descriptor_54;
    v15 = _Block_copy(aBlock);

    LODWORD(v16) = notify_register_dispatch("com.apple.chrono.widgetrenderer.start", &out_token, v11, v15);
    _Block_release(v15);

    if (v16)
    {
      if (qword_1EE00AC58 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (qword_1EE00AC58 != -1)
      {
        swift_once();
      }

      v23 = sub_1DAECEDEC();
      __swift_project_value_buffer(v23, qword_1EE011B70);
      v16 = sub_1DAECEDCC();
      v24 = sub_1DAED203C();
      if (os_log_type_enabled(v16, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock[0] = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_1DAD6482C(0xD000000000000025, 0x80000001DAEE0AE0, aBlock);
        _os_log_impl(&dword_1DAD61000, v16, v24, "%{public}s: Waiting", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x1E127F100](v26, -1, -1);
        MEMORY[0x1E127F100](v25, -1, -1);
      }

      swift_beginAccess();
      if (*v13 < 1)
      {
LABEL_13:
        notify_cancel(out_token);
        v18 = sub_1DAECEDCC();
        v28 = sub_1DAED203C();
        if (os_log_type_enabled(v18, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v35 = v30;
          *v29 = 136446210;
          *(v29 + 4) = sub_1DAD6482C(0xD000000000000025, 0x80000001DAEE0AE0, &v35);
          _os_log_impl(&dword_1DAD61000, v18, v28, "%{public}s: Done waiting; startup continues", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x1E127F100](v30, -1, -1);
          v22 = v29;
          goto LABEL_15;
        }

LABEL_16:

        v31 = qword_1ECC08128;
        qword_1ECC08128 = 0;

        goto LABEL_17;
      }

      while (1)
      {
        sleep(1u);
        v27 = *v13 - 1;
        if (__OFSUB__(*v13, 1))
        {
          break;
        }

        *v13 = v27;
        if (v27 <= 0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_4:
    v17 = sub_1DAECEDEC();
    __swift_project_value_buffer(v17, qword_1EE011B70);
    v18 = sub_1DAECEDCC();
    v19 = sub_1DAED201C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_1DAD6482C(0xD000000000000025, 0x80000001DAEE0AE0, aBlock);
      *(v20 + 12) = 1026;
      *(v20 + 14) = v16;
      _os_log_impl(&dword_1DAD61000, v18, v19, "%{public}s: %{public}u", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E127F100](v21, -1, -1);
      v22 = v20;
LABEL_15:
      MEMORY[0x1E127F100](v22, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DAD65798()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DAD657D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1DAD65818(uint64_t a1, unint64_t *a2)
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

uint64_t _s14WidgetRenderer12ViewDecodersC018registerArchivablecD0yyFZ_0()
{
  if (qword_1EE00AC48 != -1)
  {
    swift_once();
  }

  v0 = sub_1DAECEDEC();
  __swift_project_value_buffer(v0, qword_1EE011B40);
  v1 = sub_1DAECEDCC();
  v2 = sub_1DAED203C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DAD61000, v1, v2, "Registering custom view decoders...", v3, 2u);
    MEMORY[0x1E127F100](v3, -1, -1);
  }

  sub_1DAED159C();
  sub_1DAD65CB4(&unk_1EE00AB10, MEMORY[0x1E6985738]);
  sub_1DAECFC8C();
  sub_1DAED168C();
  sub_1DAD65CB4(&qword_1EE00AB08, MEMORY[0x1E69857B8]);
  sub_1DAECFC8C();
  sub_1DAED1A6C();
  sub_1DAD65CB4(&qword_1EE00AAC0, MEMORY[0x1E6985AA0]);
  sub_1DAECFC8C();
  sub_1DAED1B3C();
  sub_1DAD65CB4(&qword_1EE00AAB0, MEMORY[0x1E6985AF8]);
  sub_1DAECFC8C();
  sub_1DAED147C();
  sub_1DAD65CB4(&qword_1EE00AB30, MEMORY[0x1E69856B0]);
  sub_1DAECF2BC();
  sub_1DAED16BC();
  sub_1DAD65CB4(&qword_1EE00AB00, MEMORY[0x1E69857D0]);
  sub_1DAECFC8C();
  sub_1DAED193C();
  sub_1DAD65CB4(&qword_1EE00AAC8, MEMORY[0x1E6985A50]);
  sub_1DAECF2BC();
  sub_1DAECE41C();
  sub_1DAECE6DC();
  sub_1DAED146C();
  sub_1DAED145C();
  sub_1DAECECDC();
  return sub_1DAECECCC();
}

uint64_t sub_1DAD65B78()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE011B40);
  __swift_project_value_buffer(v0, qword_1EE011B40);
  if (qword_1EE00A830 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE011B28;
  return sub_1DAECEDFC();
}

uint64_t sub_1DAD65C04()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011B28 = result;
  return result;
}

unint64_t sub_1DAD65C68()
{
  result = qword_1EE00A820;
  if (!qword_1EE00A820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE00A820);
  }

  return result;
}

uint64_t sub_1DAD65CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD65D20(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  *(v5 + 24) = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v10 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v11 = MEMORY[0x1E69E7CC8];
  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 48) = sub_1DAD65FA4(a1, a3, a4);
  if (qword_1ECC07A10 != -1)
  {
    swift_once();
  }

  v12 = 72;
  if (byte_1ECC08A90)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v5 + 56) = v12;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(v5 + 64);
  v15 = *(v5 + 72);
  *(v5 + 64) = sub_1DAE022E8;
  *(v5 + 72) = v13;

  sub_1DAD660D8(v14);

  sub_1DAD660E8(a2, v19);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v18[3] = type metadata accessor for WidgetSceneForegroundContentLimiter();
    v18[4] = sub_1DAD66158(&qword_1EE00B7E8, v16, type metadata accessor for WidgetSceneForegroundContentLimiter);
    v18[0] = v5;

    sub_1DAECE34C();
    sub_1DAD64398(a2, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_1DAD64398(a2, &qword_1ECC0A9E0, &qword_1DAED7570);
    sub_1DAD64398(v19, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  return v5;
}

uint64_t sub_1DAD65F6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_1DAD65FA4(uint64_t a1, double a2, double a3)
{
  v4 = a2 * a3;
  v5 = a1;
  if (qword_1EE00AC50 != -1)
  {
    swift_once();
  }

  v6 = v4 * v5;
  v7 = sub_1DAECEDEC();
  __swift_project_value_buffer(v7, qword_1EE011B58);
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED203C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349568;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2050;
    *(v10 + 14) = v6;
    *(v10 + 22) = 2050;
    *(v10 + 24) = v4;
    _os_log_impl(&dword_1DAD61000, v8, v9, "Max content area for effective unit count [%{public}ld]: %{public}f [for reference 1 unit area is: %{public}f]", v10, 0x20u);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  return v6;
}

uint64_t sub_1DAD660D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DAD660E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9E0, &qword_1DAED7570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD66158(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAD661A0()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08A98, &unk_1DAED7560);
  return sub_1DAED1D4C();
}

id sub_1DAD66228(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED18CC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  *&v1[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor____lazy_storage___maxUnlockedProtectionLevelPublisher] = 0;
  v7 = OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor__maxUnlockedProtectionLevelPublisher;
  (*(v8 + 104))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69859A0]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09BC8, &qword_1DAEDB940);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v1[v7] = sub_1DAECEEAC();
  v1[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock_isSuspended] = 0;
  v12 = OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09BD0, &qword_1DAEDB948);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v2[v12] = v13;
  *&v2[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_subscriptions] = MEMORY[0x1E69E7CD0];
  v14 = &v2[OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_innerProtectionMonitor];
  v15 = sub_1DAED114C();
  v16 = MEMORY[0x1E6993EA8];
  *(v14 + 3) = v15;
  *(v14 + 4) = v16;
  *v14 = a1;
  v17 = type metadata accessor for DataProtectionSuspensionMonitor();
  v24.receiver = v2;
  v24.super_class = v17;

  v18 = objc_msgSendSuper2(&v24, sel_init);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  [v21 addObserver:v20 selector:sel_applicationWillEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

  v22 = [v19 defaultCenter];
  [v22 addObserver:v20 selector:sel_applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  sub_1DAD66494();

  return v20;
}

uint64_t sub_1DAD66494()
{
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_innerProtectionMonitor, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DAED126C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08870, &qword_1DAED6488);
  sub_1DAD64B94(&qword_1EE00AC08, &unk_1ECC08870, &qword_1DAED6488);
  sub_1DAECF00C();

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();
}

uint64_t sub_1DAD665EC()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

void sub_1DAD6662C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DAD66680();
  }
}

uint64_t sub_1DAD66680()
{
  v1 = v0;
  v2 = sub_1DAED18CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_innerProtectionMonitor, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1DAED127C();
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  v30 = v12;
  sub_1DAD669E8(v12, v10);
  if (qword_1EE00AC70 != -1)
  {
    swift_once();
  }

  v13 = sub_1DAECEDEC();
  __swift_project_value_buffer(v13, qword_1EE011BA0);
  (*(v3 + 16))(v7, v10, v2);
  v14 = sub_1DAECEDCC();
  v15 = sub_1DAED203C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v16 = 136446210;
    sub_1DAD66C74(&unk_1EE00AAD0);
    v17 = sub_1DAED287C();
    v29 = v1;
    v18 = v2;
    v20 = v19;
    v21 = v7;
    v22 = *(v3 + 8);
    v22(v21, v18);
    v23 = sub_1DAD6482C(v17, v20, v31);
    v2 = v18;
    v1 = v29;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_1DAD61000, v14, v15, "Data protection level resolved to %{public}s", v16, 0xCu);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1E127F100](v24, -1, -1);
    MEMORY[0x1E127F100](v16, -1, -1);
  }

  else
  {

    v25 = v7;
    v22 = *(v3 + 8);
    v22(v25, v2);
  }

  v26 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor__maxUnlockedProtectionLevelPublisher);
  sub_1DAECEE8C();
  v22(v10, v2);
  return (v22)(v30, v2);
}

uint64_t sub_1DAD669E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAED18CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock);
  v18 = v2;
  v15 = sub_1DAD66CB8;
  v16 = &v17;

  os_unfair_lock_lock(v10 + 4);
  sub_1DAD66BE8(&v20);
  os_unfair_lock_unlock(v10 + 4);
  v11 = v20;

  v12 = *(v6 + 104);
  v12(v9, *MEMORY[0x1E69859A0], v5);
  sub_1DAD66C74(&qword_1EE00AAE0);
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  (*(v6 + 8))(v9, v5);
  if (v20 == v19 || !v11)
  {
    return (*(v6 + 16))(a2, a1, v5);
  }

  else
  {
    return v12(a2, *MEMORY[0x1E6985998], v5);
  }
}

void *sub_1DAD66BE8@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1DAD66C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD66C74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAED18CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1DAD66CF4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_1DAD66DBC(void *a1)
{
  BSDispatchQueueAssertMain();
  v2 = [a1 role];
  v3 = sub_1DAD66F04();

  v4 = [a1 role];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:v4];

  if (v3)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v5 setDelegateClass_];
  return v5;
}

uint64_t sub_1DAD66F04()
{
  v0 = sub_1DAED216C();
  v1 = sub_1DAED1CEC();
  v3 = v2;
  if (v1 == sub_1DAED1CEC() && v3 == v4)
  {

LABEL_5:
    v6 = type metadata accessor for ListItemSceneDelegate();
    goto LABEL_6;
  }

  v5 = sub_1DAED289C();

  if (v5)
  {
    goto LABEL_5;
  }

  v9 = sub_1DAED213C();
  v10 = sub_1DAED1CEC();
  v12 = v11;
  if (v10 == sub_1DAED1CEC() && v12 == v13)
  {

LABEL_13:
    v6 = type metadata accessor for ActivityBannerSceneDelegate();
    goto LABEL_6;
  }

  v14 = sub_1DAED289C();

  if (v14)
  {
    goto LABEL_13;
  }

  v15 = sub_1DAED214C();
  v16 = sub_1DAED1CEC();
  v18 = v17;
  if (v16 == sub_1DAED1CEC() && v18 == v19)
  {

LABEL_18:
    v6 = type metadata accessor for AmbientSceneDelegate();
    goto LABEL_6;
  }

  v20 = sub_1DAED289C();

  if (v20)
  {
    goto LABEL_18;
  }

  v21 = sub_1DAED217C();
  v22 = sub_1DAED1CEC();
  v24 = v23;
  if (v22 == sub_1DAED1CEC() && v24 == v25)
  {

LABEL_23:
    v6 = type metadata accessor for AmbientCompactSceneDelegate();
    goto LABEL_6;
  }

  v26 = sub_1DAED289C();

  if (v26)
  {
    goto LABEL_23;
  }

  v27 = sub_1DAED218C();
  v28 = sub_1DAED1CEC();
  v30 = v29;
  if (v28 == sub_1DAED1CEC() && v30 == v31)
  {

LABEL_28:
    v6 = type metadata accessor for JindoActivitySceneDelegate();
    goto LABEL_6;
  }

  v32 = sub_1DAED289C();

  if (v32)
  {
    goto LABEL_28;
  }

  v33 = sub_1DAED215C();
  v34 = sub_1DAED1CEC();
  v36 = v35;
  if (v34 == sub_1DAED1CEC() && v36 == v37)
  {
  }

  else
  {
    v38 = sub_1DAED289C();

    if ((v38 & 1) == 0)
    {
      v39 = *MEMORY[0x1E6994498];
      v40 = sub_1DAED1CEC();
      v42 = v41;
      if (v40 == sub_1DAED1CEC() && v42 == v43)
      {
      }

      else
      {
        v44 = sub_1DAED289C();

        if ((v44 & 1) == 0)
        {
          return 0;
        }
      }

      v7 = type metadata accessor for WidgetSceneDelegate();
      if (sub_1DAD6749C(0, qword_1EE00AD18))
      {
        return v7;
      }

      return 0;
    }
  }

  v6 = type metadata accessor for CarPlayActivitySceneDelegate();
LABEL_6:
  v7 = v6;
  if (!sub_1DAD6749C(1, qword_1EE00AD18))
  {
    return 0;
  }

  return v7;
}

id sub_1DAD67340()
{
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter] = 0;
  v1 = &v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration] = 0;
  v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector] = 0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneDiffActionKey;
  sub_1DAD674D4(0, &qword_1EE005468, 0x1E696AEC0);
  *&v0[v2] = sub_1DAED22AC();
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_confirmationActionSubscribers] = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_controlSubscription] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WidgetSceneDelegate();
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_1DAD6749C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_1DAD674D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1DAD675AC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v196 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v196 - v11;
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = a1;
    v16 = [v14 nullableWidget];
    if (v16)
    {
      v197 = v9;
      v198 = v8;

      v17 = qword_1EE005478;
      v18 = v15;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = qword_1EE005480;
      [v19 setObject:v2 forKey:v14];

      v20 = objc_allocWithZone(type metadata accessor for _UserInterfaceStyleSceneComponentProvider());
      v196 = v18;
      v21 = sub_1DAD696BC(v196);
      if (qword_1EE005F98 != -1)
      {
        swift_once();
      }

      [v14 _registerSceneComponent:v21 forKey:qword_1EE011820];
      v203 = v21;
      sub_1DAD690DC();
      v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
      v22 = swift_allocObject();
      v200 = xmmword_1DAED64D0;
      *(v22 + 16) = xmmword_1DAED64D0;
      *(v22 + 32) = v2;
      v23 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E8, qword_1DAED6798);
      v24 = sub_1DAED1E6C();

      if (qword_1EE008AE0 != -1)
      {
        swift_once();
      }

      [v14 _registerSceneActionsHandlerArray:v24 forKey:qword_1EE0119D0];

      v25 = [objc_allocWithZone(type metadata accessor for WidgetWindow()) initWithWindowScene_];
      v26 = *&v23[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window];
      *&v23[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window] = v25;
      v27 = v25;

      v28 = objc_opt_self();
      v29 = v27;
      v30 = [v28 systemBackgroundColor];
      [v29 setBackgroundColor_];

      v202 = v29;
      [v29 makeKeyAndVisible];
      if (qword_1EE00B438 != -1)
      {
        swift_once();
      }

      v199 = v23;
      v204 = v14;
      v31 = qword_1EE011BD8;
      swift_beginAccess();
      sub_1DAD6495C(v31 + 16, &aBlock, &qword_1ECC08380, &unk_1DAED6590);
      if (v208)
      {
        v32 = __swift_project_boxed_opaque_existential_1(&aBlock, v208);
        sub_1DAD648F8(*v32 + 64, v213);
        __swift_project_boxed_opaque_existential_1(v213, v213[3]);
        v212 = sub_1DAED11CC();
        sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
        v33 = sub_1DAED20EC();
        v211 = v33;
        v34 = sub_1DAED20AC();
        (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
        sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
        sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
        sub_1DAECEFBC();
        sub_1DAD64398(v7, &unk_1ECC07D20, &unk_1DAED57D0);

        __swift_destroy_boxed_opaque_existential_1Tm(v213);
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        v35 = swift_allocObject();
        v36 = v199;
        swift_unknownObjectWeakInit();
        v37 = swift_allocObject();
        v38 = v204;
        *(v37 + 16) = v35;
        *(v37 + 24) = v38;
        v39 = swift_allocObject();
        *(v39 + 16) = sub_1DADE6494;
        *(v39 + 24) = v37;
        sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0);
        v40 = v196;
        v41 = v198;
        v42 = sub_1DAECF00C();

        (*(v197 + 8))(v12, v41);
        v43 = *&v36[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription];
        *&v36[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription] = v42;

        v44 = *&v36[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter];
        *&v36[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter] = *(qword_1EE011BD8 + 192);

        v45 = [objc_allocWithZone(MEMORY[0x1E6994560]) init];
        v46 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector;
        v47 = *&v36[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector];
        *&v36[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector] = v45;
        v48 = v45;

        if (v48)
        {
          v49 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v50 = swift_allocObject();
          *(v50 + 16) = v49;
          *(v50 + 24) = v38;
          v209 = sub_1DADE649C;
          v210 = v50;
          aBlock = MEMORY[0x1E69E9820];
          v206 = 1107296256;
          v207 = sub_1DAD6EA40;
          v208 = &block_descriptor_185;
          v51 = _Block_copy(&aBlock);
          v52 = v40;

          [v48 observeCanAppearInSecureEnvironmentWithBlock_];
          _Block_release(v51);
        }

        v53 = *&v36[v46];
        if (v53)
        {
          v54 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v55 = swift_allocObject();
          *(v55 + 16) = v54;
          *(v55 + 24) = v38;
          v209 = sub_1DADE64E4;
          v210 = v55;
          aBlock = MEMORY[0x1E69E9820];
          v206 = 1107296256;
          v207 = sub_1DAD6EA40;
          v208 = &block_descriptor_192;
          v56 = _Block_copy(&aBlock);
          v57 = v40;
          v58 = v53;

          [v58 observeColorSchemeWithBlock_];
          _Block_release(v56);
        }

        v59 = [v38 _alwaysOnEnvironment];
        if (v59)
        {
          v60 = v59;
          [v59 setShouldDeferWakeAnimationStart_];
        }

        v61 = [v38 _backlightSceneEnvironment];
        v62 = v61;
        if (v61)
        {
          [v61 setSupportsAlwaysOn_];
          sub_1DAD674D4(0, &unk_1EE00AA00, 0x1E698E528);
          if ([v62 isKindOfClass_])
          {
            objc_opt_self();
            v63 = swift_dynamicCastObjCClass();
            if (v63)
            {
              [v63 setOptsOutOfProcessAssertions_];
            }
          }
        }

        v198 = v62;
        v64 = *&v36[v46];
        if (v64)
        {
          v65 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v66 = swift_allocObject();
          v67 = v204;
          *(v66 + 16) = v65;
          *(v66 + 24) = v67;
          v209 = sub_1DADE64EC;
          v210 = v66;
          aBlock = MEMORY[0x1E69E9820];
          v206 = 1107296256;
          v207 = sub_1DAD6EA40;
          v208 = &block_descriptor_199;
          v68 = _Block_copy(&aBlock);
          v69 = v40;
          v70 = v64;

          [v70 observeSupportsLowLuminanceWithBlock_];
          _Block_release(v68);

          v71 = *&v36[v46];
          if (v71)
          {
            v72 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v73 = swift_allocObject();
            v74 = v204;
            *(v73 + 16) = v72;
            *(v73 + 24) = v74;
            v209 = sub_1DADE6534;
            v210 = v73;
            aBlock = MEMORY[0x1E69E9820];
            v206 = 1107296256;
            v207 = sub_1DAD6EA40;
            v208 = &block_descriptor_206;
            v75 = _Block_copy(&aBlock);
            v76 = v69;
            v77 = v71;

            [v77 observeTintingParametersWithBlock_];
            _Block_release(v75);

            v78 = *&v36[v46];
            if (v78)
            {
              v79 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v80 = swift_allocObject();
              v81 = v204;
              *(v80 + 16) = v79;
              *(v80 + 24) = v81;
              v209 = sub_1DADE653C;
              v210 = v80;
              aBlock = MEMORY[0x1E69E9820];
              v206 = 1107296256;
              v207 = sub_1DAD6EA40;
              v208 = &block_descriptor_213;
              v82 = _Block_copy(&aBlock);
              v83 = v76;
              v84 = v78;

              [v84 observeShowsWidgetLabelWithBlock_];
              _Block_release(v82);

              v85 = *&v36[v46];
              if (v85)
              {
                v86 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v87 = swift_allocObject();
                v88 = v204;
                *(v87 + 16) = v86;
                *(v87 + 24) = v88;
                v209 = sub_1DAD6EE0C;
                v210 = v87;
                aBlock = MEMORY[0x1E69E9820];
                v206 = 1107296256;
                v207 = sub_1DAD6EA40;
                v208 = &block_descriptor_220;
                v89 = _Block_copy(&aBlock);
                v90 = v83;
                v91 = v85;

                [v91 observeVisibilityWithBlock_];
                _Block_release(v89);

                v92 = *&v36[v46];
                if (v92)
                {
                  v93 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v94 = swift_allocObject();
                  v95 = v204;
                  *(v94 + 16) = v93;
                  *(v94 + 24) = v95;
                  v209 = sub_1DADE6584;
                  v210 = v94;
                  aBlock = MEMORY[0x1E69E9820];
                  v206 = 1107296256;
                  v207 = sub_1DAD6EA40;
                  v208 = &block_descriptor_227;
                  v96 = _Block_copy(&aBlock);
                  v97 = v90;
                  v98 = v92;

                  [v98 observeWidgetPriorityWithBlock_];
                  _Block_release(v96);

                  v99 = *&v36[v46];
                  if (v99)
                  {
                    v100 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v101 = swift_allocObject();
                    v102 = v204;
                    *(v101 + 16) = v100;
                    *(v101 + 24) = v102;
                    v209 = sub_1DADE658C;
                    v210 = v101;
                    aBlock = MEMORY[0x1E69E9820];
                    v206 = 1107296256;
                    v207 = sub_1DAD6EA40;
                    v208 = &block_descriptor_234;
                    v103 = _Block_copy(&aBlock);
                    v104 = v97;
                    v105 = v99;

                    [v105 observeInteractionDisabledWithBlock_];
                    _Block_release(v103);

                    v106 = *&v36[v46];
                    if (v106)
                    {
                      v107 = swift_allocObject();
                      swift_unknownObjectWeakInit();
                      v108 = swift_allocObject();
                      v109 = v204;
                      *(v108 + 16) = v107;
                      *(v108 + 24) = v109;
                      v209 = sub_1DADE6594;
                      v210 = v108;
                      aBlock = MEMORY[0x1E69E9820];
                      v206 = 1107296256;
                      v207 = sub_1DAD6EA40;
                      v208 = &block_descriptor_241;
                      v110 = _Block_copy(&aBlock);
                      v111 = v104;
                      v112 = v106;

                      [v112 observeRenderSchemeWithBlock_];
                      _Block_release(v110);

                      v113 = *&v36[v46];
                      if (v113)
                      {
                        v114 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v115 = swift_allocObject();
                        v116 = v204;
                        *(v115 + 16) = v114;
                        *(v115 + 24) = v116;
                        v209 = sub_1DADE659C;
                        v210 = v115;
                        aBlock = MEMORY[0x1E69E9820];
                        v206 = 1107296256;
                        v207 = sub_1DAD6EA40;
                        v208 = &block_descriptor_248;
                        v117 = _Block_copy(&aBlock);
                        v118 = v111;
                        v119 = v113;

                        [v119 observeSupportedColorSchemesWithBlock_];
                        _Block_release(v117);

                        v120 = *&v36[v46];
                        if (v120)
                        {
                          v121 = swift_allocObject();
                          swift_unknownObjectWeakInit();
                          v122 = swift_allocObject();
                          v123 = v204;
                          *(v122 + 16) = v121;
                          *(v122 + 24) = v123;
                          v209 = sub_1DADE65A4;
                          v210 = v122;
                          aBlock = MEMORY[0x1E69E9820];
                          v206 = 1107296256;
                          v207 = sub_1DAD6EA40;
                          v208 = &block_descriptor_255;
                          v124 = _Block_copy(&aBlock);
                          v125 = v118;
                          v126 = v120;

                          [v126 observeSupportedRenderSchemesWithBlock_];
                          _Block_release(v124);

                          v127 = *&v36[v46];
                          if (v127)
                          {
                            v128 = swift_allocObject();
                            swift_unknownObjectWeakInit();
                            v129 = swift_allocObject();
                            v130 = v204;
                            *(v129 + 16) = v128;
                            *(v129 + 24) = v130;
                            v209 = sub_1DADE65AC;
                            v210 = v129;
                            aBlock = MEMORY[0x1E69E9820];
                            v206 = 1107296256;
                            v207 = sub_1DAD6EA40;
                            v208 = &block_descriptor_262;
                            v131 = _Block_copy(&aBlock);
                            v132 = v125;
                            v133 = v127;

                            [v133 observeClipBehaviorWithBlock_];
                            _Block_release(v131);

                            v134 = *&v36[v46];
                            if (v134)
                            {
                              v135 = swift_allocObject();
                              swift_unknownObjectWeakInit();
                              v136 = swift_allocObject();
                              v136[2] = v135;
                              v136[3] = v132;
                              v136[4] = v204;
                              v209 = sub_1DADE65B4;
                              v210 = v136;
                              aBlock = MEMORY[0x1E69E9820];
                              v206 = 1107296256;
                              v207 = sub_1DAE093BC;
                              v208 = &block_descriptor_269;
                              v137 = _Block_copy(&aBlock);
                              v138 = v132;
                              v139 = v134;

                              [v139 observeDisplayConfigurationWithBlock_];
                              _Block_release(v137);

                              v140 = *&v36[v46];
                              if (v140)
                              {
                                v141 = swift_allocObject();
                                swift_unknownObjectWeakInit();
                                v142 = swift_allocObject();
                                v143 = v204;
                                *(v142 + 16) = v141;
                                *(v142 + 24) = v143;
                                v209 = sub_1DADE65C0;
                                v210 = v142;
                                aBlock = MEMORY[0x1E69E9820];
                                v206 = 1107296256;
                                v207 = sub_1DAD6EA40;
                                v208 = &block_descriptor_276;
                                v144 = _Block_copy(&aBlock);
                                v145 = v138;
                                v146 = v140;

                                [v146 observeProximityWithBlock_];
                                _Block_release(v144);

                                v147 = *&v36[v46];
                                if (v147)
                                {
                                  v148 = swift_allocObject();
                                  swift_unknownObjectWeakInit();
                                  v149 = swift_allocObject();
                                  v150 = v204;
                                  *(v149 + 16) = v148;
                                  *(v149 + 24) = v150;
                                  v209 = sub_1DADE65C8;
                                  v210 = v149;
                                  aBlock = MEMORY[0x1E69E9820];
                                  v206 = 1107296256;
                                  v207 = sub_1DAD6EA40;
                                  v208 = &block_descriptor_283;
                                  v151 = _Block_copy(&aBlock);
                                  v152 = v145;
                                  v153 = v147;

                                  [v153 observeSupportedProximitiesWithBlock_];
                                  _Block_release(v151);

                                  v154 = *&v36[v46];
                                  if (v154)
                                  {
                                    v155 = swift_allocObject();
                                    swift_unknownObjectWeakInit();
                                    v156 = swift_allocObject();
                                    v157 = v204;
                                    *(v156 + 16) = v155;
                                    *(v156 + 24) = v157;
                                    v209 = sub_1DADE65D0;
                                    v210 = v156;
                                    aBlock = MEMORY[0x1E69E9820];
                                    v206 = 1107296256;
                                    v207 = sub_1DAD6EA40;
                                    v208 = &block_descriptor_290;
                                    v158 = _Block_copy(&aBlock);
                                    v159 = v152;
                                    v160 = v154;

                                    [v160 observeSeparateLayersWithBlock_];
                                    _Block_release(v158);

                                    v161 = *&v36[v46];
                                    if (v161)
                                    {
                                      v162 = swift_allocObject();
                                      swift_unknownObjectWeakInit();
                                      v163 = swift_allocObject();
                                      v164 = v204;
                                      *(v163 + 16) = v162;
                                      *(v163 + 24) = v164;
                                      v209 = sub_1DADE6618;
                                      v210 = v163;
                                      aBlock = MEMORY[0x1E69E9820];
                                      v206 = 1107296256;
                                      v207 = sub_1DAD6EA40;
                                      v208 = &block_descriptor_297;
                                      v165 = _Block_copy(&aBlock);
                                      v166 = v159;
                                      v167 = v161;

                                      [v167 observeIdealizedDateComponentsWithBlock_];
                                      _Block_release(v165);
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

        v168 = swift_allocObject();
        *(v168 + 16) = v200;
        *(v168 + 32) = v36;
        v169 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE0, &unk_1DAED67B0);
        v170 = sub_1DAED1E6C();

        [v40 _registerSettingsDiffActionArray_forKey_];

        if (qword_1EE005E48 != -1)
        {
          swift_once();
        }

        v171 = sub_1DAECEDEC();
        __swift_project_value_buffer(v171, qword_1EE011748);
        v172 = v40;
        v173 = v169;
        v174 = sub_1DAECEDCC();
        v175 = sub_1DAED203C();

        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          aBlock = v177;
          *v176 = 136446210;
          v178 = *&v173[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
          if (v178)
          {
            v179 = (v178 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
            v181 = *v179;
            v180 = v179[1];
          }

          else
          {
            v181 = sub_1DAD8CE78(v204);
            v180 = v194;
          }

          v195 = sub_1DAD6482C(v181, v180, &aBlock);

          *(v176 + 4) = v195;
          _os_log_impl(&dword_1DAD61000, v174, v175, "[%{public}s] Connect", v176, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v177);
          MEMORY[0x1E127F100](v177, -1, -1);
          MEMORY[0x1E127F100](v176, -1, -1);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v182 = sub_1DAECEDEC();
      __swift_project_value_buffer(v182, qword_1EE011748);
      v183 = v15;
      v204 = sub_1DAECEDCC();
      v184 = sub_1DAED202C();

      if (os_log_type_enabled(v204, v184))
      {
        v185 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        aBlock = v186;
        *v185 = 136446210;
        v187 = [v14 _FBSScene];
        v188 = [v187 identifier];

        v189 = sub_1DAED1CEC();
        v191 = v190;

        v192 = sub_1DAD6482C(v189, v191, &aBlock);

        *(v185 + 4) = v192;
        _os_log_impl(&dword_1DAD61000, v204, v184, "[%{public}s]: Nil widget received from client - widget scene will be inert.", v185, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v186);
        MEMORY[0x1E127F100](v186, -1, -1);
        MEMORY[0x1E127F100](v185, -1, -1);
      }

      else
      {

        v193 = v204;
      }
    }
  }
}

uint64_t sub_1DAD69004()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t type metadata accessor for _UserInterfaceStyleSceneComponentProvider()
{
  result = qword_1EE005F70;
  if (!qword_1EE005F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1DAD690DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC089C8, &qword_1DAED7468);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v41[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v41[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41[-v11];
  v13 = sub_1DAECF0AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v47 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v43 = &v41[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41[-v20];
  result = *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer);
  if (result)
  {
    [result userInterfaceStyle];
    sub_1DAECF09C();
    v23 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__colorScheme;
    swift_beginAccess();
    v24 = *(v14 + 16);
    v49 = v21;
    v46 = v24;
    v24(v12, v21, v13);
    v44 = *(v14 + 56);
    v44(v12, 0, 1, v13);
    v25 = *(v1 + 48);
    v45 = v23;
    sub_1DAD69C4C(v0 + v23, v4);
    sub_1DAD69C4C(v12, &v4[v25]);
    v26 = *(v14 + 48);
    if (v26(v4, 1, v13) == 1)
    {
      sub_1DAD64398(v12, &qword_1ECC08370, &unk_1DAED6580);
      v27 = v26(&v4[v25], 1, v13);
      v28 = v49;
      if (v27 == 1)
      {
        sub_1DAD64398(v4, &qword_1ECC08370, &unk_1DAED6580);
        return (*(v14 + 8))(v28, v13);
      }
    }

    else
    {
      sub_1DAD69C4C(v4, v50);
      if (v26(&v4[v25], 1, v13) != 1)
      {
        v35 = &v4[v25];
        v36 = v43;
        (*(v14 + 32))(v43, v35, v13);
        sub_1DAE00A48();
        v42 = sub_1DAED1CAC();
        v37 = *(v14 + 8);
        v37(v36, v13);
        sub_1DAD64398(v12, &qword_1ECC08370, &unk_1DAED6580);
        v37(v50, v13);
        sub_1DAD64398(v4, &qword_1ECC08370, &unk_1DAED6580);
        v28 = v49;
        if (v42)
        {
          return (*(v14 + 8))(v28, v13);
        }

LABEL_8:
        v29 = v48;
        v30 = v46;
        v46(v48, v28, v13);
        v31 = 1;
        v44(v29, 0, 1, v13);
        v32 = v45;
        swift_beginAccess();
        sub_1DAD69CBC(v29, v0 + v32);
        swift_endAccess();
        v33 = v47;
        v30(v47, v28, v13);
        v34 = (*(v14 + 88))(v33, v13);
        if (v34 != *MEMORY[0x1E697DBB8])
        {
          if (v34 == *MEMORY[0x1E697DBA8])
          {
            v31 = 2;
          }

          else
          {
            (*(v14 + 8))(v33, v13);
            v31 = 1;
          }
        }

        v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v39 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides);
        *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides) = v38;

        if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene))
        {
          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          if (v40)
          {
            [v40 _componentDidUpdateTraitOverrides_];
          }
        }

        return (*(v14 + 8))(v28, v13);
      }

      sub_1DAD64398(v12, &qword_1ECC08370, &unk_1DAED6580);
      (*(v14 + 8))(v50, v13);
      v28 = v49;
    }

    sub_1DAD64398(v4, &qword_1ECC089C8, &qword_1DAED7468);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

char *sub_1DAD696BC(void *a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer] = 0;
  v4 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__traitOverrides] = 0;
  v5 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__colorScheme;
  v6 = sub_1DAECF0AC();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__environmentSubscriber] = 0;
  *&v1[v4] = a1;
  *&v1[v3] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for _UserInterfaceStyleSceneComponentProvider();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v18, sel_init);
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v9 = v8;
  v10 = sub_1DAED20EC();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(MEMORY[0x1E69DEBD8]);
  v17[4] = sub_1DAE00B20;
  v17[5] = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DAD69AE8;
  v17[3] = &block_descriptor_5;
  v13 = _Block_copy(v17);

  v14 = [v12 initWithChangesDeliveredOnQueue:v10 toBlock:v13];
  _Block_release(v13);

  v15 = *&v9[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer];
  *&v9[OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__observer] = v14;

  return v9;
}

uint64_t sub_1DAD698D0()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

id sub_1DAD69960()
{
  result = [objc_opt_self() weakToStrongObjectsMapTable];
  qword_1EE005480 = result;
  return result;
}

void sub_1DAD6999C()
{
  sub_1DAD69A3C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DAD69A3C()
{
  if (!qword_1EE00ABA0)
  {
    sub_1DAECF0AC();
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00ABA0);
    }
  }
}

uint64_t sub_1DAD69A94()
{
  sub_1DAD674D4(0, &qword_1EE005468, 0x1E696AEC0);
  result = sub_1DAED22AC();
  qword_1EE011820 = result;
  return result;
}

void sub_1DAD69AE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1DAD69B5C(uint64_t a1, const char *a2)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE0117F0);
  oslog = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }
}

uint64_t sub_1DAD69C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD69CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD69D98()
{
  sub_1DAD674D4(0, &qword_1EE005468, 0x1E696AEC0);
  result = sub_1DAED22AC();
  qword_1EE0119D0 = result;
  return result;
}

void sub_1DAD69DF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue);
  BSDispatchQueueAssert();
  sub_1DAD92868();
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection);
  if (v2)
  {
    v3 = v2;
    if ([v3 remoteTarget])
    {
      sub_1DAED238C();
      swift_unknownObjectRelease();

      sub_1DAD64398(v8, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      sub_1DAD64398(v8, &qword_1ECC0A3A0, &qword_1DAEDFE30);
      if (qword_1EE005E90 != -1)
      {
        swift_once();
      }

      v4 = sub_1DAECEDEC();
      __swift_project_value_buffer(v4, qword_1EE0117F0);
      v5 = sub_1DAECEDCC();
      v6 = sub_1DAED203C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1DAD61000, v5, v6, "Activating connection", v7, 2u);
        MEMORY[0x1E127F100](v7, -1, -1);
      }

      [v3 activate];
    }
  }
}

id sub_1DAD6A06C()
{
  v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_validationState] = 0;
  v1 = &v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_animationsPaused] = 0;
  v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_isSnapshotting] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView] = [objc_allocWithZone(type metadata accessor for DebugView()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DebugOverlayViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1DAD6A148()
{
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView] = 0;
  v1 = &v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] = 0;
  v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] = 0;
  v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplay] = 0;
  v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationState] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DebugView();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1DAD6A390(void *a1)
{
  v3 = [a1 _appearState];
  [v1 addChildViewController_];
  if (!v3)
  {
    [a1 beginAppearanceTransition:1 animated:0];
  }

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  [v5 addSubview_];

  if (!v3)
  {
    [a1 endAppearanceTransition];
  }

  return [a1 didMoveToParentViewController_];
}

unint64_t sub_1DAD6A49C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1DAD674D4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1DAED228C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_1DAD6A568(void *a1, void *a2, void *a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__invalidated] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener] = 0;
  a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__needsVCRebuild] = 0;
  a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_hasBeenActive] = 0;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController] = 0;
  v8 = &a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate];
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction] = 0;
  v9 = sub_1DAD8CE78(a1);
  v11 = v10;
  v12 = &a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
  *v12 = v9;
  v12[1] = v10;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene] = a1;
  *(v8 + 1) = &off_1F56B0808;
  v50 = a2;
  swift_unknownObjectWeakAssign();
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_window] = a3;

  v13 = a1;
  v14 = a3;
  v51 = v13;
  v15 = [v13 widget];
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v16 = sub_1DAECEDEC();
  __swift_project_value_buffer(v16, qword_1EE011748);

  v17 = v15;
  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED203C();

  v48 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v52 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1DAD6482C(v9, v11, &v52);
    *(v20 + 12) = 2082;
    v22 = [v17 _loggingIdentifierWithoutMetrics];
    v23 = sub_1DAED1CEC();
    v25 = v24;

    v26 = sub_1DAD6482C(v23, v25, &v52);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] Scene created with widget: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v21, -1, -1);
    MEMORY[0x1E127F100](v20, -1, -1);
  }

  v27 = [objc_allocWithZone(type metadata accessor for ZStackContainerViewController()) init];
  v28 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_rootViewController;
  *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_rootViewController] = v27;
  [v14 setRootViewController_];
  v29 = [v14 rootViewController];
  if (!v29)
  {
LABEL_8:
    v32 = [objc_allocWithZone(type metadata accessor for DebugOverlayViewController()) init];
    v33 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController;
    *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController] = v32;
    v34 = [v32 view];
    if (v34)
    {
      v35 = v34;

      [v14 bounds];
      [v35 setFrame_];

      v36 = *&a4[v33];
      v37 = [v51 areAnimationsPaused];
      v36[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_animationsPaused] = v37;
      v38 = *&v36[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView];
      v38[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] = v37;
      [v38 setNeedsLayout];

      v39 = *&a4[v33];
      v40 = *&a4[v28];
      v41 = v39;
      sub_1DAD6A390(v41);
      v42 = [v40 view];
      if (v42)
      {
        v43 = v42;
        v44 = [v41 view];
        if (v44)
        {
          v45 = v44;
          [v43 bringSubviewToFront_];

          v46 = [objc_allocWithZone(MEMORY[0x1E6994560]) init];
          *&a4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector] = v46;
          v53.receiver = a4;
          v53.super_class = ObjectType;
          v47 = objc_msgSendSuper2(&v53, sel_init);
          sub_1DAD6AAC0(v51);

          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  v31 = [v29 view];

  if (v31)
  {
    [v14 bounds];
    [v31 setFrame_];

    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1DAD6AAC0(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  v65 = sub_1DAE0C764;
  v66 = v7;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAE093BC;
  v64 = &block_descriptor_6;
  v8 = _Block_copy(&v61);
  v9 = v2;
  v10 = a1;

  [v5 observeFrameWithBlock_];
  _Block_release(v8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = sub_1DAE0C73C;
  v12[5] = v4;
  v65 = sub_1DAE0C76C;
  v66 = v12;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_15;
  v13 = _Block_copy(&v61);
  v14 = v10;

  [v5 observeContentTypeWithBlock_];
  _Block_release(v13);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = sub_1DAE0C73C;
  v16[5] = v4;
  v65 = sub_1DAE0C778;
  v66 = v16;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_22_0;
  v17 = _Block_copy(&v61);
  v18 = v14;

  [v5 observeWidgetWithBlock_];
  _Block_release(v17);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v18;
  v20[4] = sub_1DAE0C73C;
  v20[5] = v4;
  v65 = sub_1DAE0C81C;
  v66 = v20;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_29;
  v21 = _Block_copy(&v61);
  v22 = v18;

  [v5 observeMetricsWithBlock_];
  _Block_release(v21);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = sub_1DAE0C878;
  v66 = v23;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_33;
  v24 = _Block_copy(&v61);

  [v5 observeWidgetConfigurationIdentifierBlock_];
  _Block_release(v24);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v22;
  v65 = sub_1DAE0C880;
  v66 = v26;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_40;
  v27 = _Block_copy(&v61);
  v28 = v22;

  [v5 observeVisibleEntryShouldSnapshotWithBlock_];
  _Block_release(v27);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  v65 = sub_1DAE0C888;
  v66 = v30;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_47;
  v31 = _Block_copy(&v61);
  v32 = v28;

  [v5 observeContentPausedWithBlock_];
  _Block_release(v31);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  v65 = sub_1DAE0C890;
  v66 = v34;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_54_0;
  v35 = _Block_copy(&v61);
  v36 = v32;

  [v5 observeInlineTextParametersWithBlock_];
  _Block_release(v35);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  v65 = sub_1DAD6F3FC;
  v66 = v38;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_61;
  v39 = _Block_copy(&v61);
  v40 = v36;

  [v5 observeAnimationsPausedWithBlock_];
  _Block_release(v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = sub_1DAE0C898;
  v66 = v41;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_65;
  v42 = _Block_copy(&v61);

  [v5 observeCanAppearInSecureEnvironmentWithBlock_];
  _Block_release(v42);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v40;
  v65 = sub_1DAE0C8A0;
  v66 = v44;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_72;
  v45 = _Block_copy(&v61);
  v46 = v40;

  [v5 observePrefersUnredactedContentInLowLuminanceEnvironmentWithBlock_];
  _Block_release(v45);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = v46;
  v65 = sub_1DAE0C8A8;
  v66 = v48;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_79;
  v49 = _Block_copy(&v61);
  v50 = v46;

  [v5 observeWantsBaseContentTouchEventsWithBlock_];
  _Block_release(v49);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v50;
  v65 = sub_1DAE0C8B0;
  v66 = v52;
  v61 = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1DAD6EA40;
  v64 = &block_descriptor_86;
  v53 = _Block_copy(&v61);
  v54 = v50;

  [v5 observeRenderingScaleWithBlock_];
  _Block_release(v53);
  [v54 renderingScale];
  if (v55 > 0.0)
  {
    v56 = *&v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v56)
    {
      v57 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      [v54 renderingScale];
      v59 = v58;
      swift_getKeyPath();
      swift_getKeyPath();
      v61 = v59;
      LOBYTE(v62) = 0;
      sub_1DAECEF4C();
    }
  }
}

uint64_t sub_1DAD6B568()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD6B5EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v31 = a1;
  v12 = [a1 visibility];
  if (v12)
  {
    v13 = v12;
    [v13 isSettled];
    [v13 isFocal];
    [v13 visibleBounds];
    sub_1DAECE52C();

    v14 = sub_1DAECE55C();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v14 = sub_1DAECE55C();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  sub_1DAD6495C(v11, v9, &qword_1ECC07CD0, &qword_1DAED6560);
  sub_1DAECE55C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v9, 1, v14);
  sub_1DAD64398(v9, &qword_1ECC07CD0, &qword_1DAED6560);
  v18 = v17 == 1;
  v19 = v1;
  if (!v18 && !*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene))
  {
    sub_1DAD64398(v11, &qword_1ECC07CD0, &qword_1DAED6560);
    (*(v15 + 56))(v11, 1, 1, v14);
  }

  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController))
  {
    v20 = v30;
    sub_1DAD6495C(v11, v30, &qword_1ECC07CD0, &qword_1DAED6560);
    swift_unknownObjectRetain();
    sub_1DAD6D8C0(v20);
    swift_unknownObjectRelease();
    sub_1DAD64398(v20, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  if (![v31 widgetPriority])
  {
    v22 = v16(v11, 1, v14) ? 0 : sub_1DAECE51C();
    v23 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
    v24 = *(v19 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (!v25)
      {
        goto LABEL_18;
      }

      v26 = *(v25 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1DAECEF3C();

      if ((v22 & 1) != v33)
      {
        v24 = *(v19 + v23);
        if (v24)
        {
LABEL_18:
          v27 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
          if (v27)
          {
            v28 = *(v27 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
            swift_getKeyPath();
            swift_getKeyPath();
            v32 = v22 & 1;

            sub_1DAECEF4C();
          }
        }
      }
    }
  }

  return sub_1DAD64398(v11, &qword_1ECC07CD0, &qword_1DAED6560);
}

uint64_t sub_1DAD6BA44(char a1, void *a2)
{
  v5 = sub_1DAED09DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DAED0A3C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v2;
  aBlock[4] = sub_1DAD6F914;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_163;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  v17 = v2;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_1DAD6BD28()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD6BD68(uint64_t a1)
{
  v30 = a1;
  v2 = sub_1DAECE55C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07CD8, &unk_1DAED5790);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility;
  swift_beginAccess();
  v18 = *(v13 + 56);
  sub_1DAD6495C(v1 + v17, v16, &qword_1ECC07CD0, &qword_1DAED6560);
  sub_1DAD6495C(v30, &v16[v18], &qword_1ECC07CD0, &qword_1DAED6560);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_1DAD64398(v16, &qword_1ECC07CD0, &qword_1DAED6560);
    }
  }

  else
  {
    sub_1DAD6495C(v16, v11, &qword_1ECC07CD0, &qword_1DAED6560);
    if (v19(&v16[v18], 1, v2) != 1)
    {
      v24 = v28;
      (*(v3 + 32))(v28, &v16[v18], v2);
      sub_1DAE3B004(qword_1EE005EC0, MEMORY[0x1E6994460]);
      LODWORD(v30) = sub_1DAED1CAC();
      v25 = *(v3 + 8);
      v25(v24, v2);
      v25(v11, v2);
      result = sub_1DAD64398(v16, &qword_1ECC07CD0, &qword_1DAED6560);
      if (v30)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v3 + 8))(v11, v2);
  }

  sub_1DAD64398(v16, &unk_1ECC07CD8, &unk_1DAED5790);
LABEL_7:
  v21 = v29;
  sub_1DAD6495C(v1 + v17, v29, &qword_1ECC07CD0, &qword_1DAED6560);
  v22 = v19(v21, 1, v2);
  sub_1DAD64398(v21, &qword_1ECC07CD0, &qword_1DAED6560);
  if (v22 == 1)
  {
    v23 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession);
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
    return sub_1DAD6C79C(v23);
  }

  swift_beginAccess();
  if (v19((v1 + v17), 1, v2))
  {
    return swift_endAccess();
  }

  v26 = sub_1DAECE53C();
  result = swift_endAccess();
  if (v26)
  {
    v23 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession);
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) = 1;
    return sub_1DAD6C79C(v23);
  }

  return result;
}

void sub_1DAD6C1C4(uint64_t a1)
{
  v42 = a1;
  v2 = sub_1DAECE55C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07CD8, &unk_1DAED5790);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
  swift_beginAccess();
  v16 = *(v11 + 56);
  sub_1DAD6495C(v42, v14, &qword_1ECC07CD0, &qword_1DAED6560);
  v41 = v15;
  v42 = v1;
  sub_1DAD6495C(v1 + v15, &v14[v16], &qword_1ECC07CD0, &qword_1DAED6560);
  v17 = *(v3 + 48);
  if (v17(v14, 1, v2) == 1)
  {
    if (v17(&v14[v16], 1, v2) == 1)
    {
      sub_1DAD64398(v14, &qword_1ECC07CD0, &qword_1DAED6560);
      return;
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v14, v9, &qword_1ECC07CD0, &qword_1DAED6560);
  if (v17(&v14[v16], 1, v2) == 1)
  {
    (*(v3 + 8))(v9, v2);
LABEL_6:
    sub_1DAD64398(v14, &unk_1ECC07CD8, &unk_1DAED5790);
    v18 = v42;
    goto LABEL_7;
  }

  v30 = v40;
  (*(v3 + 32))(v40, &v14[v16], v2);
  sub_1DAD7D898(qword_1EE005EC0, MEMORY[0x1E6994460]);
  v31 = sub_1DAED1CAC();
  v32 = *(v3 + 8);
  v32(v30, v2);
  v32(v9, v2);
  sub_1DAD64398(v14, &qword_1ECC07CD0, &qword_1DAED6560);
  v18 = v42;
  if (v31)
  {
    return;
  }

LABEL_7:
  v19 = v17;
  v20 = v2;
  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  v21 = sub_1DAECEDEC();
  __swift_project_value_buffer(v21, qword_1EE0117D8);

  v22 = sub_1DAECEDCC();
  v23 = sub_1DAED203C();
  if (!os_log_type_enabled(v22, v23))
  {

    v29 = v41;
    goto LABEL_19;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v43 = v25;
  *v24 = 136446466;
  v26 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
  v27 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

  v28 = sub_1DAD6482C(v26, v27, &v43);

  *(v24 + 4) = v28;
  *(v24 + 12) = 1026;
  v29 = v41;
  swift_beginAccess();
  if (v19(v18 + v29, 1, v20))
  {
    swift_endAccess();
LABEL_17:
    v34 = 0;
    goto LABEL_18;
  }

  v33 = sub_1DAECE53C();
  swift_endAccess();
  if ((v33 & 1) == 0)
  {
    goto LABEL_17;
  }

  v34 = 1;
LABEL_18:
  *(v24 + 14) = v34;

  _os_log_impl(&dword_1DAD61000, v22, v23, "[%{public}s] Visibility did change: %{BOOL,public}d", v24, 0x12u);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  MEMORY[0x1E127F100](v25, -1, -1);
  MEMORY[0x1E127F100](v24, -1, -1);

LABEL_19:
  if (*(v18 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) == 1)
  {
    sub_1DAD648F8(v18 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v44);
    v35 = v45;
    v36 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    swift_beginAccess();
    if (v19(v18 + v29, 1, v20))
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_1DAECE53C();
    }

    swift_endAccess();
    v38 = *(v36 + 136);
    v39 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
    v38(v37 & 1, v39, v35, v36);

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }
}

uint64_t sub_1DAD6C79C(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v46 - v5;
  v7 = sub_1DAED12CC();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - v12;
  v50 = sub_1DAECDCEC();
  v49 = *(v50 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09958, &unk_1DAEDA888);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v46 - v19;
  v21 = sub_1DAED11EC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  result = MEMORY[0x1EEE9AC00](v21);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession);
  if (v27 != v2)
  {
    v48 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession;
    v28 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v28, v20, &qword_1ECC09958, &unk_1DAEDA888);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_1DAD64398(v20, &qword_1ECC09958, &unk_1DAEDA888);
      goto LABEL_15;
    }

    (*(v22 + 32))(v26, v20, v21);
    if (!v27)
    {
      sub_1DAD6EAB8();
      (*(v22 + 8))(v26, v21);
      goto LABEL_15;
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v47 = v1;
      sub_1DAD648F8(Strong + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v54);
      v31 = v55;
      v30 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v32 = (*(v30 + 16))(v31, v30);
      sub_1DAED0C5C();

      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      if (*(&v58 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
        sub_1DAED1A3C();
        __swift_destroy_boxed_opaque_existential_1Tm(&v57);
        v33 = v49;
        v34 = v50;
        v35 = (*(v49 + 48))(v13, 1, v50);
        v1 = v47;
        if (v35 != 1)
        {
          (*(v33 + 32))(v16, v13, v34);
LABEL_14:
          sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder, &v57);
          __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
          v36 = sub_1DAED122C();
          (*(v33 + 8))(v16, v50);
          (*(v22 + 8))(v26, v21);
          v37 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry);
          *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry) = v36;

          __swift_destroy_boxed_opaque_existential_1Tm(&v57);
LABEL_15:
          v38 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
          swift_beginAccess();
          sub_1DAD6495C(v1 + v38, v6, &qword_1ECC08850, &qword_1DAED7280);
          v40 = v52;
          v39 = v53;
          if ((*(v52 + 48))(v6, 1, v53) == 1)
          {
            return sub_1DAD64398(v6, &qword_1ECC08850, &qword_1DAED7280);
          }

          (*(v40 + 32))(v51, v6, v39);
          v41 = v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
          swift_beginAccess();
          if (*(v41 + 24))
          {
            sub_1DAD648F8(v41, &v57);
            if (*(&v58 + 1))
            {
LABEL_19:
              sub_1DAD648F8(&v57, v54);
              if (*(&v58 + 1))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(&v57);
              }

              __swift_project_boxed_opaque_existential_1(v54, v55);
              v42 = *(v1 + v48);
              v43 = v51;
              sub_1DAED115C();
              (*(v40 + 8))(v43, v39);
              v44 = v54;
              return __swift_destroy_boxed_opaque_existential_1Tm(v44);
            }
          }

          else
          {
            v45 = *(v41 + 16);
            v57 = *v41;
            v58 = v45;
            v59 = *(v41 + 32);
            if (*(&v45 + 1))
            {
              goto LABEL_19;
            }
          }

          result = (*(v40 + 8))(v51, v39);
          if (!*(&v58 + 1))
          {
            return result;
          }

          v44 = &v57;
          return __swift_destroy_boxed_opaque_existential_1Tm(v44);
        }

LABEL_12:
        sub_1DAECDC3C();
        if ((*(v33 + 48))(v13, 1, v34) != 1)
        {
          sub_1DAD64398(v13, &qword_1ECC07CE8, &qword_1DAED6F60);
        }

        goto LABEL_14;
      }

      sub_1DAD64398(&v57, &unk_1ECC08880, &unk_1DAED6F50);
      v1 = v47;
    }

    v33 = v49;
    v34 = v50;
    (*(v49 + 56))(v13, 1, 1, v50);
    goto LABEL_12;
  }

  return result;
}

void sub_1DAD6CF04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v65 - v4;
  v6 = sub_1DAECDCEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  BSDispatchQueueAssertMain();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated))
  {

    return;
  }

  v70 = Strong;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) == 1)
  {
    BSDispatchQueueAssertMain();
    v18 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer;
    [*(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) invalidate];
    v19 = *(v0 + v18);
    *(v0 + v18) = 0;

    sub_1DADC5180(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_1DAD64398(v5, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }

    (*(v7 + 32))(v16, v5, v6);
    sub_1DAECDCDC();
    sub_1DADB40C4(&qword_1EE00A6F0, MEMORY[0x1E6969530]);
    v28 = sub_1DAED1C9C();
    v69 = *(v7 + 8);
    (v69)(v14, v6);
    if (v28)
    {
      sub_1DAECDC8C();
      if (qword_1EE005E60 != -1)
      {
        v68 = v29;
        swift_once();
        v29 = v68;
      }

      v30 = v29 + 5.0;
      v31 = sub_1DAECEDEC();
      __swift_project_value_buffer(v31, qword_1EE011778);
      (*(v7 + 16))(v11, v16, v6);

      v32 = sub_1DAECEDCC();
      v33 = sub_1DAED203C();

      if (os_log_type_enabled(v32, v33))
      {
        v67 = v33;
        *&v68 = v7 + 8;
        v34 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v34 = 136446722;
        v35 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
        v36 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier + 8);

        v37 = sub_1DAD6482C(v35, v36, aBlock);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2050;
        *(v34 + 14) = v30;
        *(v34 + 22) = 2082;
        if (qword_1EE00A700 != -1)
        {
          swift_once();
        }

        v38 = qword_1EE00A708;
        v39 = sub_1DAECDC5C();
        v40 = [v38 stringFromDate_];

        v41 = sub_1DAED1CEC();
        v43 = v42;

        v44 = v69;
        (v69)(v11, v6);
        v45 = sub_1DAD6482C(v41, v43, aBlock);

        *(v34 + 24) = v45;
        _os_log_impl(&dword_1DAD61000, v32, v67, "[%{public}s] Scheduling staleness check in %{public}fs: roughly %{public}s", v34, 0x20u);
        v46 = v66;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v46, -1, -1);
        MEMORY[0x1E127F100](v34, -1, -1);
      }

      else
      {

        v44 = v69;
        (v69)(v11, v6);
      }

      v57 = objc_allocWithZone(MEMORY[0x1E698E660]);
      v58 = sub_1DAED1CBC();
      v59 = [v57 initWithIdentifier_];

      v60 = *(v1 + v18);
      *(v1 + v18) = v59;
      v61 = v59;

      if (v61)
      {
        sub_1DAD84C40();
        v62 = sub_1DAED20EC();
        v63 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_1DAE0CFC8;
        aBlock[5] = v63;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DAD69AE8;
        aBlock[3] = &block_descriptor_7;
        v64 = _Block_copy(aBlock);

        [v61 scheduleWithFireInterval:v62 leewayInterval:v64 queue:v30 handler:15.0];

        _Block_release(v64);

LABEL_32:
        (v44)(v16, v6);
        return;
      }
    }

    else
    {
      if (qword_1EE005E60 != -1)
      {
        swift_once();
      }

      v48 = sub_1DAECEDEC();
      __swift_project_value_buffer(v48, qword_1EE011778);

      v49 = sub_1DAECEDCC();
      v50 = sub_1DAED203C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock[0] = v52;
        *v51 = 136446210;
        v53 = v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier;
        v54 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
        v55 = *(v53 + 8);

        v56 = sub_1DAD6482C(v54, v55, aBlock);

        *(v51 + 4) = v56;
        _os_log_impl(&dword_1DAD61000, v49, v50, "[%{public}s] Widget is visible and effectively stale, reloading content.", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x1E127F100](v52, -1, -1);
        MEMORY[0x1E127F100](v51, -1, -1);
      }

      v44 = v69;
      sub_1DADC551C(0);
    }

    goto LABEL_32;
  }

  if (qword_1EE005E60 != -1)
  {
    swift_once();
  }

  v20 = sub_1DAECEDEC();
  __swift_project_value_buffer(v20, qword_1EE011778);

  v69 = sub_1DAECEDCC();
  v21 = sub_1DAED203C();

  if (os_log_type_enabled(v69, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v24 = v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier;
    v25 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
    v26 = *(v24 + 8);

    v27 = sub_1DAD6482C(v25, v26, aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1DAD61000, v69, v21, "[%{public}s] Ignoring staleness check - not visibly settled for current view session yet.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E127F100](v23, -1, -1);
    MEMORY[0x1E127F100](v22, -1, -1);
  }

  else
  {

    v47 = v69;
  }
}

uint64_t sub_1DAD6D888()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1DAD6D8C0(uint64_t a1)
{
  v88 = sub_1DAECE55C();
  v3 = *(v88 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v6 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v86 = &v75[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v75[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v83 = &v75[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v87 = &v75[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v82 = &v75[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v75[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v75[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07CD8, &unk_1DAED5790);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v75[-v28];
  BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated))
  {
    return;
  }

  v30 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__visibility;
  swift_beginAccess();
  v31 = *(v26 + 48);
  v80 = a1;
  sub_1DAD6E2C8(a1, v29);
  v79 = v1;
  v81 = v30;
  sub_1DAD6E2C8(v1 + v30, &v29[v31]);
  v32 = *(v3 + 48);
  if (v32(v29, 1, v88) == 1)
  {
    if (v32(&v29[v31], 1, v88) == 1)
    {
      sub_1DAD64398(v29, &qword_1ECC07CD0, &qword_1DAED6560);
      return;
    }
  }

  else
  {
    sub_1DAD6E2C8(v29, v25);
    v78 = v32;
    if (v32(&v29[v31], 1, v88) != 1)
    {
      v40 = &v29[v31];
      v41 = v88;
      (*(v3 + 32))(v6, v40, v88);
      sub_1DADB40C4(qword_1EE005EC0, MEMORY[0x1E6994460]);
      v76 = sub_1DAED1CAC();
      v77 = v3 + 48;
      v42 = *(v3 + 8);
      v42(v6, v41);
      v42(v25, v41);
      sub_1DAD64398(v29, &qword_1ECC07CD0, &qword_1DAED6560);
      v33 = v80;
      v32 = v78;
      v34 = v79;
      if (v76)
      {
        return;
      }

      goto LABEL_8;
    }

    (*(v3 + 8))(v25, v88);
    v32 = v78;
  }

  sub_1DAD64398(v29, &unk_1ECC07CD8, &unk_1DAED5790);
  v33 = v80;
  v34 = v79;
LABEL_8:
  v35 = v3;
  v36 = v81;
  swift_beginAccess();
  sub_1DAD6EA48(v33, v34 + v36);
  swift_endAccess();
  sub_1DAD6E2C8(v34 + v36, v23);
  LODWORD(v36) = v32(v23, 1, v88);
  sub_1DAD64398(v23, &qword_1ECC07CD0, &qword_1DAED6560);
  if (v36 == 1)
  {
    *(v34 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
    v37 = v87;
  }

  else
  {
    v38 = v82;
    sub_1DAD6E2C8(v34 + v81, v82);
    v39 = v32(v38, 1, v88);
    v37 = v87;
    if (v39)
    {
      sub_1DAD64398(v38, &qword_1ECC07CD0, &qword_1DAED6560);
    }

    else
    {
      v43 = sub_1DAECE53C();
      sub_1DAD64398(v38, &qword_1ECC07CD0, &qword_1DAED6560);
      if (v43)
      {
        *(v34 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) = 1;
      }
    }
  }

  if (qword_1EE005E60 != -1)
  {
    swift_once();
  }

  v44 = sub_1DAECEDEC();
  __swift_project_value_buffer(v44, qword_1EE011778);
  sub_1DAD6E2C8(v33, v37);

  v45 = sub_1DAECEDCC();
  v46 = sub_1DAED203C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v34;
    v48 = v32;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v89[0] = v50;
    *v49 = 136446466;
    v51 = v47 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier;
    v52 = *(v47 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
    v53 = *(v51 + 8);

    v54 = sub_1DAD6482C(v52, v53, v89);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2082;
    v55 = v37;
    v56 = v83;
    sub_1DAD6E2C8(v55, v83);
    v78 = v48;
    if (v48(v56, 1, v88) == 1)
    {
      sub_1DAD64398(v56, &qword_1ECC07CD0, &qword_1DAED6560);
      v57 = 0xEB00000000656C62;
      v58 = 0x6973697620746F6ELL;
    }

    else
    {
      v58 = sub_1DAECE50C();
      v57 = v59;
      (*(v35 + 8))(v56, v88);
    }

    sub_1DAD64398(v87, &qword_1ECC07CD0, &qword_1DAED6560);
    v60 = sub_1DAD6482C(v58, v57, v89);

    *(v49 + 14) = v60;
    _os_log_impl(&dword_1DAD61000, v45, v46, "[%{public}s] Effective widget visibility changed to: %{public}s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v50, -1, -1);
    MEMORY[0x1E127F100](v49, -1, -1);

    v33 = v80;
    v32 = v78;
    v34 = v79;
  }

  else
  {

    sub_1DAD64398(v37, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  Strong = swift_weakLoadStrong();
  v62 = v85;
  if (Strong)
  {
    v63 = Strong;
    sub_1DAD6E2C8(v33, v85);
    v64 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
    swift_beginAccess();
    v65 = v32;
    v66 = v86;
    sub_1DAD6E2C8(v63 + v64, v86);
    swift_beginAccess();
    sub_1DAD6EA48(v62, v63 + v64);
    swift_endAccess();
    sub_1DAD6C1C4(v66);

    v67 = v66;
    v32 = v65;
    sub_1DAD64398(v67, &qword_1ECC07CD0, &qword_1DAED6560);
    sub_1DAD64398(v62, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  v68 = *(v34 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator);
  if (v68)
  {
    sub_1DAD6E2C8(v33, v62);
    v69 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility;
    swift_beginAccess();
    v70 = v86;
    sub_1DAD6E2C8(v68 + v69, v86);
    swift_beginAccess();

    sub_1DAD6EA48(v62, v68 + v69);
    swift_endAccess();
    sub_1DAD6BD68(v70);

    sub_1DAD64398(v70, &qword_1ECC07CD0, &qword_1DAED6560);
    sub_1DAD64398(v62, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  if ((*(v34 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) & 1) != 0 || (v71 = v84, sub_1DAD6E2C8(v34 + v81, v84), v72 = v32(v71, 1, v88), sub_1DAD64398(v71, &qword_1ECC07CD0, &qword_1DAED6560), v72 == 1))
  {
    BSDispatchQueueAssertMain();
    v73 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer;
    [*(v34 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) invalidate];
    v74 = *(v34 + v73);
    *(v34 + v73) = 0;

    sub_1DAD6CF04();
  }
}

uint64_t sub_1DAD6E2C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAD6E338(void *a1, void *a2, void *a3, id a4)
{
  v9 = [a4 animationFence];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v10 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v4;
  v13 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v14 = *&v11[v13];
  type metadata accessor for SecureHostingController();
  sub_1DAD8E1BC(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
  v15 = v14;
  v16 = v11;
  if (sub_1DAECF9AC())
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {

      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    [v17 setNeedsSynchronousUpdate_];
    swift_unknownObjectRelease();
  }

LABEL_9:
  v4 = v12;
LABEL_10:
  v18 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector);
  if (v18)
  {
    v19 = a2 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    if (a3)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = a3;
      }
    }

    else
    {
      v20 = 0;
    }

    v59 = a3;
    if (!a1)
    {
      __break(1u);
      goto LABEL_45;
    }

    v22 = v18;
    v23 = a2;
    v24 = a1;
    v25 = [a1 settings];
    objc_opt_self();
    v26 = [objc_allocWithZone(MEMORY[0x1E6994558]) initWithPreviousSettings:v20 currentSettings:swift_dynamicCastObjCClassUnconditional() transitionContext:a4];

    v27 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
    if (v27 && (v28 = *(v27 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) != 0)
    {
      v29 = *(v28 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
      v30 = v22;
      v31 = v23;
      v23 = v26;

      sub_1DAD6EF34(v32, v30, v31, v23);

      v22 = v23;
    }

    else
    {
      v31 = v26;
      [v22 inspectDiff:v23 withContext:v31];
    }

    a1 = v24;
    a3 = v59;
  }

  v33 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  if (!v33)
  {
    return;
  }

  v34 = v33;
  if (a4)
  {
    v35 = [a4 actions];
    if (v35)
    {
      v36 = v35;
      sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
      sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
      v37 = sub_1DAED1F6C();

      v38 = sub_1DADAF3F0(v37);

      if (v38)
      {
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();

        if (v39)
        {
          if (qword_1EE005E48 != -1)
          {
            swift_once();
          }

          v40 = sub_1DAECEDEC();
          __swift_project_value_buffer(v40, qword_1EE011748);
          v41 = v34;
          v42 = sub_1DAECEDCC();
          v43 = sub_1DAED203C();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v61 = v58;
            *v44 = 136446210;
            v45 = &v41[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
            v60 = v41;
            v46 = a1;
            v47 = *v45;
            v48 = v45[1];

            v49 = sub_1DAD6482C(v47, v48, &v61);
            a1 = v46;
            v41 = v60;

            *(v44 + 4) = v49;
            _os_log_impl(&dword_1DAD61000, v42, v43, "[%{public}s] Received launch request", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v58);
            MEMORY[0x1E127F100](v58, -1, -1);
            MEMORY[0x1E127F100](v44, -1, -1);
          }

          v50 = *&v41[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
          if (v50)
          {
            v51 = *&v50[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
            v52 = v50;
            sub_1DAEA0A10();
          }
        }
      }
    }
  }

  if (a2)
  {
    if (a3)
    {
      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      if (v53)
      {
        v54 = a3;
      }
    }

    else
    {
      v53 = 0;
    }

    if (a1)
    {
      v55 = a2;
      v56 = [a1 settings];
      objc_opt_self();
      v57 = [objc_allocWithZone(MEMORY[0x1E6994558]) initWithPreviousSettings:v53 currentSettings:swift_dynamicCastObjCClassUnconditional() transitionContext:a4];

      [*&v34[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector] inspectDiff:v55 withContext:v57];
      goto LABEL_42;
    }

LABEL_45:
    __break(1u);
    return;
  }

LABEL_42:
}

uint64_t sub_1DAD6EA48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1DAD6EAB8()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry))
  {
    sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder, v3);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);

    sub_1DAED123C();

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    v2 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_1DAD6EB64(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v27);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2082;
      v20 = [v7 visibility];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 description];

        v23 = sub_1DAED1CEC();
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_1DAD6482C(v23, v25, &v27);

      *(v11 + 14) = v26;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget visibility changed to: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    sub_1DAD6B5EC(v7);
  }
}

void sub_1DAD6EEE0(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1DAEC7848();
}

id sub_1DAD6EF34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  BSDispatchQueueAssertMain();
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch;
  *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch) = 1;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = MEMORY[0x1E69E7CC0];
  *(a1 + v9) = MEMORY[0x1E69E7CC0];

  result = [a2 inspectDiff:a3 withContext:a4];
  *(a1 + v8) = 0;
  if (*(*(a1 + v9) + 16))
  {

    v13 = sub_1DAECEDCC();
    v14 = sub_1DAED203C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v24);
      *(v15 + 12) = 2082;
      v17 = *(a1 + v9);

      v19 = MEMORY[0x1E127DB00](v18, &type metadata for LiveWidgetViewChangeReason);
      v21 = v20;

      v22 = sub_1DAD6482C(v19, v21, &v24);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] Ending batch update with reasons: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v16, -1, -1);
      MEMORY[0x1E127F100](v15, -1, -1);
    }

    LOBYTE(v24) = 21;
    sub_1DAD8EC1C(&v24);
    v23 = *(a1 + v9);
    *(a1 + v9) = v11;
  }

  return result;
}

void sub_1DAD6F154(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, &v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = [v8 areAnimationsPaused];

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget animations paused changed to: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v16 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v18 = [v8 areAnimationsPaused];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v22) = v18;
      sub_1DAECEF4C();
    }

    v19 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
    v20 = [v8 areAnimationsPaused];
    v19[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_animationsPaused] = v20;
    v21 = *&v19[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView];
    v21[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] = v20;
    [v21 setNeedsLayout];
  }
}

uint64_t sub_1DAD6F45C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue);
  BSDispatchQueueAssert();
  sub_1DAD69DF8();
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection);
  if (v2)
  {
    v3 = v2;
    if ([v3 remoteTarget])
    {
      sub_1DAED238C();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A8, &qword_1DAEDF138);
      if (swift_dynamicCast())
      {

        return v12;
      }
    }

    else
    {
      sub_1DAD64398(v15, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    }

    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE0117F0);
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED202C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DAD61000, v9, v10, "Failed to cast connection to server interface protocol", v11, 2u);
      MEMORY[0x1E127F100](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAECEDEC();
    __swift_project_value_buffer(v4, qword_1EE0117F0);
    v3 = sub_1DAECEDCC();
    v5 = sub_1DAED202C();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DAD61000, v3, v5, "Failed to establish a connection", v6, 2u);
      MEMORY[0x1E127F100](v6, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1DAD6F6C8(char a1, void *a2, uint64_t a3)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAECEDEC();
  __swift_project_value_buffer(v6, qword_1EE0117F0);
  v7 = a2;
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED200C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67240450;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2114;
    *(v10 + 10) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1DAD61000, v8, v9, "Set visibly settled %{BOOL,public}d for session: %{public}@", v10, 0x12u);
    sub_1DAD64398(v11, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  v13 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v15 = *(a3 + v14);

  v16 = sub_1DADB7CF0(v7, v15);

  if (v16)
  {
    v17 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
    swift_beginAccess();
    *(v16 + v17) = a1 & 1;
  }

  os_unfair_lock_unlock(*(v13 + 16));
  result = sub_1DAD6F45C();
  if (result)
  {
    v19 = result;
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    [v19 setVisiblySettled:v20 forSession:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DAD6F920()
{
  if (!qword_1EE00BE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC09EC0, &qword_1DAED7970);
    v0 = sub_1DAED089C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00BE20);
    }
  }
}

void sub_1DAD6F984()
{
  if (!qword_1EE00BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08EC8, qword_1DAED82E8);
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00BDE8);
    }
  }
}

void sub_1DAD6F9E8()
{
  sub_1DAD6F984();
  if (v0 <= 0x3F)
  {
    sub_1DAECEDEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAD6FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAD6FB3C(char *a1)
{
  v114 = sub_1DAED09DC();
  v113 = *(v114 - 8);
  v3 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v111 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1DAED0A3C();
  v110 = *(v112 - 8);
  v5 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1DAED14BC();
  v105 = *(v106 - 8);
  v7 = v105[8];
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1DAED14CC();
  v9 = *(v104 - 8);
  v10 = *(v9 + 8);
  v11 = MEMORY[0x1EEE9AC00](v104);
  v100 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v99 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v99 - v19;
  v121 = sub_1DAECF8EC();
  v117 = *(v121 - 8);
  v20 = *(v117 + 64);
  v21 = MEMORY[0x1EEE9AC00](v121);
  v115 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v99 - v23;
  v24 = sub_1DAED157C();
  v101 = *(v24 - 8);
  v25 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v1;
  v28 = *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EE005E90 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v29 = sub_1DAECEDEC();
    __swift_project_value_buffer(v29, qword_1EE0117F0);
    v30 = sub_1DAECEDCC();
    v31 = sub_1DAED203C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DAD61000, v30, v31, "Received initial connection initialization", v32, 2u);
      MEMORY[0x1E127F100](v32, -1, -1);
    }

    v33 = v121;
    v108 = swift_allocBox();
    v116 = v34;
    sub_1DAECF8DC();
    v35 = sub_1DAECDACC();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_1DAECDABC();
    v119 = a1;
    v38 = [a1 systemEnvironment];
    v39 = sub_1DAECDC1C();
    v41 = v40;

    sub_1DAD649C4(&qword_1EE00AB20, 255, MEMORY[0x1E6985700]);
    sub_1DAECDAAC();
    sub_1DAD70BB4(v39, v41);

    v42 = v115;
    sub_1DAECF8DC();
    v43 = v14;
    sub_1DAED151C();
    (*(v117 + 8))(v42, v33);
    v44 = v104;
    (*(v9 + 2))(v100, v14, v104);
    sub_1DAD649C4(&qword_1EE005738, 255, MEMORY[0x1E69856E8]);
    v14 = v103;
    sub_1DAED1E3C();
    sub_1DAD649C4(&qword_1EE005740, 255, MEMORY[0x1E69856D8]);
    v45 = v102;
    v46 = v106;
    sub_1DAED234C();
    (v105[1])(v14, v46);
    v47 = v43;
    v48 = v117;
    (*(v9 + 1))(v47, v44);
    (*(v101 + 8))(v27, v24);
    v49 = *(v48 + 48);
    v50 = 1;
    v51 = v121;
    v52 = v49(v45, 1, v121);
    v53 = v120;
    if (v52 != 1)
    {
      (*(v48 + 32))(v120, v45, v51);
      v50 = 0;
    }

    (*(v48 + 56))(v53, v50, 1, v51);
    v54 = v49(v53, 1, v51);
    v55 = v119;
    v56 = v107;
    if (v54 == 1)
    {
      (*(v48 + 16))(v107, v116, v51);
      if (v49(v53, 1, v51) != 1)
      {
        sub_1DAD64398(v53, &unk_1ECC0A990, &qword_1DAEDE2D0);
      }
    }

    else
    {
      (*(v48 + 32))(v107, v53, v51);
    }

    (*(v48 + 40))(v116, v56, v51);
    v107 = swift_allocObject();
    *(v107 + 2) = MEMORY[0x1E69E7CC8];
    v57 = *&v118[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
    os_unfair_lock_lock(*(v57 + 16));
    v58 = [v55 extensions];
    v59 = sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
    sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
    v27 = sub_1DAED1F6C();

    aBlock[0] = sub_1DADBDB00(MEMORY[0x1E69E7CC0]);
    v106 = v57;
    v120 = v59;
    if ((v27 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAED1F9C();
      v61 = v124[4];
      v60 = v124[5];
      v62 = v124[6];
      a1 = v124[7];
      v9 = v124[8];
    }

    else
    {
      v63 = -1 << *(v27 + 32);
      v60 = (v27 + 56);
      v62 = ~v63;
      v64 = -v63;
      v65 = v64 < 64 ? ~(-1 << v64) : -1;
      v9 = (v65 & *(v27 + 56));

      a1 = 0;
      v61 = v27;
    }

    v105 = v62;
    v24 = (v62 + 64) >> 6;
    if (v61 < 0)
    {
      break;
    }

LABEL_17:
    v66 = a1;
    v67 = v9;
    v68 = a1;
    if (v9)
    {
LABEL_21:
      v14 = ((v67 - 1) & v67);
      v69 = *(*(v61 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v67)))));
      if (v69)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v68 = (v66 + 1);
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v68 >= v24)
      {
        goto LABEL_27;
      }

      v67 = v60[v68];
      ++v66;
      if (v67)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v70 = sub_1DAED24BC();
    if (!v70)
    {
      break;
    }

    v122 = v70;
    swift_dynamicCast();
    v69 = v124[0];
    v68 = a1;
    v14 = v9;
    if (!v124[0])
    {
      break;
    }

LABEL_25:
    v124[0] = v69;
    sub_1DADBDBF8(aBlock, v124);

    a1 = v68;
    v9 = v14;
    if ((v61 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_27:
  sub_1DAD70B20();

  v71 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity;
  v72 = v118;
  v73 = *&v118[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity];
  *&v118[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity] = aBlock[0];

  sub_1DAEB3B14(v74);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A960, &unk_1DAEDF100);
  v75 = sub_1DAED100C();
  v76 = *&v72[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection];
  *&v72[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection] = v75;

  v77 = v107;
  v78 = *(v107 + 2);
  *(v107 + 2) = *&v72[v71];

  v79 = v119;
  v80 = [v119 configurations];
  sub_1DAD674D4(0, &unk_1EE005588, 0x1E6994378);
  v81 = sub_1DAED1C1C();

  v82 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_configurationsByHostIdentifier;
  swift_beginAccess();
  v83 = *&v72[v82];
  *&v72[v82] = v81;

  v84 = v117;
  v85 = v115;
  v86 = v121;
  (*(v117 + 16))(v115, v116, v121);
  v87 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_systemEnvironment;
  swift_beginAccess();
  (*(v84 + 40))(&v72[v87], v85, v86);
  swift_endAccess();
  os_unfair_lock_unlock(*(v106 + 16));
  v88 = *&v72[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_hasReceivedInitializationPayload];

  os_unfair_lock_lock((v88 + 20));
  *(v88 + 16) = 1;
  os_unfair_lock_unlock((v88 + 20));

  v89 = *&v72[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue];
  v90 = swift_allocObject();
  v91 = v108;
  v90[2] = v72;
  v90[3] = v91;
  v90[4] = v77;
  v90[5] = v79;
  aBlock[4] = sub_1DAD7A9B8;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_112_0;
  v92 = _Block_copy(aBlock);
  v93 = v72;

  v94 = v79;
  v95 = v109;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v122 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v96 = v111;
  v97 = v114;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v95, v96, v92);
  _Block_release(v92);
  (*(v113 + 8))(v96, v97);
  (*(v110 + 8))(v95, v112);
}

uint64_t sub_1DAD70B28()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DAD70B60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DAD70BB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1DAD70C08()
{
  v68 = sub_1DAED0DDC();
  v1 = *(v68 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v77 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[13];
  v5 = v0[14];
  v69 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 10, v4);
  v6 = sub_1DAED11BC();
  if (v6)
  {
    v7 = v6;

    v9 = 0;
    v10 = sub_1DADC0624(v8);

    if (v10 >> 62)
    {
LABEL_27:
      v11 = sub_1DAED247C();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        v62[1] = v7;
        v12 = 0;
        v13 = v10 & 0xC000000000000001;
        v67 = v10 & 0xFFFFFFFFFFFFFF8;
        v63 = (v1 + 8);
        v79 = MEMORY[0x1E69E7CC0];
        v14 = &selRef__registerSceneActionsHandlerArray_forKey_;
        v15 = &selRef__registerSceneActionsHandlerArray_forKey_;
        v66 = v10;
        v65 = v11;
        v64 = v10 & 0xC000000000000001;
        while (1)
        {
          if (v13)
          {
            v16 = MEMORY[0x1E127E1F0](v12, v10);
            v17 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v12 >= *(v67 + 16))
            {
              goto LABEL_26;
            }

            v16 = *(v10 + 8 * v12 + 32);
            v17 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v78 = v17;
          v18 = v16;
          v1 = [v16 v14[371]];
          v19 = [v1 v15[271]];
          if (v19)
          {
            v7 = v19;
          }

          else
          {
            v20 = v1;
            v75 = v18;
            v21 = [v18 metrics];
            v22 = v77;
            v74 = v20;
            sub_1DAED0DAC();
            v23 = v69;
            sub_1DAD80BE4(0x6769666E6F63, 0xE600000000000000, v85);
            v24 = v23[7];
            v25 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
            v26 = *(v25 + 16);

            os_unfair_lock_lock(v26);
            sub_1DAD72328(v24, v22, 0x6769666E6F63, 0xE600000000000000, v83);
            if (v9)
            {

              os_unfair_lock_unlock(*(v25 + 16));
              __break(1u);
              return;
            }

            os_unfair_lock_unlock(*(v25 + 16));

            v27 = v86;
            v28 = __swift_project_boxed_opaque_existential_1(v85, v86);
            v73 = v62;
            v29 = *(v27 - 8);
            v30 = *(v29 + 64);
            MEMORY[0x1EEE9AC00](v28);
            v31 = v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
            v32 = *(v29 + 16);
            v32(v31);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v76 = 0;
            if (isUniquelyReferenced_nonNull_native)
            {
              v34 = v79;
            }

            else
            {
              isUniquelyReferenced_nonNull_native = sub_1DAD71488(0, v79[2] + 1, 1, v79);
              v34 = isUniquelyReferenced_nonNull_native;
            }

            v36 = v34[2];
            v35 = v34[3];
            if (v36 >= v35 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1DAD71488((v35 > 1), v36 + 1, 1, v34);
              v79 = isUniquelyReferenced_nonNull_native;
            }

            else
            {
              v79 = v34;
            }

            MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
            v37 = (v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
            (v32)(v37, v31, v27);
            v38 = *v37;
            v72 = type metadata accessor for WidgetArchiveEntryAssertion(0);
            v81 = v72;
            v71 = sub_1DAD8878C(qword_1EE008420, type metadata accessor for WidgetArchiveEntryAssertion);
            v82 = v71;
            *&v80 = v38;
            v39 = v79;
            v79[2] = v36 + 1;
            sub_1DAD657D8(&v80, &v39[5 * v36 + 4]);
            (*(v29 + 8))(v31, v27);
            v7 = v84;
            v40 = __swift_project_boxed_opaque_existential_1(v83, v84);
            v73 = v62;
            v41 = *(v7 - 1);
            v42 = *(v41 + 64);
            MEMORY[0x1EEE9AC00](v40);
            v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
            v44 = v62 - v43;
            v45 = *(v41 + 16);
            v45(v62 - v43);
            v1 = v39[2];
            v46 = v39[3];
            v70 = (v1 + 1);
            if (v1 >= v46 >> 1)
            {
              v79 = sub_1DAD71488((v46 > 1), v1 + 1, 1, v79);
            }

            v47 = (*v63)(v77, v68);
            MEMORY[0x1EEE9AC00](v47);
            v48 = (v62 - v43);
            (v45)(v48, v44, v7);
            v49 = *v48;
            v81 = v72;
            v82 = v71;
            v50 = v79;
            v79[2] = v70;
            v79 = v50;
            *&v80 = v49;
            sub_1DAD657D8(&v80, &v50[5 * v1 + 4]);
            (*(v41 + 8))(v44, v7);
            __swift_destroy_boxed_opaque_existential_1Tm(v83);
            __swift_destroy_boxed_opaque_existential_1Tm(v85);
            v10 = v66;
            v9 = v76;
            v11 = v65;
            v13 = v64;
            v14 = &selRef__registerSceneActionsHandlerArray_forKey_;
            v15 = &selRef__registerSceneActionsHandlerArray_forKey_;
          }

          ++v12;
          if (v78 == v11)
          {

            goto LABEL_29;
          }
        }
      }
    }

    v79 = MEMORY[0x1E69E7CC0];
LABEL_29:
    if (qword_1EE00AC58 != -1)
    {
      swift_once();
    }

    v51 = sub_1DAECEDEC();
    __swift_project_value_buffer(v51, qword_1EE011B70);
    v52 = sub_1DAECEDCC();
    v53 = sub_1DAED203C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134349056;
      *(v54 + 4) = v79[2];
      _os_log_impl(&dword_1DAD61000, v52, v53, "Acquired %{public}ld timeline and placeholder assertions.", v54, 0xCu);
      MEMORY[0x1E127F100](v54, -1, -1);
    }

    v55 = v69;
    v56 = v69[36];
    v57 = *(v56 + 16);

    os_unfair_lock_lock(v57);
    v58 = v55[37];
    v55[37] = v79;
    v59 = *(v56 + 16);

    os_unfair_lock_unlock(v59);

    v60 = *(v58 + 16);
    if (v60)
    {
      v61 = v58 + 32;
      do
      {
        sub_1DAD648F8(v61, v85);
        __swift_project_boxed_opaque_existential_1(v85, v86);
        sub_1DAED144C();
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        v61 += 40;
        --v60;
      }

      while (v60);
    }
  }
}

void *sub_1DAD71488(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A808, &qword_1DAEDED38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A810, &unk_1DAEDED40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DAD715D0()
{
  result = qword_1EE009328[0];
  if (!qword_1EE009328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE009328);
  }

  return result;
}

unint64_t sub_1DAD7164C()
{
  result = qword_1EE005B08;
  if (!qword_1EE005B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097C0, &qword_1DAEDA2A0);
    sub_1DAE38EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B08);
  }

  return result;
}

unint64_t sub_1DAD716DC()
{
  result = qword_1EE005B20;
  if (!qword_1EE005B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097C8, &qword_1DAEDA448);
    sub_1DAD71798();
    sub_1DAD7305C(&qword_1EE00BF18, type metadata accessor for SystemURLActionViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B20);
  }

  return result;
}

unint64_t sub_1DAD71798()
{
  result = qword_1EE0059A8;
  if (!qword_1EE0059A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097A8, &qword_1DAEDA288);
    sub_1DAD71850();
    sub_1DAD64B94(&qword_1EE0058F0, &qword_1ECC097B8, &qword_1DAEDA298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0059A8);
  }

  return result;
}

unint64_t sub_1DAD71850()
{
  result = qword_1EE005AD0;
  if (!qword_1EE005AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097A0, &qword_1DAEDA280);
    sub_1DAD64B94(&qword_1EE0058F0, &qword_1ECC097B8, &qword_1DAEDA298);
    sub_1DAD71948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AD0);
  }

  return result;
}

uint64_t sub_1DAD71908@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveWidgetEntryViewModel(0);
  result = sub_1DAECEE4C();
  *a1 = result;
  return result;
}

unint64_t sub_1DAD71948()
{
  result = qword_1EE00C098[0];
  if (!qword_1EE00C098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00C098);
  }

  return result;
}

uint64_t sub_1DAD71A08(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = a4;
  v50 = a3;
  v58 = sub_1DAED09DC();
  v61 = *(v58 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0A3C();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1DAED09CC();
  v53 = *(v55 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_1DAED0A6C();
  v62 = *(v54 - 8);
  v13 = *(v62 + 64);
  v14 = MEMORY[0x1EEE9AC00](v54);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v49 - v17;
  v49 = sub_1DAED09EC();
  v18 = *(v49 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DAECF8EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_projectBox();
  v28 = *&a1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_systemEnvironmentDidChangePublisher];
  swift_beginAccess();
  (*(v23 + 16))(v26, v27, v22);
  sub_1DAECEE6C();
  (*(v23 + 8))(v26, v22);
  v29 = *&a1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_extensionsDidChangePublisher];
  v30 = v50;
  swift_beginAccess();
  aBlock[0] = *(v30 + 16);

  sub_1DAECEE6C();

  v31 = *&a1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_configurationsDidChangePublisher];
  v32 = a1;
  v33 = [v52 configurations];
  sub_1DAD674D4(0, &unk_1EE005588, 0x1E6994378);
  v34 = sub_1DAED1C1C();

  aBlock[0] = v34;
  sub_1DAECEE6C();

  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v35 = v49;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E7F88], v49);
  v52 = sub_1DAED211C();
  (*(v18 + 8))(v21, v35);
  sub_1DAED0A4C();
  *v12 = 250;
  v36 = v53;
  v37 = v55;
  (*(v53 + 104))(v12, *MEMORY[0x1E69E7F38], v55);
  v38 = v51;
  sub_1DAED0A5C();
  (*(v36 + 8))(v12, v37);
  v39 = *(v62 + 8);
  v62 += 8;
  v40 = v54;
  v39(v16, v54);
  v41 = swift_allocObject();
  *(v41 + 16) = v32;
  aBlock[4] = sub_1DADC7DD4;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_118;
  v42 = _Block_copy(aBlock);
  v43 = v32;
  v44 = v56;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v46 = v57;
  v45 = v58;
  sub_1DAED23CC();
  v47 = v52;
  MEMORY[0x1E127DD10](v38, v44, v46, v42);
  _Block_release(v42);

  (*(v61 + 8))(v46, v45);
  (*(v59 + 8))(v44, v60);
  v39(v38, v40);
}

uint64_t type metadata accessor for InteractiveWidgetSetupViewModifier()
{
  result = qword_1EE00C268;
  if (!qword_1EE00C268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD72224(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DAECEDEC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAD722E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD72328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v124 = a4;
  v119 = a5;
  v9 = sub_1DAECEDEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1DAED0DDC();
  v13 = *(v126 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v126 - 8);
  v113 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v105 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v105 - v20;
  v121 = sub_1DAED18CC();
  v128 = *(v121 - 8);
  v22 = *(v128 + 64);
  v23 = MEMORY[0x1EEE9AC00](v121);
  v112 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v111 = &v105 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v123 = &v105 - v27;
  v28 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v114 = v28;
  v127 = a1;
  v29 = *(a1 + v28);
  v30 = *(v29 + 16);
  v117 = a3;
  if (v30)
  {

    v31 = sub_1DAD805B0(a2);
    if (v32)
    {
      v118 = v5;
      v33 = *(*(v29 + 56) + 8 * v31);
      swift_retain_n();

      goto LABEL_14;
    }
  }

  v109 = v10;
  v110 = v9;
  v120 = v13;
  v34 = (v127 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider);
  v35 = *(v127 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider + 32);
  __swift_project_boxed_opaque_existential_1((v127 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider), *(v127 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider + 24));
  v125 = a2;
  v36 = sub_1DAED0DBC();
  v37 = [v36 extensionIdentity];

  sub_1DAED134C();
  if (v5)
  {

    v38 = v128;
    v39 = v121;
    (*(v128 + 56))(v21, 1, 1, v121);
    v40 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_1DAED133C();
    v41 = (*(v38 + 48))(v21, 1, v39);
    v118 = 0;
    if (v41 != 1)
    {
      sub_1DAD64398(v21, &qword_1ECC087A0, &unk_1DAED71E0);
    }

    v42 = v125;
    v43 = v120;
    v44 = v128;
    v45 = v123;
  }

  else
  {
    v118 = 0;

    v44 = v128;
    v39 = v121;
    (*(v128 + 56))(v21, 0, 1, v121);
    v45 = v123;
    (*(v44 + 32))(v123, v21, v39);
    v42 = v125;
    v43 = v120;
  }

  v108 = sub_1DAED0C7C();
  v46 = *(v43 + 16);
  v105 = v43 + 16;
  v106 = v46;
  v46(v122, v42, v126);
  v47 = v111;
  (*(v44 + 16))(v111, v45, v39);
  v48 = v127;
  v49 = *(v127 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory + 32);
  __swift_project_boxed_opaque_existential_1((v127 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory), *(v127 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory + 24));
  v50 = v39;
  v51 = sub_1DAED0DBC();
  v52 = [v51 extensionIdentity];

  sub_1DAED12FC();
  v53 = v48;
  sub_1DAD648F8(v48 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver, v129);
  sub_1DAED0C2C();
  v54 = sub_1DAED0C1C();
  v55 = type metadata accessor for WidgetArchiveEntry(0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  *(v58 + 24) = 0;
  v59 = (v58 + 24);
  v60 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate;
  v61 = sub_1DAECDCEC();
  (*(*(v61 - 8) + 56))(v58 + v60, 1, 1, v61);
  *(v58 + OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
  *(v58 + 16) = v54;
  v62 = v54;
  v108 = v58;

  v107 = v62;
  sub_1DAED0B9C();
  v63 = *(v53 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 32);
  __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor), *(v53 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24));
  v64 = v112;
  sub_1DAED127C();
  sub_1DAD722E0(&qword_1EE00AAF0, MEMORY[0x1E69859A8]);
  LOBYTE(v54) = sub_1DAED1C9C();
  v65 = *(v128 + 8);
  v128 += 8;
  v66 = v64;
  v67 = v126;
  v65(v66, v50);
  v68 = v47;
  v69 = v125;
  v112 = v65;
  v65(v68, v50);
  swift_beginAccess();
  *v59 = v54 & 1;
  v70 = v113;
  v106(v113, v69, v67);
  v71 = sub_1DAECEDCC();
  v72 = sub_1DAED203C();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v129[0] = v74;
    *v73 = 136446210;
    v75 = sub_1DAED0D8C();
    v77 = v76;
    v78 = v120;
    (*(v120 + 8))(v70, v67);
    v79 = sub_1DAD6482C(v75, v77, v129);
    v80 = v125;

    *(v73 + 4) = v79;
    _os_log_impl(&dword_1DAD61000, v71, v72, "Adding entry: %{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x1E127F100](v74, -1, -1);
    MEMORY[0x1E127F100](v73, -1, -1);

    v13 = v78;
    v9 = v110;
    v10 = v109;
  }

  else
  {

    v13 = v120;
    (*(v120 + 8))(v70, v67);
    v9 = v110;
    v10 = v109;
    v80 = v69;
  }

  v81 = v114;
  v82 = v127;
  swift_beginAccess();
  v33 = v108;

  v83 = *(v82 + v81);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v130 = *(v82 + v81);
  *(v82 + v81) = 0x8000000000000000;
  sub_1DAD7FBFC(v33, v80, isUniquelyReferenced_nonNull_native);
  *(v82 + v81) = v130;
  swift_endAccess();

  (v112)(v123, v121);
  a2 = v80;
LABEL_14:
  v85 = v127;
  sub_1DAD80684(a2);
  v86 = v115;
  (*(v10 + 16))(v115, v85 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger, v9);
  v87 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  v128 = v87;
  v90 = swift_allocObject();
  v125 = OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion;
  *(v90 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion) = 0;
  *(v90 + 16) = v33;
  (*(v10 + 32))(v90 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v86, v9);
  v91 = (v90 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_reason);
  v92 = v124;
  *v91 = v117;
  v91[1] = v92;
  v123 = sub_1DAED0D5C();
  v93 = swift_allocObject();
  swift_weakInit();
  v94 = v122;
  v95 = v126;
  (*(v13 + 16))(v122, a2, v126);
  v96 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v97 = swift_allocObject();
  *(v97 + 2) = v85;
  *(v97 + 3) = v33;
  *(v97 + 4) = v93;
  (*(v13 + 32))(&v97[v96], v94, v95);
  swift_retain_n();

  v98 = sub_1DAED0D6C();
  v99 = *(v90 + v125);
  *(v90 + v125) = v98;

  v100 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_assertions;
  swift_beginAccess();

  MEMORY[0x1E127DAD0](v101);
  if (*((*(v33 + v100) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v33 + v100) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v104 = *((*(v33 + v100) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DAED1E9C();
  }

  sub_1DAED1EBC();
  swift_endAccess();

  v102 = v119;
  v119[3] = v128;
  v102[4] = sub_1DAD722E0(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion);

  *v102 = v90;
  return result;
}

uint64_t sub_1DAD72F50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD72F88()
{
  v1 = sub_1DAED0DDC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1DAD7305C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAD730A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAD7312C(uint64_t a1, uint64_t a2)
{
  v291 = a2;
  v3 = sub_1DAED0DDC();
  v279 = *(v3 - 8);
  v280 = v3;
  v4 = *(v279 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v275 = &v251 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v268 = &v251 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v262 = &v251 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v256 = &v251 - v11;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  v12 = *(*(v261 - 8) + 64);
  MEMORY[0x1EEE9AC00](v261);
  v263 = &v251 - v13;
  v14 = sub_1DAECDCEC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v260 = &v251 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v278 = &v251 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v266 = &v251 - v21;
  v22 = sub_1DAECDBFC();
  v270 = *(v22 - 8);
  v271 = v22;
  v23 = *(v270 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v274 = &v251 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v259 = &v251 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v282 = &v251 - v28;
  v29 = sub_1DAED18CC();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x1EEE9AC00](v29);
  v257 = &v251 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v272 = &v251 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v287 = &v251 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = &v251 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v251 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v258 = &v251 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v264 = &v251 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v265 = &v251 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v267 = (&v251 - v53);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v251 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v304 = 0;
  v302 = 0u;
  v303 = 0u;
  v301 = 0;
  v299 = 0u;
  v300 = 0u;
  v281 = v15;
  v57 = *(v15 + 56);
  v298 = 0uLL;
  v290 = &v251 - v58;
  v57();
  v286 = v56;
  v288 = v14;
  v276 = v57;
  v277 = (v15 + 56);
  (v57)(v56, 1, 1, v14);
  v273 = v30;
  v59 = v30[7];
  v283 = v43;
  v59(v43, 1, 1, v29);
  v284 = v41;
  v269 = v29;
  v59(v41, 1, 1, v29);
  v285 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v60 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v61 = v60[2];

  os_unfair_lock_lock(v61);
  v62 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v289 = a1;
  v63 = *(a1 + v62);
  v64 = v291;
  if (*(v63 + 16))
  {

    v65 = sub_1DAD805B0(v64);
    if (v66)
    {
      v253 = v60;
      v254 = v62;
      v67 = *(*(v63 + 56) + 8 * v65);

      v68 = v286;
      sub_1DAD64398(v286, &qword_1ECC07CE8, &qword_1DAED6F60);

      v69 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate;
      swift_beginAccess();
      sub_1DAD6495C(v67 + v69, v68, &qword_1ECC07CE8, &qword_1DAED6F60);
      swift_beginAccess();
      v70 = *(v67 + 16);
      sub_1DAED0C5C();

      sub_1DAD64398(&v302, &unk_1ECC08880, &unk_1DAED6F50);
      v302 = v294;
      v303 = v295;
      v304 = v296;
      v71 = *(v289 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 32);
      __swift_project_boxed_opaque_existential_1((v289 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor), *(v289 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24));
      v252 = v59;
      v72 = v287;
      sub_1DAED127C();
      v255 = v67;
      v73 = *(v67 + 16);
      v74 = v272;
      sub_1DAED0B9C();

      v75 = v283;
      sub_1DAD64398(v283, &qword_1ECC087A0, &unk_1DAED71E0);
      v76 = v273[2];
      v77 = v269;
      v76(v75, v72, v269);
      v78 = v75;
      v79 = v284;
      v80 = v252;
      v252(v78, 0, 1, v77);
      sub_1DAD64398(v79, &qword_1ECC087A0, &unk_1DAED71E0);
      v76(v79, v74, v77);
      v80(v79, 0, 1, v77);
      sub_1DAD722E0(&qword_1EE00AAF0, MEMORY[0x1E69859A8]);
      if (sub_1DAED1C9C())
      {
        *&v294 = 0;
        *(&v294 + 1) = 0xE000000000000000;
        sub_1DAED256C();
        MEMORY[0x1E127DA50](91, 0xE100000000000000);
        v81 = sub_1DAED0D8C();
        MEMORY[0x1E127DA50](v81);

        MEMORY[0x1E127DA50](0xD00000000000003DLL, 0x80000001DAEE18F0);
        sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
        v82 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v82);

        MEMORY[0x1E127DA50](0xD00000000000004CLL, 0x80000001DAEE1930);
        v83 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v83);

        MEMORY[0x1E127DA50](41, 0xE100000000000000);
        v84 = v294;
        v85 = *(v255 + 16);

        sub_1DAED0BCC();

        v86 = sub_1DAECEDCC();
        v87 = sub_1DAED201C();

        v88 = v86;
        if (os_log_type_enabled(v86, v87))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v294 = v90;
          *v89 = 136446210;
          v91 = sub_1DAD6482C(v84, *(&v84 + 1), &v294);

          *(v89 + 4) = v91;
          _os_log_impl(&dword_1DAD61000, v88, v87, "%{public}s", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v90);
          MEMORY[0x1E127F100](v90, -1, -1);
          MEMORY[0x1E127F100](v89, -1, -1);
        }

        else
        {
        }

        v111 = v273[1];
        v111(v74, v77);
        v111(v72, v77);
        os_unfair_lock_unlock(v253[2]);

LABEL_16:
        sub_1DAD64398(v286, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD64398(&v299, &unk_1ECC08880, &unk_1DAED6F50);
        sub_1DAD64398(&v302, &unk_1ECC08880, &unk_1DAED6F50);
        v112 = &qword_1ECC087A0;
        v113 = &unk_1DAED71E0;
        sub_1DAD64398(v284, &qword_1ECC087A0, &unk_1DAED71E0);
        v114 = v283;
LABEL_39:
        sub_1DAD64398(v114, v112, v113);
        sub_1DAD64398(v290, &qword_1ECC07CE8, &qword_1DAED6F60);
        return;
      }

      v92 = v273[1];
      v92(v74, v77);
      v92(v72, v77);
      v60 = v253;
      v62 = v254;
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(v60[2]);

  v93 = v289;
  v94 = *(v289 + 16);
  v95 = *(v289 + 24);
  ObjectType = swift_getObjectType();
  sub_1DAED0DEC();
  v287 = 0;
  v272 = ObjectType;
  v97 = v267;
  sub_1DAECDBEC();
  sub_1DAD84E40(v97, v290);
  sub_1DAD6495C(&v302, &v294, &unk_1ECC08880, &unk_1DAED6F50);
  v98 = *(&v295 + 1);
  sub_1DAD64398(&v294, &unk_1ECC08880, &unk_1DAED6F50);
  if (v98)
  {
    v99 = v265;
    sub_1DAD6495C(v286, v265, &qword_1ECC07CE8, &qword_1DAED6F60);
    v100 = v281;
    v101 = v281 + 48;
    v102 = v288;
    v267 = *(v281 + 48);
    if (v267(v99, 1) == 1)
    {
      sub_1DAD64398(v99, &qword_1ECC07CE8, &qword_1DAED6F60);
      goto LABEL_21;
    }

    v254 = v62;
    v255 = v95;
    v103 = v266;
    v104 = v102;
    v252 = *(v100 + 32);
    (v252)(v266, v99, v102);
    v105 = *(v100 + 16);
    v106 = v264;
    v265 = v100 + 16;
    v253 = v105;
    (v105)(v264, v103, v102);
    (v276)(v106, 0, 1, v102);
    v107 = *(v261 + 48);
    v108 = v263;
    sub_1DAD6495C(v106, v263, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD6495C(v290, v108 + v107, &qword_1ECC07CE8, &qword_1DAED6F60);
    v109 = v267;
    v110 = v267;
    if ((v267)(v108, 1, v104) == 1)
    {
      sub_1DAD64398(v106, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v109(v108 + v107, 1, v104) == 1)
      {
        v261 = v101;
        sub_1DAD64398(v108, &qword_1ECC07CE8, &qword_1DAED6F60);
        goto LABEL_45;
      }
    }

    else
    {
      v115 = v107;
      v116 = v258;
      sub_1DAD6495C(v108, v258, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v110(v108 + v115, 1, v104) != 1)
      {
        v261 = v101;
        v191 = v108 + v115;
        v192 = v278;
        (v252)(v278, v191, v104);
        sub_1DAD722E0(&qword_1EE00BCF8, MEMORY[0x1E6969530]);
        v193 = v104;
        v194 = sub_1DAED1CAC();
        v195 = v116;
        v117 = *(v281 + 8);
        v117(v192, v193);
        sub_1DAD64398(v264, &qword_1ECC07CE8, &qword_1DAED6F60);
        v117(v195, v193);
        sub_1DAD64398(v263, &qword_1ECC07CE8, &qword_1DAED6F60);
        v93 = v289;
        if (v194)
        {
LABEL_45:
          v196 = v279;
          v197 = v256;
          (*(v279 + 16))(v256, v291, v280);
          (v253)(v260, v266, v288);
          v199 = v270;
          v198 = v271;
          v200 = v259;
          v201 = v282;
          (*(v270 + 16))(v259, v282, v271);
          v202 = sub_1DAECEDCC();
          v203 = sub_1DAED203C();
          if (os_log_type_enabled(v202, v203))
          {
            LODWORD(v291) = v203;
            v204 = swift_slowAlloc();
            v289 = swift_slowAlloc();
            v292[0] = v289;
            *v204 = 136446978;
            v205 = sub_1DAED0D8C();
            v207 = v206;
            (*(v196 + 8))(v197, v280);
            v208 = sub_1DAD6482C(v205, v207, v292);

            *(v204 + 4) = v208;
            *(v204 + 12) = 2082;
            sub_1DAD722E0(&qword_1EE00BCF0, MEMORY[0x1E6969530]);
            v209 = v260;
            v210 = v288;
            v211 = sub_1DAED287C();
            v213 = v212;
            v214 = *(v281 + 8);
            v214(v209, v210);
            v215 = sub_1DAD6482C(v211, v213, v292);

            *(v204 + 14) = v215;
            *(v204 + 22) = 2082;
            v216 = v290;
            swift_beginAccess();
            v217 = (v267)(v216, 1, v210);
            v287 = v214;
            if (v217)
            {
              v218 = 7104878;
              v219 = 0xE300000000000000;
              v220 = v271;
            }

            else
            {
              v239 = v278;
              (v253)(v278, v216, v210);
              v240 = sub_1DAECDC2C();
              v219 = v241;
              v242 = v239;
              v220 = v271;
              v214(v242, v210);
              v218 = v240;
            }

            v243 = sub_1DAD6482C(v218, v219, v292);

            *(v204 + 24) = v243;
            *(v204 + 32) = 2082;
            sub_1DAD722E0(&qword_1EE00BD10, MEMORY[0x1E6968FB0]);
            v244 = v259;
            v245 = sub_1DAED287C();
            v247 = v246;
            v248 = *(v270 + 8);
            v248(v244, v220);
            v249 = sub_1DAD6482C(v245, v247, v292);

            *(v204 + 34) = v249;
            _os_log_impl(&dword_1DAD61000, v202, v291, "Ignoring reloading contents for key because it's the exact same as we already have loaded: %{public}s (cachedLastModifiedDate: %{public}s, lastModifiedDate: %{public}s, url: %{public}s", v204, 0x2Au);
            v250 = v289;
            swift_arrayDestroy();
            MEMORY[0x1E127F100](v250, -1, -1);
            MEMORY[0x1E127F100](v204, -1, -1);

            (v287)(v266, v288);
            v248(v282, v220);
          }

          else
          {

            v236 = *(v199 + 8);
            v236(v200, v198);
            v237 = *(v281 + 8);
            v238 = v288;
            v237(v260, v288);
            (*(v196 + 8))(v197, v280);
            v237(v266, v238);
            v236(v201, v198);
          }

          goto LABEL_16;
        }

        goto LABEL_20;
      }

      sub_1DAD64398(v264, &qword_1ECC07CE8, &qword_1DAED6F60);
      (*(v281 + 8))(v116, v104);
    }

    sub_1DAD64398(v108, &qword_1ECC087B0, qword_1DAEDCBF0);
    v117 = *(v281 + 8);
    v93 = v289;
LABEL_20:
    v62 = v254;
    v117(v266, v288);
  }

LABEL_21:
  v118 = v291;
  v119 = v287;
  sub_1DAED0DFC();
  if (!v119)
  {
    v277 = 0;
    sub_1DAD64398(&v299, &unk_1ECC08880, &unk_1DAED6F50);
    v299 = v294;
    v300 = v295;
    v301 = v296;
    v173 = v279;
    v172 = v280;
    v174 = v262;
    (*(v279 + 16))(v262, v118, v280);
    v175 = sub_1DAECEDCC();
    v176 = sub_1DAED203C();
    v177 = os_log_type_enabled(v175, v176);
    v178 = v288;
    if (v177)
    {
      LODWORD(v287) = v176;
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v293 = v180;
      *v179 = 136446722;
      v181 = sub_1DAED0D8C();
      v183 = v182;
      (*(v173 + 8))(v174, v172);
      v184 = sub_1DAD6482C(v181, v183, &v293);

      *(v179 + 4) = v184;
      *(v179 + 12) = 2082;
      v185 = v284;
      swift_beginAccess();
      v186 = v273;
      v187 = v273[6];
      v188 = v269;
      if (v187(v185, 1, v269))
      {
        v189 = 0xE300000000000000;
        v190 = 7104878;
      }

      else
      {
        v221 = v186[2];
        v280 = v180;
        v222 = v257;
        v221(v257, v185, v188);
        v190 = sub_1DAED189C();
        v189 = v223;
        v224 = v222;
        v180 = v280;
        (v186[1])(v224, v188);
      }

      v225 = sub_1DAD6482C(v190, v189, &v293);

      *(v179 + 14) = v225;
      *(v179 + 22) = 2082;
      v226 = v283;
      swift_beginAccess();
      if (v187(v226, 1, v188))
      {
        v227 = v226;
        v228 = 0xE300000000000000;
        v140 = v288;
        v168 = v277;
        v229 = 7104878;
      }

      else
      {
        v230 = v273;
        v231 = v257;
        (v273[2])(v257, v226, v188);
        v232 = v226;
        v229 = sub_1DAED189C();
        v228 = v233;
        v234 = v231;
        v227 = v232;
        (v230[1])(v234, v188);
        v140 = v288;
        v168 = v277;
      }

      v235 = sub_1DAD6482C(v229, v228, &v293);

      *(v179 + 24) = v235;
      _os_log_impl(&dword_1DAD61000, v175, v287, "Content load successful for key: %{public}s with data protection level of entry [%{public}s] (system protection level: %{public}s)", v179, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v180, -1, -1);
      MEMORY[0x1E127F100](v179, -1, -1);

      (*(v270 + 8))(v282, v271);
      sub_1DAD64398(v286, &qword_1ECC07CE8, &qword_1DAED6F60);
      sub_1DAD64398(v284, &qword_1ECC087A0, &unk_1DAED71E0);
      sub_1DAD64398(v227, &qword_1ECC087A0, &unk_1DAED71E0);
      v93 = v289;
    }

    else
    {

      (*(v173 + 8))(v174, v172);
      (*(v270 + 8))(v282, v271);
      sub_1DAD64398(v286, &qword_1ECC07CE8, &qword_1DAED6F60);
      sub_1DAD64398(v284, &qword_1ECC087A0, &unk_1DAED71E0);
      sub_1DAD64398(v283, &qword_1ECC087A0, &unk_1DAED71E0);
      v168 = v277;
      v140 = v178;
    }

    goto LABEL_37;
  }

  (*(v270 + 8))(v282, v271);
  sub_1DAD64398(v286, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v284, &qword_1ECC087A0, &unk_1DAED71E0);
  sub_1DAD64398(v283, &qword_1ECC087A0, &unk_1DAED71E0);
  v287 = v119;
  v120 = v288;
  v121 = v290;
  sub_1DAD64398(v290, &qword_1ECC07CE8, &qword_1DAED6F60);
  (v276)(v121, 1, 1, v120);
  v122 = *(v93 + v285);
  v123 = *(v122 + 16);

  os_unfair_lock_lock(v123);
  v124 = *(v93 + v62);
  if (!*(v124 + 16))
  {
    goto LABEL_26;
  }

  v125 = *(v93 + v62);

  v126 = sub_1DAD805B0(v291);
  if ((v127 & 1) == 0)
  {

LABEL_26:
    v129 = 0;
    goto LABEL_27;
  }

  v128 = *(*(v124 + 56) + 8 * v126);

  v129 = *(v128 + 25);

LABEL_27:
  os_unfair_lock_unlock(*(v122 + 16));

  swift_getErrorValue();
  v130 = sub_1DADBBC8C(v297);
  v132 = v131;
  v133 = v274;
  sub_1DAED0DEC();
  v277 = 0;
  *&v294 = 0;
  *(&v294 + 1) = 0xE000000000000000;
  sub_1DAED256C();

  *&v294 = 0x727520676E697355;
  *(&v294 + 1) = 0xEB0000000060206CLL;
  sub_1DAD722E0(&qword_1EE00BD10, MEMORY[0x1E6968FB0]);
  v134 = v271;
  v135 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v135);

  MEMORY[0x1E127DA50](0x202E2E2E2060, 0xE600000000000000);
  MEMORY[0x1E127DA50](v130, v132);

  v136 = *(&v294 + 1);
  v286 = v294;
  (*(v270 + 8))(v133, v134);
  v137 = v275;
  v138 = v279;
  v139 = *(v279 + 16);
  v140 = v288;
  if (v129)
  {
    v141 = v280;
    v139(v275, v291, v280);

    v142 = sub_1DAECEDCC();
    v143 = sub_1DAED201C();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = v141;
      v145 = v137;
      v146 = v138;
      v147 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      *&v294 = v284;
      *v147 = 136446466;
      sub_1DAD722E0(&qword_1EE0057D0, MEMORY[0x1E6993D98]);
      v148 = sub_1DAED287C();
      v150 = v149;
      (*(v146 + 8))(v145, v144);
      v151 = sub_1DAD6482C(v148, v150, &v294);

      *(v147 + 4) = v151;
      *(v147 + 12) = 2082;
      v152 = v286;
      *(v147 + 14) = sub_1DAD6482C(v286, v136, &v294);
      _os_log_impl(&dword_1DAD61000, v142, v143, "Content load failed: unable to find or unarchive file for key: %{public}s. The session may still produce one shortly. Error: %{public}s", v147, 0x16u);
      v153 = v284;
      swift_arrayDestroy();
      v140 = v288;
      MEMORY[0x1E127F100](v153, -1, -1);
      MEMORY[0x1E127F100](v147, -1, -1);
    }

    else
    {

      (*(v138 + 8))(v137, v141);
      v152 = v286;
    }

    *&v294 = 0;
    *(&v294 + 1) = 0xE000000000000000;
    sub_1DAED256C();

    *&v294 = 0xD000000000000030;
    *(&v294 + 1) = 0x80000001DAEE18B0;
  }

  else
  {
    v154 = v288;
    v155 = v268;
    v156 = v280;
    v139(v268, v291, v280);

    v157 = sub_1DAECEDCC();
    v158 = sub_1DAED203C();

    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = v155;
      v161 = swift_slowAlloc();
      *&v294 = v161;
      *v159 = 136446466;
      v162 = sub_1DAED0D8C();
      v164 = v163;
      (*(v138 + 8))(v160, v280);
      v165 = sub_1DAD6482C(v162, v164, &v294);

      *(v159 + 4) = v165;
      *(v159 + 12) = 2082;
      v152 = v286;
      *(v159 + 14) = sub_1DAD6482C(v286, v136, &v294);
      _os_log_impl(&dword_1DAD61000, v157, v158, "Content load failed: initial search for an existing archive was not found; session will be creating the content on demand: %{public}s: %{public}s", v159, 0x16u);
      swift_arrayDestroy();
      v166 = v288;
      MEMORY[0x1E127F100](v161, -1, -1);
      v167 = v159;
      v140 = v166;
      MEMORY[0x1E127F100](v167, -1, -1);
    }

    else
    {

      (*(v138 + 8))(v155, v156);
      v152 = v286;
      v140 = v154;
    }

    *&v294 = 0;
    *(&v294 + 1) = 0xE000000000000000;
    sub_1DAED256C();
    MEMORY[0x1E127DA50](0xD000000000000031, 0x80000001DAEE1870);
  }

  MEMORY[0x1E127DA50](v152, v136);

  v298 = v294;
  v93 = v289;
  v168 = v277;
LABEL_37:
  v169 = *(v93 + v285);
  v170 = *(v169 + 16);

  os_unfair_lock_lock(v170);
  sub_1DAD85040(v93, v291, &v299, v290, &v298);
  if (!v168)
  {

    os_unfair_lock_unlock(*(v169 + 16));

    v171 = v278;
    sub_1DAECDCDC();
    sub_1DAD85694(v171);
    (*(v281 + 8))(v171, v140);
    v112 = &unk_1ECC08880;
    v113 = &unk_1DAED6F50;
    sub_1DAD64398(&v299, &unk_1ECC08880, &unk_1DAED6F50);
    v114 = &v302;
    goto LABEL_39;
  }

  os_unfair_lock_unlock(*(v169 + 16));
  __break(1u);
}

uint64_t sub_1DAD751C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1DAD75204(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DAD6495C(a1, &v11 - v6, &unk_1ECC09EC0, &qword_1DAED7970);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
  swift_beginAccess();
  sub_1DAD752E0(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1DAD752E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD75350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = sub_1DAECDBFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - v19;
  v42 = a1;
  sub_1DAD6495C(a1, v12, &unk_1ECC09EC0, &qword_1DAED7970);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DAD64398(v12, &unk_1ECC09EC0, &qword_1DAED7970);
    if (qword_1EE00BE80 != -1)
    {
      swift_once();
    }

    v21 = sub_1DAECEDEC();
    __swift_project_value_buffer(v21, qword_1EE011C08);
    v22 = sub_1DAECEDCC();
    v23 = sub_1DAED203C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DAD61000, v22, v23, "WidgetURLPreferenceKey has no url", v24, 2u);
      MEMORY[0x1E127F100](v24, -1, -1);
    }
  }

  else
  {
    v41 = a2;
    (*(v14 + 32))(v20, v12, v13);
    if (qword_1EE00BE80 != -1)
    {
      swift_once();
    }

    v25 = sub_1DAECEDEC();
    __swift_project_value_buffer(v25, qword_1EE011C08);
    (*(v14 + 16))(v18, v20, v13);
    v26 = sub_1DAECEDCC();
    v27 = sub_1DAED203C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = v28;
      v40 = swift_slowAlloc();
      v44 = v40;
      *v28 = 136642819;
      sub_1DADB17F4(&qword_1EE00BD10, MEMORY[0x1E6968FB0]);
      v29 = sub_1DAED287C();
      v31 = v30;
      v32 = *(v14 + 8);
      v32(v18, v13);
      v33 = sub_1DAD6482C(v29, v31, &v44);

      v34 = v39;
      *(v39 + 1) = v33;
      v35 = v34;
      _os_log_impl(&dword_1DAD61000, v26, v27, "Assigning url from preference key change: %{sensitive}s", v34, 0xCu);
      v36 = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1E127F100](v36, -1, -1);
      MEMORY[0x1E127F100](v35, -1, -1);

      v32(v20, v13);
    }

    else
    {

      v37 = *(v14 + 8);
      v37(v18, v13);
      v37(v20, v13);
    }
  }

  sub_1DAD6495C(v42, v10, &unk_1ECC09EC0, &qword_1DAED7970);
  sub_1DAD6495C(v10, v43, &unk_1ECC09EC0, &qword_1DAED7970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAED088C();
  return sub_1DAD64398(v10, &unk_1ECC09EC0, &qword_1DAED7970);
}

void sub_1DAD75858()
{
  v1 = *(type metadata accessor for LiveWidgetEntryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1DAD758B4();
}

void sub_1DAD758B4()
{
  v1 = v0;
  v2 = type metadata accessor for LiveWidgetEntryView();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v9 = *(*(v36 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v36);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = *(v0 + 8);
  if (*(v17 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce) != 1 || *(v17 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) == 1)
  {
    v40[0] = 1;
    sub_1DAD8EC1C(v40);
  }

  v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v17 + v18, v16, &unk_1ECC07D30, &unk_1DAED57E0);
  v19 = sub_1DAD75EB4();
  sub_1DAD64398(v16, &unk_1ECC07D30, &unk_1DAED57E0);
  v38 = *(v1 + 16);
  v39 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097E8, &qword_1DAEDA4C0);
  sub_1DAED078C();
  v20 = *(v2 + 36);
  sub_1DAD76078(v1, v8);
  sub_1DAD76078(v1, v6);
  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED203C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136446466;
    v25 = *(v8 + 1);

    sub_1DAD760DC(v8, type metadata accessor for LiveWidgetEntryView);
    v26 = *(v25 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v27 = *(v25 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v28 = sub_1DAD6482C(v26, v27, &v39);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    v29 = *(v6 + 1);
    v30 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v29 + v30, v14, &unk_1ECC07D30, &unk_1DAED57E0);
    v31 = v37;
    sub_1DAD6495C(v14, v37, &unk_1ECC07D30, &unk_1DAED57E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1DAD64398(v14, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD760DC(v6, type metadata accessor for LiveWidgetEntryView);
        sub_1DAD64398(v31, &unk_1ECC07D30, &unk_1DAED57E0);
        v33 = 0xEB00000000726564;
        v34 = 0x6C6F686563616C50;
      }

      else
      {
        sub_1DAD64398(v31, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD64398(v14, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD760DC(v6, type metadata accessor for LiveWidgetEntryView);
        v33 = 0xE500000000000000;
        v34 = 0x7974706D45;
      }
    }

    else
    {
      sub_1DAD64398(v14, &unk_1ECC07D30, &unk_1DAED57E0);
      sub_1DAD760DC(v6, type metadata accessor for LiveWidgetEntryView);
      sub_1DAD64398(v31, &unk_1ECC07D30, &unk_1DAED57E0);
      v33 = 0xE400000000000000;
      v34 = 1702259020;
    }

    v35 = sub_1DAD6482C(v34, v33, &v39);

    *(v23 + 14) = v35;
    _os_log_impl(&dword_1DAD61000, v21, v22, "[%{public}s] Cached [%{public}s] view assigned.", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v24, -1, -1);
    MEMORY[0x1E127F100](v23, -1, -1);
  }

  else
  {

    sub_1DAD760DC(v6, type metadata accessor for LiveWidgetEntryView);
    sub_1DAD760DC(v8, type metadata accessor for LiveWidgetEntryView);
  }
}

uint64_t type metadata accessor for _RootContentViewModel()
{
  result = qword_1EE006B80;
  if (!qword_1EE006B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LiveWidgetEntryView()
{
  result = qword_1EE009318;
  if (!qword_1EE009318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DebugOverlayObserver()
{
  result = qword_1EE006D70;
  if (!qword_1EE006D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD75EB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097F0, &qword_1DAEDA4C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  sub_1DAD6495C(v1, &v16 - v12, &unk_1ECC07D30, &unk_1DAED57E0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return *v13;
  }

  sub_1DAD79914(v13, v9, type metadata accessor for DefaultWidgetLiveViewEntry);
  DefaultWidgetLiveViewEntry.view.getter(v5);
  sub_1DADB6E28();
  v14 = sub_1DAED087C();
  sub_1DAD760DC(v9, type metadata accessor for DefaultWidgetLiveViewEntry);
  return v14;
}

uint64_t sub_1DAD76078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveWidgetEntryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD760DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LiveWidgetEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v254 = a1;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09688, &qword_1DAED9E58);
  v2 = *(*(v252 - 8) + 64);
  MEMORY[0x1EEE9AC00](v252);
  v253 = &v206 - v3;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09690, &qword_1DAED9E60);
  v4 = *(*(v251 - 8) + 64);
  MEMORY[0x1EEE9AC00](v251);
  v250 = &v206 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v249 = &v206 - v8;
  v9 = type metadata accessor for DebugInfo();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v248 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for LiveWidgetEntryView();
  v245 = *(v247 - 8);
  v12 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v257 = v13;
  v246 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1DAED0DDC();
  v240 = *(v241 - 1);
  v14 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v214 = &v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v206 - v20;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09698, &qword_1DAED9E68);
  v22 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207);
  v24 = &v206 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096A0, &qword_1DAED9E70);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v206 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096A8, &qword_1DAED9E78);
  v31 = *(v30 - 8);
  v210 = v30 - 8;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v208 = &v206 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096B0, &qword_1DAED9E80);
  v35 = *(v34 - 8);
  v212 = v34 - 8;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v209 = &v206 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096B8, &qword_1DAED9E88);
  v39 = *(v38 - 8);
  v213 = v38 - 8;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v211 = &v206 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096C0, &qword_1DAED9E90);
  v43 = *(v42 - 8);
  v216 = v42 - 8;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v215 = &v206 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096C8, &qword_1DAED9E98);
  v47 = *(v46 - 8);
  v218 = v46 - 8;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v206 = &v206 - v49;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096D0, &qword_1DAED9EA0);
  v50 = *(*(v219 - 8) + 64);
  MEMORY[0x1EEE9AC00](v219);
  v221 = &v206 - v51;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096D8, &qword_1DAED9EA8);
  v52 = *(*(v220 - 8) + 64);
  MEMORY[0x1EEE9AC00](v220);
  v223 = &v206 - v53;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096E0, &qword_1DAED9EB0);
  v54 = *(*(v222 - 8) + 64);
  MEMORY[0x1EEE9AC00](v222);
  v256 = &v206 - v55;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096E8, &qword_1DAED9EB8);
  v56 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v226 = &v206 - v57;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096F0, &qword_1DAED9EC0);
  v58 = *(*(v224 - 8) + 64);
  MEMORY[0x1EEE9AC00](v224);
  v228 = &v206 - v59;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC096F8, &qword_1DAED9EC8);
  v60 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v230 = &v206 - v61;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09700, &qword_1DAED9ED0);
  v62 = *(*(v229 - 8) + 64);
  MEMORY[0x1EEE9AC00](v229);
  v232 = &v206 - v63;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09708, &qword_1DAED9ED8);
  v64 = *(*(v231 - 8) + 64);
  MEMORY[0x1EEE9AC00](v231);
  v235 = &v206 - v65;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09710, &qword_1DAED9EE0);
  v66 = *(*(v234 - 8) + 64);
  MEMORY[0x1EEE9AC00](v234);
  v236 = &v206 - v67;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09718, &qword_1DAED9EE8);
  v68 = *(*(v233 - 8) + 64);
  MEMORY[0x1EEE9AC00](v233);
  v237 = &v206 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09720, &qword_1DAED9EF0);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v238 = &v206 - v72;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09728, &qword_1DAED9EF8);
  v73 = *(*(v242 - 8) + 64);
  MEMORY[0x1EEE9AC00](v242);
  v244 = &v206 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09730, &unk_1DAED9F00);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v243 = &v206 - v77;
  v262 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  sub_1DAED077C();
  sub_1DAD78018();
  sub_1DAD78F54();
  KeyPath = swift_getKeyPath();
  v79 = *(v1 + 8);
  v217 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v79 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v262);
  v80 = v263;
  v81 = v264;
  __swift_project_boxed_opaque_existential_1(&v262, v263);
  v82 = (*(v81 + 16))(v80, v81);
  v83 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v262);
  v84 = &v24[*(v207 + 36)];
  *v84 = KeyPath;
  v84[1] = v83;
  v85 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v79 + v85, v21, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAE386F4();
  sub_1DAED047C();
  v86 = v206;
  sub_1DAD64398(v21, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v24, &qword_1ECC09698, &qword_1DAED9E68);
  v87 = swift_getKeyPath();
  v88 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09758, &qword_1DAED9F90) + 36)];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09760, &qword_1DAED9F98);
  sub_1DAD6495C(v79 + v85, v88 + *(v89 + 28), &qword_1ECC07CE8, &qword_1DAED6F60);
  *v88 = v87;
  v90 = swift_getKeyPath();
  v91 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  swift_beginAccess();
  v92 = &v29[*(v26 + 44)];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09768, &unk_1DAED9FD0);
  sub_1DAD6495C(v79 + v91, v92 + *(v93 + 28), &qword_1ECC08360, &unk_1DAED6570);
  *v92 = v90;
  v94 = swift_getKeyPath();
  v95 = v79 + v85;
  v96 = v214;
  sub_1DAD6495C(v95, v214, &qword_1ECC07CE8, &qword_1DAED6F60);
  v97 = sub_1DAECDCEC();
  LOBYTE(v91) = (*(*(v97 - 8) + 48))(v96, 1, v97) != 1;
  sub_1DAD64398(v96, &qword_1ECC07CE8, &qword_1DAED6F60);
  v98 = v208;
  sub_1DAD7C48C(v29, v208, &qword_1ECC096A0, &qword_1DAED9E70);
  v99 = v98 + *(v210 + 44);
  *v99 = v94;
  *(v99 + 8) = v91;
  v100 = swift_getKeyPath();
  v101 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v102 = *(v79 + v101);
  v103 = v98;
  v104 = v209;
  sub_1DAD7C48C(v103, v209, &qword_1ECC096A8, &qword_1DAED9E78);
  v105 = (v104 + *(v212 + 44));
  *v105 = v100;
  v105[1] = v102;
  v106 = swift_getKeyPath();
  v107 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  swift_beginAccess();
  LOBYTE(v107) = *(v79 + v107);
  v108 = v211;
  sub_1DAD7C48C(v104, v211, &qword_1ECC096B0, &qword_1DAED9E80);
  v109 = v108 + *(v213 + 44);
  *v109 = v106;
  *(v109 + 8) = v107;
  v110 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v111 = v102;
  sub_1DAECEF3C();

  LOBYTE(v107) = v262;
  v112 = v215;
  sub_1DAD7C48C(v108, v215, &qword_1ECC096B8, &qword_1DAED9E88);
  v113 = v112 + *(v216 + 44);
  *v113 = v110;
  *(v113 + 8) = v107;
  v114 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  LOBYTE(v107) = v262;
  sub_1DAD7C48C(v112, v86, &qword_1ECC096C0, &qword_1DAED9E90);
  v115 = v86 + *(v218 + 44);
  *v115 = v114;
  *(v115 + 8) = v107;
  if (v258[7])
  {
    v260 = v258[7];
    v261 = 0;
  }

  else
  {
    sub_1DAD78BD8(&v262);
    v260 = v262;
    LOBYTE(v261) = BYTE8(v262);
    HIBYTE(v261) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B58, &qword_1DAEDA160);
  sub_1DAD78E78();
  sub_1DAECFB1C();
  v116 = v262;
  v117 = BYTE8(v262);
  v118 = BYTE9(v262);
  v119 = sub_1DAED091C();
  v121 = v120;
  v122 = v86;
  v123 = v221;
  sub_1DAD7C48C(v122, v221, &qword_1ECC096C8, &qword_1DAED9E98);
  v124 = v123 + *(v219 + 36);
  *v124 = v116;
  *(v124 + 8) = v117;
  *(v124 + 9) = v118;
  *(v124 + 16) = v119;
  *(v124 + 24) = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  LOBYTE(v119) = v262;
  v125 = v223;
  sub_1DAD7C48C(v123, v223, &qword_1ECC096D0, &qword_1DAED9EA0);
  *(v125 + *(v220 + 36)) = v119;
  v126 = v217;
  sub_1DAD648F8(v79 + v217, &v262);
  v127 = v263;
  v128 = v264;
  __swift_project_boxed_opaque_existential_1(&v262, v263);
  v129 = (*(v128 + 16))(v127, v128);
  v130 = v239;
  sub_1DAED0C3C();

  v131 = sub_1DAED0DCC();
  v240 = *(v240 + 8);
  v132 = v241;
  (v240)(v130, v241);
  __swift_destroy_boxed_opaque_existential_1Tm(&v262);
  v133 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v134 = [*(v79 + v133) backgroundViewPolicy] != 1;
  v135 = type metadata accessor for DebugOverlayObserver();
  v136 = *(v135 + 48);
  v137 = *(v135 + 52);
  swift_allocObject();
  sub_1DAD79620();
  sub_1DAD7305C(&qword_1EE006D80, type metadata accessor for DebugOverlayObserver);
  v138 = sub_1DAECF21C();
  v140 = v139;
  v141 = v125;
  v142 = v256;
  sub_1DAD7C48C(v141, v256, &qword_1ECC096D8, &qword_1DAED9EA8);
  v143 = v142 + *(v222 + 36);
  *v143 = v131;
  *(v143 + 8) = v134;
  *(v143 + 16) = v138;
  *(v143 + 24) = v140;
  sub_1DAD648F8(v79 + v126, &v262);
  v144 = v263;
  v145 = v264;
  __swift_project_boxed_opaque_existential_1(&v262, v263);
  v146 = (*(v145 + 16))(v144, v145);
  sub_1DAED0C3C();

  v147 = sub_1DAED0DCC();
  (v240)(v130, v132);
  __swift_destroy_boxed_opaque_existential_1Tm(&v262);
  v148 = 1;
  if ((v258[6] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    v148 = v262;
  }

  v149 = v226;
  sub_1DAD7C48C(v256, v226, &qword_1ECC096E0, &qword_1DAED9EB0);
  v150 = v149 + *(v225 + 36);
  *v150 = v147;
  *(v150 + 8) = v148;
  v151 = swift_getKeyPath();
  v152 = v149;
  v153 = v228;
  sub_1DAD7C48C(v152, v228, &qword_1ECC096E8, &qword_1DAED9EB8);
  v154 = v153 + *(v224 + 36);
  *v154 = v151;
  *(v154 + 8) = 1;
  v155 = v258;
  v156 = v246;
  sub_1DAD76078(v258, v246);
  v157 = (*(v245 + 80) + 16) & ~*(v245 + 80);
  v158 = swift_allocObject();
  v241 = type metadata accessor for LiveWidgetEntryView;
  sub_1DAD79914(v156, v158 + v157, type metadata accessor for LiveWidgetEntryView);
  v159 = v230;
  sub_1DAD7C48C(v153, v230, &qword_1ECC096F0, &qword_1DAED9EC0);
  v160 = (v159 + *(v227 + 36));
  *v160 = sub_1DAD75858;
  v160[1] = v158;
  v160[2] = 0;
  v160[3] = 0;
  v161 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDateDidChangePublisher;
  swift_beginAccess();
  v255 = v79;
  v162 = *(v79 + v161);
  v256 = v162;
  v163 = v155;
  sub_1DAD76078(v155, v156);
  v164 = swift_allocObject();
  sub_1DAD79914(v156, v164 + v157, type metadata accessor for LiveWidgetEntryView);
  v165 = v232;
  sub_1DAD7C48C(v159, v232, &qword_1ECC096F8, &qword_1DAED9EC8);
  v166 = v229;
  *(v165 + *(v229 + 52)) = v162;
  v167 = (v165 + *(v166 + 56));
  *v167 = sub_1DAE388F0;
  v167[1] = v164;
  v168 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponentsDidChangePublisher;
  v169 = v255;
  swift_beginAccess();
  v245 = *(v169 + v168);
  v170 = v245;
  sub_1DAD76078(v163, v156);
  v171 = swift_allocObject();
  v172 = v241;
  sub_1DAD79914(v156, v171 + v157, v241);
  v173 = v235;
  sub_1DAD7C48C(v165, v235, &qword_1ECC09700, &qword_1DAED9ED0);
  v174 = v231;
  *(v173 + *(v231 + 52)) = v170;
  v175 = (v173 + *(v174 + 56));
  *v175 = sub_1DAE38F54;
  v175[1] = v171;
  v176 = v255;
  v177 = *(v255 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);
  sub_1DAD76078(v163, v156);
  v178 = swift_allocObject();
  sub_1DAD79914(v156, v178 + v157, v172);
  v179 = v173;
  v180 = v236;
  sub_1DAD7C48C(v179, v236, &qword_1ECC09708, &qword_1DAED9ED8);
  v181 = v234;
  *(v180 + *(v234 + 52)) = v177;
  v182 = (v180 + *(v181 + 56));
  *v182 = sub_1DADC22AC;
  v182[1] = v178;
  v183 = *(v247 + 36);
  v184 = v237;
  v185 = &v237[*(v233 + 36)];
  v186 = *(type metadata accessor for InteractiveWidgetSetupViewModifier() + 24);
  v187 = sub_1DAECEDEC();
  (*(*(v187 - 8) + 16))(&v185[v186], v163 + v183, v187);
  v188 = v176;
  v259 = v176;
  v189 = off_1F56B54F8;
  v190 = type metadata accessor for LiveWidgetEntryViewModel(0);
  swift_retain_n();

  *v185 = v189();
  *(v185 + 1) = v191;
  v257 = v190;
  LOBYTE(v163) = off_1F56B5500();

  v185[16] = v163 & 1;
  sub_1DAD7C48C(v180, v184, &qword_1ECC09710, &qword_1DAED9EE0);
  v192 = v248;
  sub_1DAD79AF4(v248);
  v193 = v238;
  sub_1DAE377C8(v192, v238);
  sub_1DAD760DC(v192, type metadata accessor for DebugInfo);
  sub_1DAD64398(v184, &qword_1ECC09718, &qword_1DAED9EE8);
  v194 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  swift_beginAccess();
  v195 = v244;
  sub_1DAE374D8(*(v188 + v194));
  sub_1DAD64398(v193, &qword_1ECC09720, &qword_1DAED9EF0);
  v196 = *v258;
  sub_1DAD7305C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);
  sub_1DAECF22C();
  swift_getKeyPath();
  v197 = v249;
  sub_1DAECF23C();

  v198 = v250;
  sub_1DAD6495C(v197, &v250[*(v251 + 36)], &qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAD6495C(v195, v198, &qword_1ECC09728, &qword_1DAED9EF8);
  sub_1DAD6495C(v198, v253, &qword_1ECC09690, &qword_1DAED9E60);
  swift_storeEnumTagMultiPayload();
  sub_1DAE38958();
  sub_1DAE38A14();
  v199 = v243;
  sub_1DAECFB1C();
  sub_1DAD64398(v198, &qword_1ECC09690, &qword_1DAED9E60);
  sub_1DAD64398(v197, &qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAD64398(v195, &qword_1ECC09728, &qword_1DAED9EF8);
  v200 = sub_1DAECF21C();
  v202 = v201;
  v203 = v254;
  sub_1DAD7C48C(v199, v254, &qword_1ECC09730, &unk_1DAED9F00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09790, &qword_1DAEDA270);
  v205 = (v203 + *(result + 36));
  *v205 = v200;
  v205[1] = v202;
  return result;
}

uint64_t sub_1DAD77BB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF6DC();
  *a1 = result;
  return result;
}

uint64_t sub_1DAD77CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF4BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77D24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF69C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAD77D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF6BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF5DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF76C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77F38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF54C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAD77F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
  swift_beginAccess();
  return sub_1DAD6495C(v3 + v4, a2, &unk_1ECC09EC0, &qword_1DAED7970);
}

void sub_1DAD78018()
{
  v1 = v0;
  v2 = sub_1DAECDCEC();
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v98 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v10 = *(*(v101 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v101);
  v102 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v98 - v13;
  v15 = type metadata accessor for LiveWidgetEntryView();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v100 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v98 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v98 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v106 = &v98 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v98 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v98 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v98 - v33;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v35 = sub_1DAECE06C();

  if ((v35 & 1) != 0 || MEMORY[0x1E127E800]("_logBodyEvaluation()"))
  {
    v36 = *(v15 + 36);
    sub_1DAD76078(v1, v34);
    sub_1DAD76078(v1, v32);
    sub_1DAD76078(v1, v29);
    v37 = v106;
    sub_1DAD76078(v1, v106);
    v38 = sub_1DAECEDCC();
    v39 = sub_1DAED203C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v108 = v100;
      *v40 = 136446978;
      v41 = *(v34 + 1);

      sub_1DAD760DC(v34, type metadata accessor for LiveWidgetEntryView);
      v42 = *(v41 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v43 = *(v41 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v44 = sub_1DAD6482C(v42, v43, &v108);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2050;
      v45 = *(v32 + 1);
      v46 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
      swift_beginAccess();
      v47 = *(v45 + v46);
      sub_1DAD760DC(v32, type metadata accessor for LiveWidgetEntryView);
      *(v40 + 14) = v47;
      *(v40 + 22) = 2082;
      v48 = *(v29 + 1);
      v49 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
      swift_beginAccess();
      sub_1DAD6495C(v48 + v49, v14, &unk_1ECC07D30, &unk_1DAED57E0);
      v50 = v102;
      sub_1DAD6495C(v14, v102, &unk_1ECC07D30, &unk_1DAED57E0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v53 = v104;
        v52 = v105;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1DAD64398(v14, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD760DC(v29, type metadata accessor for LiveWidgetEntryView);
          sub_1DAD64398(v50, &unk_1ECC07D30, &unk_1DAED57E0);
          v54 = 0xEB00000000726564;
          v55 = 0x6C6F686563616C50;
        }

        else
        {
          sub_1DAD64398(v50, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD64398(v14, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD760DC(v29, type metadata accessor for LiveWidgetEntryView);
          v54 = 0xE500000000000000;
          v55 = 0x7974706D45;
        }
      }

      else
      {
        sub_1DAD64398(v14, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD760DC(v29, type metadata accessor for LiveWidgetEntryView);
        sub_1DAD64398(v50, &unk_1ECC07D30, &unk_1DAED57E0);
        v54 = 0xE400000000000000;
        v55 = 1702259020;
        v53 = v104;
        v52 = v105;
      }

      v78 = v106;
      v79 = sub_1DAD6482C(v55, v54, &v108);

      *(v40 + 24) = v79;
      *(v40 + 32) = 2082;
      v80 = *(v78 + 8);
      v81 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
      swift_beginAccess();
      v82 = v103;
      sub_1DAD6495C(v80 + v81, v103, &qword_1ECC07CE8, &qword_1DAED6F60);
      if ((*(v53 + 48))(v82, 1, v52))
      {
        v83 = 1701736302;
        sub_1DAD64398(v82, &qword_1ECC07CE8, &qword_1DAED6F60);
        v84 = 0xE400000000000000;
      }

      else
      {
        v85 = v99;
        (*(v53 + 16))(v99, v82, v52);
        sub_1DAD64398(v82, &qword_1ECC07CE8, &qword_1DAED6F60);
        if (qword_1EE00A700 != -1)
        {
          swift_once();
        }

        v86 = qword_1EE00A708;
        v87 = sub_1DAECDC5C();
        v88 = [v86 stringFromDate_];

        v83 = sub_1DAED1CEC();
        v84 = v89;

        (*(v53 + 8))(v85, v52);
      }

      sub_1DAD760DC(v78, type metadata accessor for LiveWidgetEntryView);
      v90 = sub_1DAD6482C(v83, v84, &v108);

      *(v40 + 34) = v90;
      _os_log_impl(&dword_1DAD61000, v38, v39, "[%{public}s] Rendering view: %{public}lld - with content: %{public}s and referenceDate %{public}s", v40, 0x2Au);
      v91 = v100;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v91, -1, -1);
      MEMORY[0x1E127F100](v40, -1, -1);

      return;
    }

    sub_1DAD760DC(v32, type metadata accessor for LiveWidgetEntryView);

    sub_1DAD760DC(v37, type metadata accessor for LiveWidgetEntryView);
    sub_1DAD760DC(v29, type metadata accessor for LiveWidgetEntryView);
    v56 = v34;
LABEL_13:
    sub_1DAD760DC(v56, type metadata accessor for LiveWidgetEntryView);
    return;
  }

  v57 = *(v15 + 36);
  sub_1DAD76078(v0, v24);
  sub_1DAD76078(v0, v21);
  v58 = v100;
  sub_1DAD76078(v0, v100);
  v59 = sub_1DAECEDCC();
  v60 = sub_1DAED200C();
  if (!os_log_type_enabled(v59, v60))
  {
    sub_1DAD760DC(v21, type metadata accessor for LiveWidgetEntryView);

    sub_1DAD760DC(v58, type metadata accessor for LiveWidgetEntryView);
    v56 = v24;
    goto LABEL_13;
  }

  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v107[0] = v62;
  *v61 = 136446722;
  v63 = *(v24 + 1);

  sub_1DAD760DC(v24, type metadata accessor for LiveWidgetEntryView);
  v64 = *(v63 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
  v65 = *(v63 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

  v66 = sub_1DAD6482C(v64, v65, v107);

  *(v61 + 4) = v66;
  *(v61 + 12) = 2050;
  v67 = *(v21 + 1);
  v68 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  swift_beginAccess();
  v69 = *(v67 + v68);
  sub_1DAD760DC(v21, type metadata accessor for LiveWidgetEntryView);
  *(v61 + 14) = v69;
  *(v61 + 22) = 2082;
  v70 = *(v58 + 8);
  v71 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  v72 = v70 + v71;
  v73 = v98;
  sub_1DAD6495C(v72, v98, &qword_1ECC07CE8, &qword_1DAED6F60);
  v75 = v104;
  v74 = v105;
  if ((*(v104 + 48))(v73, 1, v105))
  {
    v76 = 1701736302;
    sub_1DAD64398(v73, &qword_1ECC07CE8, &qword_1DAED6F60);
    v77 = 0xE400000000000000;
  }

  else
  {
    v92 = v99;
    (*(v75 + 16))(v99, v73, v74);
    sub_1DAD64398(v73, &qword_1ECC07CE8, &qword_1DAED6F60);
    if (qword_1EE00A700 != -1)
    {
      swift_once();
    }

    v93 = qword_1EE00A708;
    v94 = sub_1DAECDC5C();
    v95 = [v93 stringFromDate_];

    v76 = sub_1DAED1CEC();
    v77 = v96;

    (*(v75 + 8))(v92, v74);
    v58 = v100;
  }

  sub_1DAD760DC(v58, type metadata accessor for LiveWidgetEntryView);
  v97 = sub_1DAD6482C(v76, v77, v107);

  *(v61 + 24) = v97;
  _os_log_impl(&dword_1DAD61000, v59, v60, "[%{public}s] Rendering view: %{public}lld with referenceDate %{public}s", v61, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1E127F100](v62, -1, -1);
  MEMORY[0x1E127F100](v61, -1, -1);
}

uint64_t sub_1DAD78BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v10 = v25;
  if (v25 && (v25(&v25, v9), sub_1DAD660D8(v10), v25))
  {
    v23 = v25;
    v24 = 0;
    result = sub_1DAECFB1C();
    v12 = v25;
    v13 = v26;
  }

  else
  {
    v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
    swift_beginAccess();
    if (*(v2 + v14) == 1)
    {
      v15 = sub_1DAED064C();
    }

    else
    {
      v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
      swift_beginAccess();
      (*(v5 + 16))(v8, v2 + v16, v4);
      v17 = (*(v5 + 88))(v8, v4);
      if (v17 == *MEMORY[0x1E697DBB8])
      {
        v15 = sub_1DAED066C();
      }

      else if (v17 == *MEMORY[0x1E697DBA8])
      {
        v15 = sub_1DAED063C();
      }

      else
      {
        v18 = sub_1DAED060C();
        (*(v5 + 8))(v8, v4);
        v15 = v18;
      }
    }

    v19 = v15;
    v20 = 1;
    result = sub_1DAECFB1C();
    v12 = v21;
    v13 = v22;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  return result;
}

unint64_t sub_1DAD78E78()
{
  result = qword_1EE005928;
  if (!qword_1EE005928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B58, &qword_1DAEDA160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005928);
  }

  return result;
}

uint64_t type metadata accessor for DebugInfo()
{
  result = qword_1EE005F58;
  if (!qword_1EE005F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD78F54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09808, &qword_1DAEDA4E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v29 - v3);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09810, &qword_1DAEDA4E8);
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = (&v29 - v6);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09748, &qword_1DAED9F50);
  v8 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v31 = (&v29 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09740, &qword_1DAED9F48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = sub_1DAD79424(v0);
  v15 = v0[1];
  v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (!v17)
  {
    goto LABEL_5;
  }

  if ([v17 filterStyle] != 7)
  {
    goto LABEL_5;
  }

  sub_1DAD648F8(v15 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v35);
  v30 = v4;
  v18 = v36;
  v19 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v4 = v30;
  v20 = (*(v19 + 16))(v18, v19);
  v21 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = [v21 preferredBackgroundStyle];

  if (!v22)
  {
    v24 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
    swift_beginAccess();
    if (*(v15 + v24) == 1)
    {
      v34 = v14;

      v25 = sub_1DAED091C();
      v26 = v31;
      *v31 = v25;
      *(v26 + 8) = v27;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09818, &qword_1DAEDA4F0);
      sub_1DAE37DD8(&v34, (v26 + *(v28 + 44)));

      sub_1DAD6495C(v26, v7, &qword_1ECC09748, &qword_1DAED9F50);
      swift_storeEnumTagMultiPayload();
      sub_1DAD64B94(&qword_1EE005808, &qword_1ECC09748, &qword_1DAED9F50);
      sub_1DAECFB1C();
      sub_1DAD64398(v26, &qword_1ECC09748, &qword_1DAED9F50);
    }

    else
    {
      *v7 = v14;
      swift_storeEnumTagMultiPayload();
      sub_1DAD64B94(&qword_1EE005808, &qword_1ECC09748, &qword_1DAED9F50);

      sub_1DAECFB1C();
    }

    sub_1DAD6495C(v13, v4, &qword_1ECC09740, &qword_1DAED9F48);
    swift_storeEnumTagMultiPayload();
    sub_1DAE38838();
    sub_1DAECFB1C();

    return sub_1DAD64398(v13, &qword_1ECC09740, &qword_1DAED9F48);
  }

  else
  {
LABEL_5:
    *v4 = v14;
    swift_storeEnumTagMultiPayload();
    sub_1DAE38838();
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DAD79424(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v7 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  if (*(v7 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated))
  {
    v12 = a1[2];
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097E8, &qword_1DAEDA4C0);
    sub_1DAED077C();
    result = v14;
    if (!v14)
    {
      v12 = sub_1DAED064C();
      return sub_1DAED087C();
    }
  }

  else
  {
    v12 = a1[2];
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097E8, &qword_1DAEDA4C0);
    sub_1DAED077C();
    result = v14;
    if (!v14)
    {
      if (*(v7 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce) != 1 || *(v7 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) == 1)
      {
        LOBYTE(v12) = 1;
        sub_1DAD8EC1C(&v12);
      }

      v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
      swift_beginAccess();
      sub_1DAD6495C(v7 + v10, v5, &unk_1ECC07D30, &unk_1DAED57E0);
      v11 = sub_1DAD75EB4();
      sub_1DAD64398(v5, &unk_1ECC07D30, &unk_1DAED57E0);
      return v11;
    }
  }

  return result;
}

uint64_t sub_1DAD795DC()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAD79620()
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v18);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC14WidgetRendererP33_F99F790B2CEECA46DDAC66C73F34FEEC20DebugOverlayObserver__enabled;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v13 = sub_1DAECDFFC();

  v19 = v13 & 1;
  sub_1DAECEEFC();
  (*(v8 + 32))(v0 + v12, v11, v7);
  sub_1DAECE1AC();
  v14 = sub_1DAECE00C();

  v20 = v14;
  swift_beginAccess();
  sub_1DAECEF0C();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
  sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240);
  sub_1DAECF01C();

  v15 = v18;
  (*(v1 + 16))(v17, v6, v18);
  swift_beginAccess();
  sub_1DAECEF1C();
  swift_endAccess();
  (*(v1 + 8))(v6, v15);
  return v0;
}

uint64_t sub_1DAD79914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t (*sub_1DAD7997C())(uint64_t)
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_1DAEA8570;
}

uint64_t sub_1DAD79A38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DAD79A7C()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v3;
}

uint64_t sub_1DAD79AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09678, &qword_1DAED9DF8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v60 - v11;
  v13 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v72);
  v14 = v73;
  v15 = v74;
  __swift_project_boxed_opaque_existential_1(v72, v73);
  v16 = (*(v15 + 16))(v14, v15);
  sub_1DAED0C3C();

  v17 = sub_1DAED0DDC();
  v18 = *(*(v17 - 8) + 56);
  v62 = v12;
  v18(v12, 0, 1, v17);
  v19 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource;
  swift_beginAccess();
  v61 = v19;
  sub_1DAD6495C(v2 + v19, v69, &unk_1ECC07D90, &unk_1DAED5840);
  v20 = v70;
  v63 = v10;
  if (v70)
  {
    v21 = v13;
    v22 = v71;
    v23 = __swift_project_boxed_opaque_existential_1(v69, v70);
    v60[1] = v60;
    v24 = *(v20 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x1EEE9AC00](v23);
    v27 = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27);
    sub_1DAD64398(v69, &unk_1ECC07D90, &unk_1DAED5840);
    v28 = (*(v22 + 16))(v20, v22);
    (*(v24 + 8))(v27, v20);
    sub_1DAED0C3C();

    v13 = v21;
    v18(v10, 0, 1, v17);
  }

  else
  {
    sub_1DAD64398(v69, &unk_1ECC07D90, &unk_1DAED5840);
    v18(v10, 1, 1, v17);
  }

  sub_1DAD648F8(v2 + v13, v69);
  v29 = v70;
  v30 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v31 = (*(v30 + 16))(v29, v30);
  sub_1DAED0C5C();

  v32 = v67;
  if (v67)
  {
    v33 = __swift_project_boxed_opaque_existential_1(v66, v67);
    v34 = *(v32 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x1EEE9AC00](v33);
    v37 = v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37);
    sub_1DAD64398(v66, &unk_1ECC08880, &unk_1DAED6F50);
    sub_1DAED1A3C();
    (*(v34 + 8))(v37, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
  }

  else
  {
    sub_1DAD64398(v66, &unk_1ECC08880, &unk_1DAED6F50);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    v38 = sub_1DAECDCEC();
    (*(*(v38 - 8) + 56))(v65, 1, 1, v38);
  }

  sub_1DAD648F8(v2 + v13, v69);
  v39 = v70;
  v40 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v41 = (*(v40 + 16))(v39, v40);
  v42 = sub_1DAED0BBC();
  v44 = v43;

  sub_1DAD6495C(v2 + v61, v66, &unk_1ECC07D90, &unk_1DAED5840);
  v45 = v67;
  if (v67)
  {
    v46 = v68;
    v47 = __swift_project_boxed_opaque_existential_1(v66, v67);
    v48 = *(v45 - 8);
    v49 = *(v48 + 64);
    MEMORY[0x1EEE9AC00](v47);
    v51 = v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v51);
    sub_1DAD64398(v66, &unk_1ECC07D90, &unk_1DAED5840);
    v52 = (*(v46 + 16))(v45, v46);
    (*(v48 + 8))(v51, v45);
    v53 = sub_1DAED0BBC();
    v45 = v54;
  }

  else
  {
    sub_1DAD64398(v66, &unk_1ECC07D90, &unk_1DAED5840);
    v53 = 0;
  }

  v55 = v64;
  sub_1DAD7C48C(v62, v64, &qword_1ECC09678, &qword_1DAED9DF8);
  v56 = type metadata accessor for DebugInfo();
  sub_1DAD7C48C(v63, v55 + v56[5], &qword_1ECC09678, &qword_1DAED9DF8);
  sub_1DAD7C48C(v65, v55 + v56[6], &qword_1ECC07CE8, &qword_1DAED6F60);
  v57 = (v55 + v56[7]);
  *v57 = v42;
  v57[1] = v44;
  v58 = (v55 + v56[8]);
  *v58 = v53;
  v58[1] = v45;
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  return __swift_destroy_boxed_opaque_existential_1Tm(v72);
}

unint64_t sub_1DAD7A244()
{
  result = qword_1EE00BE58;
  if (!qword_1EE00BE58)
  {
    sub_1DAECF32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE58);
  }

  return result;
}

uint64_t sub_1DAD7A29C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DebugOverlayObserver();
  result = sub_1DAECEE4C();
  *a1 = result;
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

uint64_t sub_1DAD7A2E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D88, &qword_1DAED8148);
  v9 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v11 = &v41 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D90, &qword_1DAED8150);
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v41 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (LOBYTE(v65[0]) == 1)
  {
    v15 = sub_1DAED091C();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DA0, &qword_1DAED81A8) + 36);
    v43 = a5;
    v19 = &v14[v18];
    *v19 = sub_1DAED091C();
    v19[1] = v20;
    v21 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DB8, &qword_1DAED81C0) + 44);
    v41 = v11;
    sub_1DAE16DA8(a2, a3 & 1, v21);
    v22 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DA8, &qword_1DAED81B0) + 36));
    *v22 = v15;
    v22[1] = v17;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D98, &qword_1DAED81A0);
    (*(*(v42 - 8) + 16))(v14, a1, v42);
    v23 = sub_1DAED090C();
    v25 = v24;
    sub_1DAE17378(a2, a3 & 1, &v48);
    v26 = v52;
    v27 = v53;
    v60 = v52;
    v61 = v53;
    v28 = v54;
    v29 = v55;
    v62 = v54;
    v63 = v55;
    v30 = v50;
    v31 = v51;
    v58 = v50;
    v59 = v51;
    v32 = v48;
    v33 = v49;
    v56 = v48;
    v57 = v49;
    *&v64 = v23;
    *(&v64 + 1) = v25;
    v34 = &v14[*(v46 + 36)];
    v35 = v64;
    *(v34 + 7) = v55;
    *(v34 + 8) = v35;
    *(v34 + 6) = v62;
    v36 = v59;
    *(v34 + 2) = v58;
    *(v34 + 3) = v36;
    v37 = v61;
    *(v34 + 4) = v60;
    *(v34 + 5) = v37;
    v38 = v57;
    *v34 = v56;
    *(v34 + 1) = v38;
    v65[4] = v26;
    v65[5] = v27;
    v65[6] = v28;
    v65[7] = v29;
    v65[0] = v32;
    v65[1] = v33;
    v65[2] = v30;
    v65[3] = v31;
    v66 = v23;
    v67 = v25;
    sub_1DAD6495C(&v56, &v47, &qword_1ECC08DB0, &qword_1DAED81B8);
    sub_1DAD64398(v65, &qword_1ECC08DB0, &qword_1DAED81B8);
    sub_1DAD6495C(v14, v41, &qword_1ECC08D90, &qword_1DAED8150);
    swift_storeEnumTagMultiPayload();
    sub_1DAD7A754();
    sub_1DAD64B94(&qword_1EE005900, &qword_1ECC08D98, &qword_1DAED81A0);
    sub_1DAECFB1C();
    return sub_1DAD64398(v14, &qword_1ECC08D90, &qword_1DAED8150);
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D98, &qword_1DAED81A0);
    (*(*(v40 - 8) + 16))(v11, a1, v40);
    swift_storeEnumTagMultiPayload();
    sub_1DAD7A754();
    sub_1DAD64B94(&qword_1EE005900, &qword_1ECC08D98, &qword_1DAED81A0);
    return sub_1DAECFB1C();
  }
}

unint64_t sub_1DAD7A754()
{
  result = qword_1EE005A58;
  if (!qword_1EE005A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08D90, &qword_1DAED8150);
    sub_1DADBD100();
    sub_1DAD64B94(&qword_1EE0059D0, &qword_1ECC08DB0, &qword_1DAED81B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A58);
  }

  return result;
}

uint64_t sub_1DAD7A80C(unint64_t *a1)
{
  sub_1DAEB3B14(*a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A960, &unk_1DAEDF100);
  sub_1DAED100C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2A8, &qword_1DAEDD820);
  v1 = sub_1DAED11DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DAED6200;
  v6 = (v5 + v4);
  *v6 = 0xD000000000000014;
  v6[1] = 0x80000001DAEDEE90;
  (*(v2 + 104))(v6, *MEMORY[0x1E6993EB0], v1);
  sub_1DADBE4FC(v5);
  swift_setDeallocating();
  (*(v2 + 8))(v6, v1);
  swift_deallocClassInstance();

  return sub_1DAED135C();
}

uint64_t sub_1DAD7A9C4()
{
  v1 = OBJC_IVAR____TtC14WidgetRendererP33_F99F790B2CEECA46DDAC66C73F34FEEC20DebugOverlayObserver__enabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t InteractiveWidgetSetupViewModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1DAECF32C();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InteractiveWidgetSetupViewModifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09230, &qword_1DAED91B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  sub_1DAD7AED8(v1, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_1DAD7AF3C(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09238, &qword_1DAED91B8);
  v18 = sub_1DAD64B94(&qword_1EE00BE50, &qword_1ECC09238, &qword_1DAED91B8);
  sub_1DAED04DC();

  if (*(v1 + 16) == 1)
  {
    sub_1DAECF2FC();
    v19 = v23;
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DAD7A244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
    sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
    v20 = v23;
    sub_1DAED23CC();
    v19 = v20;
  }

  v26 = v17;
  v27 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1DAED05BC();
  (*(v24 + 8))(v6, v19);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1DAD7ADE4()
{
  v1 = type metadata accessor for InteractiveWidgetSetupViewModifier();
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  if (*v3)
  {
    v4 = *(v3 + 1);
  }

  v5 = *(v1 + 24);
  v6 = sub_1DAECEDEC();
  (*(*(v6 - 8) + 8))(&v3[v5], v6);

  return swift_deallocObject();
}

uint64_t sub_1DAD7AED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveWidgetSetupViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD7AF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveWidgetSetupViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DAD7AFA0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v113 = v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v114 = v102 - v9;
  v10 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
  v11 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v11)
  {
    if (a1)
    {
      type metadata accessor for WidgetSceneContentViewController();
      v12 = v11;
      v13 = a1;
      v14 = sub_1DAED228C();

      if (v14)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v15 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription;
  if (*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription])
  {
    v16 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription];

    sub_1DAECEE2C();

    v17 = *&v2[v15];
  }

  v108 = v15;
  *&v2[v15] = 0;

  v18 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber;
  if (*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber])
  {
    v19 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber];

    sub_1DAECEE2C();

    v20 = *&v2[v18];
  }

  v109 = v18;
  *&v2[v18] = 0;

  v21 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener;
  if (*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener])
  {
    v22 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener];

    sub_1DAECEE2C();

    v23 = *&v2[v21];
  }

  v110 = v21;
  *&v2[v21] = 0;

  p_cb = (&OBJC_PROTOCOL____UISceneBSActionResponding + 64);
  if (a1)
  {
    v25 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x288);
    v26 = a1;
    v25();
    v27 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_rootViewController];
    sub_1DAE006B8(v26);

    v28 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
    v29 = &v28[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText];
    v30 = *&v28[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText + 8];
    *v29 = 0;
    *(v29 + 1) = 0;
    v31 = v28;

    v32 = *&v31[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView];
    v33 = &v32[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
    v34 = *&v32[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText + 8];
    *v33 = 0;
    *(v33 + 1) = 0;
    v35 = v32;

    [v35 setNeedsLayout];

    p_cb = &OBJC_PROTOCOL____UISceneBSActionResponding.cb;
  }

  v36 = *&v2[v10];
  if (v36)
  {
    v37 = *&v2[v10];
    v38 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
    v39 = v36;
    v40 = *&v36[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
    v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
    swift_beginAccess();
    LOBYTE(v40) = *(v40 + v41);
    v42 = v39;
    sub_1DADB4574(v40);
    sub_1DADB48A4();
    v43 = *&v2[*(p_cb + 411)];
    v44 = v42;
    v45 = v43;
    sub_1DAD6A390(v44);
    v46 = [v45 view];
    if (v46)
    {
      v47 = v46;
      v48 = [v44 view];
      if (v48)
      {
        v49 = v48;
        [v47 sendSubviewToBack_];

        v50 = [v44 view];
        if (v50)
        {
          [*&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_window] bounds];
          [v50 setFrame_];

          v51 = [v44 view];
          v112 = v44;

          if (v51)
          {
            v52 = v38;
            [v51 setNeedsLayout];

            v53 = v112;
            v54 = [v112 view];

            if (v54)
            {
              [v54 layoutIfNeeded];

              v55 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
              v107 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
              v56 = v107;
              v57 = v55;
              [v56 contentType];
              v58 = NSStringFromCHSWidgetContentType();
              v59 = sub_1DAED1CEC();
              v61 = v60;

              v62 = &v57[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText];
              v63 = *&v57[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText + 8];
              *v62 = v59;
              v62[1] = v61;

              v64 = *&v57[OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView];
              v65 = &v64[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
              v66 = *&v64[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText + 8];
              *v65 = v59;
              v65[1] = v61;

              v67 = v64;

              [v67 setNeedsLayout];

              v111 = v52;
              sub_1DAD648F8(*(v37 + v52) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v118);
              v68 = v119;
              v69 = v120;
              __swift_project_boxed_opaque_existential_1(v118, v119);
              v70 = *(v69 + 16);

              v71 = v70(v68, v69);
              v72 = sub_1DAED0C0C();

              __swift_destroy_boxed_opaque_existential_1Tm(v118);
              v118[0] = v72;
              sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
              v73 = sub_1DAED20EC();
              v117 = v73;
              v104 = sub_1DAED20AC();
              v74 = *(v104 - 8);
              v103 = *(v74 + 56);
              v105 = v74 + 56;
              v75 = v113;
              v103(v113, 1, 1, v104);
              v102[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
              v106 = MEMORY[0x1E695BED8];
              sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
              v102[2] = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
              v76 = v37;
              v102[0] = v37;
              v77 = v114;
              sub_1DAECEFBC();
              sub_1DAD64398(v75, &unk_1ECC07D20, &unk_1DAED57D0);

              v78 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v79 = swift_allocObject();
              *(v79 + 16) = sub_1DADC505C;
              *(v79 + 24) = v78;
              v102[1] = sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0);
              v80 = v116;
              v81 = sub_1DAECF00C();

              v115 = *(v115 + 8);
              (v115)(v77, v80);
              v82 = *&v2[v108];
              *&v2[v108] = v81;

              v118[0] = *(*(v76 + v111) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
              sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
              v118[0] = sub_1DAECEF6C();
              v83 = sub_1DAED20EC();
              v117 = v83;
              v103(v75, 1, 1, v104);
              sub_1DAECEFBC();
              sub_1DAD64398(v75, &unk_1ECC07D20, &unk_1DAED57D0);

              v84 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v85 = swift_allocObject();
              *(v85 + 16) = v84;
              v86 = v112;
              *(v85 + 24) = v112;
              v87 = swift_allocObject();
              *(v87 + 16) = sub_1DAE0C914;
              *(v87 + 24) = v85;
              v88 = v86;
              v89 = sub_1DAECF00C();

              (v115)(v77, v80);
              v90 = *&v2[v109];
              *&v2[v109] = v89;

              v91 = v111;
              v92 = v102[0];
              v118[0] = *(*(v102[0] + v111) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryWillChangePublisher);
              swift_allocObject();
              swift_unknownObjectWeakInit();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
              sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780);
              v93 = sub_1DAECF00C();

              v94 = *&v2[v110];
              *&v2[v110] = v93;

              v95 = *(v92 + v91);

              v96 = *(v95 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);

              v118[0] = v96;
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v97 = sub_1DAECF00C();

              v98 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener];
              *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener] = v97;

              sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
              v99 = swift_allocObject();
              v100 = v107;
              *(v99 + 16) = v107;
              *(v99 + 24) = 0;
              *(v99 + 32) = 1;
              *(v99 + 40) = v2;
              v101 = v100;
              v2;
              sub_1DAED22FC();

              sub_1DAE09A30();

              return;
            }

LABEL_26:
            __break(1u);
            return;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }
}

uint64_t sub_1DAD7BBE4()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DAD7BC1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DAD7BC58()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for _InProcessActivityInstanceView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1DADF7140(*v3, *(v3 + 8), *(v3 + 16));
  v4 = *(v3 + 24);

  v5 = *(v3 + 40);

  v6 = *(v3 + 48);

  v7 = v1[8];
  v8 = sub_1DAED182C();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = *(v3 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 64);
  v4 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));
  v5 = sub_1DAECFF0C();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v2[8];
  v7 = sub_1DAECEDEC();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for LiveWidgetEntryView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 3);

  v7 = *(v3 + 5);

  v8 = *(v3 + 7);

  v9 = v1[11];
  v10 = sub_1DAECEDEC();
  (*(*(v10 - 8) + 8))(&v3[v9], v10);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for ActivityView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 3);

  v7 = *(v3 + 5);

  v8 = v1[9];
  v9 = sub_1DAECEDEC();
  (*(*(v9 - 8) + 8))(&v3[v8], v9);

  return swift_deallocObject();
}

unint64_t sub_1DAD7C1DC()
{
  result = qword_1EE007CF8[0];
  if (!qword_1EE007CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE007CF8);
  }

  return result;
}

const char *sub_1DAD7C264(char a1)
{
  result = "BackgroundAbsentCheck";
  switch(a1)
  {
    case 1:
      result = "AnimatedTransition";
      break;
    case 2:
      result = "InteractiveWidgets";
      break;
    case 3:
      result = "PrefetchRemoteSnapshots2";
      break;
    case 4:
      result = "InteractiveSystemSmall";
      break;
    case 5:
      result = "FirstPartyContentMargins";
      break;
    case 6:
      result = "InteractiveWatchOS";
      break;
    case 7:
      result = "AnimatedTransitionWatchOS";
      break;
    case 8:
      result = "RelevanceDuringTimelineReload";
      break;
    case 9:
      result = "ContextualWidgets";
      break;
    case 10:
      result = "ControlsBuildAndRunHack";
      break;
    case 11:
      result = "IntelligentWidgets";
      break;
    case 12:
      result = "RemoteControls";
      break;
    case 13:
      result = "ReverseRemoteWidgetSource";
      break;
    case 14:
      result = "FFGatedWidgets";
      break;
    case 15:
      result = "CorrectDominoContentMargins";
      break;
    case 16:
      result = "ForceLayerSeparation";
      break;
    case 17:
      result = "GlassPrototype";
      break;
    case 18:
      result = "WidgetExtensionRunQOSUtility";
      break;
    case 19:
      result = "UIIntelligence";
      break;
    default:
      return result;
  }

  return result;
}

id sub_1DAD7C428()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40)) + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1DAD7C48C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAD7C4F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080D8, &qword_1DAED6260);
  result = sub_1DAED277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1DAED227C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_1DAD7C75C()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
  sub_1DAD7CAF4();
  v3 = sub_1DAED1F6C();

  v26 = v0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_1DAED242C();
    sub_1DAED1F9C();
    v3 = v28;
    v4 = v29;
    v5 = v30;
    v6 = v31;
    v7 = v32;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v25 = 0;
  v11 = (v5 + 64) >> 6;
LABEL_9:
  while (2)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      if (v3 < 0)
      {
        if (!sub_1DAED24BC())
        {
          goto LABEL_24;
        }

        swift_dynamicCast();
        v16 = v27;
        v6 = v12;
        v7 = v13;
        if (!v27)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v14 = v12;
        v15 = v13;
        v6 = v12;
        if (!v13)
        {
          while (1)
          {
            v6 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v6 >= v11)
            {
              goto LABEL_24;
            }

            v15 = *(v4 + 8 * v6);
            ++v14;
            if (v15)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

LABEL_15:
        v7 = (v15 - 1) & v15;
        v16 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v15)))));
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {

        goto LABEL_9;
      }

      v18 = [v17 _FBSScene];
      v19 = [v18 settings];

      LODWORD(v18) = [v19 isForeground];
      v12 = v6;
      v13 = v7;
    }

    while (!v18);
    if (!__OFADD__(v25++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  sub_1DAD70B20();
  if (qword_1EE00AC50 == -1)
  {
    goto LABEL_25;
  }

LABEL_29:
  swift_once();
LABEL_25:
  v21 = sub_1DAECEDEC();
  __swift_project_value_buffer(v21, qword_1EE011B58);

  v22 = sub_1DAECEDCC();
  v23 = sub_1DAED203C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349312;
    *(v24 + 4) = v25;
    *(v24 + 12) = 2050;
    *(v24 + 14) = [*(v26 + 32) count];

    _os_log_impl(&dword_1DAD61000, v22, v23, "Foreground scene count: %{public}ld (with content: %{public}ld)", v24, 0x16u);
    MEMORY[0x1E127F100](v24, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1DAD7CAF4()
{
  result = qword_1EE00A890;
  if (!qword_1EE00A890)
  {
    sub_1DAD674D4(255, qword_1EE00A898, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00A890);
  }

  return result;
}

uint64_t sub_1DAD7CB5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAD7CBB4()
{
  v1 = *&v0[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v1)
  {
    v12 = v1;
    if ([v12 _appearState] != 2)
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v2 = sub_1DAECEDEC();
      __swift_project_value_buffer(v2, qword_1EE011748);
      v3 = v0;
      v4 = sub_1DAECEDCC();
      v5 = sub_1DAED203C();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v13 = v7;
        *v6 = 136446210;
        v8 = &v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v10 = *(v8 + 1);

        v11 = sub_1DAD6482C(v9, v10, &v13);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] Will appear", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x1E127F100](v7, -1, -1);
        MEMORY[0x1E127F100](v6, -1, -1);
      }

      [v12 beginAppearanceTransition:1 animated:0];
      [v12 endAppearanceTransition];
    }
  }
}

char *sub_1DAD7CD98(NSObject *a1)
{
  v2 = v1;
  if (qword_1EE005478 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = [qword_1EE005480 objectForKey_];
    if (!v4)
    {
      goto LABEL_27;
    }

    v5 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      swift_unknownObjectRelease();
LABEL_27:
      __break(1u);
LABEL_28:
      result = swift_unknownObjectRelease();
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    result = [qword_1EE005480 objectForKey_];
    if (!result)
    {
      goto LABEL_29;
    }

    v7 = result;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      goto LABEL_28;
    }

    v8 = *&v7[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window];
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = v8;
    swift_unknownObjectRelease();
    v10 = objc_allocWithZone(type metadata accessor for WidgetSceneConnection());
    v11 = a1;
    sub_1DAD6A568(v11, v5, v9, v10);
    v13 = v12;
    v14 = [v11 _FBSScene];
    v15 = [v14 settings];

    [v15 frame];
    v17 = v16;
    v19 = v18;

    v20 = [v11 widget];
    [v20 family];

    CHSWidgetFamilyIsAccessory();
    if (qword_1EE00AC50 != -1)
    {
      swift_once();
    }

    v21 = v17 * v19;
    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE011B58);
    v23 = v11;

    a1 = sub_1DAECEDCC();
    v24 = sub_1DAED203C();

    if (!os_log_type_enabled(a1, v24))
    {
      break;
    }

    v47 = v13;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49[0] = v26;
    *v25 = 136446978;
    v27 = [v23 _FBSScene];
    v28 = [v27 identifier];

    v29 = sub_1DAED1CEC();
    v31 = v30;

    v32 = sub_1DAD6482C(v29, v31, v49);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2050;
    *(v25 + 14) = v21;
    *(v25 + 22) = 2082;
    swift_beginAccess();
    v33 = 0;
    v34 = *(v2 + 40);
    v35 = 1 << *(v34 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & *(v34 + 64);
    v38 = (v35 + 63) >> 6;
    for (i = 0.0; v37; i = i + *(*(v34 + 56) + ((v40 << 9) | (8 * v41))))
    {
      v40 = v33;
LABEL_19:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
    }

    while (1)
    {
      v40 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        v42 = sub_1DAED1F3C();
        v44 = sub_1DAD6482C(v42, v43, v49);

        *(v25 + 24) = v44;
        *(v25 + 32) = 2050;
        *(v25 + 34) = *(v2 + 48);
        _os_log_impl(&dword_1DAD61000, a1, v24, "Add new foreground content: %{public}s, effectiveAreaConsumed=%{public}f, totalConsumed=%{public}s, maxAreaAllowed=%{public}f", v25, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v26, -1, -1);
        MEMORY[0x1E127F100](v25, -1, -1);

        goto LABEL_23;
      }

      v37 = *(v34 + 64 + 8 * v40);
      ++v33;
      if (v37)
      {
        v33 = v40;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_23:
  [*(v2 + 32) addObject_];
  swift_beginAccess();
  v45 = *(v2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_1DAD80D9C(v23, isUniquelyReferenced_nonNull_native, v21);
  *(v2 + 40) = v48;
  swift_endAccess();
  return v13;
}

uint64_t type metadata accessor for WidgetRendererSession()
{
  result = qword_1EE008100;
  if (!qword_1EE008100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD7D2C8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v22 = 45;
  v23 = 0xE100000000000000;
  v21[2] = &v22;

  v4 = sub_1DAD8D150(sub_1DAD8D254, v21, v3, v2);
  if ((v5 & 1) == 0)
  {
    v6 = sub_1DAD8D2CC(v4, v3, v2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v3 = MEMORY[0x1E127DA00](v6, v8, v10, v12);
    v2 = v13;
  }

  v14 = *(a1 + 48);
  v15 = NSStringFromCHSWidgetContentType();
  if (!v15)
  {
    sub_1DAED1CEC();
    v15 = sub_1DAED1CBC();
  }

  v16 = [*(a1 + 32) _loggingIdentifierWithMetrics_prefix_];

  v17 = sub_1DAED1CEC();
  v19 = v18;

  v22 = v17;
  v23 = v19;
  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  MEMORY[0x1E127DA50](v3, v2);

  MEMORY[0x1E127DA50](41, 0xE100000000000000);
  return v22;
}

uint64_t sub_1DAD7D43C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DAED289C() & 1;
  }
}

void sub_1DAD7D4B8()
{
  v1 = v0;
  v2 = sub_1DAECE20C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v8 = v3[2];
  v8(v6, v0 + v7, v2);
  sub_1DAD7D898(&qword_1EE00A6B8, MEMORY[0x1E6993FA8]);
  v9 = sub_1DAED1CAC();
  v29 = v3[1];
  v29(v6, v2);
  if ((v9 & 1) == 0)
  {
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v10 = sub_1DAECEDEC();
    __swift_project_value_buffer(v10, qword_1EE0117D8);

    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v13 = 136446466;
      HIDWORD(v26) = v12;
      v28 = v8;
      v14 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v15 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v16 = sub_1DAD6482C(v14, v15, v30);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v28(v6, v1 + v7, v2);
      v17 = sub_1DAECE1EC();
      v19 = v18;
      v29(v6, v2);
      v20 = sub_1DAD6482C(v17, v19, v30);
      v8 = v28;

      *(v13 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v11, BYTE4(v26), "[%{public}s] Task priority did change: %{public}s", v13, 0x16u);
      v21 = v27;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v21, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) == 1)
    {
      sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v30);
      v22 = v31;
      v23 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v8(v6, v1 + v7, v2);
      v24 = *(v23 + 144);
      v25 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
      v24(v6, v25, v22, v23);

      v29(v6, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }
  }
}