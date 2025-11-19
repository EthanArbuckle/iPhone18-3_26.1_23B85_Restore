int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_1000014B8(&qword_100014870, &qword_10000B600);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000B5C0;
  *(v4 + 32) = type metadata accessor for PasscodeSettingsApplicator();
  sub_1000014B8(&qword_100014858, &qword_10000B6E0);
  isa = sub_10000AB0C().super.isa;

  type metadata accessor for PasscodeSettingsStatus();
  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:swift_getObjCClassFromMetadata()];

  return 0;
}

uint64_t sub_1000014B8(uint64_t *a1, uint64_t *a2)
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

void type metadata accessor for RMStoreScope()
{
  if (!qword_100014860)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014860);
    }
  }
}

uint64_t sub_100001550()
{
  v0 = sub_10000A9DC();
  sub_10000617C(v0, qword_100014C00);
  sub_1000060A4(v0, qword_100014C00);
  type metadata accessor for PasscodeSettingsAdapter();
  sub_1000014B8(&qword_100014938, &qword_10000B6E8);
  sub_10000AAAC();
  return sub_10000A9CC();
}

void sub_1000015F0(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  if (a3)
  {
    v7 = 0x800000010000C840;
    sub_10000ACAC(30);

    v11._countAndFlagsBits = a1;
    v11._object = a2;
    sub_10000AADC(v11);
    v8 = 0xD00000000000001CLL;
    v9 = 0x800000010000C870;
    v10 = 0xD000000000000029;
  }

  else
  {
    sub_10000ACAC(18);

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_10000AADC(v12);
    v10 = 0;
    v7 = 0;
    v8 = 0xD000000000000010;
    v9 = 0x800000010000C890;
  }

  *a4 = v10;
  a4[1] = v7;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = 0;
}

__n128 sub_1000016F4@<Q0>(uint64_t a1@<X8>)
{
  sub_1000015F0(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100001744(uint64_t a1)
{
  v2 = sub_100006434();

  return RMAdapterError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001780(uint64_t a1)
{
  v2 = sub_100006434();

  return RMAdapterError.errorDescription.getter(a1, v2);
}

uint64_t sub_1000017C8(uint64_t a1)
{
  v2 = sub_100006388();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100001804(uint64_t a1)
{
  v2 = sub_100006388();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100001848()
{
  result = sub_10000AA8C();
  qword_100014C18 = result;
  unk_100014C20 = v1;
  return result;
}

uint64_t PasscodeSettingsAdapter.configurationClasses()()
{
  sub_1000014B8(&qword_100014870, &qword_10000B600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10000B5C0;
  *(v0 + 32) = sub_100005FF4(0, &qword_100014878, RMModelPasscodeSettingsDeclaration_ptr);
  return v0;
}

id PasscodeSettingsAdapter.declarationKey(forConfiguration:)(uint64_t a1)
{
  v2 = objc_opt_self();
  if (qword_100014848 != -1)
  {
    swift_once();
  }

  v3 = sub_10000AA7C();
  v4 = [v2 newDeclarationKeyWithSubscriberIdentifier:v3 reference:a1];

  return v4;
}

uint64_t PasscodeSettingsAdapter.applyConfiguration(_:replace:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001C74;

  return sub_100005060(a1);
}

uint64_t sub_100001C74(uint64_t a1)
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

uint64_t sub_100001F14(void *a1, void *a2, int a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_100001FF8;

  return sub_100005060(v9);
}

uint64_t sub_100001FF8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_10000A95C();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_100005FF4(0, &unk_100014910, RMModelStatusReason_ptr);
    isa = sub_10000AB0C().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t PasscodeSettingsAdapter.remove(_:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002274;

  return sub_1000054D8(a1);
}

uint64_t sub_100002274()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000024F4(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1000025C8;

  return sub_1000054D8(v7);
}

uint64_t sub_1000025C8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_10000A95C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100002764(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000014B8(&unk_100014BE0, &qword_10000B9B0);
    v2 = sub_10000AC8C();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_100006258(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_100003E38(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
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

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100002908(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000014B8(&qword_100014948, &qword_10000B6F8);
    v2 = sub_10000AD0C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100006248(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100006248(v31, v32);
    result = sub_10000AC4C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100006248(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t PasscodeSettingsAdapter.configurationUI(forConfiguration:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002C70;

  return sub_100005708(a1);
}

uint64_t sub_100002C70(char a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v8 = *(v11 + 8);
  if (v2)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1 & 1;
    v7 = a2;
  }

  return v8(v9, v7);
}

uint64_t sub_100002F14(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_100002FE8;

  return sub_100005708(v7);
}

uint64_t sub_100002FE8(char a1, void *a2)
{
  v4 = v2;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  v12 = (v8 + 16);
  v13 = *(v11 + 32);
  if (v4)
  {
    v14 = sub_10000A95C();

    (*v12)(v13, 0, 0, v14);

    _Block_release(v13);
  }

  else
  {
    (*v12)(v13, a1 & 1, a2, 0);
    _Block_release(v13);
  }

  v15 = *(v11 + 8);

  return v15();
}

id PasscodeSettingsAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PasscodeSettingsAdapter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasscodeSettingsAdapter();
  return objc_msgSendSuper2(&v2, "init");
}

id PasscodeSettingsAdapter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasscodeSettingsAdapter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003290(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_10000AC2C();

    if (v9)
    {

      sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_10000AC1C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1000034C8(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000036B8(v21 + 1);
    }

    v19 = v8;
    sub_1000038E0(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
  v11 = sub_10000ABCC(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100003964(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000ABDC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_1000034C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000014B8(&unk_100014950, &unk_10000B700);
    v2 = sub_10000AC7C();
    v15 = v2;
    sub_10000AC0C();
    if (sub_10000AC3C())
    {
      sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000036B8(v9 + 1);
        }

        v2 = v15;
        result = sub_10000ABCC(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10000AC3C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1000036B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000014B8(&unk_100014950, &unk_10000B700);
  result = sub_10000AC6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_10000ABCC(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1000038E0(uint64_t a1, uint64_t a2)
{
  sub_10000ABCC(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10000ABFC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100003964(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000036B8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100003AD4();
      goto LABEL_12;
    }

    sub_100003C24(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000ABCC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000ABDC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10000AD2C();
  __break(1u);
}

id sub_100003AD4()
{
  v1 = v0;
  sub_1000014B8(&unk_100014950, &unk_10000B700);
  v2 = *v0;
  v3 = sub_10000AC5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100003C24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000014B8(&unk_100014950, &unk_10000B700);
  result = sub_10000AC6C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_10000ABCC(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_100003E38(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_10000AD8C();
  sub_10000AACC();
  result = sub_10000AD9C();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    while (1)
    {
      v15 = (*(v5 + 48) + 16 * v10);
      if (*v15 == a1 && v15[1] == a2)
      {
        break;
      }

      result = sub_10000AD1C();
      if (result)
      {
        v21 = v15[1];
        break;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_9;
      }
    }

    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v8 + 8 * v11) = v13 | v12;
      v17 = (*(v5 + 48) + 16 * v10);
      *v17 = a1;
      v17[1] = a2;
      v18 = *(v5 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v5 + 16) = v20;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_100003F90()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = sub_10000AA7C();
    v3 = [v1 allClientUUIDsForClientType:v2];

    if (v3)
    {
      v4 = sub_10000AB7C();

      v5 = sub_100002764(v4);

      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000406C()
{
  v0 = [objc_opt_self() sharedConnection];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v2 = sub_10000AA7C();
  v3 = sub_10000AA7C();
  v13 = 0;
  v4 = [v1 applyRestrictionDictionary:0 clientType:v2 clientUUID:v3 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v13];

  if (v4)
  {
    return v13;
  }

  v6 = v13;
  sub_10000A96C();

  swift_willThrow();
  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A9DC();
  sub_1000060A4(v7, qword_100014C00);
  swift_errorRetain();
  v8 = sub_10000A9BC();
  v9 = sub_10000ABAC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unable to remove restrictions: %{public}@", v10, 0xCu);
    sub_1000061E0(v11);
  }

  return swift_willThrow();
}

void sub_1000042C0()
{
  if (qword_100014840 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v0 = sub_10000A9DC();
    sub_1000060A4(v0, qword_100014C00);
    v1 = sub_10000A9BC();
    v2 = sub_10000AB9C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Fetching applied configuration keys", v3, 2u);
    }

    v4 = sub_100003F90();
    if (!v4)
    {
      break;
    }

    v5 = 0;
    v7 = (v4 + 7);
    v6 = v4[7];
    v8 = 1 << *(v4 + 32);
    v34[2] = &_swiftEmptySetSingleton;
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & v6;
    v11 = (v8 + 63) >> 6;
    v32 = v4;
    while (v10)
    {
LABEL_13:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = (v4[6] + ((v5 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];
      v17 = objc_opt_self();

      v18 = sub_10000AA7C();
      v19 = [v17 newDeclarationKey:v18];

      if ([v19 isValid])
      {

        v20 = [v19 subscriberIdentifier];
        v21 = sub_10000AA8C();
        v23 = v22;

        if (qword_100014848 != -1)
        {
          swift_once();
        }

        if (v21 == xmmword_100014C18 && v23 == *(&xmmword_100014C18 + 1))
        {

LABEL_28:
          sub_100003290(v34, v19);

          v4 = v32;
        }

        else
        {
          v25 = sub_10000AD1C();

          if (v25)
          {
            goto LABEL_28;
          }

LABEL_34:

          v4 = v32;
        }
      }

      else
      {
        if (qword_100014848 != -1)
        {
          swift_once();
        }

        if (!sub_10000AAFC(xmmword_100014C18))
        {
          goto LABEL_33;
        }

        v26 = sub_10000A9BC();
        v27 = sub_10000AB8C();

        if (os_log_type_enabled(v26, v27))
        {
          v30 = v27;
          v28 = swift_slowAlloc();
          log = v26;
          v29 = swift_slowAlloc();
          v34[0] = v29;
          *v28 = 136446210;
          *(v28 + 4) = sub_100008AA8(v15, v16, v34);
          _os_log_impl(&_mh_execute_header, log, v30, "Removing invalid clientUUID: %{public}s", v28, 0xCu);
          sub_100006130(v29);
        }

        else
        {
        }

        sub_10000406C();
        if (!v33)
        {
          v33 = 0;
LABEL_33:

          goto LABEL_34;
        }

        v33 = 0;
        v4 = v32;
      }
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v11)
      {

        return;
      }

      v10 = *&v7[8 * v12];
      ++v5;
      if (v10)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  if (&_swiftEmptyArrayStorage >> 62 && sub_10000ACDC())
  {
    sub_10000978C(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100004740(void *a1, char a2)
{
  v4 = [objc_allocWithZone(NSMutableDictionary) init];
  if ((a2 & 1) == 0)
  {
    v19 = MCFeaturePasscodeRequired;
    v20 = [a1 payloadRequirePasscode];
    v21 = [v20 BOOLValue];

    [v4 MCSetBoolRestriction:v19 value:v21];
    v22 = MCFeatureAlphanumericPasscodeRequired;
    v23 = [a1 payloadRequireAlphanumericPasscode];
    v24 = [v23 BOOLValue];

    [v4 MCSetBoolRestriction:v22 value:v24];
    v25 = MCFeatureSimplePasscodeAllowed;
    v26 = [a1 payloadRequireComplexPasscode];
    LODWORD(v24) = [v26 BOOLValue];

    [v4 MCSetBoolRestriction:v25 value:v24 ^ 1];
    v27 = MCFeatureMinimumPasscodeLength;
    v28 = [a1 payloadMinimumLength];
    [v4 MCSetValueRestriction:v27 value:v28];

    v29 = MCFeaturePasscodeMinimumComplexChars;
    v30 = [a1 payloadMinimumComplexCharacters];
    [v4 MCSetValueRestriction:v29 value:v30];

    v31 = MCFeatureMaximumFailedPasscodeAttempts;
    v32 = [a1 payloadMaximumFailedAttempts];
    [v4 MCSetValueRestriction:v31 value:v32];

    v33 = [a1 payloadMaximumGracePeriodInMinutes];
    if (v33)
    {
      v34 = v33;
      v35 = MCFeaturePasscodeLockGraceTime;
      result = [v34 integerValue];
      if ((result * 60) >> 64 != (60 * result) >> 63)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v36 = [objc_allocWithZone(NSNumber) initWithInteger:60 * result];
      [v4 MCSetValueRestriction:v35 value:v36];
    }

    v37 = [a1 payloadMaximumInactivityInMinutes];
    if (v37)
    {
      v38 = v37;
      v39 = MCFeatureAutoLockTime;
      result = [v38 integerValue];
      if ((result * 60) >> 64 != (60 * result) >> 63)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v40 = [objc_allocWithZone(NSNumber) initWithInteger:60 * result];
      [v4 MCSetValueRestriction:v39 value:v40];
    }

    v41 = [a1 payloadMaximumPasscodeAgeInDays];
    if (v41)
    {
      v42 = v41;
      [v4 MCSetValueRestriction:MCFeatureMaximumPasscodeAgeDays value:v41];
    }

    v43 = [a1 payloadPasscodeReuseLimit];
    if (!v43)
    {
      goto LABEL_17;
    }

    v6 = v43;
    [v4 MCSetValueRestriction:MCFeaturePasscodeHistoryCount value:v43];
LABEL_16:

LABEL_17:
    v4;
    result = sub_10000A9FC();
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = [objc_opt_self() filterForUserEnrollmentWithDeclaration:a1];
  if (result)
  {
    v6 = result;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClassUnconditional();
    v8 = MCFeaturePasscodeRequired;
    v9 = [v7 payloadRequirePasscode];
    v10 = [v9 BOOLValue];

    [v4 MCSetBoolRestriction:v8 value:v10];
    v11 = MCFeatureSimplePasscodeAllowed;
    v12 = [v7 payloadRequireComplexPasscode];
    LODWORD(v10) = [v12 BOOLValue];

    [v4 MCSetBoolRestriction:v11 value:v10 ^ 1];
    v13 = MCFeatureMinimumPasscodeLength;
    v14 = [v7 payloadMinimumLength];
    [v4 MCSetValueRestriction:v13 value:v14];

    v15 = [v7 payloadMaximumInactivityInMinutes];
    if (v15)
    {
      v16 = v15;
      v17 = MCFeatureAutoLockTime;
      result = [v16 integerValue];
      if ((result * 60) >> 64 == (60 * result) >> 63)
      {
        v18 = [objc_allocWithZone(NSNumber) initWithInteger:60 * result];
        [v4 MCSetValueRestriction:v17 value:v18];

        goto LABEL_16;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

id sub_100004DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5)
{
  v7 = [objc_opt_self() sharedConnection];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  sub_100002908(a1);
  v9.super.isa = sub_10000A9EC().super.isa;

  v10 = sub_10000AA7C();
  v11 = sub_10000AA7C();
  if (a5)
  {
    a5 = sub_10000AA7C();
  }

  v21 = 0;
  v12 = [v8 applyRestrictionDictionary:v9.super.isa clientType:v10 clientUUID:v11 localizedClientDescription:a5 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v21];

  if (v12)
  {
    return v21;
  }

  v14 = v21;
  sub_10000A96C();

  swift_willThrow();
  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A9DC();
  sub_1000060A4(v15, qword_100014C00);
  swift_errorRetain();
  v16 = sub_10000A9BC();
  v17 = sub_10000ABAC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Unable to apply restrictions: %{public}@", v18, 0xCu);
    sub_1000061E0(v19);
  }

  return swift_willThrow();
}

uint64_t sub_100005080()
{
  v40 = v0;
  v1 = objc_opt_self();
  if (qword_100014848 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = sub_10000AA7C();
  v4 = [v1 newDeclarationKeyWithSubscriberIdentifier:v3 reference:v2];

  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A9DC();
  sub_1000060A4(v5, qword_100014C00);
  v6 = v4;
  v7 = sub_10000A9BC();
  v8 = sub_10000AB9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136446210;
    v11 = [v6 key];
    v12 = sub_10000AA8C();
    v14 = v13;

    v15 = sub_100008AA8(v12, v14, &v39);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Applying configuration with key: %{public}s", v9, 0xCu);
    sub_100006130(v10);
  }

  v16 = [*(v0 + 16) declaration];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v18 = *(v0 + 16);
  if (v17)
  {
    v19 = v17;
    v20 = [*(v0 + 16) store];
    v21 = sub_100004740(v19, [v20 type] == 0);
    v22 = [v6 key];
    v23 = sub_10000AA8C();
    v25 = v24;

    v26 = [v20 name];
    if (v26)
    {
      v27 = sub_10000AA8C();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    sub_100004DA4(v21, v23, v25, v27, v29);

    v38 = *(v0 + 8);

    return v38(&_swiftEmptyArrayStorage);
  }

  else
  {

    v30 = [v18 declaration];
    v31 = [v30 declarationType];

    v32 = sub_10000AA8C();
    v34 = v33;

    sub_1000060DC();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    *(v35 + 16) = 1;
    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1000054F8()
{
  v18 = v0;
  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_10000A9DC();
  sub_1000060A4(v2, qword_100014C00);
  v3 = v1;
  v4 = sub_10000A9BC();
  v5 = sub_10000AB9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_10000AA8C();
    v12 = v11;

    v13 = sub_100008AA8(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing configuration with key: %{public}s", v7, 0xCu);
    sub_100006130(v8);
  }

  v14 = [*(v0 + 16) key];
  sub_10000AA8C();

  sub_10000406C();

  v15 = *(v0 + 8);

  return v15();
}

id sub_100005728()
{
  v34 = v0;
  if (qword_100014840 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_10000A9DC();
  sub_1000060A4(v2, qword_100014C00);
  v3 = v1;
  v4 = sub_10000A9BC();
  v5 = sub_10000ABAC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136446210;
    v9 = [v6 declaration];
    v10 = [v9 declarationIdentifier];

    v11 = sub_10000AA8C();
    v13 = v12;

    v14 = sub_100008AA8(v11, v13, &v33);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Get configuration UI for: %{public}s", v7, 0xCu);
    sub_100006130(v8);
  }

  v15 = [*(v0 + 16) declaration];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = [*(v0 + 16) store];
    if (![v18 type])
    {
      result = [objc_opt_self() filterForUserEnrollmentWithDeclaration:v17];
      if (!result)
      {
        __break(1u);
        return result;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClassUnconditional();
    }

    v20 = sub_100006824(v17);

    v21 = *(v0 + 8);

    return v21(1, v20);
  }

  else
  {

    v22 = sub_10000A9BC();
    v23 = sub_10000ABAC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Invalid configuration type in configurationUI", v24, 2u);
    }

    v25 = *(v0 + 16);

    v26 = [v25 declaration];
    v27 = [v26 declarationType];

    v28 = sub_10000AA8C();
    v30 = v29;

    sub_1000060DC();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 1;
    swift_willThrow();
    v32 = *(v0 + 8);

    return v32(0);
  }
}

uint64_t sub_100005B44()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002274;

  return sub_100002F14(v2, v3, v5, v4);
}

uint64_t sub_100005C08()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000064A0;

  return sub_100008240(v2, v3, v5);
}

uint64_t sub_100005CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000064A0;

  return sub_10000832C(a1, v4, v5, v7);
}

uint64_t sub_100005D94()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005DDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000064A0;

  return sub_1000024F4(v2, v3, v5, v4);
}

uint64_t sub_100005E9C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100005EEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000064A0;

  return sub_100001F14(v2, v3, v4, v5, v6);
}

uint64_t sub_100005FB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005FF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_10000603C()
{
  result = qword_100014920;
  if (!qword_100014920)
  {
    sub_100005FF4(255, &unk_100014BF0, RMStoreDeclarationKey_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014920);
  }

  return result;
}

uint64_t sub_1000060A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000060DC()
{
  result = qword_100014930;
  if (!qword_100014930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014930);
  }

  return result;
}

uint64_t sub_100006130(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_10000617C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000061E0(uint64_t a1)
{
  v2 = sub_1000014B8(&qword_100014940, &qword_10000B6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100006248(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_1000062C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000062D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000631C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_100006388()
{
  result = qword_100014960;
  if (!qword_100014960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014960);
  }

  return result;
}

unint64_t sub_1000063E0()
{
  result = qword_100014968;
  if (!qword_100014968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014968);
  }

  return result;
}

unint64_t sub_100006434()
{
  result = qword_100014970;
  if (!qword_100014970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014970);
  }

  return result;
}

void *sub_1000064A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000014B8(&qword_100014A58, &qword_10000B8B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000014B8(&qword_100014A48, &qword_10000B8B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000065DC()
{
  v0 = *(*(sub_10000A98C() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_10000AA6C() - 8) + 64);
  __chkstk_darwin();
  sub_10000AA0C();
  sub_10000A97C();
  return sub_10000AA9C();
}

uint64_t sub_1000066F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a4)
  {
    v9 = result;
    if (a3 || a4 != 0xE000000000000000)
    {
      result = sub_10000AD1C();
      if ((result & 1) == 0)
      {
        sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10000B8A0;
        *(v10 + 32) = v9;
        *(v10 + 40) = a2;
        *(v10 + 48) = a3;
        *(v10 + 56) = a4;
        v11 = *a5;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000064A8(0, v11[2] + 1, 1, v11);
          v11 = result;
        }

        v13 = v11[2];
        v12 = v11[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_1000064A8((v12 > 1), v13 + 1, 1, v11);
          v11 = result;
        }

        v11[2] = v13 + 1;
        v11[v13 + 4] = v10;
        *a5 = v11;
      }
    }
  }

  return result;
}

id sub_100006824(void *a1)
{
  v2 = *(*(sub_10000AA4C() - 8) + 64);
  __chkstk_darwin();
  v119[5] = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_10000A98C() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_10000AA6C() - 8) + 64);
  __chkstk_darwin();
  sub_10000AA0C();
  sub_10000A97C();
  v119[3] = sub_10000AA9C();
  v119[4] = v6;
  sub_10000AA0C();
  sub_10000A97C();
  v119[1] = sub_10000AA9C();
  v119[2] = v7;
  v121[0] = &_swiftEmptyArrayStorage;
  sub_10000AA0C();
  sub_10000A97C();
  v8 = sub_10000AA9C();
  v10 = v9;
  v11 = [a1 payloadRequirePasscode];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10000B8A0;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    *(v13 + 48) = sub_1000065DC();
    *(v13 + 56) = v14;
    v15 = sub_1000064A8(0, 1, 1, &_swiftEmptyArrayStorage);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1000064A8((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v15[v17 + 4] = v13;
    v121[0] = v15;
  }

  else
  {

    v15 = &_swiftEmptyArrayStorage;
  }

  sub_10000AA0C();
  sub_10000A97C();
  v18 = sub_10000AA9C();
  v20 = v19;
  v21 = [a1 payloadRequireAlphanumericPasscode];
  v22 = [v21 BOOLValue];

  if (v22)
  {
    sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10000B8A0;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    *(v23 + 48) = sub_1000065DC();
    *(v23 + 56) = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1000064A8(0, v15[2] + 1, 1, v15);
    }

    v26 = v15[2];
    v25 = v15[3];
    if (v26 >= v25 >> 1)
    {
      v15 = sub_1000064A8((v25 > 1), v26 + 1, 1, v15);
    }

    v15[2] = v26 + 1;
    v15[v26 + 4] = v23;
    v121[0] = v15;
  }

  else
  {
  }

  sub_10000AA0C();
  sub_10000A97C();
  v27 = sub_10000AA9C();
  v29 = v28;
  v30 = [a1 payloadRequireComplexPasscode];
  v31 = [v30 BOOLValue];

  if (v31)
  {
    sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10000B8A0;
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    *(v32 + 48) = sub_1000065DC();
    *(v32 + 56) = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1000064A8(0, v15[2] + 1, 1, v15);
    }

    v35 = v15[2];
    v34 = v15[3];
    if (v35 >= v34 >> 1)
    {
      v15 = sub_1000064A8((v34 > 1), v35 + 1, 1, v15);
    }

    v15[2] = v35 + 1;
    v15[v35 + 4] = v32;
    v121[0] = v15;
  }

  else
  {
  }

  sub_10000AA0C();
  sub_10000A97C();
  v36 = sub_10000AA9C();
  v38 = v37;
  v39 = [a1 payloadMinimumLength];
  sub_1000078BC();
  v40.super.super.isa = sub_10000ABBC(0).super.super.isa;
  if (!v39)
  {

    goto LABEL_24;
  }

  v41 = v39;
  if (sub_10000ABDC())
  {

LABEL_24:
    goto LABEL_30;
  }

  v119[0] = a1;
  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10000B8A0;
  *(v42 + 32) = v36;
  *(v42 + 40) = v38;
  v43 = [v41 stringValue];
  v44 = sub_10000AA8C();
  v46 = v45;

  *(v42 + 48) = v44;
  *(v42 + 56) = v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1000064A8(0, v15[2] + 1, 1, v15);
  }

  v48 = v15[2];
  v47 = v15[3];
  a1 = v119[0];
  if (v48 >= v47 >> 1)
  {
    v15 = sub_1000064A8((v47 > 1), v48 + 1, 1, v15);
  }

  v15[2] = v48 + 1;
  v15[v48 + 4] = v42;
  v121[0] = v15;
LABEL_30:
  sub_10000AA0C();
  sub_10000A97C();
  v49 = sub_10000AA9C();
  v51 = v50;
  v52 = [a1 payloadMinimumComplexCharacters];
  v53.super.super.isa = sub_10000ABBC(0).super.super.isa;
  if (!v52)
  {

    goto LABEL_34;
  }

  v54 = v52;
  if (sub_10000ABDC())
  {

LABEL_34:
    goto LABEL_40;
  }

  v119[0] = a1;
  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10000B8A0;
  *(v55 + 32) = v49;
  *(v55 + 40) = v51;
  v56 = [v54 stringValue];
  v57 = sub_10000AA8C();
  v59 = v58;

  *(v55 + 48) = v57;
  *(v55 + 56) = v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1000064A8(0, v15[2] + 1, 1, v15);
  }

  v61 = v15[2];
  v60 = v15[3];
  a1 = v119[0];
  if (v61 >= v60 >> 1)
  {
    v15 = sub_1000064A8((v60 > 1), v61 + 1, 1, v15);
  }

  v15[2] = v61 + 1;
  v15[v61 + 4] = v55;
  v121[0] = v15;
LABEL_40:
  sub_10000AA0C();
  sub_10000A97C();
  v62 = sub_10000AA9C();
  v64 = v63;
  v65 = [a1 payloadMaximumFailedAttempts];
  v66.super.super.isa = sub_10000ABBC(11).super.super.isa;
  if (!v65)
  {

    goto LABEL_44;
  }

  v67 = v65;
  if (sub_10000ABDC())
  {

LABEL_44:
    goto LABEL_50;
  }

  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_10000B8A0;
  *(v68 + 32) = v62;
  *(v68 + 40) = v64;
  v69 = [v67 stringValue];
  v70 = sub_10000AA8C();
  v72 = v71;

  *(v68 + 48) = v70;
  *(v68 + 56) = v72;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1000064A8(0, v15[2] + 1, 1, v15);
  }

  v74 = v15[2];
  v73 = v15[3];
  if (v74 >= v73 >> 1)
  {
    v15 = sub_1000064A8((v73 > 1), v74 + 1, 1, v15);
  }

  v15[2] = v74 + 1;
  v15[v74 + 4] = v68;
  v121[0] = v15;
LABEL_50:
  sub_10000AA0C();
  sub_10000A97C();
  v75 = sub_10000AA9C();
  v77 = v76;
  v78 = [a1 payloadMaximumGracePeriodInMinutes];
  if (v78)
  {
    v79 = v78;
    sub_10000AA3C();
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    sub_10000AA2C(v122);
    v120 = [v79 integerValue];
    sub_10000AA1C();
    v123._countAndFlagsBits = 0x554E494D2E495520;
    v123._object = 0xEB00000000534554;
    sub_10000AA2C(v123);
    sub_10000AA5C();
    sub_10000A97C();
    v80 = sub_10000AA9C();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  sub_1000066F8(v75, v77, v80, v82, v121);

  sub_10000AA0C();
  sub_10000A97C();
  v83 = sub_10000AA9C();
  v85 = v84;
  v86 = [a1 payloadMaximumInactivityInMinutes];
  if (v86)
  {
    v87 = v86;
    sub_10000AA3C();
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    sub_10000AA2C(v124);
    v120 = [v87 integerValue];
    sub_10000AA1C();
    v125._countAndFlagsBits = 0x554E494D2E495520;
    v125._object = 0xEB00000000534554;
    sub_10000AA2C(v125);
    sub_10000AA5C();
    sub_10000A97C();
    v88 = sub_10000AA9C();
    v90 = v89;
  }

  else
  {
    v88 = 0;
    v90 = 0;
  }

  sub_1000066F8(v83, v85, v88, v90, v121);

  sub_10000AA0C();
  sub_10000A97C();
  v91 = sub_10000AA9C();
  v93 = v92;
  v94 = [a1 payloadMaximumPasscodeAgeInDays];
  if (v94)
  {
    v95 = v94;
    sub_10000AA3C();
    v126._countAndFlagsBits = 0;
    v126._object = 0xE000000000000000;
    sub_10000AA2C(v126);
    v120 = [v95 integerValue];
    sub_10000AA1C();
    v127._countAndFlagsBits = 0x535941442E495520;
    v127._object = 0xE800000000000000;
    sub_10000AA2C(v127);
    sub_10000AA5C();
    sub_10000A97C();
    v96 = sub_10000AA9C();
    v98 = v97;
  }

  else
  {
    v96 = 0;
    v98 = 0;
  }

  sub_1000066F8(v91, v93, v96, v98, v121);

  sub_10000AA0C();
  sub_10000A97C();
  v99 = sub_10000AA9C();
  v101 = v100;
  v102 = [a1 payloadPasscodeReuseLimit];
  if (v102)
  {
    v103 = v102;
    sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_10000B8A0;
    *(v104 + 32) = v99;
    *(v104 + 40) = v101;
    v105 = v103;
    v106 = [v105 stringValue];
    v107 = sub_10000AA8C();
    v109 = v108;

    *(v104 + 48) = v107;
    *(v104 + 56) = v109;
    v110 = v121[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_1000064A8(0, v110[2] + 1, 1, v110);
    }

    v112 = v110[2];
    v111 = v110[3];
    if (v112 >= v111 >> 1)
    {
      v110 = sub_1000064A8((v111 > 1), v112 + 1, 1, v110);
    }

    v110[2] = v112 + 1;
    v110[v112 + 4] = v104;
    v121[0] = v110;
  }

  else
  {
  }

  v113 = objc_opt_self();
  v114 = sub_10000AA7C();

  v115 = sub_10000AA7C();

  sub_1000014B8(&qword_100014A48, &qword_10000B8B0);
  isa = sub_10000AB0C().super.isa;

  v117 = [v113 configurationUIWithTitle:v114 description:v115 details:isa];

  return v117;
}

unint64_t sub_1000078BC()
{
  result = qword_100014A40;
  if (!qword_100014A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014A40);
  }

  return result;
}

id sub_100007A98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasscodeSettingsApplicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007B44()
{
  v0 = sub_10000A9DC();
  sub_10000617C(v0, qword_100014C28);
  sub_1000060A4(v0, qword_100014C28);
  type metadata accessor for PasscodeSettingsStatus();
  sub_1000014B8(&unk_100014BD0, &unk_10000B9A0);
  sub_10000AAAC();
  return sub_10000A9CC();
}

uint64_t sub_100007DCC(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_10000AB1C();
  v4[5] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100007EBC;

  return (sub_10000A2F4)(v7);
}

uint64_t sub_100007EBC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_10000A95C();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    isa = sub_10000A9EC().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 32);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

id sub_1000080D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasscodeSettingsStatus();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008130()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008180()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002274;

  return sub_100007DCC(v2, v3, v5, v4);
}

uint64_t sub_100008240(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000064A0;

  return v7();
}

uint64_t sub_10000832C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002274;

  return v8();
}

uint64_t sub_100008414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000014B8(&qword_100014908, &qword_10000B678) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10000A89C(a3, v24 - v10, &qword_100014908, &qword_10000B678);
  v12 = sub_10000AB5C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000A83C(v11, &qword_100014908, &qword_10000B678);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000AB4C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_10000AB3C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_10000AABC() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10000A83C(a3, &qword_100014908, &qword_10000B678);

    return v22;
  }

LABEL_8:
  sub_10000A83C(a3, &qword_100014908, &qword_10000B678);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100008710(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008808;

  return v7(a1);
}

uint64_t sub_100008808()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008900()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008938(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000064A0;

  return sub_100008710(a1, v5);
}

uint64_t sub_1000089F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002274;

  return sub_100008710(a1, v5);
}

uint64_t sub_100008AA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008B74(v11, 0, 0, 1, a1, a2);
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
    sub_10000A7E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006130(v11);
  return v7;
}

unint64_t sub_100008B74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008C80(a5, a6);
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
    result = sub_10000ACCC();
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

char *sub_100008C80(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008CCC(a1, a2);
  sub_100008DFC(&off_1000106D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008CCC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100008EE8(v5, 0);
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

  result = sub_10000ACCC();
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
        v10 = sub_10000AAEC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100008EE8(v10, 0);
        result = sub_10000AC9C();
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

uint64_t sub_100008DFC(uint64_t result)
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

  result = sub_100008F5C(result, v12, 1, v3);
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

void *sub_100008EE8(uint64_t a1, uint64_t a2)
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

  sub_1000014B8(&qword_100014B88, &qword_10000B968);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100008F5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000014B8(&qword_100014B88, &qword_10000B968);
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

unint64_t sub_100009050(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000AD8C();
  sub_10000AACC();
  v6 = sub_10000AD9C();

  return sub_1000090C8(a1, a2, v6);
}

unint64_t sub_1000090C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000AD1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100009180(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000014B8(&qword_100014B90, &qword_10000B970);
  v36 = a2;
  result = sub_10000ACFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100006248(v25, v37);
      }

      else
      {
        sub_10000A7E0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10000AD8C();
      sub_10000AACC();
      result = sub_10000AD9C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100006248(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100009438(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000ABEC() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_10000AD8C();

      sub_10000AACC();
      v14 = sub_10000AD9C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1000095E8()
{
  v1 = v0;
  sub_1000014B8(&qword_100014B90, &qword_10000B970);
  v2 = *v0;
  v3 = sub_10000ACEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_10000A7E0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100006248(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_10000978C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10000ACDC())
    {
LABEL_3:
      sub_1000014B8(&unk_100014950, &unk_10000B700);
      v3 = sub_10000AC8C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10000ACDC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10000ACBC();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10000ABCC(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10000ABDC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_10000ABCC(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10000ABDC();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

Swift::Int sub_100009A7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000014B8(&unk_100014BE0, &qword_10000B9B0);
    v3 = sub_10000AC8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_10000AD8C();

      sub_10000AACC();
      result = sub_10000AD9C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_10000AD1C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100009BE4()
{
  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000B8A0;
  sub_100005FF4(0, &qword_100014BA8, RMModelStatusPasscodeCompliance_ptr);
  v1 = [swift_getObjCClassFromMetadata() statusItemType];
  v2 = sub_10000AA8C();
  v4 = v3;

  *(inited + 32) = v2;
  *(inited + 40) = v4;
  sub_100005FF4(0, &qword_100014BB0, RMModelStatusPasscodeIsPresent_ptr);
  v5 = [swift_getObjCClassFromMetadata() statusItemType];
  v6 = sub_10000AA8C();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v9 = sub_100009A7C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

unint64_t sub_100009D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000014B8(&qword_100014BC8, &qword_10000B998);
    v3 = sub_10000AD0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A89C(v4, &v15, &unk_100014BB8, &unk_10000B988);
      v5 = v15;
      v6 = v16;
      result = sub_100009050(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100009E34()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v24 = 0;
    v2 = [v0 currentPasscodeIsCompliantWithGlobalRestrictionsOutError:&v24];
    v3 = v2;
    if (v2)
    {
      v4 = v24;
    }

    else
    {
      v6 = v24;
      sub_10000A96C();

      swift_willThrow();
      if (qword_100014850 != -1)
      {
        swift_once();
      }

      v7 = sub_10000A9DC();
      sub_1000060A4(v7, qword_100014C28);
      swift_errorRetain();
      v8 = sub_10000A9BC();
      v9 = sub_10000ABAC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138543362;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "Compliance check %{public}@", v10, 0xCu);
        sub_10000A83C(v11, &qword_100014940, &qword_10000B6F0);
      }

      else
      {
      }
    }

    v13 = [v1 isPasscodeSet];
    sub_1000014B8(&qword_100014BA0, &qword_10000B980);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000B8A0;
    sub_100005FF4(0, &qword_100014BA8, RMModelStatusPasscodeCompliance_ptr);
    v15 = [swift_getObjCClassFromMetadata() statusItemType];
    v16 = sub_10000AA8C();
    v18 = v17;

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = v3;
    sub_100005FF4(0, &qword_100014BB0, RMModelStatusPasscodeIsPresent_ptr);
    v19 = [swift_getObjCClassFromMetadata() statusItemType];
    v20 = sub_10000AA8C();
    v22 = v21;

    *(inited + 80) = v20;
    *(inited + 88) = v22;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = v13;
    v23 = sub_100009D04(inited);
    swift_setDeallocating();
    sub_1000014B8(&unk_100014BB8, &unk_10000B988);
    swift_arrayDestroy();

    return v23;
  }

  else
  {

    return sub_100009D04(&_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10000A1C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000014B8(&qword_100014B90, &qword_10000B970);
    v3 = sub_10000AD0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A89C(v4, &v13, &qword_100014B98, &qword_10000B978);
      v5 = v13;
      v6 = v14;
      result = sub_100009050(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006248(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000A314()
{
  v46 = v0;
  if (qword_100014850 != -1)
  {
LABEL_35:
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_10000A9DC();
  sub_1000060A4(v2, qword_100014C28);

  v3 = sub_10000A9BC();
  v4 = sub_10000AB9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45 = v7;
    *v6 = 136446210;
    v8 = sub_10000AB2C();
    v10 = sub_100008AA8(v8, v9, &v45);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Querying status for key paths:%{public}s", v6, 0xCu);
    sub_100006130(v7);
  }

  v11 = *(v0 + 112);
  v12 = sub_100009E34();
  v13 = sub_10000A1C4(&_swiftEmptyArrayStorage);
  v14 = *(v11 + 16);
  if (v14)
  {
    v15 = (*(v0 + 112) + 40);
    v16 = &unk_10000B960;
    v44 = v12;
    do
    {
      if (!*(v12 + 16))
      {
        goto LABEL_7;
      }

      v18 = *(v15 - 1);
      v17 = *v15;

      v19 = sub_100009050(v18, v17);
      if ((v20 & 1) == 0)
      {

        goto LABEL_7;
      }

      sub_10000A89C(*(v12 + 56) + 32 * v19, v0 + 16, &qword_100014B80, v16);
      sub_10000A89C(v0 + 16, v0 + 48, &qword_100014B80, v16);
      if (!*(v0 + 72))
      {
        sub_10000A83C(v0 + 48, &qword_100014B80, v16);
        v31 = sub_100009050(v18, v17);
        v33 = v32;

        if (v33)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v13;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1000095E8();
            v13 = v45;
          }

          v35 = *(v13[6] + 16 * v31 + 8);

          sub_100006248((v13[7] + 32 * v31), (v0 + 80));
          sub_100009438(v31, v13);
          sub_10000A83C(v0 + 16, &qword_100014B80, v16);
        }

        else
        {
          sub_10000A83C(v0 + 16, &qword_100014B80, v16);
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
        }

        sub_10000A83C(v0 + 80, &qword_100014B80, v16);
        goto LABEL_7;
      }

      v21 = v16;
      sub_100006248((v0 + 48), (v0 + 80));
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v13;
      v23 = sub_100009050(v18, v17);
      v25 = v13[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v29 = v24;
      if (v13[3] >= v28)
      {
        if ((v22 & 1) == 0)
        {
          v38 = v23;
          sub_1000095E8();
          v23 = v38;
          v16 = v21;
          if (v29)
          {
LABEL_21:
            v36 = v23;

            v13 = v45;
            v37 = (v45[7] + 32 * v36);
            sub_100006130(v37);
            sub_100006248((v0 + 80), v37);
            sub_10000A83C(v0 + 16, &qword_100014B80, v16);
            v12 = v44;
            goto LABEL_7;
          }

          goto LABEL_25;
        }
      }

      else
      {
        sub_100009180(v28, v22);
        v23 = sub_100009050(v18, v17);
        if ((v29 & 1) != (v30 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }
      }

      v16 = v21;
      if (v29)
      {
        goto LABEL_21;
      }

LABEL_25:
      v13 = v45;
      v45[(v23 >> 6) + 8] |= 1 << v23;
      v39 = (v13[6] + 16 * v23);
      *v39 = v18;
      v39[1] = v17;
      sub_100006248((v0 + 80), (v13[7] + 32 * v23));
      sub_10000A83C(v0 + 16, &qword_100014B80, v16);
      v40 = v13[2];
      v27 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      v12 = v44;
      if (v27)
      {
        goto LABEL_34;
      }

      v13[2] = v41;
LABEL_7:
      v15 += 2;
      --v14;
    }

    while (v14);
  }

  v42 = *(v0 + 8);

  return v42(v13);
}

uint64_t sub_10000A7E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A83C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000014B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A89C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000014B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}