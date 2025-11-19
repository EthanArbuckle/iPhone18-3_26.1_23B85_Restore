int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_1000012FC(&qword_1000106C0, &qword_100008E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100008E20;
  *(v4 + 32) = type metadata accessor for InteractiveLegacyProfilesApplicator();
  sub_1000012FC(&qword_100010698, &qword_100008E30);
  isa = sub_10000849C().super.isa;

  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:0];

  return 0;
}

uint64_t sub_1000012FC(uint64_t *a1, uint64_t *a2)
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
  if (!qword_1000106A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000106A0);
    }
  }
}

uint64_t sub_10000139C()
{
  v0 = sub_10000840C();
  sub_100007CD8(v0, qword_100010940);
  sub_100001C54(v0, qword_100010940);
  type metadata accessor for InteractiveLegacyProfilesAdapter();
  sub_1000012FC(&qword_1000107C0, &qword_100009028);
  sub_10000844C();
  return sub_1000083FC();
}

void sub_10000143C(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, unint64_t *a4@<X8>)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v8 = 0x800000010000A0B0;
      sub_1000085DC(29);

      sub_100007EB8();
      v12._countAndFlagsBits = sub_1000083BC();
      sub_10000847C(v12);

      v9 = 0xD00000000000001BLL;
      v10 = 0x800000010000A0E0;
      v7 = 0xD00000000000002ELL;
    }

    else
    {
      v8 = 0x800000010000A050;
      sub_1000085DC(31);

      sub_100007EB8();
      v14._countAndFlagsBits = sub_1000083BC();
      sub_10000847C(v14);

      v9 = 0xD00000000000001DLL;
      v10 = 0x800000010000A090;
      v7 = 0xD000000000000030;
    }
  }

  else if (a3)
  {
    v8 = 0x800000010000A100;
    sub_1000085DC(29);

    v13._countAndFlagsBits = a1;
    v13._object = a2;
    sub_10000847C(v13);
    v9 = 0xD00000000000001BLL;
    v10 = 0x800000010000A140;
    v7 = 0xD000000000000031;
  }

  else
  {
    sub_1000085DC(18);

    v11._countAndFlagsBits = a1;
    v11._object = a2;
    sub_10000847C(v11);
    v7 = 0;
    v8 = 0;
    v9 = 0xD000000000000010;
    v10 = 0x800000010000A160;
  }

  *a4 = v7;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = v10;
  a4[4] = 0;
}

__n128 sub_100001680@<Q0>(uint64_t a1@<X8>)
{
  sub_10000143C(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000016D0(uint64_t a1)
{
  v2 = sub_100007EB8();

  return RMAdapterError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000170C(uint64_t a1)
{
  v2 = sub_100007EB8();

  return RMAdapterError.errorDescription.getter(a1, v2);
}

uint64_t sub_100001754(uint64_t a1)
{
  v2 = sub_100007E0C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100001790(uint64_t a1)
{
  v2 = sub_100007E0C();

  return Error<>._code.getter(a1, v2);
}

id InteractiveLegacyProfilesAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InteractiveLegacyProfilesAdapter.init()()
{
  swift_getObjectType();
  v0 = type metadata accessor for InteractiveLegacyProfilesAdapter();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_profilesController] = 0;
  *&v1[OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, "init");
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t InteractiveLegacyProfilesAdapter.configurationClasses()()
{
  sub_1000012FC(&qword_1000106C0, &qword_100008E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100008E20;
  *(v0 + 32) = sub_100007818(0, &qword_1000106C8, RMModelLegacyInteractiveProfileDeclaration_ptr);
  return v0;
}

uint64_t InteractiveLegacyProfilesAdapter.beginProcessingConfigurations(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100001A78, 0, 0);
}

uint64_t sub_100001A78()
{
  v14 = v0;
  if (qword_100010690 != -1)
  {
    swift_once();
  }

  v1 = sub_10000840C();
  sub_100001C54(v1, qword_100010940);
  v2 = sub_1000083EC();
  v3 = sub_1000084FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100003EFC(0xD000000000000023, 0x8000000100009D10, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_1000044A4(v5);
  }

  v6 = v0[3];
  v7 = OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_profilesController;
  if (!*(v6 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_profilesController))
  {
    v8 = [objc_opt_self() newProfileControllerWithPrefix:InteractiveLegacyProfileIdentifierPrefix scope:v0[2]];
    v9 = *(v6 + v7);
    *(v6 + v7) = v8;

    v6 = v0[3];
  }

  v10 = *(v6 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey);
  *(v6 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_100001C54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001E10(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_100007F48;

  return InteractiveLegacyProfilesAdapter.beginProcessingConfigurations(for:)(a1);
}

uint64_t InteractiveLegacyProfilesAdapter.endProcessingConfigurations(_:scope:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001F6C;

  return sub_1000051B0();
}

uint64_t sub_100001F6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000021EC(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1000022B0;

  return sub_1000051B0();
}

uint64_t sub_1000022B0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_10000837C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t InteractiveLegacyProfilesAdapter.allDeclarationKeys(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000024D4;

  return sub_100005360();
}

uint64_t sub_1000024D4(uint64_t a1)
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

void sub_1000025D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100007818(0, &qword_100010768, RMStoreDeclarationKey_ptr);
  sub_100007860();
  v3 = 0;
  v10[1] = sub_1000084EC();
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_1000044F0(v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
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
}

uint64_t sub_10000287C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_100002940;

  return sub_100005360();
}

uint64_t sub_100002940()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_10000837C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100007818(0, &qword_100010768, RMStoreDeclarationKey_ptr);
    sub_100007860();
    isa = sub_1000084DC().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t InteractiveLegacyProfilesAdapter.applyConfiguration(_:replace:scope:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007F50;

  return sub_100005EA8(a1, a2);
}

uint64_t sub_100002BA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100007BC8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000012FC(&qword_100010798, &qword_100009000);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = sub_10000843C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100002E14(void *a1, void *a2, int a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_100002F04;

  return sub_100005EA8(v9, a2);
}

uint64_t sub_100002F04()
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
    v9 = sub_10000837C();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_100007818(0, &qword_100010760, RMModelStatusReason_ptr);
    isa = sub_10000849C().super.isa;

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

uint64_t InteractiveLegacyProfilesAdapter.remove(_:scope:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007F18;

  return sub_1000056C8(a1);
}

uint64_t sub_100003184(uint64_t a1, void *a2)
{
  v3 = sub_100007BC8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000012FC(&qword_100010798, &qword_100009000);
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

uint64_t sub_1000033BC(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_100003494;

  return sub_1000056C8(v7);
}

uint64_t sub_100003494()
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
    v10 = sub_10000837C();

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

id InteractiveLegacyProfilesAdapter.declarationKey(forConfiguration:)(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_profilesController);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = [v3 store];
    v6 = [v3 declaration];
    v7 = [v4 declarationKeyForStore:v5 declaration:v6];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id InteractiveLegacyProfilesAdapter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveLegacyProfilesAdapter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003840(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100007F18;

  return v7();
}

uint64_t sub_100003928(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100001F6C;

  return v8();
}

uint64_t sub_100003A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000012FC(&qword_100010758, &qword_100008F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100007C0C(a3, v24 - v10, &qword_100010758, &qword_100008F18);
  v12 = sub_1000084CC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100007C74(v11, &qword_100010758, &qword_100008F18);
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

  sub_1000084BC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1000084AC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_10000845C() + 32;
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

    sub_100007C74(a3, &qword_100010758, &qword_100008F18);

    return v22;
  }

LABEL_8:
  sub_100007C74(a3, &qword_100010758, &qword_100008F18);
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

uint64_t sub_100003D0C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003E04;

  return v7(a1);
}

uint64_t sub_100003E04()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003EFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003FC8(v11, 0, 0, 1, a1, a2);
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
    sub_100007B10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000044A4(v11);
  return v7;
}

unint64_t sub_100003FC8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000040D4(a5, a6);
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
    result = sub_1000085EC();
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

char *sub_1000040D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004120(a1, a2);
  sub_100004250(&off_10000C568);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004120(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000433C(v5, 0);
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

  result = sub_1000085EC();
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
        v10 = sub_10000848C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000433C(v10, 0);
        result = sub_1000085CC();
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

uint64_t sub_100004250(uint64_t result)
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

  result = sub_1000043B0(result, v12, 1, v3);
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

void *sub_10000433C(uint64_t a1, uint64_t a2)
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

  sub_1000012FC(&qword_1000107B8, &qword_100009020);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000043B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000012FC(&qword_1000107B8, &qword_100009020);
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

uint64_t sub_1000044A4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000044F0(void *a1, void *a2)
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

    v9 = sub_10000856C();

    if (v9)
    {

      sub_100007818(0, &qword_100010768, RMStoreDeclarationKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_10000855C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100004728(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100004918(v21 + 1);
    }

    v19 = v8;
    sub_100004B40(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100007818(0, &qword_100010768, RMStoreDeclarationKey_ptr);
  v11 = sub_10000851C(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100004BC4(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000852C();

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

Swift::Int sub_100004728(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000012FC(&qword_1000107B0, &qword_100009018);
    v2 = sub_1000085AC();
    v15 = v2;
    sub_10000854C();
    if (sub_10000857C())
    {
      sub_100007818(0, &qword_100010768, RMStoreDeclarationKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100004918(v9 + 1);
        }

        v2 = v15;
        result = sub_10000851C(*(v15 + 40));
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

      while (sub_10000857C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100004918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000012FC(&qword_1000107B0, &qword_100009018);
  result = sub_10000859C();
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
      result = sub_10000851C(*(v6 + 40));
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

unint64_t sub_100004B40(uint64_t a1, uint64_t a2)
{
  sub_10000851C(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10000853C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100004BC4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100004918(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100004D34();
      goto LABEL_12;
    }

    sub_100004E84(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000851C(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100007818(0, &qword_100010768, RMStoreDeclarationKey_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000852C();

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
  sub_10000860C();
  __break(1u);
}

id sub_100004D34()
{
  v1 = v0;
  sub_1000012FC(&qword_1000107B0, &qword_100009018);
  v2 = *v0;
  v3 = sub_10000858C();
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

uint64_t sub_100004E84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000012FC(&qword_1000107B0, &qword_100009018);
  result = sub_10000859C();
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
      result = sub_10000851C(v17);
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

unint64_t sub_100005098(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000851C(*(v2 + 40));

  return sub_1000050DC(a1, v4);
}

unint64_t sub_1000050DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100007818(0, &qword_100010768, RMStoreDeclarationKey_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10000852C();

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

uint64_t sub_1000051D0()
{
  v11 = v0;
  if (qword_100010690 != -1)
  {
    swift_once();
  }

  v1 = sub_10000840C();
  sub_100001C54(v1, qword_100010940);
  v2 = sub_1000083EC();
  v3 = sub_1000084FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100003EFC(0xD000000000000025, 0x800000010000A000, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_1000044A4(v5);
  }

  v6 = *(v0 + 16);
  v7 = *(v6 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey);
  *(v6 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey) = 0;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100005380()
{
  v24 = v0;
  if (qword_100010690 != -1)
  {
    swift_once();
  }

  v1 = sub_10000840C();
  sub_100001C54(v1, qword_100010940);
  v2 = sub_1000083EC();
  v3 = sub_1000084FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100003EFC(0xD000000000000018, 0x8000000100009FE0, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_1000044A4(v5);
  }

  v6 = *(v0 + 16);
  v7 = *(v6 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_profilesController);
  if (v7)
  {
    v8 = [v7 installedProfileIdentifierByDeclarationKey];
    sub_100007818(0, &qword_100010768, RMStoreDeclarationKey_ptr);
    sub_100007860();
    v9 = sub_10000841C();

    v6 = *(v0 + 16);
  }

  else
  {
    v9 = 0;
  }

  v10 = OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey;
  v11 = *(v6 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey);
  *(v6 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey) = v9;

  v12 = *(v6 + v10);
  if (v12)
  {
    v13 = *(v6 + v10);
    swift_bridgeObjectRetain_n();
    sub_1000025D4(v12);
    v15 = v14;
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v16 = sub_1000083EC();
  v17 = sub_1000084FC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_100003EFC(0xD000000000000018, 0x8000000100009FE0, &v23);
    *(v18 + 12) = 2048;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = sub_10000855C();
    }

    else
    {
      v20 = *(v15 + 16);
    }

    *(v18 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v16, v17, "%s result: %ld", v18, 0x16u);
    sub_1000044A4(v19);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21(v15);
}

uint64_t sub_1000056C8(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1000056E8, 0, 0);
}

uint64_t sub_1000056E8()
{
  v31 = v0;
  if (qword_100010690 != -1)
  {
    swift_once();
  }

  v1 = sub_10000840C();
  *(v0 + 160) = sub_100001C54(v1, qword_100010940);
  v2 = sub_1000083EC();
  v3 = sub_1000084FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100003EFC(0xD000000000000010, 0x8000000100009F30, &v30);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_1000044A4(v5);
  }

  v6 = *(*(v0 + 152) + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey);
  if (!v6 || !*(v6 + 16))
  {
    goto LABEL_13;
  }

  v7 = *(v0 + 144);

  v8 = sub_100005098(v7);
  if ((v9 & 1) == 0)
  {

LABEL_13:
    v18 = *(v0 + 144);
    v19 = sub_1000083EC();
    v20 = sub_1000084FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 144);
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_100003EFC(0xD000000000000010, 0x8000000100009F30, &v30);
      *(v22 + 12) = 2080;
      v23 = [v21 key];
      v24 = sub_10000843C();
      v26 = v25;

      v27 = sub_100003EFC(v24, v26, &v30);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: no profile to remove: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_16;
  }

  v10 = *(v0 + 152);
  v11 = (*(v6 + 56) + 16 * v8);
  v12 = *v11;
  v13 = v11[1];

  v14 = *(v10 + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_profilesController);
  *(v0 + 168) = v14;
  if (v14)
  {
    v15 = v14;
    v16 = sub_10000842C();
    *(v0 + 176) = v16;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100005B40;
    v17 = swift_continuation_init();
    *(v0 + 136) = sub_1000012FC(&qword_100010780, &qword_100008FF0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100003184;
    *(v0 + 104) = &unk_10000C858;
    *(v0 + 112) = v17;
    [v15 uninstallProfileWithIdentifier:v16 store:0 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

LABEL_16:
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100005B40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100005CB8;
  }

  else
  {
    v3 = sub_100005C50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005C50()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100005CB8()
{
  v17 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  swift_willThrow();

  swift_errorRetain();
  v5 = sub_1000083EC();
  v6 = sub_10000850C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100003EFC(0xD000000000000010, 0x8000000100009F30, &v16);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: failed to uninstall profile: %@", v8, 0x16u);
    sub_100007C74(v9, &qword_100010790, &qword_100008FF8);

    sub_1000044A4(v10);
  }

  v12 = v0[23];
  sub_100007B74();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 3;
  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_100005EA8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_1000083AC();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = *(*(sub_1000012FC(&qword_1000107A0, &qword_100009008) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_100005FB0, 0, 0);
}

uint64_t sub_100005FB0()
{
  v112 = v0;
  if (qword_100010690 != -1)
  {
    swift_once();
  }

  v1 = sub_10000840C();
  *(v0 + 224) = sub_100001C54(v1, qword_100010940);
  v2 = sub_1000083EC();
  v3 = sub_1000084FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v110 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100003EFC(0xD000000000000024, 0x8000000100009F90, &v110);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_1000044A4(v5);
  }

  v6 = [*(v0 + 160) declaration];
  *(v0 + 232) = v6;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    v28 = *(v0 + 160);

    v29 = v28;
    v30 = sub_1000083EC();
    v31 = sub_1000084FC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 160);
      v33 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_100003EFC(0xD000000000000024, 0x8000000100009F90, &v110);
      *(v33 + 12) = 2080;
      v34 = [v32 declaration];
      v35 = [v34 declarationType];

      v36 = sub_10000843C();
      v38 = v37;

      v39 = sub_100003EFC(v36, v38, &v110);

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: invalid declaration type: %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    v40 = *(v0 + 160);
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_1000085DC(28);

    v110 = 0xD00000000000001ALL;
    v111 = 0x8000000100009F70;
    v41 = [v40 declaration];
    v42 = [v41 declarationType];

    v43 = sub_10000843C();
    v45 = v44;

    v114._countAndFlagsBits = v43;
    v114._object = v45;
    sub_10000847C(v114);

    v46 = v110;
    v47 = v111;
    sub_100007B74();
    swift_allocError();
    *v48 = v46;
    *(v48 + 8) = v47;
    *(v48 + 16) = 0;
    swift_willThrow();
    goto LABEL_27;
  }

  v8 = v7;
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = v6;
  v14 = [v8 payloadProfileURL];
  sub_10000843C();

  sub_10000839C();

  sub_100007C0C(v9, v10, &qword_1000107A0, &qword_100009008);
  v15 = (*(v11 + 48))(v10, 1, v12);
  v16 = *(v0 + 208);
  if (v15 == 1)
  {
    sub_100007C74(*(v0 + 208), &qword_1000107A0, &qword_100009008);
    v17 = v13;
    v18 = sub_1000083EC();
    v19 = sub_1000084FC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100003EFC(0xD000000000000024, 0x8000000100009F90, &v110);
      *(v20 + 12) = 2082;
      v21 = v8;
      v22 = [v8 payloadProfileURL];
      v23 = sub_10000843C();
      v25 = v24;

      v26 = sub_100003EFC(v23, v25, &v110);

      *(v20 + 14) = v26;
      v27 = &InteractiveLegacyProfilesAdapter;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: invalid URL: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v21 = v8;
      v27 = &InteractiveLegacyProfilesAdapter;
    }

    v72 = *(v0 + 216);
    v73 = [v21 v27[103].count];
    v74 = sub_10000843C();
    v76 = v75;

    sub_100007B74();
    swift_allocError();
    *v77 = v74;
    *(v77 + 8) = v76;
    *(v77 + 16) = 1;
    swift_willThrow();

LABEL_26:
    sub_100007C74(v72, &qword_1000107A0, &qword_100009008);
LABEL_27:
    v98 = *(v0 + 208);
    v97 = *(v0 + 216);
    v99 = *(v0 + 200);

    v100 = *(v0 + 8);

    return v100();
  }

  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 208), *(v0 + 184));
  v49 = objc_opt_self();
  sub_10000838C(v50);
  v52 = v51;
  LODWORD(v49) = [v49 isValidURL:v51];

  if (!v49)
  {
    v78 = v13;
    v79 = sub_1000083EC();
    v80 = sub_1000084FC();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110 = v109;
      *v81 = 136315394;
      *(v81 + 4) = sub_100003EFC(0xD000000000000024, 0x8000000100009F90, &v110);
      *(v81 + 12) = 2082;
      v82 = v8;
      v83 = [v8 payloadProfileURL];
      v84 = sub_10000843C();
      v85 = v78;
      v87 = v86;

      v88 = sub_100003EFC(v84, v87, &v110);
      v78 = v85;

      *(v81 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v79, v80, "%s: invalid URL scheme: %{public}s", v81, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v82 = v8;
    }

    v72 = *(v0 + 216);
    v90 = *(v0 + 192);
    v89 = *(v0 + 200);
    v91 = *(v0 + 184);
    v92 = [v82 payloadProfileURL];
    v93 = sub_10000843C();
    v95 = v94;

    sub_100007B74();
    swift_allocError();
    *v96 = v93;
    *(v96 + 8) = v95;
    *(v96 + 16) = 1;
    swift_willThrow();

    (*(v90 + 8))(v89, v91);
    goto LABEL_26;
  }

  v53 = *(v0 + 168);
  if (v53)
  {
    v54 = v13;
    v55 = v53;
    v56 = sub_1000083EC();
    v57 = sub_1000084FC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v58 = 136315394;
      *(v58 + 4) = sub_100003EFC(0xD000000000000024, 0x8000000100009F90, &v110);
      *(v58 + 12) = 2082;
      v59 = [v8 declarationIdentifier];
      v60 = sub_10000843C();
      v62 = v61;

      v63 = sub_100003EFC(v60, v62, &v110);

      *(v58 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "%s: updating interactive profile: %{public}s", v58, 0x16u);
      swift_arrayDestroy();
    }

    v64 = *(*(v0 + 176) + OBJC_IVAR____TtC35InteractiveLegacyProfilesSubscriber32InteractiveLegacyProfilesAdapter_profilesController);
    *(v0 + 240) = v64;
    if (v64)
    {
      v65 = *(v0 + 200);
      v66 = *(v0 + 160);
      v67 = v64;
      sub_10000838C(v68);
      v70 = v69;
      *(v0 + 248) = v69;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_100006BC0;
      v71 = swift_continuation_init();
      *(v0 + 136) = sub_1000012FC(&qword_1000107A8, &qword_100009010);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100002BA0;
      *(v0 + 104) = &unk_10000C880;
      *(v0 + 112) = v71;
      [v67 downloadAndInstallProfileConfiguration:v66 fromURL:v70 completionHandler:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  v101 = *(v0 + 232);
  v102 = *(v0 + 208);
  v103 = *(v0 + 216);
  v105 = *(v0 + 192);
  v104 = *(v0 + 200);
  v106 = *(v0 + 184);

  (*(v105 + 8))(v104, v106);
  sub_100007C74(v103, &qword_1000107A0, &qword_100009008);

  v107 = *(v0 + 8);

  return v107(&_swiftEmptyArrayStorage);
}

uint64_t sub_100006BC0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_100006DC0;
  }

  else
  {
    v3 = sub_100006CD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006CD0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  v3 = *(v0 + 152);

  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);

  (*(v8 + 8))(v7, v9);
  sub_100007C74(v6, &qword_1000107A0, &qword_100009008);

  v10 = *(v0 + 8);

  return v10(&_swiftEmptyArrayStorage);
}

uint64_t sub_100006DC0()
{
  v17 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[28];
  swift_willThrow();

  swift_errorRetain();
  v5 = sub_1000083EC();
  v6 = sub_10000850C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100003EFC(0xD000000000000024, 0x8000000100009F90, &v16);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: failed to download and install profile: %@", v8, 0x16u);
    sub_100007C74(v9, &qword_100010790, &qword_100008FF8);

    sub_1000044A4(v10);
  }

  v12 = v0[21];
  v13 = swift_task_alloc();
  v0[33] = v13;
  *v13 = v0;
  v13[1] = sub_100006FD0;
  v14 = v0[22];

  return sub_1000056C8(v12);
}

uint64_t sub_100006FD0()
{
  v2 = *(*v1 + 264);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100007F10;
  }

  else
  {
    v3 = sub_1000070E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000070E8()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[21];
  sub_100007B74();
  swift_allocError();
  *v8 = v1;
  *(v8 + 8) = 0;
  *(v8 + 16) = 2;
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  sub_100007C74(v3, &qword_1000107A0, &qword_100009008);
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100007208()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007250()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100007F18;

  return sub_1000033BC(v2, v3, v5, v4);
}

uint64_t sub_100007314()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100007F18;

  return sub_100003840(v2, v3, v5);
}

uint64_t sub_1000073D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007F18;

  return sub_100003928(a1, v4, v5, v7);
}

uint64_t sub_1000074A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000074D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007F18;

  return sub_100003D0C(a1, v5);
}

uint64_t sub_100007590(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001F6C;

  return sub_100003D0C(a1, v5);
}

uint64_t sub_100007648()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007698()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100007F18;

  return sub_100002E14(v2, v3, v4, v5, v6);
}

uint64_t sub_100007764()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100001F6C;

  return sub_10000287C(v2, v3, v4);
}

uint64_t sub_100007818(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_100007860()
{
  result = qword_100010770;
  if (!qword_100010770)
  {
    sub_100007818(255, &qword_100010768, RMStoreDeclarationKey_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010770);
  }

  return result;
}

uint64_t sub_1000078C8()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007908()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100007F18;

  return sub_1000021EC(v2, v3, v4, v5);
}

uint64_t sub_1000079CC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007A0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007F18;

  return sub_100001E10(v2, v3, v4);
}

uint64_t sub_100007AC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007B10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100007B74()
{
  result = qword_100010788;
  if (!qword_100010788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010788);
  }

  return result;
}

void *sub_100007BC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007C0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000012FC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007C74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000012FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100007CD8(uint64_t a1, uint64_t *a2)
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

__n128 sub_100007D48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007D5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100007DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_100007E0C()
{
  result = qword_1000107C8;
  if (!qword_1000107C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107C8);
  }

  return result;
}

unint64_t sub_100007E64()
{
  result = qword_1000107D0;
  if (!qword_1000107D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107D0);
  }

  return result;
}

unint64_t sub_100007EB8()
{
  result = qword_1000107D8;
  if (!qword_1000107D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107D8);
  }

  return result;
}

id sub_100008114()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100008170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000012FC(&unk_100010930, &qword_100009220);
    v3 = sub_1000085BC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_10000865C();

      sub_10000846C();
      result = sub_10000866C();
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
          result = sub_1000085FC();
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