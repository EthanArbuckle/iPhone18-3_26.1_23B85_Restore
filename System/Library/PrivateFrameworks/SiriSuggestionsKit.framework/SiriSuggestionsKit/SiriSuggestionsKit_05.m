uint64_t BaseNotificationObserver.deinit()
{
  BaseNotificationObserver.cancel()();
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t BaseNotificationObserver.__deallocating_deinit()
{
  BaseNotificationObserver.deinit();
  v0 = OUTLINED_FUNCTION_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t GMAvailableNotificationObserver.__allocating_init(lifecycleContainer:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_83();
  GMAvailableNotificationObserver.init(lifecycleContainer:)(v4, a2);
  return v2;
}

void *GMAvailableNotificationObserver.init(lifecycleContainer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[4] = 0xD000000000000027;
  v3[5] = 0x80000001BF9CB9E0;
  v3[2] = a1;
  v3[3] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for BaseNotificationObserver();
  swift_allocObject();
  OUTLINED_FUNCTION_83();
  swift_unknownObjectRetain();
  BaseNotificationObserver.init(notificationName:notificationReceivedCallback:)(0xD000000000000027, 0x80000001BF9CB9E0, &unk_1BF9BF038, v6);
  v3[6] = a2;
  return v3;
}

uint64_t sub_1BF91AF88()
{
  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF91B6A8;

  return GlobalLifeCycleContainer.gmStatusChanged(status:)();
}

uint64_t SiriLocaleChangeNotificationObserver.lifecycleContainer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t SiriLocaleChangeNotificationObserver.notificationName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SiriLocaleChangeNotificationObserver.__allocating_init(lifecycleContainer:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_83();
  SiriLocaleChangeNotificationObserver.init(lifecycleContainer:)(v4, a2);
  return v2;
}

void *SiriLocaleChangeNotificationObserver.init(lifecycleContainer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[4] = 0xD000000000000029;
  v3[5] = 0x80000001BF9CBA10;
  v3[2] = a1;
  v3[3] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for BaseNotificationObserver();
  swift_allocObject();
  OUTLINED_FUNCTION_83();
  swift_unknownObjectRetain();
  BaseNotificationObserver.init(notificationName:notificationReceivedCallback:)(0xD000000000000029, 0x80000001BF9CBA10, &unk_1BF9BF048, v6);
  v3[6] = a2;
  return v3;
}

uint64_t sub_1BF91B1A0()
{
  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8BD504;

  return GlobalLifeCycleContainer.siriLocaleChange()();
}

uint64_t sub_1BF91B2A4()
{
  v1 = v0;
  v2 = *(v0 + 48);
  BaseNotificationObserver.cancel()();
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  return v1;
}

uint64_t SiriLocaleChangeNotificationObserver.__deallocating_deinit()
{
  SiriLocaleChangeNotificationObserver.deinit();
  v0 = OUTLINED_FUNCTION_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1BF91B320()
{
  result = qword_1EDBF0568;
  if (!qword_1EDBF0568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBF0568);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BF91B384()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_3_12(v4);

  return sub_1BF91AF88();
}

uint64_t sub_1BF91B440()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_3_12(v4);

  return sub_1BF91B1A0();
}

uint64_t sub_1BF91B5E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BF91B6A8;

  return sub_1BF91A8B4(a1, v4, v5, v6, v7);
}

uint64_t sub_1BF91B6CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BF9B5448();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1BF91B6F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9788, &qword_1BF9BF9A8);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF921488(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1BF91B7D8(uint64_t a1)
{
  OUTLINED_FUNCTION_57_3(a1);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9748, &qword_1BF9BF958);
    v4 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v6 = v36 + 64;
  v5 = *(v36 + 64);
  v7 = *(v36 + 32);
  OUTLINED_FUNCTION_1_2();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  OUTLINED_FUNCTION_35_3();

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_51_2(v15 | (v14 << 6), v32, v33, v34, v35, v36);
    sub_1BF921650(v17 + 48 * v16, v44);
    *&v43 = v2;
    *(&v43 + 1) = v3;
    *&v41[5] = v43;
    v42[0] = v44[0];
    v42[1] = v44[1];
    v42[2] = v44[2];
    v18 = v3;
    v33(v42, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B40, &qword_1BF9B8660);
    swift_dynamicCast();
    sub_1BF8C2C9C(&v38, v40);
    sub_1BF8C2C9C(v40, v41);
    sub_1BF8C2C9C(v41, &v39);
    v19 = OUTLINED_FUNCTION_65_2();
    v3 = sub_1BF8C2E64(v19, v20);
    if (v21)
    {
      OUTLINED_FUNCTION_66_2();
      OUTLINED_FUNCTION_28_5();
      v2 = (v22 + v3 * v23);
      __swift_destroy_boxed_opaque_existential_1(v2);
      sub_1BF8C2C9C(&v39, v2);
      v13 = v14;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v24)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v25);
      v27 = (v26 + 16 * v3);
      *v27 = v2;
      v27[1] = v18;
      OUTLINED_FUNCTION_28_5();
      sub_1BF8C2C9C(&v39, v28 + v3 * v29);
      OUTLINED_FUNCTION_26_6();
      if (v31)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v30;
      v13 = v14;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1BF91BA00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9768, &unk_1BF9BF980);
    v1 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v30 = v1 + 64;

  v9 = 0;
  v10 = &qword_1EBDE8AB8;
  v31 = v1;
  while (v6)
  {
    v11 = v10;
    v12 = v9;
LABEL_11:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(a1 + 56) + 56 * v14;
    sub_1BF921368();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
    v10 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, &qword_1BF9B85C0);
    swift_dynamicCast();
    v33 = v34;
    v34 = v35;
    *&v35 = v36;
    v19 = sub_1BF8C2E64(v17, v16);
    if (v20)
    {
      OUTLINED_FUNCTION_38_4();
      v22 = v21[1];
      *v21 = v17;
      v21[1] = v16;

      OUTLINED_FUNCTION_28_5();
      sub_1BF9213C0();
      v9 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v23)
      {
        goto LABEL_18;
      }

      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      OUTLINED_FUNCTION_38_4();
      *v24 = v17;
      v24[1] = v16;
      OUTLINED_FUNCTION_28_5();
      v27 = v25 + v19 * v26;
      *(v27 + 32) = v36;
      *v27 = v33;
      *(v27 + 16) = v34;
      OUTLINED_FUNCTION_26_6();
      if (v29)
      {
        goto LABEL_19;
      }

      *(v31 + 16) = v28;
      v9 = v12;
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v6)
    {
      v11 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

unint64_t sub_1BF91BC8C(uint64_t a1)
{
  v50 = sub_1BF9B4898();
  v51 = *(v50 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9780, &qword_1BF9BF9A0);
  v4 = *(*(v48 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v48);
  v47 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - v7;
  v52 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9648, &qword_1BF9BF200);
    v8 = sub_1BF9B5478();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v9 = v52 + 64;
  v10 = 1 << *(v52 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v52 + 64);
  v13 = (v10 + 63) >> 6;
  v45 = v51 + 16;
  v44 = v51 + 32;
  v41 = v8 + 8;

  v15 = 0;
  v42 = v9;
  for (i = v8; v12; v9 = v42)
  {
    v16 = v15;
LABEL_11:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = (*(v52 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = v51;
    v23 = v48;
    v24 = v46;
    v25 = v50;
    (*(v51 + 16))(&v46[*(v48 + 48)], *(v52 + 56) + *(v51 + 72) * v18, v50);
    *v24 = v21;
    v24[1] = v20;
    v26 = v47;
    sub_1BF921418(v24, v47);
    v27 = *(v23 + 48);
    v28 = *v26;
    v29 = v26[1];
    (*(v22 + 32))(v49, v26 + v27, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9640, &qword_1BF9BF1F8);
    swift_dynamicCast();
    sub_1BF8C17FC(&v53, v55);
    v30 = v28;
    sub_1BF8C17FC(v55, &v56);
    sub_1BF8C17FC(&v56, &v54);
    v31 = v28;
    v8 = i;
    result = sub_1BF8C2E64(v31, v29);
    v32 = result;
    if (v33)
    {
      v34 = (v8[6] + 16 * result);
      v35 = v34[1];
      *v34 = v30;
      v34[1] = v29;

      v36 = (v8[7] + 56 * v32);
      __swift_destroy_boxed_opaque_existential_1(v36);
      result = sub_1BF8C17FC(&v54, v36);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v41 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v8[6] + 16 * result);
      *v37 = v30;
      v37[1] = v29;
      result = sub_1BF8C17FC(&v54, (v8[7] + 56 * result));
      v38 = v8[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v8[2] = v40;
    }

    v15 = v16;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1BF91C0EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9648, &qword_1BF9BF200);
    v2 = sub_1BF9B5478();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + 8 * v11);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9640, &qword_1BF9BF1F8);
    swift_dynamicCast();
    sub_1BF8C17FC(&v25, v27);
    sub_1BF8C17FC(v27, v28);
    sub_1BF8C17FC(v28, &v26);
    result = sub_1BF8C2E64(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 56 * v15);
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = sub_1BF8C17FC(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_1BF8C17FC(&v26, (v2[7] + 56 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1BF91C340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9778, &unk_1BF9BF990);
    v1 = sub_1BF9B5478();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = (v8 << 10) | (16 * v9);
    v11 = (*(a1 + 48) + v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = (*(a1 + 56) + v10);
    v25 = *v14;
    v26 = v14[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
    swift_dynamicCast();
    v27 = v28;
    v28 = v29;
    v29 = v30;
    *&v30 = v31;
    result = sub_1BF8C2E64(v13, v12);
    if (v15)
    {
      v16 = (v1[6] + 16 * result);
      v17 = v16[1];
      *v16 = v13;
      v16[1] = v12;

      v18 = v1[7];
      result = sub_1BF9213C0();
      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v1[6] + 16 * result);
      *v19 = v13;
      v19[1] = v12;
      v20 = v1[7] + 56 * result;
      *(v20 + 48) = v31;
      *(v20 + 16) = v28;
      *(v20 + 32) = v29;
      *v20 = v27;
      v21 = v1[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v1[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BF91C5CC(uint64_t a1)
{
  OUTLINED_FUNCTION_64_2(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97B8, &qword_1BF9BF9C0);
    v3 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v3 + 64;

  v10 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1BF921650(*(v1 + 56) + 48 * v12, v37);
    v36.n128_u64[0] = v15;
    v36.n128_u64[1] = v14;
    *&v34[5] = v36;
    v35[0] = v37[0];
    v35[1] = v37[1];
    v35[2] = v37[2];
    v26[3] = v36;

    swift_dynamicCast();
    sub_1BF8BAFC8(v35, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1BF8C192C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1BF8C192C(v34, v26);
    v16 = *(v3 + 40);
    result = sub_1BF9B5208();
    v17 = -1 << *(v3 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v8 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v8 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v8 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v6 &= v6 - 1;
    *(v8 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v3 + 48) + 40 * v20;
    *v25 = v27;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    result = sub_1BF8C192C(v26, (*(v3 + 56) + 32 * v20));
    ++*(v3 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v3;
    }

    v6 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1BF91C8E4(uint64_t a1)
{
  OUTLINED_FUNCTION_64_2(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9770, &qword_1BF9C2940);
    v3 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_1_2();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  OUTLINED_FUNCTION_35_3();

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v30 = *(*(v1 + 56) + 8 * v14);
    type metadata accessor for ResolvableParameter();

    swift_dynamicCast();
    sub_1BF8C192C(&v31, v33);
    sub_1BF8C192C(v33, v34);
    sub_1BF8C192C(v34, &v32);
    v18 = sub_1BF8C2E64(v17, v16);
    v19 = v18;
    if (v20)
    {
      v21 = (v3[6] + 16 * v18);
      v22 = v21[1];
      *v21 = v17;
      v21[1] = v16;

      v23 = (v3[7] + 32 * v19);
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_1BF8C192C(&v32, v23);
      v11 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v24)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v25);
      v27 = (v26 + 16 * v19);
      *v27 = v17;
      v27[1] = v16;
      sub_1BF8C192C(&v32, (v3[7] + 32 * v19));
      OUTLINED_FUNCTION_26_6();
      if (v29)
      {
        goto LABEL_18;
      }

      v3[2] = v28;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v8 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1BF91CAF0(uint64_t a1)
{
  OUTLINED_FUNCTION_64_2(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9750, &qword_1BF9BF960);
    v3 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_1_2();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  OUTLINED_FUNCTION_35_3();

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    OUTLINED_FUNCTION_17_9();
    v14 = v13 | (v12 << 6);
    v15 = (*(v1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1BF8C2240(*(v1 + 56) + 56 * v14, &__src[2]);
    __src[0] = v16;
    __src[1] = v17;
    memcpy(__dst, __src, sizeof(__dst));
    v18 = __dst[0];
    v19 = __dst[1];
    sub_1BF8C17FC(&__dst[2], v35);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9760, &qword_1BF9BF978);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    swift_dynamicCast();
    sub_1BF8C2C9C(&v36, v38);
    sub_1BF8C2C9C(v38, v39);
    sub_1BF8C2C9C(v39, &v37);
    v20 = sub_1BF8C2E64(v18, v19);
    if (v21)
    {
      OUTLINED_FUNCTION_38_4();
      v23 = v22[1];
      *v22 = v18;
      v22[1] = v19;

      OUTLINED_FUNCTION_28_5();
      v26 = (v24 + v20 * v25);
      __swift_destroy_boxed_opaque_existential_1(v26);
      sub_1BF8C2C9C(&v37, v26);
      v11 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v27)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v28);
      v30 = (v29 + 16 * v20);
      *v30 = v18;
      v30[1] = v19;
      OUTLINED_FUNCTION_28_5();
      sub_1BF8C2C9C(&v37, v31 + v20 * v32);
      OUTLINED_FUNCTION_26_6();
      if (v34)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v33;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v8 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1BF91CD30(uint64_t a1)
{
  OUTLINED_FUNCTION_64_2(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9750, &qword_1BF9BF960);
    v3 = OUTLINED_FUNCTION_15_11();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_1_2();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    OUTLINED_FUNCTION_17_9();
    v14 = (v12 << 10) | (16 * v13);
    v15 = (*(v1 + 48) + v14);
    v17 = *v15;
    v16 = v15[1];
    v33 = *(*(v1 + 56) + v14);

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9758, &qword_1BF9BF968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    swift_dynamicCast();
    sub_1BF8C2C9C(&v34, v36);
    sub_1BF8C2C9C(v36, v37);
    sub_1BF8C2C9C(v37, &v35);
    v18 = sub_1BF8C2E64(v17, v16);
    if (v19)
    {
      OUTLINED_FUNCTION_38_4();
      v21 = v20[1];
      *v20 = v17;
      v20[1] = v16;

      OUTLINED_FUNCTION_28_5();
      v24 = (v22 + v18 * v23);
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_1BF8C2C9C(&v35, v24);
      v11 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v25)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_9_8(v26);
      v28 = (v27 + 16 * v18);
      *v28 = v17;
      v28[1] = v16;
      OUTLINED_FUNCTION_28_5();
      sub_1BF8C2C9C(&v35, v29 + v18 * v30);
      OUTLINED_FUNCTION_26_6();
      if (v32)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v31;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v8 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void SiriSuggestions.AppIntent.identifier.getter()
{
  OUTLINED_FUNCTION_65_0();
  v4 = sub_1BF9B4748();
  v5 = OUTLINED_FUNCTION_1(v4);
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_44_3();
  v9 = sub_1BF9B47F8();
  v10 = OUTLINED_FUNCTION_1(v9);
  v34 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_47_3();
  v14 = sub_1BF9B4848();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v20 = OUTLINED_FUNCTION_12_9();
  v21 = type metadata accessor for SiriSuggestions.AppIntent(v20);
  v22 = OUTLINED_FUNCTION_13(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_60_2();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_58_2();
  sub_1BF8C14B0();
  OUTLINED_FUNCTION_65_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *v3;
      v27 = *(v3 + 16);

      v28 = [v26 identifier];
      sub_1BF9B4AA8();
    }

    else
    {
      (*(v35 + 32))(v0, v3, v4);
      sub_1BF9B4728();
      v31 = *(v35 + 8);
      v32 = OUTLINED_FUNCTION_33();
      v33(v32);
    }
  }

  else
  {
    (*(v17 + 32))(v2, v3, v14);
    sub_1BF9B4808();
    sub_1BF9B47E8();
    (*(v34 + 8))(v1, v9);
    v29 = OUTLINED_FUNCTION_25_4();
    v30(v29, v14);
  }

  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_64();
}

void SiriSuggestions.AppIntent.parameters.getter()
{
  OUTLINED_FUNCTION_65_0();
  v3 = sub_1BF9B46A8();
  v4 = OUTLINED_FUNCTION_1(v3);
  v86 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  v8 = sub_1BF9B4748();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v79 = v15 - v14;
  OUTLINED_FUNCTION_55_2();
  v16 = sub_1BF9B4848();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_60_2();
  v22 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v23 = OUTLINED_FUNCTION_13(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_1_13();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = *(v19 + 32);
    v45 = OUTLINED_FUNCTION_65_2();
    v46(v45);
    v47 = sub_1BF9B4828();
    sub_1BF91BC8C(v47);

    (*(v19 + 8))(v1, v16);
LABEL_27:
    OUTLINED_FUNCTION_64();
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = *v2;
    v28 = *(v2 + 16);

    v29 = [v27 parameters];
    sub_1BF8BE93C(0, &qword_1EBDE9650, 0x1E69AC948);
    v30 = sub_1BF9B4D08();

    v31 = sub_1BF91B6CC(v30);
    if (!v31)
    {

      v34 = MEMORY[0x1E69E7CC0];
LABEL_26:
      v74 = sub_1BF91B6F0(v34);
      sub_1BF91C0EC(v74);

      goto LABEL_27;
    }

    v32 = v31;
    v87 = v27;
    v88[0] = MEMORY[0x1E69E7CC0];
    sub_1BF8D05C8();
    if ((v32 & 0x8000000000000000) == 0)
    {
      v33 = 0;
      v34 = v88[0];
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1BFB5E5E0](v33, v30);
        }

        else
        {
          v35 = *(v30 + 8 * v33 + 32);
        }

        v36 = v35;
        v37 = [v35 identifier];
        v38 = sub_1BF9B4AA8();
        v40 = v39;

        v41 = [v36 value];
        v88[0] = v34;
        v42 = *(v34 + 16);
        if (v42 >= *(v34 + 24) >> 1)
        {
          sub_1BF8D05C8();
          v34 = v88[0];
        }

        ++v33;
        *(v34 + 16) = v42 + 1;
        v43 = (v34 + 24 * v42);
        v43[4] = v38;
        v43[5] = v40;
        v43[6] = v41;
      }

      while (v32 != v33);

      v27 = v87;
      goto LABEL_26;
    }
  }

  else
  {
    v83 = v0;
    v84 = v3;
    v78 = v11;
    (*(v11 + 32))(v79, v2, v8);
    v48 = sub_1BF9B46B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9648, &qword_1BF9BF200);
    sub_1BF9B5458();
    v49 = 0;
    v30 = 0;
    v51 = v48 + 64;
    v50 = *(v48 + 64);
    v85 = v48;
    v52 = *(v48 + 32);
    OUTLINED_FUNCTION_1_2();
    v55 = v54 & v53;
    v57 = (v56 + 63) >> 6;
    v81 = (v86 + 8);
    v80 = v58 + 8;
    v82 = v58;
    if ((v54 & v53) != 0)
    {
      while (1)
      {
        v59 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
LABEL_21:
        v62 = v59 | (v49 << 6);
        v63 = (*(v85 + 48) + 16 * v62);
        v64 = *v63;
        v65 = v63[1];
        (*(v86 + 16))(v83, *(v85 + 56) + *(v86 + 72) * v62, v84);

        sub_1BF91D7B8(v83, v88);
        v66 = *v81;
        v67 = OUTLINED_FUNCTION_24_4();
        v68(v67);
        OUTLINED_FUNCTION_31_5();
        *(v80 + v70) |= v69 << v62;
        v71 = (v82[6] + 16 * v62);
        *v71 = v64;
        v71[1] = v65;
        sub_1BF8C17FC(v88, (v82[7] + 56 * v62));
        OUTLINED_FUNCTION_26_6();
        if (v73)
        {
          break;
        }

        v82[2] = v72;
        if (!v55)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v60 = v49;
      while (1)
      {
        v49 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v49 >= v57)
        {

          (*(v78 + 8))(v79, v8);
          goto LABEL_27;
        }

        v61 = *(v51 + 8 * v49);
        ++v60;
        if (v61)
        {
          v59 = __clz(__rbit64(v61));
          v55 = (v61 - 1) & v61;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);

  v75 = *v81;
  v76 = OUTLINED_FUNCTION_24_4();
  v77(v76);
  __break(1u);
}

uint64_t sub_1BF91D7B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v3 = sub_1BF9B46A8();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = v67[8];
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF9B46F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v69 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v64 - v11;
  v70 = sub_1BF9B46D8();
  v65 = *(v70 - 8);
  v13 = v65[8];
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BF9B4708();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  v71 = a1;
  sub_1BF9B4698();
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == *MEMORY[0x1E69A8E48])
  {
    v23 = *(v17 + 96);
    v70 = v16;
    v23(v21, v16);
    (*(v7 + 32))(v12, v21, v6);
    if (qword_1EDBF08E8 != -1)
    {
      swift_once();
    }

    v24 = sub_1BF9B47C8();
    __swift_project_value_buffer(v24, qword_1EDBF08F0);
    v25 = v69;
    (*(v7 + 16))(v69, v12, v6);
    v26 = sub_1BF9B47A8();
    v27 = sub_1BF9B5038();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v68 = v6;
      v29 = v28;
      v67 = swift_slowAlloc();
      v73 = v67;
      *v29 = 136315138;
      v30 = sub_1BF9B46E8();
      v31 = v25;
      v32 = v12;
      v34 = v33;
      v35 = *(v7 + 8);
      v35(v31, v68);
      v36 = sub_1BF8DE810(v30, v34, &v73);
      v12 = v32;

      *(v29 + 4) = v36;
      _os_log_impl(&dword_1BF8B8000, v26, v27, "actionWillExecute's parameter is .reference type with variableName: %s. Will not be able to convert to TypedValue", v29, 0xCu);
      v37 = v67;
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1BFB5F320](v37, -1, -1);
      v38 = v29;
      v6 = v68;
      MEMORY[0x1BFB5F320](v38, -1, -1);
    }

    else
    {

      v35 = *(v7 + 8);
      v35(v25, v6);
    }

    v45 = v72;
    v72[3] = v70;
    v46 = MEMORY[0x1E69A8E50];
    v45[4] = sub_1BF9209A0(&qword_1EBDE9798, MEMORY[0x1E69A8E50]);
    v45[5] = sub_1BF9209A0(&qword_1EBDE97A0, v46);
    v45[6] = sub_1BF9209A0(&qword_1EBDE97A8, v46);
    __swift_allocate_boxed_opaque_existential_1Tm(v45);
    sub_1BF9B4698();
    return (v35)(v12, v6);
  }

  else if (v22 == *MEMORY[0x1E69A8E40])
  {
    (*(v17 + 96))(v21, v16);
    v39 = v65;
    v40 = v70;
    (v65[4])(v15, v21, v70);
    v41 = sub_1BF9B4868();
    v42 = v72;
    v72[3] = v41;
    v43 = MEMORY[0x1E69DAE88];
    v42[4] = sub_1BF9209A0(&qword_1EBDE88F0, MEMORY[0x1E69DAE88]);
    v42[5] = sub_1BF9209A0(&qword_1EBDE88F8, v43);
    v42[6] = sub_1BF9209A0(&qword_1EBDE97B0, v43);
    __swift_allocate_boxed_opaque_existential_1Tm(v42);
    sub_1BF9B46C8();
    return (v39[1])(v15, v40);
  }

  else
  {
    v70 = v16;
    if (qword_1EDBF08E8 != -1)
    {
      swift_once();
    }

    v47 = sub_1BF9B47C8();
    __swift_project_value_buffer(v47, qword_1EDBF08F0);
    v49 = v66;
    v48 = v67;
    v50 = v68;
    (v67[2])(v66, v71, v68);
    v51 = sub_1BF9B47A8();
    v52 = sub_1BF9B5048();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      LODWORD(v69) = v52;
      v54 = v49;
      v55 = v53;
      v65 = swift_slowAlloc();
      v73 = v65;
      *v55 = 136315138;
      sub_1BF9B4698();
      v56 = sub_1BF9B4B08();
      v58 = v57;
      (v48[1])(v54, v50);
      v59 = sub_1BF8DE810(v56, v58, &v73);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_1BF8B8000, v51, v69, "actionWillExecute's parameter has unsupported type of %s.", v55, 0xCu);
      v60 = v65;
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1BFB5F320](v60, -1, -1);
      MEMORY[0x1BFB5F320](v55, -1, -1);
    }

    else
    {

      (v48[1])(v49, v50);
    }

    v61 = v70;
    v62 = v72;
    v72[3] = v70;
    v63 = MEMORY[0x1E69A8E50];
    v62[4] = sub_1BF9209A0(&qword_1EBDE9798, MEMORY[0x1E69A8E50]);
    v62[5] = sub_1BF9209A0(&qword_1EBDE97A0, v63);
    v62[6] = sub_1BF9209A0(&qword_1EBDE97A8, v63);
    __swift_allocate_boxed_opaque_existential_1Tm(v62);
    sub_1BF9B4698();
    return (*(v17 + 8))(v21, v61);
  }
}

void SiriSuggestions.AppIntent.description.getter()
{
  OUTLINED_FUNCTION_65_0();
  v2 = sub_1BF9B4748();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  v11 = sub_1BF9B4848();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_56_3();
  v17 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v18 = OUTLINED_FUNCTION_13(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_24_4();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *v1;
      v23 = *(v1 + 8);
      v24 = *(v1 + 16);
      v25 = [v22 debugDescription];
      v26 = sub_1BF9B4AA8();
      v28 = v27;

      MEMORY[0x1BFB5DE90](v26, v28);

      MEMORY[0x1BFB5DE90](2108704, 0xE300000000000000);
      if (v24)
      {
        v29 = v23;
      }

      else
      {
        v29 = 16718;
      }

      if (v24)
      {
        v30 = v24;
      }

      else
      {
        v30 = 0xE200000000000000;
      }

      MEMORY[0x1BFB5DE90](v29, v30);
    }

    else
    {
      (*(v5 + 32))(v10, v1, v2);
      sub_1BF9B5288();

      OUTLINED_FUNCTION_8_6();
      sub_1BF9209A0(v34, v35);
      v36 = sub_1BF9B4A18();
      MEMORY[0x1BFB5DE90](v36);

      (*(v5 + 8))(v10, v2);
    }
  }

  else
  {
    (*(v14 + 32))(v0, v1, v11);
    v31 = sub_1BF9B4818();
    MEMORY[0x1BFB5DE90](v31);

    v32 = OUTLINED_FUNCTION_43_3();
    v33(v32);
  }

  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_64();
}

void SiriSuggestions.AppIntent.appBundleId.getter()
{
  OUTLINED_FUNCTION_65_0();
  v4 = sub_1BF9B4748();
  v5 = OUTLINED_FUNCTION_1(v4);
  v41 = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_44_3();
  v9 = sub_1BF9B48B8();
  v10 = OUTLINED_FUNCTION_1(v9);
  v39 = v11;
  v40 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  v14 = sub_1BF9B47F8();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_60_2();
  v20 = sub_1BF9B4848();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  v26 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17();
  v32 = v31 - v30;
  OUTLINED_FUNCTION_1_13();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *(v32 + 8);
      v35 = *(v32 + 16);
    }

    else
    {
      (*(v41 + 32))(v0, v32, v42);
      sub_1BF9B4738();
      v36 = *(v41 + 8);
      v37 = OUTLINED_FUNCTION_33();
      v38(v37);
    }
  }

  else
  {
    (*(v23 + 32))(v3, v32, v20);
    sub_1BF9B4808();
    sub_1BF9B47D8();
    (*(v17 + 8))(v2, v14);
    sub_1BF9B48A8();
    (*(v39 + 8))(v1, v40);
    (*(v23 + 8))(v3, v20);
  }

  OUTLINED_FUNCTION_64();
}

void SiriSuggestions.AppIntent.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v55 = sub_1BF9B4748();
  v6 = OUTLINED_FUNCTION_1(v55);
  v53 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v54 = v11 - v10;
  OUTLINED_FUNCTION_55_2();
  v12 = sub_1BF9B4848();
  v13 = OUTLINED_FUNCTION_1(v12);
  v52 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_56_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9660, &qword_1BF9BF208);
  OUTLINED_FUNCTION_1(v17);
  v56 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_12_9();
  v23 = type metadata accessor for SiriSuggestions.AppIntent(v22);
  v24 = OUTLINED_FUNCTION_13(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  v28 = v5[3];
  v27 = v5[4];
  v29 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_28(v29, v30);
  sub_1BF92094C();
  sub_1BF9B5868();
  if (!v0)
  {
    v31 = sub_1BF9B5568();
    if (*(v31 + 16))
    {
      v32 = *(v31 + 32);

      if (v32)
      {
        if (v32 == 1)
        {
          sub_1BF9209E8();
          sub_1BF9B5558();
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (!v44)
          {
            swift_unknownObjectRelease();

            v47 = sub_1BF9B5308();
            OUTLINED_FUNCTION_67_2();
            v49 = v48;
            sub_1BF9B54B8();
            OUTLINED_FUNCTION_29_3();
            sub_1BF9B52F8();
            v50 = *MEMORY[0x1E69E6B00];
            OUTLINED_FUNCTION_11(v47);
            (*(v51 + 104))(v49);
            swift_willThrow();
            (*(v56 + 8))(v2, v17);
            goto LABEL_2;
          }

          v45 = v44;
          v46 = *(v56 + 8);
          swift_unknownObjectRetain();
          v46(v2, v17);
          swift_unknownObjectRelease();
          *v3 = v45;
          v3[1] = v57;
          v3[2] = v58;
        }

        else
        {
          OUTLINED_FUNCTION_8_6();
          sub_1BF9209A0(v40, v41);
          OUTLINED_FUNCTION_61_2();
          sub_1BF9B5558();
          v42 = OUTLINED_FUNCTION_20_7();
          v43(v42);
          (*(v53 + 32))(v3, v54, v55);
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_5();
        sub_1BF9209A0(v36, v37);
        OUTLINED_FUNCTION_61_2();
        sub_1BF9B5558();
        v38 = OUTLINED_FUNCTION_20_7();
        v39(v38);
        (*(v52 + 32))(v3, v1, v12);
      }

      OUTLINED_FUNCTION_58_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_12();
      sub_1BF920B90();
    }

    else
    {

      sub_1BF920A3C();
      OUTLINED_FUNCTION_67_2();
      *v33 = 0;
      swift_willThrow();
      v34 = OUTLINED_FUNCTION_20_7();
      v35(v34);
    }
  }

LABEL_2:
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_37();
}

void SiriSuggestions.AppIntent.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = sub_1BF9B4748();
  v6 = OUTLINED_FUNCTION_1(v5);
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_12_9();
  v10 = sub_1BF9B4848();
  v11 = OUTLINED_FUNCTION_1(v10);
  v42 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  v15 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v16 = OUTLINED_FUNCTION_13(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9690, &qword_1BF9BF210);
  v20 = OUTLINED_FUNCTION_1(v19);
  v44 = v21;
  v45 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_56_3();
  v26 = *(v4 + 24);
  v25 = *(v4 + 32);
  v27 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_28(v27, v28);
  sub_1BF92094C();
  sub_1BF9B5898();
  OUTLINED_FUNCTION_1_13();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v42 + 32))(v2, v0, v10);
    OUTLINED_FUNCTION_14_5();
    sub_1BF9209A0(v30, v31);
    OUTLINED_FUNCTION_61_2();
    v32 = v45;
    sub_1BF9B5638();
    (*(v42 + 8))(v2, v10);
LABEL_6:
    (*(v44 + 8))(v1, v32);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v33 = *(v43 + 32);
    v34 = OUTLINED_FUNCTION_59_3();
    v35(v34);
    OUTLINED_FUNCTION_8_6();
    sub_1BF9209A0(v36, v37);
    OUTLINED_FUNCTION_61_2();
    v32 = v45;
    sub_1BF9B5638();
    v38 = *(v43 + 8);
    v39 = OUTLINED_FUNCTION_59_3();
    v41(v39, v40);
    goto LABEL_6;
  }

  v46 = *v0;
  v47 = *(v0 + 1);
  sub_1BF920A90();
  sub_1BF9B5638();
  swift_unknownObjectRelease();

  (*(v44 + 8))(v1, v45);
LABEL_7:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF91EF10()
{
  OUTLINED_FUNCTION_34_3();
  v3 = v1 == 0x74696B6C6F6F74 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 1802398060 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0xD000000000000011 && 0x80000001BF9CBBC0 == v0)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_70();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF91F000(char a1)
{
  if (!a1)
  {
    return 0x74696B6C6F6F74;
  }

  if (a1 == 1)
  {
    return 1802398060;
  }

  return 0xD000000000000011;
}

uint64_t sub_1BF91F054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449707061 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF91F114(char a1)
{
  if (a1)
  {
    return 0x6449707061;
  }

  else
  {
    return 0x746E65746E69;
  }
}

void sub_1BF91F144()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9740, &qword_1BF9BF950);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_105();
  v11 = *v0;
  v13 = v0[2];
  v14 = v0[1];
  v12 = v4[4];
  OUTLINED_FUNCTION_28(v4, v4[3]);
  sub_1BF921314();
  swift_unknownObjectRetain();
  sub_1BF9B5898();
  sub_1BF920C90();
  sub_1BF9B5638();
  swift_unknownObjectRelease();
  if (!v1)
  {
    sub_1BF9B55B8();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_37();
}

void sub_1BF91F2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9730, &qword_1BF9BF948);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  v19 = v12[4];
  OUTLINED_FUNCTION_28(v12, v12[3]);
  sub_1BF921314();
  sub_1BF9B5868();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1BF920BE8();
    sub_1BF9B5558();
    v20 = sub_1BF9B54D8();
    v22 = v21;
    v23 = OUTLINED_FUNCTION_25_4();
    v24(v23, v15);
    *v14 = a10;
    v14[1] = v20;
    v14[2] = v22;

    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1(v12);

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF91F4B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF91EF10();
  *a1 = result;
  return result;
}

uint64_t sub_1BF91F4E0(uint64_t a1)
{
  v2 = sub_1BF92094C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF91F51C(uint64_t a1)
{
  v2 = sub_1BF92094C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF91F560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF91F054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF91F588(uint64_t a1)
{
  v2 = sub_1BF921314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF91F5C4(uint64_t a1)
{
  v2 = sub_1BF921314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static SiriSuggestions.AppIntent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_65_0();
  v58 = v1;
  v2 = sub_1BF9B4748();
  v3 = OUTLINED_FUNCTION_1(v2);
  v55 = v4;
  v56 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v54 = v8 - v7;
  OUTLINED_FUNCTION_55_2();
  v9 = sub_1BF9B4848();
  v10 = OUTLINED_FUNCTION_1(v9);
  v57 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_47_3();
  v14 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_11();
  v20 = v18 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96A8, &qword_1BF9BF218);
  OUTLINED_FUNCTION_72(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_9();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v53 - v30;
  v32 = &v53 + *(v29 + 56) - v30;
  sub_1BF8C14B0();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_13();
      sub_1BF8C14B0();
      v35 = *v24;
      v34 = *(v24 + 1);
      v36 = *(v24 + 2);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = *v32;
        v37 = *(v32 + 1);
        v39 = *(v32 + 2);
        sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
        v40 = sub_1BF9B50B8();

        if (v40)
        {
          if (v36)
          {
            if (v39)
            {
              if (v34 == v37 && v36 == v39)
              {
              }

              else
              {
                sub_1BF9B56D8();
              }

              goto LABEL_20;
            }
          }

          else if (!v39)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

LABEL_20:
        OUTLINED_FUNCTION_2_15();
        sub_1BF920AE4(v31, v52);
        goto LABEL_21;
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_13();
      sub_1BF8C14B0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v47 = v54;
        v46 = v55;
        v48 = v56;
        (*(v55 + 32))(v54, v32, v56);
        sub_1BF9B4718();
        v49 = *(v46 + 8);
        v49(v47, v48);
        v49(v20, v48);
        goto LABEL_20;
      }

      (*(v55 + 8))(v20, v56);
    }
  }

  else
  {
    v42 = v57;
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_43();
    sub_1BF8C14B0();
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v42 + 32))(v0, v32, v9);
      OUTLINED_FUNCTION_24_4();
      sub_1BF9B4838();
      v50 = *(v42 + 8);
      v50(v0, v9);
      v51 = OUTLINED_FUNCTION_23_7();
      (v50)(v51);
      goto LABEL_20;
    }

    v43 = *(v42 + 8);
    v44 = OUTLINED_FUNCTION_23_7();
    v45(v44);
  }

  sub_1BF8DFBF0(v31, &qword_1EBDE96A8, &qword_1BF9BF218);
LABEL_21:
  OUTLINED_FUNCTION_64();
}

Swift::String __swiftcall SiriSuggestions.Intent.getIdentifier()()
{
  v2 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v3 = OUTLINED_FUNCTION_72(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = OUTLINED_FUNCTION_44_3();
  v7 = type metadata accessor for SiriSuggestions.Intent(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_0_12();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BF920B90();
      SiriSuggestions.AppIntent.identifier.getter();
      v13 = v12;
      v15 = v14;
      OUTLINED_FUNCTION_2_15();
      sub_1BF920AE4(v0, v16);
    }

    else
    {
      v21 = *(v1 + 8);
      v20 = *(v1 + 16);
      v13 = *(v1 + 24);
      v15 = *(v1 + 32);
      v22 = *(v1 + 48);
    }
  }

  else
  {
    v17 = *v1;
    v18 = [*v1 typeName];
    v13 = sub_1BF9B4AA8();
    v15 = v19;
  }

  v23 = v13;
  v24 = v15;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

SiriSuggestionsKit::AppIdDetails_optional __swiftcall SiriSuggestions.Intent.getAppIdDetails()()
{
  v1 = v0;
  v2 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v3 = OUTLINED_FUNCTION_72(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v8 = v7 - v6;
  SiriSuggestions.Intent.getIntentQuery()();
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  v11 = *(v8 + 48);

  v12 = sub_1BF920AE4(v8, type metadata accessor for SiriSuggestions.IntentQuery);
  *v1 = v10;
  *(v1 + 8) = v9;
  *(v1 + 16) = v11;
  result.value.appId._object = v13;
  result.value.appId._countAndFlagsBits = v12;
  result.is_nil = v15;
  result.value.party = v14;
  return result;
}

uint64_t sub_1BF91FCEC(uint64_t a1)
{
  v2 = sub_1BF8BFD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF91FD28(uint64_t a1)
{
  v2 = sub_1BF8BFD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.Intent.toV1Representation()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SiriSuggestions.Intent(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_11();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  OUTLINED_FUNCTION_0_12();
  sub_1BF8C14B0();
  OUTLINED_FUNCTION_24_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BF8C14B0();
      type metadata accessor for SiriSuggestions.AppIntent(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = v1[2];
        if (v15)
        {
          v16 = v1[1];
        }

        else
        {
          v16 = 0;
          v15 = 0xE000000000000000;
        }

        *a1 = *v1;
        *(a1 + 8) = v16;
        *(a1 + 16) = v15;
        v18 = 1;
        goto LABEL_11;
      }

      sub_1BF920AE4(v1, type metadata accessor for SiriSuggestions.AppIntent);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v18 = -1;
LABEL_11:
    *(a1 + 24) = v18;
    return sub_1BF920AE4(v13, type metadata accessor for SiriSuggestions.Intent);
  }

  OUTLINED_FUNCTION_23_7();
  sub_1BF8C14B0();
  v17 = *v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v17;
  *(a1 + 24) = 0;
  return sub_1BF920AE4(v13, type metadata accessor for SiriSuggestions.Intent);
}

void static SiriSuggestions.Intent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_65_0();
  v0 = type metadata accessor for SiriSuggestions.AppIntent(0);
  v1 = OUTLINED_FUNCTION_72(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v41 = v5 - v4;
  v6 = OUTLINED_FUNCTION_55_2();
  v7 = type metadata accessor for SiriSuggestions.Intent(v6);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_11();
  v13 = (v11 - v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v40 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D0, &unk_1BF9BF230);
  OUTLINED_FUNCTION_72(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v40 - v25;
  v27 = (&v40 + *(v24 + 56) - v25);
  sub_1BF8C14B0();
  sub_1BF8C14B0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_0_12();
      sub_1BF8C14B0();
      OUTLINED_FUNCTION_23_7();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_4_12();
        v29 = v41;
        sub_1BF920B90();
        static SiriSuggestions.AppIntent.== infix(_:_:)();
        sub_1BF920AE4(v29, type metadata accessor for SiriSuggestions.AppIntent);
        v30 = OUTLINED_FUNCTION_59_3();
        sub_1BF920AE4(v30, v31);
LABEL_13:
        sub_1BF920AE4(v26, type metadata accessor for SiriSuggestions.Intent);
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_2_15();
      sub_1BF920AE4(v17, v38);
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
      sub_1BF8C14B0();
      v33 = v13[1];
      v48[0] = *v13;
      v48[1] = v33;
      v49[0] = v13[2];
      *(v49 + 9) = *(v13 + 41);
      OUTLINED_FUNCTION_23_7();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v34 = v27[1];
        v46[0] = *v27;
        v46[1] = v34;
        v36 = *v27;
        v35 = v27[1];
        v47[0] = v27[2];
        *(v47 + 9) = *(v27 + 41);
        v37 = v13[1];
        v44[0] = *v13;
        v44[1] = v37;
        v45[0] = v13[2];
        *(v45 + 9) = *(v13 + 41);
        v42[0] = v36;
        v42[1] = v35;
        v43[0] = v27[2];
        *(v43 + 9) = *(v27 + 41);
        static Action.== infix(_:_:)(v44, v42);
        sub_1BF8D768C(v46);
        sub_1BF8D768C(v48);
        goto LABEL_13;
      }

      sub_1BF8D768C(v48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_12();
    sub_1BF8C14B0();
    v32 = *v19;
    OUTLINED_FUNCTION_23_7();
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = *v27;
      sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
      sub_1BF9B50B8();

      goto LABEL_13;
    }
  }

  sub_1BF8DFBF0(v26, &qword_1EBDE96D0, &unk_1BF9BF230);
LABEL_14:
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9202A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t IntentParameterWrapped.init(parameter:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t static IntentParameterWrapped.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1 || (v3 = *a2) == 0)
  {
    v6 = 1;
    return v6 & 1;
  }

  v4 = *a1;
  ObjectType = swift_getObjectType();
  *&v9 = v2;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  sub_1BF90AE78(&v9, &v11);
  __swift_destroy_boxed_opaque_existential_1(&v9);
  if (!v12)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1BF8DFBF0(&v11, &qword_1EBDE9210, &qword_1BF9BD040);
LABEL_9:
    v6 = 0;
    return v6 & 1;
  }

  sub_1BF8C2C9C(&v11, v13);
  v8[3] = swift_getObjectType();
  v8[0] = v3;
  swift_unknownObjectRetain();
  sub_1BF90AE78(v8, &v9);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!ObjectType)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1BF8DFBF0(&v9, &qword_1EBDE9210, &qword_1BF9BD040);
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_9;
  }

  sub_1BF8C2C9C(&v9, &v11);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1BF90AB90();
  v6 = v5;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v6 & 1;
}

uint64_t IntentParameterWrapped.getRoot()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96E0, &qword_1BF9BF250);
  *a1 = v3;

  return swift_unknownObjectRetain();
}

uint64_t sub_1BF92054C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6150746E65746E69 && a2 == 0xEF726574656D6172)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF9205F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF92054C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF920620(uint64_t a1)
{
  v2 = sub_1BF920CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF92065C(uint64_t a1)
{
  v2 = sub_1BF920CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntentParameterWrapped.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96E8, &qword_1BF9BF258);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_47_3();
  v10 = *v0;
  v11 = v3[4];
  OUTLINED_FUNCTION_28(v3, v3[3]);
  sub_1BF920CE4();
  swift_unknownObjectRetain();
  sub_1BF9B5898();
  sub_1BF920C90();
  sub_1BF9B55E8();
  swift_unknownObjectRelease();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_37();
}

void IntentParameterWrapped.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F0, &qword_1BF9BF260);
  OUTLINED_FUNCTION_1(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_47_3();
  v22 = v13[4];
  OUTLINED_FUNCTION_28(v13, v13[3]);
  sub_1BF920CE4();
  sub_1BF9B5868();
  if (!v10)
  {
    sub_1BF920BE8();
    sub_1BF9B5508();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF92094C()
{
  result = qword_1EBDE9668;
  if (!qword_1EBDE9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9668);
  }

  return result;
}

uint64_t sub_1BF9209A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BF9209E8()
{
  result = qword_1EBDE9680;
  if (!qword_1EBDE9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9680);
  }

  return result;
}

unint64_t sub_1BF920A3C()
{
  result = qword_1EBDE9688;
  if (!qword_1EBDE9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9688);
  }

  return result;
}

unint64_t sub_1BF920A90()
{
  result = qword_1EBDE96A0;
  if (!qword_1EBDE96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE96A0);
  }

  return result;
}

uint64_t sub_1BF920AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1BF920B3C()
{
  result = qword_1EDBF0958;
  if (!qword_1EDBF0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF0958);
  }

  return result;
}

uint64_t sub_1BF920B90()
{
  OUTLINED_FUNCTION_34_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v0;
}

unint64_t sub_1BF920BE8()
{
  result = qword_1EDBF32C0;
  if (!qword_1EDBF32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32C0);
  }

  return result;
}

unint64_t sub_1BF920C3C()
{
  result = qword_1EDBF4138;
  if (!qword_1EDBF4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4138);
  }

  return result;
}

unint64_t sub_1BF920C90()
{
  result = qword_1EDBF49B0;
  if (!qword_1EDBF49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49B0);
  }

  return result;
}

unint64_t sub_1BF920CE4()
{
  result = qword_1EDBF4808;
  if (!qword_1EDBF4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4808);
  }

  return result;
}

uint64_t sub_1BF920D38(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1BF920D8C(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IntentParameterWrapped.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1BF920EC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF920FA8()
{
  result = qword_1EBDE9700;
  if (!qword_1EBDE9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9700);
  }

  return result;
}

unint64_t sub_1BF921000()
{
  result = qword_1EBDE9708;
  if (!qword_1EBDE9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9708);
  }

  return result;
}

unint64_t sub_1BF921058()
{
  result = qword_1EBDE9710;
  if (!qword_1EBDE9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9710);
  }

  return result;
}

unint64_t sub_1BF9210B0()
{
  result = qword_1EBDE9718;
  if (!qword_1EBDE9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9718);
  }

  return result;
}

unint64_t sub_1BF921108()
{
  result = qword_1EDBF47F8;
  if (!qword_1EDBF47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47F8);
  }

  return result;
}

unint64_t sub_1BF921160()
{
  result = qword_1EDBF4800;
  if (!qword_1EDBF4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4800);
  }

  return result;
}

unint64_t sub_1BF9211B8()
{
  result = qword_1EDBF4D08;
  if (!qword_1EDBF4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4D08);
  }

  return result;
}

unint64_t sub_1BF921210()
{
  result = qword_1EDBF4D10;
  if (!qword_1EDBF4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4D10);
  }

  return result;
}

unint64_t sub_1BF921268()
{
  result = qword_1EBDE9720;
  if (!qword_1EBDE9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9720);
  }

  return result;
}

unint64_t sub_1BF9212C0()
{
  result = qword_1EBDE9728;
  if (!qword_1EBDE9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9728);
  }

  return result;
}

unint64_t sub_1BF921314()
{
  result = qword_1EBDE9738;
  if (!qword_1EBDE9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9738);
  }

  return result;
}

uint64_t sub_1BF921368()
{
  OUTLINED_FUNCTION_34_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1BF9213C0()
{
  OUTLINED_FUNCTION_34_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1BF921418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9780, &qword_1BF9BF9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF921488(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);

    swift_unknownObjectRetain();
    if (!v7)
    {
    }

    v9 = *a3;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_18;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9790, &unk_1BF9BF9B0);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95C030();
      v15 = *a3;
      v16 = sub_1BF8C2E64(v8, v7);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

      v11 = v16;
    }

    v18 = *a3;
    if (v14)
    {

      v19 = v18[7];
      v20 = *(v19 + 8 * v11);
      *(v19 + 8 * v11) = v6;
      swift_unknownObjectRelease();
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v18[6] + 16 * v11);
      *v21 = v8;
      v21[1] = v7;
      *(v18[7] + 8 * v11) = v6;
      v22 = v18[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_19;
      }

      v18[2] = v24;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF921650(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = *(OUTLINED_FUNCTION_53_3(a1, a2) + 32);
  OUTLINED_FUNCTION_11(v3);
  (*v4)(v2);
  return v2;
}

_BYTE *_s9AppIntentO18TransportAppIntentV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF921784()
{
  result = qword_1EBDE97C0;
  if (!qword_1EBDE97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE97C0);
  }

  return result;
}

unint64_t sub_1BF9217DC()
{
  result = qword_1EBDE97C8;
  if (!qword_1EBDE97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE97C8);
  }

  return result;
}

unint64_t sub_1BF921834()
{
  result = qword_1EBDE97D0;
  if (!qword_1EBDE97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE97D0);
  }

  return result;
}

void OUTLINED_FUNCTION_51_2(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 56);
  v7 = (*(a6 + 48) + 16 * a1);
  v8 = *v7;
  v9 = v7[1];
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  v5 = (*(v0 + 48) + 16 * v3);
  v6 = v5[1];
  *v5 = v1;
  v5[1] = v2;
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return swift_allocError();
}

double SimpleRNG.init(seed:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  if (HIDWORD(a1))
  {
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v5 = sub_1BF9B47C8();
    __swift_project_value_buffer(v5, qword_1EDBF5570);
    v6 = sub_1BF9B47A8();
    v7 = sub_1BF9B5028();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = a1;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v4;
      _os_log_impl(&dword_1BF8B8000, v6, v7, "Truncating seed to avoid overflow: %llu -> %llu", v8, 0x16u);
      MEMORY[0x1BFB5F320](v8, -1, -1);
    }
  }

  *a2 = v4;
  *&result = 1103515245;
  *(a2 + 8) = xmmword_1BF9BFAE0;
  *(a2 + 24) = 12345;
  return result;
}

Swift::UInt64 __swiftcall SimpleRNG.next()()
{
  v1 = v0[1];
  if (!is_mul_ok(v1, *v0))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1 * *v0;
  v3 = v0[3];
  v4 = __CFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v0[2];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v5 % v6;
  *v0 = v7;
  if (is_mul_ok(v7, 0x1FB3C4B80uLL))
  {
    return 8510000000 * v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t UUIDtoSeed(_:)()
{
  v36 = *MEMORY[0x1E69E9840];
  v0 = sub_1BF9B4AF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF9B44E8();
  sub_1BF9B4AE8();
  v5 = sub_1BF9B4AB8();
  v7 = v6;

  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    v8 = 505911505;
  }

  else
  {
    v9 = MEMORY[0x1BFB5D760](v5, v7);
    if (v9 >= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    if (v9 < 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v8 = 0;
    v11 = 0;
    v33 = v5 >> 32;
    v34 = v5;
    v31 = v5 >> 8;
    v32 = BYTE6(v7);
    v29 = v5 >> 24;
    v30 = v5 >> 16;
    v27 = v5 >> 40;
    v28 = HIDWORD(v5);
    v25 = HIBYTE(v5);
    v26 = HIWORD(v5);
    v23 = v7 >> 16;
    v24 = v7 >> 8;
    v22 = v7 >> 24;
    while (v10 != v11)
    {
      switch(v7 >> 62)
      {
        case 1uLL:
          if (v11 < v34 || v11 >= v33)
          {
            goto LABEL_31;
          }

          v18 = sub_1BF9B42E8();
          if (!v18)
          {
            goto LABEL_37;
          }

          v14 = v18;
          v19 = sub_1BF9B4318();
          v16 = v11 - v19;
          if (!__OFSUB__(v11, v19))
          {
            goto LABEL_25;
          }

          goto LABEL_33;
        case 2uLL:
          if (v11 < *(v5 + 16))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          if (v11 >= *(v5 + 24))
          {
            goto LABEL_32;
          }

          v13 = sub_1BF9B42E8();
          if (!v13)
          {
            goto LABEL_38;
          }

          v14 = v13;
          v15 = sub_1BF9B4318();
          v16 = v11 - v15;
          if (__OFSUB__(v11, v15))
          {
            goto LABEL_34;
          }

LABEL_25:
          v12 = *(v14 + v16);
LABEL_26:
          v8 = (v8 << 8) | v12;
          ++v11;
          break;
        case 3uLL:
          goto LABEL_36;
        default:
          if (v11 >= v32)
          {
            goto LABEL_30;
          }

          v35[0] = v5;
          v35[1] = v31;
          v35[2] = v30;
          v35[3] = v29;
          v35[4] = v28;
          v35[5] = v27;
          v35[6] = v26;
          v35[7] = v25;
          v35[8] = v7;
          v35[9] = v24;
          v35[10] = v23;
          v35[11] = v22;
          v35[12] = BYTE4(v7);
          v35[13] = BYTE5(v7);
          v12 = v35[v11];
          goto LABEL_26;
      }
    }

    sub_1BF921E14(v5, v7);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1BF921E14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF8F9F3C(a1, a2);
  }

  return a1;
}

uint64_t sub_1BF921E38@<X0>(uint64_t a1@<X8>)
{
  sub_1BF904C28();
  v2 = sub_1BF9B5168();
  v3 = v2;
  v4 = v2[2];
  if (v4 && (v2[4] == 0x7070416E69 ? (v5 = v2[5] == 0xE500000000000000) : (v5 = 0), v5 || (sub_1BF9B56D8() & 1) != 0))
  {
    if (v4 == 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v6 = v3[6];
      v9 = v3[7];

      if (v4 <= 2)
      {
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = v3[8];
        v8 = v3[9];
      }
    }

    *a1 = v6;
    *(a1 + 8) = v9;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = 0;
  }

  else
  {

    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
  }

  return result;
}

uint64_t DeliveryVehicle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_13();
  sub_1BF9B5848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  OUTLINED_FUNCTION_2_13();
  v6 = sub_1BF9B5688();
  v8 = v7;

  result = DeliveryVehicle.init(rawValue:)(v6, v8, v13);
  v10 = v14;
  if (v14 != 255)
  {
    v11 = v13[1];
    v12 = v13[0];

    __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v12;
    *(a2 + 16) = v11;
    *(a2 + 32) = v10;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t DeliveryVehicle.encode(to:)(void *a1)
{
  v2 = *(v1 + 32);
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9B5878();
  v5 = *v1;
  v6 = v1[1];
  DeliveryVehicle.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1BF9B5698();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t DeliveryVehicle.deliveryVehicleType.getter()
{
  if (!*(v0 + 32))
  {
    return 0x7070416E69;
  }

  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    result = OUTLINED_FUNCTION_7_9();
    if (v3 >= 2u)
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v4 = v0[1];
    v5 = v0[2] | v0[3];
    if (v5 | v1 | v4)
    {
      v6 = v5 | v4;
      if (v1 == 1 && v6 == 0)
      {
        return 0xD000000000000010;
      }

      else if (v1 != 2 || v6)
      {
        if (v1 != 3 || v6)
        {
          result = 0xD000000000000010;
          if (v1 == 4 && !v6)
          {
            return 0xD000000000000014;
          }
        }

        else
        {
          return OUTLINED_FUNCTION_8_7();
        }
      }

      else
      {
        return OUTLINED_FUNCTION_6_10();
      }
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  return result;
}

uint64_t SiriHintsMode.description.getter()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0x746E694869726973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E694869726973;
  }
}

void static DeliveryVehicle.siriHints.getter()
{
  v0 = static DeliveryVehicle.allCases.getter();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = v0 - 8 + 40 * v1;
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    ++v1;
    v5 = (v4 + 40);
    v6 = *(v4 + 72);
    v4 += 40;
    if (v6 == 1)
    {
      v10 = v5[1];
      v11 = *v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8BDCF8(0, *(v3 + 16) + 1, 1);
      }

      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1BF8BDCF8(v7 > 1, v8 + 1, 1);
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 40 * v8;
      *(v9 + 32) = v11;
      *(v9 + 48) = v10;
      *(v9 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
}

Swift::String __swiftcall DeliveryVehicle.getComponentName(suggestionId:)(Swift::String suggestionId)
{
  object = suggestionId._object;
  countAndFlagsBits = suggestionId._countAndFlagsBits;
  OUTLINED_FUNCTION_4_13();
  v7 = DeliveryVehicle.deliveryVehicleType.getter();
  v8 = v3;
  MEMORY[0x1BFB5DE90](35, 0xE100000000000000);
  MEMORY[0x1BFB5DE90](countAndFlagsBits, object);
  v4 = v7;
  v5 = v8;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1BF9224C4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_1BF99979C();
}

uint64_t sub_1BF922530@<X0>(uint64_t *a1@<X8>)
{
  result = static DeliveryVehicle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF922558@<X0>(uint64_t *a1@<X8>)
{
  result = DeliveryVehicle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF922580(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BF8CA80C(v5, v7) & 1;
}

void DeliveryVehicle.defaultObjective.getter(char *a1@<X8>)
{
  if (*(v1 + 32) == 2 && (*v1 == 4 ? (v2 = (*(v1 + 16) | *(v1 + 24) | *(v1 + 8)) == 0) : (v2 = 0), v2))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t sub_1BF92261C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656B6F7073 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF922728(char a1)
{
  if (!a1)
  {
    return 0x79616C70736964;
  }

  if (a1 == 1)
  {
    return 0x6E656B6F7073;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1BF922784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF92261C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9227AC(uint64_t a1)
{
  v2 = sub_1BF923300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9227E8(uint64_t a1)
{
  v2 = sub_1BF923300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF922824(uint64_t a1)
{
  v2 = sub_1BF9233FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF922860(uint64_t a1)
{
  v2 = sub_1BF9233FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF92289C(uint64_t a1)
{
  v2 = sub_1BF9233A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9228D8(uint64_t a1)
{
  v2 = sub_1BF9233A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF922914(uint64_t a1)
{
  v2 = sub_1BF923354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF922950(uint64_t a1)
{
  v2 = sub_1BF923354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriHintsMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97D8, &qword_1BF9BFB78);
  v4 = OUTLINED_FUNCTION_1(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97E0, &qword_1BF9BFB80);
  v11 = OUTLINED_FUNCTION_1(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97E8, &qword_1BF9BFB88);
  v18 = OUTLINED_FUNCTION_1(v17);
  v39 = v19;
  v40 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE97F0, &qword_1BF9BFB90);
  OUTLINED_FUNCTION_1(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v38 - v31;
  v33 = *v1;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF923300();
  sub_1BF9B5898();
  if (v33)
  {
    if (v33 == 1)
    {
      v48 = 1;
      sub_1BF9233A8();
      v24 = v41;
      OUTLINED_FUNCTION_3_13();
      v36 = v42;
      v35 = v43;
    }

    else
    {
      v49 = 2;
      sub_1BF923354();
      v24 = v44;
      OUTLINED_FUNCTION_3_13();
      v36 = v45;
      v35 = v46;
    }
  }

  else
  {
    v47 = 0;
    sub_1BF9233FC();
    OUTLINED_FUNCTION_3_13();
    v36 = v39;
    v35 = v40;
  }

  (*(v36 + 8))(v24, v35);
  return (*(v27 + 8))(v32, v25);
}

uint64_t SiriHintsMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t SiriHintsMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9818, &qword_1BF9BFB98);
  OUTLINED_FUNCTION_1(v71);
  v68 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9820, &qword_1BF9BFBA0);
  v9 = OUTLINED_FUNCTION_1(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9828, &qword_1BF9BFBA8);
  OUTLINED_FUNCTION_1(v16);
  v64 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9830, &unk_1BF9BFBB0);
  OUTLINED_FUNCTION_1(v23);
  v69 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v59 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF923300();
  v31 = v72;
  sub_1BF9B5868();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v16;
  v62 = v22;
  v63 = v15;
  v33 = v70;
  v32 = v71;
  v72 = a1;
  v34 = sub_1BF9B5568();
  result = sub_1BF8D21BC(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_9;
  }

  v60 = 0;
  if (v37 >= (v38 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v39) = *(v36 + v37);
    sub_1BF8D21AC(v37 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v68;
    if (!v44)
    {
LABEL_9:
      v50 = sub_1BF9B5308();
      swift_allocError();
      v52 = v51;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
      *v52 = &type metadata for SiriHintsMode;
      sub_1BF9B54B8();
      sub_1BF9B52F8();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v69 + 8))(v29, v23);
      a1 = v72;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v39)
    {
      if (v39 == 1)
      {
        v74 = 1;
        sub_1BF9233A8();
        v46 = v63;
        OUTLINED_FUNCTION_11_11();
        v47 = v67;
        v48 = v23;
        v49 = v69;
        swift_unknownObjectRelease();
        (*(v65 + 8))(v46, v66);
        (*(v49 + 8))(v29, v48);
      }

      else
      {
        LODWORD(v66) = v39;
        v75 = 2;
        sub_1BF923354();
        v55 = v60;
        sub_1BF9B54A8();
        v47 = v67;
        v39 = v23;
        v56 = v69;
        if (v55)
        {
          (*(v69 + 8))(v29, v39);
          swift_unknownObjectRelease();
          a1 = v72;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v45 + 8))(v33, v32);
        (*(v56 + 8))(v29, v39);
        LOBYTE(v39) = v66;
      }
    }

    else
    {
      v73 = 0;
      sub_1BF9233FC();
      v54 = v62;
      OUTLINED_FUNCTION_11_11();
      swift_unknownObjectRelease();
      (*(v64 + 8))(v54, v61);
      v57 = OUTLINED_FUNCTION_10_9();
      v58(v57);
      v47 = v67;
    }

    *v47 = v39;
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  return result;
}

unint64_t sub_1BF923300()
{
  result = qword_1EBDE97F8;
  if (!qword_1EBDE97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE97F8);
  }

  return result;
}

unint64_t sub_1BF923354()
{
  result = qword_1EBDE9800;
  if (!qword_1EBDE9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9800);
  }

  return result;
}

unint64_t sub_1BF9233A8()
{
  result = qword_1EBDE9808;
  if (!qword_1EBDE9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9808);
  }

  return result;
}

unint64_t sub_1BF9233FC()
{
  result = qword_1EBDE9810;
  if (!qword_1EBDE9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9810);
  }

  return result;
}

unint64_t sub_1BF923454()
{
  result = qword_1EDBF4C40[0];
  if (!qword_1EDBF4C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF4C40);
  }

  return result;
}

unint64_t sub_1BF9234DC()
{
  result = qword_1EBDE9848;
  if (!qword_1EBDE9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9848);
  }

  return result;
}

uint64_t sub_1BF923560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF9235A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *sub_1BF9235E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9236F4()
{
  result = qword_1EBDE9860;
  if (!qword_1EBDE9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9860);
  }

  return result;
}

unint64_t sub_1BF92374C()
{
  result = qword_1EBDE9868;
  if (!qword_1EBDE9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9868);
  }

  return result;
}

unint64_t sub_1BF9237A4()
{
  result = qword_1EBDE9870;
  if (!qword_1EBDE9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9870);
  }

  return result;
}

unint64_t sub_1BF9237FC()
{
  result = qword_1EBDE9878;
  if (!qword_1EBDE9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9878);
  }

  return result;
}

unint64_t sub_1BF923854()
{
  result = qword_1EBDE9880;
  if (!qword_1EBDE9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9880);
  }

  return result;
}

unint64_t sub_1BF9238AC()
{
  result = qword_1EBDE9888;
  if (!qword_1EBDE9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9888);
  }

  return result;
}

unint64_t sub_1BF923904()
{
  result = qword_1EBDE9890;
  if (!qword_1EBDE9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9890);
  }

  return result;
}

unint64_t sub_1BF92395C()
{
  result = qword_1EBDE9898;
  if (!qword_1EBDE9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9898);
  }

  return result;
}

unint64_t sub_1BF9239B4()
{
  result = qword_1EBDE98A0;
  if (!qword_1EBDE98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE98A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  v2 = *(v0 - 184);

  return sub_1BF9B54A8();
}

void sub_1BF923A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v3 = v33;
    v6 = sub_1BF93194C(v2);
    v7 = 0;
    v29 = v2 + 56;
    v24 = v2 + 64;
    v25 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v8 = v6 >> 6;
        if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v2 + 36) != v4)
        {
          goto LABEL_26;
        }

        v28 = v5;
        v26 = v7;
        v27 = v4;
        v9 = *(v2 + 48) + 40 * v6;
        v30 = *v9;
        v31 = *(v9 + 16);
        v32 = *(v9 + 32);
        v10 = DeliveryVehicle.rawValue.getter();
        v12 = v11;
        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1BF8D01C0();
        }

        *(v3 + 16) = v13 + 1;
        v14 = v3 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        if (v28)
        {
          goto LABEL_30;
        }

        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v6 >= v15)
        {
          goto LABEL_27;
        }

        v16 = *(v29 + 8 * v8);
        if ((v16 & (1 << v6)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_29;
        }

        v17 = v16 & (-2 << (v6 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v3;
          v19 = v8 << 6;
          v20 = v8 + 1;
          v21 = (v24 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1BF90E758(v6, v27, 0);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_19;
            }
          }

          sub_1BF90E758(v6, v27, 0);
LABEL_19:
          v3 = v18;
        }

        v7 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v5 = 0;
        v4 = *(v25 + 36);
        v6 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

int64_t sub_1BF923CD0(uint64_t a1)
{
  v41 = sub_1BF9B4558();
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v40 = v8 - v7;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v13 = sub_1BF93194C(a1);
    result = v45;
    v14 = 0;
    v15 = a1 + 56;
    v35 = a1 + 64;
    v36 = v9;
    v37 = v3;
    v38 = a1;
    v39 = a1 + 56;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(a1 + 32))
      {
        v16 = v13 >> 6;
        if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v11)
        {
          goto LABEL_25;
        }

        v44 = v12;
        v42 = v14;
        v43 = v11;
        v17 = result;
        (*(v3 + 16))(v40, *(a1 + 48) + *(v3 + 72) * v13, v41);
        v18 = sub_1BF9B4538();
        v20 = v19;
        (*(v3 + 8))(v40, v41);
        result = v17;
        v21 = *(v17 + 16);
        if (v21 >= *(v17 + 24) >> 1)
        {
          sub_1BF8D01C0();
          result = v17;
        }

        *(result + 16) = v21 + 1;
        v22 = result + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v20;
        v15 = v39;
        if (v44)
        {
          goto LABEL_29;
        }

        v3 = v37;
        a1 = v38;
        v23 = 1 << *(v38 + 32);
        if (v13 >= v23)
        {
          goto LABEL_26;
        }

        v24 = *(v39 + 8 * v16);
        if ((v24 & (1 << v13)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v38 + 36) != v43)
        {
          goto LABEL_28;
        }

        v25 = v24 & (-2 << (v13 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v26 = v36;
        }

        else
        {
          v27 = v16 << 6;
          v28 = v16 + 1;
          v26 = v36;
          v29 = (v35 + 8 * v16);
          while (v28 < (v23 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = OUTLINED_FUNCTION_3_14();
              sub_1BF90E758(v32, v33, 0);
              result = v23;
              v23 = __clz(__rbit64(v30)) + v27;
              goto LABEL_19;
            }
          }

          v34 = result;
          sub_1BF90E758(v13, v43, 0);
          result = v34;
        }

LABEL_19:
        v14 = v42 + 1;
        if (v42 + 1 == v26)
        {
          return result;
        }

        v12 = 0;
        v11 = *(v38 + 36);
        v13 = v23;
        if (v23 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

void sub_1BF923FE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v28 = MEMORY[0x1E69E7CC0];
    v27 = *(a1 + 16);
    sub_1BF8D01C0();
    v4 = sub_1BF93194C(a1);
    v5 = v27;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_33;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_34;
        }

        ++v6;
        v9 = v4 & 0x3F;
        v10 = 0xE600000000000000;
        v11 = 0x656E6F685069;
        switch(*(*(a1 + 48) + v4))
        {
          case 1:
            v10 = 0xE90000000000006FLL;
            v11 = 0x72506E6F69736976;
            break;
          case 2:
            v10 = 0xE400000000000000;
            v11 = 1684099177;
            break;
          case 3:
            v10 = 0xE700000000000000;
            v11 = 0x79616C50726163;
            break;
          case 4:
            v10 = 0xE500000000000000;
            v11 = 0x6863746177;
            break;
          case 5:
            v10 = 0xE700000000000000;
            v11 = 0x5654656C707061;
            break;
          case 6:
            v10 = 0xE700000000000000;
            v11 = 0x646F70656D6F68;
            break;
          case 7:
            v10 = 0xE300000000000000;
            v11 = 6513005;
            break;
          case 8:
            v10 = 0xE300000000000000;
            v11 = 6582128;
            break;
          default:
            break;
        }

        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          v25 = v2;
          v26 = v6;
          v24 = v3;
          sub_1BF8D01C0();
          v9 = v4 & 0x3F;
          v3 = v24;
          v2 = v25;
          v6 = v26;
          v7 = a1 + 56;
          v5 = v27;
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v10;
        if (v3)
        {
          goto LABEL_38;
        }

        v14 = 1 << *(a1 + 32);
        if (v4 >= v14)
        {
          goto LABEL_35;
        }

        v15 = *(v7 + 8 * v8);
        if ((v15 & (1 << v4)) == 0)
        {
          goto LABEL_36;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_37;
        }

        v16 = v15 & (-2 << v9);
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (a1 + 64 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              v22 = v6;
              sub_1BF90E758(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v27;
              v6 = v22;
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_28;
            }
          }

          v23 = v6;
          sub_1BF90E758(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v27;
          v6 = v23;
        }

LABEL_28:
        if (v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }
}

uint64_t sub_1BF92433C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v15 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_16_7();
  sub_1BF8D0200();
  v6 = v15;
  for (i = (a3 + 32); ; ++i)
  {
    v13 = *i;

    a1(&v14, &v13);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v14;
    v15 = v6;
    v11 = *(v6 + 16);
    if (v11 >= *(v6 + 24) >> 1)
    {
      sub_1BF8D0200();
      v6 = v15;
    }

    *(v6 + 16) = v11 + 1;
    *(v6 + 8 * v11 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF924460(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1BF8D0648();
  v6 = v20;
  for (i = a3 + 32; ; i += 40)
  {
    a1(&v17, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v20 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      v14 = v18;
      sub_1BF8D0648();
      v10 = v14;
      v6 = v20;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 24 * v12;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    *(v13 + 48) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF92457C(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v13 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_16_7();
  sub_1BF8D0668();
  v6 = v13;
  for (i = a3 + 32; ; i += 40)
  {
    a1(v12, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = v6;
    v10 = *(v6 + 16);
    if (v10 >= *(v6 + 24) >> 1)
    {
      sub_1BF8D0668();
      v6 = v13;
    }

    *(v6 + 16) = v10 + 1;
    sub_1BF8C2C9C(v12, v6 + 40 * v10 + 32);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF924688(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_16_7();
  sub_1BF8D01C0();
  v6 = v16;
  for (i = a3 + 32; ; i += 32)
  {
    a1(v15, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v10 = v15[0];
    v9 = v15[1];
    v16 = v6;
    v11 = *(v6 + 16);
    if (v11 >= *(v6 + 24) >> 1)
    {
      sub_1BF8D01C0();
      v6 = v16;
    }

    *(v6 + 16) = v11 + 1;
    v12 = v6 + 16 * v11;
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1BF924788(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1 & 0xFF00;
  v5 = BYTE1(a1) - 2;
  v6 = a1;
  v19 = a1 & 0xFE;
  if (a1)
  {
    v7 = 0x6E61747369737361;
  }

  else
  {
    v7 = 1919251317;
  }

  v18 = v7;
  if (a1)
  {
    v8 = 0xE900000000000074;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if ((a1 >> 8))
  {
    v9 = 0x6465707974;
  }

  else
  {
    v9 = 0x6563696F76;
  }

  while (2)
  {
    if (v2)
    {
      v10 = *v3;
      switch(v10 >> 8)
      {
        case 2u:
          if (v4 != 512)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        case 3u:
          if (v4 != 768)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        case 4u:
          if (v4 != 1024)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        case 5u:
          if (v4 != 1280)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        case 6u:
          if (v4 != 1536)
          {
            goto LABEL_48;
          }

          return v2 != 0;
        default:
          if (v5 < 5)
          {
            goto LABEL_48;
          }

          if (*v3 == 2)
          {
            if (v6 != 2)
            {
              goto LABEL_48;
            }
          }

          else if (*v3 == 3)
          {
            if (v6 != 3)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v19 == 2)
            {
LABEL_48:
              ++v3;
              --v2;
              continue;
            }

            if (v10)
            {
              v11 = 0x6E61747369737361;
            }

            else
            {
              v11 = 1919251317;
            }

            if (v10)
            {
              v12 = 0xE900000000000074;
            }

            else
            {
              v12 = 0xE400000000000000;
            }

            if (v11 == v18 && v12 == v8)
            {
            }

            else
            {
              v17 = sub_1BF9B56D8();

              if ((v17 & 1) == 0)
              {
                goto LABEL_48;
              }
            }
          }

          if ((v10 >> 8))
          {
            v14 = 0x6465707974;
          }

          else
          {
            v14 = 0x6563696F76;
          }

          if (v14 == v9)
          {
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v15 = sub_1BF9B56D8();
            swift_bridgeObjectRelease_n();
            if ((v15 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          break;
      }
    }

    return v2 != 0;
  }
}

uint64_t sub_1BF924A04()
{
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_17_10();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924AAC()
{
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_17_10();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924B44()
{
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_17_10();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924BF0()
{
  OUTLINED_FUNCTION_12_10();
  AppBundleIdentifier.rawValue.getter();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924C4C()
{
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_17_10();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924CB8()
{
  OUTLINED_FUNCTION_12_10();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924D1C()
{
  sub_1BF9B57A8();
  OUTLINED_FUNCTION_11_4();
  sub_1BF9B4B48();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF924D78()
{
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_17_10();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924DE4()
{
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_17_10();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924E68()
{
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_17_10();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924F04()
{
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_17_10();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF924FC8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1BF9B57A8();
  a3(v6, a2);
  return sub_1BF9B57E8();
}

unint64_t sub_1BF925014@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_1BF8C2E64(result, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56) + 56 * result;

    return sub_1BF932508(v7, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 1;
    a4[5] = 0;
    a4[6] = 0;
    a4[4] = 0;
  }

  return result;
}

double sub_1BF925088@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1BF8C2E64(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1BF8C187C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF9250EC(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BF9B2AE4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1BF92513C(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BF9B2B50(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF925194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BF8C2E64(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_1BF9251EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BF8C2E64(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_1BF92523C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1BF9B2C5C(a1), (v6 & 1) != 0))
  {
    sub_1BF8D2004(*(a2 + 56) + 40 * v5, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1BF925294@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1BF9B2AA0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1BF8C187C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

BOOL sub_1BF925314(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) != 0);
  return v6 == 0;
}

uint64_t sub_1BF925374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v7 = (a1 + 40);
    do
    {
      v15 = *(v7 - 1);
      v16 = *v7;
      swift_bridgeObjectRetain_n();
      v8 = sub_1BF9B4B08();
      v10 = v9;

      MEMORY[0x1BFB5DE90](v8, v10);

      v11 = *(v17 + 16);
      if (v11 >= *(v17 + 24) >> 1)
      {
        sub_1BF8D01C0();
      }

      *(v17 + 16) = v11 + 1;
      v12 = v17 + 16 * v11;
      *(v12 + 32) = a2;
      *(v12 + 40) = a3;
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  v13 = sub_1BF9B4A78();

  return v13;
}

void sub_1BF9254F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_32_4();
  a29 = v30;
  a30 = v34;
  v35 = *(v31 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = v33;
    v38 = v32;
    v39 = v31;
    a18 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v36 = a18;
    v40 = v39 + 32;
    do
    {
      sub_1BF8C187C(v40, &a14);
      sub_1BF8C187C(&a14, &a10);
      v41 = sub_1BF9B4B08();
      v43 = v42;
      a10 = v38;
      a11 = v37;

      MEMORY[0x1BFB5DE90](v41, v43);

      v44 = a10;
      v45 = a11;
      __swift_destroy_boxed_opaque_existential_1(&a14);
      a18 = v36;
      v47 = *(v36 + 16);
      v46 = *(v36 + 24);
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_11_3(v46);
        sub_1BF8D01C0();
        v36 = a18;
      }

      *(v36 + 16) = v47 + 1;
      v48 = v36 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v45;
      v40 += 32;
      --v35;
    }

    while (v35);
  }

  a14 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  sub_1BF9B4A78();

  OUTLINED_FUNCTION_31_6();
}

BOOL sub_1BF925658(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = a2;
    v4 = *(a2 + 40);
    v5 = sub_1BF8C0DC8();
    v43 = ~(-1 << *(v2 + 32));
    v44 = v2 + 56;
    v42 = v2;
    while (1)
    {
      v6 = v5 & v43;
      v7 = (1 << (v5 & v43)) & *(v44 + (((v5 & v43) >> 3) & 0xFFFFFFFFFFFFFF8));
      v45 = v7 != 0;
      if (!v7)
      {
        return v45;
      }

      v8 = *(v2 + 48) + 40 * v6;
      v10 = *v8;
      v9 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *(v8 + 32);
      v48 = v11;
      v49 = v9;
      v47 = v12;
      v46 = *(v8 + 32);
      if (v13 == 2)
      {
        if (v11 | v9 | v10 | v12)
        {
          v16 = v11 | v9 | v12;
          if (v10 == 1 && v16 == 0)
          {
            sub_1BF8C0D00(1, 0, 0, 0, 2);
            v14 = 0xD000000000000010;
            v15 = 0x80000001BF9CBC20;
          }

          else if (v10 == 2 && v16 == 0)
          {
            sub_1BF8C0D00(2, 0, 0, 0, 2);
            v14 = 0x696669746F4E736FLL;
            v15 = 0xEE006E6F69746163;
          }

          else if (v10 == 3 && v16 == 0)
          {
            sub_1BF8C0D00(3, 0, 0, 0, 2);
            v15 = 0xE800000000000000;
            v14 = 0x706C654869726973;
          }

          else if (v10 == 4 && v16 == 0)
          {
            sub_1BF8C0D00(4, 0, 0, 0, 2);
            v14 = 0xD000000000000014;
            v15 = 0x80000001BF9CBC00;
          }

          else
          {
            sub_1BF8C0D00(5, 0, 0, 0, 2);
            v14 = 0xD000000000000010;
            v15 = 0x80000001BF9CBBE0;
          }
        }

        else
        {
          sub_1BF8C0D00(0, 0, 0, 0, 2);
          v14 = 0xD000000000000010;
          v15 = 0x80000001BF9CBC40;
        }
      }

      else if (v13 == 1)
      {
        sub_1BF8C0D00(v10, v9, v11, v12, 1);
        if (v10)
        {
          if (v10 == 1)
          {
            v14 = 0x746E694869726973;
            v15 = 0xEF6E656B6F705373;
          }

          else
          {
            v15 = 0xE700000000000000;
            v14 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          v14 = 0x746E694869726973;
          v15 = 0xE900000000000073;
        }
      }

      else
      {
        sub_1BF8C0D00(v10, v9, v11, v12, 0);
        MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
        MEMORY[0x1BFB5DE90](v10, v9);
        if (v12)
        {
          MEMORY[0x1BFB5DE90](v11, v12);
          v12 = 95;
          v21 = 0xE100000000000000;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        MEMORY[0x1BFB5DE90](v12, v21);

        v14 = 0x7070416E69;
        v15 = 0xE500000000000000;
      }

      v22 = *a1;
      v24 = a1[2];
      v23 = a1[3];
      if (!*(a1 + 32))
      {
        break;
      }

      if (*(a1 + 32) == 1)
      {
        v25 = *a1;
        v26 = v49;
        v27 = v46;
        if (*a1)
        {
          if (v25 == 1)
          {
            v28 = 0x746E694869726973;
          }

          else
          {
            v28 = 0x6E776F6E6B6E75;
          }

          if (v25 == 1)
          {
            v29 = 0xEF6E656B6F705373;
          }

          else
          {
            v29 = 0xE700000000000000;
          }
        }

        else
        {
          v28 = 0x746E694869726973;
          v29 = 0xE900000000000073;
        }
      }

      else
      {
        v33 = a1[1];
        if (!(v23 | v24 | v22 | v33))
        {
          v28 = 0xD000000000000010;
          v29 = 0x80000001BF9CBC40;
LABEL_60:
          v26 = v49;
          v27 = v46;
          goto LABEL_61;
        }

        v34 = v23 | v24 | v33;
        v26 = v49;
        v27 = v46;
        if (v22 != 1 || (v28 = 0xD000000000000010, v29 = 0x80000001BF9CBC20, v34))
        {
          if (v22 != 2 || (v28 = 0x696669746F4E736FLL, v29 = 0xEE006E6F69746163, v34))
          {
            if (v22 != 3 || v34)
            {
              v37 = v34 == 0;
              v38 = v22 == 4;
              v39 = !v38 || !v37;
              if (v38 && v37)
              {
                v28 = 0xD000000000000014;
              }

              else
              {
                v28 = 0xD000000000000010;
              }

              v40 = "actionWillExecute";
              if (!v39)
              {
                v40 = "siriAutoComplete";
              }

              v29 = v40 | 0x8000000000000000;
            }

            else
            {
              v29 = 0xE800000000000000;
              v28 = 0x706C654869726973;
            }
          }
        }
      }

LABEL_61:
      if (v14 == v28 && v15 == v29)
      {
        sub_1BF8C0CB8(v10, v26, v48, v47, v27);

        return 1;
      }

      v36 = sub_1BF9B56D8();
      sub_1BF8C0CB8(v10, v26, v48, v47, v27);

      v5 = v6 + 1;
      if (v36)
      {
        return v45;
      }
    }

    v30 = a1[1];
    MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
    MEMORY[0x1BFB5DE90](v22, v30);
    if (v23)
    {
      MEMORY[0x1BFB5DE90](v24, v23);
      v32 = 95;
      v31 = 0xE100000000000000;
    }

    else
    {
      v32 = 0;
      v31 = 0xE000000000000000;
    }

    MEMORY[0x1BFB5DE90](v32, v31);

    v28 = 0x7070416E69;
    v29 = 0xE500000000000000;
    v2 = v42;
    goto LABEL_60;
  }

  return 0;
}

uint64_t sub_1BF925D1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return 1;
}

BOOL sub_1BF925D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DeliveryVehiclePrerequisite.isValid(environment:invocationType:deliveryVehicle:)(a1, a2, a3);
  DeliveryVehiclePrerequisite.description.getter();
  return v3;
}

uint64_t sub_1BF925DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v6 = a4();
  a5();
  return v6 & 1;
}

uint64_t Prerequisite.isValidWithDebug(environment:invocationType:deliveryVehicle:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 32);
  v13 = *a2;
  v7 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v7;
  v12 = v6;
  v8 = (*(a5 + 32))(a1, &v13, v11);
  v9 = *(a5 + 8);
  sub_1BF9B5668();
  return v8 & 1;
}

uint64_t NoOpPrerequisite.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NoOpPrerequisite.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t NoOpPrerequisite.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1BF925F64(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *v2;
  v4 = *a2;
  return OUTLINED_FUNCTION_15_1() & 1;
}

uint64_t UnionPrerequisite.description.getter()
{
  v19 = 0x203A6E6F696E55;
  v20 = 0xE700000000000000;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v3 = v18;
    v4 = v1 + 32;
    do
    {
      sub_1BF8D2004(v4, v17);
      v5 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v6 = *(v5 + 8);
      v7 = sub_1BF9B5668();
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1(v17);
      v18 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_11_3(v10);
        sub_1BF8D01C0();
        v3 = v18;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v13 = MEMORY[0x1BFB5E030](v3, MEMORY[0x1E69E6158]);
  v15 = v14;

  MEMORY[0x1BFB5DE90](v13, v15);

  return v19;
}

uint64_t UnionPrerequisite.__allocating_init(prerequisites:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

BOOL UnionPrerequisite.isValid(environment:invocationType:)(uint64_t a1, __int16 *a2)
{
  v3 = *(v2 + 16);
  v8 = *a2;
  v4 = OUTLINED_FUNCTION_15_12();
  return sub_1BF925314(v4, v5, v6);
}

uint64_t sub_1BF9261A4(void *a1, uint64_t a2, __int16 a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = a3;
  return (*(v6 + 24))(a2, &v8, v5, v6) & 1;
}

BOOL UnionPrerequisite.isValid(environment:)()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_15_12();
  return sub_1BF925314(v2, v3, v4);
}

uint64_t sub_1BF926268(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 16))(a2, v3, v4) & 1;
}

BOOL UnionPrerequisite.isValid(environment:invocationType:deliveryVehicle:)(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v9 = *a2;
  v4 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v4;
  v8 = v3;
  v5 = UnionPrerequisite.isValidWithDebug(environment:invocationType:deliveryVehicle:)(a1, &v9, v7);

  return v5;
}

BOOL UnionPrerequisite.isValidWithDebug(environment:invocationType:deliveryVehicle:)(uint64_t a1, __int16 *a2, __int128 *a3)
{
  v4 = *a2;
  v30 = *a3;
  v31 = a3[1];
  v32 = *(a3 + 32);
  v5 = *(v3 + 16);
  v6 = OUTLINED_FUNCTION_15_12();
  v9 = sub_1BF924460(v6, v7, v8);
  v10 = v9;
  v11 = *(v9 + 16) + 1;
  v12 = 32;
  v13 = 0x646573736170;
  while (--v11)
  {
    v14 = *(v9 + v12);
    v12 += 24;
    if ((v14 & 1) == 0)
    {
      v13 = 0x64656C696166;
      break;
    }
  }

  OUTLINED_FUNCTION_13_7();
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](v13, 0xE600000000000000);

  MEMORY[0x1BFB5DE90](0xD000000000000010, 0x80000001BF9CBC60);
  v15 = *(v10 + 16);
  if (v15)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v16 = (v10 + 48);
    v17 = v29;
    do
    {
      v19 = *(v16 - 1);
      v18 = *v16;
      if (*(v16 - 16))
      {
        v20 = 1702195828;
      }

      else
      {
        v20 = 0x65736C6166;
      }

      if (*(v16 - 16))
      {
        v21 = 0xE400000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      MEMORY[0x1BFB5DE90](v20, v21);

      MEMORY[0x1BFB5DE90](8224, 0xE200000000000000);

      MEMORY[0x1BFB5DE90](v19, v18);

      v23 = *(v29 + 16);
      v22 = *(v29 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_11_3(v22);
        sub_1BF8D01C0();
      }

      *(v29 + 16) = v23 + 1;
      v24 = v29 + 16 * v23;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0xE000000000000000;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v25 = sub_1BF925374(v17, 0, 0xE000000000000000);
  v27 = v26;

  MEMORY[0x1BFB5DE90](v25, v27);

  return v11 == 0;
}

uint64_t sub_1BF9265CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v17 = a3;
  v11 = *(a4 + 16);
  v15[0] = *a4;
  v15[1] = v11;
  v16 = *(a4 + 32);
  result = (*(v10 + 40))(a2, &v17, v15, v9, v10);
  *a5 = result & 1;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14;
  return result;
}

uint64_t UnionPrerequisite.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UnionPrerequisite.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t LocalePrerequisite.description.getter()
{
  v1 = v0;
  OUTLINED_FUNCTION_2_16();
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0x736564756C636E49, 0xEB00000000203D20);
  *(v0 + 24);
  OUTLINED_FUNCTION_36_4();

  MEMORY[0x1BFB5DE90](0xD000000000000024, 0x80000001BF9CBC80);
  v2 = *(v0 + 32);
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 128))(ObjectType, v3);
  OUTLINED_FUNCTION_36_4();

  MEMORY[0x1BFB5DE90](2112041, 0xE300000000000000);
  sub_1BF923CD0(*(v1 + 16));
  MEMORY[0x1BFB5E030]();
  OUTLINED_FUNCTION_24_5();
  v5 = OUTLINED_FUNCTION_22_0();
  MEMORY[0x1BFB5DE90](v5);

  return v7;
}

uint64_t LocalePrerequisite.__allocating_init(locales:includes:userDefaultsProvider:)()
{
  OUTLINED_FUNCTION_104();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *(result + 40) = v0;
  return result;
}

uint64_t LocalePrerequisite.init(locales:includes:userDefaultsProvider:)()
{
  OUTLINED_FUNCTION_104();
  ObjectType = swift_getObjectType();

  return sub_1BF931BF4(v4, v3, v2, v1, ObjectType, v0);
}

void LocalePrerequisite.isValid(environment:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1BF9B4558();
  OUTLINED_FUNCTION_2_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v11 - v10;
  v13 = *(v0 + 32);
  v14 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  if ((*(v14 + 128))(ObjectType, v14))
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v16 = sub_1BF9B47C8();
    __swift_project_value_buffer(v16, qword_1EDBF5570);
    sub_1BF8D2004(v3, v37);
    v17 = sub_1BF9B47A8();
    v18 = sub_1BF9B5028();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_35_4();
      v36 = v20;
      *v19 = 136315138;
      v21 = v38;
      v22 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      (*(v22 + 80))(v21, v22);
      v23 = sub_1BF9B4538();
      v25 = v24;
      (*(v6 + 8))(v12, v4);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v26 = sub_1BF8DE810(v23, v25, &v36);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_1BF8B8000, v17, v18, "disabling LocalePrerequisite check. Returning suggestion IS VALID for current locale %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v37);
    }
  }

  else
  {
    v27 = *(v1 + 24);
    v28 = sub_1BF923CD0(*(v1 + 16));
    v29 = v3[3];
    v30 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v29);
    (*(v30 + 80))(v29, v30);
    v31 = sub_1BF9B4538();
    v33 = v32;
    v34 = (*(v6 + 8))(v12, v4);
    v37[0] = v31;
    v37[1] = v33;
    MEMORY[0x1EEE9AC00](v34);
    OUTLINED_FUNCTION_23_8();
    if (v27 == 1)
    {
      sub_1BF90626C(sub_1BF93265C, v35, v28);
    }

    else
    {
      sub_1BF90626C(sub_1BF9066AC, v35, v28);
    }
  }

  OUTLINED_FUNCTION_64();
}

uint64_t LocalePrerequisite.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LocalePrerequisite.__deallocating_deinit()
{
  LocalePrerequisite.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF926D58()
{
  v1 = *v0;
  LocalePrerequisite.isValid(environment:)();
  return v2 & 1;
}

uint64_t sub_1BF926E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_14(a1, a2, a3);
  v4 = *v3;
  return sub_1BF925DC0(v6, *v5, &v10, v7, v8) & 1;
}

uint64_t NetworkPrerequisite.isValid(environment:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = *(v1 + 56);
  v3 = OUTLINED_FUNCTION_3_14();
  v4(v3, v1);
  return v6;
}

uint64_t sub_1BF926F40(void *a1, unsigned __int16 *a2)
{
  v3 = *v2;
  v4 = *a2;
  return sub_1BF925C90(a1) & 1;
}

uint64_t sub_1BF926F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_4_14(a1, a2, a3);
  v5 = *v3;
  v7 = *v6;
  return v8(v4) & 1;
}

uint64_t DevicePrerequisite.description.getter()
{
  OUTLINED_FUNCTION_2_16();
  sub_1BF9B5288();

  *(v0 + 24);
  *(v0 + 24);
  OUTLINED_FUNCTION_36_4();

  MEMORY[0x1BFB5DE90](0x76654420726F6620, 0xEE00203A73656369);
  sub_1BF923FE8(*(v0 + 16));
  MEMORY[0x1BFB5E030]();
  OUTLINED_FUNCTION_24_5();
  v1 = OUTLINED_FUNCTION_22_0();
  MEMORY[0x1BFB5DE90](v1);

  return 0x736564756C636E49;
}

uint64_t DevicePrerequisite.__allocating_init(devices:includes:)()
{
  OUTLINED_FUNCTION_14_6();
  v0 = swift_allocObject();
  DevicePrerequisite.init(devices:includes:)();
  return v0;
}

void DevicePrerequisite.init(devices:includes:)()
{
  OUTLINED_FUNCTION_32_4();
  v3 = v2;
  v4 = v1;
  if (*(v1 + 16))
  {
    v5 = *(v1 + 40);
    sub_1BF9B57A8();

    sub_1BF9B4B48();
    sub_1BF9B57E8();
    v6 = v4 + 56;
    v7 = *(v4 + 32);
    OUTLINED_FUNCTION_21_8();
    v10 = v9 & ~v8;
    if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v8;
      while (2)
      {
        switch(*(*(v4 + 48) + v10))
        {
          case 1:
          case 2:
          case 7:
          case 8:
            goto LABEL_9;
          case 3:
            OUTLINED_FUNCTION_20_8();
            goto LABEL_9;
          case 4:
            OUTLINED_FUNCTION_25_5();
            goto LABEL_9;
          case 5:
            OUTLINED_FUNCTION_18_7();
            goto LABEL_9;
          case 6:
            OUTLINED_FUNCTION_19_10();
LABEL_9:
            v12 = sub_1BF9B56D8();

            if (v12)
            {
              goto LABEL_12;
            }

            v10 = (v10 + 1) & v11;
            if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_11;
            }

            continue;
          default:

LABEL_12:

            v13 = *(v4 + 40);
            sub_1BF9B57A8();
            sub_1BF9B4B48();
            sub_1BF9B57E8();
            v14 = *(v4 + 32);
            OUTLINED_FUNCTION_21_8();
            v17 = v16 & ~v15;
            if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_21;
            }

            v18 = ~v15;
            break;
        }

        break;
      }

      while (1)
      {
        switch(*(*(v4 + 48) + v17))
        {
          case 1:
            goto LABEL_11;
          case 3:
            OUTLINED_FUNCTION_20_8();
            break;
          case 4:
            OUTLINED_FUNCTION_25_5();
            break;
          case 5:
            OUTLINED_FUNCTION_18_7();
            break;
          case 6:
            OUTLINED_FUNCTION_19_10();
            break;
          default:
            break;
        }

        v19 = sub_1BF9B56D8();

        if (v19)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
LABEL_21:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1BF92D5AC(1, v17, isUniquelyReferenced_nonNull_native);
          break;
        }
      }
    }

    else
    {
LABEL_11:
    }
  }

  *(v0 + 16) = v4;
  *(v0 + 24) = v3 & 1;
  OUTLINED_FUNCTION_31_6();
}

uint64_t DevicePrerequisite.isValid(environment:)(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_22_0();
  v6(v5);
  OUTLINED_FUNCTION_8_8();
  v10 = sub_1BF9274D8(v7, v8, v9, sub_1BF92AAA0);
  v11 = *(sub_1BF9307FC(*(v1 + 16), v10) + 16);

  return ((v11 == 0) ^ *(v2 + 24)) & 1;
}

uint64_t sub_1BF9274D8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  v13 = MEMORY[0x1BFB5E290](v7, a3, v8);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      a4(&v12, *(a1 + v10++));
      --v9;
    }

    while (v9);

    return v13;
  }

  else
  {
    OUTLINED_FUNCTION_3_14();
  }

  return a3;
}

uint64_t sub_1BF927580(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BF9323B0();
  v8 = MEMORY[0x1BFB5E290](v2, &type metadata for InvocationType, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1BF92B010(&v7, *(a1 + v5));
      v5 += 2;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_3_14();
  }

  return v2;
}

void sub_1BF927614()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v2 = sub_1BF9B4558();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v13 = *(v1 + 16);
  v14 = sub_1BF932264(&qword_1EDBF3F70, 255, MEMORY[0x1E6969770]);
  v22[1] = MEMORY[0x1BFB5E290](v13, v2, v14);
  v15 = *(v1 + 16);
  if (v15)
  {
    v18 = *(v4 + 16);
    v16 = v4 + 16;
    v17 = v18;
    v19 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v22[0] = v1;
    v20 = v1 + v19;
    v21 = *(v16 + 56);
    do
    {
      v17(v10, v20, v2);
      sub_1BF92BA24(v12, v10);
      (*(v16 - 8))(v12, v2);
      v20 += v21;
      --v15;
    }

    while (v15);
  }

  else
  {
    OUTLINED_FUNCTION_3_14();
  }

  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF9277BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BF9322AC();
  result = MEMORY[0x1BFB5E290](v2, &type metadata for DeliveryVehicle, v3);
  v5 = 0;
  v11 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 40)
  {
    if (v6 == v5)
    {

      return v11;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(a1 + i + 16);
    v12[0] = *(a1 + i);
    v12[1] = v8;
    v13 = *(a1 + i + 32);
    ++v5;
    sub_1BF932300(v12, v9);
    sub_1BF92B360(v9, v12);
    result = sub_1BF8C0CB8(v9[0], v9[1], v9[2], v9[3], v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF927890(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BF932404();
  v9 = MEMORY[0x1BFB5E290](v2, &type metadata for SignalLookupKey, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      sub_1BF932458(v5, v7);
      sub_1BF92BCF4(v8, v7);
      sub_1BF9324B4(v8);
      v5 += 120;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    OUTLINED_FUNCTION_3_14();
  }

  return v2;
}

uint64_t sub_1BF927940(uint64_t a1)
{
  result = MEMORY[0x1BFB5E290](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v8 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v8;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1BF92BFD4();
  }

  __break(1u);
  return result;
}

uint64_t DevicePrerequisite.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_14_6();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

double sub_1BF927AFC()
{
  if (qword_1EDBF3B08 != -1)
  {
    swift_once();
  }

  byte_1EDC03418 = byte_1EDBF3B10;
  result = dbl_1EDBF3B18[0];
  unk_1EDC03420 = *dbl_1EDBF3B18;
  return result;
}

void sub_1BF927B94()
{
  OUTLINED_FUNCTION_65_0();
  v6 = v5;
  OUTLINED_FUNCTION_26_7();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  OUTLINED_FUNCTION_2_0();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13);
  v6(v4, v15, v2, v1, v0, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_64();
}

uint64_t InvocationTypePrerequisite.__allocating_init(validInvocationTypes:policyConfig:isIntentObservationEnabled:clock:intentObservationEnabledIn:featureFlagProvider:)(uint64_t a1, __int128 *a2, char a3, __int128 *a4, char *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  InvocationTypePrerequisite.init(validInvocationTypes:policyConfig:isIntentObservationEnabled:clock:intentObservationEnabledIn:featureFlagProvider:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t InvocationTypePrerequisite.init(validInvocationTypes:policyConfig:isIntentObservationEnabled:clock:intentObservationEnabledIn:featureFlagProvider:)(uint64_t a1, __int128 *a2, char a3, __int128 *a4, char *a5, __int128 *a6)
{
  v10 = *a5;
  v11 = *(a5 + 1);
  v12 = *(a5 + 2);
  *(v6 + 56) = a1;
  sub_1BF8C2C9C(a2, v6 + 64);
  *(v6 + 104) = a3;
  sub_1BF8C2C9C(a4, v6 + 112);
  *(v6 + 152) = v10;
  *(v6 + 160) = v11;
  *(v6 + 168) = v12;
  sub_1BF8C2C9C(a6, v6 + 16);
  return v6;
}

unint64_t InvocationTypePrerequisite.description.getter()
{
  OUTLINED_FUNCTION_30_5();
  sub_1BF9B5288();

  v1 = MEMORY[0x1BFB5E030](*(v0 + 56), &type metadata for VersionedInvocation);
  MEMORY[0x1BFB5DE90](v1);

  return 0xD000000000000018;
}

uint64_t InvocationTypePrerequisite.isValidWithDebug(environment:invocationType:)(void *a1, unsigned __int16 *a2)
{
  v4 = *a2;
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  if ((*(v6 + 112))(v5, v6))
  {
    goto LABEL_14;
  }

  v7 = v2[11];
  v8 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v10 = sub_1BF92513C(v4, v9);
  LOBYTE(v8) = v11;

  if (v8)
  {
    OUTLINED_FUNCTION_2_16();
    sub_1BF9B5288();
    MEMORY[0x1BFB5DE90](0xD000000000000032, 0x80000001BF9CBCF0);
LABEL_13:
    v30 = InvocationType.description.getter();
    MEMORY[0x1BFB5DE90](v30);

LABEL_14:
    v29 = 1;
    return v29 & 1;
  }

  if (v10 < 1)
  {
    OUTLINED_FUNCTION_2_16();
    sub_1BF9B5288();

    v32[0] = 0xD00000000000002CLL;
    v32[1] = 0x80000001BF9CBD30;
    goto LABEL_13;
  }

  if (AFIsInternalInstall())
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v12 = sub_1BF9B47C8();
    __swift_project_value_buffer(v12, qword_1EDBF5570);
    v13 = sub_1BF9B47A8();
    v14 = sub_1BF9B5038();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_35_4();
      v32[0] = v16;
      *v15 = 136315394;
      v17 = InvocationType.description.getter();
      v19 = sub_1BF8DE810(v17, v18, v32);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v10;
      _os_log_impl(&dword_1BF8B8000, v13, v14, "Observation for: %s reduced from %ld to 1", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    v10 = 1;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 72))(v20, v21);
  LOWORD(v32[0]) = v4;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = *(v23 + 96);
  v25 = OUTLINED_FUNCTION_3_14();
  v27 = v26(v25, v23);
  sub_1BF928200(v22, v32, v27, v10);
  v29 = v28;

  return v29 & 1;
}

uint64_t InvocationTypePrerequisite.isValid(environment:invocationType:deliveryVehicle:)(void *a1, unsigned __int16 *a2)
{
  v4 = *a2;
  v2 = InvocationTypePrerequisite.isValidWithDebug(environment:invocationType:)(a1, &v4);

  return v2 & 1;
}

uint64_t InvocationTypePrerequisite.isValid(environment:invocationType:)(void *a1, unsigned __int16 *a2)
{
  v4 = *a2;
  v2 = InvocationTypePrerequisite.isValidWithDebug(environment:invocationType:)(a1, &v4);

  return v2 & 1;
}

void sub_1BF928200(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = *a2;
  v8 = *(v4 + 56);
  v9 = *(v8 + 16);
  for (i = (v8 + 40); ; i += 2)
  {
    if (v9 == v6)
    {
      OUTLINED_FUNCTION_13_7();
      sub_1BF9B5288();

      v64 = 0xD00000000000002CLL;
      *&v65 = 0x80000001BF9CC230;
      LOWORD(v66) = v7;
      v14 = InvocationType.description.getter();
      MEMORY[0x1BFB5DE90](v14);
LABEL_7:

      return;
    }

    if (v6 >= *(v8 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v11 = *(i - 1);
    v12 = *i;

    swift_bridgeObjectRetain_n();
    v13 = sub_1BF924788(v7, v11);

    if (v13)
    {
      break;
    }

    ++v6;
  }

  if (!v12)
  {

LABEL_18:

    OUTLINED_FUNCTION_5_11();
    return;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_18;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  v60 = *(v12 + 16);
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_18;
  }

  v64 = MEMORY[0x1E69E7CC0];
  sub_1BF8D0628();
  v16 = v64;
  v17 = (a1 + 32);
  do
  {
    v18 = *v17++;
    v19 = byte_1BF9C0742[v18];
    v64 = v16;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    if (v21 >= v20 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v20);
      sub_1BF8D0628();
      v16 = v64;
    }

    *(v16 + 16) = v21 + 1;
    *(v16 + v21 + 32) = v19;
    --v15;
  }

  while (v15);
  v22 = sub_1BF9274D8(v16, sub_1BF932578, &type metadata for SuggestionsOSType, sub_1BF92AD98);
  v23 = 0;
  v24 = v22 + 56;
  v25 = MEMORY[0x1E69E7CC0];
  v26 = v60;
  do
  {
    if (*(v22 + 16))
    {
      v27 = (v12 + 32 + 24 * v23);
      v28 = *v27;
      v62 = *(v27 + 8);
      v29 = *(v22 + 40);
      sub_1BF9B57A8();
      v63 = v25;
      switch(v28)
      {
        case 5:
          OUTLINED_FUNCTION_11_4();
          break;
        default:
          break;
      }

      sub_1BF9B4B48();

      sub_1BF9B57E8();
      v30 = *(v22 + 32);
      OUTLINED_FUNCTION_21_8();
      v33 = v32 & ~v31;
      if ((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v31;
        while (1)
        {
          v35 = 0xE300000000000000;
          v36 = 5459817;
          switch(*(*(v22 + 48) + v33))
          {
            case 1:
              v35 = 0xE500000000000000;
              v36 = 0x534F63616DLL;
              break;
            case 2:
              v35 = 0xE400000000000000;
              v36 = 1397716596;
              break;
            case 3:
              v35 = 0xE700000000000000;
              v36 = 0x534F6863746177;
              break;
            case 4:
              v35 = 0xE800000000000000;
              v36 = 0x534F6E6F69736976;
              break;
            case 5:
              v35 = 0xE700000000000000;
              v36 = 0x6E776F6E6B6E75;
              break;
            default:
              break;
          }

          v37 = 0xE300000000000000;
          v38 = 5459817;
          switch(v28)
          {
            case 1:
              v37 = 0xE500000000000000;
              v38 = 0x534F63616DLL;
              break;
            case 2:
              v37 = 0xE400000000000000;
              v38 = 1397716596;
              break;
            case 3:
              v37 = 0xE700000000000000;
              v38 = 0x534F6863746177;
              break;
            case 4:
              v37 = 0xE800000000000000;
              v38 = 0x534F6E6F69736976;
              break;
            case 5:
              v37 = 0xE700000000000000;
              v38 = 0x6E776F6E6B6E75;
              break;
            default:
              break;
          }

          if (v36 == v38 && v35 == v37)
          {
            break;
          }

          v40 = sub_1BF9B56D8();

          if (v40)
          {
            goto LABEL_45;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v26 = v60;
            goto LABEL_43;
          }
        }

LABEL_45:
        v25 = v63;
        v66 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = *(v63 + 16);
          sub_1BF8D0608();
          v25 = v66;
        }

        v26 = v60;
        v43 = *(v25 + 16);
        v42 = *(v25 + 24);
        if (v43 >= v42 >> 1)
        {
          OUTLINED_FUNCTION_11_3(v42);
          sub_1BF8D0608();
          v25 = v66;
        }

        *(v25 + 16) = v43 + 1;
        v44 = v25 + 24 * v43;
        *(v44 + 32) = v28;
        *(v44 + 40) = v62;
      }

      else
      {
LABEL_43:
        v25 = v63;
      }
    }

    ++v23;
  }

  while (v23 != v26);
  v45 = *(v25 + 16);
  if (!v45)
  {

    OUTLINED_FUNCTION_13_7();
    sub_1BF9B5288();
    MEMORY[0x1BFB5DE90](0xD000000000000032, 0x80000001BF9CC1B0);
    sub_1BF932578();
    v53 = sub_1BF9B4F78();
    v55 = v54;

    MEMORY[0x1BFB5DE90](v53, v55);

    MEMORY[0x1BFB5DE90](544106784, 0xE400000000000000);
    v56 = MEMORY[0x1BFB5E030](v12, &type metadata for SuggestionsOSInfo);
    v58 = v57;

    MEMORY[0x1BFB5DE90](v56, v58);
    goto LABEL_7;
  }

  v46 = sub_1BF928970(a3);
  if (sub_1BF928E90(v46, a4))
  {
    v47 = (v25 + 40);
    v48 = -v45;
    v49 = -1;
    do
    {
      if (v48 + v49 == -1)
      {
        break;
      }

      if (++v49 >= *(v25 + 16))
      {
        goto LABEL_64;
      }

      v50 = (v47 + 24);
      v51 = *v47;
      LOBYTE(v64) = *(v47 - 8);
      v65 = v51;
      v52 = sub_1BF928FA0(&v64, a4, v46);
      v47 = v50;
    }

    while (v52);
  }

  else
  {
  }
}

uint64_t sub_1BF928970(uint64_t a1)
{
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F0, &unk_1BF9C0710);
  sub_1BF932578();
  v80 = sub_1BF9B4988();
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_1_2();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v77 = a1;

  v75 = a1 + 64;
  while (v8)
  {
LABEL_7:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v2 << 6);
    v14 = *(v77 + 48) + 24 * v13;
    v15 = *v14;
    v17 = *(v14 + 8);
    v16 = *(v14 + 16);
    v18 = *(*(v77 + 56) + 8 * v13);
    v19 = v80;
    if (*(v80 + 16) && (sub_1BF9B2AE4(*v14), (v20 & 1) != 0))
    {
      v22 = sub_1BF9294F4(v79, v15);
      v23 = *v21;
      if (*v21)
      {
        v24 = v21;
        v25 = *v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v24 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = *(v23 + 16);

          sub_1BF8DDE10();
          v45 = *v24;
          *v24 = v46;

          v23 = *v24;
        }

        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_11_3(v27);
          sub_1BF8DDE10();
          v23 = v47;
          *v24 = v47;
        }

        *(v23 + 16) = v28 + 1;
        v29 = (*v24 + 24 * v28);
        v29[4] = v17;
        v29[5] = v16;
        v29[6] = v18;
        (v22)(v79, 0);
        v4 = v75;
      }

      else
      {
        (v22)(v79, 0);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B30, &unk_1BF9B8650);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1BF9B6370;
      *(v30 + 32) = v17;
      *(v30 + 40) = v16;
      *(v30 + 48) = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v19;
      v31 = sub_1BF9B2AE4(v15);
      if (__OFADD__(*(v19 + 16), (v32 & 1) == 0))
      {
        goto LABEL_44;
      }

      v33 = v31;
      v34 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F8, &qword_1BF9C0720);
      if (sub_1BF9B53A8())
      {
        v35 = sub_1BF9B2AE4(v15);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_47;
        }

        v33 = v35;
      }

      v37 = v79[0];
      if (v34)
      {
        v38 = *(v79[0] + 7);
        v39 = *(v38 + 8 * v33);
        *(v38 + 8 * v33) = v30;
      }

      else
      {
        OUTLINED_FUNCTION_27_2(&v79[0][8 * (v33 >> 6)]);
        *(v40 + v33) = v15;
        *(*(v37 + 7) + 8 * v33) = v30;
        v41 = *(v37 + 2);
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_46;
        }

        *(v37 + 2) = v43;
      }

      v80 = v37;
      v4 = v75;
    }
  }

  while (1)
  {
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }

  v48 = v80;
  v50 = v80 + 64;
  v49 = *(v80 + 64);
  v51 = *(v80 + 32);
  OUTLINED_FUNCTION_1_2();
  v54 = v53 & v52;
  v56 = (v55 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v57 = 0;
  v76 = v50;
  v78 = v48;
  v74 = v56;
  if (v54)
  {
    goto LABEL_30;
  }

LABEL_26:
  while (1)
  {
    v58 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v58 >= v56)
    {

      return v48;
    }

    v54 = *(v50 + 8 * v58);
    ++v57;
    if (v54)
    {
      v57 = v58;
LABEL_30:
      while (1)
      {
        v59 = __clz(__rbit64(v54)) | (v57 << 6);
        v60 = *(*(v78 + 6) + v59);
        v79[0] = *(*(v78 + 7) + 8 * v59);
        swift_bridgeObjectRetain_n();
        sub_1BF929D74(v79);
        v61 = v79[0];
        swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v48;
        v62 = sub_1BF9B2AE4(v60);
        if (__OFADD__(*(v48 + 2), (v63 & 1) == 0))
        {
          goto LABEL_43;
        }

        v64 = v62;
        v65 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98F8, &qword_1BF9C0720);
        if (sub_1BF9B53A8())
        {
          v66 = sub_1BF9B2AE4(v60);
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_47;
          }

          v64 = v66;
        }

        v48 = v79[0];
        if (v65)
        {
          v68 = *(v79[0] + 7);
          v69 = *(v68 + 8 * v64);
          *(v68 + 8 * v64) = v61;
        }

        else
        {
          OUTLINED_FUNCTION_27_2(&v79[0][8 * (v64 >> 6)]);
          *(v70 + v64) = v60;
          *(*(v48 + 7) + 8 * v64) = v61;
          v71 = *(v48 + 2);
          v42 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v42)
          {
            goto LABEL_45;
          }

          *(v48 + 2) = v72;
        }

        v54 &= v54 - 1;

        v50 = v76;
        v56 = v74;
        if (!v54)
        {
          goto LABEL_26;
        }
      }
    }
  }

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
  sub_1BF9B5758();
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_1BF928E90(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 104) == 1)
  {
    v9[0] = *(v2 + 152);
    v10 = *(v2 + 160);
    v3 = sub_1BF928FA0(v9, a2, a1);
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v4 = sub_1BF9B47C8();
    __swift_project_value_buffer(v4, qword_1EDBF5570);
    v5 = sub_1BF9B47A8();
    v6 = sub_1BF9B5038();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1BF8B8000, v5, v6, "generalizedEngagementObserved is %{BOOL}d", v7, 8u);
      OUTLINED_FUNCTION_87();
    }
  }

  else
  {
    return 1;
  }

  return v3;
}

BOOL sub_1BF928FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = sub_1BF9250EC(*a1, a3);
  if (v8)
  {
    v9 = v8;
    v10 = (v8 + 48);
    v11 = -*(v8 + 16);
    v12 = -1;
    do
    {
      if (v11 + v12 == -1)
      {

        goto LABEL_18;
      }

      if (++v12 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v13 = v10 + 3;
      v14 = *v10;
      v37 = v7;
      v38 = v6;
      v36 = *(v10 - 1);
      v15 = static SuggestionsOSVersion.< infix(_:_:)(&v36, &v37);
      v10 = v13;
    }

    while ((v15 & 1) != 0);

    v16 = v3[17];
    v17 = v3[18];
    __swift_project_boxed_opaque_existential_1(v3 + 14, v16);
    v18 = (*(v17 + 8))(v16, v17);
    v19 = sub_1BF92930C(v14, v18, a2 * 86400.0);
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v20 = sub_1BF9B47C8();
    __swift_project_value_buffer(v20, qword_1EDBF5570);
    v21 = sub_1BF9B47A8();
    v22 = sub_1BF9B5038();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *&v36 = swift_slowAlloc();
      *v23 = 136315394;
      LOBYTE(v37) = v5;
      v38 = v7;
      v39 = v6;
      v24 = SuggestionsOSInfo.description.getter();
      sub_1BF8DE810(v24, v25, &v36);
      OUTLINED_FUNCTION_3_14();

      *(v23 + 4) = &v37;
      *(v23 + 12) = 2080;
      if (v19)
      {
        v26 = 0x646573736170;
      }

      else
      {
        v26 = 0x7373617020746F6ELL;
      }

      if (v19)
      {
        v27 = 0xE600000000000000;
      }

      else
      {
        v27 = 0xEA00000000006465;
      }

      sub_1BF8DE810(v26, v27, &v36);
      OUTLINED_FUNCTION_3_14();

      *(v23 + 14) = &v37;
      _os_log_impl(&dword_1BF8B8000, v21, v22, "for %s - enough observation duration has %s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }
  }

  else
  {
LABEL_18:
    if (qword_1EDBF5568 != -1)
    {
LABEL_24:
      OUTLINED_FUNCTION_43_0();
    }

    v28 = sub_1BF9B47C8();
    __swift_project_value_buffer(v28, qword_1EDBF5570);
    v29 = sub_1BF9B47A8();
    v30 = sub_1BF9B5038();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = OUTLINED_FUNCTION_35_4();
      *&v36 = v32;
      *v31 = 136315138;
      LOBYTE(v37) = v5;
      v38 = v7;
      v39 = v6;
      v33 = SuggestionsOSInfo.description.getter();
      sub_1BF8DE810(v33, v34, &v36);
      OUTLINED_FUNCTION_3_14();

      *(v31 + 4) = &v37;
      _os_log_impl(&dword_1BF8B8000, v29, v30, "No recorded time for required OS for determining observation %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    return 0;
  }

  return v19;
}

BOOL sub_1BF92930C(double a1, double a2, double a3)
{
  v4 = sub_1BF9B44C8();
  OUTLINED_FUNCTION_2_0();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  sub_1BF9B4468();
  sub_1BF9B4468();
  sub_1BF9B4488();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v12, v4);
  v17(v14, v4);
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v18 = sub_1BF9B47C8();
  __swift_project_value_buffer(v18, qword_1EDBF5570);
  v19 = sub_1BF9B47A8();
  v20 = sub_1BF9B5038();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    *(v21 + 4) = v16;
    *(v21 + 12) = 2048;
    *(v21 + 14) = a3;
    _os_log_impl(&dword_1BF8B8000, v19, v20, "observed duration from install date to now: %f. Required minimum duration: %f", v21, 0x16u);
    OUTLINED_FUNCTION_87();
  }

  return v16 >= a3;
}

void (*sub_1BF9294F4(void *a1, char a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1BF931640(v4, a2);
  return sub_1BF929558;
}

void sub_1BF929558(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t *InvocationTypePrerequisite.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  return v0;
}

uint64_t InvocationTypePrerequisite.__deallocating_deinit()
{
  InvocationTypePrerequisite.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t DeliveryVehiclePrerequisite.description.getter()
{
  OUTLINED_FUNCTION_2_16();
  sub_1BF9B5288();
  *(v0 + 24);
  *(v0 + 24);
  OUTLINED_FUNCTION_36_4();

  MEMORY[0x1BFB5DE90](0xD000000000000013, 0x80000001BF9CBDA0);
  sub_1BF923A68(*(v0 + 16));
  MEMORY[0x1BFB5E030]();
  OUTLINED_FUNCTION_24_5();
  v1 = OUTLINED_FUNCTION_22_0();
  MEMORY[0x1BFB5DE90](v1);

  return v3;
}

uint64_t DeliveryVehiclePrerequisite.__allocating_init(deliveryVehicles:includes:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_14_6();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DeliveryVehiclePrerequisite.init(deliveryVehicles:includes:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_67();
}

BOOL DeliveryVehiclePrerequisite.isValid(environment:invocationType:deliveryVehicle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_14(a1, a2, a3);
  v4 = *(v3 + 24);
  return ((v4 ^ sub_1BF925658(v6, *(v3 + 16))) & 1) == 0;
}

uint64_t ShouldBeEnabledFromConfigPrerequisite.description.getter()
{
  OUTLINED_FUNCTION_30_5();
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD000000000000036, 0x80000001BF9CBDC0);
  MEMORY[0x1BFB5DE90](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB5DE90](0xD000000000000035, 0x80000001BF9CBE00);
  return v2;
}

uint64_t ShouldBeEnabledFromConfigPrerequisite.__allocating_init(suggestionId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ShouldBeEnabledFromConfigPrerequisite.init(suggestionId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_67();
}

uint64_t ShouldBeEnabledFromConfigPrerequisite.isValid(environment:)(uint64_t a1)
{
  v2 = v1;
  sub_1BF8D2004(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98A8, &qword_1BF9C0288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98B0, &qword_1BF9C0290);
  if (!swift_dynamicCast())
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_1BF931C08(&v21);
    goto LABEL_9;
  }

  v3 = *(&v22 + 1);
  v4 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  (*(v4 + 8))(v19, *(v1 + 16), *(v1 + 24), v3, v4);
  v5 = v19[1];
  v6 = v19[2];
  v7 = v19[3];
  v8 = v19[4];
  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (!v5)
  {
LABEL_9:
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v13 = sub_1BF9B47C8();
    __swift_project_value_buffer(v13, qword_1EDBF5570);
    OUTLINED_FUNCTION_3_14();

    v14 = sub_1BF9B47A8();
    v15 = sub_1BF9B5038();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_35_4();
      v19[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1BF8DE810(*(v2 + 16), *(v2 + 24), v19);
      _os_log_impl(&dword_1BF8B8000, v14, v15, "suggestion - %s has onlyEnableFromConfig set but config file is missing - considering the pre-requisite not met", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    goto LABEL_14;
  }

  v9 = OUTLINED_FUNCTION_22_0();
  sub_1BF931C70(v9, v10, v6, v7, v8);
  if (v6 == 3)
  {
LABEL_14:
    v12 = 0;
    return v12 & 1;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  v11 = sub_1BF9B56D8();

  if (v11)
  {
LABEL_17:
    v12 = 1;
    return v12 & 1;
  }

  if (v6 != 2)
  {
LABEL_16:

    goto LABEL_17;
  }

  v12 = sub_1BF9B56D8();

  return v12 & 1;
}

uint64_t sub_1BF929D74(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BF95DCD4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BF929DE0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF929DE0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF9B5658();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9900, &qword_1BF9C0728);
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF92A0C4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF929EE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF929EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = (*a4 + 24 * a3 - 24);
    v5 = result - a3;
    while (2)
    {
      v26 = v4;
      v27 = a3;
      v6 = (v28 + 24 * a3);
      v7 = *v6;
      v8 = v6[1];
      v25 = v5;
      while (1)
      {
        v9 = *v4;
        v10 = v4[1];
        v29 = sub_1BF9B5668();
        v31 = v11;
        MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
        v12 = sub_1BF9B5668();
        MEMORY[0x1BFB5DE90](v12);

        v14 = v29;
        v13 = v31;
        v30 = sub_1BF9B5668();
        v32 = v15;
        MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
        v16 = sub_1BF9B5668();
        MEMORY[0x1BFB5DE90](v16);

        if (v14 == v30 && v13 == v32)
        {
          break;
        }

        v18 = sub_1BF9B56D8();

        if (v18)
        {
          if (!v28)
          {
            __break(1u);
            return result;
          }

          v19 = v4[3];
          v20 = v4[4];
          v21 = v4[5];
          v22 = v4[2];
          *(v4 + 3) = *v4;
          v4[5] = v22;
          *v4 = v19;
          v4[1] = v20;
          v4[2] = v21;
          v4 -= 3;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v27 + 1;
      v4 = v26 + 3;
      v5 = v25 - 1;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF92A0C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    i = MEMORY[0x1E69E7CC0];
LABEL_99:
    v117 = *a1;
    if (!v117)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v95 = i;
      v96 = (i + 16);
      for (i = *(i + 16); i >= 2; *v96 = i)
      {
        if (!*a3)
        {
          goto LABEL_137;
        }

        v97 = (v95 + 16 * i);
        v98 = *v97;
        v99 = &v96[2 * i];
        v100 = v99[1];
        sub_1BF92A8DC((*a3 + 24 * *v97), (*a3 + 24 * *v99), *a3 + 24 * v100, v117);
        if (v110)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_125;
        }

        if (i - 2 >= *v96)
        {
          goto LABEL_126;
        }

        *v97 = v98;
        v97[1] = v100;
        if (*v96 < i)
        {
          goto LABEL_127;
        }

        i = *v96 - 1;
        sub_1BF95E3AC(v99 + 2);
      }

LABEL_109:

      return;
    }

LABEL_134:
    i = sub_1BF95B0FC(i);
    goto LABEL_101;
  }

  v5 = 0;
  i = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v105 = v5;
    if (v5 + 1 < v4)
    {
      v102 = i;
      v9 = (*a3 + 24 * v5);
      v10 = 24 * v5;
      v116 = *(*a3 + 24 * v8);
      v12 = *v9;
      v11 = (v9 + 2);
      v115 = v12;
      LODWORD(v117) = static SuggestionsOSVersion.< infix(_:_:)(&v116, &v115);
      v113 = v4;
      while (v8 + 1 < v4)
      {
        v13 = v11[3];
        v15 = *(v11 - 1);
        v14 = *v11;
        *&v115 = v11[2];
        *&v116 = sub_1BF9B5668();
        *(&v116 + 1) = v16;
        MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
        *&v115 = v13;
        v17 = sub_1BF9B5668();
        MEMORY[0x1BFB5DE90](v17);

        v18 = v116;
        *&v115 = v15;
        *&v116 = sub_1BF9B5668();
        *(&v116 + 1) = v19;
        MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
        *&v115 = v14;
        v20 = sub_1BF9B5668();
        MEMORY[0x1BFB5DE90](v20);

        if (v18 == v116 && *(&v18 + 1) == *(&v116 + 1))
        {

          if (v117)
          {
            v4 = v8 + 1;
            i = v102;
            v7 = v105;
            goto LABEL_17;
          }
        }

        else
        {
          v22 = sub_1BF9B56D8();

          if ((v117 ^ v22))
          {
            v4 = v8 + 1;
            break;
          }
        }

        v11 += 3;
        v4 = v113;
        ++v8;
      }

      i = v102;
      v7 = v105;
      if ((v117 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_17:
      if (v4 < v7)
      {
        goto LABEL_131;
      }

      if (v7 <= v8)
      {
        v23 = 0;
        v24 = 24 * v4;
        v25 = v7;
        do
        {
          if (v25 != v4 + v23 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v27 = (v26 + v10);
            v28 = v26 + v24;
            v29 = *(v27 + 2);
            v30 = *v27;
            v31 = *(v28 - 8);
            *v27 = *(v28 - 24);
            *(v27 + 2) = v31;
            *(v28 - 24) = v30;
            *(v28 - 8) = v29;
          }

          ++v25;
          --v23;
          v24 -= 24;
          v10 += 24;
        }

        while (v25 < v4 + v23);
      }

LABEL_24:
      v8 = v4;
    }

    v32 = a3[1];
    if (v8 < v32)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_130;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_47:
    if (v8 < v7)
    {
      goto LABEL_129;
    }

    v112 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = *(i + 16);
      sub_1BF8DCF6C();
      i = v93;
    }

    v50 = *(i + 16);
    v51 = v50 + 1;
    v52 = v105;
    if (v50 >= *(i + 24) >> 1)
    {
      sub_1BF8DCF6C();
      v52 = v105;
      i = v94;
    }

    *(i + 16) = v51;
    v53 = i + 32;
    v54 = (i + 32 + 16 * v50);
    *v54 = v52;
    v54[1] = v8;
    v117 = *a1;
    if (!v117)
    {
      goto LABEL_139;
    }

    if (v50)
    {
      while (1)
      {
        v55 = v51 - 1;
        v56 = (v53 + 16 * (v51 - 1));
        v57 = (i + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(i + 32);
          v59 = *(i + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_67:
          if (v61)
          {
            goto LABEL_116;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_119;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_124;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v51 < 2)
        {
          goto LABEL_118;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_82:
        if (v76)
        {
          goto LABEL_121;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_123;
        }

        if (v83 < v75)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v55 - 1 >= v51)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v87 = i;
        i = v53 + 16 * (v55 - 1);
        v88 = *i;
        v89 = (v53 + 16 * v55);
        v90 = v89[1];
        sub_1BF92A8DC((*a3 + 24 * *i), (*a3 + 24 * *v89), *a3 + 24 * v90, v117);
        if (v110)
        {
          goto LABEL_109;
        }

        if (v90 < v88)
        {
          goto LABEL_111;
        }

        v91 = *(v87 + 16);
        if (v55 > v91)
        {
          goto LABEL_112;
        }

        *i = v88;
        *(i + 8) = v90;
        if (v55 >= v91)
        {
          goto LABEL_113;
        }

        v51 = v91 - 1;
        sub_1BF95E3AC(v89 + 2);
        i = v87;
        *(v87 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_96;
        }
      }

      v62 = v53 + 16 * v51;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_114;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_115;
      }

      v69 = v57[1];
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_117;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_120;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_128;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v4 = a3[1];
    v5 = v112;
    if (v112 >= v4)
    {
      goto LABEL_99;
    }
  }

  v33 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_132;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v7)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v8 == v33)
  {
    goto LABEL_47;
  }

  v103 = i;
  v114 = *a3;
  v34 = (*a3 + 24 * v8 - 24);
  v35 = v7 - v8;
  v106 = v33;
LABEL_34:
  v111 = v8;
  v36 = (v114 + 24 * v8);
  v37 = *v36;
  v38 = v36[1];
  v107 = v35;
  v108 = v34;
  while (1)
  {
    v39 = *v34;
    v117 = v34[1];
    *&v115 = v37;
    *&v116 = sub_1BF9B5668();
    *(&v116 + 1) = v40;
    MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
    *&v115 = v38;
    v41 = sub_1BF9B5668();
    MEMORY[0x1BFB5DE90](v41);

    v42 = v116;
    *&v115 = v39;
    *&v116 = sub_1BF9B5668();
    *(&v116 + 1) = v43;
    MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
    *&v115 = v117;
    v44 = sub_1BF9B5668();
    MEMORY[0x1BFB5DE90](v44);

    if (v42 == v116 && *(&v42 + 1) == *(&v116 + 1))
    {

LABEL_45:
      ++v8;
      v34 = v108 + 3;
      v35 = v107 - 1;
      if (v111 + 1 == v106)
      {
        v8 = v106;
        i = v103;
        v7 = v105;
        goto LABEL_47;
      }

      goto LABEL_34;
    }

    v46 = sub_1BF9B56D8();

    if ((v46 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (!v114)
    {
      break;
    }

    v37 = v34[3];
    v38 = v34[4];
    v47 = v34[5];
    v48 = v34[2];
    *(v34 + 3) = *v34;
    v34[5] = v48;
    *v34 = v37;
    v34[1] = v38;
    v34[2] = v47;
    v34 -= 3;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t sub_1BF92A8DC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1BF958EB4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      v26 = *v4;
      v27 = v12;
      if ((static SuggestionsOSVersion.< infix(_:_:)(&v27, &v26) & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_13;
  }

  sub_1BF958EB4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v16 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v18 = *(v10 - 24);
    v26 = *v16;
    v27 = v18;
    v19 = static SuggestionsOSVersion.< infix(_:_:)(&v27, &v26);
    v20 = (v5 + 24);
    if (v19)
    {
      v14 = v20 == v6;
      v6 -= 24;
      if (!v14)
      {
        v22 = *v16;
        *(v5 + 16) = *(v16 + 2);
        *v5 = v22;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != v20)
    {
      v21 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v21;
    }

    v10 -= 24;
  }

LABEL_28:
  v23 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1BF92AAA0(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1BF9B57A8();
  sub_1BF8CD2C0();
  v7 = sub_1BF9B57E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 0xE600000000000000;
      v12 = 0x656E6F685069;
      switch(*(*(v5 + 48) + v9))
      {
        case 1:
          v12 = 0x72506E6F69736976;
          v11 = 0xE90000000000006FLL;
          break;
        case 2:
          v11 = 0xE400000000000000;
          v12 = 1684099177;
          break;
        case 3:
          v11 = 0xE700000000000000;
          v12 = 0x79616C50726163;
          break;
        case 4:
          v11 = 0xE500000000000000;
          v12 = 0x6863746177;
          break;
        case 5:
          v11 = 0xE700000000000000;
          v12 = 0x5654656C707061;
          break;
        case 6:
          v11 = 0xE700000000000000;
          v12 = 0x646F70656D6F68;
          break;
        case 7:
          v11 = 0xE300000000000000;
          v12 = 6513005;
          break;
        case 8:
          v11 = 0xE300000000000000;
          v12 = 6582128;
          break;
        default:
          break;
      }

      v13 = 0xE600000000000000;
      v14 = 0x656E6F685069;
      switch(a2)
      {
        case 1:
          v14 = 0x72506E6F69736976;
          v13 = 0xE90000000000006FLL;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1684099177;
          break;
        case 3:
          v13 = 0xE700000000000000;
          v14 = 0x79616C50726163;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v14 = 0x6863746177;
          break;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 0x5654656C707061;
          break;
        case 6:
          v13 = 0xE700000000000000;
          v14 = 0x646F70656D6F68;
          break;
        case 7:
          v13 = 0xE300000000000000;
          v14 = 6513005;
          break;
        case 8:
          v13 = 0xE300000000000000;
          v14 = 6582128;
          break;
        default:
          break;
      }

      if (v12 == v14 && v11 == v13)
      {
        break;
      }

      v16 = sub_1BF9B56D8();

      if (v16)
      {
        goto LABEL_29;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_27:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1BF92D5AC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BF92AD98(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1BF9B57A8();
  sub_1BF8CD538(v21, a2);
  v7 = sub_1BF9B57E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 0xE300000000000000;
      v12 = 5459817;
      switch(*(*(v5 + 48) + v9))
      {
        case 1:
          v11 = 0xE500000000000000;
          v12 = 0x534F63616DLL;
          break;
        case 2:
          v11 = 0xE400000000000000;
          v12 = 1397716596;
          break;
        case 3:
          v11 = 0xE700000000000000;
          v12 = 0x534F6863746177;
          break;
        case 4:
          v11 = 0xE800000000000000;
          v12 = 0x534F6E6F69736976;
          break;
        case 5:
          v11 = 0xE700000000000000;
          v12 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v13 = 0xE300000000000000;
      v14 = 5459817;
      switch(a2)
      {
        case 1:
          v13 = 0xE500000000000000;
          v14 = 0x534F63616DLL;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1397716596;
          break;
        case 3:
          v13 = 0xE700000000000000;
          v14 = 0x534F6863746177;
          break;
        case 4:
          v13 = 0xE800000000000000;
          v14 = 0x534F6E6F69736976;
          break;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      if (v12 == v14 && v11 == v13)
      {
        break;
      }

      v16 = sub_1BF9B56D8();

      if (v16)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_21:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *v3;
    sub_1BF92D900(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v21[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BF92B010(_WORD *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1BF9B57A8();
  InvocationType.hash(into:)();
  v7 = sub_1BF9B57E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_48:
    v24 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_1BF92DBD4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    result = 1;
    goto LABEL_51;
  }

  v10 = ~v8;
  v11 = BYTE1(a2) - 2;
  v12 = a2;
  if (a2)
  {
    v13 = 0x6E61747369737361;
  }

  else
  {
    v13 = 1919251317;
  }

  v29 = v13;
  v14 = 0xE400000000000000;
  if (a2)
  {
    v14 = 0xE900000000000074;
  }

  v30 = v14;
  if ((a2 >> 8))
  {
    v15 = 0x6465707974;
  }

  else
  {
    v15 = 0x6563696F76;
  }

  while (2)
  {
    v16 = *(*(v5 + 48) + 2 * v9);
    switch(v16 >> 8)
    {
      case 2u:
        if ((a2 & 0xFF00) != 0x200)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      case 3u:
        if ((a2 & 0xFF00) == 0x300)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      case 4u:
        if ((a2 & 0xFF00) == 0x400)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      case 5u:
        if ((a2 & 0xFF00) == 0x500)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      case 6u:
        if ((a2 & 0xFF00) == 0x600)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      default:
        if (v11 < 5)
        {
          goto LABEL_47;
        }

        if (*(*(v5 + 48) + 2 * v9) == 2)
        {
          if (v12 == 2)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if (*(*(v5 + 48) + 2 * v9) == 3)
        {
          if (v12 == 3)
          {
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        if ((a2 & 0xFE) == 2)
        {
          goto LABEL_47;
        }

        v28 = v11;
        v31 = v12;
        if (v16)
        {
          v17 = 0x6E61747369737361;
        }

        else
        {
          v17 = 1919251317;
        }

        if (v16)
        {
          v18 = 0xE900000000000074;
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        if (v17 != v29 || v18 != v30)
        {
          v27 = sub_1BF9B56D8();

          v12 = v31;
          v11 = v28;
          if (v27)
          {
            goto LABEL_42;
          }

LABEL_47:
          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_48;
          }

          continue;
        }

        v12 = v31;
        v11 = v28;
LABEL_42:
        if ((v16 >> 8))
        {
          v20 = 0x6465707974;
        }

        else
        {
          v20 = 0x6563696F76;
        }

        if (v20 != v15)
        {
          v32 = v12;
          v21 = v3;
          v22 = v11;
          v23 = sub_1BF9B56D8();
          swift_bridgeObjectRelease_n();
          v11 = v22;
          v3 = v21;
          v12 = v32;
          if (v23)
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        swift_bridgeObjectRelease_n();
LABEL_50:
        result = 0;
        LOWORD(a2) = *(*(v5 + 48) + 2 * v9);
LABEL_51:
        *a1 = a2;
        return result;
    }
  }
}

BOOL sub_1BF92B360(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_1BF8C0DC8();
  v57 = ~(-1 << *(v4 + 32));
  v58 = v4 + 56;
  v55 = v4;
  while (1)
  {
    v7 = v6 & v57;
    v8 = *(v58 + (((v6 & v57) >> 3) & 0xFFFFFFFFFFFFFF8));
    v9 = (1 << (v6 & v57)) & v8;
    if (!v9)
    {
      v43 = *v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *v53;
      sub_1BF932300(a2, &v63);
      sub_1BF92DF64(a2, v7, isUniquelyReferenced_nonNull_native);
      *v53 = v65;
      v45 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v45;
      *(a1 + 32) = *(a2 + 32);
      return v9 == 0;
    }

    v56 = (1 << (v6 & v57)) & v8;
    v10 = *(v4 + 48) + 40 * v7;
    v12 = *v10;
    v11 = *(v10 + 8);
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    v15 = *(v10 + 32);
    v61 = v14;
    v62 = v11;
    v60 = v13;
    v59 = *(v10 + 32);
    if (v15 == 2)
    {
      if (v14 | v11 | v12 | v13)
      {
        v18 = v14 | v11 | v13;
        if (v12 == 1 && v18 == 0)
        {
          sub_1BF8C0D00(1, 0, 0, 0, 2);
          v16 = 0xD000000000000010;
          v17 = 0x80000001BF9CBC20;
        }

        else if (v12 == 2 && v18 == 0)
        {
          sub_1BF8C0D00(2, 0, 0, 0, 2);
          v16 = 0x696669746F4E736FLL;
          v17 = 0xEE006E6F69746163;
        }

        else if (v12 == 3 && v18 == 0)
        {
          sub_1BF8C0D00(3, 0, 0, 0, 2);
          v17 = 0xE800000000000000;
          v16 = 0x706C654869726973;
        }

        else if (v12 == 4 && v18 == 0)
        {
          sub_1BF8C0D00(4, 0, 0, 0, 2);
          v16 = 0xD000000000000014;
          v17 = 0x80000001BF9CBC00;
        }

        else
        {
          sub_1BF8C0D00(5, 0, 0, 0, 2);
          v16 = 0xD000000000000010;
          v17 = 0x80000001BF9CBBE0;
        }
      }

      else
      {
        sub_1BF8C0D00(0, 0, 0, 0, 2);
        v16 = 0xD000000000000010;
        v17 = 0x80000001BF9CBC40;
      }
    }

    else if (v15 == 1)
    {
      sub_1BF8C0D00(v12, v11, v14, v13, 1);
      if (v12)
      {
        if (v12 == 1)
        {
          v16 = 0x746E694869726973;
          v17 = 0xEF6E656B6F705373;
        }

        else
        {
          v17 = 0xE700000000000000;
          v16 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v16 = 0x746E694869726973;
        v17 = 0xE900000000000073;
      }
    }

    else
    {
      sub_1BF8C0D00(v12, v11, v14, v13, 0);
      MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
      MEMORY[0x1BFB5DE90](v12, v11);
      if (v13)
      {
        MEMORY[0x1BFB5DE90](v14, v13);
        v24 = 95;
        v23 = 0xE100000000000000;
      }

      else
      {
        v24 = 0;
        v23 = 0xE000000000000000;
      }

      v63 = 0x7070416E69;
      v64 = 0xE500000000000000;

      MEMORY[0x1BFB5DE90](v24, v23);

      v16 = 0x7070416E69;
      v17 = 0xE500000000000000;
    }

    v25 = *a2;
    v26 = *(a2 + 16);
    v27 = *(a2 + 24);
    if (!*(a2 + 32))
    {
      v33 = *(a2 + 8);
      MEMORY[0x1BFB5DE90](95, 0xE100000000000000);
      MEMORY[0x1BFB5DE90](v25, v33);
      if (v27)
      {
        MEMORY[0x1BFB5DE90](v26, v27);
        v27 = 95;
        v34 = 0xE100000000000000;
      }

      else
      {
        v34 = 0xE000000000000000;
      }

      v63 = 0x7070416E69;
      v64 = 0xE500000000000000;

      MEMORY[0x1BFB5DE90](v27, v34);

      v31 = 0x7070416E69;
      v32 = 0xE500000000000000;
      v4 = v55;
      goto LABEL_59;
    }

    if (*(a2 + 32) == 1)
    {
      v28 = *a2;
      v30 = v61;
      v29 = v62;
      if (*a2)
      {
        if (v28 == 1)
        {
          v31 = 0x746E694869726973;
        }

        else
        {
          v31 = 0x6E776F6E6B6E75;
        }

        if (v28 == 1)
        {
          v32 = 0xEF6E656B6F705373;
        }

        else
        {
          v32 = 0xE700000000000000;
        }
      }

      else
      {
        v31 = 0x746E694869726973;
        v32 = 0xE900000000000073;
      }

      goto LABEL_60;
    }

    v35 = *(a2 + 8);
    if (!(v27 | v26 | v25 | v35))
    {
      v31 = 0xD000000000000010;
      v32 = 0x80000001BF9CBC40;
LABEL_59:
      v30 = v61;
      v29 = v62;
      goto LABEL_60;
    }

    v36 = v27 | v26 | v35;
    v30 = v61;
    v29 = v62;
    if (v25 != 1 || (v31 = 0xD000000000000010, v32 = 0x80000001BF9CBC20, v36))
    {
      if (v25 != 2 || (v31 = 0x696669746F4E736FLL, v32 = 0xEE006E6F69746163, v36))
      {
        if (v25 != 3 || v36)
        {
          v39 = v36 == 0;
          v40 = v25 == 4;
          v41 = !v40 || !v39;
          if (v40 && v39)
          {
            v31 = 0xD000000000000014;
          }

          else
          {
            v31 = 0xD000000000000010;
          }

          v42 = "actionWillExecute";
          if (!v41)
          {
            v42 = "siriAutoComplete";
          }

          v32 = v42 | 0x8000000000000000;
        }

        else
        {
          v32 = 0xE800000000000000;
          v31 = 0x706C654869726973;
        }
      }
    }

LABEL_60:
    if (v16 == v31 && v17 == v32)
    {
      break;
    }

    v38 = sub_1BF9B56D8();
    sub_1BF8C0CB8(v12, v29, v30, v60, v59);

    if (v38)
    {
      goto LABEL_75;
    }

    v6 = v7 + 1;
  }

  sub_1BF8C0CB8(v12, v29, v30, v60, v59);

LABEL_75:
  sub_1BF93235C(a2);
  v46 = *(v4 + 48) + 40 * v7;
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = *(v46 + 24);
  *a1 = *v46;
  *(a1 + 8) = v48;
  *(a1 + 16) = v49;
  *(a1 + 24) = v50;
  v51 = *(v46 + 32);
  *(a1 + 32) = v51;
  sub_1BF8C0D00(v47, v48, v49, v50, v51);
  v9 = v56;
  return v9 == 0;
}