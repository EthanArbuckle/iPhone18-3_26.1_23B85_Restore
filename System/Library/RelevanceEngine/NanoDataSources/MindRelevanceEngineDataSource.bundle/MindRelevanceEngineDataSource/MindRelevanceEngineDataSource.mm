uint64_t sub_16E0()
{
  v0 = *sub_9790();
  v1 = sub_99CC();
  v2 = sub_99CC();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_99DC();
  return v4;
}

void sub_17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {

    v7 = sub_99CC();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    aBlock[4] = sub_1C98;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0;
    aBlock[3] = &unk_C6E0;
    v9 = _Block_copy(aBlock);

    v10.receiver = v4;
    v10.super_class = type metadata accessor for DemoDataSource();
    objc_msgSendSuper2(&v10, "getElementsInSection:withHandler:", v7, v9);
    _Block_release(v9);

    sub_1D64(a3);
  }
}

uint64_t sub_18C8(unint64_t a1, uint64_t (*a2)(void *))
{
  v4 = sub_98BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  if (!a1)
  {
    return a2(&_swiftEmptyArrayStorage);
  }

  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

    return a2(&_swiftEmptyArrayStorage);
  }

  result = sub_9B6C();
  if (!result)
  {
    return a2(&_swiftEmptyArrayStorage);
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_9B4C();
    goto LABEL_7;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(a1 + 32);
LABEL_7:
    v14 = v13;
    v15 = sub_99CC();
    v16 = REDemoDateForIdentifier();

    if (v16)
    {
      sub_989C();

      (*(v5 + 32))(v11, v9, v4);
      isa = sub_988C().super.isa;
      v18 = REAbsoluteRelevanceProviderForDate();

      if (v18)
      {
        v19 = [v14 content];
        v32 = [v14 action];
        v35 = sub_1FE4(&unk_10AC0, &unk_A930);
        v20 = swift_allocObject();
        v33 = xmmword_A8F0;
        *(v20 + 16) = xmmword_A8F0;
        *(v20 + 32) = v18;
        v21 = objc_allocWithZone(REElement);
        v34 = v18;
        v22 = sub_99CC();
        sub_202C(0, &qword_10AE0, RERelevanceProvider_ptr);
        v23.super.isa = sub_9A4C().super.isa;
        v31 = v14;
        v24 = v23.super.isa;

        v25 = v19;
        v26 = v19;
        v27 = v32;
        v28 = [v21 initWithIdentifier:v22 content:v26 action:v32 relevanceProviders:v24];

        v29 = swift_allocObject();
        *(v29 + 16) = v33;
        *(v29 + 32) = v28;
        v30 = v28;
        a2(v29);

        return (*(v5 + 8))(v11, v4);
      }

      (*(v5 + 8))(v11, v4);
    }

    return a2(&_swiftEmptyArrayStorage);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1CA0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_202C(0, &qword_109A8, REElement_ptr);
    v2 = sub_9A5C();
  }

  v4(v2);
}

uint64_t sub_1D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1E40(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_202C(0, &qword_109A8, REElement_ptr);
    v3.super.isa = sub_9A4C().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

id sub_1EC8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1EFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoDataSource();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1FA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1FE4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_202C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_2074()
{
  v0 = objc_opt_self();
  v1 = sub_99CC();
  v2 = [v0 _symbolImageProviderWithSystemName:v1];

  sub_225C();
  isa = sub_9AFC(35.0).super.super.isa;
  [v2 setOverridePointSize:isa];

  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 fiui_meditationTeal];
  [v5 setTintColor:v6];

  sub_16E0();
  v7 = sub_99CC();

  v8 = [objc_opt_self() textProviderWithText:v7];

  v9 = [objc_allocWithZone(REContent) init];
  [v9 setObject:REElementInteractionTap forKey:REContentInteractionKey];
  [v9 setBodyImageProvider:v5];

  [v9 setStyle:3];
  [v9 setDescription1TextProvider:v8];

  return v9;
}

unint64_t sub_225C()
{
  result = qword_109B0;
  if (!qword_109B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_109B0);
  }

  return result;
}

uint64_t sub_22D0()
{
  v1 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_notifyToken;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2314(int a1)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_notifyToken;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_23D0()
{
  v1 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_query;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_241C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_query;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24D4()
{
  v1 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queryRetries;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2518(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queryRetries;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_98BC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2634@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_mostRecentSessionEndDate;
  swift_beginAccess();
  return sub_268C(v1 + v3, a1);
}

uint64_t sub_268C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1FE4(&qword_109E8, &unk_A990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_mostRecentSessionEndDate;
  swift_beginAccess();
  sub_275C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_275C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1FE4(&qword_109E8, &unk_A990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_288C()
{
  v0 = sub_903C();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_2950()
{
  sub_1FE4(&qword_109F0, qword_AB20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_A940;
  *(v0 + 32) = sub_99DC();
  *(v0 + 40) = v1;
  return v0;
}

uint64_t *sub_29C4()
{
  v1 = sub_992C();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  v3 = __chkstk_darwin(v1);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v44 - v5;
  v6 = sub_9ABC();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  __chkstk_darwin(v6);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_9A9C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_996C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_notifyToken] = -1;
  *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_query] = 0;
  *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queryRetries] = 0;
  v13 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_mostRecentSessionEndDate;
  v14 = sub_98BC();
  (*(*(v14 - 8) + 56))(&v0[v13], 1, 1, v14);
  result = [objc_opt_self() fiui_sharedHealthStoreForCarousel];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_healthStore] = result;
    sub_202C(0, &qword_109F8, OS_dispatch_queue_ptr);
    sub_995C();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_8410(&qword_10A00, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1FE4(&qword_10A08, &qword_A9A0);
    sub_7D90(&qword_10A10, &qword_10A08, &qword_A9A0);
    sub_9B2C();
    (*(v48 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v49);
    *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue] = sub_9AEC();
    v16 = type metadata accessor for DataSource();
    v53.receiver = v0;
    v53.super_class = v16;
    v17 = objc_msgSendSuper2(&v53, "init");
    v18 = kNLMindPreferencesChangedNotification;
    v19 = v17;
    v20 = sub_9ACC();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_3444;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3490;
    aBlock[3] = &unk_C780;
    v22 = _Block_copy(aBlock);

    v23 = OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_notifyToken;
    swift_beginAccess();
    v24 = notify_register_dispatch(v18, (v19 + v23), v20, v22);
    swift_endAccess();
    _Block_release(v22);

    if (v24 || *(&v19->isa + v23) == -1)
    {
      v25 = Log.datasource.unsafeMutableAddressor();
      v27 = v50;
      v26 = v51;
      v28 = v46;
      (*(v50 + 16))(v46, v25, v51);
      v29 = sub_990C();
      v30 = sub_9A7C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 67109120;
        *(v31 + 4) = v24;
        _os_log_impl(&dword_0, v29, v30, "Error registering for data protection notifications, result: %u", v31, 8u);

        v32 = v19;
      }

      else
      {
        v32 = v29;
        v29 = v19;
      }

      (*(v27 + 8))(v28, v26);
      return v19;
    }

    v33 = Log.datasource.unsafeMutableAddressor();
    v35 = v50;
    v34 = v51;
    v36 = v45;
    (*(v50 + 16))(v45, v33, v51);
    v37 = sub_990C();
    v38 = sub_9A8C();
    if (!os_log_type_enabled(v37, v38))
    {

      (*(v35 + 8))(v36, v34);
      return v19;
    }

    v39 = swift_slowAlloc();
    result = swift_slowAlloc();
    aBlock[0] = result;
    *v39 = 136315138;
    if (v18)
    {
      v40 = result;
      v41 = sub_9A0C();
      v43 = sub_7740(v41, v42, aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_0, v37, v38, "Registered for data protection notifications for name: %s", v39, 0xCu);
      sub_7CE8(v40);

      (*(v35 + 8))(v45, v34);
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_3098(uint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for DataSource()
{
  result = qword_10C18;
  if (!qword_10C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_312C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3164(uint64_t a1)
{
  v2 = sub_994C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_996C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue);
    v18 = v7;
    v14 = result;
    v17 = v13;

    aBlock[4] = sub_85E8;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_344C;
    aBlock[3] = &unk_CA28;
    v15 = _Block_copy(aBlock);

    sub_995C();
    v19 = &_swiftEmptyArrayStorage;
    sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags);
    sub_1FE4(&qword_10A20, qword_A9A8);
    sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
    sub_9B2C();
    v16 = v17;
    sub_9ADC();
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v18);
  }

  return result;
}

uint64_t sub_344C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_3490(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_34E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_35F8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v6 = v4;
  v7 = sub_994C();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_996C();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_992C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Log.datasource.unsafeMutableAddressor();
  (*(v16 + 16))(v19, v20, v15);
  v21 = sub_990C();
  v22 = sub_9A6C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v29 = v14;
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, v30, v23, 2u);
    v14 = v29;
  }

  (*(v16 + 8))(v19, v15);
  v24 = *&v6[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
  v25 = swift_allocObject();
  *(v25 + 16) = v6;
  aBlock[4] = v32;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_344C;
  aBlock[3] = a4;
  v26 = _Block_copy(aBlock);
  v27 = v6;
  sub_995C();
  v36 = &_swiftEmptyArrayStorage;
  sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags);
  sub_1FE4(&qword_10A20, qword_A9A8);
  sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
  sub_9B2C();
  sub_9ADC();
  _Block_release(v26);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_3A64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v7 = sub_994C();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_996C();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_992C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Log.datasource.unsafeMutableAddressor();
  (*(v16 + 16))(v19, v20, v15);

  v21 = sub_990C();
  v22 = sub_9A6C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37 = a4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v36 = v10;
    v26 = a3;
    v27 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_7740(v38, a2, aBlock);
    _os_log_impl(&dword_0, v21, v22, "Elements requested (section = %s).", v24, 0xCu);
    sub_7CE8(v27);
    a3 = v26;
    v10 = v36;

    a4 = v37;
  }

  (*(v16 + 8))(v19, v15);
  v28 = v39;
  v29 = *&v39[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
  v30 = swift_allocObject();
  v30[2] = v28;
  v30[3] = a3;
  v30[4] = a4;
  aBlock[4] = sub_7E50;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_344C;
  aBlock[3] = &unk_C870;
  v31 = _Block_copy(aBlock);
  v32 = v28;
  sub_7E5C(a3);
  sub_995C();
  v44 = &_swiftEmptyArrayStorage;
  sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags);
  sub_1FE4(&qword_10A20, qword_A9A8);
  sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
  v33 = v43;
  sub_9B2C();
  sub_9ADC();
  _Block_release(v31);
  (*(v42 + 8))(v10, v33);
  (*(v40 + 8))(v14, v41);
}

uint64_t sub_3ED0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_992C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v37 - v11;
  v13 = sub_98BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_98AC();
  v18 = sub_6EF8(v17);
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v37[1] = a3;
    v20 = Log.datasource.unsafeMutableAddressor();
    v21 = v6[2];
    v21(v12, v20, v5);
    v22 = sub_990C();
    v23 = sub_9A6C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37[0] = a2;
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "A mindfulness session is appropriate for this interval.", v24, 2u);
      a2 = v37[0];
    }

    v25 = v6[1];
    v25(v12, v5);
    v26 = sub_8080();
    v21(v10, v20, v5);
    v27 = v26;
    v28 = sub_990C();
    v29 = sub_9A6C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v25;
      v31 = swift_slowAlloc();
      v32 = a2;
      v33 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v27;
      *v33 = v27;
      v34 = v27;
      _os_log_impl(&dword_0, v28, v29, "Returning element %@", v31, 0xCu);
      sub_8528(v33, &qword_10B08, qword_AA10);
      a2 = v32;

      v25 = v30;
    }

    result = (v25)(v10, v5);
    if (a2)
    {
      sub_1FE4(&unk_10AC0, &unk_A930);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_A8F0;
      *(v35 + 32) = v27;
      v36 = v27;
      a2(v35);
    }

    __break(1u);
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return (a2)(&_swiftEmptyArrayStorage);
}

id sub_4374()
{
  v0 = sub_98FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_98BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  sub_202C(0, &qword_10AF0, HKSampleType_ptr);
  result = [swift_getObjCClassFromMetadata() categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
  if (result)
  {
    v14 = result;
    sub_98EC();
    sub_98AC();
    sub_98CC();
    v15 = *(v6 + 8);
    v25[1] = v6 + 8;
    v27 = v15;
    v15(v10, v5);
    (*(v1 + 8))(v4, v0);
    v16 = objc_opt_self();
    isa = sub_988C().super.isa;
    v18 = [v16 predicateForSamplesWithStartDate:isa endDate:0 options:0];

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = objc_allocWithZone(HKAnchoredObjectQuery);
    v32 = sub_8480;
    v33 = v19;
    v26 = v5;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_4788;
    v31 = &unk_C9B0;
    v21 = _Block_copy(&aBlock);

    v22 = [v20 initWithType:v14 predicate:v18 anchor:0 limit:0 resultsHandler:v21];
    _Block_release(v21);

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_867C;
    v33 = v23;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_4788;
    v31 = &unk_C9D8;
    v24 = _Block_copy(&aBlock);

    sub_7E5C(sub_867C);

    [v22 setUpdateHandler:v24];
    _Block_release(v24);

    v27(v12, v26);

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a3)
  {
    sub_202C(0, &qword_10B00, HKSample_ptr);
    v9 = sub_9A5C();
  }

  if (a4)
  {
    sub_202C(0, &qword_10AF8, HKDeletedObject_ptr);
    a4 = sub_9A5C();
  }

  v13 = a2;
  v14 = a5;
  v15 = a6;
  v12(v13, v9, a4, a5, a6);
}

void sub_48A0()
{
  v1 = v0;
  v2 = sub_992C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_999C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = sub_99BC();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = Log.datasource.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_990C();
    v16 = sub_9A6C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Starting mindful session query", v17, 2u);
    }

    v18 = (*(v3 + 8))(v6, v2);
    v19 = (*(&stru_68.offset + (swift_isaMask & *v1)))(v18);
    if (v19)
    {
      v20 = v19;
      [*(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_healthStore) stopQuery:v19];
    }

    v21 = sub_4374();
    [*(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_healthStore) executeQuery:v21];
    v22 = *(&stru_68.reloff + (swift_isaMask & *v1));
    v23 = v21;
    v22(v21);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4BA0()
{
  v1 = v0;
  v2 = sub_992C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_999C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = sub_99BC();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = Log.datasource.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_990C();
    v17 = sub_9A6C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "Stopping mindful session query", v18, 2u);
    }

    v19 = (*(v3 + 8))(v6, v2);
    v20 = (*(&stru_68.offset + (swift_isaMask & *v1)))(v19);
    if (v20)
    {
      v21 = v20;
      [*(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_healthStore) stopQuery:v20];
    }

    return (*&stru_B8.sectname[swift_isaMask & *v1])(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_4E70()
{
  v1 = v0;
  v2 = sub_994C();
  v74 = *(v2 - 8);
  v3 = *(v74 + 64);
  __chkstk_darwin(v2);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_996C();
  v71 = *(v73 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v73);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_993C();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  __chkstk_darwin(v7);
  v10 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_998C();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  v13 = __chkstk_darwin(v11);
  v63 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v62 - v15;
  v75 = sub_992C();
  v16 = *(v75 - 1);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v75);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v62 - v21;
  v23 = sub_999C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v1 + OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v64 = v28;
  LOBYTE(v28) = sub_99BC();
  result = (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v62 = v2;
  v30 = *(&stru_68.reserved2 + (swift_isaMask & *v1));
  v31 = (v30)(result);
  v32 = sub_9094();
  if (v31 < *v32)
  {
    result = (*&stru_B8.segname[(swift_isaMask & *v1) - 8])(aBlock);
    if (!__OFADD__(*v33, 1))
    {
      ++*v33;
      v34 = (result)(aBlock, 0);
      v35 = (v30)(v34);
      result = sub_90A8();
      v36 = v35 * *result;
      if ((v35 * *result) >> 64 == v36 >> 63)
      {
        v37 = sub_90B4();
        if (*v37 <= v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = *v37;
        }

        v39 = Log.datasource.unsafeMutableAddressor();
        v40 = v75;
        (*(v16 + 16))(v22, v39, v75);
        v41 = sub_990C();
        v42 = sub_9A8C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 134217984;
          *(v43 + 4) = v38;
          _os_log_impl(&dword_0, v41, v42, "Will try to restart query after %ld seconds", v43, 0xCu);
        }

        (*(v16 + 8))(v22, v40);
        v44 = v63;
        sub_997C();
        *v10 = v38;
        v46 = v65;
        v45 = v66;
        (*(v65 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v66);
        v47 = v67;
        sub_99AC();
        (*(v46 + 8))(v10, v45);
        v48 = v69;
        v75 = *(v68 + 8);
        (v75)(v44, v69);
        v49 = swift_allocObject();
        *(v49 + 16) = v1;
        aBlock[4] = sub_8458;
        aBlock[5] = v49;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_344C;
        aBlock[3] = &unk_C988;
        v50 = _Block_copy(aBlock);
        v51 = v1;
        v52 = v70;
        sub_995C();
        v76 = &_swiftEmptyArrayStorage;
        sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags);
        sub_1FE4(&qword_10A20, qword_A9A8);
        sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
        v53 = v72;
        v54 = v62;
        sub_9B2C();
        sub_9AAC();
        _Block_release(v50);
        (*(v74 + 8))(v53, v54);
        (*(v71 + 8))(v52, v73);
        (v75)(v47, v48);
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v55 = v32;
  v56 = Log.datasource.unsafeMutableAddressor();
  v57 = v75;
  (*(v16 + 16))(v20, v56, v75);
  v58 = v1;
  v59 = sub_990C();
  v60 = sub_9A7C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134218240;
    *(v61 + 4) = v30();

    *(v61 + 12) = 2048;
    *(v61 + 14) = *v55;
    _os_log_impl(&dword_0, v59, v60, "Not restarting mindful session query, maximum retries allowed exhausted; Retry attempt: %ld (max: %ld)", v61, 0x16u);
    v57 = v75;
  }

  else
  {

    v59 = v58;
  }

  return (*(v16 + 8))(v20, v57);
}

uint64_t sub_5718(uint64_t a1, uint64_t a2)
{
  v5 = sub_994C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_996C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v2;
  v14[4] = a1;
  aBlock[4] = sub_83D8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_344C;
  aBlock[3] = &unk_C938;
  v15 = _Block_copy(aBlock);
  swift_errorRetain();

  v16 = v2;
  sub_995C();
  v20 = &_swiftEmptyArrayStorage;
  sub_8410(&qword_10A18, &type metadata accessor for DispatchWorkItemFlags);
  sub_1FE4(&qword_10A20, qword_A9A8);
  sub_7D90(&qword_10A28, &qword_10A20, qword_A9A8);
  sub_9B2C();
  sub_9ADC();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_59F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_992C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_98FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v16 = Log.datasource.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v16, v6);
    swift_errorRetain();
    v17 = sub_990C();
    v18 = sub_9A7C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[1] = a2;
      v21 = v20;
      v28 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v22 = Error.logOutput.getter(v27[3], v27[4]);
      v24 = sub_7740(v22, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v17, v18, "Error returned from mindful session query: %s", v19, 0xCu);
      sub_7CE8(v21);
    }

    (*(v7 + 8))(v10, v6);
    sub_4E70();
  }

  else
  {
    v26 = sub_98EC();
    if (a3)
    {
      __chkstk_darwin(v26);
      v27[-2] = v15;
      v27[-1] = a2;
      sub_64C8(sub_83E4, &v27[-4], a3);
    }

    return (*(v12 + 8))(v15, v11);
  }
}

void sub_5CF0(id *a1, uint64_t a2, void *a3)
{
  v79 = a3;
  v4 = sub_1FE4(&qword_109E8, &unk_A990);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v71 - v8;
  v9 = sub_992C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v83 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v71 - v14;
  v16 = sub_98BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = [*a1 endDate];
  sub_989C();

  v80 = sub_98DC();
  v78 = v17;
  v24 = *(v17 + 8);
  v23 = (v17 + 8);
  v85 = v16;
  v82 = v24;
  v24(v20, v16);
  v25 = Log.datasource.unsafeMutableAddressor();
  v81 = v10;
  v26 = *(v10 + 16);
  v73 = v25;
  v74 = v10 + 16;
  v72 = v26;
  (v26)(v15);
  v27 = v21;
  v28 = sub_990C();
  v29 = sub_9A6C();

  v30 = os_log_type_enabled(v28, v29);
  v77 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v75 = v9;
    v32 = v31;
    v33 = swift_slowAlloc();
    v86 = v33;
    *v32 = 136315394;
    v34 = [v27 endDate];
    sub_989C();

    sub_8410(&qword_10AE8, &type metadata accessor for Date);
    v35 = v85;
    v36 = sub_9B7C();
    v38 = v37;
    v39 = v35;
    v40 = v82;
    v82(v20, v39);
    v41 = sub_7740(v36, v38, &v86);

    *(v32 + 4) = v41;
    *(v32 + 12) = 1024;
    LOBYTE(v41) = v80;
    *(v32 + 14) = v80 & 1;
    _os_log_impl(&dword_0, v28, v29, "Received mindful session sample with end date %s (isInToday=%{BOOL}d", v32, 0x12u);
    sub_7CE8(v33);

    v9 = v75;

    v42 = *(v81 + 8);
    v43 = v42(v15, v9);
    v44 = v83;
    if ((v41 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    v42 = *(v81 + 8);
    v43 = v42(v15, v9);
    v40 = v82;
    v44 = v83;
    if ((v80 & 1) == 0)
    {
      return;
    }
  }

  (*&stru_B8.segname[swift_isaMask & *v79])(v43);
  v45 = v84;
  v46 = v78;
  if ((*(v78 + 48))(v84, 1, v85))
  {
    sub_8528(v45, &qword_109E8, &unk_A990);
    v47 = 0.0;
  }

  else
  {
    v48 = *(v46 + 16);
    v49 = v85;
    v48(v20, v45, v85);
    sub_8528(v45, &qword_109E8, &unk_A990);
    sub_986C();
    v47 = v50;
    v40(v20, v49);
  }

  v51 = [v77 endDate];
  sub_989C();

  sub_986C();
  v53 = v52;
  v40(v20, v85);
  if (v47 < v53)
  {
    v84 = v23;
    v72(v44, v73, v9);
    v54 = v77;
    v55 = sub_990C();
    v56 = v9;
    v57 = sub_9A6C();

    if (os_log_type_enabled(v55, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v85;
      v61 = v59;
      v86 = v59;
      *v58 = 136315138;
      v62 = [v54 endDate];
      v75 = v56;
      v63 = v62;
      sub_989C();

      sub_8410(&qword_10AE8, &type metadata accessor for Date);
      v64 = sub_9B7C();
      v66 = v65;
      v82(v20, v60);
      v67 = sub_7740(v64, v66, &v86);

      *(v58 + 4) = v67;
      v68 = &DemoDataSource;
      _os_log_impl(&dword_0, v55, v57, "This sample is the new latest session (end date = %s)", v58, 0xCu);
      sub_7CE8(v61);

      v42(v83, v75);
    }

    else
    {

      v42(v44, v56);
      v68 = &DemoDataSource;
    }

    v69 = [v54 *&v68[16].flags];
    v70 = v76;
    sub_989C();

    (*(v78 + 56))(v70, 0, 1, v85);
    (*&stru_B8.segname[(swift_isaMask & *v79) + 8])(v70);
    sub_65C8();
  }
}

void sub_64C8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_9B6C())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_9B4C();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_65C8()
{
  v73 = sub_992C();
  v1 = *(v73 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v73);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v72 = v69 - v7;
  v8 = __chkstk_darwin(v6);
  v71 = v69 - v9;
  __chkstk_darwin(v8);
  v70 = v69 - v10;
  v11 = sub_98BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_999C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *&v0[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = sub_99BC();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v23 = [v0 delegate];
  if (!v23)
  {
LABEL_11:
    v45 = Log.datasource.unsafeMutableAddressor();
    v46 = v73;
    (*(v1 + 16))(v5, v45, v73);
    v47 = sub_990C();
    v48 = sub_9A7C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "Delegate or its elementOperationQueue is NULL!", v49, 2u);
    }

    (*(v1 + 8))(v5, v46);
    return;
  }

  v24 = v23;
  v25 = [v23 elementOperationQueue];
  if (!v25)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v26 = v25;
  v76 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = &v76;
  *(v27 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_7FCC;
  *(v28 + 24) = v27;
  v69[1] = v27;
  aBlock[4] = sub_8058;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_6ED0;
  aBlock[3] = &unk_C8E8;
  v29 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  dispatch_sync(v26, v29);
  _Block_release(v29);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
LABEL_31:
    __break(1u);
    return;
  }

  sub_98AC();
  v30 = sub_6EF8(v15);
  (*(v12 + 8))(v15, v11);
  if (v30)
  {
    v31 = v73;
    if ((v76 & 1) == 0)
    {
      v32 = Log.datasource.unsafeMutableAddressor();
      v33 = v71;
      (*(v1 + 16))(v71, v32, v31);
      v34 = sub_990C();
      v35 = sub_9A6C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "Mindfulness element is not present and appropriate, trying to add.", v36, 2u);
      }

      (*(v1 + 8))(v33, v31);
      v37 = sub_8080();
      sub_1FE4(&unk_10AC0, &unk_A930);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_A8F0;
      *(v38 + 32) = v37;
      sub_202C(0, &qword_109A8, REElement_ptr);
      v39 = v37;
      isa = sub_9A4C().super.isa;

      v41 = sub_906C();
      v42 = *v41;
      v43 = v41[1];

      v44 = sub_99CC();

      [v24 addElements:isa toSectionWithIdentifier:v44];

      swift_unknownObjectRelease();
LABEL_18:

      return;
    }
  }

  else
  {
    v31 = v73;
    if (v76)
    {
      v50 = Log.datasource.unsafeMutableAddressor();
      v51 = v70;
      (*(v1 + 16))(v70, v50, v31);
      v52 = sub_990C();
      v53 = sub_9A6C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_0, v52, v53, "Mindfulness element is present and not appropriate, removing it.", v54, 2u);
      }

      (*(v1 + 8))(v51, v31);
      sub_1FE4(&qword_109F0, qword_AB20);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_A940;
      v56 = sub_906C();
      v58 = *v56;
      v57 = v56[1];
      *(v55 + 32) = v58;
      *(v55 + 40) = v57;

      v44 = sub_9A4C().super.isa;

      [v24 removeElementsWithIds:v44];

      swift_unknownObjectRelease();
      goto LABEL_18;
    }
  }

  v59 = v26;
  v60 = Log.datasource.unsafeMutableAddressor();
  v61 = v72;
  (*(v1 + 16))(v72, v60, v31);
  v62 = sub_990C();
  v63 = sub_9A6C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v74 = v65;
    *v64 = 136315138;
    swift_beginAccess();
    if (v76)
    {
      v66 = 29545;
    }

    else
    {
      v66 = 0x746F6E207369;
    }

    if (v76)
    {
      v67 = 0xE200000000000000;
    }

    else
    {
      v67 = 0xE600000000000000;
    }

    v68 = sub_7740(v66, v67, &v74);

    *(v64 + 4) = v68;
    _os_log_impl(&dword_0, v62, v63, "Mindfulness element %s present, not modifying.", v64, 0xCu);
    sub_7CE8(v65);

    swift_unknownObjectRelease();

    (*(v1 + 8))(v72, v31);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v1 + 8))(v61, v31);
  }
}

uint64_t sub_6EF8(uint64_t a1)
{
  v77 = a1;
  v2 = sub_98FC();
  v70 = *(v2 - 8);
  v3 = *(v70 + 64);
  __chkstk_darwin(v2);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_98BC();
  v76 = *(v78 - 8);
  v5 = *(v76 + 64);
  v6 = __chkstk_darwin(v78);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = &v63 - v8;
  v9 = sub_1FE4(&qword_109E8, &unk_A990);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v74 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  v15 = sub_992C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v75 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = sub_999C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *&v1[OBJC_IVAR____TtC29MindRelevanceEngineDataSource10DataSource_queue];
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v28 = v27;
  LOBYTE(v27) = sub_99BC();
  result = (*(v23 + 8))(v26, v22);
  if (v27)
  {
    v30 = Log.datasource.unsafeMutableAddressor();
    v72 = v16[2];
    v73 = v30;
    v72(v21);
    v31 = v1;
    v32 = v15;
    v33 = sub_990C();
    v34 = sub_9A6C();

    if (os_log_type_enabled(v33, v34))
    {
      v65 = v16;
      v66 = v32;
      v67 = v2;
      v35 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v79 = v64;
      *v35 = 136315138;
      (*&stru_B8.segname[swift_isaMask & *v31])();
      v36 = v76;
      v37 = v78;
      if ((*(v76 + 48))(v14, 1, v78))
      {
        sub_8528(v14, &qword_109E8, &unk_A990);
        v38 = 0xE300000000000000;
        v39 = 7104878;
      }

      else
      {
        v42 = v71;
        (*(v36 + 16))();
        sub_8528(v14, &qword_109E8, &unk_A990);
        v43 = v42;
        v63 = sub_987C();
        v38 = v44;
        (*(v36 + 8))(v43, v37);
        v39 = v63;
      }

      v45 = sub_7740(v39, v38, &v79);

      *(v35 + 4) = v45;
      _os_log_impl(&dword_0, v33, v34, "Determining whether a session is appropriate: lastSessionDate = %s.", v35, 0xCu);
      sub_7CE8(v64);

      v41 = v66;
      v40 = v65[1];
      v40(v21, v66);
      v2 = v67;
    }

    else
    {

      v40 = v16[1];
      v40(v21, v32);
      v41 = v32;
    }

    v46 = sub_90C0();
    v47 = sub_9120();
    if (v46 || v47)
    {
      v52 = v74;
      (*&stru_B8.segname[swift_isaMask & *v31])(v47);
      v53 = v76;
      v54 = v78;
      if ((*(v76 + 48))(v52, 1, v78) == 1)
      {
        sub_8528(v52, &qword_109E8, &unk_A990);
        return 1;
      }

      else
      {
        v55 = v68;
        (*(v53 + 32))(v68, v52, v54);
        v56 = v69;
        sub_98EC();
        v57 = v71;
        sub_98CC();
        (*(v70 + 8))(v56, v2);
        sub_986C();
        v59 = v58;
        sub_986C();
        v61 = v60;
        v62 = *(v53 + 8);
        v62(v57, v54);
        v62(v55, v54);
        return v61 < v59;
      }
    }

    else
    {
      v48 = v75;
      (v72)(v75, v73, v41);
      v49 = sub_990C();
      v50 = sub_9A6C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v49, v50, "Mindfullness reminders not enabled.", v51, 2u);
      }

      v40(v48, v41);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_7698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_780C(v11, 0, 0, 1, a1, a2);
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
    sub_8588(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7CE8(v11);
  return v7;
}

unint64_t sub_780C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_7918(a5, a6);
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
    result = sub_9B5C();
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

char *sub_7918(uint64_t a1, unint64_t a2)
{
  v4 = sub_7964(a1, a2);
  sub_7A94(&off_C730);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_7964(uint64_t a1, unint64_t a2)
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

  v6 = sub_7B80(v5, 0);
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

  result = sub_9B5C();
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
        v10 = sub_9A1C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_7B80(v10, 0);
        result = sub_9B3C();
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

uint64_t sub_7A94(uint64_t result)
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

  result = sub_7BF4(result, v12, 1, v3);
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

void *sub_7B80(uint64_t a1, uint64_t a2)
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

  sub_1FE4(&unk_10B10, &unk_AAB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_7BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1FE4(&unk_10B10, &unk_AAB0);
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

uint64_t sub_7CE8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_7D34()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7D90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3098(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7E08()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7E5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_7E74()
{
  sub_7F3C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_7F3C()
{
  if (!qword_10A58)
  {
    sub_98BC();
    v0 = sub_9B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_10A58);
    }
  }
}

uint64_t sub_7F94()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_7FCC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_906C();
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_99CC();

  LOBYTE(v1) = [v1 hasElementWithId:v6 inSectionWithIdentifier:REDefaultSectionIdentifier];

  *v2 = v1;
}

uint64_t sub_8058()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_8080()
{
  v0 = sub_1FE4(&qword_10AD0, &qword_AA08);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v35 - v2;
  sub_984C();
  v4 = sub_903C();
  v6 = *v4;
  v5 = *(v4 + 1);
  v7 = sub_985C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v3, 1, v7);

  v11 = 0;
  if (v9 != 1)
  {
    sub_983C(v10);
    v11 = v12;
    (*(v8 + 8))(v3, v7);
  }

  v13 = objc_allocWithZone(REElementOpenAction);
  v14 = sub_99CC();

  v15 = [v13 initWithURL:v11 applicationID:v14];

  v16 = [objc_allocWithZone(REDailyRoutineRelevanceProvider) initWithDailyRoutineType:2];
  v17 = *v4;
  v18 = *(v4 + 1);
  v19 = objc_allocWithZone(REBulletinDistributorRelevanceProvider);

  v20 = sub_99CC();

  v21 = [v19 initWithBulletinSectionIdentifier:v20];

  sub_202C(0, &qword_10AD8, REContent_ptr);
  v22 = sub_2074();
  v23 = sub_906C();
  v24 = *v23;
  v25 = v23[1];
  sub_1FE4(&unk_10AC0, &unk_A930);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_A950;
  *(v26 + 32) = v16;
  *(v26 + 40) = v21;
  v27 = objc_allocWithZone(REElement);

  v28 = v15;
  v29 = v16;
  v30 = v21;
  v31 = sub_99CC();

  sub_202C(0, &qword_10AE0, RERelevanceProvider_ptr);
  isa = sub_9A4C().super.isa;

  v33 = [v27 initWithIdentifier:v31 content:v22 action:v28 relevanceProviders:isa];

  return v33;
}

uint64_t sub_8390()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8410(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_8458()
{
  v1 = *(v0 + 16);
  sub_4BA0();
  sub_48A0();
}

void sub_8484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_5718(a2, a5);
  }
}

uint64_t sub_84F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8528(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1FE4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_8588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_85E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_65C8();
  }
}

uint64_t sub_86A8(uint64_t a1, uint64_t a2)
{
  if (sub_99DC() == a1 && v3 == a2)
  {
  }

  else
  {
    v5 = sub_9B9C();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return type metadata accessor for SampleDataSource();
}

id sub_87EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleConfiguration();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_8884()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_88FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_897C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_992C();
  sub_8FD4(v3, a2);
  sub_88FC(v3, a2);
  return sub_991C();
}

uint64_t sub_8A18(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_992C();

  return sub_88FC(v3, a2);
}

uint64_t sub_8A90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_992C();
  v6 = sub_88FC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

Swift::Void __swiftcall Logger.trace(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = file._object;
  v5 = file._countAndFlagsBits;
  v20 = file;
  sub_8E38();
  v6 = (sub_9B1C() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v5 = *v7;
    v4 = v7[1];
  }

  else
  {
  }

  sub_8E8C(46, 0xE100000000000000, v5, v4);
  sub_9A3C();

  v8 = sub_99EC();
  v10 = v9;

  sub_8E8C(40, 0xE100000000000000, countAndFlagsBits, object);
  sub_9A3C();
  v11 = sub_99EC();
  v13 = v12;

  v14 = sub_990C();
  v15 = sub_9A8C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v20._countAndFlagsBits = swift_slowAlloc();
    *v16 = 67109634;
    v17 = pthread_self();
    *(v16 + 4) = pthread_mach_thread_np(v17);
    *(v16 + 8) = 2080;
    v18 = sub_7740(v8, v10, &v20._countAndFlagsBits);

    *(v16 + 10) = v18;
    *(v16 + 18) = 2080;
    v19 = sub_7740(v11, v13, &v20._countAndFlagsBits);

    *(v16 + 20) = v19;
    _os_log_impl(&dword_0, v14, v15, "[%u] %s::%s", v16, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }
}

unint64_t sub_8E38()
{
  result = qword_10BA8;
  if (!qword_10BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10BA8);
  }

  return result;
}

unint64_t sub_8E8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_9A2C() != a1 || v9 != a2)
  {
    v10 = sub_9B9C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_99FC();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t *sub_8FD4(uint64_t a1, uint64_t *a2)
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

BOOL sub_90C0()
{

  return sub_9180(&kNLMindfulnessStartOfDayEnabledKey);
}

BOOL sub_9120()
{

  return sub_9180(&kNLMindfulnessEndOfDayEnabledKey);
}

BOOL sub_9180(id *a1)
{
  keyExistsAndHasValidFormat = 0;
  v1 = *a1;
  v2 = sub_99CC();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v1, v2, &keyExistsAndHasValidFormat);

  return !keyExistsAndHasValidFormat || AppIntegerValue == 1;
}

id sub_93F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleDataSource();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_9464()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_9498(void (*a1)(uint64_t))
{
  v2 = REUISampleRelevanceProviderForSamplePositionWithPercentage();
  if (v2)
  {
    v3 = v2;
    sub_202C(0, &qword_10AD8, REContent_ptr);
    v4 = sub_2074();
    v5 = sub_906C();
    v6 = *v5;
    v7 = v5[1];
    sub_1FE4(&unk_10AC0, &unk_A930);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_A8F0;
    *(v8 + 32) = v3;
    v9 = objc_allocWithZone(REElement);

    v10 = v4;
    v11 = v3;
    v12 = sub_99CC();

    sub_202C(0, &qword_10AE0, RERelevanceProvider_ptr);
    isa = sub_9A4C().super.isa;

    v14 = [v9 initWithIdentifier:v12 content:v10 action:0 relevanceProviders:isa];

    if (a1)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_A8F0;
      *(v15 + 32) = v14;
      v16 = v14;
      a1(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else if (a1)
  {

    a1(0);

    sub_1D64(a1);
  }
}

uint64_t sub_9700()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_9738()
{
  type metadata accessor for DataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10C10 = result;
  return result;
}

uint64_t *sub_9790()
{
  if (qword_10C38 != -1)
  {
    swift_once();
  }

  return &qword_10C10;
}

id sub_97E0()
{
  if (qword_10C38 != -1)
  {
    swift_once();
  }

  v0 = qword_10C10;

  return v0;
}