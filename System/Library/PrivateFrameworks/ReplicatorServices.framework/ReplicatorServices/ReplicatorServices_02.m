void sub_1BAAFECF4()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF1130(&v7);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v7;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](13);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v1 = v7;
  v5 = v8;
  v6 = v9;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = v1;
  v9 = v5;
  SQLDatabase.perform(_:)(&v7);
}

uint64_t sub_1BAAFEEEC(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BAAFD1BC(&v7, &v6);
      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAFF124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAAFF18C()
{
  result = qword_1EBC128F8;
  if (!qword_1EBC128F8)
  {
    sub_1BABE6CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC128F8);
  }

  return result;
}

id sub_1BAAFF1EC(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1BFAFD7A0](j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_1BABE7A5C();
  }

  return result;
}

uint64_t sub_1BAAFF314(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BABE7B9C();
    v4 = v1 + 64;
    result = sub_1BABE7A0C();
    v5 = result;
    v20 = v1;
    v19 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_13;
      }

      v21 = v2;
      v22 = *(v1 + 36);
      v6 = *(v1 + 56);
      v7 = (*(v1 + 48) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = (v6 + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      sub_1BAAE7824(v11, v12);
      sub_1BAAE7824(v11, v12);

      sub_1BAAD73E4(v11, v12);

      sub_1BAAE7824(v11, v12);
      sub_1BAAD73E4(v11, v12);

      sub_1BAAE7824(v11, v12);

      v13 = type metadata accessor for ReplicationXPCServerParametersExtendedAttribute();
      v14 = objc_allocWithZone(v13);
      v15 = &v14[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name];
      *v15 = 0;
      *(v15 + 1) = 0;
      v16 = &v14[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data];
      *&v14[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data] = xmmword_1BABE9A70;
      swift_beginAccess();
      *v15 = v8;
      *(v15 + 1) = v9;
      swift_beginAccess();
      v18 = *v16;
      v17 = v16[1];
      *v16 = v11;
      v16[1] = v12;
      sub_1BAAE7824(v11, v12);
      sub_1BAADAEE8(v18, v17);
      v23.receiver = v14;
      v23.super_class = v13;
      objc_msgSendSuper2(&v23, sel_init);
      sub_1BAAD73E4(v11, v12);

      sub_1BAAD73E4(v11, v12);
      sub_1BABE7B6C();
      sub_1BABE7BAC();
      v1 = v20;
      sub_1BABE7BBC();
      result = sub_1BABE7B7C();
      if (v5 >= -(-1 << *(v20 + 32)))
      {
        goto LABEL_14;
      }

      v4 = v19;
      if ((*(v19 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_15;
      }

      if (v22 != *(v20 + 36))
      {
        goto LABEL_16;
      }

      result = sub_1BABE7A2C();
      v5 = result;
      v2 = v21 - 1;
      if (v21 == 1)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAAFF5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1BAAFAAC0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1BABE7A0C();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = *(a1 + 48) + 80 * v6;
    v11 = *(v10 + 56);
    v24 = *(v10 + 48);
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1BAAFAAC0((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1BAADAEFC(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1BAADAEFC(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1BAAFF814(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1BAAFAAC0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1BABE7A0C();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = *(a1 + 48) + 80 * v6;
    v11 = *(v10 + 40);
    v24 = *(v10 + 32);
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1BAAFAAC0((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1BAADAEFC(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1BAADAEFC(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1BAAFFA40(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1BAAFAAC0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1BABE7A0C();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 80 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1BAAFAAC0((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1BAADAEFC(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1BAADAEFC(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_1BAAFFC6C()
{
  result = [objc_allocWithZone(type metadata accessor for ReplicatorClientSingleton()) init];
  qword_1ED78BB98 = result;
  return result;
}

uint64_t sub_1BAAFFCA0()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___recordChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___recordChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___recordChangePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B90);
    sub_1BAAD1550(&qword_1ED787348, &unk_1EBC12B90);
    v2 = sub_1BABE734C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BAAFFD7C()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___messagePublisher;
  if (*(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___messagePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___messagePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B80);
    sub_1BAAD1550(&unk_1ED787338, &unk_1EBC12B80);
    v2 = sub_1BABE734C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BAAFFE58()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___devicePublisher;
  if (*(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___devicePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___devicePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B70);
    sub_1BAAD1550(&qword_1ED787C20, &unk_1EBC12B70);
    v2 = sub_1BABE734C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BAAFFF34()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___pairedDevicePublisher;
  if (*(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___pairedDevicePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___pairedDevicePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B70);
    sub_1BAAD1550(&qword_1ED787C20, &unk_1EBC12B70);
    v2 = sub_1BABE734C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1BAB00010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedDevices) & 1) == 0)
  {
    sub_1BAB001C8();
    sub_1BAB004C4();
    if (v2)
    {
      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v5 = sub_1BABE72BC();
      __swift_project_value_buffer(v5, qword_1ED78BBA0);
      v6 = v2;
      v7 = sub_1BABE729C();
      v8 = sub_1BABE78EC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138543362;
        v11 = v2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&dword_1BAACF000, v7, v8, "Could not fetch devices: %{public}@)", v9, 0xCu);
        sub_1BAAD2E14(v10, &qword_1EBC12A00);
        MEMORY[0x1BFAFE460](v10, -1, -1);
        MEMORY[0x1BFAFE460](v9, -1, -1);
      }

      else
      {
      }
    }
  }

  *a2 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_devices);
}

void sub_1BAB001C8()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  v7 = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_deviceToken;
  if (*(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_deviceToken) != -1)
  {
    return;
  }

  out_token = -1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BAB225F4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAB170D4;
  aBlock[3] = &block_descriptor_100;
  v9 = _Block_copy(aBlock);

  v10 = sub_1BABE756C();
  v11 = notify_register_dispatch((v10 + 32), &out_token, v6, v9);

  _Block_release(v9);
  if (v11)
  {
    v4 = v0;
    if (qword_1ED7876D0 == -1)
    {
LABEL_5:
      v12 = sub_1BABE72BC();
      __swift_project_value_buffer(v12, qword_1ED78BBA0);
      v13 = sub_1BABE729C();
      v14 = sub_1BABE78EC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1BAACF000, v13, v14, "Could not register for device change notifications", v15, 2u);
        MEMORY[0x1BFAFE460](v15, -1, -1);
      }

      v0 = v4;
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_5;
  }

LABEL_8:
  *(v0 + v7) = out_token;
}

void sub_1BAB004C4()
{
  v98[5] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v91 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v84 - v5;
  v97 = type metadata accessor for ReplicatorDevice(0);
  v94 = *(v97 - 8);
  v7 = MEMORY[0x1EEE9AC00](v97);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v92 = &v84 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v95 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v84 - v13);
  v15 = sub_1BABE73FC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  v21 = sub_1BABE740C();
  v22 = (*(v16 + 8))(v18, v15);
  if ((v21 & 1) == 0)
  {
    goto LABEL_58;
  }

  v23 = sub_1BAB02A60(v22);
  if (!v23)
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v37 = sub_1BABE72BC();
    __swift_project_value_buffer(v37, qword_1ED78BBA0);
    v38 = sub_1BABE729C();
    v39 = sub_1BABE78EC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1BAACF000, v38, v39, "Could not fetch devices because target could not be created", v40, 2u);
      MEMORY[0x1BFAFE460](v40, -1, -1);
    }

    return;
  }

  v89 = v23;
  v90 = v1;
  v86 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedDevices;
  *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedDevices) = 0;
  v87 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_devices;
  v88 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_devices);
  v25 = *(v24 + 16);

  v96 = v25;
  if (!v25)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v18 = v94;
LABEL_24:

    v41 = sub_1BAAD6DA0(v27);

    v98[0] = 0;
    v42 = [v89 devicesAndReturnError_];
    v43 = v98[0];
    if (!v42)
    {
      v69 = v98[0];

      sub_1BABE6ADC();

      swift_willThrow();
      goto LABEL_55;
    }

    v44 = v42;
    sub_1BABE6A7C();
    swift_allocObject();
    v45 = v43;
    sub_1BABE6A6C();
    v46 = sub_1BABE6BEC();
    v48 = v47;
    sub_1BAB21CE0();
    v49 = v90;
    sub_1BABE6A5C();
    v50 = v46;
    v51 = v48;
    if (!v49)
    {
      sub_1BAAD73E4(v46, v48);

      v52 = v98[0];
      v53 = v88;
      v54 = v92;
      if (v98[0])
      {
        v95 = v41;
        v90 = 0;

        v55 = v87;
        *(v53 + v87) = v52;
        v85 = v52;

        *(v53 + v86) = 1;
        v14 = *(v53 + v55);
        v56 = v14[2];

        v57 = v91;
        v96 = v56;
        if (!v56)
        {
          v59 = MEMORY[0x1E69E7CC0];
LABEL_44:

          v14 = sub_1BAAD6DA0(v59);

          if (qword_1ED7876D0 != -1)
          {
            goto LABEL_59;
          }

          goto LABEL_45;
        }

        v58 = 0;
        v59 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v58 >= v14[2])
          {
            goto LABEL_57;
          }

          v60 = (v18[80] + 32) & ~v18[80];
          v61 = *(v18 + 9);
          sub_1BAB22824(v14 + v60 + v61 * v58, v54, type metadata accessor for ReplicatorDevice);
          v62 = v97;
          sub_1BAB22824(v54 + *(v97 + 48), v57, type metadata accessor for ReplicatorDevice.RelationshipState);
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
          v64 = (*(*(v63 - 8) + 48))(v57, 4, v63);
          if ((v64 - 2) >= 2)
          {
            if (v64)
            {
              sub_1BAB2288C(v57, type metadata accessor for ReplicatorDevice.RelationshipState);
              v54 = v92;
              goto LABEL_30;
            }

            v65 = sub_1BABE6CFC();
            (*(*(v65 - 8) + 8))(v57, v65);
            v62 = v97;
            v54 = v92;
          }

          if ((*(v54 + *(v62 + 56)) & 1) == 0)
          {
            sub_1BAB2347C(v54, v93, type metadata accessor for ReplicatorDevice);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v98[0] = v59;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1BAAFAAE0(0, v59[2] + 1, 1);
              v59 = v98[0];
            }

            v68 = v59[2];
            v67 = v59[3];
            if (v68 >= v67 >> 1)
            {
              sub_1BAAFAAE0(v67 > 1, v68 + 1, 1);
              v59 = v98[0];
            }

            v59[2] = v68 + 1;
            sub_1BAB2347C(v93, v59 + v60 + v68 * v61, type metadata accessor for ReplicatorDevice);
            v18 = v94;
            v57 = v91;
            goto LABEL_31;
          }

LABEL_30:
          sub_1BAB2288C(v54, type metadata accessor for ReplicatorDevice);
LABEL_31:
          if (v96 == ++v58)
          {
            goto LABEL_44;
          }
        }
      }

      __break(1u);
    }

    sub_1BAAD73E4(v50, v51);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v18 = v94;
  v28 = v97;
  while (v26 < *(v24 + 16))
  {
    v29 = (v18[80] + 32) & ~v18[80];
    v30 = *(v18 + 9);
    sub_1BAB22824(v24 + v29 + v30 * v26, v14, type metadata accessor for ReplicatorDevice);
    sub_1BAB22824(v14 + *(v28 + 48), v6, type metadata accessor for ReplicatorDevice.RelationshipState);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
    v32 = (*(*(v31 - 8) + 48))(v6, 4, v31);
    if ((v32 - 2) >= 2)
    {
      if (v32)
      {
        sub_1BAB2288C(v6, type metadata accessor for ReplicatorDevice.RelationshipState);
        goto LABEL_6;
      }

      v33 = sub_1BABE6CFC();
      (*(*(v33 - 8) + 8))(v6, v33);
    }

    if ((*(v14 + *(v28 + 56)) & 1) == 0)
    {
      sub_1BAB2347C(v14, v95, type metadata accessor for ReplicatorDevice);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = v27;
      if ((v34 & 1) == 0)
      {
        sub_1BAAFAAE0(0, v27[2] + 1, 1);
        v27 = v98[0];
      }

      v36 = v27[2];
      v35 = v27[3];
      if (v36 >= v35 >> 1)
      {
        sub_1BAAFAAE0(v35 > 1, v36 + 1, 1);
        v27 = v98[0];
      }

      v27[2] = v36 + 1;
      sub_1BAB2347C(v95, v27 + v29 + v36 * v30, type metadata accessor for ReplicatorDevice);
      v18 = v94;
      v28 = v97;
      goto LABEL_7;
    }

LABEL_6:
    sub_1BAB2288C(v14, type metadata accessor for ReplicatorDevice);
LABEL_7:
    if (v96 == ++v26)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_45:
  v70 = sub_1BABE72BC();
  __swift_project_value_buffer(v70, qword_1ED78BBA0);
  v71 = v85;

  v72 = sub_1BABE729C();
  v73 = sub_1BABE790C();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v88;
  v76 = v95;
  if (v74)
  {
    v77 = swift_slowAlloc();
    *v77 = 134217984;
    v78 = v71[2];

    *(v77 + 4) = v78;

    _os_log_impl(&dword_1BAACF000, v72, v73, "Fetched %ld devices", v77, 0xCu);
    v79 = v77;
    v18 = v94;
    MEMORY[0x1BFAFE460](v79, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v98[0] = *(v75 + v87);

  sub_1BABE732C();

  v80 = sub_1BAAD7884(v76, v14);

  if (v80)
  {
    swift_unknownObjectRelease();

    return;
  }

  v81 = v14[2];
  if (v81)
  {
    v82 = sub_1BAB1E074(v14[2], 0, &qword_1EBC12A60, &unk_1BABEA030, type metadata accessor for ReplicatorDevice);
    v83 = sub_1BAB206AC(v98, v82 + ((v18[80] + 32) & ~v18[80]), v81, v14, type metadata accessor for ReplicatorDevice, type metadata accessor for ReplicatorDevice, type metadata accessor for ReplicatorDevice);
    sub_1BAAF10B4();
    if (v83 != v81)
    {
      __break(1u);
      goto LABEL_53;
    }
  }

  else
  {
LABEL_53:

    v82 = MEMORY[0x1E69E7CC0];
  }

  v98[0] = v82;
  sub_1BABE732C();

LABEL_55:
  swift_unknownObjectRelease();
}

uint64_t sub_1BAB01094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_localDeviceID;
  swift_beginAccess();
  sub_1BAAD2DAC(a1 + v11, v10, &qword_1EBC12B60);
  v12 = sub_1BABE6CFC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1BAAD2E14(v10, &qword_1EBC12B60);
    sub_1BAB012D4(v8);
    if (v2)
    {

      (*(v13 + 56))(v8, 1, 1, v12);
    }

    swift_beginAccess();
    sub_1BAAD7BA0(v8, a1 + v11, &qword_1EBC12B60);
    swift_endAccess();
    return sub_1BAAD2DAC(a1 + v11, a2, &qword_1EBC12B60);
  }

  else
  {
    (*(v13 + 32))(a2, v10, v12);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_1BAB012D4@<X0>(uint64_t a1@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  LocalDeviceID = type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID(0);
  MEMORY[0x1EEE9AC00](LocalDeviceID - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE73FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = sub_1BABE740C();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
  }

  v12 = sub_1BAB02A60();
  if (v12)
  {
    v20[0] = 0;
    v13 = [v12 localDeviceIDAndReturnError_];
    v14 = v20[0];
    if (v13)
    {
      v15 = v13;
      sub_1BAB0DF74(v13, v5);
      v16 = v14;
      swift_unknownObjectRelease();

      return sub_1BAB23414(v5, a1, &qword_1EBC12B60);
    }

    else
    {
      v19 = v20[0];
      sub_1BABE6ADC();

      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v18 = 3;
    *(v18 + 8) = 0;

    return swift_willThrow();
  }
}

id sub_1BAB01540()
{
  v1 = v0;
  v2 = sub_1BABE793C();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___recordChangePublisher] = 0;
  v6 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton__recordChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B90);
  swift_allocObject();
  *&v0[v6] = sub_1BABE731C();
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___messagePublisher] = 0;
  v7 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton__messagePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B80);
  swift_allocObject();
  *&v0[v7] = sub_1BABE731C();
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___devicePublisher] = 0;
  v8 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton__devicePublisher;
  v9 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B70);
  swift_allocObject();
  *&v0[v8] = sub_1BABE733C();
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton____lazy_storage___pairedDevicePublisher] = 0;
  v10 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton__pairedDevicePublisher;
  v28 = v9;
  swift_allocObject();
  *&v0[v10] = sub_1BABE733C();
  v11 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_connection;
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_serverStartupToken] = -1;
  v21 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue;
  sub_1BAB22BDC(0, &qword_1ED787C60);
  sub_1BABE73AC();
  v28 = v9;
  sub_1BAAD38BC(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1550(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  (*(v25 + 104))(v24, *MEMORY[0x1E69E8098], v26);
  *&v0[v21] = sub_1BABE796C();
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_clientDescriptors] = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_zoneChangeTokens] = v9;
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_messageTokens] = v9;
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_deviceToken] = -1;
  *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_devices] = v9;
  v12 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_localDeviceID;
  v13 = sub_1BABE6CFC();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordVersionStore;
  type metadata accessor for RecordVersionStore();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC8];
  v15[2] = MEMORY[0x1E69E7CC8];
  v15[3] = v16;
  v15[4] = v16;
  *&v1[v14] = v15;
  v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedDevices] = 0;
  v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedRecordVersions] = 0;
  v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordFetchPending] = 0;
  v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_messageFetchPending] = 0;
  v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_deviceFetchPending] = 0;
  v17 = *&v1[v11];
  *&v1[v11] = 0;

  v18 = type metadata accessor for ReplicatorClientSingleton();
  v27.receiver = v1;
  v27.super_class = v18;
  return objc_msgSendSuper2(&v27, sel_init);
}

id sub_1BAB01A38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReplicatorClientSingleton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ReplicatorClientSingleton()
{
  result = qword_1ED787550;
  if (!qword_1ED787550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAB01C00()
{
  sub_1BAB01CF8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BAB01CF8()
{
  if (!qword_1ED787C00)
  {
    sub_1BABE6CFC();
    v0 = sub_1BABE799C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED787C00);
    }
  }
}

void sub_1BAB01D50(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v131 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v113 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = &v94 - v11;
  v122 = sub_1BABE6CFC();
  v101 = *(v122 - 8);
  v12 = MEMORY[0x1EEE9AC00](v122);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v94 - v18;
  v112 = type metadata accessor for ReplicatorRecord.ID(0);
  v19 = MEMORY[0x1EEE9AC00](v112);
  v111 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v119 = (&v94 - v21);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
  MEMORY[0x1EEE9AC00](v123);
  v124 = (&v94 - v22);
  v23 = type metadata accessor for ReplicatorRecord(0);
  v100 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v94 - v27;
  v104 = a1;
  v28 = sub_1BAB02A60();
  if (!v28)
  {
    sub_1BAB15A08();
    v56 = swift_allocError();
    *v57 = 3;
    *(v57 + 8) = 0;

    v125 = v56;
    swift_willThrow();
    return;
  }

  v97 = a4;
  v98 = v28;
  v29 = *(a2 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  v99 = v14;
  v114 = v23;
  if (!v29)
  {
LABEL_20:
    v58 = type metadata accessor for ReplicationXPCServerParametersAddRecords();
    v59 = objc_allocWithZone(v58);
    v60 = &v59[OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_parameters];
    *v60 = a3;
    v60[8] = v97 & 1;
    *&v59[OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_records] = v30;
    v126.receiver = v59;
    v126.super_class = v58;

    v61 = objc_msgSendSuper2(&v126, sel_init);
    v129 = 0;
    if ([v98 addRecordsWithParameters:v61 error:&v129])
    {
      v118 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordVersionStore;
      v62 = v129;
      if (v29)
      {
        v120 = (v101 + 8);
        v63 = a2 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v116 = *(v100 + 72);
        v103 = v17;
        v102 = v26;
        v117 = v61;
        while (1)
        {
          sub_1BAB22824(v63, v26, type metadata accessor for ReplicatorRecord);
          v67 = *(v104 + v118);
          v68 = v26[1];
          v129 = *v26;
          v130 = v68;

          v69 = v125;
          sub_1BABE6E2C();

          v125 = v69;
          if (v69)
          {
            break;
          }

          v123 = v67;
          v124 = v63;
          v121 = v29;
          v70 = sub_1BABE6CAC();
          v72 = v71;
          v119 = *v120;
          v119(v17, v122);
          v73 = v26[2];
          v74 = v26[3];
          v75 = v26[4];
          v76 = v26[5];
          v77 = v26;
          v78 = v112;
          v79 = v113;
          sub_1BAB22824(v77 + *(v112 + 28), v113, type metadata accessor for ReplicatorRecord.ID.Ownership);
          v80 = v111;
          *v111 = v70;
          v80[1] = v72;
          v80[2] = v73;
          v80[3] = v74;
          v80[4] = v75;
          v80[5] = v76;
          sub_1BAB22824(v79, v80 + *(v78 + 28), type metadata accessor for ReplicatorRecord.ID.Ownership);

          if (sub_1BABE75AC() < 51)
          {
            v17 = v103;
            v26 = v102;
            v64 = v114;
          }

          else
          {
            v129 = v70;
            v130 = v72;
            v81 = v99;
            v82 = v125;
            sub_1BABE6E2C();
            v64 = v114;
            v125 = v82;
            if (v82)
            {

              v83 = sub_1BABC0B24(50);
              v85 = v84;
              v87 = v86;
              v89 = v88;

              v70 = MEMORY[0x1BFAFD1F0](v83, v85, v87, v89);
              v72 = v90;

              v125 = 0;
            }

            else
            {

              v70 = sub_1BABE6CAC();
              v72 = v91;
              v119(v81, v122);
            }

            v17 = v103;
            v26 = v102;
          }

          v61 = v117;
          sub_1BAB2288C(v113, type metadata accessor for ReplicatorRecord.ID.Ownership);
          v65 = v111;
          v66 = (v111 + *(v112 + 32));
          *v66 = v70;
          v66[1] = v72;
          sub_1BABE11DC(v65, v26, v26 + *(v64 + 20));

          sub_1BAB2288C(v65, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2288C(v26, type metadata accessor for ReplicatorRecord);
          v63 = v124 + v116;
          v29 = v121 - 1;
          if (v121 == 1)
          {
            goto LABEL_32;
          }
        }

        swift_unknownObjectRelease();

        sub_1BAB2288C(v26, type metadata accessor for ReplicatorRecord);
        return;
      }
    }

    else
    {
      v92 = v129;
      v93 = sub_1BABE6ADC();

      v125 = v93;
      swift_willThrow();
    }

LABEL_32:
    swift_unknownObjectRelease();

    return;
  }

  v95 = a3;
  v102 = v26;
  v103 = v17;
  v128 = MEMORY[0x1E69E7CC0];
  sub_1BABE7B9C();
  v31 = 0;
  v32 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v96 = a2;
  v108 = a2 + v32;
  v106 = (v101 + 16);
  v105 = (v101 + 8);
  v107 = *(v100 + 72);
  v33 = v110;
  v121 = v29;
  while (1)
  {
    v118 = v31 + 1;
    sub_1BAB22824(v108 + v107 * v31, v33, type metadata accessor for ReplicatorRecord);
    v43 = *(v33 + *(v23 + 24));
    v129 = v30;
    v44 = 1 << *(v43 + 32);
    v45 = v44 < 64 ? ~(-1 << v44) : -1;
    v46 = v45 & *(v43 + 64);
    v47 = (v44 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v48 = 0;
    if (v46)
    {
      break;
    }

    while (1)
    {
LABEL_10:
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
      }

      if (v50 >= v47)
      {
        break;
      }

      v46 = *(v43 + 64 + 8 * v50);
      ++v48;
      if (v46)
      {
        v49 = v125;
        goto LABEL_14;
      }
    }

    v117 = v129;
    v33 = v110;
    v34 = v119;
    sub_1BAB22824(v110, v119, type metadata accessor for ReplicatorRecord.ID);
    v35 = v114;
    v36 = *v106;
    (*v106)(v120, v33 + *(v114 + 20), v122);
    v37 = v109;
    sub_1BAAD2DAC(v33 + *(v35 + 28), v109, &qword_1EBC132A0);
    v116 = *(v33 + *(v35 + 32));
    v115 = type metadata accessor for ReplicationXPCServerParametersRecord(0);
    v38 = objc_allocWithZone(v115);
    v39 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
    v40 = sub_1BABE6C8C();
    (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
    sub_1BAB22824(v34, &v38[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id], type metadata accessor for ReplicatorRecord.ID);
    v41 = v120;
    v42 = v122;
    v36(&v38[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version], v120, v122);
    *&v38[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values] = v117;
    swift_beginAccess();
    sub_1BAB22AD8(v37, &v38[v39]);
    swift_endAccess();
    *&v38[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_options] = v116;
    v23 = v35;
    v127.receiver = v38;
    v127.super_class = v115;
    objc_msgSendSuper2(&v127, sel_init);
    sub_1BAAD2E14(v37, &qword_1EBC132A0);
    (*v105)(v41, v42);
    sub_1BAB2288C(v119, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB2288C(v33, type metadata accessor for ReplicatorRecord);
    sub_1BABE7B6C();
    sub_1BABE7BAC();
    sub_1BABE7BBC();
    sub_1BABE7B7C();
    v29 = v121;
    v31 = v118;
    v30 = MEMORY[0x1E69E7CC0];
    if (v118 == v121)
    {
      v30 = v128;
      v17 = v103;
      v26 = v102;
      a2 = v96;
      a3 = v95;
      goto LABEL_20;
    }
  }

  while (1)
  {
    v49 = v125;
    v50 = v48;
LABEL_14:
    v51 = __clz(__rbit64(v46)) | (v50 << 6);
    v52 = *(v43 + 56);
    v53 = *(*(v43 + 48) + 8 * v51);
    v54 = v52 + *(*(type metadata accessor for ReplicatorRecord.Value(0) - 8) + 72) * v51;
    v55 = v124;
    sub_1BAB22824(v54, v124 + *(v123 + 48), type metadata accessor for ReplicatorRecord.Value);
    *v55 = v53;
    sub_1BAB02DA4(&v129, v55);
    v125 = v49;
    if (v49)
    {
      break;
    }

    v46 &= v46 - 1;
    sub_1BAAD2E14(v55, &unk_1EBC12B50);
    v48 = v50;
    if (!v46)
    {
      goto LABEL_10;
    }
  }

  swift_unknownObjectRelease();

  sub_1BAAD2E14(v55, &unk_1EBC12B50);

  sub_1BAB2288C(v110, type metadata accessor for ReplicatorRecord);
}

uint64_t sub_1BAB02A60()
{
  v1 = sub_1BABE73FC();
  isa = v1[-1].isa;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v4 = v5;
  (*(isa + 13))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(isa + 1))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1BAB16430();
  v7 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_connection);
  if (!v7)
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1BABE72BC();
    __swift_project_value_buffer(v8, qword_1ED78BBA0);
    v1 = sub_1BABE729C();
    v9 = sub_1BABE78FC();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v1, v9, "ReplicatorClient: Failed to establish a connection", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12998);
    if (swift_dynamicCast())
    {

      return v16[1];
    }
  }

  else
  {
    sub_1BAAD2E14(v19, &qword_1EBC12990);
  }

  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = sub_1BABE72BC();
  __swift_project_value_buffer(v12, qword_1ED78BBA0);
  v13 = sub_1BABE729C();
  v14 = sub_1BABE78FC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BAACF000, v13, v14, "ReplicatorClient: Failed to cast connection to server interface protocol", v15, 2u);
    MEMORY[0x1BFAFE460](v15, -1, -1);
  }

LABEL_18:
  return 0;
}

void sub_1BAB02DA4(void *a1, objc_class *a2)
{
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v11 = sub_1BABE6BAC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v48 = a2;
  v18 = v6;
  sub_1BAAD2DAC(a2, v10, &unk_1EBC12B50);
  v19 = &v10[*(v6 + 48)];
  v20 = type metadata accessor for ReplicatorRecord.Value(0);
  sub_1BAAD2DAC(v19 + *(v20 + 20), v5, &unk_1EBC13D70);
  sub_1BAB2288C(v19, type metadata accessor for ReplicatorRecord.Value);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1BAAD2E14(v5, &unk_1EBC13D70);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    (*(v12 + 32))(v17, v5, v11);
    sub_1BAB22BDC(0, &qword_1ED787070);
    (*(v12 + 16))(v15, v17, v11);
    v39 = v51;
    v40 = sub_1BAB032DC(v15);
    if (v39)
    {
      (*(v12 + 8))(v17, v11);
      return;
    }

    v41 = v40;
    v42 = URL.extendedAttributes()();
    v43 = *(v12 + 8);
    v45 = v41;
    v44 = v42;
    v43(v17, v11);
    v46 = sub_1BAAFF314(v44);
    v51 = 0;
  }

  v21 = v47;
  v22 = *v48;
  sub_1BAAD2DAC(v48, v47, &unk_1EBC12B50);
  v23 = (v21 + *(v18 + 48));
  v24 = *v23;
  v25 = v23[1];
  sub_1BAAE7824(*v23, v25);
  sub_1BAB2288C(v23, type metadata accessor for ReplicatorRecord.Value);
  v48 = type metadata accessor for ReplicationXPCServerParametersRecordValue();
  v26 = objc_allocWithZone(v48);
  v27 = &v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data];
  *&v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data] = xmmword_1BABE9A70;
  v28 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  *&v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle] = 0;
  v29 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
  *&v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes] = 0;
  *&v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version] = v22;
  swift_beginAccess();
  v30 = *v27;
  v31 = v27[1];
  *v27 = v24;
  v27[1] = v25;
  sub_1BAAE7824(v24, v25);
  v32 = v45;
  v33 = v45;
  sub_1BAADAEE8(v30, v31);
  swift_beginAccess();
  v34 = *&v26[v28];
  *&v26[v28] = v32;
  v35 = v33;

  swift_beginAccess();
  *&v26[v29] = v46;

  v50.receiver = v26;
  v50.super_class = v48;
  v36 = objc_msgSendSuper2(&v50, sel_init);

  sub_1BAAD73E4(v24, v25);
  v37 = v36;
  v38 = v49;
  MEMORY[0x1BFAFD300]();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BABE76EC();
  }

  sub_1BABE772C();
}

id sub_1BAB032DC(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BABE6B2C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1BABE6BAC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1BABE6ADC();

    swift_willThrow();
    v9 = sub_1BABE6BAC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1BAB034C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v80 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BABE6CFC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  v76 = type metadata accessor for ReplicatorRecord.ID(0);
  v16 = *(v76 - 8);
  v17 = MEMORY[0x1EEE9AC00](v76);
  v75 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v61 - v19);
  v70 = a1;
  v21 = sub_1BAB02A60();
  if (v21)
  {
    v22 = v21;
    v74 = v16;
    v23 = sub_1BAB20EDC(a2);
    if (v3)
    {
      return swift_unknownObjectRelease();
    }

    v73 = v11;
    v61 = v22;
    v78 = v23;
    LOBYTE(v79) = a3 & 1;
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAB22A84();
    v26 = sub_1BABE6A8C();
    v28 = v27;

    v29 = sub_1BABE6BDC();
    sub_1BAAD73E4(v26, v28);

    v78 = 0;
    LOBYTE(v26) = [v61 removeRecordsWithParameters:v29 error:&v78];

    if (v26)
    {
      v30 = *(a2 + 16);
      v66 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordVersionStore;
      v31 = v78;
      if (!v30)
      {
        return swift_unknownObjectRelease();
      }

      v68 = (v73 + 8);
      v32 = a2 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v62 = *(v74 + 72);
      v63 = v20;
      v64 = v15;
      v65 = v10;
      while (1)
      {
        sub_1BAB22824(v32, v20, type metadata accessor for ReplicatorRecord.ID);
        v35 = *(v70 + v66);
        v36 = v20[1];
        v78 = *v20;
        v79 = v36;

        sub_1BABE6E2C();

        if (v4)
        {
          break;
        }

        v71 = v35;
        v72 = v32;
        v73 = v30;
        v74 = 0;
        v37 = sub_1BABE6CAC();
        v39 = v38;
        v67 = *v68;
        v67(v15, v10);
        v40 = v20[2];
        v41 = v20[3];
        v42 = v20[4];
        v43 = v20[5];
        v44 = v20;
        v46 = v76;
        v45 = v77;
        sub_1BAB22824(v44 + *(v76 + 28), v77, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v47 = v75;
        *v75 = v37;
        v47[1] = v39;
        v47[2] = v40;
        v47[3] = v41;
        v47[4] = v42;
        v47[5] = v43;
        sub_1BAB22824(v45, v47 + *(v46 + 28), type metadata accessor for ReplicatorRecord.ID.Ownership);

        if (sub_1BABE75AC() < 51)
        {
          v15 = v64;
          v10 = v65;
          v4 = v74;
        }

        else
        {
          v78 = v37;
          v79 = v39;
          v48 = v69;
          v49 = v74;
          sub_1BABE6E2C();
          v4 = v49;
          if (v49)
          {

            v50 = sub_1BABC0B24(50);
            v52 = v51;
            v54 = v53;
            v56 = v55;

            v37 = MEMORY[0x1BFAFD1F0](v50, v52, v54, v56);
            v39 = v57;

            v4 = 0;
            v10 = v65;
          }

          else
          {

            v37 = sub_1BABE6CAC();
            v39 = v58;
            v59 = v48;
            v10 = v65;
            v67(v59, v65);
          }

          v15 = v64;
        }

        v20 = v63;
        sub_1BAB2288C(v77, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v33 = v75;
        v34 = (v75 + *(v76 + 32));
        *v34 = v37;
        v34[1] = v39;
        sub_1BABE15D8(v33, v20);

        sub_1BAB2288C(v33, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB2288C(v20, type metadata accessor for ReplicatorRecord.ID);
        v32 = v72 + v62;
        v30 = v73 - 1;
        if (v73 == 1)
        {
          return swift_unknownObjectRelease();
        }
      }

      swift_unknownObjectRelease();

      return sub_1BAB2288C(v20, type metadata accessor for ReplicatorRecord.ID);
    }

    else
    {
      v60 = v78;
      sub_1BABE6ADC();

      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v25 = 3;
    *(v25 + 8) = 0;

    return swift_willThrow();
  }
}

uint64_t sub_1BAB03B98@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, id *a6@<X8>)
{
  v147 = a5;
  v146 = a4;
  v152 = a3;
  v153 = a2;
  v136 = a6;
  v171[3] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  isUniquelyReferenced_nonNull_native = &v129 - v9;
  v11 = type metadata accessor for ReplicatorRecord(0);
  v166 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v167 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v129 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B18);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v164 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v129 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v150 = (&v129 - v20);
  v21 = type metadata accessor for ReplicatorRecord.ID(0);
  v154 = *(v21 - 1);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v168 = (&v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v158 = &v129 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v129 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v129 - v29);
  v138 = sub_1BABE6C8C();
  v142 = *(v138 - 8);
  v31 = MEMORY[0x1EEE9AC00](v138);
  v137 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v143 = &v129 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v162 = (&v129 - v35);
  v161 = sub_1BABE6BAC();
  isa = v161[-1].isa;
  MEMORY[0x1EEE9AC00](v161);
  v157 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7876D0 != -1)
  {
LABEL_84:
    swift_once();
  }

  v37 = sub_1BABE72BC();
  v38 = __swift_project_value_buffer(v37, qword_1ED78BBA0);

  v149 = v38;
  v39 = sub_1BABE729C();
  v40 = sub_1BABE790C();

  v41 = os_log_type_enabled(v39, v40);
  v144 = isUniquelyReferenced_nonNull_native;
  v133 = v21;
  v160 = a1;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v155 = v8;
    v43 = v30;
    v44 = v28;
    v45 = v42;
    v46 = swift_slowAlloc();
    v171[0] = v46;
    *v45 = 136446210;
    v47 = MEMORY[0x1BFAFD330](a1, v21);
    v49 = sub_1BAAFA460(v47, v48, v171);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_1BAACF000, v39, v40, "Fetching full records for IDs: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1BFAFE460](v46, -1, -1);
    v50 = v45;
    v28 = v44;
    v30 = v43;
    v8 = v155;
    MEMORY[0x1BFAFE460](v50, -1, -1);
  }

  v51 = isa;
  v21 = v153;
  v52 = sub_1BAB02A60();
  v53 = v162;
  if (!v52)
  {
    sub_1BAB15A08();
    swift_allocError();
    *v56 = 3;
    *(v56 + 8) = 0;

    return swift_willThrow();
  }

  a1 = v52;
  sub_1BAAD2DAC(v152, v162, &unk_1EBC13D70);
  v54 = v161;
  if ((*(v51 + 6))(v53, 1, v161) == 1)
  {
    sub_1BAAD2E14(v53, &unk_1EBC13D70);
    v55 = v156;
  }

  else
  {
    (*(v51 + 4))(v157, v53, v54);
    v58 = [objc_opt_self() defaultManager];
    v59 = sub_1BABE6B2C();
    v171[0] = 0;
    v60 = [v58 createDirectoryAtURL:v59 withIntermediateDirectories:1 attributes:0 error:v171];

    if (v60)
    {
      v61 = v171[0];
      v55 = v156;
    }

    else
    {
      v62 = v171[0];
      v63 = sub_1BABE6ADC();

      swift_willThrow();
      v55 = 0;
    }

    (*(isa + 1))(v157, v161);
  }

  v64 = sub_1BAB20EDC(v160);
  v156 = v55;
  if (v55)
  {
    return swift_unknownObjectRelease();
  }

  v65 = v64;

  v67 = sub_1BABB63C4(v66);

  v170 = v67;
  v169 = MEMORY[0x1E69E7CC0];
  v68 = sub_1BABE729C();
  v69 = sub_1BABE78DC();
  v70 = os_log_type_enabled(v68, v69);
  v135 = v65;
  if (v70)
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_1BAACF000, v68, v69, "Begin fetching records in batches", v71, 2u);
    v72 = v71;
    v65 = v135;
    MEMORY[0x1BFAFE460](v72, -1, -1);
  }

  sub_1BABE6C6C();
  v139 = v65[2];
  v134 = a1;
  if (!v139)
  {

    v148 = 0;
    v155 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC8];
    goto LABEL_64;
  }

  v74 = 0;
  v148 = 0;
  v141 = (*(v154 + 80) + 32) & ~*(v154 + 80);
  v140 = v65 + v141;
  v162 = &v8[7];
  v145 = MEMORY[0x1E69E7CC8];
  v161 = v8 + 6;
  *&v73 = 134349568;
  v129 = v73;
  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
  v132 = v28;
  v131 = v30;
  while (1)
  {
    if (v74 >= v65[2])
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v75 = *(v154 + 72);
    v151 = v74;
    isa = v75;
    sub_1BAB22824(&v140[v75 * v74], v30, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB22824(v30, v28, type metadata accessor for ReplicatorRecord.ID);
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1BAAF9A54(0, *(isUniquelyReferenced_nonNull_native + 16) + 1, 1, isUniquelyReferenced_nonNull_native);
    }

    v77 = *(isUniquelyReferenced_nonNull_native + 16);
    v76 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v77 >= v76 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1BAAF9A54(v76 > 1, v77 + 1, 1, isUniquelyReferenced_nonNull_native);
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v77 + 1;
    sub_1BAB2347C(v28, isUniquelyReferenced_nonNull_native + v141 + v77 * isa, type metadata accessor for ReplicatorRecord.ID);
    v169 = isUniquelyReferenced_nonNull_native;
    swift_endAccess();
    swift_beginAccess();
    v8 = v150;
    sub_1BAB1EF7C(v30, v150);
    sub_1BAB2288C(v30, type metadata accessor for ReplicatorRecord.ID);
    swift_endAccess();
    sub_1BAAD2E14(v8, &qword_1EBC12A20);
    if (*(isUniquelyReferenced_nonNull_native + 16) > 0x32uLL || !*(v170 + 16))
    {
      break;
    }

LABEL_19:
    v74 = v151 + 1;
    if (v151 + 1 == v139)
    {
      goto LABEL_63;
    }
  }

  v155 = isUniquelyReferenced_nonNull_native;
  v78 = sub_1BABE729C();
  v79 = sub_1BABE78DC();
  if (os_log_type_enabled(v78, v79))
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    *isUniquelyReferenced_nonNull_native = v129;
    *(isUniquelyReferenced_nonNull_native + 4) = v148;
    *(isUniquelyReferenced_nonNull_native + 12) = 2050;
    *(isUniquelyReferenced_nonNull_native + 14) = v155[2];
    *(isUniquelyReferenced_nonNull_native + 22) = 2048;
    *(isUniquelyReferenced_nonNull_native + 24) = *(v170 + 16);
    _os_log_impl(&dword_1BAACF000, v78, v79, "Fetching batch %{public}ld with count %{public}ld IDs; %ld IDs remaining", isUniquelyReferenced_nonNull_native, 0x20u);
    MEMORY[0x1BFAFE460](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v81 = v156;
  v82 = sub_1BAB04F6C(v80, v152, v146, v147 & 1, a1);
  v83 = v164;
  v156 = v81;
  if (v81)
  {

    swift_unknownObjectRelease();

    (*(v142 + 8))(v143, v138);
  }

  v84 = v82;

  v85 = 0;
  v160 = v84;
  v86 = *(v84 + 64);
  v157 = (v84 + 64);
  v87 = 1 << *(v84 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  a1 = v88 & v86;
  v30 = ((v87 + 63) >> 6);
  v21 = v145;
  while (a1)
  {
    v89 = v21;
    v90 = v7;
    v91 = v85;
LABEL_45:
    v93 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v94 = v93 | (v91 << 6);
    v95 = v160;
    v96 = v158;
    sub_1BAB22824(*(v160 + 48) + v94 * isa, v158, type metadata accessor for ReplicatorRecord.ID);
    v97 = *(v95 + 56) + *(v166 + 72) * v94;
    v98 = v159;
    sub_1BAB22824(v97, v159, type metadata accessor for ReplicatorRecord);
    v99 = *(v90 + 48);
    v100 = v96;
    v7 = v90;
    sub_1BAB2347C(v100, v83, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB2347C(v98, v83 + v99, type metadata accessor for ReplicatorRecord);
    v101 = 0;
    v8 = v91;
    v21 = v89;
LABEL_46:
    (*v162)(v83, v101, 1, v7);
    v102 = v163;
    sub_1BAB23414(v83, v163, &qword_1EBC12B18);
    if ((v161->isa)(v102, 1, v7) == 1)
    {

      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
      v169 = MEMORY[0x1E69E7CC0];

      v114 = __OFADD__(v148++, 1);
      if (v114)
      {
        __break(1u);
      }

      v145 = v21;
      v21 = v153;
      a1 = v134;
      v28 = v132;
      v30 = v131;
      v65 = v135;
      goto LABEL_19;
    }

    v28 = v8;
    v8 = v7;
    v103 = *(v7 + 48);
    v104 = v168;
    sub_1BAB2347C(v102, v168, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB2347C(v102 + v103, v167, type metadata accessor for ReplicatorRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v171[0] = v21;
    v106 = sub_1BABD5D18(v104);
    v107 = v21[2];
    v108 = (v105 & 1) == 0;
    v109 = v107 + v108;
    if (__OFADD__(v107, v108))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v7 = v105;
    if (v21[3] >= v109)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v171[0];
        if (v105)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1BABDD454();
        v21 = v171[0];
        if (v7)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      sub_1BABD8D48(v109, isUniquelyReferenced_nonNull_native);
      v110 = sub_1BABD5D18(v168);
      if ((v7 & 1) != (v111 & 1))
      {
        sub_1BABE7EFC();
        __break(1u);
        goto LABEL_87;
      }

      v106 = v110;
      v21 = v171[0];
      if (v7)
      {
LABEL_33:
        sub_1BAB2277C(v167, v21[7] + *(v166 + 72) * v106, type metadata accessor for ReplicatorRecord);
        sub_1BAB2288C(v168, type metadata accessor for ReplicatorRecord.ID);
        goto LABEL_34;
      }
    }

    v21[(v106 >> 6) + 8] |= 1 << v106;
    v112 = v168;
    sub_1BAB22824(v168, v21[6] + v106 * isa, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB2347C(v167, v21[7] + *(v166 + 72) * v106, type metadata accessor for ReplicatorRecord);
    sub_1BAB2288C(v112, type metadata accessor for ReplicatorRecord.ID);
    v113 = v21[2];
    v114 = __OFADD__(v113, 1);
    v115 = v113 + 1;
    if (v114)
    {
      goto LABEL_81;
    }

    v21[2] = v115;
LABEL_34:
    v85 = v28;
    v7 = v8;
    v83 = v164;
  }

  if (v30 <= (v85 + 1))
  {
    v92 = (v85 + 1);
  }

  else
  {
    v92 = v30;
  }

  v8 = (v92 - 1);
  while (1)
  {
    v91 = (v85 + 1);
    if (__OFADD__(v85, 1))
    {
      break;
    }

    if (v91 >= v30)
    {
      a1 = 0;
      v101 = 1;
      goto LABEL_46;
    }

    a1 = *&v157[8 * v91];
    ++v85;
    if (a1)
    {
      v89 = v21;
      v90 = v7;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_63:
  v155 = isUniquelyReferenced_nonNull_native;

  v28 = v145;
LABEL_64:
  v116 = MEMORY[0x1E69E7CC8];
  v117 = v137;
  sub_1BABE6C6C();
  sub_1BABE6C1C();
  v119 = v118;
  v120 = *(v142 + 8);
  v142 += 8;
  v168 = v120;
  (v120)(v117, v138);

  v8 = sub_1BABE729C();
  v121 = sub_1BABE790C();
  v122 = os_log_type_enabled(v8, v121);
  v130 = v7;
  isUniquelyReferenced_nonNull_native = v21;
  if (v122)
  {
    v123 = swift_slowAlloc();
    *v123 = 134349568;
    *(v123 + 4) = *(v28 + 16);

    *(v123 + 12) = 2050;
    *(v123 + 14) = v148;
    *(v123 + 22) = 2048;
    *(v123 + 24) = v119;
    _os_log_impl(&dword_1BAACF000, v8, v121, "Fetched %{public}ld in %{public}ld batches, in %fs", v123, 0x20u);
    MEMORY[0x1BFAFE460](v123, -1, -1);
  }

  else
  {
  }

  v21 = v28;
  v171[0] = v116;
  v30 = (v28 + 64);
  v124 = 1 << *(v28 + 32);
  v125 = -1;
  if (v124 < 64)
  {
    v125 = ~(-1 << v124);
  }

  a1 = v125 & *(v28 + 64);
  v126 = (v124 + 63) >> 6;

  v127 = 0;
  if (!a1)
  {
LABEL_71:
    while (1)
    {
      v7 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        break;
      }

      if (v7 >= v126)
      {
        (v168)(v143, v138);

        swift_unknownObjectRelease();
        *v136 = v171[0];
      }

      a1 = v30[v7];
      ++v127;
      if (a1)
      {
        goto LABEL_74;
      }
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  while (1)
  {
    v7 = v127;
LABEL_74:
    v28 = __clz(__rbit64(a1)) | (v7 << 6);
    v8 = v144;
    sub_1BAB22824(v21[6] + *(v154 + 72) * v28, v144, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB22824(v21[7] + *(v166 + 72) * v28, v8 + *(v130 + 48), type metadata accessor for ReplicatorRecord);
    v128 = v156;
    sub_1BAB071E0(v171, v8, isUniquelyReferenced_nonNull_native);
    v156 = v128;
    if (v128)
    {
      break;
    }

    a1 &= a1 - 1;
    sub_1BAAD2E14(v8, &qword_1EBC12B10);
    v127 = v7;
    if (!a1)
    {
      goto LABEL_71;
    }
  }

LABEL_87:

  sub_1BAAD2E14(v8, &qword_1EBC12B10);

  __break(1u);
  return result;
}

uint64_t sub_1BAB04F6C(char *a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v6 = v5;
  v215 = a5;
  v214 = a3;
  v219 = a2;
  v281 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for ReplicatorRecord(0);
  v240 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v241 = &v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v226 = &v208 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B18);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v208 - v17;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  v19 = MEMORY[0x1EEE9AC00](v265);
  v257 = &v208 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v253 = &v208 - v21;
  v270 = sub_1BABE6CFC();
  v22 = *(v270 - 8);
  v23 = MEMORY[0x1EEE9AC00](v270);
  v236 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v233 = &v208 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v227 = &v208 - v27;
  v28 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v256 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v230 = &v208 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v246 = &v208 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v223 = &v208 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v229 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v222 = &v208 - v39;
  v271 = type metadata accessor for ReplicatorRecord.ID(0);
  v244 = *(v271 - 8);
  v40 = MEMORY[0x1EEE9AC00](v271);
  v261 = &v208 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v247 = (&v208 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v264 = (&v208 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v225 = &v208 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v248 = &v208 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v234 = &v208 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v249 = (&v208 - v52);
  v53 = sub_1BABE73FC();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = (&v208 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v213 = v6;
  v57 = *(v6 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v56 = v57;
  (*(v54 + 104))(v56, *MEMORY[0x1E69E8020], v53);
  v58 = v57;
  LOBYTE(v57) = sub_1BABE740C();
  v60 = *(v54 + 8);
  v59 = (v54 + 8);
  v60(v56, v53);
  if ((v57 & 1) == 0)
  {
    goto LABEL_148;
  }

  LODWORD(v274) = a4;

  v62 = sub_1BABB63C4(v61);

  v59 = v62;
  v275 = v62;
  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_149;
  }

  while (1)
  {
    v63 = sub_1BABE72BC();
    v64 = __swift_project_value_buffer(v63, qword_1ED78BBA0);

    v211 = v64;
    v65 = sub_1BABE729C();
    v66 = sub_1BABE78DC();
    v67 = os_log_type_enabled(v65, v66);
    v218 = a1;
    if (v67)
    {
      v68 = swift_slowAlloc();
      *v68 = 134349056;
      *(v68 + 4) = *(a1 + 2);

      _os_log_impl(&dword_1BAACF000, v65, v66, "Begin fetch for %{public}ld records", v68, 0xCu);
      MEMORY[0x1BFAFE460](v68, -1, -1);

      v70 = v59[2];
      if (!v70)
      {
        break;
      }

      goto LABEL_5;
    }

    v70 = v59[2];
    if (!v70)
    {
      break;
    }

LABEL_5:
    v221 = 0;
    v266 = (v22 + 48);
    v250 = (v22 + 32);
    v258 = (v22 + 8);
    v237 = (v244 + 56);
    v235 = MEMORY[0x1E69E7CC0];
    v209 = v274 & 1;
    *&v69 = 134350080;
    v208 = v69;
    v242 = MEMORY[0x1E69E7CC8];
    v238 = v16;
    v239 = v18;
    while (1)
    {
      v22 = sub_1BAB1E074(v70, 0, &qword_1EBC12A40, &unk_1BABE9D50, type metadata accessor for ReplicatorRecord.ID);
      v232 = (*(v244 + 80) + 32) & ~*(v244 + 80);
      v71 = sub_1BAB206AC(&v276, v22 + v232, v70, v59, type metadata accessor for ReplicatorRecord.ID, type metadata accessor for ReplicatorRecord.ID, type metadata accessor for ReplicatorRecord.ID);
      v72 = v59;
      v59 = v279;
      a1 = v280;
      v272 = v72;

      sub_1BAAF10B4();
      if (v71 != v70)
      {
        break;
      }

      v73 = sub_1BABE6BAC();
      v74 = (*(*(v73 - 8) + 48))(v219, 1, v73);
      v276 = v22;
      v277 = 1;
      v278 = v74 != 1;
      v279 = v214;
      LOBYTE(v280) = v209;
      sub_1BABE6AAC();
      swift_allocObject();
      sub_1BABE6A9C();
      sub_1BAB2268C();
      v75 = v220;
      v76 = sub_1BABE6A8C();
      v216 = v75;
      if (v75)
      {
LABEL_150:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v78 = v76;
      v79 = v77;

      v80 = sub_1BABE6BDC();
      sub_1BAAD73E4(v78, v79);

      v276 = 0;
      v81 = [v215 recordsWithParameters:v80 error:&v276];

      v82 = v276;
      a1 = v270;
      v59 = v272;
      if (!v81)
      {
LABEL_142:
        v205 = v82;
        v206 = v242;

        sub_1BABE6ADC();

        swift_willThrow();

        return v206;
      }

      v220 = OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_failedRecordIDs;
      v22 = *&v81[OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_failedRecordIDs];
      v231 = *(v22 + 16);
      v217 = v81;
      if (v231)
      {
        v228 = v22 + v232;
        v83 = *(v271 + 32);
        v259 = *(v271 + 28);
        v84 = v249;
        v224 = (v249 + v83);
        v269 = *(v244 + 72);
        v85 = v276;
        v210 = v22;

        v22 = 0;
        while (1)
        {
          v243 = v22;
          sub_1BAB22824(v228 + v269 * v22, v84, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB22824(v84, v234, type metadata accessor for ReplicatorRecord.ID);
          v88 = v235;
          v89 = v84;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_1BAAF9A54(0, v88[2] + 1, 1, v88);
          }

          v90 = v248;
          v92 = v88[2];
          v91 = v88[3];
          if (v92 >= v91 >> 1)
          {
            v88 = sub_1BAAF9A54(v91 > 1, v92 + 1, 1, v88);
          }

          v88[2] = v92 + 1;
          sub_1BAB2347C(v234, v88 + v232 + v92 * v269, type metadata accessor for ReplicatorRecord.ID);
          swift_beginAccess();
          sub_1BABE7F9C();
          v93 = *v89;
          v262 = v89[1];
          sub_1BABE759C();
          v94 = v89[2];
          v273 = v89[3];
          v274 = v94;
          sub_1BABE759C();
          v95 = v89[5];
          v267 = v89[4];
          v263 = v95;
          sub_1BABE759C();
          v96 = v223;
          sub_1BAB22824(v259 + v89, v223, type metadata accessor for ReplicatorRecord.ID.Ownership);
          v255 = *v266;
          v97 = v255(v96, 1, a1);
          v260 = v93;
          v235 = v88;
          if (v97 == 1)
          {
            MEMORY[0x1BFAFDC20](0);
          }

          else
          {
            v98 = v227;
            (*v250)(v227, v96, a1);
            MEMORY[0x1BFAFDC20](1);
            sub_1BAAD38BC(&unk_1ED787C50, MEMORY[0x1E69695A8]);
            sub_1BABE74BC();
            v99 = v98;
            v93 = v260;
            (*v258)(v99, a1);
          }

          isa = v224[1].isa;
          v252 = v224->isa;
          v251 = isa;
          sub_1BABE759C();
          v101 = sub_1BABE7FDC();
          v102 = (v59 + 7);
          v103 = -1 << *(v59 + 32);
          v104 = v101 & ~v103;
          v105 = v262;
          if (((*(v59 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v104) & 1) == 0)
          {
LABEL_12:
            v86 = v222;
            (*v237)(v222, 1, 1, v271);
            v16 = v238;
            v87 = v243;
            goto LABEL_13;
          }

          v268 = ~v103;
          v272 = v59;
          v254 = (v59 + 7);
          while (1)
          {
            v106 = v59[6];
            v107 = v104 * v269;
            sub_1BAB22824(v106 + v104 * v269, v90, type metadata accessor for ReplicatorRecord.ID);
            v108 = *v90 == v93 && v90[1] == v105;
            if (!v108 && (sub_1BABE7EDC() & 1) == 0)
            {
              goto LABEL_26;
            }

            v109 = v90[2] == v274 && v90[3] == v273;
            if (!v109 && (sub_1BABE7EDC() & 1) == 0)
            {
              goto LABEL_26;
            }

            v110 = v90[4] == v267 && v90[5] == v263;
            if (!v110 && (sub_1BABE7EDC() & 1) == 0)
            {
              goto LABEL_26;
            }

            v111 = *(v265 + 48);
            v112 = v253;
            sub_1BAB22824(v90 + *(v271 + 28), v253, type metadata accessor for ReplicatorRecord.ID.Ownership);
            v113 = v270;
            sub_1BAB22824(v259 + v89, v112 + v111, type metadata accessor for ReplicatorRecord.ID.Ownership);
            v114 = v255;
            if (v255(v112, 1, v113) == 1)
            {
              v115 = v114(v112 + v111, 1, v113);
              v102 = v254;
              if (v115 == 1)
              {
                goto LABEL_47;
              }

              goto LABEL_24;
            }

            v116 = v246;
            sub_1BAB22824(v112, v246, type metadata accessor for ReplicatorRecord.ID.Ownership);
            if (v114(v112 + v111, 1, v113) != 1)
            {
              break;
            }

            (*v258)(v116, v113);
            v90 = v248;
            v89 = v249;
            v102 = v254;
LABEL_24:
            sub_1BAAD2E14(v112, &unk_1EBC12A28);
LABEL_25:
            a1 = v270;
            v93 = v260;
            v105 = v262;
LABEL_26:
            sub_1BAB2288C(v90, type metadata accessor for ReplicatorRecord.ID);
            v104 = (v104 + 1) & v268;
            v59 = v272;
            if (((*&v102[(v104 >> 3) & 0xFFFFFFFFFFFFFF8] >> v104) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v117 = v233;
          (*v250)(v233, v112 + v111, v113);
          LODWORD(v245) = sub_1BABE6CCC();
          v118 = *v258;
          (*v258)(v117, v113);
          v118(v116, v113);
          v90 = v248;
          v89 = v249;
          v102 = v254;
          if ((v245 & 1) == 0)
          {
            sub_1BAB2288C(v112, type metadata accessor for ReplicatorRecord.ID.Ownership);
            goto LABEL_25;
          }

LABEL_47:
          sub_1BAB2288C(v112, type metadata accessor for ReplicatorRecord.ID.Ownership);
          a1 = v270;
          v119 = (v90 + *(v271 + 32));
          v120 = *v119 == v252 && v119[1] == v251;
          v93 = v260;
          v105 = v262;
          if (!v120 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_26;
          }

          sub_1BAB2288C(v90, type metadata accessor for ReplicatorRecord.ID);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122 = v275;
          v276 = v275;
          v16 = v238;
          v87 = v243;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BAB1E59C();
            v122 = v276;
          }

          v86 = v222;
          sub_1BAB2347C(v122[6] + v107, v222, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB1FB44(v104);
          v59 = v276;
          v275 = v276;
          (*v237)(v86, 0, 1, v271);
LABEL_13:
          v22 = v87 + 1;
          swift_endAccess();
          sub_1BAAD2E14(v86, &qword_1EBC12A20);
          v84 = v249;
          sub_1BAB2288C(v249, type metadata accessor for ReplicatorRecord.ID);
          v18 = v239;
          if (v22 == v231)
          {

            v81 = v217;
            goto LABEL_59;
          }
        }
      }

      v123 = v276;
LABEL_59:
      v124 = __OFADD__(v221++, 1);
      if (v124)
      {
        goto LABEL_147;
      }

      v125 = *(*&v81[v220] + 16);

      v224 = v81;
      v126 = sub_1BABE729C();
      if (v125)
      {
        v127 = sub_1BABE78EC();
      }

      else
      {
        v127 = sub_1BABE78DC();
      }

      v128 = v127;
      if (os_log_type_enabled(v126, v127))
      {
        v129 = swift_slowAlloc();
        *v129 = v208;
        *(v129 + 4) = *(v218 + 2);

        *(v129 + 12) = 2050;
        v130 = v224;
        v131 = *(&v224->isa + OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_records);
        if (v131 >> 62)
        {
          v132 = sub_1BABE7A5C();
          v130 = v224;
        }

        else
        {
          v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v129 + 14) = v132;
        *(v129 + 22) = 2050;
        *(v129 + 24) = *(*&v217[v220] + 16);

        *(v129 + 32) = 2050;
        *(v129 + 34) = v59[2];
        *(v129 + 42) = 2050;
        *(v129 + 44) = v221;
        _os_log_impl(&dword_1BAACF000, v126, v128, "Requested %{public}ld records; fetched %{public}ld; failed %{public}ld; remaining %{public}ld; fetch count %{public}ld", v129, 0x34u);
        MEMORY[0x1BFAFE460](v129, -1, -1);
      }

      else
      {

        v130 = v224;
        v126 = v224;
      }

      v133 = *(&v130->isa + OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_records);
      MEMORY[0x1EEE9AC00](v134);
      v135 = v219;
      *(&v208 - 4) = v213;
      *(&v208 - 3) = v135;
      *(&v208 - 2) = ObjectType;

      v136 = v216;
      v137 = sub_1BAAFF1EC(MEMORY[0x1E69E7CC8], sub_1BAB227E4, (&v208 - 3), v133);
      v220 = v136;
      if (v136)
      {

        v207 = v242;

        return v207;
      }

      v138 = v137;

      v139 = 0;
      v228 = v138;
      v140 = (v138 + 64);
      v141 = 1 << v138[32];
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      else
      {
        v142 = -1;
      }

      v143 = v142 & *(v138 + 8);
      v144 = (v141 + 63) >> 6;
      v232 = (v138 + 64);
      v231 = v144;
LABEL_75:
      v272 = v59;
      if (!v143)
      {
        if (v144 <= (v139 + 1))
        {
          v147 = (v139 + 1);
        }

        else
        {
          v147 = v144;
        }

        v82 = (v147 - 1);
        v59 = v270;
        while (1)
        {
          v146 = (v139 + 1);
          if (__OFADD__(v139, 1))
          {
            break;
          }

          if (v146 >= v144)
          {
            v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10);
            (*(*(v169 - 8) + 56))(v16, 1, 1, v169);
            v243 = 0;
            v245 = v82;
            goto LABEL_86;
          }

          v143 = *(v140 + 8 * v146);
          ++v139;
          if (v143)
          {
            v245 = v146;
            goto LABEL_85;
          }
        }

        __break(1u);
        goto LABEL_142;
      }

      v245 = v139;
      v146 = v139;
      v59 = v270;
LABEL_85:
      v243 = (v143 - 1) & v143;
      v148 = __clz(__rbit64(v143)) | (v146 << 6);
      v149 = v228;
      v150 = v225;
      sub_1BAB22824(*(v228 + 48) + *(v244 + 72) * v148, v225, type metadata accessor for ReplicatorRecord.ID);
      v151 = *(v149 + 56) + *(v240 + 72) * v148;
      v152 = v226;
      sub_1BAB22824(v151, v226, type metadata accessor for ReplicatorRecord);
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10);
      v154 = *(v153 + 48);
      sub_1BAB2347C(v150, v16, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2347C(v152, v16 + v154, type metadata accessor for ReplicatorRecord);
      (*(*(v153 - 8) + 56))(v16, 0, 1, v153);
LABEL_86:
      sub_1BAB23414(v16, v18, &qword_1EBC12B18);
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10);
      if ((*(*(v155 - 8) + 48))(v18, 1, v155) != 1)
      {
        v156 = *(v155 + 48);
        v157 = v264;
        sub_1BAB2347C(v18, v264, type metadata accessor for ReplicatorRecord.ID);
        v158 = v157;
        v159 = v247;
        sub_1BAB22824(v158, v247, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB2347C(&v18[v156], v241, type metadata accessor for ReplicatorRecord);
        v160 = v242;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v276 = v160;
        v161 = sub_1BABD5D18(v159);
        v163 = v160[2];
        v164 = (v162 & 1) == 0;
        v124 = __OFADD__(v163, v164);
        v165 = v163 + v164;
        if (v124)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          break;
        }

        v166 = v162;
        if (v160[3] >= v165)
        {
          v168 = v230;
          if (v22)
          {
            goto LABEL_92;
          }

          v22 = v161;
          sub_1BABDD454();
          v161 = v22;
          v16 = v276;
          if ((v166 & 1) == 0)
          {
            goto LABEL_96;
          }

LABEL_93:
          sub_1BAB2277C(v241, v16[7] + *(v240 + 72) * v161, type metadata accessor for ReplicatorRecord);
          sub_1BAB2288C(v247, type metadata accessor for ReplicatorRecord.ID);
        }

        else
        {
          sub_1BABD8D48(v165, v22);
          v161 = sub_1BABD5D18(v247);
          v168 = v230;
          if ((v166 & 1) != (v167 & 1))
          {
            sub_1BABE7EFC();
            __break(1u);
            goto LABEL_150;
          }

LABEL_92:
          v16 = v276;
          if (v166)
          {
            goto LABEL_93;
          }

LABEL_96:
          v16[(v161 >> 6) + 8] |= 1 << v161;
          v170 = v161;
          v171 = v247;
          sub_1BAB22824(v247, v16[6] + *(v244 + 72) * v161, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2347C(v241, v16[7] + *(v240 + 72) * v170, type metadata accessor for ReplicatorRecord);
          sub_1BAB2288C(v171, type metadata accessor for ReplicatorRecord.ID);
          v172 = v16[2];
          v124 = __OFADD__(v172, 1);
          v173 = v172 + 1;
          if (v124)
          {
            goto LABEL_145;
          }

          v16[2] = v173;
        }

        swift_beginAccess();
        sub_1BABE7F9C();
        v174 = v264;
        v175 = *v264;
        v273 = v264[1];
        v274 = v175;
        sub_1BABE759C();
        v176 = v174[3];
        v263 = v174[2];
        v262 = v176;
        sub_1BABE759C();
        v177 = v174[5];
        v268 = v174[4];
        v267 = v177;
        sub_1BABE759C();
        v260 = *(v271 + 28);
        sub_1BAB22824(v174 + v260, v168, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v259 = *v266;
        v178 = v259(v168, 1, v59);
        v242 = v16;
        if (v178 == 1)
        {
          MEMORY[0x1BFAFDC20](0);
        }

        else
        {
          v179 = v227;
          (*v250)(v227, v168, v59);
          MEMORY[0x1BFAFDC20](1);
          sub_1BAAD38BC(&unk_1ED787C50, MEMORY[0x1E69695A8]);
          sub_1BABE74BC();
          (*v258)(v179, v59);
        }

        v180 = v264 + *(v271 + 32);
        v181 = *(v180 + 1);
        v255 = *v180;
        v254 = v181;
        sub_1BABE759C();
        v182 = sub_1BABE7FDC();
        v59 = v272;
        v183 = -1 << *(v272 + 32);
        v184 = v182 & ~v183;
        v269 = (v272 + 7);
        v185 = v261;
        v186 = v263;
        v187 = v262;
        if (((*(v272 + ((v184 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v184) & 1) == 0)
        {
LABEL_73:
          v145 = v229;
          (*v237)(v229, 1, 1, v271);
          v16 = v238;
          goto LABEL_74;
        }

        v188 = ~v183;
        v189 = *(v244 + 72);
        v252 = ~v183;
        while (2)
        {
          sub_1BAB22824(v59[6] + v189 * v184, v185, type metadata accessor for ReplicatorRecord.ID);
          v190 = *v185 == v274 && v185[1] == v273;
          if (v190 || (sub_1BABE7EDC() & 1) != 0)
          {
            v191 = v185[2] == v186 && v185[3] == v187;
            if (v191 || (sub_1BABE7EDC() & 1) != 0)
            {
              v192 = v185[4] == v268 && v185[5] == v267;
              if (v192 || (sub_1BABE7EDC() & 1) != 0)
              {
                v193 = *(v265 + 48);
                v194 = v185 + *(v271 + 28);
                v195 = v257;
                sub_1BAB22824(v194, v257, type metadata accessor for ReplicatorRecord.ID.Ownership);
                sub_1BAB22824(v264 + v260, v195 + v193, type metadata accessor for ReplicatorRecord.ID.Ownership);
                v196 = v270;
                a1 = v259;
                if (v259(v195, 1, v270) == 1)
                {
                  v197 = (a1)(v195 + v193, 1, v196);
                  v59 = v272;
                  v187 = v262;
                  if (v197 == 1)
                  {
                    goto LABEL_127;
                  }

LABEL_104:
                  sub_1BAAD2E14(v195, &unk_1EBC12A28);
LABEL_105:
                  v185 = v261;
                  v186 = v263;
                }

                else
                {
                  v198 = v256;
                  sub_1BAB22824(v195, v256, type metadata accessor for ReplicatorRecord.ID.Ownership);
                  if ((a1)(v195 + v193, 1, v196) == 1)
                  {
                    (*v258)(v198, v196);
                    v59 = v272;
                    v187 = v262;
                    v188 = v252;
                    goto LABEL_104;
                  }

                  a1 = v236;
                  (*v250)(v236, v195 + v193, v196);
                  LODWORD(v251) = sub_1BABE6CCC();
                  v199 = *v258;
                  (*v258)(a1, v196);
                  v199(v256, v196);
                  v59 = v272;
                  v187 = v262;
                  v188 = v252;
                  if ((v251 & 1) == 0)
                  {
                    sub_1BAB2288C(v195, type metadata accessor for ReplicatorRecord.ID.Ownership);
                    goto LABEL_105;
                  }

LABEL_127:
                  sub_1BAB2288C(v195, type metadata accessor for ReplicatorRecord.ID.Ownership);
                  v185 = v261;
                  v200 = &v261[*(v271 + 32)];
                  v201 = *v200 == v255 && *(v200 + 1) == v254;
                  v186 = v263;
                  if (v201 || (sub_1BABE7EDC() & 1) != 0)
                  {
                    sub_1BAB2288C(v185, type metadata accessor for ReplicatorRecord.ID);
                    v202 = swift_isUniquelyReferenced_nonNull_native();
                    v203 = v275;
                    v276 = v275;
                    v16 = v238;
                    if (!v202)
                    {
                      sub_1BAB1E59C();
                      v203 = v276;
                    }

                    v145 = v229;
                    sub_1BAB2347C(v203[6] + v189 * v184, v229, type metadata accessor for ReplicatorRecord.ID);
                    sub_1BAB1FB44(v184);
                    v59 = v276;
                    v275 = v276;
                    (*v237)(v145, 0, 1, v271);
LABEL_74:
                    swift_endAccess();
                    sub_1BAAD2E14(v145, &qword_1EBC12A20);
                    sub_1BAB2288C(v264, type metadata accessor for ReplicatorRecord.ID);
                    v18 = v239;
                    v140 = v232;
                    v144 = v231;
                    v139 = v245;
                    v143 = v243;
                    goto LABEL_75;
                  }
                }
              }
            }
          }

          sub_1BAB2288C(v185, type metadata accessor for ReplicatorRecord.ID);
          v184 = (v184 + 1) & v188;
          if (((*&v269[(v184 >> 3) & 0xFFFFFFFFFFFFFF8] >> v184) & 1) == 0)
          {
            goto LABEL_73;
          }

          continue;
        }
      }

      v59 = v272;
      v70 = v272[2];
      if (!v70)
      {
        goto LABEL_140;
      }
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    swift_once();
  }

  v242 = MEMORY[0x1E69E7CC8];
  v235 = MEMORY[0x1E69E7CC0];
LABEL_140:

  return v242;
}

void sub_1BAB071E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v45 = a3;
  v43 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v39 - v5;
  v6 = type metadata accessor for ReplicatorRecord(0);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B10);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for ReplicatorRecord.ID(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  sub_1BAB0789C(a2, v15);
  v23 = *(v17 + 48);
  v45 = v16;
  if (v23(v15, 1, v16) == 1)
  {
    v24 = v20;
    sub_1BAAD2E14(v15, &qword_1EBC12A20);
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v25 = sub_1BABE72BC();
    __swift_project_value_buffer(v25, qword_1ED78BBA0);
    v26 = v44;
    sub_1BAAD2DAC(a2, v44, &qword_1EBC12B10);
    v27 = sub_1BABE729C();
    v28 = sub_1BABE78EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = v30;
      *v29 = 136446210;
      sub_1BAAD2DAC(v26, v11, &qword_1EBC12B10);
      v31 = *(v8 + 48);
      sub_1BAB2347C(v11, v24, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2288C(&v11[v31], type metadata accessor for ReplicatorRecord);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1BABE7AEC();
      MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
      v32 = v24;
      MEMORY[0x1BFAFD240](*(v32 + *(v45 + 32)), *(v32 + *(v45 + 32) + 8));
      MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x1BFAFD240](v32[2], v32[3]);
      MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
      MEMORY[0x1BFAFD240](v32[4], v32[5]);
      MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
      type metadata accessor for ReplicatorRecord.ID.Ownership(0);
      sub_1BABE7BFC();
      v33 = v46;
      v34 = v47;
      sub_1BAB2288C(v32, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAAD2E14(v26, &qword_1EBC12B10);
      v35 = sub_1BAAFA460(v33, v34, &v48);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1BAACF000, v27, v28, "Records from server included unknown ID: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1BFAFE460](v30, -1, -1);
      MEMORY[0x1BFAFE460](v29, -1, -1);
    }

    else
    {

      sub_1BAAD2E14(v26, &qword_1EBC12B10);
    }
  }

  else
  {
    sub_1BAB2347C(v15, v22, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAAD2DAC(a2, v11, &qword_1EBC12B10);
    v36 = &v11[*(v8 + 48)];
    v37 = v39;
    sub_1BAB2347C(v36, v39, type metadata accessor for ReplicatorRecord);
    sub_1BAB2288C(v11, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB229FC(v22, v37);
    sub_1BAB22824(v22, v20, type metadata accessor for ReplicatorRecord.ID);
    v38 = v42;
    sub_1BAB22824(v37, v42, type metadata accessor for ReplicatorRecord);
    (*(v40 + 56))(v38, 0, 1, v41);
    sub_1BAB3022C(v38, v20);
    sub_1BAB2288C(v22, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB2288C(v37, type metadata accessor for ReplicatorRecord);
  }
}

uint64_t sub_1BAB0789C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for ReplicatorRecord.ID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = sub_1BABE73FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  LOBYTE(v17) = sub_1BABE740C();
  v20 = *(v14 + 8);
  v19 = v14 + 8;
  v20(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  sub_1BABE1A64(a1, v12);

  sub_1BAAD2DAC(v12, v10, &qword_1EBC12A20);
  v21 = (*(v5 + 48))(v10, 1, v4);
  v19 = v4;
  v4 = v5;
  if (v21 != 1)
  {
    sub_1BAAD2E14(v12, &qword_1EBC12A20);
    v32 = v37;
    sub_1BAB2347C(v10, v37, type metadata accessor for ReplicatorRecord.ID);
    v33 = 0;
    return (*(v4 + 56))(v32, v33, 1, v19);
  }

  sub_1BAAD2E14(v10, &qword_1EBC12A20);
  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v22 = sub_1BABE72BC();
  __swift_project_value_buffer(v22, qword_1ED78BBA0);
  v23 = a1;
  v24 = v36;
  sub_1BAB22824(v23, v36, type metadata accessor for ReplicatorRecord.ID);
  v25 = sub_1BABE729C();
  v26 = sub_1BABE790C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136446210;
    v38 = 0;
    v39 = 0xE000000000000000;
    v40 = v28;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
    MEMORY[0x1BFAFD240](*(v24 + *(v19 + 32)), *(v24 + *(v19 + 32) + 8));
    MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
    MEMORY[0x1BFAFD240](v24[2], v24[3]);
    MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
    MEMORY[0x1BFAFD240](v24[4], v24[5]);
    MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
    type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    sub_1BABE7BFC();
    v29 = v38;
    v30 = v39;
    sub_1BAB2288C(v24, type metadata accessor for ReplicatorRecord.ID);
    v31 = sub_1BAAFA460(v29, v30, &v40);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1BAACF000, v25, v26, "Cannot find client-defined ID for internal ID: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1BFAFE460](v28, -1, -1);
    MEMORY[0x1BFAFE460](v27, -1, -1);
  }

  else
  {

    sub_1BAB2288C(v24, type metadata accessor for ReplicatorRecord.ID);
  }

  sub_1BAAD2E14(v12, &qword_1EBC12A20);
  v33 = 1;
  v32 = v37;
  return (*(v4 + 56))(v32, v33, 1, v19);
}

uint64_t sub_1BAB07E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_1BABE794C();
  if (!v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1BAB07EF0@<X0>(unint64_t i@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, id *a6@<X8>)
{
  v143 = a5;
  v142 = a4;
  v148 = a3;
  v130 = a6;
  v165[3] = *MEMORY[0x1E69E9840];
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AF0);
  v156 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v140 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AF8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v159 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v127 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v146 = &v127 - v14;
  v15 = type metadata accessor for ReplicatorRecord.ID(0);
  v16 = *(v15 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v162 = (&v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v154 = &v127 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v152 = &v127 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v151 = (&v127 - v23);
  v132 = sub_1BABE6C8C();
  v136 = *(v132 - 8);
  v24 = MEMORY[0x1EEE9AC00](v132);
  v131 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v139 = &v127 - v26;
  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v27 = sub_1BABE72BC();
    v28 = __swift_project_value_buffer(v27, qword_1ED78BBA0);

    v145 = v28;
    v29 = sub_1BABE729C();
    v30 = sub_1BABE790C();

    v31 = os_log_type_enabled(v29, v30);
    v128 = v15;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v165[0] = v33;
      *v32 = 136446210;
      v34 = i;
      v35 = MEMORY[0x1BFAFD330](i, v15);
      v37 = sub_1BAAFA460(v35, v36, v165);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1BAACF000, v29, v30, "Fetching files for IDs: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFAFE460](v33, -1, -1);
      MEMORY[0x1BFAFE460](v32, -1, -1);
    }

    else
    {
      v34 = i;
    }

    v38 = sub_1BAB02A60();
    i = v160;
    if (!v38)
    {
      sub_1BAB15A08();
      swift_allocError();
      *v45 = 3;
      *(v45 + 8) = 0;

      return swift_willThrow();
    }

    v39 = v38;
    v40 = [objc_opt_self() defaultManager];
    v41 = sub_1BABE6B2C();
    v165[0] = 0;
    v42 = [v40 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:v165];

    if (v42)
    {
      v43 = v165[0];
      v44 = v161;
    }

    else
    {
      v47 = v165[0];
      v48 = sub_1BABE6ADC();

      swift_willThrow();
      v44 = 0;
    }

    v49 = sub_1BAB20EDC(v34);
    if (v44)
    {
      return swift_unknownObjectRelease();
    }

    v149 = 0;
    v50 = v49;

    v52 = sub_1BABB63C4(v51);
    v141 = v50;

    v164 = v52;
    v163 = MEMORY[0x1E69E7CC0];
    v53 = sub_1BABE729C();
    v54 = sub_1BABE78DC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1BAACF000, v53, v54, "Begin fetching URLs in batches", v55, 2u);
      MEMORY[0x1BFAFE460](v55, -1, -1);
    }

    sub_1BABE6C6C();
    v57 = v141;
    v58 = v141[2];
    v138 = a2;
    v137 = v16;
    v133 = v58;
    v129 = v39;
    if (!v58)
    {

      v144 = 0;
      v150 = MEMORY[0x1E69E7CC0];
      v15 = MEMORY[0x1E69E7CC8];
      goto LABEL_63;
    }

    v59 = 0;
    v144 = 0;
    v135 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v134 = v141 + v135;
    v157 = (v156 + 7);
    v15 = MEMORY[0x1E69E7CC8];
    v156 += 6;
    *&v56 = 134349568;
    v127 = v56;
    v60 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v59 >= v57[2])
      {
        goto LABEL_82;
      }

      v61 = *(v16 + 72);
      v147 = v59;
      v161 = v61;
      v62 = v60;
      v63 = v151;
      sub_1BAB22824(v134 + v61 * v59, v151, type metadata accessor for ReplicatorRecord.ID);
      v64 = v63;
      v65 = v62;
      sub_1BAB22824(v64, v152, type metadata accessor for ReplicatorRecord.ID);
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1BAAF9A54(0, v62[2] + 1, 1, v62);
      }

      v66 = v65;
      v67 = *(v65 + 16);
      v150 = v66;
      v68 = v66[3];
      v69 = i;
      if (v67 >= v68 >> 1)
      {
        v150 = sub_1BAAF9A54(v68 > 1, v67 + 1, 1, v150);
      }

      v70 = v150;
      v150[2] = v67 + 1;
      sub_1BAB2347C(v152, v70 + v135 + v67 * v161, type metadata accessor for ReplicatorRecord.ID);
      v163 = v70;
      swift_endAccess();
      swift_beginAccess();
      v71 = v146;
      v72 = v151;
      sub_1BAB1EF7C(v151, v146);
      sub_1BAB2288C(v72, type metadata accessor for ReplicatorRecord.ID);
      swift_endAccess();
      v73 = v71;
      v60 = v70;
      sub_1BAAD2E14(v73, &qword_1EBC12A20);
      if (v70[2] > 0x32uLL || !*(v164 + 16))
      {
        v74 = sub_1BABE729C();
        v75 = sub_1BABE78DC();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = v127;
          *(v76 + 4) = v144;
          *(v76 + 12) = 2050;
          *(v76 + 14) = *(v60 + 16);
          *(v76 + 22) = 2048;
          *(v76 + 24) = *(v164 + 16);
          _os_log_impl(&dword_1BAACF000, v74, v75, "Fetching batch %{public}ld with count %{public}ld IDs; %ld IDs remaining", v76, 0x20u);
          MEMORY[0x1BFAFE460](v76, -1, -1);
        }

        v78 = v149;
        v79 = sub_1BAB08FC0(v77, v148, v142, v143 & 1, v39);
        v149 = v78;
        if (v78)
        {

          swift_unknownObjectRelease();

          (*(v136 + 8))(v139, v132);
        }

        v80 = v79;

        v81 = 0;
        v155 = v80;
        v82 = *(v80 + 64);
        v153 = v80 + 64;
        v83 = 1 << *(v80 + 32);
        if (v83 < 64)
        {
          v84 = ~(-1 << v83);
        }

        else
        {
          v84 = -1;
        }

        v60 = v84 & v82;
        v16 = (v83 + 63) >> 6;
        for (i = v69; ; i = v160)
        {
          v85 = v159;
          if (!v60)
          {
            if (v16 <= v81 + 1)
            {
              v88 = v81 + 1;
            }

            else
            {
              v88 = v16;
            }

            v89 = v88 - 1;
            while (1)
            {
              v87 = v81 + 1;
              if (__OFADD__(v81, 1))
              {
                break;
              }

              if (v87 >= v16)
              {
                (*v157)(v159, 1, 1, i);
                v60 = 0;
                goto LABEL_45;
              }

              v60 = *(v153 + 8 * v87);
              ++v81;
              if (v60)
              {
                v86 = v15;
                goto LABEL_44;
              }
            }

            __break(1u);
            goto LABEL_62;
          }

          v86 = v15;
          v87 = v81;
LABEL_44:
          v90 = __clz(__rbit64(v60));
          v60 &= v60 - 1;
          v91 = v90 | (v87 << 6);
          v93 = v154;
          v92 = v155;
          sub_1BAB22824(*(v155 + 48) + v91 * v161, v154, type metadata accessor for ReplicatorRecord.ID);
          v94 = *(*(v92 + 56) + 8 * v91);
          v95 = *(i + 48);
          sub_1BAB2347C(v93, v85, type metadata accessor for ReplicatorRecord.ID);
          *(v85 + v95) = v94;
          (*v157)(v85, 0, 1, i);

          v89 = v87;
          v15 = v86;
LABEL_45:
          v96 = v158;
          sub_1BAB23414(v85, v158, &unk_1EBC12AF8);
          if ((*v156)(v96, 1, i) == 1)
          {

            v60 = MEMORY[0x1E69E7CC0];
            v163 = MEMORY[0x1E69E7CC0];

            v110 = __OFADD__(v144++, 1);
            if (v110)
            {
              __break(1u);
            }

            a2 = v138;
            v16 = v137;
            v39 = v129;
            goto LABEL_18;
          }

          v97 = v89;
          a2 = *(v96 + *(i + 48));
          v98 = v96;
          v99 = v162;
          sub_1BAB2347C(v98, v162, type metadata accessor for ReplicatorRecord.ID);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v165[0] = v15;
          v102 = sub_1BABD5D18(v99);
          v103 = v15[2];
          v104 = (v101 & 1) == 0;
          v105 = v103 + v104;
          if (__OFADD__(v103, v104))
          {
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          i = v101;
          if (v15[3] >= v105)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v15 = v165[0];
              if (v101)
              {
                goto LABEL_32;
              }
            }

            else
            {
              sub_1BABDD740();
              v15 = v165[0];
              if (i)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            sub_1BABD93E0(v105, isUniquelyReferenced_nonNull_native);
            v106 = sub_1BABD5D18(v162);
            if ((i & 1) != (v107 & 1))
            {
              sub_1BABE7EFC();
              __break(1u);
              goto LABEL_86;
            }

            v102 = v106;
            v15 = v165[0];
            if (i)
            {
LABEL_32:
              *(v15[7] + 8 * v102) = a2;

              sub_1BAB2288C(v162, type metadata accessor for ReplicatorRecord.ID);
              goto LABEL_33;
            }
          }

          v15[(v102 >> 6) + 8] |= 1 << v102;
          v108 = v162;
          sub_1BAB22824(v162, v15[6] + v102 * v161, type metadata accessor for ReplicatorRecord.ID);
          *(v15[7] + 8 * v102) = a2;
          sub_1BAB2288C(v108, type metadata accessor for ReplicatorRecord.ID);
          v109 = v15[2];
          v110 = __OFADD__(v109, 1);
          v111 = v109 + 1;
          if (v110)
          {
            goto LABEL_80;
          }

          v15[2] = v111;
LABEL_33:
          v81 = v97;
        }
      }

      i = v69;
LABEL_18:
      v59 = v147 + 1;
      v57 = v141;
    }

    while (v147 + 1 != v133);
LABEL_62:
    v150 = v60;

LABEL_63:
    v112 = MEMORY[0x1E69E7CC8];
    v113 = v131;
    sub_1BABE6C6C();
    sub_1BABE6C1C();
    v115 = v114;
    v116 = *(v136 + 8);
    v136 += 8;
    v162 = v116;
    (v116)(v113, v132);

    v117 = sub_1BABE729C();
    v118 = sub_1BABE790C();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 134349568;
      *(v119 + 4) = v15[2];

      *(v119 + 12) = 2050;
      *(v119 + 14) = v144;
      *(v119 + 22) = 2048;
      *(v119 + 24) = v115;
      _os_log_impl(&dword_1BAACF000, v117, v118, "Fetched %{public}ld in %{public}ld batches, in %fs", v119, 0x20u);
      MEMORY[0x1BFAFE460](v119, -1, -1);
    }

    else
    {
    }

    v165[0] = v112;
    v120 = 1 << *(v15 + 32);
    v121 = -1;
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    a2 = v121 & v15[8];
    v122 = (v120 + 63) >> 6;

    v123 = 0;
    if (a2)
    {
      break;
    }

LABEL_70:
    while (1)
    {
      v124 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v124 >= v122)
      {
        (v162)(v139, v132);

        swift_unknownObjectRelease();
        *v130 = v165[0];
      }

      a2 = v15[v124 + 8];
      ++v123;
      if (a2)
      {
        goto LABEL_73;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

  while (1)
  {
    v124 = v123;
LABEL_73:
    i = __clz(__rbit64(a2)) | (v124 << 6);
    v125 = v15[6] + *(v16 + 72) * i;
    v16 = v140;
    sub_1BAB22824(v125, v140, type metadata accessor for ReplicatorRecord.ID);
    *(v16 + *(v160 + 48)) = *(v15[7] + 8 * i);

    v126 = v149;
    sub_1BAB0B0A4(v165, v16);
    v149 = v126;
    if (v126)
    {
      break;
    }

    a2 &= a2 - 1;
    sub_1BAAD2E14(v16, &qword_1EBC12AF0);
    v123 = v124;
    v16 = v137;
    if (!a2)
    {
      goto LABEL_70;
    }
  }

LABEL_86:

  sub_1BAAD2E14(v16, &qword_1EBC12AF0);

  __break(1u);
  return result;
}

uint64_t sub_1BAB08FC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v6 = v5;
  v217 = a5;
  LODWORD(v271) = a4;
  v216 = a3;
  v214 = a2;
  v277 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AF8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v209 - v12);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  v14 = MEMORY[0x1EEE9AC00](v263);
  v253 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v248 = &v209 - v16;
  v270 = sub_1BABE6CFC();
  v17 = *(v270 - 8);
  v18 = MEMORY[0x1EEE9AC00](v270);
  v236 = &v209 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v233 = &v209 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v226 = &v209 - v22;
  v23 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v244 = &v209 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v228 = &v209 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v247 = &v209 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v224 = &v209 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v229 = &v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v223 = &v209 - v34;
  v260 = type metadata accessor for ReplicatorRecord.ID(0);
  v239 = *(v260 - 8);
  v35 = MEMORY[0x1EEE9AC00](v260);
  v257 = &v209 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v230 = (&v209 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v262 = (&v209 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v225 = &v209 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v249 = &v209 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v234 = &v209 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v250 = (&v209 - v47);
  v48 = sub_1BABE73FC();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = (&v209 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v215 = v6;
  v52 = *(v6 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v51 = v52;
  (*(v49 + 104))(v51, *MEMORY[0x1E69E8020], v48);
  v53 = v52;
  v54 = sub_1BABE740C();
  (*(v49 + 8))(v51, v48);
  if (v54)
  {

    v56 = sub_1BABB63C4(v55);

    v269 = v56;
    v272 = v56;
    if (qword_1ED7876D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_150:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v57 = sub_1BABE72BC();
  v58 = __swift_project_value_buffer(v57, qword_1ED78BBA0);

  v218 = v58;
  v59 = sub_1BABE729C();
  v60 = sub_1BABE78DC();
  v61 = v11;
  if (os_log_type_enabled(v59, v60))
  {
    v62 = swift_slowAlloc();
    *v62 = 134349056;
    *(v62 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1BAACF000, v59, v60, "Begin fetch for %{public}ld URLs", v62, 0xCu);
    MEMORY[0x1BFAFE460](v62, -1, -1);
  }

  else
  {
  }

  v63 = a1;
  v64 = v13;
  if (v269[2])
  {
    v211 = sub_1BABE6AAC();
    v220 = 0;
    v264 = (v17 + 6);
    v245 = (v17 + 4);
    v254 = (v17 + 1);
    v237 = (v239 + 56);
    v235 = MEMORY[0x1E69E7CC0];
    v210 = v271 & 1;
    *&v65 = 134350080;
    v209 = v65;
    v11 = &unk_1BABEA080;
    v240 = MEMORY[0x1E69E7CC8];
    v238 = v61;
    v243 = v13;
    v17 = v257;
    v222 = a1;
    while (1)
    {
      v13 = v64;
      v273 = v63;
      v274 = 256;
      v275 = v216;
      v276 = v210;
      swift_allocObject();

      sub_1BABE6A9C();
      sub_1BAB2268C();
      v66 = v219;
      v67 = sub_1BABE6A8C();
      v219 = v66;
      if (v66)
      {
        break;
      }

      v69 = v67;
      v70 = v68;

      a1 = sub_1BABE6BDC();
      sub_1BAAD73E4(v69, v70);

      v273 = 0;
      v71 = [v217 recordsWithParameters:a1 error:&v273];

      if (!v71)
      {
        v206 = v273;
        v207 = v240;

        sub_1BABE6ADC();

        swift_willThrow();

        return v207;
      }

      v227 = OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_failedRecordIDs;
      v72 = *(&v71->isa + OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_failedRecordIDs);
      v242 = *(v72 + 16);
      if (v242)
      {
        v221 = v71;
        v241 = (*(v239 + 80) + 32) & ~*(v239 + 80);
        v232 = (v72 + v241);
        a1 = v260;
        v73 = *(v260 + 32);
        v259 = *(v260 + 28);
        v74 = v250;
        v231 = (v250 + v73);
        v266 = *(v239 + 72);
        v75 = v273;
        v212 = v72;

        v76 = 0;
        v77 = v270;
        while (1)
        {
          v246 = v76;
          sub_1BAB22824(&v232[v266 * v76], v74, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB22824(v74, v234, type metadata accessor for ReplicatorRecord.ID);
          v79 = v235;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v79 = sub_1BAAF9A54(0, v79[2] + 1, 1, v79);
          }

          v81 = v79[2];
          v80 = v79[3];
          if (v81 >= v80 >> 1)
          {
            v79 = sub_1BAAF9A54(v80 > 1, v81 + 1, 1, v79);
          }

          v79[2] = v81 + 1;
          v235 = v79;
          sub_1BAB2347C(v234, v79 + v241 + v81 * v266, type metadata accessor for ReplicatorRecord.ID);
          swift_beginAccess();
          sub_1BABE7F9C();
          v82 = v74[1];
          v271 = *v74;
          sub_1BABE759C();
          v83 = v74[2];
          v267 = v74[3];
          v268 = v83;
          sub_1BABE759C();
          v84 = v74[5];
          v265 = v74[4];
          v261 = v84;
          sub_1BABE759C();
          v85 = v224;
          sub_1BAB22824(v74 + v259, v224, type metadata accessor for ReplicatorRecord.ID.Ownership);
          v258 = *v264;
          if (v258(v85, 1, v77) == 1)
          {
            MEMORY[0x1BFAFDC20](0);
          }

          else
          {
            v86 = v226;
            (*v245)(v226, v85, v77);
            MEMORY[0x1BFAFDC20](1);
            sub_1BAAD38BC(&unk_1ED787C50, MEMORY[0x1E69695A8]);
            sub_1BABE74BC();
            (*v254)(v86, v77);
          }

          v87 = v249;
          v88 = v231[1];
          v255 = *v231;
          v252 = v88;
          sub_1BABE759C();
          v89 = sub_1BABE7FDC();
          v90 = v269;
          v91 = (v269 + 7);
          v92 = -1 << *(v269 + 32);
          v93 = v89 & ~v92;
          if (((*(v269 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v93) & 1) == 0)
          {
LABEL_13:
            v78 = v223;
            (*v237)(v223, 1, 1, a1);
            v13 = v238;
            v64 = v243;
            v17 = v257;
            goto LABEL_14;
          }

          v94 = ~v92;
          v251 = v82;
          v256 = ~v92;
          while (1)
          {
            v95 = v93 * v266;
            sub_1BAB22824(v90[6] + v93 * v266, v87, type metadata accessor for ReplicatorRecord.ID);
            v96 = *v87 == v271 && v87[1] == v82;
            if (!v96 && (sub_1BABE7EDC() & 1) == 0)
            {
              goto LABEL_27;
            }

            v97 = v87[2] == v268 && v87[3] == v267;
            if (!v97 && (sub_1BABE7EDC() & 1) == 0)
            {
              goto LABEL_27;
            }

            v98 = v87[4] == v265 && v87[5] == v261;
            if (!v98 && (sub_1BABE7EDC() & 1) == 0)
            {
              goto LABEL_27;
            }

            v99 = v91;
            v100 = *(v263 + 48);
            v101 = v248;
            sub_1BAB22824(v87 + *(a1 + 28), v248, type metadata accessor for ReplicatorRecord.ID.Ownership);
            v102 = v270;
            sub_1BAB22824(v250 + v259, v101 + v100, type metadata accessor for ReplicatorRecord.ID.Ownership);
            v103 = v258;
            if (v258(v101, 1, v102) == 1)
            {
              v104 = v103(v101 + v100, 1, v102);
              v91 = v99;
              if (v104 == 1)
              {
                goto LABEL_48;
              }

              goto LABEL_25;
            }

            v105 = v247;
            sub_1BAB22824(v101, v247, type metadata accessor for ReplicatorRecord.ID.Ownership);
            if (v103(v101 + v100, 1, v102) != 1)
            {
              break;
            }

            (*v254)(v105, v102);
            v82 = v251;
            v91 = v99;
LABEL_25:
            sub_1BAAD2E14(v101, &unk_1EBC12A28);
LABEL_26:
            v90 = v269;
            v77 = v270;
            a1 = v260;
            v87 = v249;
            v94 = v256;
LABEL_27:
            sub_1BAB2288C(v87, type metadata accessor for ReplicatorRecord.ID);
            v93 = (v93 + 1) & v94;
            if (((*&v91[(v93 >> 3) & 0xFFFFFFFFFFFFFF8] >> v93) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v106 = v233;
          (*v245)(v233, v101 + v100, v102);
          v107 = sub_1BABE6CCC();
          v108 = *v254;
          (*v254)(v106, v102);
          v108(v247, v102);
          v82 = v251;
          v91 = v99;
          if ((v107 & 1) == 0)
          {
            sub_1BAB2288C(v101, type metadata accessor for ReplicatorRecord.ID.Ownership);
            goto LABEL_26;
          }

LABEL_48:
          sub_1BAB2288C(v101, type metadata accessor for ReplicatorRecord.ID.Ownership);
          a1 = v260;
          v87 = v249;
          v109 = &v249[*(v260 + 32)];
          v110 = *v109 == v255 && *(v109 + 1) == v252;
          v90 = v269;
          v77 = v270;
          v94 = v256;
          if (!v110 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_27;
          }

          sub_1BAB2288C(v87, type metadata accessor for ReplicatorRecord.ID);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v112 = v272;
          v273 = v272;
          v13 = v238;
          v113 = v243;
          v17 = v257;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BAB1E59C();
            v112 = v273;
          }

          v78 = v223;
          sub_1BAB2347C(v112[6] + v95, v223, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB1FB44(v93);
          v90 = v273;
          v272 = v273;
          (*v237)(v78, 0, 1, a1);
          v64 = v113;
LABEL_14:
          v269 = v90;
          v76 = (&v246->isa + 1);
          swift_endAccess();
          sub_1BAAD2E14(v78, &qword_1EBC12A20);
          v74 = v250;
          sub_1BAB2288C(v250, type metadata accessor for ReplicatorRecord.ID);
          if (v76 == v242)
          {

            v11 = &unk_1BABEA080;
            v61 = v13;
            v71 = v221;
            goto LABEL_60;
          }
        }
      }

      v114 = v273;
      v64 = v13;
LABEL_60:
      v115 = __OFADD__(v220++, 1);
      if (v115)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v116 = (*(&v71->isa + v227))[2];

      v117 = v71;
      v221 = v71;
      v118 = sub_1BABE729C();
      if (v116)
      {
        v119 = sub_1BABE78EC();
      }

      else
      {
        v119 = sub_1BABE78DC();
      }

      v120 = v119;
      if (os_log_type_enabled(v118, v119))
      {
        v121 = swift_slowAlloc();
        *v121 = v209;
        *(v121 + 4) = v222[2];

        *(v121 + 12) = 2050;
        v122 = v221;
        v123 = *(&v221->isa + OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_records);
        if (v123 >> 62)
        {
          v124 = sub_1BABE7A5C();
          v122 = v221;
        }

        else
        {
          v124 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v121 + 14) = v124;
        *(v121 + 22) = 2050;
        *(v121 + 24) = (*(&v117->isa + v227))[2];

        *(v121 + 32) = 2050;
        *(v121 + 34) = v269[2];
        *(v121 + 42) = 2050;
        *(v121 + 44) = v220;
        _os_log_impl(&dword_1BAACF000, v118, v120, "Requested %{public}ld URLs; fetched %{public}ld; failed %{public}ld; remaining %{public}ld; fetch count %{public}ld", v121, 0x34u);
        MEMORY[0x1BFAFE460](v121, -1, -1);
        v64 = v243;
      }

      else
      {

        v122 = v221;
        v118 = v221;
      }

      v125 = *(&v122->isa + OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_records);
      MEMORY[0x1EEE9AC00](v126);
      v127 = v214;
      *(&v209 - 4) = v215;
      *(&v209 - 3) = v127;
      *(&v209 - 2) = ObjectType;

      v128 = v219;
      v129 = sub_1BAAFF1EC(MEMORY[0x1E69E7CC8], sub_1BAB226E0, (&v209 - 3), v125);
      v219 = v128;
      if (v128)
      {

        v208 = v240;

        return v208;
      }

      v130 = v129;

      v131 = 0;
      v227 = v130;
      v132 = v130 + 64;
      v133 = 1 << v130[32];
      if (v133 < 64)
      {
        v134 = ~(-1 << v133);
      }

      else
      {
        v134 = -1;
      }

      v135 = v134 & *(v130 + 8);
      v136 = (v133 + 63) >> 6;
      v137 = v269;
      v232 = v132;
      v231 = v136;
LABEL_76:
      v269 = v137;
      if (!v135)
      {
        if (v136 <= &v131->isa + 1)
        {
          v141 = &v131->isa + 1;
        }

        else
        {
          v141 = v136;
        }

        v142 = (v141 - 1);
        a1 = v270;
        while (1)
        {
          v140 = &v131->isa + 1;
          if (__OFADD__(v131, 1))
          {
            break;
          }

          if (v140 >= v136)
          {
            v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AF0);
            (*(*(v197 - 8) + 56))(v61, 1, 1, v197);
            v241 = 0;
            v242 = v142;
            goto LABEL_87;
          }

          v135 = *&v132[8 * v140];
          v131 = (v131 + 1);
          if (v135)
          {
            v139 = v61;
            v242 = v140;
            goto LABEL_86;
          }
        }

        __break(1u);
        goto LABEL_143;
      }

      v139 = v61;
      v242 = v131;
      v140 = v131;
      a1 = v270;
LABEL_86:
      v241 = (v135 - 1) & v135;
      v143 = __clz(__rbit64(v135)) | (v140 << 6);
      v144 = v227;
      v145 = v225;
      sub_1BAB22824(*(v227 + 48) + *(v239 + 72) * v143, v225, type metadata accessor for ReplicatorRecord.ID);
      v146 = *(*(v144 + 56) + 8 * v143);
      v11 = &unk_1BABEA080;
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AF0);
      v148 = *(v147 + 48);
      v149 = v145;
      v61 = v139;
      sub_1BAB2347C(v149, v139, type metadata accessor for ReplicatorRecord.ID);
      *(v139 + v148) = v146;
      (*(*(v147 - 8) + 56))(v139, 0, 1, v147);

      v64 = v243;
LABEL_87:
      sub_1BAB23414(v61, v64, &unk_1EBC12AF8);
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AF0);
      if ((*(*(v150 - 8) + 48))(v64, 1, v150) != 1)
      {
        v151 = *(v64 + *(v150 + 48));
        v152 = v262;
        sub_1BAB2347C(v64, v262, type metadata accessor for ReplicatorRecord.ID);
        v13 = v230;
        sub_1BAB22824(v152, v230, type metadata accessor for ReplicatorRecord.ID);
        v153 = v240;
        v154 = swift_isUniquelyReferenced_nonNull_native();
        v273 = v153;
        v155 = sub_1BABD5D18(v13);
        v157 = v153[2];
        v158 = (v156 & 1) == 0;
        v115 = __OFADD__(v157, v158);
        v159 = v157 + v158;
        if (v115)
        {
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v160 = v156;
        if (v153[3] >= v159)
        {
          if ((v154 & 1) == 0)
          {
            v201 = v155;
            sub_1BABDD740();
            v155 = v201;
          }
        }

        else
        {
          sub_1BABD93E0(v159, v154);
          v155 = sub_1BABD5D18(v13);
          if ((v160 & 1) != (v161 & 1))
          {
            sub_1BABE7EFC();
            __break(1u);
            break;
          }
        }

        v162 = v273;
        v240 = v273;
        if (v160)
        {
          *(*(v273 + 7) + 8 * v155) = v151;

          sub_1BAB2288C(v13, type metadata accessor for ReplicatorRecord.ID);
        }

        else
        {
          *(v273 + (v155 >> 6) + 8) |= 1 << v155;
          v163 = v155;
          sub_1BAB22824(v13, v162[6] + *(v239 + 72) * v155, type metadata accessor for ReplicatorRecord.ID);
          *(v162[7] + 8 * v163) = v151;
          sub_1BAB2288C(v13, type metadata accessor for ReplicatorRecord.ID);
          v164 = v162[2];
          v115 = __OFADD__(v164, 1);
          v165 = v164 + 1;
          if (v115)
          {
            goto LABEL_148;
          }

          v162[2] = v165;
        }

        swift_beginAccess();
        sub_1BABE7F9C();
        v166 = v262;
        v167 = v262[1];
        v271 = *v262;
        sub_1BABE759C();
        v168 = v166[2];
        v261 = v166[3];
        sub_1BABE759C();
        v169 = v166[4];
        v265 = v166[5];
        v266 = v169;
        sub_1BABE759C();
        v259 = *(v260 + 28);
        v170 = v228;
        sub_1BAB22824(v166 + v259, v228, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v258 = *v264;
        if (v258(v170, 1, a1) == 1)
        {
          MEMORY[0x1BFAFDC20](0);
        }

        else
        {
          v171 = v226;
          (*v245)(v226, v170, a1);
          MEMORY[0x1BFAFDC20](1);
          sub_1BAAD38BC(&unk_1ED787C50, MEMORY[0x1E69695A8]);
          sub_1BABE74BC();
          (*v254)(v171, a1);
        }

        v172 = v260;
        v173 = (v262 + *(v260 + 32));
        v174 = v173[1];
        v252 = *v173;
        v251 = v174;
        sub_1BABE759C();
        v175 = sub_1BABE7FDC();
        v137 = v269;
        v176 = (v269 + 7);
        v177 = -1 << *(v269 + 32);
        v178 = v175 & ~v177;
        v179 = v261;
        if (((*(v269 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v178) & 1) == 0)
        {
LABEL_74:
          v138 = v229;
          (*v237)(v229, 1, 1, v172);
          v61 = v238;
          goto LABEL_75;
        }

        v267 = ~v177;
        v268 = *(v239 + 72);
        v256 = v167;
        v255 = v168;
        v246 = (v269 + 7);
        while (2)
        {
          v180 = v268 * v178;
          sub_1BAB22824(v137[6] + v268 * v178, v17, type metadata accessor for ReplicatorRecord.ID);
          v181 = *v17 == v271 && v17[1] == v167;
          if (v181 || (sub_1BABE7EDC() & 1) != 0)
          {
            v182 = v17[2] == v168 && v17[3] == v179;
            if (v182 || (sub_1BABE7EDC() & 1) != 0)
            {
              v183 = v17[4] == v266 && v17[5] == v265;
              if (v183 || (sub_1BABE7EDC() & 1) != 0)
              {
                v184 = *(v263 + 48);
                v185 = v253;
                sub_1BAB22824(v17 + *(v172 + 28), v253, type metadata accessor for ReplicatorRecord.ID.Ownership);
                sub_1BAB22824(v262 + v259, v185 + v184, type metadata accessor for ReplicatorRecord.ID.Ownership);
                v186 = v270;
                v187 = v258;
                if (v258(v185, 1, v270) == 1)
                {
                  if (v187(v185 + v184, 1, v186) == 1)
                  {
                    goto LABEL_127;
                  }

LABEL_104:
                  sub_1BAAD2E14(v185, &unk_1EBC12A28);
LABEL_105:
                  v17 = v257;
                  v137 = v269;
                  v167 = v256;
                  v168 = v255;
                  v179 = v261;
                }

                else
                {
                  v188 = v172;
                  v189 = v187;
                  v190 = v244;
                  sub_1BAB22824(v185, v244, type metadata accessor for ReplicatorRecord.ID.Ownership);
                  if (v189(v185 + v184, 1, v186) == 1)
                  {
                    (*v254)(v190, v186);
                    v172 = v188;
                    v176 = v246;
                    goto LABEL_104;
                  }

                  v191 = v236;
                  (*v245)(v236, v185 + v184, v186);
                  v192 = sub_1BABE6CCC();
                  v193 = *v254;
                  v194 = v191;
                  v172 = v260;
                  (*v254)(v194, v186);
                  v193(v190, v186);
                  v176 = v246;
                  if ((v192 & 1) == 0)
                  {
                    sub_1BAB2288C(v185, type metadata accessor for ReplicatorRecord.ID.Ownership);
                    goto LABEL_105;
                  }

LABEL_127:
                  sub_1BAB2288C(v185, type metadata accessor for ReplicatorRecord.ID.Ownership);
                  v17 = v257;
                  v195 = &v257[*(v172 + 32)];
                  v196 = *v195 == v252 && *(v195 + 1) == v251;
                  v137 = v269;
                  v167 = v256;
                  v168 = v255;
                  v179 = v261;
                  if (v196 || (sub_1BABE7EDC() & 1) != 0)
                  {
                    sub_1BAB2288C(v17, type metadata accessor for ReplicatorRecord.ID);
                    v198 = swift_isUniquelyReferenced_nonNull_native();
                    v199 = v272;
                    v273 = v272;
                    v200 = v238;
                    if (!v198)
                    {
                      sub_1BAB1E59C();
                      v199 = v273;
                    }

                    v138 = v229;
                    sub_1BAB2347C(v199[6] + v180, v229, type metadata accessor for ReplicatorRecord.ID);
                    sub_1BAB1FB44(v178);
                    v137 = v273;
                    v272 = v273;
                    (*v237)(v138, 0, 1, v172);
                    v61 = v200;
LABEL_75:
                    swift_endAccess();
                    sub_1BAAD2E14(v138, &qword_1EBC12A20);
                    sub_1BAB2288C(v262, type metadata accessor for ReplicatorRecord.ID);
                    v64 = v243;
                    v11 = &unk_1BABEA080;
                    v132 = v232;
                    v136 = v231;
                    v131 = v242;
                    v135 = v241;
                    goto LABEL_76;
                  }
                }
              }
            }
          }

          sub_1BAB2288C(v17, type metadata accessor for ReplicatorRecord.ID);
          v178 = (v178 + 1) & v267;
          if (((*(&v176->isa + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) == 0)
          {
            goto LABEL_74;
          }

          continue;
        }
      }

      v63 = v222;
      if (!v269[2])
      {
        goto LABEL_140;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v240 = MEMORY[0x1E69E7CC8];
    v235 = MEMORY[0x1E69E7CC0];
LABEL_140:

    v202 = v63;
    v142 = sub_1BABE729C();
    v203 = sub_1BABE78DC();
    if (os_log_type_enabled(v142, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 134349056;
      *(v204 + 4) = v202[2];

      _os_log_impl(&dword_1BAACF000, v142, v203, "End fetch for %{public}ld URLs", v204, 0xCu);
      MEMORY[0x1BFAFE460](v204, -1, -1);
    }

    else
    {
LABEL_143:
    }

    return v240;
  }

  return result;
}

void sub_1BAB0B0A4(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for ReplicatorRecord.ID(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v33 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v31 - v16);
  sub_1BAB0789C(a2, v11);
  v18 = *(v13 + 48);
  v34 = v12;
  if (v18(v11, 1, v12) == 1)
  {
    sub_1BAAD2E14(v11, &qword_1EBC12A20);
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v19 = sub_1BABE72BC();
    __swift_project_value_buffer(v19, qword_1ED78BBA0);
    v20 = v35;
    sub_1BAAD2DAC(a2, v35, &qword_1EBC12AF0);
    v21 = sub_1BABE729C();
    v22 = sub_1BABE78EC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v23 = 136446210;
      sub_1BAAD2DAC(v20, v7, &qword_1EBC12AF0);

      v24 = v33;
      sub_1BAB2347C(v7, v33, type metadata accessor for ReplicatorRecord.ID);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1BABE7AEC();
      MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
      MEMORY[0x1BFAFD240](*(v24 + *(v34 + 32)), *(v24 + *(v34 + 32) + 8));
      MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x1BFAFD240](v24[2], v24[3]);
      MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
      MEMORY[0x1BFAFD240](v24[4], v24[5]);
      MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
      type metadata accessor for ReplicatorRecord.ID.Ownership(0);
      sub_1BABE7BFC();
      v25 = v36;
      v26 = v37;
      sub_1BAB2288C(v24, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAAD2E14(v20, &qword_1EBC12AF0);
      v27 = sub_1BAAFA460(v25, v26, &v38);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1BAACF000, v21, v22, "Records from server included unknown ID: %{public}s", v23, 0xCu);
      v28 = v32;
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFAFE460](v28, -1, -1);
      MEMORY[0x1BFAFE460](v23, -1, -1);
    }

    else
    {

      sub_1BAAD2E14(v20, &qword_1EBC12AF0);
    }
  }

  else
  {
    sub_1BAB2347C(v11, v17, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAAD2DAC(a2, v7, &qword_1EBC12AF0);
    v29 = *&v7[*(v4 + 48)];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *a1;
    sub_1BAAE68EC(v29, v17, isUniquelyReferenced_nonNull_native);
    *a1 = v36;
    sub_1BAB2288C(v17, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB2288C(v7, type metadata accessor for ReplicatorRecord.ID);
  }
}

uint64_t sub_1BAB0B5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((*(a1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedRecordVersions) & 1) != 0 || (result = sub_1BAB0B678(), !v4))
  {

    v9 = sub_1BABE19D0(a2, a3);

    *a4 = v9;
  }

  return result;
}

uint64_t sub_1BAB0B678()
{
  v1 = v0;
  v190[8] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A08);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v166 = v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v157 - v5;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  v7 = MEMORY[0x1EEE9AC00](v178);
  v177 = v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v176 = v157 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v175 = v157 - v11;
  v12 = sub_1BABE6CFC();
  v188 = *(v12 - 8);
  v189 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v165 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v183 = v157 - v15;
  v173 = type metadata accessor for ReplicatorRecord.ID(0);
  v186 = *(v173 - 8);
  v16 = MEMORY[0x1EEE9AC00](v173);
  v174 = (v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v180 = (v157 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v157 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (v157 - v23);
  v184 = type metadata accessor for ReplicatorRecordVersion();
  v187 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v26 = v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BABE73FC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *&v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue];
  *v30 = v31;
  (*(v28 + 104))(v30, *MEMORY[0x1E69E8020], v27);
  v32 = v31;
  v33 = sub_1BABE740C();
  v34 = (*(v28 + 8))(v30, v27);
  if ((v33 & 1) == 0)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v35 = sub_1BAB02A60(v34);
  if (!v35)
  {
    if (qword_1ED7876D0 == -1)
    {
LABEL_26:
      v72 = sub_1BABE72BC();
      __swift_project_value_buffer(v72, qword_1ED78BBA0);
      v73 = sub_1BABE729C();
      v74 = sub_1BABE78EC();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1BAACF000, v73, v74, "Could not fetch record versions because target could not be created", v75, 2u);
        MEMORY[0x1BFAFE460](v75, -1, -1);
      }

      sub_1BAB15A08();
      swift_allocError();
      *v76 = 3;
      *(v76 + 8) = 0;

      return swift_willThrow();
    }

LABEL_94:
    swift_once();
    goto LABEL_26;
  }

  v162 = v6;
  v160 = v35;
  v158 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedRecordVersions;
  v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedRecordVersions] = 0;
  v164 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordVersionStore;

  v159 = sub_1BABE1B9C();

  v36 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_clientDescriptors;
  swift_beginAccess();
  v37 = *&v1[v36];
  v38 = v37[2];
  v39 = MEMORY[0x1E69E7CC0];
  v167 = v1;
  if (v38)
  {
    v40 = sub_1BAB1E170(v38, 0);
    v41 = sub_1BAB208F0(v190, v40 + 32, v38, v37);
    v33 = v190[2];
    v181 = v190[4];
    v182 = v41;

    sub_1BAAF10B4();
    if (v182 != v38)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v39 = v40;
    v1 = v167;
  }

  v190[0] = v39;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB20E34();
  v42 = v185;
  v43 = sub_1BABE6A8C();
  v185 = v42;
  if (v42)
  {
    goto LABEL_97;
  }

  v45 = v43;
  v46 = v44;

  v47 = sub_1BABE6BDC();
  sub_1BAAD73E4(v45, v46);

  v190[0] = 0;
  v48 = [v160 recordVersionsWithParameters:v47 error:v190];

  v49 = v190[0];
  if (!v48)
  {
    v78 = v190[0];

    sub_1BABE6ADC();

    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  sub_1BABE6A7C();
  swift_allocObject();
  v50 = v49;
  sub_1BABE6A6C();
  v33 = sub_1BABE6BEC();
  v37 = v51;
  sub_1BAB20E88();
  v52 = v185;
  sub_1BABE6A5C();
  if (v52)
  {
    goto LABEL_98;
  }

  v172 = 0;
  sub_1BAAD73E4(v33, v37);

  v37 = v190[0];
  if (!v190[0])
  {
    __break(1u);
LABEL_96:
    sub_1BABE7EFC();
    __break(1u);
LABEL_97:
    swift_unexpectedError();
    __break(1u);
LABEL_98:
    sub_1BAAD73E4(v33, v37);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v53 = v37[2];
  v179 = v37;
  if (v53)
  {
    v171 = v22;
    v54 = *(v184 + 20);
    v184 = v37 + ((*(v187 + 80) + 32) & ~*(v187 + 80));
    v185 = v54;
    v55 = (v188 + 16);
    v181 = (v188 + 40);
    v182 = (v188 + 32);

    v57 = 0;
    v58 = MEMORY[0x1E69E7CC8];
    v37 = v183;
    while (1)
    {
      if (v57 >= *(v56 + 16))
      {
        goto LABEL_82;
      }

      sub_1BAB22824(v184 + v187[9] * v57, v26, type metadata accessor for ReplicatorRecordVersion);
      sub_1BAB22824(v26, v24, type metadata accessor for ReplicatorRecord.ID);
      (*v55)(v37, &v26[v185], v189);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v190[0] = v58;
      v60 = sub_1BABD5D18(v24);
      v62 = v58[2];
      v63 = (v61 & 1) == 0;
      v64 = __OFADD__(v62, v63);
      v65 = v62 + v63;
      if (v64)
      {
        goto LABEL_83;
      }

      v33 = v61;
      if (v58[3] < v65)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v71 = v60;
      sub_1BABDCC60();
      v60 = v71;
      v37 = v183;
      v58 = v190[0];
      if ((v33 & 1) == 0)
      {
LABEL_21:
        v58[(v60 >> 6) + 8] |= 1 << v60;
        v67 = v60;
        sub_1BAB22824(v24, v58[6] + *(v186 + 72) * v60, type metadata accessor for ReplicatorRecord.ID);
        v68 = v58[7] + *(v188 + 72) * v67;
        v37 = v183;
        (*(v188 + 32))(v68, v183, v189);
        sub_1BAB2288C(v24, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB2288C(v26, type metadata accessor for ReplicatorRecordVersion);
        v69 = v58[2];
        v64 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v64)
        {
          goto LABEL_89;
        }

        v58[2] = v70;
        goto LABEL_13;
      }

LABEL_12:
      (*(v188 + 40))(v58[7] + *(v188 + 72) * v60, v37, v189);
      sub_1BAB2288C(v24, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2288C(v26, type metadata accessor for ReplicatorRecordVersion);
LABEL_13:
      ++v57;
      v56 = v179;
      if (v53 == v57)
      {

        v1 = v167;
        v22 = v171;
        goto LABEL_32;
      }
    }

    sub_1BABD7E44(v65, isUniquelyReferenced_nonNull_native);
    v60 = sub_1BABD5D18(v24);
    if ((v33 & 1) != (v66 & 1))
    {
      goto LABEL_96;
    }

LABEL_20:
    v58 = v190[0];
    if ((v33 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v58 = MEMORY[0x1E69E7CC8];
LABEL_32:
  v79 = v1;

  v81 = v172;
  v82 = sub_1BAB21998(v80, v79);
  v83 = v81;
  v163 = v58;

  v84 = *(v82 + 16);
  v85 = v186;
  v157[1] = v79;
  if (v84)
  {
    v157[0] = v81;
    v190[0] = MEMORY[0x1E69E7CC0];
    v168 = v84;
    sub_1BAAFAB68(0, v84, 0);
    v86 = v190[0];
    v87 = v82 + 64;
    v88 = sub_1BABE7A0C();
    v89 = 0;
    v172 = v188 + 16;
    v171 = (v188 + 32);
    v170 = v188 + 8;
    v161 = v82 + 72;
    v173 = v82 + 64;
    v169 = v82;
    while ((v88 & 0x8000000000000000) == 0 && v88 < 1 << *(v82 + 32))
    {
      if ((*(v87 + 8 * (v88 >> 6)) & (1 << v88)) == 0)
      {
        goto LABEL_85;
      }

      v183 = 1 << v88;
      v184 = v88 >> 6;
      v92 = *(v82 + 36);
      v181 = v89;
      v182 = v92;
      v93 = v178;
      v94 = *(v178 + 48);
      v95 = *(v82 + 48);
      v185 = *(v85 + 72);
      v187 = v86;
      v96 = v22;
      v97 = v175;
      sub_1BAB22824(v95 + v185 * v88, v175, type metadata accessor for ReplicatorRecord.ID);
      v98 = *(v82 + 56);
      v100 = v188;
      v99 = v189;
      (*(v188 + 16))(v97 + v94, v98 + *(v188 + 72) * v88, v189);
      v101 = v176;
      sub_1BAB2347C(v97, v176, type metadata accessor for ReplicatorRecord.ID);
      v102 = v97 + v94;
      v22 = v96;
      v86 = v187;
      (*(v100 + 32))(v101 + *(v93 + 48), v102, v99);
      v103 = v101;
      v104 = v177;
      sub_1BAB23414(v103, v177, &qword_1EBC12A10);
      v105 = *(v93 + 48);
      sub_1BAB2347C(v104, v22, type metadata accessor for ReplicatorRecord.ID);
      (*(v100 + 8))(v104 + v105, v99);
      v190[0] = v86;
      v107 = v86[2];
      v106 = v86[3];
      if (v107 >= v106 >> 1)
      {
        sub_1BAAFAB68(v106 > 1, v107 + 1, 1);
        v86 = v190[0];
      }

      v86[2] = v107 + 1;
      v85 = v186;
      sub_1BAB2347C(v22, v86 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + v107 * v185, type metadata accessor for ReplicatorRecord.ID);
      v82 = v169;
      v90 = 1 << *(v169 + 32);
      v87 = v173;
      if (v88 >= v90)
      {
        goto LABEL_86;
      }

      v108 = *(v173 + 8 * v184);
      if ((v108 & v183) == 0)
      {
        goto LABEL_87;
      }

      if (v182 != *(v169 + 36))
      {
        goto LABEL_88;
      }

      v109 = v108 & (-2 << (v88 & 0x3F));
      if (v109)
      {
        v90 = __clz(__rbit64(v109)) | v88 & 0x7FFFFFFFFFFFFFC0;
        v91 = v181;
      }

      else
      {
        v110 = v184 << 6;
        v111 = v184 + 1;
        v112 = (v161 + 8 * v184);
        while (v111 < (v90 + 63) >> 6)
        {
          v114 = *v112++;
          v113 = v114;
          v110 += 64;
          ++v111;
          if (v114)
          {
            sub_1BAADAEFC(v88, v182, 0);
            v90 = __clz(__rbit64(v113)) + v110;
            goto LABEL_50;
          }
        }

        sub_1BAADAEFC(v88, v182, 0);
LABEL_50:
        v91 = v181;
      }

      v89 = v91 + 1;
      v88 = v90;
      if (v89 == v168)
      {

        v1 = v167;
        v83 = v157[0];
        goto LABEL_53;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v86 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v115 = sub_1BAB14C04(v86);
  v116 = v180;
  if (v83)
  {
    swift_unknownObjectRelease();
  }

  v178 = 0;
  if (v115)
  {
    v187 = v86;
    v117 = *(v115 + 64);
    v182 = (v115 + 64);
    v183 = v115;
    v118 = 1 << *(v115 + 32);
    v119 = -1;
    if (v118 < 64)
    {
      v119 = ~(-1 << v118);
    }

    v120 = v119 & v117;
    v181 = ((v118 + 63) >> 6);
    v184 = v188 + 8;
    v185 = v188 + 16;

    v121 = 0;
    if (!v120)
    {
LABEL_60:
      if (v181 <= v121 + 1)
      {
        v123 = (v121 + 1);
      }

      else
      {
        v123 = v181;
      }

      v124 = v123 - 1;
      while (1)
      {
        v122 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          break;
        }

        if (v122 >= v181)
        {
          v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
          v147 = v166;
          (*(*(v146 - 8) + 56))(v166, 1, 1, v146);
          v133 = v147;
          v120 = 0;
          goto LABEL_68;
        }

        v120 = v182[v122];
        ++v121;
        if (v120)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    while (1)
    {
      v122 = v121;
LABEL_67:
      v125 = __clz(__rbit64(v120));
      v120 &= v120 - 1;
      v126 = v183;
      v127 = *(v186 + 72) * (v125 | (v122 << 6));
      sub_1BAB22824(*(v183 + 48) + v127, v116, type metadata accessor for ReplicatorRecord.ID);
      v128 = v174;
      sub_1BAB22824(*(v126 + 56) + v127, v174, type metadata accessor for ReplicatorRecord.ID);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
      v130 = *(v129 + 48);
      v131 = v116;
      v132 = v166;
      sub_1BAB2347C(v131, v166, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2347C(v128, v132 + v130, type metadata accessor for ReplicatorRecord.ID);
      (*(*(v129 - 8) + 56))(v132, 0, 1, v129);
      v124 = v122;
      v133 = v132;
LABEL_68:
      v134 = v162;
      sub_1BAB23414(v133, v162, &qword_1EBC12A08);
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
      if ((*(*(v135 - 8) + 48))(v134, 1, v135) == 1)
      {
        break;
      }

      v136 = *(v135 + 48);
      v137 = v180;
      sub_1BAB2347C(v134, v180, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2347C(v134 + v136, v174, type metadata accessor for ReplicatorRecord.ID);
      v138 = v163;
      if (!v163[2])
      {
        goto LABEL_90;
      }

      v139 = sub_1BABD5D18(v137);
      if ((v140 & 1) == 0)
      {
        goto LABEL_91;
      }

      v142 = v188;
      v141 = v189;
      v143 = v165;
      (*(v188 + 16))(v165, v138[7] + *(v188 + 72) * v139, v189);
      v144 = v174;
      sub_1BABE11DC(v180, v174, v143);

      v145 = *(v142 + 8);
      v116 = v180;
      v145(v143, v141);
      sub_1BAB2288C(v144, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2288C(v116, type metadata accessor for ReplicatorRecord.ID);
      v121 = v124;
      if (!v120)
      {
        goto LABEL_60;
      }
    }

    v1 = v167;
  }

  v148 = sub_1BABE1B9C();

  v149 = sub_1BAB4C184(v148, v159);

  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v150 = sub_1BABE72BC();
  __swift_project_value_buffer(v150, qword_1ED78BBA0);
  v151 = v163;

  v152 = sub_1BABE729C();
  v153 = sub_1BABE790C();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    *v154 = 134349312;
    v155 = v151[2];

    *(v154 + 4) = v155;

    *(v154 + 12) = 2050;
    *(v154 + 14) = v149[2];

    _os_log_impl(&dword_1BAACF000, v152, v153, "Fetched %{public}ld record versions; %{public}ld changes", v154, 0x16u);
    MEMORY[0x1BFAFE460](v154, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v156 = v158;

  sub_1BABE1B9C();

  v1[v156] = 1;
  v190[0] = v149;
  sub_1BABE730C();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BAB0CBB0()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BAB02A60();
  if (v0)
  {
    v5[0] = 0;
    if ([v0 syncAndReturnError_])
    {
      v1 = v5[0];
    }

    else
    {
      v4 = v5[0];
      sub_1BABE6ADC();

      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v2 = 3;
    *(v2 + 8) = 0;

    return swift_willThrow();
  }
}

uint64_t sub_1BAB0CCAC(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v23 = *(a2 + 32);
  v24 = v5;
  v25 = *(a2 + 64);
  v6 = *(a2 + 16);
  v21 = *a2;
  v22 = v6;
  swift_beginAccess();
  sub_1BAB21C84(a2, v19);
  sub_1BABB0148(v20, a2);
  swift_endAccess();
  sub_1BAB21D34(v20);
  sub_1BAB0CF10();
  sub_1BAB0D43C();
  sub_1BAB001C8();
  v7 = sub_1BAB02A60();
  if (v7)
  {
    v8 = v7;
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[0] = v21;
    v19[1] = v22;
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAB21D88();
    v9 = sub_1BABE6A8C();
    if (v2)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v11 = v9;
      v12 = v10;
      v13 = sub_1BABE6BDC();
      sub_1BAAD73E4(v11, v12);

      *&v19[0] = 0;
      LOBYTE(v11) = [v8 registerClientWithParameters:v13 error:v19];

      if (v11)
      {
        v14 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedDevices);
        v15 = *&v19[0];
        if ((v14 & 1) == 0)
        {
          sub_1BAB004C4();
        }

        sub_1BAB0B678();
      }

      else
      {
        v18 = *&v19[0];
        sub_1BABE6ADC();

        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0;

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BAB0CF10()
{
  v2 = v0;
  v42[7] = *MEMORY[0x1E69E9840];
  v3 = sub_1BABE73FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v38 = v7;
  v8 = sub_1BABE740C();
  (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1BAB18330(&OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_zoneChangeTokens);
  swift_beginAccess();

  v1 = sub_1BAAFF5E8(v9);

  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v10 = sub_1BABE72BC();
    __swift_project_value_buffer(v10, qword_1ED78BBA0);

    v11 = sub_1BABE729C();
    v12 = sub_1BABE790C();

    v13 = os_log_type_enabled(v11, v12);
    v39 = v1;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = v2;
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v14 = 136446210;
      v17 = MEMORY[0x1BFAFD330](v1, MEMORY[0x1E69E6158]);
      v19 = sub_1BAAFA460(v17, v18, aBlock);

      *(v14 + 4) = v19;
      v1 = v39;
      _os_log_impl(&dword_1BAACF000, v11, v12, "Registering for zone change notifications: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v20 = v16;
      v2 = v15;
      MEMORY[0x1BFAFE460](v20, -1, -1);
      MEMORY[0x1BFAFE460](v14, -1, -1);
    }

    v21 = *(v1 + 16);
    if (!v21)
    {
      break;
    }

    v22 = 0;
    v37[1] = v42;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = v1 + 40;
    while (v22 < *(v1 + 16))
    {
      out_token[0] = -1;
      v25 = swift_allocObject();
      v26 = v2;
      swift_unknownObjectWeakInit();
      v42[2] = sub_1BAB225AC;
      v42[3] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v42[0] = sub_1BAB170D4;
      v42[1] = &block_descriptor_90;
      v27 = _Block_copy(aBlock);

      v28 = sub_1BABE756C();

      v29 = notify_register_dispatch((v28 + 32), out_token, v38, v27);

      _Block_release(v27);
      if (v29)
      {
        v30 = sub_1BABE729C();
        v31 = sub_1BABE78EC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1BAACF000, v30, v31, "Could not register for zone change notifications", v32, 2u);
          MEMORY[0x1BFAFE460](v32, -1, -1);
        }

        v2 = v26;
        v1 = v39;
      }

      else
      {
        v33 = out_token[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1BAAF9AA4(0, *(v23 + 2) + 1, 1, v23);
        }

        v1 = v39;
        v35 = *(v23 + 2);
        v34 = *(v23 + 3);
        if (v35 >= v34 >> 1)
        {
          v23 = sub_1BAAF9AA4((v34 > 1), v35 + 1, 1, v23);
        }

        *(v23 + 2) = v35 + 1;
        *&v23[4 * v35 + 32] = v33;
        v2 = v26;
      }

      ++v22;
      v24 += 16;
      if (v21 == v22)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v2 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_zoneChangeTokens) = v23;
}

uint64_t sub_1BAB0D43C()
{
  v1 = v0;
  v32 = *MEMORY[0x1E69E9840];
  v2 = sub_1BABE73FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v28 = v6;
  v7 = sub_1BABE740C();
  (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1BAB18330(&OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_messageTokens);
  swift_beginAccess();

  v9 = sub_1BAAFF814(v8);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v27 = v30;
    v12 = v9 + 40;
    v13 = MEMORY[0x1E69E7CC0];
    while (v11 < *(v9 + 16))
    {
      out_token[0] = -1;
      v14 = swift_allocObject();
      v15 = v1;
      swift_unknownObjectWeakInit();
      v30[2] = sub_1BAB224BC;
      v30[3] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v30[0] = sub_1BAB170D4;
      v30[1] = &block_descriptor_80;
      v16 = _Block_copy(aBlock);

      v17 = sub_1BABE756C();

      v18 = notify_register_dispatch((v17 + 32), out_token, v28, v16);

      _Block_release(v16);
      if (v18)
      {
        if (qword_1ED7876D0 != -1)
        {
          swift_once();
        }

        v19 = sub_1BABE72BC();
        __swift_project_value_buffer(v19, qword_1ED78BBA0);
        v20 = sub_1BABE729C();
        v21 = sub_1BABE78EC();
        v1 = v15;
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1BAACF000, v20, v21, "Could not register for message notifications", v22, 2u);
          MEMORY[0x1BFAFE460](v22, -1, -1);
        }
      }

      else
      {
        v23 = out_token[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1BAAF9AA4(0, *(v13 + 2) + 1, 1, v13);
        }

        v25 = *(v13 + 2);
        v24 = *(v13 + 3);
        if (v25 >= v24 >> 1)
        {
          v13 = sub_1BAAF9AA4((v24 > 1), v25 + 1, 1, v13);
        }

        *(v13 + 2) = v25 + 1;
        *&v13[4 * v25 + 32] = v23;
        v1 = v15;
      }

      ++v11;
      v12 += 16;
      if (v10 == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *(v1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_messageTokens) = v13;
}

uint64_t sub_1BAB0D874(uint64_t a1, unint64_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  sub_1BAB1F5AC(a2, v23);
  swift_endAccess();
  sub_1BAAD2E14(v23, &qword_1EBC12A88);
  sub_1BAB0CF10();
  sub_1BAB0D43C();
  sub_1BAB0DB74();
  v5 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordVersionStore);
  v6 = *a2;
  v7 = a2[1];
  swift_beginAccess();

  sub_1BAB30134(0, v6, v7);
  swift_endAccess();
  swift_beginAccess();

  sub_1BAB30134(0, v6, v7);
  swift_endAccess();
  swift_beginAccess();

  v9 = sub_1BAB2229C(v8, v6, v7);

  *(v5 + 32) = v9;

  v10 = sub_1BAB02A60();
  if (v10)
  {
    v11 = v10;
    v22[0] = v6;
    v22[1] = v7;
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAB22468();
    v12 = sub_1BABE6A8C();
    if (v2)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v14 = v12;
      v15 = v13;
      v16 = sub_1BABE6BDC();
      sub_1BAAD73E4(v14, v15);

      v22[0] = 0;
      v17 = [v11 unregisterClientWithParameters:v16 error:v22];

      if (v17)
      {
        v18 = v22[0];
      }

      else
      {
        v21 = v22[0];
        sub_1BABE6ADC();

        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BAB15A08();
    swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 0;

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BAB0DB74()
{
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_deviceToken;
    v9 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_deviceToken);
    if (v9 != -1)
    {
      v10 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_clientDescriptors;
      result = swift_beginAccess();
      if (!*(*(v0 + v10) + 16))
      {
        result = notify_cancel(v9);
        *(v0 + v8) = -1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BAB0DCD4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = sub_1BAB02A60();
  if (!v7)
  {
    sub_1BAB15A08();
    swift_allocError();
    *v22 = 3;
    *(v22 + 8) = 0;

    swift_willThrow();
    return;
  }

  v8 = v7;
  v30 = a1;
  v31 = a2;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB234E4();
  v9 = sub_1BABE6A8C();
  if (!v3)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_1BABE6BDC();
    sub_1BAAD73E4(v11, v12);

    v30 = 0;
    v14 = [v8 clientDescriptorWithParameters:v13 error:&v30];

    v15 = v30;
    if (!v14)
    {
      v23 = v30;
      sub_1BABE6ADC();

      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    sub_1BABE6A7C();
    swift_allocObject();
    v16 = v15;
    sub_1BABE6A6C();
    v17 = sub_1BABE6BEC();
    v19 = v18;
    sub_1BAB22D74();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v17, v19);

    v20 = v30;
    v21 = v31;
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    if (v31)
    {
      swift_unknownObjectRelease();

      *a3 = v20;
      *(a3 + 8) = v21;
      *(a3 + 16) = v26;
      *(a3 + 32) = v27;
      *(a3 + 48) = v28;
      *(a3 + 64) = v29;
      return;
    }

    __break(1u);
  }

  v24 = swift_unexpectedError();
  __break(1u);
  sub_1BAAD73E4(v24, v25);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1BAB0DF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13840);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  LocalDeviceID = type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID(0);
  v14 = *(LocalDeviceID - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, LocalDeviceID);
  if (a1)
  {
    v19 = a2;
    v20 = v15;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v2 = sub_1BABE6BEC();
    v15 = v16;
    sub_1BAAD38BC(&unk_1EBC122E0, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v12, &qword_1EBC13840);
    sub_1BAAD73E4(v2, v15);

    v20(v10, 0, 1, LocalDeviceID);
    sub_1BAB23414(v10, v12, &qword_1EBC13840);
    v17 = v21;
    sub_1BAAD2DAC(v12, v21, &qword_1EBC13840);
    if ((*(v14 + 48))(v17, 1, LocalDeviceID) != 1)
    {
      sub_1BAAD2E14(v12, &qword_1EBC13840);
      return sub_1BAB2347C(v17, v19, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v2, v15);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0E24C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v3 = sub_1BABE6BEC();
    v5 = v4;
    sub_1BAB22B48();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v3, v5);

    if (v7)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0E334@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CB8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ReplicatorControlXPCServerParameters.Pair(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12CC0, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12CB8);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BAB23414(v9, v11, &qword_1EBC12CB8);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12CB8);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12CB8);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0E610@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CA8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ReplicatorControlXPCServerParameters.Unpair(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12CB0, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12CA8);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BAB23414(v9, v11, &qword_1EBC12CA8);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12CA8);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12CA8);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0E8EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C98);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12CA0, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12C98);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BAB23414(v9, v11, &qword_1EBC12C98);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12C98);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12C98);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0EC08@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C78);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12C80, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12C78);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BAB23414(v9, v11, &qword_1EBC12C78);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12C78);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12C78);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0EF04@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C60);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  PushToken = type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken(0);
  v13 = *(PushToken - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, PushToken);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12C68, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12C60);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, PushToken);
    sub_1BAB23414(v9, v11, &qword_1EBC12C60);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12C60);
    if ((*(v13 + 48))(v16, 1, PushToken) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12C60);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0F1E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  PDRPairingID = type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID(0);
  v13 = *(PDRPairingID - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, PDRPairingID);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12C58, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12C50);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, PDRPairingID);
    sub_1BAB23414(v9, v11, &qword_1EBC12C50);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12C50);
    if ((*(v13 + 48))(v16, 1, PDRPairingID) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12C50);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0F4FC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C40);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  LocalDevice = type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice(0);
  v13 = *(LocalDevice - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, LocalDevice);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12C48, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12C40);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, LocalDevice);
    sub_1BAB23414(v9, v11, &qword_1EBC12C40);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12C40);
    if ((*(v13 + 48))(v16, 1, LocalDevice) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12C40);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0F818@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v3 = sub_1BABE6BEC();
    v5 = v4;
    sub_1BAB231C8();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v3, v5);

    if (v8 >> 60 != 15)
    {
      *a2 = v7;
      a2[1] = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0F90C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C18);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  PDRPairingID = type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID(0);
  v13 = *(PDRPairingID - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, PDRPairingID);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&unk_1EBC12C20, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12C18);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, PDRPairingID);
    sub_1BAB23414(v9, v11, &qword_1EBC12C18);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12C18);
    if ((*(v13 + 48))(v16, 1, PDRPairingID) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12C18);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0FCA8@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v5 = sub_1BABE6BEC();
    v7 = v6;
    a2();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v5, v7);

    if (v10)
    {
      *a3 = v9;
      a3[1] = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0FDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v3 = sub_1BABE6BEC();
    v5 = v4;
    sub_1BAB22F6C();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v3, v5);

    if (v7 != 1)
    {
      *a2 = v7;
      *(a2 + 8) = v8 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0FE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v3 = sub_1BABE6BEC();
    v5 = v4;
    sub_1BAB22F18();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v3, v5);

    if (v7)
    {
      *a2 = v7;
      *(a2 + 8) = v8 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB0FF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v3 = sub_1BABE6BEC();
    v5 = v4;
    sub_1BAB22EC4();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v3, v5);

    if (v7)
    {
      *a2 = v7;
      *(a2 + 8) = v8 & 1;
      *(a2 + 9) = v9 & 1;
      *(a2 + 16) = v10;
      *(a2 + 24) = v11 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB100BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BF0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ReplicationXPCServerParameters.SendMessage(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12BF8, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12BF0);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BAB23414(v9, v11, &qword_1EBC12BF0);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12BF0);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12BF0);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB10438@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v5 = sub_1BABE6BEC();
    v7 = v6;
    a2();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v5, v7);

    if (v10)
    {
      *a3 = v9;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      *(a3 + 32) = v12;
      *(a3 + 48) = v13;
      *(a3 + 64) = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB10544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v3 = sub_1BABE6BEC();
    v5 = v4;
    sub_1BAB21B98();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v3, v5);

    if (v7)
    {
      *a2 = v7;
      *(a2 + 16) = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB10638@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AD8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12AE0, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12AD8);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, v12);
    sub_1BAB23414(v9, v11, &qword_1EBC12AD8);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12AD8);
    if ((*(v13 + 48))(v16, 1, v12) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12AD8);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB10934@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13840);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  LocalDeviceID = type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID(0);
  v13 = *(LocalDeviceID - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, LocalDeviceID);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&unk_1EBC122E0, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC13840);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, LocalDeviceID);
    sub_1BAB23414(v9, v11, &qword_1EBC13840);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC13840);
    if ((*(v13 + 48))(v16, 1, LocalDeviceID) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC13840);
      return sub_1BAB2347C(v16, v18, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB10C50@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v5 = sub_1BABE6BEC();
    v7 = v6;
    a2();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v5, v7);

    if (v9 != 2)
    {
      *a3 = v9 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB10D50@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v3 = sub_1BABE6BEC();
    v5 = v4;
    sub_1BAB22B48();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v3, v5);

    if (v7)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB10E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C40);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  LocalDevice = type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice(0);
  v14 = *(LocalDevice - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, LocalDevice);
  if (a1)
  {
    v19 = a2;
    v20 = v15;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v2 = sub_1BABE6BEC();
    v15 = v16;
    sub_1BAAD38BC(&qword_1EBC12C48, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v12, &qword_1EBC12C40);
    sub_1BAAD73E4(v2, v15);

    v20(v10, 0, 1, LocalDevice);
    sub_1BAB23414(v10, v12, &qword_1EBC12C40);
    v17 = v21;
    sub_1BAAD2DAC(v12, v21, &qword_1EBC12C40);
    if ((*(v14 + 48))(v17, 1, LocalDevice) != 1)
    {
      sub_1BAAD2E14(v12, &qword_1EBC12C40);
      return sub_1BAB2347C(v17, v19, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v2, v15);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB11114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C18);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  PDRPairingID = type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID(0);
  v14 = *(PDRPairingID - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, PDRPairingID);
  if (a1)
  {
    v19 = a2;
    v20 = v15;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v2 = sub_1BABE6BEC();
    v15 = v16;
    sub_1BAAD38BC(&unk_1EBC12C20, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v12, &qword_1EBC12C18);
    sub_1BAAD73E4(v2, v15);

    v20(v10, 0, 1, PDRPairingID);
    sub_1BAB23414(v10, v12, &qword_1EBC12C18);
    v17 = v21;
    sub_1BAAD2DAC(v12, v21, &qword_1EBC12C18);
    if ((*(v14 + 48))(v17, 1, PDRPairingID) != 1)
    {
      sub_1BAAD2E14(v12, &qword_1EBC12C18);
      return sub_1BAB2347C(v17, v19, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v2, v15);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB113EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BC8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  LocalDeviceID = type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID();
  v13 = *(LocalDeviceID - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, LocalDeviceID);
  if (a1)
  {
    v18 = a2;
    v19 = v14;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v14 = sub_1BABE6BEC();
    a1 = v15;
    sub_1BAAD38BC(&qword_1EBC12BD0, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v11, &qword_1EBC12BC8);
    sub_1BAAD73E4(v14, a1);

    v19(v9, 0, 1, LocalDeviceID);
    sub_1BAB23414(v9, v11, &qword_1EBC12BC8);
    v16 = v20;
    sub_1BAAD2DAC(v11, v20, &qword_1EBC12BC8);
    if ((*(v13 + 48))(v16, 1, LocalDeviceID) != 1)
    {
      sub_1BAAD2E14(v11, &qword_1EBC12BC8);
      return sub_1BAB2347C(v16, v18, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v14, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB11728@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v5 = sub_1BABE6BEC();
    v7 = v6;
    a2();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v5, v7);

    if (v9)
    {
      *a3 = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB11820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AD8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v19 = a2;
    v20 = v15;
    sub_1BABE6A7C();
    swift_allocObject();
    sub_1BABE6A6C();
    v2 = sub_1BABE6BEC();
    v15 = v16;
    sub_1BAAD38BC(&qword_1EBC12AE0, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
    sub_1BABE6A5C();
    sub_1BAAD2E14(v12, &qword_1EBC12AD8);
    sub_1BAAD73E4(v2, v15);

    v20(v10, 0, 1, v13);
    sub_1BAB23414(v10, v12, &qword_1EBC12AD8);
    v17 = v21;
    sub_1BAAD2DAC(v12, v21, &qword_1EBC12AD8);
    if ((*(v14 + 48))(v17, 1, v13) != 1)
    {
      sub_1BAAD2E14(v12, &qword_1EBC12AD8);
      return sub_1BAB2347C(v17, v19, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1BAAD73E4(v2, v15);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1BAB11C48(void *a1@<X0>, void *a2@<X1>, void (*a3)(void)@<X3>, SEL *a4@<X5>, _BYTE *a5@<X8>)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v11 = sub_1BAB02A60();
  if (!v11)
  {
    sub_1BAB15A08();
    swift_allocError();
    *v25 = 3;
    *(v25 + 8) = 0;

    swift_willThrow();
    return;
  }

  v12 = v11;
  v29[0] = a1;
  v29[1] = a2;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  a3();
  v13 = sub_1BABE6A8C();
  if (!v5)
  {
    v15 = v13;
    v16 = v14;
    v17 = sub_1BABE6BDC();
    sub_1BAAD73E4(v15, v16);

    v29[0] = 0;
    v18 = [v12 *a4];

    v19 = v29[0];
    if (!v18)
    {
      v26 = v29[0];
      sub_1BABE6ADC();

      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    sub_1BABE6A7C();
    swift_allocObject();
    v20 = v19;
    sub_1BABE6A6C();
    v21 = sub_1BABE6BEC();
    v23 = v22;
    sub_1BAB1D8A8();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v21, v23);

    v24 = v29[0];
    if (LOBYTE(v29[0]) != 2)
    {
      swift_unknownObjectRelease();

      *a5 = v24 & 1;
      return;
    }

    __break(1u);
  }

  v27 = swift_unexpectedError();
  __break(1u);
  sub_1BAAD73E4(v27, v28);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1BAB11ED8(uint64_t a1)
{
  result = type metadata accessor for ReplicatorMessage();
  v3 = (a1 + *(result + 36));
  v4 = *v3;
  v5 = v3[1] >> 62;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v9 = v4 + 16;
      v7 = *(v4 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v4 = v8 - v7;
      if (!v6)
      {
LABEL_7:
        if (v4 > 102400)
        {
          sub_1BAB15A08();
          swift_allocError();
          *v10 = 1;
          *(v10 + 8) = 0;

          return swift_willThrow();
        }

        goto LABEL_9;
      }

LABEL_12:
      __break(1u);
      return result;
    }
  }

  else if (v5)
  {
    v6 = __OFSUB__(HIDWORD(v4), v4);
    LODWORD(v4) = HIDWORD(v4) - v4;
    if (!v6)
    {
      v4 = v4;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_9:
  MEMORY[0x1EEE9AC00](result);
  return sub_1BABE794C();
}

uint64_t sub_1BAB1200C(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ReplicationXPCServerParameters.SendMessage(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAB22824(a1, v5, type metadata accessor for ReplicatorMessage);
  v6 = &v5[*(v3 + 20)];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v5[*(v3 + 24)];
  *v7 = 0;
  v7[8] = 1;
  v8 = sub_1BAB02A60();
  if (!v8)
  {
    sub_1BAB15A08();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0;

    swift_willThrow();
    return sub_1BAB2288C(v5, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  }

  v9 = v8;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAAD38BC(&qword_1EBC12AD0, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  v10 = sub_1BABE6A8C();
  if (!v1)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_1BABE6BDC();
    sub_1BAAD73E4(v12, v13);

    v19[0] = 0;
    LOBYTE(v13) = [v9 sendMessageWithParameters:v14 error:v19];

    if (v13)
    {
      v15 = v19[0];
    }

    else
    {
      v17 = v19[0];
      sub_1BABE6ADC();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
    return sub_1BAB2288C(v5, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1BAB12290(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&aBlock[-1] - v12);
  v14 = type metadata accessor for ReplicationXPCServerParameters.SendMessage(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAB22824(a1, v16, type metadata accessor for ReplicatorMessage);
  v17 = &v16[*(v14 + 20)];
  *v17 = a3;
  v17[8] = 0;
  v18 = &v16[*(v14 + 24)];
  *v18 = a2;
  v18[8] = 0;
  v19 = sub_1BAB02A60();
  if (v19)
  {
    v20 = v19;
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAAD38BC(&qword_1EBC12AD0, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
    v21 = sub_1BABE6A8C();
    v23 = v22;
    v24 = sub_1BABE6BDC();
    sub_1BAAD73E4(v21, v23);

    v25 = swift_allocObject();
    *(v25 + 16) = a5;
    *(v25 + 24) = a6;
    aBlock[4] = sub_1BAB2263C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAB128C8;
    aBlock[3] = &block_descriptor_112;
    v26 = _Block_copy(aBlock);

    [v20 sendMessageExpectingResponseWithParameters:v24 completion:v26];
    _Block_release(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BAB15A08();
    v27 = swift_allocError();
    *v28 = 3;
    *(v28 + 8) = 0;

    *v13 = v27;
    swift_storeEnumTagMultiPayload();
    a5(v13);
    sub_1BAAD2E14(v13, &qword_1EBC12AC8);
  }

  return sub_1BAB2288C(v16, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
}

uint64_t sub_1BAB125E0(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAAD2DAC(a1, v11, &qword_1EBC12AD8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = v22;
    sub_1BAAD2E14(v11, &qword_1EBC12AD8);
    if (a2)
    {
      *v8 = a2;
      swift_storeEnumTagMultiPayload();
      v17 = a2;
    }

    else
    {
      sub_1BAB15A08();
      v19 = swift_allocError();
      *v20 = 4;
      *(v20 + 8) = 0;

      *v8 = v19;
      swift_storeEnumTagMultiPayload();
    }

    v16(v8);
    return sub_1BAAD2E14(v8, &qword_1EBC12AC8);
  }

  else
  {
    sub_1BAB2347C(v11, v15, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
    sub_1BAB22824(v15, v8, type metadata accessor for ReplicatorMessage);
    swift_storeEnumTagMultiPayload();
    v22(v8);
    sub_1BAAD2E14(v8, &qword_1EBC12AC8);
    return sub_1BAB2288C(v15, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
  }
}

uint64_t sub_1BAB128C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AD8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1BAB11820(a2, &v14 - v7);
    v10 = type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage(0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage(0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1BAAD2E14(v8, &qword_1EBC12AD8);
}

void sub_1BAB12A1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BABE9F00;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1BAB02A60();
  if (!v8)
  {

    sub_1BAB15A08();
    swift_allocError();
    *v22 = 3;
    *(v22 + 8) = 0;

    swift_willThrow();
    return;
  }

  v9 = v8;
  v26[0] = v7;
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB22504();
  v10 = sub_1BABE6A8C();
  if (!v3)
  {
    v12 = v10;
    v13 = v11;

    v14 = sub_1BABE6BDC();
    sub_1BAAD73E4(v12, v13);

    v26[0] = 0;
    v15 = [v9 messagesWithParameters:v14 error:v26];

    v16 = v26[0];
    if (!v15)
    {
      v23 = v26[0];
      sub_1BABE6ADC();

      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    sub_1BABE6A7C();
    swift_allocObject();
    v17 = v16;
    sub_1BABE6A6C();
    v18 = sub_1BABE6BEC();
    v20 = v19;
    sub_1BAB22558();
    sub_1BABE6A5C();
    sub_1BAAD73E4(v18, v20);

    v21 = v26[0];
    if (v26[0])
    {
      swift_unknownObjectRelease();

      *a3 = v21;
      return;
    }

    __break(1u);
  }

  v24 = swift_unexpectedError();
  __break(1u);
  sub_1BAAD73E4(v24, v25);
  swift_unexpectedError();
  __break(1u);
}

void sub_1BAB12CE8(uint64_t *a1)
{
  v2 = v1;
  v236 = type metadata accessor for ReplicatorRecordChange();
  v235 = *(v236 - 8);
  v4 = MEMORY[0x1EEE9AC00](v236);
  v234 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v239 = &v225 - v6;
  v7 = sub_1BABE6CFC();
  v230 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v229 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B68);
  MEMORY[0x1EEE9AC00](v245);
  v244 = &v225 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v246 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v225 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v248 = &v225 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v252 = &v225 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A08);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v243 = &v225 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v242 = (&v225 - v22);
  v262 = type metadata accessor for ReplicatorRecord.ID(0);
  v264 = *(v262 - 8);
  v23 = MEMORY[0x1EEE9AC00](v262);
  v233 = (&v225 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v255 = (&v225 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v238 = (&v225 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v251 = (&v225 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v254 = (&v225 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v250 = (&v225 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v249 = (&v225 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v241 = &v225 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v240 = &v225 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v228 = &v225 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v232 = &v225 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v237 = &v225 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v225 - v47;
  v247 = type metadata accessor for ReplicatorRecordVersion();
  v260 = *(v247 - 8);
  v49 = MEMORY[0x1EEE9AC00](v247);
  v261 = (&v225 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = MEMORY[0x1EEE9AC00](v49);
  v259 = &v225 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v258 = (&v225 - v54);
  MEMORY[0x1EEE9AC00](v53);
  v56 = (&v225 - v55);
  v57 = sub_1BABE73FC();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v60 = (&v225 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = *a1;
  v227 = a1[1];
  v62 = *(v2 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v60 = v62;
  (*(v58 + 104))(v60, *MEMORY[0x1E69E8020], v57);
  v63 = v62;
  LOBYTE(v62) = sub_1BABE740C();
  (*(v58 + 8))(v60, v57);
  if (v62)
  {
    v231 = v15;
    v253 = v7;
    v64 = *(v61 + 16);
    v266 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordVersionStore;
    v65 = MEMORY[0x1E69E7CC0];
    v265 = v2;
    v263 = v64;
    v66 = v61;
    if (v64)
    {
      v67 = 0;
      v256 = (v264 + 48);
      v257 = (v264 + 56);
      while (v67 < *(v66 + 16))
      {
        v7 = ((LOBYTE(v260[10].isa) + 32) & ~LOBYTE(v260[10].isa));
        isa = v260[9].isa;
        v69 = v66;
        sub_1BAB22824(v7 + v66 + isa * v67, v56, type metadata accessor for ReplicatorRecordVersion);
        v70 = *(v2 + v266);
        swift_beginAccess();
        v71 = *(v70 + 32);
        if (*(v71 + 16))
        {

          v72 = sub_1BABD5D18(v56);
          if (v73)
          {
            v74 = *(v71 + 56);
            v75 = v264;
            sub_1BAB22824(v74 + *(v264 + 72) * v72, v48, type metadata accessor for ReplicatorRecord.ID);
            v76 = *(v75 + 56);
            v77 = v262;
            v76(v48, 0, 1, v262);
          }

          else
          {
            v77 = v262;
            (*v257)(v48, 1, 1, v262);
          }
        }

        else
        {
          v77 = v262;
          (*v257)(v48, 1, 1, v262);
        }

        swift_endAccess();

        if ((*v256)(v48, 1, v77) == 1)
        {
          sub_1BAAD2E14(v48, &qword_1EBC12A20);
          sub_1BAB2347C(v56, v258, type metadata accessor for ReplicatorRecordVersion);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v268 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BAAFABAC(0, v65[2] + 1, 1);
            v65 = v268;
          }

          v80 = v65[2];
          v79 = v65[3];
          if (v80 >= v79 >> 1)
          {
            sub_1BAAFABAC(v79 > 1, v80 + 1, 1);
            v65 = v268;
          }

          v65[2] = v80 + 1;
          sub_1BAB2347C(v258, v7 + v65 + v80 * isa, type metadata accessor for ReplicatorRecordVersion);
          v2 = v265;
        }

        else
        {
          sub_1BAB2288C(v56, type metadata accessor for ReplicatorRecordVersion);
          sub_1BAAD2E14(v48, &qword_1EBC12A20);
        }

        v66 = v69;
        if (v263 == ++v67)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_124;
    }

LABEL_18:
    v226 = v66;
    v81 = v65[2];
    if (v81)
    {
      v267 = MEMORY[0x1E69E7CC0];
      sub_1BAAFAB68(0, v81, 0);
      v82 = v267;
      v83 = v65 + ((LOBYTE(v260[10].isa) + 32) & ~LOBYTE(v260[10].isa));
      v84 = v260[9].isa;
      v85 = v228;
      do
      {
        v86 = v259;
        sub_1BAB22824(v83, v259, type metadata accessor for ReplicatorRecordVersion);
        sub_1BAB22824(v86, v85, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB2288C(v86, type metadata accessor for ReplicatorRecordVersion);
        v267 = v82;
        v88 = v82[2].isa;
        v87 = v82[3].isa;
        if (v88 >= v87 >> 1)
        {
          sub_1BAAFAB68(v87 > 1, v88 + 1, 1);
          v85 = v228;
          v82 = v267;
        }

        v82[2].isa = (v88 + 1);
        sub_1BAB2347C(v85, v82 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v88, type metadata accessor for ReplicatorRecord.ID);
        v83 += v84;
        --v81;
      }

      while (v81);
    }

    else
    {

      v82 = MEMORY[0x1E69E7CC0];
    }

    v7 = 0;
    v89 = sub_1BAB14C04(v82);
    v90 = v248;
    v99 = v89;

    if (v99)
    {
      v100 = 0;
      v258 = v99;
      v101 = (v99 + 8);
      v102 = 1 << *(v99 + 32);
      v103 = -1;
      if (v102 < 64)
      {
        v103 = ~(-1 << v102);
      }

      v104 = v103 & v99[8];
      v105 = (v102 + 63) >> 6;
      v106 = v243;
      v257 = (v99 + 8);
      v259 = v105;
LABEL_34:
      if (v104)
      {
        v107 = v100;
        goto LABEL_44;
      }

      if (v105 <= v100 + 1)
      {
        v108 = v100 + 1;
      }

      else
      {
        v108 = v105;
      }

      v109 = v108 - 1;
      while (1)
      {
        v107 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          break;
        }

        if (v107 >= v105)
        {
          v7 = &unk_1BABE9FF8;
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
          (*(*(v139 - 8) + 56))(v106, 1, 1, v139);
          v104 = 0;
          v100 = v109;
          goto LABEL_45;
        }

        v104 = v101[v107];
        ++v100;
        if (v104)
        {
          v100 = v107;
LABEL_44:
          v110 = __clz(__rbit64(v104));
          v104 &= v104 - 1;
          v111 = v258;
          v112 = *(v264 + 72) * (v110 | (v107 << 6));
          v113 = v240;
          sub_1BAB22824(v258[6] + v112, v240, type metadata accessor for ReplicatorRecord.ID);
          v114 = v241;
          sub_1BAB22824(v111[7] + v112, v241, type metadata accessor for ReplicatorRecord.ID);
          v7 = &unk_1BABE9FF8;
          v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
          v116 = *(v115 + 48);
          sub_1BAB2347C(v113, v106, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2347C(v114, v106 + v116, type metadata accessor for ReplicatorRecord.ID);
          (*(*(v115 - 8) + 56))(v106, 0, 1, v115);
          v101 = v257;
LABEL_45:
          v117 = v242;
          sub_1BAB23414(v106, v242, &qword_1EBC12A08);
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
          if ((*(*(v118 - 8) + 48))(v117, 1, v118) == 1)
          {

            v90 = v248;
            goto LABEL_59;
          }

          v119 = *(v118 + 48);
          v120 = v249;
          sub_1BAB2347C(v117, v249, type metadata accessor for ReplicatorRecord.ID);
          v121 = v250;
          sub_1BAB2347C(v117 + v119, v250, type metadata accessor for ReplicatorRecord.ID);
          v122 = *(v265 + v266);
          v123 = v254;
          sub_1BAB22824(v120, v254, type metadata accessor for ReplicatorRecord.ID);
          swift_beginAccess();
          sub_1BAB22824(v121, v251, type metadata accessor for ReplicatorRecord.ID);

          v124 = swift_isUniquelyReferenced_nonNull_native();
          v268 = *(v122 + 32);
          v125 = v268;
          *(v122 + 32) = 0x8000000000000000;
          v126 = sub_1BABD5D18(v123);
          v128 = v125[2];
          v129 = (v127 & 1) == 0;
          v130 = __OFADD__(v128, v129);
          v131 = v128 + v129;
          if (v130)
          {
            goto LABEL_125;
          }

          v132 = v127;
          if (v125[3] >= v131)
          {
            if (v124)
            {
              goto LABEL_51;
            }

            v140 = v126;
            sub_1BABDCF90();
            v126 = v140;
            v134 = v268;
            if (v132)
            {
              goto LABEL_32;
            }

LABEL_52:
            v134[(v126 >> 6) + 8] |= 1 << v126;
            v135 = *(v264 + 72) * v126;
            v136 = v254;
            sub_1BAB22824(v254, v134[6] + v135, type metadata accessor for ReplicatorRecord.ID);
            sub_1BAB2347C(v251, v134[7] + v135, type metadata accessor for ReplicatorRecord.ID);
            sub_1BAB2288C(v136, type metadata accessor for ReplicatorRecord.ID);
            v137 = v134[2];
            v130 = __OFADD__(v137, 1);
            v138 = v137 + 1;
            if (!v130)
            {
              v134[2] = v138;
              goto LABEL_33;
            }

            goto LABEL_126;
          }

          sub_1BABD8490(v131, v124);
          v126 = sub_1BABD5D18(v254);
          if ((v132 & 1) != (v133 & 1))
          {
            sub_1BABE7EFC();
            __break(1u);
            return;
          }

LABEL_51:
          v134 = v268;
          if ((v132 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_32:
          sub_1BAB2277C(v251, v134[7] + *(v264 + 72) * v126, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2288C(v254, type metadata accessor for ReplicatorRecord.ID);
LABEL_33:
          *(v122 + 32) = v134;

          swift_endAccess();

          sub_1BAB2288C(v250, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2288C(v249, type metadata accessor for ReplicatorRecord.ID);
          v106 = v243;
          v105 = v259;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

LABEL_59:
    if (v263)
    {
      v141 = v226 + ((LOBYTE(v260[10].isa) + 32) & ~LOBYTE(v260[10].isa));
      v254 = v260[9].isa;
      v258 = (v230 + 16);
      v251 = (v230 + 48);
      v242 = (v230 + 32);
      v243 = (v230 + 8);
      v250 = (v264 + 56);
      v249 = (v264 + 48);
      v260 = MEMORY[0x1E69E7CC0];
      v142 = &unk_1BABE9B50;
      v256 = (v230 + 56);
      while (1)
      {
        v143 = v261;
        sub_1BAB22824(v141, v261, type metadata accessor for ReplicatorRecordVersion);
        v144 = *(v265 + v266);
        v145 = v143[4];
        v146 = v143[5];
        swift_beginAccess();
        v147 = *(v144 + 16);
        v148 = *(v147 + 16);

        if (v148 && (v149 = sub_1BABD5AB4(v145, v146), (v150 & 1) != 0))
        {
          v151 = *(*(v147 + 56) + 8 * v149);
          if (*(v151 + 16))
          {

            v152 = sub_1BABD5D18(v261);
            v154 = v252;
            v153 = v253;
            if (v155)
            {
              (*(v230 + 16))(v252, *(v151 + 56) + *(v230 + 72) * v152, v253);
              v156 = 0;
            }

            else
            {
              v156 = 1;
            }

            v159 = v256;
            v158 = v245;
          }

          else
          {
            v156 = 1;
            v154 = v252;
            v153 = v253;
            v159 = v256;
            v158 = v245;
          }

          v157 = *v159;
          (*v159)(v154, v156, 1, v153);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v157 = *v256;
          v154 = v252;
          v153 = v253;
          (*v256)(v252, 1, 1, v253);
          v158 = v245;
        }

        v160 = *v258;
        v259 = *(v247 + 20);
        v257 = v160;
        (v160)(v90, v261 + v259, v153);
        (v157)(v90, 0, 1, v153);
        v161 = *(v158 + 48);
        v162 = v154;
        v163 = v90;
        v164 = v244;
        v165 = v142;
        sub_1BAAD2DAC(v162, v244, &qword_1EBC12B60);
        sub_1BAAD2DAC(v163, v164 + v161, &qword_1EBC12B60);
        v166 = *v251;
        if ((*v251)(v164, 1, v153) == 1)
        {
          sub_1BAAD2E14(v163, &qword_1EBC12B60);
          if (v166(v164 + v161, 1, v153) != 1)
          {
            goto LABEL_78;
          }

          sub_1BAAD2E14(v164, &qword_1EBC12B60);
        }

        else
        {
          v167 = v231;
          sub_1BAAD2DAC(v164, v231, &qword_1EBC12B60);
          if (v166(v164 + v161, 1, v153) == 1)
          {
            sub_1BAAD2E14(v248, &qword_1EBC12B60);
            (*v243)(v167, v153);
LABEL_78:
            sub_1BAAD2E14(v164, &qword_1EBC12B68);
LABEL_79:
            v168 = *(v265 + v266);
            swift_beginAccess();
            v169 = *(v168 + 32);
            v90 = v248;
            if (*(v169 + 16))
            {

              v170 = sub_1BABD5D18(v261);
              if (v171)
              {
                v172 = *(v169 + 56);
                v173 = v264;
                v174 = v237;
                sub_1BAB22824(v172 + *(v264 + 72) * v170, v237, type metadata accessor for ReplicatorRecord.ID);
                v175 = *(v173 + 56);
                v176 = v262;
                v175(v174, 0, 1, v262);
              }

              else
              {
                v174 = v237;
                v176 = v262;
                (*v250)(v237, 1, 1, v262);
              }
            }

            else
            {
              v174 = v237;
              v176 = v262;
              (*v250)(v237, 1, 1, v262);
            }

            swift_endAccess();

            if ((*v249)(v174, 1, v176) == 1)
            {
              sub_1BAAD2E14(v252, &qword_1EBC12B60);
              sub_1BAB2288C(v261, type metadata accessor for ReplicatorRecordVersion);
              sub_1BAAD2E14(v174, &qword_1EBC12A20);
            }

            else
            {
              v180 = v238;
              sub_1BAB2347C(v174, v238, type metadata accessor for ReplicatorRecord.ID);
              v181 = v180;
              v182 = v239;
              sub_1BAB22824(v181, v239, type metadata accessor for ReplicatorRecord.ID);
              (v257)(v182 + *(v247 + 20), v261 + v259, v153);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v260 = sub_1BAAF9A7C(0, v260[2].isa + 1, 1, v260);
              }

              v184 = v260[2].isa;
              v183 = v260[3].isa;
              v185 = v252;
              if (v184 >= v183 >> 1)
              {
                v260 = sub_1BAAF9A7C(v183 > 1, v184 + 1, 1, v260);
              }

              v186 = v260;
              v260[2].isa = (v184 + 1);
              sub_1BAB2347C(v239, v186 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v184, type metadata accessor for ReplicatorRecordChange);

              v187 = v261;
              v188 = v238;
              sub_1BABE11DC(v261, v238, v261 + v259);

              sub_1BAB2288C(v188, type metadata accessor for ReplicatorRecord.ID);
              sub_1BAAD2E14(v185, &qword_1EBC12B60);
              sub_1BAB2288C(v187, type metadata accessor for ReplicatorRecordVersion);
            }

            goto LABEL_62;
          }

          v177 = v229;
          (*v242)(v229, v164 + v161, v153);
          sub_1BAAD38BC(&unk_1ED7872A0, MEMORY[0x1E69695A8]);
          v178 = sub_1BABE74DC();
          v179 = *v243;
          (*v243)(v177, v153);
          sub_1BAAD2E14(v248, &qword_1EBC12B60);
          v179(v167, v153);
          sub_1BAAD2E14(v164, &qword_1EBC12B60);
          v142 = v165;
          if ((v178 & 1) == 0)
          {
            goto LABEL_79;
          }
        }

        sub_1BAAD2E14(v252, &qword_1EBC12B60);
        sub_1BAB2288C(v261, type metadata accessor for ReplicatorRecordVersion);
        v90 = v248;
LABEL_62:
        v141 += v254;
        v263 = (v263 - 1);
        if (!v263)
        {
          goto LABEL_93;
        }
      }
    }

    v260 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v189 = *(v227 + 16);
    if (!v189)
    {
LABEL_122:
      v267 = v260;
      sub_1BABE730C();

      return;
    }

    v190 = v227 + ((*(v264 + 80) + 32) & ~*(v264 + 80));
    v191 = (v230 + 56);
    v192 = *(v264 + 72);
    v261 = (v230 + 16);
    v193 = (v230 + 48);
    v263 = (v264 + 56);
    v264 += 48;
    while (1)
    {
      v196 = v255;
      sub_1BAB22824(v190, v255, type metadata accessor for ReplicatorRecord.ID);
      v197 = *(v265 + v266);
      v198 = v196[4];
      v199 = v196[5];
      swift_beginAccess();
      v200 = *(v197 + 16);
      v201 = *(v200 + 16);

      if (v201 && (v202 = sub_1BABD5AB4(v198, v199), (v203 & 1) != 0))
      {
        v204 = *(*(v200 + 56) + 8 * v202);
        if (*(v204 + 16))
        {

          v205 = sub_1BABD5D18(v255);
          v206 = v246;
          if (v207)
          {
            (*(v230 + 16))(v246, *(v204 + 56) + *(v230 + 72) * v205, v253);
            v208 = 0;
          }

          else
          {
            v208 = 1;
          }
        }

        else
        {
          v208 = 1;
          v206 = v246;
        }

        v209 = v253;
        (*v191)(v206, v208, 1, v253);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v206 = v246;
        v209 = v253;
        (*v191)(v246, 1, 1, v253);
      }

      if ((*v193)(v206, 1, v209) == 1)
      {
        sub_1BAB2288C(v255, type metadata accessor for ReplicatorRecord.ID);
        v194 = v206;
        v195 = &qword_1EBC12B60;
      }

      else
      {
        sub_1BAAD2E14(v206, &qword_1EBC12B60);
        v210 = *(v265 + v266);
        swift_beginAccess();
        v211 = *(v210 + 32);
        if (*(v211 + 16))
        {

          v212 = sub_1BABD5D18(v255);
          v213 = v232;
          if (v214)
          {
            sub_1BAB22824(*(v211 + 56) + v212 * v192, v232, type metadata accessor for ReplicatorRecord.ID);
            v215 = *v263;
            v216 = v213;
            v217 = 0;
          }

          else
          {
            v215 = *v263;
            v216 = v232;
            v217 = 1;
          }

          v218 = v262;
          v215(v216, v217, 1, v262);
        }

        else
        {
          v218 = v262;
          v213 = v232;
          (*v263)(v232, 1, 1, v262);
        }

        swift_endAccess();

        if ((*v264)(v213, 1, v218) != 1)
        {
          v219 = v233;
          sub_1BAB2347C(v213, v233, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB22824(v219, v234, type metadata accessor for ReplicatorRecord.ID);
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v260 = sub_1BAAF9A7C(0, v260[2].isa + 1, 1, v260);
          }

          v221 = v260[2].isa;
          v220 = v260[3].isa;
          if (v221 >= v220 >> 1)
          {
            v260 = sub_1BAAF9A7C(v220 > 1, v221 + 1, 1, v260);
          }

          v222 = v260;
          v260[2].isa = (v221 + 1);
          sub_1BAB2347C(v234, v222 + ((*(v235 + 80) + 32) & ~*(v235 + 80)) + *(v235 + 72) * v221, type metadata accessor for ReplicatorRecordChange);

          v223 = v255;
          v224 = v233;
          sub_1BABE15D8(v255, v233);

          sub_1BAB2288C(v224, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2288C(v223, type metadata accessor for ReplicatorRecord.ID);
          goto LABEL_97;
        }

        sub_1BAB2288C(v255, type metadata accessor for ReplicatorRecord.ID);
        v194 = v213;
        v195 = &qword_1EBC12A20;
      }

      sub_1BAAD2E14(v194, v195);
LABEL_97:
      v190 += v192;
      if (!--v189)
      {
        goto LABEL_122;
      }
    }
  }

LABEL_127:
  __break(1u);
  swift_once();
  v91 = sub_1BABE72BC();
  __swift_project_value_buffer(v91, qword_1ED78BBA0);
  v92 = v7;
  v93 = sub_1BABE729C();
  v94 = sub_1BABE78EC();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138543362;
    v97 = v7;
    v98 = _swift_stdlib_bridgeErrorToNSError();
    *(v95 + 4) = v98;
    *v96 = v98;
    _os_log_impl(&dword_1BAACF000, v93, v94, "Failed to handle record changes: %{public}@", v95, 0xCu);
    sub_1BAAD2E14(v96, &qword_1EBC12A00);
    MEMORY[0x1BFAFE460](v96, -1, -1);
    MEMORY[0x1BFAFE460](v95, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BAB14C04(NSObject *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A08);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v123 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v102 - v10;
  v103 = type metadata accessor for ReplicatorRecord.ID(0);
  v11 = *(v103 - 8);
  v12 = MEMORY[0x1EEE9AC00](v103);
  v127 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v128 = (&v102 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v120 = &v102 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v119 = &v102 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v108 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v107 = (&v102 - v22);
  v23 = sub_1BABE73FC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v26 = v27;
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  v28 = v27;
  v29 = sub_1BABE740C();
  v31 = *(v24 + 8);
  v30 = v24 + 8;
  v31(v26, v23);
  if ((v29 & 1) == 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
    goto LABEL_4;
  }

  v112 = sub_1BAB02A60();
  if (!v112)
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v95 = sub_1BABE72BC();
    __swift_project_value_buffer(v95, qword_1ED78BBA0);
    a1 = sub_1BABE729C();
    v96 = sub_1BABE78EC();
    if (os_log_type_enabled(a1, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1BAACF000, a1, v96, "Could not fetch record versions because target could not be created", v97, 2u);
      MEMORY[0x1BFAFE460](v97, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v98 = 3;
    *(v98 + 8) = 0;

    swift_willThrow();
    return a1;
  }

  v30 = v1;

  v33 = sub_1BABB63C4(v32);

  v131 = v33;
  v130 = MEMORY[0x1E69E7CC0];
  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_65;
  }

LABEL_4:
  v34 = sub_1BABE72BC();
  v106 = __swift_project_value_buffer(v34, qword_1ED78BBA0);
  v35 = sub_1BABE729C();
  v36 = sub_1BABE78DC();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v125;
  v39 = v108;
  if (v37)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1BAACF000, v35, v36, "Begin fetching client-defined record IDs in batches", v40, 2u);
    MEMORY[0x1BFAFE460](v40, -1, -1);
  }

  v42 = v107;
  isa = a1[2].isa;
  if (isa)
  {
    v43 = 0;
    v115 = 0;
    v111 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v110 = a1 + v111;
    a1 = MEMORY[0x1E69E7CC8];
    v126 = v11[9];
    *&v41 = 134349568;
    v104 = v41;
    v117 = MEMORY[0x1E69E7CC0];
    v105 = v30;
    while (1)
    {
      sub_1BAB22824(&v110[v126 * v43], v42, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB22824(v42, v39, type metadata accessor for ReplicatorRecord.ID);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v117 = sub_1BAAF9A54(0, v117[2] + 1, 1, v117);
      }

      v46 = v117[2];
      v45 = v117[3];
      if (v46 >= v45 >> 1)
      {
        v117 = sub_1BAAF9A54(v45 > 1, v46 + 1, 1, v117);
      }

      v47 = v117;
      v117[2] = v46 + 1;
      sub_1BAB2347C(v39, v47 + v111 + v46 * v126, type metadata accessor for ReplicatorRecord.ID);
      v130 = v47;
      swift_endAccess();
      swift_beginAccess();
      v48 = v114;
      sub_1BAB1EF7C(v42, v114);
      sub_1BAB2288C(v42, type metadata accessor for ReplicatorRecord.ID);
      swift_endAccess();
      sub_1BAAD2E14(v48, &qword_1EBC12A20);
      if (v47[2] > 0x32uLL || !*(v131 + 16))
      {
        break;
      }

LABEL_9:
      v43 = v116 + 1;
      if ((v116 + 1) == isa)
      {
        goto LABEL_54;
      }
    }

    v49 = sub_1BABE729C();
    v50 = sub_1BABE78DC();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v117;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = v104;
      *(v53 + 4) = v115;
      *(v53 + 12) = 2050;
      *(v53 + 14) = v52[2];
      *(v53 + 22) = 2048;
      *(v53 + 24) = *(v131 + 16);
      _os_log_impl(&dword_1BAACF000, v49, v50, "Fetching batch %{public}ld with count %{public}ld IDs; %ld IDs remaining", v53, 0x20u);
      MEMORY[0x1BFAFE460](v53, -1, -1);
    }

    v55 = sub_1BAB1B000(v54, v112);
    if (v3)
    {

      swift_unknownObjectRelease();
      swift_bridgeObjectRelease_n();

      return a1;
    }

    v56 = v55;
    v113 = 0;

    v57 = 0;
    v121 = v56;
    v60 = *(v56 + 64);
    v59 = v56 + 64;
    v58 = v60;
    v118 = v59;
    v61 = 1 << *(v59 - 32);
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    v3 = v62 & v58;
    v63 = (v61 + 63) >> 6;
    v11 = &qword_1EBC12A18;
    v122 = v63;
    while (v3)
    {
      v124 = a1;
      v64 = v57;
LABEL_34:
      v66 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v67 = v121;
      v68 = (v66 | (v64 << 6)) * v126;
      v69 = v119;
      sub_1BAB22824(*(v121 + 48) + v68, v119, type metadata accessor for ReplicatorRecord.ID);
      v70 = v120;
      sub_1BAB22824(*(v67 + 56) + v68, v120, type metadata accessor for ReplicatorRecord.ID);
      v11 = &qword_1EBC12A18;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
      v72 = *(v71 + 48);
      v73 = v69;
      v74 = v125;
      sub_1BAB2347C(v73, v125, type metadata accessor for ReplicatorRecord.ID);
      v75 = v70;
      v38 = v74;
      sub_1BAB2347C(v75, v74 + v72, type metadata accessor for ReplicatorRecord.ID);
      (*(*(v71 - 8) + 56))(v74, 0, 1, v71);
      v30 = v64;
      a1 = v124;
LABEL_35:
      v76 = v123;
      sub_1BAB23414(v38, v123, &qword_1EBC12A08);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
      if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
      {

        v94 = MEMORY[0x1E69E7CC0];
        v130 = MEMORY[0x1E69E7CC0];

        v91 = __OFADD__(v115++, 1);
        if (!v91)
        {
          v117 = v94;
          v3 = v113;
          v39 = v108;
          v42 = v107;
          goto LABEL_9;
        }

        goto LABEL_63;
      }

      v78 = v128;
      sub_1BAB2347C(v76 + *(v77 + 48), v128, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2347C(v76, v127, type metadata accessor for ReplicatorRecord.ID);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v129 = a1;
      v59 = a1;
      v81 = sub_1BABD5D18(v78);
      v82 = a1[2].isa;
      v83 = (v80 & 1) == 0;
      v84 = v82 + v83;
      if (__OFADD__(v82, v83))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v85 = v80;
      if (a1[3].isa >= v84)
      {
        if ((v79 & 1) == 0)
        {
          v59 = &v129;
          sub_1BABDCF90();
        }
      }

      else
      {
        sub_1BABD8490(v84, v79);
        v59 = v129;
        v86 = sub_1BABD5D18(v128);
        if ((v85 & 1) != (v87 & 1))
        {
          result = sub_1BABE7EFC();
          __break(1u);
          return result;
        }

        v81 = v86;
      }

      v38 = v125;
      a1 = v129;
      if (v85)
      {
        sub_1BAB2277C(v127, v129[7].isa + v81 * v126, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB2288C(v128, type metadata accessor for ReplicatorRecord.ID);
      }

      else
      {
        v129[(v81 >> 6) + 8].isa = (v129[(v81 >> 6) + 8].isa | (1 << v81));
        v59 = v81 * v126;
        v88 = a1[6].isa + v81 * v126;
        v89 = v128;
        sub_1BAB22824(v128, v88, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB2347C(v127, a1[7].isa + v59, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB2288C(v89, type metadata accessor for ReplicatorRecord.ID);
        v90 = a1[2].isa;
        v91 = __OFADD__(v90, 1);
        v92 = (v90 + 1);
        if (v91)
        {
          goto LABEL_62;
        }

        a1[2].isa = v92;
      }

      v57 = v30;
      v63 = v122;
    }

    if (v63 <= v57 + 1)
    {
      v65 = v57 + 1;
    }

    else
    {
      v65 = v63;
    }

    v30 = v65 - 1;
    while (1)
    {
      v64 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v64 >= v63)
      {
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
        (*(*(v93 - 8) + 56))(v38, 1, 1, v93);
        v3 = 0;
        goto LABEL_35;
      }

      v3 = *(v118 + 8 * v64);
      ++v57;
      if (v3)
      {
        v124 = a1;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  v115 = 0;
  a1 = MEMORY[0x1E69E7CC8];
  v117 = MEMORY[0x1E69E7CC0];
LABEL_54:

  v59 = sub_1BABE729C();
  v99 = sub_1BABE78DC();
  if (!os_log_type_enabled(v59, v99))
  {
LABEL_57:

    goto LABEL_58;
  }

  v100 = swift_slowAlloc();
  *v100 = 134349312;
  *(v100 + 4) = a1[2];
  *(v100 + 12) = 2050;
  *(v100 + 14) = v115;

  _os_log_impl(&dword_1BAACF000, v59, v99, "End fetching record IDs in batches; fetched %{public}ld in %{public}ld batches", v100, 0x16u);
  MEMORY[0x1BFAFE460](v100, -1, -1);
LABEL_58:

  swift_unknownObjectRelease();

  return a1;
}

unint64_t sub_1BAB15A08()
{
  result = qword_1EBC12500;
  if (!qword_1EBC12500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12500);
  }

  return result;
}

unint64_t sub_1BAB15A5C()
{
  result = qword_1EBC122A0;
  if (!qword_1EBC122A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC122A0);
  }

  return result;
}

void sub_1BAB15AB0()
{
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_connection;
  if (!*&v0[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_connection])
  {
    v8 = sub_1BAB20D20();
    if (v8)
    {
      v9 = *&v0[v7];
      *&v0[v7] = v8;
      v10 = v8;

      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BAB20E24;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1BAAD66F4;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BAAD6678;
      aBlock[3] = &block_descriptor;
      v13 = _Block_copy(aBlock);
      v14 = v0;

      [v10 configure_];
      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        sub_1BAB1621C();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1BAB15D18(void *a1, uint64_t a2)
{
  v4 = sub_1BABE74EC();
  v17 = sub_1BAB16044;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BAAD6A60;
  v16 = &block_descriptor_66;
  v5 = _Block_copy(&v13);
  v6 = [objc_opt_self() interfaceWithIdentifier:v4 configurator:v5];

  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
    v8 = sub_1BABE74EC();
    v9 = [objc_opt_self() queueWithName:v8 targetQueue:v7];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v17 = sub_1BAB16108;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_69;
    v10 = _Block_copy(&v13);
    [a1 setActivationHandler_];
    _Block_release(v10);
    v17 = sub_1BAB16114;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_72;
    v11 = _Block_copy(&v13);
    [a1 setInterruptionHandler_];
    _Block_release(v11);
    v17 = sub_1BAB16120;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_75;
    v12 = _Block_copy(&v13);
    [a1 setInvalidationHandler_];
    _Block_release(v12);
  }
}

void sub_1BAB16044(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

void sub_1BAB1612C(uint64_t a1, const char *a2)
{
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1BABE72BC();
  __swift_project_value_buffer(v3, qword_1ED78BBA0);
  oslog = sub_1BABE729C();
  v4 = sub_1BABE78CC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BAACF000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1BFAFE460](v5, -1, -1);
  }
}

void sub_1BAB1621C()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_serverStartupToken;
  swift_beginAccess();
  if (*(v0 + v1) == -1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BAB20E2C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAB170D4;
    aBlock[3] = &block_descriptor_62;
    v4 = _Block_copy(aBlock);

    v5 = sub_1BABE756C();
    swift_beginAccess();
    LODWORD(v2) = notify_register_dispatch((v5 + 32), (v0 + v1), v2, v4);
    swift_endAccess();
    _Block_release(v4);

    if (v2)
    {
      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v6 = sub_1BABE72BC();
      __swift_project_value_buffer(v6, qword_1ED78BBA0);
      v7 = sub_1BABE729C();
      v8 = sub_1BABE78EC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BAACF000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
        MEMORY[0x1BFAFE460](v9, -1, -1);
      }
    }
  }
}

void sub_1BAB16430()
{
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1BAB15AB0();
  v7 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_connection);
  if (!v7)
  {
    return;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();

    sub_1BAAD2E14(v12, &qword_1EBC12990);
    return;
  }

  memset(v12, 0, sizeof(v12));
  sub_1BAAD2E14(v12, &qword_1EBC12990);
  [v1 activate];
  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = sub_1BABE72BC();
  __swift_project_value_buffer(v8, qword_1ED78BBA0);
  v9 = sub_1BABE729C();
  v10 = sub_1BABE790C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BAACF000, v9, v10, "Activated ReplicatorClient connection", v11, 2u);
    MEMORY[0x1BFAFE460](v11, -1, -1);
  }
}

void sub_1BAB16694()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1BABE72BC();
    __swift_project_value_buffer(v2, qword_1ED78BBA0);
    v3 = sub_1BABE729C();
    v4 = sub_1BABE790C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BAACF000, v3, v4, "Server has restarted", v5, 2u);
      MEMORY[0x1BFAFE460](v5, -1, -1);
    }

    v6 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_clientDescriptors;
    v7 = swift_beginAccess();
    if (*(*&v1[v6] + 16))
    {
      sub_1BAB16430(v7);
      sub_1BAB16A28();
      if ((v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedDevices] & 1) == 0)
      {
        sub_1BAB004C4();
      }

      if ((v1[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_hasFetchedRecordVersions] & 1) == 0)
      {
        sub_1BAB0B678();
      }
    }
  }
}

uint64_t sub_1BAB16A28()
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
LABEL_30:
    __break(1u);
  }

  v7 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_clientDescriptors;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v59 = v8;

  v14 = 0;
  v60 = 0;
  *&v15 = 136446210;
  v55 = v15;
  v56 = v0;
  v57 = v9;
  v58 = v13;
  if (v12)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_9:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
  }

  while (!v12);
  while (1)
  {
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (*(v59 + 48) + 80 * (v17 | (v16 << 6)));
    v61[0] = *v18;
    v19 = v18[3];
    v20 = v18[4];
    v21 = v18[2];
    v61[1] = v18[1];
    v61[2] = v21;
    v61[3] = v19;
    v61[4] = v20;
    v22 = v18[2];
    v23 = v18[4];
    v65 = v18[3];
    v66 = v23;
    v24 = *v18;
    v63 = v18[1];
    v64 = v22;
    v62 = v24;
    sub_1BAB21C84(v61, v67);
    v25 = sub_1BAB21C84(v61, v67);
    v26 = sub_1BAB02A60(v25);
    if (!v26)
    {
      sub_1BAB21D34(v61);
      sub_1BAB15A08();
      v43 = swift_allocError();
      *v44 = 3;
      *(v44 + 8) = 0;

      swift_willThrow();
      v60 = 0;
      goto LABEL_21;
    }

    v27 = v26;
    v67[2] = v64;
    v67[3] = v65;
    v67[4] = v66;
    v67[0] = v62;
    v67[1] = v63;
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAB21D88();
    v28 = v60;
    v29 = sub_1BABE6A8C();
    v60 = v28;
    if (v28)
    {
      break;
    }

    v31 = v29;
    v32 = v30;
    sub_1BAB21D34(v61);
    v33 = sub_1BABE6BDC();
    sub_1BAAD73E4(v31, v32);

    *&v67[0] = 0;
    LOBYTE(v31) = [v27 registerClientWithParameters:v33 error:v67];

    if (v31)
    {
      v34 = qword_1ED7876D0;
      v35 = *&v67[0];
      if (v34 != -1)
      {
        swift_once();
      }

      v36 = sub_1BABE72BC();
      __swift_project_value_buffer(v36, qword_1ED78BBA0);
      sub_1BAB21C84(v61, v67);
      v37 = sub_1BABE729C();
      v38 = sub_1BABE78EC();
      sub_1BAB21D34(v61);
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v67[0] = v40;
        *v39 = v55;
        v41 = v61[0];

        sub_1BAB21D34(v61);
        v42 = sub_1BAAFA460(v41, *(&v41 + 1), v67);

        *(v39 + 4) = v42;
        _os_log_impl(&dword_1BAACF000, v37, v38, "Reregistered client descriptor %{public}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1BFAFE460](v40, -1, -1);
        MEMORY[0x1BFAFE460](v39, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        sub_1BAB21D34(v61);
      }

      v14 = v16;
      v9 = v57;
      v13 = v58;
      if (!v12)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v45 = *&v67[0];
    v43 = sub_1BABE6ADC();

    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = 0;
    v9 = v57;
LABEL_21:
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v46 = sub_1BABE72BC();
    __swift_project_value_buffer(v46, qword_1ED78BBA0);
    sub_1BAB21C84(v61, v67);
    v47 = sub_1BABE729C();
    v48 = sub_1BABE78EC();
    sub_1BAB21D34(v61);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v67[0] = v50;
      *v49 = v55;
      v52 = *(&v61[0] + 1);
      v51 = *&v61[0];

      sub_1BAB21D34(v61);
      v53 = sub_1BAAFA460(v51, v52, v67);
      v9 = v57;

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1BAACF000, v47, v48, "Could not reregister client descriptor %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFAFE460](v50, -1, -1);
      MEMORY[0x1BFAFE460](v49, -1, -1);
    }

    else
    {

      sub_1BAB21D34(v61);
    }

    v14 = v16;
    v13 = v58;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = v14;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}