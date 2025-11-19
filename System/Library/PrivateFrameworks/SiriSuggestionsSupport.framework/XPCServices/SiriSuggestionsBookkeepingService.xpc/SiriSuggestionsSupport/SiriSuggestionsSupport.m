int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_10000BFFC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v36 - v8;
  v10 = sub_10000BFCC();
  sub_100001E58(v10, qword_100014BB0);
  v11 = sub_100001EBC(v10, qword_100014BB0);
  v12 = sub_10000BECC();
  sub_10000BEAC();

  v13 = sub_10000BECC();
  v39 = v11;
  sub_10000BEDC();

  if (qword_100014870 != -1)
  {
    swift_once();
  }

  v14 = sub_100001EBC(v3, static Logger.bookkeepingXPCServiceCategory);
  v37 = v4[2];
  v38 = v14;
  v37(v9);
  v15 = sub_10000BFDC();
  v16 = sub_10000C08C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Bookkeeping XPC Service starting up", v17, 2u);
  }

  v18 = v4[1];
  v18(v9, v3);
  v19 = sub_10000BE4C();
  qword_100014BC8 = sub_10000BE3C();
  sub_10000BFBC();
  v20 = *sub_10000BF4C();
  *(&v42 + 1) = sub_10000BF3C();
  v43 = &protocol witness table for SiriSuggestionsIntelligence.NoopAccountService;
  *&v41 = v20;

  sub_10000BFAC();
  sub_100001F44(&v41);
  v21 = qword_100014BC8;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;

  sub_10000BE6C();
  v22 = sub_10000BDBC();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_10000BDAC();
  type metadata accessor for DefaultSuggestionsLoggerFactory();
  v26 = swift_allocObject();
  v26[5] = v19;
  v26[6] = &protocol witness table for OSFeatureFlagProvider;
  v26[2] = v21;
  v26[7] = v25;
  sub_100002164(&unk_100014BD0, &v41);
  type metadata accessor for DefaultFeatureServiceFactory();
  v27 = swift_allocObject();
  sub_100001FA8(&v41, v27 + 16);
  v28 = qword_100014BC8;
  v29 = objc_allocWithZone(type metadata accessor for BookkeepingServiceDelegate());

  qword_100014BF8 = sub_100001FC0(v26, v27, v28, v29);
  qword_100014C00 = [objc_opt_self() serviceListener];
  [qword_100014C00 setDelegate:qword_100014BF8];
  [qword_100014C00 resume];
  v30 = v40;
  (v37)(v40, v38, v3);
  v31 = sub_10000BFDC();
  v32 = sub_10000C08C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Bookkeeping XPC Service started up", v33, 2u);
  }

  v18(v30, v3);
  v34 = sub_10000BECC();
  sub_10000BEBC();

  return 0;
}

uint64_t *sub_100001E58(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001EBC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001EF4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100001F44(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100001FA8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_100001FC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v18[3] = type metadata accessor for DefaultSuggestionsLoggerFactory();
  v18[4] = sub_10000210C();
  v18[0] = a1;
  v17[3] = type metadata accessor for DefaultFeatureServiceFactory();
  v17[4] = &protocol witness table for DefaultFeatureServiceFactory;
  v17[0] = a2;
  v16[3] = sub_10000BE4C();
  v16[4] = &protocol witness table for OSFeatureFlagProvider;
  v16[0] = a3;
  v9 = OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService26BookkeepingServiceDelegate_indexUpdateManager;
  sub_10000BD8C();
  v14 = sub_10000BD5C();
  v15 = &protocol witness table for SiriAutoCompleteIndexBuilder;
  v13 = sub_10000BD4C();
  *&a4[v9] = sub_10000BD7C();
  sub_100002164(v18, &a4[OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService26BookkeepingServiceDelegate_suggestionsLoggerFactory]);
  sub_100002164(v17, &a4[OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService26BookkeepingServiceDelegate_featureServiceFactory]);
  sub_100002164(v16, &a4[OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService26BookkeepingServiceDelegate_featureFlagProvider]);
  v12.receiver = a4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100001F44(v16);
  sub_100001F44(v17);
  sub_100001F44(v18);
  return v10;
}

unint64_t sub_10000210C()
{
  result = qword_100014878;
  if (!qword_100014878)
  {
    type metadata accessor for DefaultSuggestionsLoggerFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014878);
  }

  return result;
}

uint64_t sub_100002164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Logger.bookkeepingXPCServiceCategory.unsafeMutableAddressor()
{
  if (qword_100014870 != -1)
  {
    sub_100002358();
  }

  v0 = sub_10000BFFC();

  return sub_100001EBC(v0, static Logger.bookkeepingXPCServiceCategory);
}

uint64_t sub_100002228()
{
  v0 = sub_10000BFFC();
  sub_100001E58(v0, static Logger.bookkeepingXPCServiceCategory);
  sub_100001EBC(v0, static Logger.bookkeepingXPCServiceCategory);
  sub_10000BEEC();
  return sub_10000BFEC();
}

uint64_t static Logger.bookkeepingXPCServiceCategory.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014870 != -1)
  {
    sub_100002358();
  }

  v2 = sub_10000BFFC();
  v3 = sub_100001EBC(v2, static Logger.bookkeepingXPCServiceCategory);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002358()
{

  return swift_once();
}

uint64_t sub_1000023A8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = sub_100002908(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a3(v12, a2, v3, v7, v8);
  sub_100001F44(a1);
  return v14;
}

uint64_t DefaultSuggestionsLoggerFactory.create(featureService:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10000BFFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v27[-v12 - 8];
  v14 = v2[6];
  sub_1000029D0(v2 + 2, v2[5]);
  if (sub_10000BE2C())
  {
    sub_10000BE9C();
    v15 = sub_10000BFDC();
    v16 = sub_10000C08C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Enabled feature extraction logger", v17, 2u);
    }

    (*(v7 + 8))(v13, v6);
    sub_100002164(a1, v27);
    v18 = v3[7];
    v19 = sub_10000BF0C();
    swift_allocObject();
    v20 = sub_10000BEFC();
    a2[3] = v19;
    v21 = sub_100002A14();
  }

  else
  {
    sub_10000BE9C();
    v22 = sub_10000BFDC();
    v23 = sub_10000C08C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Feature Extraction disabled. Only using raw remembers logger", v24, 2u);
    }

    (*(v7 + 8))(v11, v6);
    v20 = v3[7];
    a2[3] = sub_10000BDBC();
    v21 = &protocol witness table for SiriRemembersLogger;
  }

  a2[4] = v21;
  *a2 = v20;
}

uint64_t DefaultSuggestionsLoggerFactory.deinit()
{
  sub_100001F44((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t DefaultSuggestionsLoggerFactory.__deallocating_deinit()
{
  sub_100001F44((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t *sub_1000027E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  v14 = sub_100002958(v12, a2, v13, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v14;
}

uint64_t sub_100002908(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_100002958(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  v9 = sub_100002A90(a3 + 2);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  a3[7] = a2;
  return a3;
}

void *sub_1000029D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002A14()
{
  result = qword_100014880;
  if (!qword_100014880)
  {
    sub_10000BF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014880);
  }

  return result;
}

uint64_t *sub_100002A90(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t DefaultFeatureServiceFactory.__allocating_init(accountDetailsProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_100001FA8(a1, v2 + 16);
  return v2;
}

uint64_t DefaultFeatureServiceFactory.create(featureFlagProvider:configProvider:accountDetailsProviderOverride:possibleOwners:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = sub_10000BFFC();
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_100002C28, 0, 0);
}

uint64_t sub_100002C28()
{
  v1 = *(v0 + 144);
  v2 = v1[4];
  sub_1000029D0(v1, v1[3]);
  if (sub_10000BE2C())
  {
    v3 = *(v0 + 208);
    sub_10000BE9C();
    v4 = sub_10000BFDC();
    v5 = sub_10000C08C();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      sub_100003354(&_mh_execute_header, v6, v7, "Enabled feature service");
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(v0 + 160);

    (*(v10 + 8))(v8, v9);
    sub_100003210(v11, v0 + 56);
    if (*(v0 + 80))
    {
      sub_100001FA8((v0 + 56), v0 + 16);
    }

    else
    {
      sub_100002164(*(v0 + 176) + 16, v0 + 16);
      if (*(v0 + 80))
      {
        sub_1000032C8(v0 + 56);
      }
    }

    sub_10000BE6C();
    v25 = async function pointer to static SiriSuggestionsIntelligence.createFeatureService(clock:configProvider:accountDetailsProvider:possibleOwners:)[1];
    v26 = swift_task_alloc();
    *(v0 + 216) = v26;
    *v26 = v0;
    v26[1] = sub_100002EB8;
    v27 = *(v0 + 168);
    v28 = *(v0 + 152);
    v29 = *(v0 + 136);

    return static SiriSuggestionsIntelligence.createFeatureService(clock:configProvider:accountDetailsProvider:possibleOwners:)(v29, v0 + 96, v28, v0 + 16, v27);
  }

  else
  {
    v12 = *(v0 + 200);
    sub_10000BE9C();
    v13 = sub_10000BFDC();
    v14 = sub_10000C08C();
    if (os_log_type_enabled(v13, v14))
    {
      *swift_slowAlloc() = 0;
      sub_100003354(&_mh_execute_header, v15, v16, "Feature Service disabled.");
    }

    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 184);
    v20 = *(v0 + 136);

    (*(v18 + 8))(v17, v19);
    sub_10000BF8C();
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_100002EB8()
{
  v1 = *v0;
  v2 = (*v0)[27];
  v3 = *v0;

  sub_100001F44(v1 + 12);
  sub_100001F44(v1 + 2);
  v4 = v1[26];
  v5 = v1[25];

  v6 = v3[1];

  return v6();
}

uint64_t DefaultFeatureServiceFactory.__deallocating_deinit()
{
  sub_100001F44((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100003050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10000311C;

  return DefaultFeatureServiceFactory.create(featureFlagProvider:configProvider:accountDetailsProviderOverride:possibleOwners:)(a1, a2, a3, a4, a5);
}

uint64_t sub_10000311C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003210(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003280(&qword_100014930, &qword_10000CA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003280(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000032C8(uint64_t a1)
{
  v2 = sub_100003280(&qword_100014930, &qword_10000CA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100003354(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100003374(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  sub_10000B430(v8);
  v10 = *(v9 + 64);
  sub_10000B538();
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_10000BFFC();
  v15 = sub_10000B008(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10000B158();
  v20 = sub_10000BFDC();
  v21 = sub_10000C08C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = v3;
    *v22 = 67109120;
    *(v22 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "Building the AutoComplete index via SiriSuggestionsBookkeepingService. OnStartUpEvent: %{BOOL}d", v22, 8u);
    v4 = v33;
    sub_10000B260();
  }

  (*(v17 + 8))(v3, v14);
  v23 = sub_10000C07C();
  sub_10000B5B0(v13, v24, v25, v23);
  sub_10000B3E8();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = a1 & 1;
  *(v26 + 40) = v4;
  *(v26 + 48) = a2;
  *(v26 + 56) = a3;
  v27 = v4;

  v28 = sub_10000B34C();
  sub_100003EFC(v28, v29, v13, v30, v26);
}

uint64_t sub_100003578(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 184) = a4;
  v8 = sub_10000BFFC();
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v11 = sub_10000BD9C();
  *(v7 + 64) = v11;
  v12 = *(v11 - 8);
  *(v7 + 72) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  v14 = sub_10000BD6C();
  *(v7 + 104) = v14;
  v15 = *(v14 - 8);
  *(v7 + 112) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  v17 = sub_10000C0FC();
  *(v7 + 136) = v17;
  v18 = *(v17 - 8);
  *(v7 + 144) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100003778, 0, 0);
}

uint64_t sub_100003778()
{
  sub_10000B180();
  v1 = *(v0 + 152);
  sub_10000C15C();
  sub_10000C14C();
  v2 = sub_10000B2C4(dword_10000CA48);
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_100003840;
  v3 = *(v0 + 152);
  v4 = sub_10000B4D8();

  return v6(v4);
}

uint64_t sub_100003840()
{
  sub_10000B180();
  sub_10000B110();
  sub_10000B0C8();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[19];
  v7 = v4[18];
  v8 = v4[17];
  v9 = *v1;
  sub_10000B01C();
  *v10 = v9;
  *(v11 + 168) = v0;

  v12 = *(v7 + 8);
  v13 = sub_10000B4D8();
  v14(v13);
  sub_10000B11C();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100003994()
{
  sub_10000B0E0();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 16);
  **(v0 + 128) = *(v0 + 184);
  (*(v2 + 104))();
  v4 = *(v3 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_indexUpdateManager);
  sub_10000B2C4(&async function pointer to dispatch thunk of IndexUpdateManager.update(type:));
  sub_10000B14C();
  *(v0 + 176) = v5;
  *v5 = v6;
  v5[1] = sub_100003A64;
  v7 = *(v0 + 128);
  v8 = *(v0 + 96);

  return v10(v8, v7);
}

uint64_t sub_100003A64()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_10000B01C();
  *v4 = v3;

  v5 = sub_10000B060();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100003E50()
{
  sub_10000B3F4();
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[7];

  sub_10000B128();
  v9 = v0[21];

  return v8();
}

uint64_t sub_100003EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_100009280(a3, v23 - v10);
  v12 = sub_10000C07C();
  v13 = sub_1000092F0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000A18C(v11, &qword_100014A28, &qword_10000C9D0);
  }

  else
  {
    sub_10000C06C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000C05C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000C01C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000A18C(a3, &qword_100014A28, &qword_10000C9D0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A18C(a3, &qword_100014A28, &qword_10000C9D0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_10000BFFC();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_10000BD9C();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v14 = sub_10000BD6C();
  v7[14] = v14;
  v15 = *(v14 - 8);
  v7[15] = v15;
  v16 = *(v15 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v17 = sub_10000C0FC();
  v7[18] = v17;
  v18 = *(v17 - 8);
  v7[19] = v18;
  v19 = *(v18 + 64) + 15;
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_100004448, 0, 0);
}

uint64_t sub_100004448()
{
  sub_10000B0E0();
  v1 = *(v0 + 160);
  sub_10000C14C();
  v2 = sub_10000B2C4(dword_10000CA48);
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_1000044FC;
  v3 = *(v0 + 160);
  sub_10000B11C();

  return v5();
}

uint64_t sub_1000044FC()
{
  sub_10000B180();
  sub_10000B110();
  sub_10000B0C8();
  *v3 = v2;
  v5 = v4[21];
  v6 = v4[20];
  v7 = v4[19];
  v8 = v4[18];
  v9 = *v1;
  sub_10000B01C();
  *v10 = v9;
  *(v11 + 176) = v0;

  v12 = *(v7 + 8);
  v13 = sub_10000B4D8();
  v14(v13);
  sub_10000B11C();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100004650()
{
  sub_10000B180();
  v2 = sub_10000B4F0();
  (*(v3 + 104))(v2, enum case for IndexUpdateType.appInstall(_:));
  v4 = *(v0 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_indexUpdateManager);
  sub_10000B1CC(&async function pointer to dispatch thunk of IndexUpdateManager.update(type:));
  swift_task_alloc();
  sub_10000B14C();
  *(v1 + 184) = v5;
  *v5 = v6;
  v7 = sub_10000B43C(v5);

  return v8(v7);
}

uint64_t sub_100004710()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 184);
  v3 = *v0;
  sub_10000B01C();
  *v4 = v3;

  v5 = sub_10000B060();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100004AB8()
{
  sub_10000B3F4();
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[8];

  sub_10000B128();
  v9 = v0[22];

  return v8();
}

uint64_t sub_100004BDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void, void, void))
{
  v45 = a3;
  v46 = a6;
  v43 = a4;
  v11 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  sub_10000B430(v11);
  v13 = *(v12 + 64);
  sub_10000B538();
  __chkstk_darwin(v14);
  v48 = &v40 - v15;
  v16 = sub_10000BFFC();
  v17 = sub_10000B008(v16);
  v47 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_10000B158();

  v21 = sub_10000BFDC();
  v22 = sub_10000C08C();

  v23 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = sub_10000B4A8();
    v41 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v49 = v26;
    *v25 = 136315138;
    v27 = sub_10000C04C();
    v42 = a7;
    v29 = sub_100009A4C(v27, v28, &v49);
    v40 = v16;
    v30 = v29;
    a7 = v42;

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v23, v43, v25, 0xCu);
    sub_100001F44(v26);
    sub_10000B260();
    a2 = v41;
    sub_10000B260();

    (*(v47 + 8))(v7, v40);
  }

  else
  {

    (*(v47 + 8))(v7, v16);
  }

  v31 = sub_10000C07C();
  v32 = v48;
  sub_10000B5B0(v48, v33, v34, v31);
  sub_10000B3E8();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v37 = v44;
  v36 = v45;
  v35[4] = a1;
  v35[5] = v37;
  v35[6] = a2;
  v35[7] = v36;

  v38 = v37;

  a7(0, 0, v32, v46, v35);
}

uint64_t sub_100004E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_10000BFFC();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_10000BD9C();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v14 = sub_10000BD6C();
  v7[15] = v14;
  v15 = *(v14 - 8);
  v7[16] = v15;
  v16 = *(v15 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return _swift_task_switch(sub_100005000, 0, 0);
}

uint64_t sub_100005000()
{
  sub_10000B180();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 24);
  **(v0 + 144) = *(v0 + 16);
  (*(v2 + 104))();
  v4 = *(v3 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_indexUpdateManager);
  sub_10000B1CC(&async function pointer to dispatch thunk of IndexUpdateManager.update(type:));
  swift_task_alloc();
  sub_10000B14C();
  *(v0 + 152) = v5;
  *v5 = v6;
  v5[1] = sub_1000050DC;
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);

  return v10(v8, v7);
}

uint64_t sub_1000050DC()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_10000B01C();
  *v4 = v3;

  v5 = sub_10000B060();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10000555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100009280(a3, v26 - v11);
  v13 = sub_10000C07C();
  v14 = sub_1000092F0(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10000A18C(v12, &qword_100014A28, &qword_10000C9D0);
  }

  else
  {
    sub_10000C06C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10000C05C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10000C01C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000A18C(a3, &qword_100014A28, &qword_10000C9D0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A18C(a3, &qword_100014A28, &qword_10000C9D0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000586C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  sub_10000B430(v8);
  v10 = *(v9 + 64);
  sub_10000B538();
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_10000BFFC();
  v15 = sub_10000B008(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_10000B158();

  v20 = sub_10000BFDC();
  v21 = sub_10000C08C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_10000B4A8();
    v47 = v17;
    v23 = v22;
    v24 = swift_slowAlloc();
    v48 = v3;
    v49 = v24;
    v45 = v24;
    *v23 = 136315138;
    v25 = sub_10000C04C();
    v46 = v14;
    v27 = a2;
    v28 = a1;
    v29 = v13;
    v30 = a3;
    v31 = sub_100009A4C(v25, v26, &v49);

    *(v23 + 4) = v31;
    a3 = v30;
    v13 = v29;
    a1 = v28;
    a2 = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Rebuilding partial index for sources: %s via SiriSuggestionsBookkeepingService", v23, 0xCu);
    sub_100001F44(v45);
    v4 = v48;
    sub_10000B260();
    sub_10000B260();

    (*(v47 + 8))(v3, v46);
  }

  else
  {

    v32 = *(v17 + 8);
    v33 = sub_10000B0D4();
    v34(v33);
  }

  v35 = sub_10000C07C();
  sub_10000B5B0(v13, v36, v37, v35);
  sub_10000B3E8();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = a1;
  v38[5] = v4;
  v38[6] = a2;
  v38[7] = a3;

  v39 = v4;

  v40 = sub_10000B34C();
  sub_10000555C(v40, v41, v13, v42, v38);
}

uint64_t sub_100005AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_10000BFFC();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_10000BD9C();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v14 = sub_10000BD6C();
  v7[14] = v14;
  v15 = *(v14 - 8);
  v7[15] = v15;
  v16 = *(v15 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_100005C94, 0, 0);
}

uint64_t sub_100005C94()
{
  sub_10000B180();
  v2 = sub_10000B4F0();
  (*(v3 + 104))(v2, enum case for IndexUpdateType.specific(_:));
  v4 = *(v0 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_indexUpdateManager);
  sub_10000B1CC(&async function pointer to dispatch thunk of IndexUpdateManager.update(type:));
  swift_task_alloc();
  sub_10000B14C();
  *(v1 + 144) = v5;
  *v5 = v6;
  v7 = sub_10000B43C(v5);

  return v8(v7);
}

uint64_t sub_100005D54()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_10000B01C();
  *v4 = v3;

  v5 = sub_10000B060();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100006144(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = sub_10000C03C();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = a1;
  a8(v12, a7, v13);
}

void sub_100006204(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, const void *a9)
{
  v54 = a8;
  v59 = a6;
  v60 = a7;
  v52 = a5;
  v63 = a3;
  v64 = a4;
  v69 = a2;
  v9 = sub_10000BFFC();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  __chkstk_darwin(v9);
  v66 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000BCDC();
  v53 = *(v58 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v58);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v55 = &v48 - v15;
  v62 = sub_10000BD3C();
  v56 = *(v62 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v62);
  v65 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v20 = sub_10000BE1C();
  v61 = *(v20 - 8);
  v21 = *(v61 + 64);
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  v71 = swift_allocObject();
  *(v71 + 16) = a9;
  v25 = sub_10000BC4C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v70 = a9;
  _Block_copy(a9);
  sub_10000BC3C();
  v73 = 200;
  sub_100003280(&qword_100014A80, &qword_10000CA70);
  sub_10000AA74();
  sub_10000BC2C();
  v50 = v21;
  v69 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v65;
  v51 = v12;
  v29 = v62;
  v30 = v72;
  sub_10000AB70(&qword_100014A98, &type metadata accessor for DeliveryVehicle);
  sub_10000BC2C();
  sub_10000AB70(&qword_100014A78, &type metadata accessor for FeatureRequirementsTransport);
  sub_10000BC2C();
  v31 = sub_10000C07C();
  sub_100009174(v55, 1, 1, v31);
  v32 = v56;
  (*(v56 + 16))(v28, v19, v29);
  v33 = v61;
  v34 = *(v61 + 16);
  v49 = v24;
  v34(v69, v24, v20);
  v67 = v20;
  v35 = v53;
  (*(v53 + 16))(v57, v52, v58);
  v36 = v32;
  v64 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v66 = ((v16 + v64 + 7) & 0xFFFFFFFFFFFFFFF8);
  v37 = &v66[*(v33 + 80) + 8] & ~*(v33 + 80);
  v38 = (v50 + *(v35 + 80) + v37) & ~*(v35 + 80);
  v68 = v19;
  v39 = (v51 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v41 = v54;
  *(v40 + 32) = v54;
  (*(v36 + 32))(v40 + v64, v65, v29);
  *&v66[v40] = v30;
  v42 = v61;
  v43 = v67;
  (*(v61 + 32))(v40 + v37, v69, v67);
  (*(v35 + 32))(v40 + v38, v57, v58);
  v44 = (v40 + v39);
  v45 = v71;
  *v44 = sub_10000AFD4;
  v44[1] = v45;
  v46 = v41;

  sub_10000555C(0, 0, v55, &unk_10000CA80, v40);

  (*(v56 + 8))(v68, v29);
  (*(v42 + 8))(v49, v43);
  v47 = v70;

  _Block_release(v47);
}

uint64_t sub_100006A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v15;
  v8[11] = v16;
  v8[8] = a7;
  v8[9] = a8;
  v8[7] = a6;
  v9 = sub_10000BFFC();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[15] = v12;
  *v12 = v8;
  v12[1] = sub_100006B24;

  return sub_100006FD8();
}

uint64_t sub_100006B24()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 120);
  v3 = *v0;
  sub_10000B01C();
  *v4 = v3;

  v5 = sub_10000B060();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100006C08()
{
  sub_10000B180();
  v1 = v0[6];
  sub_1000029D0(v0 + 2, v0[5]);
  v2 = async function pointer to dispatch thunk of SuggestionsLogger.log(from:deliveryVehicle:generationId:)[1];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v4 = sub_10000B284(v3);

  return dispatch thunk of SuggestionsLogger.log(from:deliveryVehicle:generationId:)(v4);
}

uint64_t sub_100006CAC()
{
  sub_10000B0E0();
  sub_10000B110();
  sub_10000B0C8();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_10000B01C();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_10000B11C();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100006F74(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10000BC9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100006FD8()
{
  sub_10000B0E0();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_10000BF2C();
  sub_10000B430(v4);
  v6 = *(v5 + 64) + 15;
  v1[30] = swift_task_alloc();
  v7 = sub_10000B060();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000705C()
{
  sub_10000B180();
  v1 = v0[30];
  v2 = v0[28];
  sub_10000BFBC();
  sub_10000BD0C();
  v3 = async function pointer to static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.createProvider(from:)[1];
  swift_task_alloc();
  sub_10000B14C();
  v0[31] = v4;
  *v4 = v5;
  v4[1] = sub_100007118;
  v6 = v0[30];

  return static SiriSuggestionsIntelligence.PreFetchedAccountDetailsProvider.createProvider(from:)(v0 + 2, v6);
}

uint64_t sub_100007118()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  sub_10000B01C();
  *v5 = v4;

  sub_10000A020(v3);
  v6 = sub_10000B060();

  return _swift_task_switch(v6, v7, v8);
}

void sub_100007218()
{
  sub_10000B4CC();
  v1 = v0[28];
  v2 = v0[29];
  v3 = (v2 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_suggestionsLoggerFactory);
  v4 = *(v2 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_suggestionsLoggerFactory + 24);
  v0[32] = v4;
  v0[33] = v3[4];
  v0[34] = sub_1000029D0(v3, v4);
  v5 = *(v2 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_featureServiceFactory + 32);
  sub_1000029D0((v2 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_featureServiceFactory), *(v2 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_featureServiceFactory + 24));
  sub_10000BD2C();
  v6 = v0[15];
  v7 = v0[16];
  v8 = sub_1000029D0(v0 + 12, v6);
  v0[20] = v6;
  v0[21] = *(v7 + 8);
  v9 = sub_100002A90(v0 + 17);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  sub_100002164((v0 + 2), (v0 + 22));
  sub_10000BE0C();
  sub_10000BD1C();
  v0[35] = sub_10000BDFC();
  sub_10000B418();
  v17 = v10 + *v10;
  v12 = *(v11 + 4);
  swift_task_alloc();
  sub_10000B14C();
  v0[36] = v13;
  *v13 = v14;
  v13[1] = sub_100007410;
  sub_10000B3CC();

  __asm { BRAA            X7, X16 }
}

uint64_t sub_100007410()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = v1;
  sub_10000B0C8();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *(v4 + 280);
  v7 = *v0;
  sub_10000B01C();
  *v8 = v7;

  sub_10000A18C(v2 + 176, &qword_100014930, &qword_10000CA10);
  sub_100001F44((v2 + 136));
  sub_100001F44((v2 + 96));
  v9 = sub_10000B060();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100007534()
{
  sub_10000B0E0();
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[27];
  sub_10000BCFC();
  sub_100001F44(v0 + 7);
  sub_100001F44(v0 + 2);

  sub_10000B128();

  return v6();
}

void sub_1000075B4(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, const void *a9)
{
  v54 = a8;
  v59 = a6;
  v60 = a7;
  v62 = a4;
  v63 = a5;
  v52 = a3;
  v73 = a1;
  v74 = a2;
  v9 = sub_10000BFFC();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  __chkstk_darwin(v9);
  v70 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10000BCDC();
  v53 = *(v57 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v57);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v55 = &v50 - v15;
  v67 = sub_10000BD3C();
  v58 = *(v67 - 8);
  v16 = *(v58 + 64);
  v17 = __chkstk_darwin(v67);
  v66 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v65 = &v50 - v18;
  v69 = sub_10000BDEC();
  v61 = *(v69 - 8);
  v19 = *(v61 + 64);
  v20 = __chkstk_darwin(v69);
  __chkstk_darwin(v20);
  v68 = &v50 - v21;
  v22 = sub_10000BE5C();
  v64 = *(v22 - 8);
  v23 = *(v64 + 64);
  v24 = __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  v76 = swift_allocObject();
  *(v76 + 16) = a9;
  v27 = sub_10000BC4C();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v75 = a9;
  _Block_copy(a9);
  sub_10000BC3C();
  v77 = 200;
  sub_10000AB70(&qword_100014A68, &type metadata accessor for Action);
  sub_10000BC2C();
  v51 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v19;
  v73 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v26;
  v30 = v65;
  v31 = v66;
  v32 = v67;
  sub_10000AB70(&qword_100014A70, &type metadata accessor for InvocationType);
  sub_10000BC2C();
  sub_10000AB70(&qword_100014A78, &type metadata accessor for FeatureRequirementsTransport);
  sub_10000BC2C();
  v33 = v22;
  v34 = sub_10000C07C();
  sub_100009174(v55, 1, 1, v34);
  v35 = v58;
  (*(v58 + 16))(v31, v30, v32);
  v36 = v64;
  (*(v64 + 16))(v51, v74, v22);
  v37 = v53;
  (*(v53 + 16))(v56, v52, v57);
  v38 = v61;
  (*(v61 + 16))(v73, v68, v69);
  v39 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v40 = *(v36 + 80);
  v72 = v33;
  v41 = (v16 + v40 + v39) & ~v40;
  v42 = (v23 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v71 = (v12 + *(v38 + 80) + v42) & ~*(v38 + 80);
  v70 = ((v50 + v71 + 7) & 0xFFFFFFFFFFFFFFF8);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v44 = v54;
  *(v43 + 32) = v54;
  (*(v35 + 32))(v43 + v39, v66, v67);
  (*(v36 + 32))(v43 + v41, v51, v72);
  (*(v37 + 32))(v43 + v42, v56, v57);
  v45 = v69;
  (*(v38 + 32))(v43 + v71, v73, v69);
  v46 = &v70[v43];
  v47 = v76;
  *v46 = sub_10000A60C;
  v46[1] = v47;
  v48 = v44;

  sub_10000555C(0, 0, v55, &unk_10000CA68, v43);

  (*(v58 + 8))(v65, v67);
  (*(v38 + 8))(v68, v45);
  (*(v36 + 8))(v74, v72);
  v49 = v75;

  _Block_release(v49);
}

uint64_t sub_100007EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v15;
  v8[11] = v16;
  v8[8] = a7;
  v8[9] = a8;
  v8[7] = a6;
  v9 = sub_10000BFFC();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[15] = v12;
  *v12 = v8;
  v12[1] = sub_100008004;

  return sub_100006FD8();
}

uint64_t sub_100008004()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 120);
  v3 = *v0;
  sub_10000B01C();
  *v4 = v3;

  v5 = sub_10000B060();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000080E8()
{
  sub_10000B180();
  v1 = v0[6];
  sub_1000029D0(v0 + 2, v0[5]);
  v2 = async function pointer to dispatch thunk of SuggestionsLogger.logEngagement(for:with:invocationType:)[1];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v4 = sub_10000B284(v3);

  return dispatch thunk of SuggestionsLogger.logEngagement(for:with:invocationType:)(v4);
}

uint64_t sub_10000818C()
{
  sub_10000B0E0();
  sub_10000B110();
  sub_10000B0C8();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_10000B01C();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_10000B11C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100008288()
{
  sub_10000B0E0();
  v1 = v0[10];
  v2 = v0[11];
  sub_100001F44(v0 + 2);
  v1(0);
  v3 = v0[14];

  sub_10000B128();

  return v4();
}

uint64_t sub_1000082F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000B31C();
  sub_10000B278();
  v12 = v10[17];
  v13 = v10[14];
  sub_100001F44(v10 + 2);
  sub_10000BE8C();
  swift_errorRetain();
  v14 = sub_10000BFDC();
  v15 = sub_10000C09C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v10[17];
    sub_10000B4A8();
    v17 = sub_10000B454();
    *v11 = 138412290;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v18;
    *v17 = v18;
    sub_10000B48C(&_mh_execute_header, v19, v15, "SiriSuggestionsBookkeepingService log failed. error: %@");
    sub_10000A18C(v17, &qword_100014A30, &qword_10000CA00);
    sub_10000B260();
    sub_10000B260();
  }

  v20 = v10[17];
  v22 = v10[13];
  v21 = v10[14];
  v23 = v10[11];
  v24 = v10[12];
  v25 = v10[10];

  (*(v22 + 8))(v21, v24);
  swift_errorRetain();
  v25(v20);

  v26 = v10[14];

  sub_10000B128();
  sub_10000B334();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_100008630(uint64_t a1, uint64_t a2)
{
  v5 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  sub_10000B430(v5);
  v7 = *(v6 + 64);
  sub_10000B538();
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = sub_10000C07C();
  sub_10000B5B0(v10, v12, v13, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v14[5] = a1;
  v14[6] = a2;
  v15 = v2;

  v16 = sub_10000B34C();
  sub_10000555C(v16, v17, v10, v18, v14);
}

uint64_t sub_100008714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_10000BFFC();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v10 = sub_10000BF2C();
  v6[9] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100008820, 0, 0);
}

uint64_t sub_100008820()
{
  sub_10000B3F4();
  v1 = (v0[2] + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_accountService);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000029D0(v1, v2);
  sub_10000B418();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  sub_10000B14C();
  v0[12] = v7;
  *v7 = v8;
  v7[1] = sub_100008940;
  v9 = v0[11];

  return v11(v9, v2, v3);
}

uint64_t sub_100008940()
{
  sub_10000B0E0();
  sub_10000B110();
  sub_10000B0C8();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_10000B01C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_10000B11C();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100008A3C()
{
  sub_10000B4CC();
  v51 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  sub_10000BE8C();
  v4 = sub_10000B0D4();
  sub_100009FBC(v4, v5);
  v6 = sub_10000BFDC();
  v7 = sub_10000C08C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v10 = v0[8];
  v12 = v0[5];
  v11 = v0[6];
  if (v8)
  {
    v49 = v0[8];
    v13 = sub_10000B4A8();
    v14 = swift_slowAlloc();
    v50 = v14;
    *v13 = 136315138;
    v15 = sub_10000BF1C();
    v17 = v16;
    sub_10000A020(v9);
    v18 = sub_100009A4C(v15, v17, &v50);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Got account details as: %s", v13, 0xCu);
    sub_100001F44(v14);
    sub_10000B260();
    sub_10000B224();

    (*(v11 + 8))(v49, v12);
  }

  else
  {

    sub_10000A020(v9);
    (*(v11 + 8))(v10, v12);
  }

  v19 = v0[13];
  v20 = v0[11];
  v21 = v0[9];
  v22 = sub_10000BC8C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_10000BC7C();
  sub_10000BC5C();
  sub_10000AB70(&qword_100014A38, &type metadata accessor for SiriSuggestionsIntelligence.AccountDetails);
  v25 = sub_10000BC6C();
  v27 = v0[11];
  if (v19)
  {
    sub_10000A020(v0[11]);

    v28 = v0[7];
    sub_10000BE8C();
    swift_errorRetain();
    v29 = sub_10000BFDC();
    v30 = sub_10000C0AC();

    if (os_log_type_enabled(v29, v30))
    {
      sub_10000B4A8();
      v31 = sub_10000B454();
      *v27 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v32;
      *v31 = v32;
      sub_10000B48C(&_mh_execute_header, v33, v30, "Unable to get account details. Error: %@");
      sub_10000A18C(v31, &qword_100014A30, &qword_10000CA00);
      sub_10000B260();
      sub_10000B260();
    }

    v35 = v0[6];
    v34 = v0[7];
    v36 = v0[4];
    v37 = v0[5];
    v38 = v0[3];

    (*(v35 + 8))(v34, v37);
    swift_errorRetain();
    v38(0, 0xF000000000000000, v19);
  }

  else
  {
    v39 = v25;
    v40 = v26;
    v42 = v0[3];
    v41 = v0[4];
    sub_10000A07C(v25, v26);
    v42(v39, v40, 0);
    sub_10000A0D4(v39, v40);

    sub_10000A0D4(v39, v40);
    sub_10000A020(v27);
  }

  v44 = v0[10];
  v43 = v0[11];
  v46 = v0[7];
  v45 = v0[8];

  sub_10000B128();
  sub_10000B3CC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100008DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000B31C();
  sub_10000B278();
  v12 = v10[13];
  v13 = v10[7];
  sub_10000BE8C();
  swift_errorRetain();
  v14 = sub_10000BFDC();
  v15 = sub_10000C0AC();

  if (os_log_type_enabled(v14, v15))
  {
    sub_10000B4A8();
    v16 = sub_10000B454();
    *v11 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v17;
    *v16 = v17;
    sub_10000B48C(&_mh_execute_header, v18, v15, "Unable to get account details. Error: %@");
    sub_10000A18C(v16, &qword_100014A30, &qword_10000CA00);
    sub_10000B260();
    sub_10000B260();
  }

  v20 = v10[6];
  v19 = v10[7];
  v21 = v10[4];
  v22 = v10[5];
  v23 = v10[3];

  (*(v20 + 8))(v19, v22);
  swift_errorRetain();
  v23(0, 0xF000000000000000, v12);

  v25 = v10[10];
  v24 = v10[11];
  v27 = v10[7];
  v26 = v10[8];

  sub_10000B128();
  sub_10000B334();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

void sub_100008FC8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_10000BC9C();
      goto LABEL_6;
    }
  }

  else
  {
    isa = sub_10000BCAC().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

id sub_1000090A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSuggestionsBookkeepingService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000919C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000091E4()
{
  sub_10000B3F4();
  sub_10000B204();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_10000B080(v2);
  *v3 = v4;
  v5 = sub_10000B02C(v3);

  return sub_100008714(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_100009280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003280(&qword_100014A28, &qword_10000C9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_10000C0EC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100009418, 0, 0);
}

uint64_t sub_100009418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000B31C();
  sub_10000B278();
  v11 = v10[10];
  v12 = v10[11];
  v13 = v10[8];
  v14 = v10[9];
  v15 = v10[7];
  sub_10000C0FC();
  sub_10000AB70(&qword_100014A58, &type metadata accessor for ContinuousClock);
  sub_10000B4D8();
  sub_10000C12C();
  sub_10000AB70(&qword_100014A60, &type metadata accessor for ContinuousClock.Instant);
  sub_10000C10C();
  v16 = *(v14 + 8);
  v10[12] = v16;
  v10[13] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v13);
  v17 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v18 = swift_task_alloc();
  v10[14] = v18;
  *v18 = v10;
  v18[1] = sub_100009590;
  v19 = v10[11];
  v20 = v10[7];
  sub_10000B334();

  return dispatch thunk of Clock.sleep(until:tolerance:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_100009590()
{
  sub_10000B3F4();
  sub_10000B110();
  v3 = v2;
  sub_10000B0C8();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  sub_10000B01C();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    sub_10000B11C();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    sub_10000B128();

    return v18();
  }
}

uint64_t sub_100009730()
{
  sub_10000B0E0();
  v2 = v0[10];
  v1 = v0[11];

  sub_10000B128();
  v4 = v0[15];

  return v3();
}

uint64_t sub_100009794(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000988C;

  return v7(a1);
}

uint64_t sub_10000988C()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000B01C();
  *v4 = v3;

  sub_10000B128();

  return v5();
}

uint64_t sub_100009970()
{
  sub_10000B180();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000B080(v3);
  *v4 = v5;
  v4[1] = sub_10000AFC8;
  v6 = sub_10000B070();

  return v7(v6);
}

uint64_t sub_100009A14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009A4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009B10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000A12C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100001F44(v11);
  return v7;
}

unint64_t sub_100009B10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100009C10(a5, a6);
    *a1 = v9;
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
    result = sub_10000C0DC();
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

char *sub_100009C10(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009C5C(a1, a2);
  sub_100009D74(&off_1000107C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100009C5C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10000C02C())
  {
    result = sub_100009E58(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10000C0CC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10000C0DC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100009D74(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100009EC8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100009E58(uint64_t a1, uint64_t a2)
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

  sub_100003280(&qword_100014A40, &qword_10000CA08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100009EC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003280(&qword_100014A40, &qword_10000CA08);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100009FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BF2C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A020(uint64_t a1)
{
  v2 = sub_10000BF2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A07C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000A0D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000A12C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000A18C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003280(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A1F0()
{
  sub_10000B31C();
  sub_10000B278();
  sub_10000B204();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_10000B080(v3);
  *v4 = v5;
  sub_10000B02C(v4);
  sub_10000B4E4();
  sub_10000B334();

  return sub_100005AF4(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10000A284()
{
  sub_10000B31C();
  sub_10000B278();
  sub_10000B204();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_10000B080(v3);
  *v4 = v5;
  sub_10000B02C(v4);
  sub_10000B4E4();
  sub_10000B334();

  return sub_100004E54(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10000A318()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  sub_10000B3E8();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_10000A364()
{
  sub_10000B31C();
  sub_10000B278();
  sub_10000B204();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_10000B080(v3);
  *v4 = v5;
  sub_10000B02C(v4);
  sub_10000B4E4();
  sub_10000B334();

  return sub_10000424C(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10000A3F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  sub_10000B3E8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000A43C()
{
  sub_10000B31C();
  sub_10000B278();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = swift_task_alloc();
  v8 = sub_10000B080(v7);
  *v8 = v9;
  v8[1] = sub_10000A4EC;
  sub_10000B070();
  sub_10000B4E4();
  sub_10000B334();

  return sub_100003578(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10000A4EC()
{
  sub_10000B0E0();
  sub_10000B110();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000B01C();
  *v4 = v3;

  sub_10000B128();

  return v5();
}

uint64_t sub_10000A5CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A614()
{
  v33 = sub_10000BD3C();
  sub_10000B008(v33);
  v2 = v1;
  v3 = *(v1 + 80);
  v5 = *(v4 + 64);
  v32 = sub_10000BE5C();
  sub_10000B008(v32);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (((v3 + 40) & ~v3) + v5 + v8) & ~v8;
  v29 = v9;
  v11 = *(v10 + 64);
  v31 = sub_10000BCDC();
  sub_10000B008(v31);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v17 = *(v16 + 64);
  v30 = sub_10000BDEC();
  sub_10000B008(v30);
  v19 = v18;
  v21 = v20;
  v22 = *(v19 + 80);
  v23 = (v15 + v17 + v22) & ~v22;
  v24 = v3 | v8 | v14 | v22;
  v25 = (*(v21 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + ((v3 + 40) & ~v3), v33);
  (*(v7 + 8))(v0 + v29, v32);
  (*(v13 + 8))(v0 + v15, v31);
  (*(v19 + 8))(v0 + v23, v30);
  v27 = *(v0 + v25 + 8);

  return _swift_deallocObject(v0, v25 + 16, v24 | 7);
}

uint64_t sub_10000A864()
{
  sub_10000B4CC();
  v2 = v1;
  v3 = sub_10000BD3C();
  sub_10000B090(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_10000BE5C();
  sub_10000B090(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = sub_10000BCDC();
  sub_10000B090(v13);
  v15 = (v10 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  v18 = sub_10000BDEC();
  sub_10000B090(v18);
  v20 = (v15 + v17 + *(v19 + 80)) & ~*(v19 + 80);
  v22 = *(v21 + 64);
  sub_10000B524();
  v23 = *(v0 + 32);
  v25 = (v0 + v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = swift_task_alloc();
  *(v2 + 16) = v28;
  *v28 = v2;
  v28[1] = sub_10000A4EC;
  sub_10000B400();
  sub_10000B3CC();

  return sub_100007EF4(v29, v30, v31, v32, v33, v34, v35, v36);
}

unint64_t sub_10000AA74()
{
  result = qword_100014A88;
  if (!qword_100014A88)
  {
    sub_10000AB28(&qword_100014A80, &qword_10000CA70);
    sub_10000AB70(&qword_100014A90, &type metadata accessor for SiriSuggestions.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014A88);
  }

  return result;
}

uint64_t sub_10000AB28(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000AB70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000ABB8()
{
  v27 = sub_10000BD3C();
  sub_10000B008(v27);
  v2 = v1;
  v3 = *(v1 + 80);
  v25 = (v3 + 40) & ~v3;
  v5 = (*(v4 + 64) + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = sub_10000BE1C();
  sub_10000B008(v26);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v11 = *(v10 + 64);
  v12 = sub_10000BCDC();
  sub_10000B008(v12);
  v14 = v13;
  v16 = v15;
  v17 = *(v14 + 80);
  v18 = (v9 + v11 + v17) & ~v17;
  v19 = v3 | v8 | v17;
  v20 = (*(v16 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v25, v27);
  v22 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v26);
  (*(v14 + 8))(v0 + v18, v12);
  v23 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, v20 + 16, v19 | 7);
}

uint64_t sub_10000ADA4()
{
  sub_10000B4CC();
  v2 = v1;
  v3 = sub_10000BD3C();
  sub_10000B090(v3);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_10000BE1C();
  sub_10000B090(v7);
  v9 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_10000BCDC();
  sub_10000B090(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  sub_10000B524();
  v17 = *(v0 + v6);
  v18 = *(v0 + 32);
  v20 = (v0 + v19);
  v21 = *v20;
  v22 = v20[1];
  v23 = swift_task_alloc();
  *(v2 + 16) = v23;
  *v23 = v2;
  v23[1] = sub_10000AFC8;
  sub_10000B400();
  sub_10000B3CC();

  return sub_100006A14(v24, v25, v26, v27, v28, v29, v30, v31);
}

void sub_10000B0EC(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>, uint64_t a4, os_log_t log)
{

  _os_log_impl(a1, log, a3, a2, v5, 0x16u);
}

uint64_t sub_10000B128()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000B158()
{

  return sub_10000BE8C();
}

uint64_t sub_10000B18C()
{

  return swift_slowAlloc();
}

uint64_t sub_10000B1AC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _swift_arrayDestroy(a6, 2, a1 + 8);
}

uint64_t sub_10000B1CC@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

void sub_10000B204()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_10000B224()
{
}

void sub_10000B240()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v9 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
}

uint64_t sub_10000B260()
{
}

uint64_t sub_10000B284(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[8];
  v4 = v2[9];
  return v2[7];
}

uint64_t sub_10000B2A4()
{

  return sub_10000C11C();
}

uint64_t sub_10000B2C4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_10000B2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_100009A4C(v10, v11, va);
}

uint64_t sub_10000B300()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[9];
  return v0[11];
}

uint64_t sub_10000B36C()
{
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];

  return sub_10000BE8C();
}

uint64_t sub_10000B418()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000B43C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 136);
  return *(v2 + 104);
}

uint64_t sub_10000B454()
{

  return swift_slowAlloc();
}

BOOL sub_10000B470(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{

  return os_log_type_enabled(v14, a1);
}

void sub_10000B48C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

uint64_t sub_10000B4A8()
{

  return swift_slowAlloc();
}

void *sub_10000B4F0()
{
  result = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[3];
  *result = v0[2];
  return result;
}

uint64_t sub_10000B550()
{

  return sub_10000C11C();
}

uint64_t sub_10000B568()
{

  return swift_slowAlloc();
}

uint64_t sub_10000B580()
{
}

uint64_t sub_10000B598()
{
}

uint64_t sub_10000B5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100009174(a1, 1, 1, a4);
}

uint64_t sub_10000B5C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10000BFFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 processIdentifier];
  v11 = sub_10000C00C();
  v12 = [a2 valueForEntitlement:v11];

  if (v12)
  {
    sub_10000C0BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v26[0]) == 1)
    {
      v13 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15SiriSuggestions41SiriSuggestionsBookkeepingServiceProtocol_];
      [a2 setExportedInterface:v13];

      sub_100002164(v3 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService26BookkeepingServiceDelegate_suggestionsLoggerFactory, v29);
      sub_100002164(v3 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService26BookkeepingServiceDelegate_featureServiceFactory, &v27);
      sub_100002164(v3 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService26BookkeepingServiceDelegate_featureFlagProvider, v26);
      v14 = sub_10000BF6C();
      swift_allocObject();
      v15 = sub_10000BF5C();
      v16 = *(v3 + OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService26BookkeepingServiceDelegate_indexUpdateManager);
      v17 = type metadata accessor for SiriSuggestionsBookkeepingService();
      v18 = objc_allocWithZone(v17);
      v25[3] = v14;
      v25[4] = &protocol witness table for SiriSuggestionsIntelligence.AppleAccountService;
      v25[0] = v15;
      sub_100002164(v29, &v18[OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_suggestionsLoggerFactory]);
      sub_100002164(&v27, &v18[OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_featureServiceFactory]);
      sub_100002164(v26, &v18[OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_featureFlagProvider]);
      sub_100002164(v25, &v18[OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_accountService]);
      *&v18[OBJC_IVAR____TtC33SiriSuggestionsBookkeepingService33SiriSuggestionsBookkeepingService_indexUpdateManager] = v16;
      v24.receiver = v18;
      v24.super_class = v17;

      v19 = objc_msgSendSuper2(&v24, "init");
      sub_100001F44(v26);
      sub_100001F44(&v27);
      sub_100001F44(v29);
      sub_100001F44(v25);
      [a2 setExportedObject:v19];
      [a2 resume];

      return 1;
    }
  }

  else
  {
    sub_10000BB60(v29);
  }

  sub_10000BE7C();
  v21 = sub_10000BFDC();
  v22 = sub_10000C0AC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v21, v22, "process [%d] is not entitled to call the SiriSuggestionsBookkeepingService XPCService.", v23, 8u);
  }

  (*(v6 + 8))(v9, v5);
  return 0;
}

id sub_10000B9BC()
{
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_10000BA98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000BB60(uint64_t a1)
{
  v2 = sub_100003280(&qword_100014B48, &unk_10000CAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000BBC8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_10000BBF8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_10000BC1C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}