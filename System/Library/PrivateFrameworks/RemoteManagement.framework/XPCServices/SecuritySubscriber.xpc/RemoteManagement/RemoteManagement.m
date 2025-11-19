int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_100001480(&qword_100018850, &unk_10000F260);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000F250;
  *(v4 + 32) = type metadata accessor for SecurityApplicator();
  sub_100001480(&qword_100018910, &qword_10000F430);
  isa = sub_10000E6A8().super.isa;

  type metadata accessor for SecurityStatus();
  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:swift_getObjCClassFromMetadata()];

  return 0;
}

uint64_t sub_100001480(uint64_t *a1, uint64_t *a2)
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

void *sub_1000014C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for RMStoreScope()
{
  if (!qword_100018840)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100018840);
    }
  }
}

Swift::Int sub_10000154C()
{
  v1 = *v0;
  sub_10000E998();
  sub_10000E9A8(v1);
  return sub_10000E9B8();
}

Swift::Int sub_1000015C0()
{
  v1 = *v0;
  sub_10000E998();
  sub_10000E9A8(v1);
  return sub_10000E9B8();
}

uint64_t *sub_100001604@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1000016D8()
{
  sub_100001480(&qword_100018980, &qword_10000F498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F2F0;
  *(inited + 32) = 0x7079547465737341;
  v2 = v0[1];
  v8 = *v0;
  *(inited + 48) = v8;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "PersistentRef");
  *(inited + 94) = -4864;
  v7 = v2;
  *(inited + 120) = &type metadata for Data;
  *(inited + 128) = 0x76654C7473757254;
  *(inited + 96) = v2;
  *(inited + 168) = &type metadata for Int;
  v3 = *(v0 + 32);
  *(inited + 136) = 0xEA00000000006C65;
  *(inited + 144) = v3;
  sub_100009808(&v8, v6);
  sub_100009864(&v7, v6);
  v4 = sub_10000C274(inited);
  swift_setDeallocating();
  sub_100001480(&qword_100018988, &unk_10000F4A0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_100001824()
{
  v0 = sub_10000E598();
  sub_1000096C4(v0, qword_100019110);
  sub_100009434(v0, qword_100019110);
  type metadata accessor for SecurityAdapter();
  sub_100001480(&qword_100018950, &qword_10000F460);
  sub_10000E628();
  return sub_10000E588();
}

void sub_1000018C4(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = 0x8000000100010C70;
      sub_10000E868(27);

      sub_100009B34();
      v11._countAndFlagsBits = sub_10000E548();
      sub_10000E658(v11);

      v9 = 0xD000000000000019;
      v8 = 0x8000000100010C90;
      v10 = 0xD00000000000001ELL;
    }

    else
    {
      v7 = 0x8000000100010CB0;
      v8 = 0x8000000100010CD0;
      v10 = 0xD000000000000015;
      v9 = 0xD000000000000017;
    }
  }

  else
  {
    sub_10000E868(18);

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_10000E658(v12);
    v10 = 0;
    v7 = 0;
    v9 = 0xD000000000000010;
    v8 = 0x8000000100010CF0;
  }

  *a4 = v10;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = 0;
}

__n128 sub_100001A44@<Q0>(uint64_t a1@<X8>)
{
  sub_1000018C4(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100001A94(uint64_t a1)
{
  v2 = sub_100009B34();

  return RMAdapterError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001AD0(uint64_t a1)
{
  v2 = sub_100009B34();

  return RMAdapterError.errorDescription.getter(a1, v2);
}

uint64_t sub_100001B18(uint64_t a1)
{
  v2 = sub_100009A88();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100001B54(uint64_t a1)
{
  v2 = sub_100009A88();

  return Error<>._code.getter(a1, v2);
}

uint64_t SecurityAdapter.configurationClasses()()
{
  sub_100001480(&qword_100018850, &unk_10000F260);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10000F300;
  *(v0 + 32) = sub_1000097C0(0, &qword_100018858, RMModelSecurityCertificateDeclaration_ptr);
  *(v0 + 40) = sub_1000097C0(0, &qword_100018860, RMModelSecurityIdentityDeclaration_ptr);
  return v0;
}

uint64_t SecurityAdapter.allDeclarationKeys(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001D8C;

  return sub_100004B48(a1);
}

uint64_t sub_100001D8C(uint64_t a1)
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

void *sub_100001E8C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10000E8B8();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    v6 = sub_10000E7A8();
    v7 = *(v1 + 36);
    result = objc_opt_self();
    v8 = 0;
    v23 = v1 + 72;
    v24 = result;
    v25 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v26 = v8;
      v11 = (*(v1 + 48) + 16 * v6);
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_10000E5D8();
      [v24 newDeclarationKey:v14];

      sub_10000E898();
      v15 = _swiftEmptyArrayStorage[2];
      sub_10000E8C8();
      v1 = v25;
      sub_10000E8D8();
      result = sub_10000E8A8();
      v9 = 1 << *(v25 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v16 = *(v4 + 8 * v10);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v25 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v9 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v9 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1000098C0(v6, v7, 0);
            v9 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_1000098C0(v6, v7, 0);
      }

LABEL_4:
      v8 = v26 + 1;
      v6 = v9;
      if (v26 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000226C(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100002320;

  return sub_100004B48(a1);
}

uint64_t sub_100002320()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_10000E478();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
    sub_1000093CC();
    isa = sub_10000E738().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t SecurityAdapter.applyConfiguration(_:replace:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100009DEC;

  return sub_100005F60(a1, a2, a3);
}

uint64_t sub_100002570(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100009680((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001480(&qword_100018948, &qword_10000F458);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_10000E498();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000027F8(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_1000028EC;

  return sub_100005F60(v10, a2, a3);
}

uint64_t sub_1000028EC()
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
    v9 = sub_10000E478();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_1000097C0(0, &qword_1000188F8, RMModelStatusReason_ptr);
    isa = sub_10000E6A8().super.isa;

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

uint64_t SecurityAdapter.remove(_:scope:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002B74;

  return sub_10000501C(a1, a2);
}

uint64_t sub_100002B74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002DF4(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_100002ED4;

  return sub_10000501C(v8, a2);
}

uint64_t sub_100002ED4()
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
    v10 = sub_10000E478();

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

id SecurityAdapter.declarationKey(forConfiguration:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_10000E5D8();
  v4 = [v2 newDeclarationKeyWithSubscriberIdentifier:v3 reference:a1];

  return v4;
}

uint64_t sub_100003184(uint64_t a1, void *a2)
{
  v3 = sub_100009680((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100001480(&qword_100018948, &qword_10000F458);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t SecurityAdapter.configurationUI(forConfiguration:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000032D8;

  return sub_1000076B4(a1);
}

uint64_t sub_1000032D8(char a1, uint64_t a2)
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

uint64_t sub_10000357C(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_100003650;

  return sub_1000076B4(v7);
}

uint64_t sub_100003650(char a1, void *a2)
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
    v14 = sub_10000E478();

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

id SecurityAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecurityAdapter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecurityAdapter();
  return objc_msgSendSuper2(&v2, "init");
}

id SecurityAdapter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecurityAdapter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000038F8(void *a1, void *a2)
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

    v9 = sub_10000E7F8();

    if (v9)
    {

      sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_10000E7E8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100003B30(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100003D20(v21 + 1);
    }

    v19 = v8;
    sub_100003F48(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
  v11 = sub_10000E778(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100003FCC(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000E788();

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

Swift::Int sub_100003B30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001480(&qword_100018990, &qword_10000F900);
    v2 = sub_10000E838();
    v15 = v2;
    sub_10000E7D8();
    if (sub_10000E808())
    {
      sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100003D20(v9 + 1);
        }

        v2 = v15;
        result = sub_10000E778(*(v15 + 40));
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

      while (sub_10000E808());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100003D20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001480(&qword_100018990, &qword_10000F900);
  result = sub_10000E828();
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
      result = sub_10000E778(*(v6 + 40));
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

unint64_t sub_100003F48(uint64_t a1, uint64_t a2)
{
  sub_10000E778(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10000E7C8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100003FCC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100003D20(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000413C();
      goto LABEL_12;
    }

    sub_10000428C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000E778(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000E788();

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
  sub_10000E938();
  __break(1u);
}

id sub_10000413C()
{
  v1 = v0;
  sub_100001480(&qword_100018990, &qword_10000F900);
  v2 = *v0;
  v3 = sub_10000E818();
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

uint64_t sub_10000428C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001480(&qword_100018990, &qword_10000F900);
  result = sub_10000E828();
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
      result = sub_10000E778(v17);
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

uint64_t sub_1000044A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_10000B6C8(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10000BF60();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100004538(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_100004538(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000E7B8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10000E998();

      sub_10000E648();
      v13 = sub_10000E9B8();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000B6C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000BF60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000B94C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000B6C8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_10000E948();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_10000BEAC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_100004830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10000B6C8(0x7079547465737341, 0xE900000000000065), (v5 & 1) != 0) && (sub_1000094D0(*(a1 + 56) + 32 * v4, v18), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v16;
    v7 = v17;
    if (!*(a1 + 16))
    {
LABEL_5:
      v8 = 0;
      v9 = 0xC000000000000000;
LABEL_17:

      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }
  }

  v10 = sub_10000B6C8(0x6574736973726550, 0xED0000666552746ELL);
  if (v11 & 1) != 0 && (sub_1000094D0(*(a1 + 56) + 32 * v10, v18), (swift_dynamicCast()))
  {
    v8 = v16;
    v9 = v17;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  v12 = sub_10000B6C8(0x76654C7473757254, 0xEA00000000006C65);
  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1000094D0(*(a1 + 56) + 32 * v12, v18);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (v16 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v16 == 1;
  }

LABEL_19:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_100004A08(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
    sub_1000093CC();
    result = sub_10000E748();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10000E878();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1000038F8(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_10000E8E8();
  }

  v6 = result;
  v5 = sub_10000E8E8();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100004B68()
{
  v1 = *(v0 + 56);
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_10000E5D8();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_10000E798();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  if (!*(v0 + 40))
  {
    sub_100009728(v0 + 16);
    goto LABEL_8;
  }

  sub_100001480(&qword_100018968, &qword_10000F480);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (_swiftEmptyArrayStorage >> 62 && sub_10000E8E8())
    {
      sub_10000C4A8(_swiftEmptyArrayStorage);
    }

    else
    {
      v7 = &_swiftEmptySetSingleton;
    }

    goto LABEL_10;
  }

  v5 = sub_100001E8C(*(v0 + 48));

  v6 = sub_100004A08(v5);

  v7 = v6;
LABEL_10:
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100004D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_100004D68, 0, 0);
}

uint64_t sub_100004D68()
{
  v1 = v0[18];
  v2 = *(v1 + 32);
  if (*(v1 + 32))
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = objc_opt_self();
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    isa = sub_10000E488().super.isa;
    v0[21] = isa;
    v0[2] = v0;
    v0[3] = sub_100004F0C;
    v9 = swift_continuation_init();
    v0[17] = sub_100001480(&qword_100018970, &qword_10000F488);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100003184;
    v0[13] = &unk_100014A28;
    v0[14] = v9;
    [v5 removeTrustForCertificateRef:isa configurationKey:v4 fullTrust:v2 == 2 scope:v3 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100004F0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_100009DE4;
  }

  else
  {
    v3 = sub_100009DF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000501C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return _swift_task_switch(sub_10000503C, 0, 0);
}

uint64_t sub_10000503C()
{
  v46 = v0;
  if (qword_100018830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_10000E598();
  *(v0 + 120) = sub_100009434(v2, qword_100019110);
  v3 = v1;
  v4 = sub_10000E578();
  v5 = sub_10000E758();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v44 = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_10000E5E8();
    v12 = v11;

    v13 = sub_10000B120(v10, v12, &v44);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing configuration with key: %{public}s", v7, 0xCu);
    sub_100009534(v8);
  }

  v14 = *(v0 + 112);
  v15 = objc_opt_self();
  *(v0 + 128) = v15;
  v16 = [v15 standardUserDefaults];
  v17 = sub_10000E5D8();

  v18 = [v16 objectForKey:v17];

  if (v18)
  {
    sub_10000E798();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v19 = v44;
  *(v0 + 72) = v45;
  *(v0 + 56) = v19;
  if (!*(v0 + 80))
  {
    sub_100009728(v0 + 56);
LABEL_17:
    v35 = sub_10000E578();
    v36 = sub_10000E768();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Invalid user defaults", v37, 2u);
    }

    sub_10000946C();
    swift_allocError();
    *v38 = 0xD000000000000015;
    *(v38 + 8) = 0x8000000100010B70;
    *(v38 + 16) = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  sub_100001480(&qword_100018968, &qword_10000F480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = *(v0 + 96);
  *(v0 + 136) = v20;
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = *(v0 + 104);
  *(v0 + 88) = v20;
  v22 = [v21 key];
  v23 = sub_10000E5E8();
  v25 = v24;

  if (*(v20 + 16))
  {
    v26 = sub_10000B6C8(v23, v25);
    v28 = v27;

    if (v28)
    {
      v29 = *(*(v20 + 56) + 8 * v26);

      sub_100004830(v30, v0 + 16);
      v31 = swift_task_alloc();
      *(v0 + 144) = v31;
      *v31 = v0;
      v31[1] = sub_1000055A0;
      v32 = *(v0 + 104);
      v33 = *(v0 + 112);

      return sub_100004D44(v0 + 16, v32, v33);
    }
  }

  else
  {
  }

  v40 = sub_10000E578();
  v41 = sub_10000E768();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Invalid remove: no persistent ref to remove", v42, 2u);
  }

  sub_10000946C();
  swift_allocError();
  *v43 = 0xD00000000000002BLL;
  *(v43 + 8) = 0x8000000100010B90;
  *(v43 + 16) = 0;
  swift_willThrow();

LABEL_20:
  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1000055A0()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100005A24;
  }

  else
  {
    v3 = sub_1000056B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000056B4()
{
  v37 = v0;
  v1 = [*(v0 + 104) key];
  v2 = sub_10000E5E8();
  v4 = v3;

  v5 = sub_1000044A0(v2, v4);

  if (v5)
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 112) == 0;

    v8 = [v6 standardUserDefaults];
    v9 = *(v0 + 88);
    sub_100001480(&qword_100018960, &unk_10000F8C0);
    isa = sub_10000E5A8().super.isa;
    v11 = sub_10000E5D8();

    [v8 setObject:isa forKey:v11];

    sub_100009790(v0 + 16);

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 104);
    v15 = sub_10000E578();
    v16 = sub_10000E768();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 104);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136446210;
      v20 = [v17 key];
      v21 = sub_10000E5E8();
      v23 = v22;

      v24 = sub_10000B120(v21, v23, &v35);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invalid remove: no configuration key: %{public}s", v18, 0xCu);
      sub_100009534(v19);
    }

    v25 = *(v0 + 104);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_10000E868(40);

    v35 = 0xD000000000000026;
    v36 = 0x8000000100010BC0;
    v26 = [v25 key];
    v27 = sub_10000E5E8();
    v29 = v28;

    v39._countAndFlagsBits = v27;
    v39._object = v29;
    sub_10000E658(v39);

    v30 = v35;
    v31 = v36;
    sub_10000946C();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = v31;
    *(v32 + 16) = 0;
    swift_willThrow();
    sub_100009790(v0 + 16);
    v33 = *(v0 + 88);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_100005A24()
{
  v1 = v0[17];
  sub_100009790((v0 + 2));

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100005A94(void *a1, id a2)
{
  v3 = [a2 declarationType];
  v4 = sub_10000E5E8();
  v6 = v5;

  v7 = [objc_opt_self() registeredIdentifier];
  v8 = sub_10000E5E8();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_10000E928();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  if ([a1 type] == 1)
  {
    return 2;
  }

  if ([a1 type])
  {
    return 1;
  }

  return 2;
}

uint64_t sub_100005BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_100005BD8, 0, 0);
}

uint64_t sub_100005BD8()
{
  v1 = v0[18];
  v2 = *(v1 + 32);
  if (*(v1 + 32))
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = objc_opt_self();
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    isa = sub_10000E488().super.isa;
    v0[21] = isa;
    v0[2] = v0;
    v0[3] = sub_100005D7C;
    v9 = swift_continuation_init();
    v0[17] = sub_100001480(&qword_100018970, &qword_10000F488);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100003184;
    v0[13] = &unk_100014A78;
    v0[14] = v9;
    [v5 setTrustForCertificateRef:isa configurationKey:v4 fullTrust:v2 == 2 scope:v3 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100005D7C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_100005EF0;
  }

  else
  {
    v3 = sub_100005E8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005E8C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005EF0()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_100005F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  return _swift_task_switch(sub_100005F84, 0, 0);
}

uint64_t sub_100005F84()
{
  v49 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = sub_10000660C;
    v4 = *(v0 + 256);

    return sub_10000501C(v2, v4);
  }

  v6 = *(v0 + 240);
  v7 = objc_opt_self();
  v8 = sub_10000E5D8();
  v9 = [v7 newDeclarationKeyWithSubscriberIdentifier:v8 reference:v6];
  *(v0 + 272) = v9;

  if (qword_100018830 != -1)
  {
    swift_once();
  }

  v10 = sub_10000E598();
  *(v0 + 280) = sub_100009434(v10, qword_100019110);
  v11 = v9;
  v12 = sub_10000E578();
  v13 = sub_10000E758();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v48 = v15;
    *v14 = 136446210;
    v16 = [v11 key];
    v17 = sub_10000E5E8();
    v19 = v18;

    v20 = sub_10000B120(v17, v19, &v48);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Applying configuration with key: %{public}s", v14, 0xCu);
    sub_100009534(v15);
  }

  v21 = [*(v0 + 240) declaration];
  v22 = [v21 declarationType];

  v23 = sub_10000E5E8();
  v25 = v24;

  v26 = [objc_opt_self() registeredIdentifier];
  v27 = sub_10000E5E8();
  v29 = v28;

  if (v23 == v27 && v25 == v29)
  {

LABEL_13:
    v31 = "com.apple.managed.certificates";
    goto LABEL_15;
  }

  v30 = sub_10000E928();

  if (v30)
  {
    goto LABEL_13;
  }

  v31 = "v16@?0@NSError8";
LABEL_15:
  *(v0 + 288) = v31;
  v32 = [*(v0 + 240) assets];
  if (v32)
  {
    v33 = v32;
    sub_1000097C0(0, &qword_100018978, RMModelDeclarationBase_ptr);
    v34 = sub_10000E6B8();

    if (v34 >> 62)
    {
      v35 = sub_10000E8E8();
      if (v35)
      {
LABEL_18:
        if ((v34 & 0xC000000000000001) != 0)
        {
          v36 = sub_10000E878();
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return _swift_continuation_await(v35);
          }

          v36 = *(v34 + 32);
        }

        v37 = v36;
        *(v0 + 296) = v36;

        v38 = [v37 declarationIdentifier];
        if (!v38)
        {
          sub_10000E5E8();
          v38 = sub_10000E5D8();
        }

        *(v0 + 304) = v38;
        v39 = *(v0 + 240);
        v40 = objc_opt_self();
        v41 = sub_10000E5D8();
        *(v0 + 312) = v41;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 216;
        *(v0 + 24) = sub_100006D10;
        v42 = swift_continuation_init();
        *(v0 + 136) = sub_100001480(&qword_100018920, &qword_10000F438);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002570;
        *(v0 + 104) = &unk_100014A50;
        *(v0 + 112) = v42;
        [v40 resolveKeychainAsset:v39 assetIdentifier:v38 accessGroup:v41 completionHandler:v0 + 80];
        v35 = v0 + 16;

        return _swift_continuation_await(v35);
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_18;
      }
    }
  }

  v43 = sub_10000E578();
  v44 = sub_10000E768();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Missing asset reference", v45, 2u);
  }

  sub_10000946C();
  swift_allocError();
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 16) = 2;
  swift_willThrow();

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10000660C()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100009DBC;
  }

  else
  {
    v3 = sub_100006724;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006724()
{
  v45 = v0;

  v1 = *(v0 + 240);
  v2 = objc_opt_self();
  v3 = sub_10000E5D8();
  v4 = [v2 newDeclarationKeyWithSubscriberIdentifier:v3 reference:v1];
  *(v0 + 272) = v4;

  if (qword_100018830 != -1)
  {
    swift_once();
  }

  v5 = sub_10000E598();
  *(v0 + 280) = sub_100009434(v5, qword_100019110);
  v6 = v4;
  v7 = sub_10000E578();
  v8 = sub_10000E758();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136446210;
    v11 = [v6 key];
    v12 = sub_10000E5E8();
    v14 = v13;

    v15 = sub_10000B120(v12, v14, &v44);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Applying configuration with key: %{public}s", v9, 0xCu);
    sub_100009534(v10);
  }

  v16 = [*(v0 + 240) declaration];
  v17 = [v16 declarationType];

  v18 = sub_10000E5E8();
  v20 = v19;

  v21 = [objc_opt_self() registeredIdentifier];
  v22 = sub_10000E5E8();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {

LABEL_9:
    v26 = "com.apple.managed.certificates";
    goto LABEL_11;
  }

  v25 = sub_10000E928();

  if (v25)
  {
    goto LABEL_9;
  }

  v26 = "v16@?0@NSError8";
LABEL_11:
  *(v0 + 288) = v26;
  v27 = [*(v0 + 240) assets];
  if (v27)
  {
    v28 = v27;
    sub_1000097C0(0, &qword_100018978, RMModelDeclarationBase_ptr);
    v29 = sub_10000E6B8();

    if (v29 >> 62)
    {
      v30 = sub_10000E8E8();
      if (v30)
      {
LABEL_14:
        if ((v29 & 0xC000000000000001) != 0)
        {
          v31 = sub_10000E878();
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return _swift_continuation_await(v30);
          }

          v31 = *(v29 + 32);
        }

        v32 = v31;
        *(v0 + 296) = v31;

        v33 = [v32 declarationIdentifier];
        if (!v33)
        {
          sub_10000E5E8();
          v33 = sub_10000E5D8();
        }

        *(v0 + 304) = v33;
        v34 = *(v0 + 240);
        v35 = objc_opt_self();
        v36 = sub_10000E5D8();
        *(v0 + 312) = v36;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 216;
        *(v0 + 24) = sub_100006D10;
        v37 = swift_continuation_init();
        *(v0 + 136) = sub_100001480(&qword_100018920, &qword_10000F438);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_100002570;
        *(v0 + 104) = &unk_100014A50;
        *(v0 + 112) = v37;
        [v35 resolveKeychainAsset:v34 assetIdentifier:v33 accessGroup:v36 completionHandler:v0 + 80];
        v30 = v0 + 16;

        return _swift_continuation_await(v30);
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_14;
      }
    }
  }

  v38 = sub_10000E578();
  v39 = sub_10000E768();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Missing asset reference", v40, 2u);
  }

  sub_10000946C();
  swift_allocError();
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = 2;
  swift_willThrow();

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_100006D10()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  if (v3)
  {
    v4 = *(v1 + 288);

    v5 = sub_100007570;
  }

  else
  {
    v5 = sub_100006E2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006E2C()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  *(v0 + 328) = v7;
  *(v0 + 336) = v6;

  v8 = [v3 declarationType];
  v9 = sub_10000E5E8();
  v11 = v10;
  sub_100009580(v7, v6);

  v12 = [v5 store];
  v13 = [v5 declaration];
  LOBYTE(v3) = sub_100005A94(v12, v3);

  *(v0 + 144) = v9;
  *(v0 + 152) = v11;
  *(v0 + 160) = v7;
  *(v0 + 168) = v6;
  *(v0 + 176) = v3;
  v14 = swift_task_alloc();
  *(v0 + 344) = v14;
  *v14 = v0;
  v14[1] = sub_100006FB4;
  v15 = *(v0 + 272);
  v16 = *(v0 + 256);

  return (sub_100005BB4)(v0 + 144, v15, v16);
}

uint64_t sub_100006FB4()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1000074F4;
  }

  else
  {
    v3 = sub_1000070C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000070C8()
{
  v1 = *(v0 + 256);
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_10000E5D8();

  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    sub_10000E798();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  *(v0 + 200) = v36;
  *(v0 + 184) = v35;
  if (!*(v0 + 208))
  {
    sub_100009728(v0 + 184);
    goto LABEL_9;
  }

  sub_100001480(&qword_100018968, &qword_10000F480);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    *(v0 + 232) = 0;
    goto LABEL_10;
  }

  if (*(v0 + 232))
  {
LABEL_11:
    v33 = *(v0 + 328);
    v34 = *(v0 + 336);
    v32 = *(v0 + 296);
    v8 = *(v0 + 272);

    v9 = [v8 key];
    v10 = sub_10000E5E8();
    v12 = v11;

    v13 = sub_1000016D8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000046E8(v13, v10, v12, isUniquelyReferenced_nonNull_native);

    v15 = [v2 standardUserDefaults];
    sub_100001480(&qword_100018960, &unk_10000F8C0);
    isa = sub_10000E5A8().super.isa;

    v17 = sub_10000E5D8();

    [v15 setObject:isa forKey:v17];

    sub_100009790(v0 + 144);
    sub_1000095D4(v33, v34);

    v18 = *(v0 + 232);

    v19 = *(v0 + 8);

    return v19(_swiftEmptyArrayStorage);
  }

LABEL_10:
  v6 = sub_10000C3A4(_swiftEmptyArrayStorage);
  v7 = *(v0 + 232);
  *(v0 + 232) = v6;

  if (*(v0 + 232))
  {
    goto LABEL_11;
  }

  v21 = *(v0 + 280);
  v22 = sub_10000E578();
  v23 = sub_10000E768();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalid user defaults", v24, 2u);
  }

  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v27 = *(v0 + 296);
  v28 = *(v0 + 272);

  sub_10000946C();
  swift_allocError();
  *v29 = 0xD000000000000015;
  *(v29 + 8) = 0x8000000100010B70;
  *(v29 + 16) = 0;
  swift_willThrow();
  sub_1000095D4(v26, v25);

  sub_100009790(v0 + 144);
  v30 = *(v0 + 232);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1000074F4()
{
  v1 = v0[37];
  v2 = v0[34];
  sub_1000095D4(v0[41], v0[42]);

  sub_100009790((v0 + 18));
  v3 = v0[44];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100007570()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[35];
  swift_willThrow();

  v5 = sub_10000E578();
  v6 = sub_10000E768();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed asset resolution", v7, 2u);
  }

  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[34];

  sub_10000946C();
  swift_allocError();
  *v11 = v8;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  swift_willThrow();
  swift_errorRetain();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000076B4(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_10000E4C8();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = sub_10000E4E8();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = sub_10000E518();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100007838, 0, 0);
}

uint64_t sub_100007838()
{
  v92 = v0;
  if (qword_100018830 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_10000E598();
  *(v0 + 248) = sub_100009434(v2, qword_100019110);
  v3 = v1;
  v4 = sub_10000E578();
  v5 = sub_10000E758();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v90 = v8;
    *v7 = 136446210;
    v9 = [v6 declaration];
    v10 = [v9 declarationIdentifier];

    v11 = sub_10000E5E8();
    v13 = v12;

    v14 = sub_10000B120(v11, v13, &v90);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Get configuration UI for: %{public}s", v7, 0xCu);
    sub_100009534(v8);
  }

  v15 = [*(v0 + 160) declaration];
  *(v0 + 256) = v15;
  v16 = [v15 declarationType];
  v17 = sub_10000E5E8();
  v19 = v18;

  v20 = RMModelSecurityIdentityDeclaration_ptr;
  v21 = [objc_opt_self() registeredIdentifier];
  v22 = sub_10000E5E8();
  v24 = v23;

  if (v22 == v17 && v24 == v19)
  {
    goto LABEL_7;
  }

  v25 = sub_10000E928();

  if (v25)
  {
    goto LABEL_9;
  }

  v20 = RMModelSecurityCertificateDeclaration_ptr;
  v63 = [objc_opt_self() registeredIdentifier];
  v64 = sub_10000E5E8();
  v66 = v65;

  if (v64 == v17 && v66 == v19)
  {
LABEL_7:

LABEL_9:

    goto LABEL_10;
  }

  v67 = sub_10000E928();

  if ((v67 & 1) == 0)
  {
    v68 = sub_10000E578();
    v69 = sub_10000E768();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Invalid configuration for configuration UI", v70, 2u);
    }

    v90 = 0;
    v91 = 0xE000000000000000;
    sub_10000E868(30);

    v90 = 0xD00000000000001CLL;
    v91 = 0x8000000100010970;
    v71 = [v15 declarationType];
    v72 = sub_10000E5E8();
    v74 = v73;

    v94._countAndFlagsBits = v72;
    v94._object = v74;
    sub_10000E658(v94);

    v43 = v90;
    v42 = v91;
    goto LABEL_17;
  }

LABEL_10:
  v26 = *(v0 + 160);
  v27 = *v20;
  objc_opt_self();
  v28 = [swift_dynamicCastObjCClassUnconditional() payloadCredentialAssetReference];
  sub_10000E5E8();

  v29 = sub_10000E5D8();

  v30 = [v26 assetWithIdentifier:v29];
  *(v0 + 264) = v30;

  if (v30)
  {
    v31 = [v30 declarationType];
    v32 = sub_10000E5E8();
    v34 = v33;

    v35 = [objc_opt_self() registeredIdentifier];
    v36 = sub_10000E5E8();
    v38 = v37;

    if (v36 == v32 && v38 == v34)
    {
    }

    else
    {
      v51 = sub_10000E928();

      if ((v51 & 1) == 0)
      {
        v75 = [objc_opt_self() registeredIdentifier];
        v76 = sub_10000E5E8();
        v78 = v77;

        if (v76 == v32 && v78 == v34)
        {
        }

        else
        {
          v79 = sub_10000E928();

          if ((v79 & 1) == 0)
          {
            v80 = [objc_opt_self() registeredIdentifier];
            v81 = sub_10000E5E8();
            v83 = v82;

            if (v81 == v32 && v83 == v34)
            {
            }

            else
            {
              v84 = sub_10000E928();

              if ((v84 & 1) == 0)
              {
                v85 = [objc_opt_self() registeredIdentifier];
                v86 = sub_10000E5E8();
                v88 = v87;

                if (v86 != v32 || v88 != v34)
                {
                  v89 = sub_10000E928();

                  if (v89)
                  {
                    v54 = 0xD000000000000019;
                  }

                  else
                  {
                    v54 = 0xD00000000000001CLL;
                  }

                  if (v89)
                  {
                    v53 = "UI.Key.Certificate";
                  }

                  else
                  {
                    v53 = "r configurationUI";
                  }

                  goto LABEL_23;
                }

                v52 = "UI.Value.Description-SCEP";
                goto LABEL_22;
              }
            }

            v53 = "UI.Value.Description-SCEP";
            v54 = 0xD00000000000001DLL;
            goto LABEL_23;
          }
        }

        v53 = "UI.Value.Description-Identity";
        v54 = 0xD000000000000020;
        goto LABEL_23;
      }
    }

    v52 = "UI.Value.Description-ACME";
LABEL_22:
    v53 = (v52 - 32);
    v54 = 0xD000000000000019;
LABEL_23:
    *(v0 + 272) = v54;
    *(v0 + 280) = v53;
    v55 = *(v0 + 160);
    v56 = objc_opt_self();
    v57 = sub_10000E5D8();
    v58 = [v55 store];
    v59 = [v56 newDeclarationKeyWithSubscriberIdentifier:v57 store:v58 declaration:v30];
    *(v0 + 288) = v59;

    v60 = [v55 store];
    *(v0 + 296) = v60;
    v61 = [v59 key];
    if (!v61)
    {
      sub_10000E5E8();
      v61 = sub_10000E5D8();
    }

    *(v0 + 304) = v61;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_100008250;
    v62 = swift_continuation_init();
    *(v0 + 136) = sub_100001480(&qword_100018920, &qword_10000F438);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100002570;
    *(v0 + 104) = &unk_100014A00;
    *(v0 + 112) = v62;
    [v60 certificatePersistentRefForAssetKey:v61 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  v39 = sub_10000E578();
  v40 = sub_10000E768();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Invalid asset for configurationUI", v41, 2u);
  }

  v42 = 0x8000000100010990;
  v43 = 0xD000000000000021;
LABEL_17:
  sub_10000946C();
  swift_allocError();
  *v44 = v43;
  *(v44 + 8) = v42;
  *(v44 + 16) = 0;
  swift_willThrow();

  v46 = *(v0 + 232);
  v45 = *(v0 + 240);
  v47 = *(v0 + 208);
  v48 = *(v0 + 184);

  v49 = *(v0 + 8);

  return v49(0);
}

uint64_t sub_100008250()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_100008C6C;
  }

  else
  {
    v3 = sub_100008360;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008360()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  sub_100009580(v4, v3);
  v5 = [v2 store];
  [v5 scope];

  v6 = [v2 store];
  v7 = [v6 personaIdentifier];

  if (v7)
  {
    sub_10000E5E8();
  }

  sub_10000E538();
  v8 = sub_10000E528();
  sub_1000095D4(v4, v3);
  v9 = SecCertificateCopySubjectSummary(v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_10000E5E8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = v8;
  result = SecCertificateCopyIssuerSummary();
  if (result)
  {
    v16 = result;

    v17 = sub_10000E5E8();
    v85 = v18;
    v86 = v17;

    SecCertificateNotValidAfter();
    v20 = v19;
    v87 = v14;

    v88 = v3;
    v89 = v4;
    v90 = v13;
    v91 = v11;
    if (v20 == 0.0)
    {
      v75 = 0xE000000000000000;
      v76 = 0;
    }

    else
    {
      v22 = *(v0 + 232);
      v21 = *(v0 + 240);
      v24 = *(v0 + 216);
      v23 = *(v0 + 224);
      v25 = *(v0 + 208);
      v82 = *(v0 + 200);
      v26 = *(v0 + 184);
      v92 = *(v0 + 192);
      v27 = *(v0 + 176);
      v83 = *(v0 + 168);
      sub_10000E4A8();
      sub_10000E4F8();
      sub_100009628();
      sub_10000E5C8();
      v80 = *(v23 + 8);
      v80(v22, v24);
      sub_10000E4D8();
      sub_10000E4B8();
      v28 = sub_10000E508();
      v75 = v29;
      v76 = v28;
      (*(v27 + 8))(v26, v83);
      (*(v82 + 8))(v25, v92);
      v80(v21, v24);
    }

    v31 = *(v0 + 272);
    v30 = *(v0 + 280);
    v84 = sub_10000E5D8();
    v32 = objc_opt_self();
    v33 = sub_10000E5D8();
    v34 = [v32 string:v33];

    if (!v34)
    {
      sub_10000E5E8();
      v34 = sub_10000E5D8();
    }

    v35 = *(v0 + 280);
    v69 = *(v0 + 272);
    v70 = v34;
    v73 = *(v0 + 288);
    v74 = *(v0 + 264);
    v72 = *(v0 + 256);
    v77 = *(v0 + 240);
    v78 = *(v0 + 232);
    v79 = *(v0 + 208);
    v81 = *(v0 + 184);
    v71 = objc_opt_self();
    sub_100001480(&qword_100018930, &qword_10000F440);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10000F310;
    sub_100001480(&qword_100018938, &qword_10000F448);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10000F300;
    v38 = sub_10000E5D8();
    v39 = [v32 string:v38];

    v40 = sub_10000E5E8();
    v42 = v41;

    *(v37 + 32) = v40;
    *(v37 + 40) = v42;
    v43 = sub_10000E5D8();

    v44 = [v32 string:v43];

    v45 = sub_10000E5E8();
    v47 = v46;

    *(v37 + 48) = v45;
    *(v37 + 56) = v47;
    *(v36 + 32) = v37;
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10000F300;
    v49 = sub_10000E5D8();
    v50 = [v32 string:v49];

    v51 = sub_10000E5E8();
    v53 = v52;

    *(v48 + 32) = v51;
    *(v48 + 40) = v53;
    *(v48 + 48) = v91;
    *(v48 + 56) = v90;
    *(v36 + 40) = v48;
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10000F300;
    v55 = sub_10000E5D8();

    v56 = [v32 string:v55];

    v57 = sub_10000E5E8();
    v59 = v58;

    *(v54 + 32) = v57;
    *(v54 + 40) = v59;
    *(v54 + 48) = v76;
    *(v54 + 56) = v75;
    *(v36 + 48) = v54;
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10000F300;
    v61 = sub_10000E5D8();
    v62 = [v32 string:v61];

    v63 = sub_10000E5E8();
    v65 = v64;

    *(v60 + 32) = v63;
    *(v60 + 40) = v65;
    *(v60 + 48) = v86;
    *(v60 + 56) = v85;
    *(v36 + 56) = v60;
    sub_100001480(&qword_100018940, &qword_10000F450);
    isa = sub_10000E6A8().super.isa;

    v67 = [v71 configurationUIWithTitle:v84 description:v70 details:isa];

    sub_1000095D4(v89, v88);

    v68 = *(v0 + 8);

    return v68(1, v67);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008C6C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v0[35];
  v5 = v0[31];
  swift_willThrow();

  v6 = sub_10000E578();
  v7 = sub_10000E768();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Invalid persistent ref for configurationUI", v8, 2u);
  }

  v9 = v0[36];
  v11 = v0[32];
  v10 = v0[33];

  sub_10000946C();
  swift_allocError();
  *v12 = 0xD000000000000013;
  *(v12 + 8) = 0x8000000100010A20;
  *(v12 + 16) = 0;
  swift_willThrow();

  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[26];
  v16 = v0[23];

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_100008E28()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002B74;

  return sub_10000357C(v2, v3, v5, v4);
}

uint64_t sub_100008EEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009DE0;

  return sub_10000A8B8(v2, v3, v5);
}

uint64_t sub_100008FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009DE0;

  return sub_10000A9A0(a1, v4, v5, v7);
}

uint64_t sub_100009078()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000090C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009DE0;

  return sub_100002DF4(v2, v3, v5, v4);
}

uint64_t sub_100009180()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000091D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009DE0;

  return sub_1000027F8(v2, v3, v4, v5, v6);
}

uint64_t sub_100009298()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000092D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009DE0;

  return sub_10000226C(v2, v3);
}

uint64_t sub_10000938C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000093CC()
{
  result = qword_100018908;
  if (!qword_100018908)
  {
    sub_1000097C0(255, &qword_100018900, RMStoreDeclarationKey_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018908);
  }

  return result;
}

uint64_t sub_100009434(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000946C()
{
  result = qword_100018918;
  if (!qword_100018918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018918);
  }

  return result;
}

uint64_t sub_1000094D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009534(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100009580(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000095D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100009628()
{
  result = qword_100018928;
  if (!qword_100018928)
  {
    sub_10000E518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018928);
  }

  return result;
}

void *sub_100009680(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_1000096C4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100009728(uint64_t a1)
{
  v2 = sub_100001480(&qword_100018958, &qword_10000F468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000097C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000098C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000098CC(uint64_t a1)
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

__n128 sub_1000098E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000098FC(uint64_t a1, int a2)
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

uint64_t sub_100009944(uint64_t result, int a2, int a3)
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

uint64_t sub_100009998(uint64_t a1)
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

__n128 sub_1000099B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000099C8(uint64_t a1, unsigned int a2)
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

uint64_t sub_100009A10(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100009A58(uint64_t result, unsigned int a2)
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

unint64_t sub_100009A88()
{
  result = qword_100018998;
  if (!qword_100018998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018998);
  }

  return result;
}

unint64_t sub_100009AE0()
{
  result = qword_1000189A0;
  if (!qword_1000189A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189A0);
  }

  return result;
}

unint64_t sub_100009B34()
{
  result = qword_1000189A8;
  if (!qword_1000189A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrustLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TrustLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100009CFC()
{
  result = qword_1000189B0;
  if (!qword_1000189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189B0);
  }

  return result;
}

unint64_t sub_100009D50()
{
  result = qword_1000189B8;
  if (!qword_1000189B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189B8);
  }

  return result;
}

id sub_100009EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecurityApplicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100009F44()
{
  sub_100001480(&qword_100018938, &qword_10000F448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F300;
  v1 = [objc_opt_self() registeredIdentifier];
  v2 = sub_10000E5E8();
  v4 = v3;

  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v5 = [objc_opt_self() registeredIdentifier];
  v6 = sub_10000E5E8();
  v8 = v7;

  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v9 = sub_10000C798(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_10000A044()
{
  v0 = sub_10000E598();
  sub_1000096C4(v0, qword_100019128);
  sub_100009434(v0, qword_100019128);
  type metadata accessor for SecurityStatus();
  sub_100001480(&unk_100018BF0, &unk_10000F8E0);
  sub_10000E628();
  return sub_10000E588();
}

uint64_t sub_10000A33C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_10000E6B8();
  v4[5] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10000A434;

  return (sub_10000D450)(v7, v8);
}

uint64_t sub_10000A434()
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
    v9 = sub_10000E478();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    isa = sub_10000E5A8().super.isa;

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

uint64_t sub_10000A60C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100009680((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001480(&qword_100018948, &qword_10000F458);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000097C0(0, &unk_100018BD0, RMCertificateStatusItem_ptr);
    **(*(v4 + 64) + 40) = sub_10000E5B8();

    return _swift_continuation_throwingResume(v4);
  }
}

id sub_10000A74C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecurityStatus();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A7A8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A7F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002B74;

  return sub_10000A33C(v2, v3, v5, v4);
}

uint64_t sub_10000A8B8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100009DE0;

  return v7();
}

uint64_t sub_10000A9A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002B74;

  return v8();
}

uint64_t sub_10000AA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001480(&qword_1000188F0, &qword_10000F3A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10000E364(a3, v24 - v10, &qword_1000188F0, &qword_10000F3A8);
  v12 = sub_10000E728();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000E2D4(v11, &qword_1000188F0, &qword_10000F3A8);
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

  sub_10000E718();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_10000E708();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_10000E638() + 32;
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

    sub_10000E2D4(a3, &qword_1000188F0, &qword_10000F3A8);

    return v22;
  }

LABEL_8:
  sub_10000E2D4(a3, &qword_1000188F0, &qword_10000F3A8);
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

uint64_t sub_10000AD88(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AE80;

  return v7(a1);
}

uint64_t sub_10000AE80()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000AF78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AFB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009DE0;

  return sub_10000AD88(a1, v5);
}

uint64_t sub_10000B068(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002B74;

  return sub_10000AD88(a1, v5);
}

uint64_t sub_10000B120(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B1EC(v11, 0, 0, 1, a1, a2);
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
    sub_1000094D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009534(v11);
  return v7;
}

unint64_t sub_10000B1EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B2F8(a5, a6);
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
    result = sub_10000E888();
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

void *sub_10000B2F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000B344(a1, a2);
  sub_10000B474(&off_1000147D8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10000B344(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000B560(v5, 0);
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

  result = sub_10000E888();
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
        v10 = sub_10000E668();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B560(v10, 0);
        result = sub_10000E858();
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

uint64_t sub_10000B474(uint64_t result)
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

  result = sub_10000B5D4(result, v12, 1, v3);
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

void *sub_10000B560(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001480(&unk_100018BE0, &unk_10000F8D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B5D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001480(&unk_100018BE0, &unk_10000F8D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_10000B6C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000E998();
  sub_10000E648();
  v6 = sub_10000E9B8();

  return sub_10000B740(a1, a2, v6);
}

unint64_t sub_10000B740(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000E928())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10000B7F8(void *a1, int64_t a2, char a3)
{
  result = sub_10000B818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000B818(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001480(&unk_100018BC0, &qword_10000F8B8);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100001480(&qword_100018960, &unk_10000F8C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000B94C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001480(&qword_100018C08, &qword_10000F8F8);
  v38 = a2;
  result = sub_10000E908();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10000E998();
      sub_10000E648();
      result = sub_10000E9B8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000BBF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001480(&qword_100018BB0, &qword_10000F8A8);
  v36 = a2;
  result = sub_10000E908();
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
        sub_10000E2C4(v25, v37);
      }

      else
      {
        sub_1000094D0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10000E998();
      sub_10000E648();
      result = sub_10000E9B8();
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
      result = sub_10000E2C4(v37, (*(v8 + 56) + 32 * v16));
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

unint64_t sub_10000BEAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

_OWORD *sub_10000BEF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000E2C4(a4, (a5[7] + 32 * a1));
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

void *sub_10000BF60()
{
  v1 = v0;
  sub_100001480(&qword_100018C08, &qword_10000F8F8);
  v2 = *v0;
  v3 = sub_10000E8F8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_10000C0D0()
{
  v1 = v0;
  sub_100001480(&qword_100018BB0, &qword_10000F8A8);
  v2 = *v0;
  v3 = sub_10000E8F8();
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
        sub_1000094D0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000E2C4(v25, (*(v4 + 56) + v22));
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

unint64_t sub_10000C274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001480(&qword_100018BB0, &qword_10000F8A8);
    v3 = sub_10000E918();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E364(v4, &v13, &qword_100018988, &unk_10000F4A0);
      v5 = v13;
      v6 = v14;
      result = sub_10000B6C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000E2C4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000C3A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001480(&qword_100018C08, &qword_10000F8F8);
    v3 = sub_10000E918();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000B6C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void sub_10000C4A8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10000E8E8())
    {
LABEL_3:
      sub_100001480(&qword_100018990, &qword_10000F900);
      v3 = sub_10000E848();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10000E8E8();
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
      v8 = sub_10000E878();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10000E778(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10000E788();

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
      v25 = sub_10000E778(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000097C0(0, &qword_100018900, RMStoreDeclarationKey_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10000E788();

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

Swift::Int sub_10000C798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001480(&qword_100018C00, &qword_10000F8F0);
    v3 = sub_10000E848();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_10000E998();

      sub_10000E648();
      result = sub_10000E9B8();
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
          result = sub_10000E928();
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

id sub_10000C900()
{
  v0 = sub_10000E618();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E608();
  v5 = sub_10000E5F8();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9.super.isa = sub_10000E488().super.isa;
  sub_10000E350(v5, v7);
  result = [(objc_class *)v9.super.isa DMCSHA256Hash];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  result = [result DMCHexString];
  if (result)
  {
    v11 = result;
    v12 = sub_10000E5E8();

    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000CA9C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000CBB8;
  v2 = swift_continuation_init();
  v0[17] = sub_100001480(&qword_100018BB8, &qword_10000F8B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000A60C;
  v0[13] = &unk_100014D10;
  v0[14] = v2;
  [v1 certificateStatusWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000CBB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10000D3E4;
  }

  else
  {
    v3 = sub_10000CCC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void *sub_10000CCC8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  [v1 scope];
  v3 = [v1 personaIdentifier];
  v59 = v0;
  if (v3)
  {
    v4 = v3;
    sub_10000E5E8();
  }

  v5 = 0;
  v6 = v2 + 64;
  v7 = -1;
  v8 = -1 << *(v2 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v2 + 64);
  v10 = (63 - v8) >> 6;
  for (i = v2; ; v2 = i)
  {
    v11 = v5;
    if (!v9)
    {
      break;
    }

LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v5 << 6);
    v14 = (*(v2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v2 + 56) + 8 * v13);
    v18 = objc_opt_self();

    v19 = v17;
    v20 = sub_10000E5D8();

    v61 = [v18 newDeclarationKey:v20];

    sub_10000E538();
    v21 = v19;
    v22 = [v19 persistentRef];
    v23 = sub_10000E498();
    v25 = v24;

    v26 = sub_10000E528();
    sub_1000095D4(v23, v25);
    v27 = v26;
    v28 = [v61 keyWithoutServerToken];
    sub_10000E5E8();

    sub_10000C900();

    v29 = SecCertificateCopySubjectSummary(v27);
    if (v29)
    {
      v30 = v29;
      v54 = sub_10000E5E8();
    }

    else
    {
      v54 = 0;
    }

    [v21 isIdentity];
    v31 = SecCertificateCopyData(v27);
    v57 = v27;

    v62 = sub_10000E498();
    v58 = v32;

    v55 = objc_opt_self();
    v33 = sub_10000E5D8();

    v34 = sub_10000E5D8();

    isa = sub_10000E6F8().super.super.isa;
    v36 = sub_10000E488().super.isa;
    v56 = [v55 buildRequiredOnlyWithIdentifier:v33 subjectSummary:v34 isIdentity:isa data:v36];

    v37 = [v61 declarationIdentifier];
    if (!v37)
    {
      sub_10000E5E8();
      v37 = sub_10000E5D8();
    }

    [v56 setStatusDeclarationIdentifier:v37];

    v38 = v56;
    sub_10000E698();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v39 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10000E6D8();
    }

    sub_10000E6E8();

    sub_1000095D4(v62, v58);
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v5 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v5);
    ++v11;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v3 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v40 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_30:
  v52 = v3;
  v40 = sub_10000E8E8();
  v3 = v52;
  if (!v40)
  {
    goto LABEL_31;
  }

LABEL_20:
  v41 = v3;
  result = sub_10000B7F8(0, v40 & ~(v40 >> 63), 0);
  if (v40 < 0)
  {
    __break(1u);
    return result;
  }

  v43 = 0;
  v44 = v41;
  v45 = v41 & 0xC000000000000001;
  do
  {
    if (v45)
    {
      v46 = sub_10000E878();
    }

    else
    {
      v46 = v44[v43 + 4];
    }

    v47 = v46;
    v48 = [v46 serializeWithType:1];
    v49 = sub_10000E5B8();

    v51 = _swiftEmptyArrayStorage[2];
    v50 = _swiftEmptyArrayStorage[3];
    if (v51 >= v50 >> 1)
    {
      sub_10000B7F8((v50 > 1), v51 + 1, 1);
    }

    ++v43;
    _swiftEmptyArrayStorage[2] = v51 + 1;
    _swiftEmptyArrayStorage[v51 + 4] = v49;
    v44 = _swiftEmptyArrayStorage;
  }

  while (v40 != v43);
LABEL_31:

  v53 = *(v59 + 8);

  return v53(_swiftEmptyArrayStorage);
}

uint64_t sub_10000D3E4()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_10000D450(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return _swift_task_switch(sub_10000D470, 0, 0);
}

uint64_t sub_10000D470()
{
  v33 = v0;
  if (qword_100018838 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_10000E598();
  v0[26] = sub_100009434(v2, qword_100019128);

  v3 = sub_10000E578();
  v4 = sub_10000E758();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136446210;
    v8 = sub_10000E6C8();
    v10 = sub_10000B120(v8, v9, &v32);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Querying status for key paths:%{public}s", v6, 0xCu);
    sub_100009534(v7);
  }

  v11 = v0[24];
  v12 = sub_10000C274(_swiftEmptyArrayStorage);
  v13 = *(v11 + 16);
  v0[27] = v13;
  if (v13)
  {
    v14 = 0;
    v0[28] = RMModelStatusItemSecurityCertificateList;
    while (1)
    {
      v0[29] = v12;
      v0[30] = v14;
      v18 = v0[28];
      v19 = v0[24] + 16 * v14;
      v20 = *(v19 + 32);
      v0[31] = v20;
      v21 = *(v19 + 40);
      v0[32] = v21;
      if (v20 == sub_10000E5E8() && v21 == v22)
      {
        break;
      }

      v24 = sub_10000E928();

      if (v24)
      {
        goto LABEL_20;
      }

      v25 = v0[26];

      v26 = sub_10000E578();
      v27 = sub_10000E768();

      if (os_log_type_enabled(v26, v27))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136315138;
        v17 = sub_10000B120(v20, v21, &v32);

        *(v15 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v26, v27, "Ignoring unknown status key path:%s", v15, 0xCu);
        sub_100009534(v16);
      }

      else
      {
      }

      v14 = v0[30] + 1;
      if (v14 == v0[27])
      {
        goto LABEL_16;
      }
    }

LABEL_20:
    v30 = swift_task_alloc();
    v0[33] = v30;
    *v30 = v0;
    v30[1] = sub_10000D850;
    v31 = v0[25];

    return sub_10000CA7C(v31);
  }

  else
  {
LABEL_16:
    v28 = v0[1];

    return v28(v12);
  }
}

uint64_t sub_10000D850(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = sub_10000DD5C;
  }

  else
  {
    *(v4 + 280) = a1;
    v7 = sub_10000D978;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000D978()
{
  v40 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = sub_100001480(&qword_100018BA8, &qword_10000F8A0);
  *(v0 + 16) = v1;
  *(v0 + 40) = v5;
  sub_10000E2C4((v0 + 16), (v0 + 112));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 184) = v4;
  v7 = sub_10000B6C8(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_30:
    v38 = v7;
    sub_10000C0D0();
    v7 = v38;
    goto LABEL_8;
  }

  LOBYTE(v3) = v8;
  if (*(*(v0 + 232) + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  sub_10000BBF4(v12, isUniquelyReferenced_nonNull_native);
  v15 = *(v0 + 184);
  v7 = sub_10000B6C8(v14, v13);
  if ((v3 & 1) != (v16 & 1))
  {

    return sub_10000E948();
  }

LABEL_8:
  v18 = *(v0 + 184);
  v19 = *(v0 + 256);
  if (v3)
  {
    v20 = (*(v18 + 56) + 32 * v7);
    sub_100009534(v20);
    sub_10000E2C4((v0 + 112), v20);
  }

  else
  {
    sub_10000BEF4(v7, *(v0 + 248), *(v0 + 256), (v0 + 112), *(v0 + 184));
  }

  v21 = *(v0 + 240) + 1;
  if (v21 == *(v0 + 216))
  {
LABEL_12:
    v22 = *(v0 + 8);

    return v22(v18);
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v18;
      *(v0 + 240) = v21;
      v26 = *(v0 + 224);
      v27 = *(v0 + 192) + 16 * v21;
      v28 = *(v27 + 32);
      *(v0 + 248) = v28;
      v29 = *(v27 + 40);
      *(v0 + 256) = v29;
      if (v28 == sub_10000E5E8() && v29 == v30)
      {
        break;
      }

      v32 = sub_10000E928();

      if (v32)
      {
        goto LABEL_26;
      }

      v33 = *(v0 + 208);

      v34 = sub_10000E578();
      v35 = sub_10000E768();

      if (os_log_type_enabled(v34, v35))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v39 = v24;
        *v23 = 136315138;
        v25 = sub_10000B120(v28, v29, &v39);

        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v34, v35, "Ignoring unknown status key path:%s", v23, 0xCu);
        sub_100009534(v24);
      }

      else
      {
      }

      v21 = *(v0 + 240) + 1;
      if (v21 == *(v0 + 216))
      {
        goto LABEL_12;
      }
    }

LABEL_26:
    v36 = swift_task_alloc();
    *(v0 + 264) = v36;
    *v36 = v0;
    v36[1] = sub_10000D850;
    v37 = *(v0 + 200);

    return sub_10000CA7C(v37);
  }
}

uint64_t sub_10000DD5C()
{
  v51 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 208);
  swift_errorRetain();
  v3 = sub_10000E578();
  v4 = sub_10000E768();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 272);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not query certificate asset keys:%{public}@", v6, 0xCu);
    sub_10000E2D4(v7, &qword_100018BA0, &qword_10000F898);
  }

  v9 = *(v0 + 272);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = *(v0 + 232);

  swift_getErrorValue();
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  *(v0 + 72) = v13;
  v15 = sub_10000E260((v0 + 48));
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  sub_10000E2C4((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v12;
  v17 = sub_10000B6C8(v11, v10);
  v19 = *(v12 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v10) = v18;
  if (*(*(v0 + 232) + 24) >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v30 = v17;
    sub_10000C0D0();
    v17 = v30;
    v28 = *(v0 + 176);
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  sub_10000BBF4(v22, isUniquelyReferenced_nonNull_native);
  v25 = *(v0 + 176);
  v17 = sub_10000B6C8(v24, v23);
  if ((v10 & 1) != (v26 & 1))
  {

    return sub_10000E948();
  }

LABEL_10:
  v28 = *(v0 + 176);
  if (v10)
  {
LABEL_11:
    v29 = (v28[7] + 32 * v17);
    sub_100009534(v29);
    sub_10000E2C4((v0 + 80), v29);
    goto LABEL_15;
  }

LABEL_14:
  sub_10000BEF4(v17, *(v0 + 248), *(v0 + 256), (v0 + 80), v28);

LABEL_15:
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);

  v33 = *(v0 + 240) + 1;
  if (v33 == *(v0 + 216))
  {
LABEL_16:
    v34 = *(v0 + 8);

    return v34(v28);
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v28;
      *(v0 + 240) = v33;
      v38 = *(v0 + 224);
      v39 = *(v0 + 192) + 16 * v33;
      v40 = *(v39 + 32);
      *(v0 + 248) = v40;
      v41 = *(v39 + 40);
      *(v0 + 256) = v41;
      if (v40 == sub_10000E5E8() && v41 == v42)
      {
        break;
      }

      v44 = sub_10000E928();

      if (v44)
      {
        goto LABEL_30;
      }

      v45 = *(v0 + 208);

      v46 = sub_10000E578();
      v47 = sub_10000E768();

      if (os_log_type_enabled(v46, v47))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50 = v36;
        *v35 = 136315138;
        v37 = sub_10000B120(v40, v41, &v50);

        *(v35 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v46, v47, "Ignoring unknown status key path:%s", v35, 0xCu);
        sub_100009534(v36);
      }

      else
      {
      }

      v33 = *(v0 + 240) + 1;
      if (v33 == *(v0 + 216))
      {
        goto LABEL_16;
      }
    }

LABEL_30:
    v48 = swift_task_alloc();
    *(v0 + 264) = v48;
    *v48 = v0;
    v48[1] = sub_10000D850;
    v49 = *(v0 + 200);

    return sub_10000CA7C(v49);
  }
}

uint64_t *sub_10000E260(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_10000E2C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E2D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001480(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E350(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000095D4(a1, a2);
  }

  return a1;
}

uint64_t sub_10000E364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001480(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}