uint64_t type metadata accessor for DefaultSpamFilterSettingsProvider()
{
  result = qword_10D80;
  if (!qword_10D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DefaultSpamFilterSettingsProvider.localizedTitle.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_17D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t DefaultSpamFilterSettingsProvider.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_821C() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
    sub_7DDC();
  }
}

uint64_t sub_1A04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

void (*DefaultSpamFilterSettingsProvider.localizedTitle.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13CallFiltering33DefaultSpamFilterSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  *v4 = v1;
  swift_getKeyPath();
  sub_7E0C();

  swift_beginAccess();
  return sub_1BAC;
}

uint64_t variable initialization expression of DefaultSpamFilterSettingsProvider.localizedDetail()
{
  type metadata accessor for DefaultSpamFilterSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._object = 0x8000000000008820;
  v7.value._object = 0x8000000000008800;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7.value._countAndFlagsBits = 0xD000000000000015;
  v2.super.isa = v1;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v3 = sub_7DBC(v6, v7, v2, v8, v5);

  return v3;
}

uint64_t DefaultSpamFilterSettingsProvider.localizedDetail.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_1D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1E00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return DefaultSpamFilterSettingsProvider.localizedDetail.setter(v2, v3);
}

uint64_t DefaultSpamFilterSettingsProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (sub_821C())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DDC();
}

uint64_t sub_1FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void (*DefaultSpamFilterSettingsProvider.localizedDetail.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13CallFiltering33DefaultSpamFilterSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  *v4 = v1;
  swift_getKeyPath();
  sub_7E0C();

  swift_beginAccess();
  return sub_2178;
}

uint64_t _s13CallFiltering33DefaultSpamFilterSettingsProviderC14localizedTitleSSvpfi_0()
{
  type metadata accessor for DefaultSpamFilterSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000019;
  v6._object = 0x80000000000087E0;
  v7.value._object = 0x8000000000008800;
  v7.value._countAndFlagsBits = 0xD000000000000015;
  v2.super.isa = v1;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v3 = sub_7DBC(v6, v7, v2, v8, v5);

  return v3;
}

uint64_t DefaultSpamFilterSettingsProvider.localizedNavigationTitle.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  swift_beginAccess();
  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_2310@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_23E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t DefaultSpamFilterSettingsProvider.localizedNavigationTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (v6 = *(v2 + 56), (sub_821C() & 1) != 0))
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
    sub_7DDC();
  }
}

uint64_t sub_2584()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

void (*DefaultSpamFilterSettingsProvider.localizedNavigationTitle.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13CallFiltering33DefaultSpamFilterSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  *v4 = v1;
  swift_getKeyPath();
  sub_7E0C();

  swift_beginAccess();
  return sub_272C;
}

void sub_2738(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_7DFC();

  free(v1);
}

uint64_t sub_27BC()
{
  swift_getKeyPath();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  v1 = *(v0 + 64);
}

uint64_t sub_2860@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  *a2 = *(v3 + 64);
}

uint64_t sub_290C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2938(v4);
}

uint64_t sub_2938(uint64_t a1)
{
  if (*(v1 + 64) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
    sub_7DDC();
  }
}

uint64_t DefaultSpamFilterSettingsProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DefaultSpamFilterSettingsProvider.init()();
  return v3;
}

void *DefaultSpamFilterSettingsProvider.init()()
{
  v1 = v0;
  v28 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass:ObjCClassFromMetadata];
  v25._countAndFlagsBits = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD000000000000019;
  v30._object = 0x80000000000087E0;
  v33.value._object = 0x8000000000008800;
  v33.value._countAndFlagsBits = 0xD000000000000015;
  v5.super.isa = v4;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v6 = sub_7DBC(v30, v33, v5, v36, v25);
  v8 = v7;

  v1[2] = v6;
  v1[3] = v8;
  v9 = [v3 bundleForClass:ObjCClassFromMetadata];
  v26._countAndFlagsBits = 0xE000000000000000;
  v31._object = 0x8000000000008820;
  v34.value._object = 0x8000000000008800;
  v31._countAndFlagsBits = 0xD000000000000015;
  v34.value._countAndFlagsBits = 0xD000000000000015;
  v10.super.isa = v9;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v11 = sub_7DBC(v31, v34, v10, v37, v26);
  v13 = v12;

  v1[4] = v11;
  v1[5] = v13;
  v14 = [v3 bundleForClass:ObjCClassFromMetadata];
  v27._countAndFlagsBits = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000019;
  v32._object = 0x80000000000087E0;
  v35.value._object = 0x8000000000008800;
  v35.value._countAndFlagsBits = 0xD000000000000015;
  v15.super.isa = v14;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v16 = sub_7DBC(v32, v35, v15, v38, v27);
  v18 = v17;

  v1[6] = v16;
  v1[7] = v18;
  _s13CallFiltering33DefaultSpamFilterSettingsProviderC22__observationRegistrar33_9EFB2AA7F63DEAD19B732EE4913A517011Observation0qI0Vvpfi_0();
  type metadata accessor for ExtensionObserver();
  sub_3BD0(v29);
  v1[8] = sub_3C3C(v29);
  swift_getKeyPath();
  v29[0] = v1;
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  v19 = v1[8];
  v29[3] = v28;
  v29[4] = &off_C778;
  v29[0] = v1;
  v20 = *(*v19 + 288);

  v20(v29);

  swift_getKeyPath();
  v29[0] = v1;
  sub_7DEC();

  v21 = *(*v1[8] + 312);

  v21(v22);

  v23 = [objc_opt_self() defaultCenter];
  [v23 addObserver:v1 selector:"updateExtensions" name:UIApplicationWillEnterForegroundNotification object:0];

  return v1;
}

void *DefaultSpamFilterSettingsProvider.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveEveryObserver(v2, v0);

  v3 = v0[3];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[8];

  v7 = OBJC_IVAR____TtC13CallFiltering33DefaultSpamFilterSettingsProvider___observationRegistrar;
  v8 = sub_7E2C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t DefaultSpamFilterSettingsProvider.__deallocating_deinit()
{
  DefaultSpamFilterSettingsProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_3084(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (v5 && (*(v2 + 32) == a1 ? (v6 = v5 == a2) : (v6 = 0), v6 || (v7 = *(v2 + 40), (sub_821C() & 1) != 0)))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
    sub_7DDC();
  }
}

uint64_t sub_3260()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_3324()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_35AC(&qword_10660, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_7DEC();

  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

void *sub_3400@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  result = DefaultSpamFilterSettingsProvider.init()();
  *a1 = v5;
  return result;
}

uint64_t sub_34B0()
{
  result = sub_7E2C();
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

uint64_t sub_35AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_35F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
}

uint64_t sub_364C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_3700;
  v6[3] = &unk_C858;
  v4 = _Block_copy(v6);

  [v3 extensionsWithCompletionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_3700(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_37AC();
    v4 = sub_812C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_3794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_37AC()
{
  result = qword_10738;
  if (!qword_10738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10738);
  }

  return result;
}

uint64_t sub_381C()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_3854(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_38F0()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t sub_3928(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t sub_3A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A78(&qword_10740, &qword_9420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3A78(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_3AC0(uint64_t a1)
{
  swift_beginAccess();
  sub_3B10(a1, v1 + 104);
  return swift_endAccess();
}

uint64_t sub_3B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A78(&qword_10740, &qword_9420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BD0@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(CXCallDirectoryExtensionManager) init];
  result = sub_5408(0, &qword_10748, CXCallDirectoryExtensionManager_ptr);
  a1[3] = result;
  a1[4] = &off_C848;
  *a1 = v2;
  return result;
}

uint64_t sub_3C3C(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_3C7C(a1);
  return v2;
}

uint64_t sub_3C7C(uint64_t *a1)
{
  *(v1 + 16) = &_swiftEmptySetSingleton;
  type metadata accessor for ExtensionObserver();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14._countAndFlagsBits = 0xE000000000000000;
  v15._object = 0x8000000000008820;
  v16.value._object = 0x8000000000008800;
  v15._countAndFlagsBits = 0xD000000000000015;
  v16.value._countAndFlagsBits = 0xD000000000000015;
  v5.super.isa = v4;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v6 = sub_7DBC(v15, v16, v5, v17, v14);
  v8 = v7;

  *(v1 + 72) = v6;
  *(v1 + 80) = v8;
  *(v1 + 88) = &_swiftEmptySetSingleton;
  *(v1 + 96) = &_swiftEmptySetSingleton;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
  sub_5D68(a1, v1 + 24);
  *(v1 + 64) = [objc_allocWithZone(sub_7E7C()) init];
  sub_811C();
  v9 = sub_80EC();

  v10 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v10, v1, sub_5E20, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v11 = sub_818C();
  v12 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v12, v1, sub_4368, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_43F4(a1);
  return v1;
}

uint64_t sub_3E54()
{
  v1 = sub_453C();
  (*(*v0 + 344))(v1);
  v2 = *(*v0 + 320);

  return v2();
}

uint64_t sub_3EDC()
{
  v0 = sub_80BC();
  v13 = *(v0 - 8);
  v1 = *(v13 + 64);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_80DC();
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5408(0, &qword_10750, OS_dispatch_queue_ptr);
  v8 = sub_816C();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_4A44;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4324;
  aBlock[3] = &unk_C8A8;
  v10 = _Block_copy(aBlock);

  sub_80CC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_4DBC();
  sub_3A78(&qword_10760, &qword_9428);
  sub_53C0(&qword_10768, &qword_10760, &qword_9428);
  sub_81AC();
  sub_817C();
  _Block_release(v10);

  (*(v13 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v12);
}

uint64_t sub_41A4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_5450(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_42A8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_81BC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_5DCC(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_4324(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_436C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for ExtensionObserver();
    swift_unknownObjectRetain();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      (*(*v3 + 312))();
    }

    _swift_unknownObjectRelease(a2);
  }
}

uint64_t sub_43F4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4440()
{
  v1 = swift_allocObject();
  *(v1 + 16) = &_swiftEmptySetSingleton;
  sub_5D68(v0 + 24, v7);
  v2 = v8;
  v3 = v9;
  sub_4E94(v7, v8);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  v5 = *(v3 + 8);

  v5(sub_4F18, v4, v2, v3);

  sub_43F4(v7);
}

uint64_t sub_453C()
{
  v1 = v0;
  v39 = &_swiftEmptySetSingleton;
  v2 = *(v0 + 64);
  v3 = sub_7E6C();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  for (i = &unk_9000; v4; i = &unk_9000)
  {
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v36 = v1;
    v37 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = &DefaultSpamFilterSettingsProvider;
    while (1)
    {
      if (v7)
      {
        v9 = sub_81EC();
      }

      else
      {
        if (v6 >= *(v37 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v3 + 8 * v6 + 32);
      }

      v10 = v9;
      v1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v9 v8[15].ivar_lyt])
      {
        v11 = [v10 identifier];
        sub_80FC();

        v12 = sub_80EC();

        v13 = objc_opt_self();
        v38 = 0;
        v14 = [v13 extensionWithIdentifier:v12 error:&v38];

        if (!v14)
        {
          v25 = v38;

          sub_7DCC();

          swift_willThrow();
          sub_813C();
          sub_3A78(&qword_10918, &qword_94A8);
          v26 = swift_allocObject();
          i = &unk_9000;
          *(v26 + 16) = xmmword_9410;
          swift_getErrorValue();
          v27 = sub_823C();
          v29 = v28;
          *(v26 + 56) = &type metadata for String;
          *(v26 + 64) = sub_55A0();
          *(v26 + 32) = v27;
          *(v26 + 40) = v29;
          sub_5408(0, &qword_10930, OS_os_log_ptr);
          v30 = sub_819C();
          sub_7E8C();

          v1 = v36;
          goto LABEL_21;
        }

        v15 = v3;
        v16 = v4;
        v17 = v7;
        v18 = v8;
        v19 = v38;
        v20 = [v14 localizedContainingAppName];
        if (!v20)
        {
          __break(1u);
        }

        v21 = v20;
        v22 = sub_80FC();
        v24 = v23;

        sub_5450(&v38, v22, v24);

        v8 = v18;
        v7 = v17;
        v4 = v16;
        v3 = v15;
        v1 = v6 + 1;
      }

      else
      {
      }

      ++v6;
      if (v1 == v4)
      {

        v1 = v36;
        i = &unk_9000;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v4 = sub_81FC();
  }

LABEL_21:
  sub_3A78(&qword_10918, &qword_94A8);
  v31 = swift_allocObject();
  *(v31 + 16) = i[65];
  v32 = v39;
  *(v31 + 56) = sub_3A78(&qword_10920, &qword_94B0);
  *(v31 + 64) = sub_53C0(&qword_10928, &qword_10920, &qword_94B0);
  *(v31 + 32) = v32;
  sub_5408(0, &qword_10930, OS_os_log_ptr);

  v33 = sub_819C();
  sub_815C();
  sub_7E8C();

  v34 = (*(*v1 + 264))(v32);
  return (*(*v1 + 320))(v34);
}

uint64_t sub_4A0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4A44()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 232))();
    v3 = (*(*v1 + 256))();
    v4 = sub_41A4(v3, v2);
    v5 = v1[2];
    v1[2] = v4;

    v6 = *(v4 + 16);

    if (v6)
    {
      v7 = v1[2];
      if (*(v7 + 16) == 1)
      {
        v8 = v1[2];

        v10 = sub_42A8(v9);
        v12 = v11;

        if (!v12)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        v27[0] = *(v7 + 16);
        v10 = sub_820C();
        v12 = v17;
      }
    }

    else
    {
      type metadata accessor for ExtensionObserver();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v24[0]._countAndFlagsBits = 0xE000000000000000;
      v28._object = 0x8000000000008820;
      v29.value._object = 0x8000000000008800;
      v28._countAndFlagsBits = 0xD000000000000015;
      v29.value._countAndFlagsBits = 0xD000000000000015;
      v15.super.isa = v14;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v10 = sub_7DBC(v28, v29, v15, v30, v24[0]);
      v12 = v16;
    }

    v18 = v1[10];
    v1[9] = v10;
    v1[10] = v12;

    sub_3A78(&qword_10918, &qword_94A8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_9410;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_55A0();
    *(v19 + 32) = v10;
    *(v19 + 40) = v12;
    sub_5408(0, &qword_10930, OS_os_log_ptr);
    v20 = sub_819C();
    sub_815C();
    sub_7E8C();

    (*(*v1 + 280))(v27, v21);
    if (v27[3])
    {
      sub_5D68(v27, &v24[0]._object);
      sub_52F0(v27);
      v22 = v25;
      v23 = v26;
      sub_4E94(&v24[0]._object, v25);
      (*(v23 + 8))(v10, v12, v22, v23);

      return sub_43F4(&v24[0]._object);
    }

    else
    {

      return sub_52F0(v27);
    }
  }

  return result;
}

uint64_t sub_4DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4DBC()
{
  result = qword_10758;
  if (!qword_10758)
  {
    sub_80BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10758);
  }

  return result;
}

uint64_t sub_4E14(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4E5C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_4E94(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_4ED8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_4F18(unint64_t a1, uint64_t a2)
{
  v28 = *(v2 + 16);
  v27 = *(v2 + 24);
  if (a2)
  {
    swift_errorRetain();
    sub_813C();
    sub_3A78(&qword_10918, &qword_94A8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_9410;
    swift_getErrorValue();
    v5 = sub_823C();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_55A0();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_5408(0, &qword_10930, OS_os_log_ptr);
    v8 = sub_819C();
    sub_7E8C();
  }

  if (!a1)
  {
    goto LABEL_20;
  }

  if (a1 >> 62)
  {
LABEL_19:
    v9 = sub_81FC();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_20:
    sub_3A78(&qword_10918, &qword_94A8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_9410;
    swift_beginAccess();
    v21 = *(v28 + 16);
    *(v20 + 56) = sub_3A78(&qword_10920, &qword_94B0);
    *(v20 + 64) = sub_53C0(&qword_10928, &qword_10920, &qword_94B0);
    *(v20 + 32) = v21;
    sub_5408(0, &qword_10930, OS_os_log_ptr);

    v22 = sub_819C();
    sub_815C();
    sub_7E8C();

    swift_beginAccess();
    v23 = *(v28 + 16);
    v24 = *(*v27 + 240);

    v26 = v24(v25);
    return (*(*v27 + 320))(v26);
  }

  v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_6:
  v10 = 4;
  while (1)
  {
    v11 = v10 - 4;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = sub_81EC();
    }

    else
    {
      if (v11 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      v12 = *(a1 + 8 * v10);
    }

    v13 = v12;
    v14 = v10 - 3;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v12 state] == &dword_4)
    {
      break;
    }

LABEL_8:
    ++v10;
    if (v14 == v9)
    {
      goto LABEL_20;
    }
  }

  result = [v13 localizedContainingAppName];
  if (result)
  {
    v16 = result;
    v17 = sub_80FC();
    v19 = v18;

    swift_beginAccess();
    sub_5450(&v29, v17, v19);
    swift_endAccess();

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_52F0(uint64_t a1)
{
  v2 = sub_3A78(&qword_10740, &qword_9420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5358()
{
  v1 = *(v0 + 16);

  sub_43F4((v0 + 24));

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  sub_52F0(v0 + 104);

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_53C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4E14(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5408(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_5450(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_824C();
  sub_810C();
  v9 = sub_825C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_821C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_5854(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_55A0()
{
  result = qword_10938;
  if (!qword_10938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10938);
  }

  return result;
}

uint64_t sub_55F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3A78(&unk_10940, qword_94B8);
  result = sub_81DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_824C();
      sub_810C();
      result = sub_825C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_5854(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_55F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_59D4();
      goto LABEL_16;
    }

    sub_5B30(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_824C();
  sub_810C();
  result = sub_825C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_821C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_822C();
  __break(1u);
  return result;
}

void *sub_59D4()
{
  v1 = v0;
  sub_3A78(&unk_10940, qword_94B8);
  v2 = *v0;
  v3 = sub_81CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_5B30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_3A78(&unk_10940, qword_94B8);
  result = sub_81DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_824C();

      sub_810C();
      result = sub_825C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_5D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5DCC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_5E28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(sub_3A78(&qword_10950, &qword_94D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = (&v15 - v5);
  sub_7D50(v2, &v15 - v5, &qword_10950, &qword_94D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_6A84(v6, a1, &qword_10958, &qword_94D8);
  }

  v8 = *v6;
  sub_814C();
  v9 = sub_7FBC();
  sub_7E9C();

  v10 = sub_7F1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7F0C();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_6024(uint64_t a1)
{
  v2 = (*(*(sub_3A78(&qword_10958, &qword_94D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_7D50(a1, &v5 - v3, &qword_10958, &qword_94D8);
  return sub_7EFC();
}

uint64_t sub_60EC(void *a1)
{
  v2 = v1;
  v4 = sub_3A78(&qword_10970, &qword_9520);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v29 - v7;
  v9 = (*(*(sub_3A78(&qword_10958, &qword_94D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v29 - v10;
  v12 = (*(*(sub_3A78(&qword_10950, &qword_94D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = (&v29 - v13);
  sub_7D50(v2, &v29 - v13, &qword_10950, &qword_94D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_6A84(v14, v11, &qword_10958, &qword_94D8);
  }

  else
  {
    v15 = *v14;
    sub_814C();
    v16 = sub_7FBC();
    sub_7E9C();

    v17 = sub_7F1C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    __chkstk_darwin();
    v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_7F0C();
    swift_getAtKeyPath();

    (*(v18 + 8))(v21, v17);
  }

  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    return sub_7CF0(v11, &qword_10958, &qword_94D8);
  }

  sub_6A84(v11, v8, &qword_10970, &qword_9520);
  v23 = sub_80AC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_807C();
  v28 = sub_809C();
  (*(v24 + 8))(v27, v23);
  [a1 setEditing:v28 & 1 animated:1];
  return sub_7CF0(v8, &qword_10970, &qword_9520);
}

uint64_t sub_64E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV13CallFiltering35DefaultSpamFilterSettingsController11Coordinator_parent;
  swift_beginAccess();
  return sub_6538(v1 + v3, a1);
}

uint64_t sub_6538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultSpamFilterSettingsController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_659C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV13CallFiltering35DefaultSpamFilterSettingsController11Coordinator_parent;
  swift_beginAccess();
  sub_65FC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_65FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultSpamFilterSettingsController(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_66C0(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_6538(a1, v3 + OBJC_IVAR____TtCV13CallFiltering35DefaultSpamFilterSettingsController11Coordinator_parent);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_6734(a1);
  return v4;
}

uint64_t sub_6734(uint64_t a1)
{
  v2 = type metadata accessor for DefaultSpamFilterSettingsController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_67B0(uint64_t a1, char a2)
{
  v4 = (type metadata accessor for DefaultSpamFilterSettingsController(0) - 8);
  v5 = *(*v4 + 64);
  v6 = __chkstk_darwin();
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(&stru_20.maxprot + (swift_isaMask & *v2)))(v6);
  v9 = &v8[v4[7]];
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v9) = v9[16];
  v14 = v10;
  v15 = v11;
  v16 = v9;
  v13[7] = a2;

  sub_3A78(&qword_10960, &qword_9510);
  sub_808C();
  sub_6734(v8);
}

id sub_6A3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSpamFilterSettingsController.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6A84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3A78(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id sub_6AEC()
{
  v0 = [objc_allocWithZone(DefaultSpamFilterListController) init];
  sub_3A78(&qword_10968, &qword_9518);
  sub_7FAC();
  [v0 setDelegate:v2];

  return v0;
}

uint64_t sub_6BA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6538(v2, v6);
  v7 = type metadata accessor for DefaultSpamFilterSettingsController.Coordinator(0);
  v8 = objc_allocWithZone(v7);
  sub_6538(v6, v8 + OBJC_IVAR____TtCV13CallFiltering35DefaultSpamFilterSettingsController11Coordinator_parent);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, "init");
  result = sub_6734(v6);
  *a2 = v9;
  return result;
}

void sub_6DB0()
{
  sub_7CAC(&unk_10B60);
  sub_7F8C();
  __break(1u);
}

uint64_t sub_6DF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DefaultSpamFilterSettingsController(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (v1 + *(type metadata accessor for DefaultSpamFilterView(0) + 20));
  v9 = *v8;
  v10 = *(v8 + 1);
  v25 = v9;
  v26 = v10;
  sub_3A78(&qword_10980, &qword_9530);
  sub_806C();
  v11 = v22;
  v12 = v23;
  v13 = v24;
  *v7 = swift_getKeyPath();
  sub_3A78(&qword_10950, &qword_94D0);
  swift_storeEnumTagMultiPayload();
  v14 = v7 + *(v4 + 20);
  *v14 = v11;
  *(v14 + 1) = v12;
  v14[16] = v13;
  v21 = v2;
  sub_3A78(&qword_10988, &qword_9538);
  sub_7CAC(&qword_10990);
  v15 = sub_4E14(&qword_10998, &qword_9540);
  v16 = sub_73E0();
  v22 = v15;
  v23 = v16;
  swift_getOpaqueTypeConformance2();
  sub_803C();
  sub_6734(v7);
  v17 = sub_7EDC();
  LOBYTE(v4) = sub_7FCC();
  result = sub_3A78(&qword_109B0, &qword_9548);
  v19 = a1 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = v4;
  return result;
}

uint64_t sub_7014(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_704C(uint64_t a1)
{
  v2 = sub_3A78(&qword_10998, &qword_9540);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v26[-v4];
  v6 = sub_7EBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_7EAC();
  v11 = (a1 + *(type metadata accessor for DefaultSpamFilterView(0) + 20));
  v12 = *v11;
  v13 = *(v11 + 1);
  v26[16] = v12;
  v27 = v13;
  sub_3A78(&qword_10980, &qword_9530);
  sub_805C();
  if (v26[15])
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  (*(v7 + 32))(v5, v10, v6);
  *&v5[*(v2 + 36)] = v14;
  v15 = (*(*(sub_3A78(&qword_10958, &qword_94D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v17 = &v26[-v16];
  sub_5E28(&v26[-v16]);
  v18 = sub_3A78(&qword_10970, &qword_9520);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_7CF0(v17, &qword_10958, &qword_94D8);
LABEL_8:
    sub_7FDC();
    goto LABEL_9;
  }

  v19 = sub_80AC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v23 = &v26[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_807C();
  sub_7CF0(v17, &qword_10970, &qword_9520);
  v24 = sub_809C();
  (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_7FEC();
LABEL_9:
  sub_73E0();
  sub_801C();
  return sub_7CF0(v5, &qword_10998, &qword_9540);
}

unint64_t sub_73E0()
{
  result = qword_109A0;
  if (!qword_109A0)
  {
    sub_4E14(&qword_10998, &qword_9540);
    sub_7460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109A0);
  }

  return result;
}

unint64_t sub_7460()
{
  result = qword_109A8;
  if (!qword_109A8)
  {
    sub_7EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109A8);
  }

  return result;
}

uint64_t _s13CallFiltering33DefaultSpamFilterSettingsProviderC7contentQrvg_0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_3A78(&qword_10950, &qword_94D0);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for DefaultSpamFilterView(0) + 20);
  result = sub_804C();
  *v2 = v4;
  *(v2 + 1) = v5;
  return result;
}

uint64_t sub_7600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3A78(&qword_10978, &qword_9528);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_76E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3A78(&qword_10978, &qword_9528);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_77BC()
{
  if (!qword_10A10)
  {
    sub_4E14(&qword_10958, &qword_94D8);
    v0 = sub_7ECC();
    if (!v1)
    {
      atomic_store(v0, &qword_10A10);
    }
  }
}

uint64_t sub_7828()
{
  result = type metadata accessor for DefaultSpamFilterSettingsController(319);
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

uint64_t sub_78CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3A78(&qword_10978, &qword_9528);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_79B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3A78(&qword_10978, &qword_9528);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_7A94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, void *))
{
  sub_77BC();
  if (v7 <= 0x3F)
  {
    sub_7B30(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_7B88()
{
  result = qword_10B58;
  if (!qword_10B58)
  {
    sub_4E14(&qword_109B0, &qword_9548);
    type metadata accessor for DefaultSpamFilterSettingsController(255);
    sub_4E14(&qword_10988, &qword_9538);
    sub_7CAC(&qword_10990);
    sub_4E14(&qword_10998, &qword_9540);
    sub_73E0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10B58);
  }

  return result;
}

uint64_t sub_7CAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultSpamFilterSettingsController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7CF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3A78(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_7D50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3A78(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}