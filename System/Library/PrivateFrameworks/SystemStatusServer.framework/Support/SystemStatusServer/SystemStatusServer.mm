id sub_100000D00(void *a1)
{
  v1 = a1;
  +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v1 count]);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100000DC4;
  v2 = v4[3] = &unk_1000041E0;
  v5 = v2;
  [v1 enumerateWithBlock:v4];

  return v2;
}

void sub_100000DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithInteger:a2];
  [v2 addObject:v3];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(STLocalStatusServer);
  v2 = [[STStatusServerTransactionManager alloc] initWithServer:v1];
  v3 = qword_1000082F8;
  qword_1000082F8 = v2;

  v4 = objc_alloc_init(STLocalDynamicActivityAttributionManager);
  v5 = qword_100008300;
  qword_100008300 = v4;

  v6 = [STDynamicActivityAttributionMonitor alloc];
  v7 = [v6 initWithServerHandle:qword_100008300];
  v8 = qword_100008308;
  qword_100008308 = v7;

  v9 = objc_alloc_init(STExecutableIdentityResolver);
  v10 = qword_100008310;
  qword_100008310 = v9;

  v11 = [STAttributedEntityResolverProvider alloc];
  v12 = [v11 initWithIdentityResolver:qword_100008310];
  v13 = qword_100008318;
  qword_100008318 = v12;

  v14 = [STAttributedEntityResolverProvider alloc];
  v15 = [v14 initWithIdentityResolver:qword_100008310];
  v16 = qword_100008320;
  qword_100008320 = v15;

  v17 = [STLocationStatusDomainDisplayNameTransformerProvider alloc];
  v18 = [v17 initWithEntityResolverProvider:qword_100008318];
  v19 = qword_100008328;
  qword_100008328 = v18;

  v20 = [STMediaStatusDomainDisplayNameTransformerProvider alloc];
  v21 = [v20 initWithEntityResolverProvider:qword_100008320];
  v22 = qword_100008330;
  qword_100008330 = v21;

  v23 = [STDataAccessStatusDomainDisplayNameTransformerProvider alloc];
  v24 = [v23 initWithEntityResolverProvider:qword_100008320];
  v25 = qword_100008338;
  qword_100008338 = v24;

  [v1 addClientDataTransformerProvider:qword_100008328 forDomain:6];
  [v1 addClientDataTransformerProvider:qword_100008330 forDomain:7];
  [v1 addClientDataTransformerProvider:qword_100008338 forDomain:4];
  v26 = objc_alloc_init(STBackgroundActivitiesStatusDomainVisualDescriptorTransformer);
  v27 = qword_100008340;
  qword_100008340 = v26;

  [v1 addDataTransformer:qword_100008340 forDomain:1];
  v28 = objc_alloc_init(STStatusItemsStatusDomainVisualDescriptorTransformer);
  v29 = qword_100008348;
  qword_100008348 = v28;

  [v1 addDataTransformer:qword_100008348 forDomain:15];
  if (_BSIsInternalInstall())
  {
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10000171C;
    v67[3] = &unk_100004248;
    v30 = v1;
    v68 = v30;
    v31 = objc_retainBlock(v67);
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10000173C;
    v65[3] = &unk_100004248;
    v66 = v30;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10000175C;
    v62[3] = &unk_100004290;
    v63 = v31;
    v64 = objc_retainBlock(v65);
    v32 = v64;
    v33 = v31;
    v34 = objc_retainBlock(v62);
    v35 = +[STSystemStatusDefaults standardDefaults];
    v36 = [v35 observeDefault:@"shouldEnableUnknownBackgroundActivities" onQueue:&_dispatch_main_q withBlock:v33];
    v37 = [v35 observeDefault:@"shouldEnableUnknownStatusItems" onQueue:&_dispatch_main_q withBlock:v32];

    v38 = [v35 observeDefault:@"shouldEnableUnknownBundles" onQueue:&_dispatch_main_q withBlock:v34];
  }

  v39 = qword_100008308;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000017A8;
  v60[3] = &unk_100004320;
  v40 = v1;
  v61 = v40;
  [v39 setHandler:v60];
  [qword_100008308 activate];
  v41 = qword_100008320;
  v42 = [qword_100008308 currentAttributions];
  [v41 setDynamicAttributions:v42];

  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  v44 = qword_100008350;
  qword_100008350 = SerialWithQoS;

  v45 = objc_alloc_init(STDataAccessStatusDomainDataProvider);
  v46 = qword_100008358;
  qword_100008358 = v45;

  v47 = [v40 internalQueuePublisherServerHandle];
  v48 = [STDataAccessStatusDomainDataProviderTransformer alloc];
  v49 = [v48 initWithDataProvider:qword_100008358 publisherServerHandle:v47];
  v50 = qword_100008360;
  qword_100008360 = v49;

  v51 = qword_100008358;
  v55 = _NSConcreteStackBlock;
  v56 = 3221225472;
  v57 = sub_100001894;
  v58 = &unk_100004368;
  v59 = v40;
  v52 = v40;
  [v51 setDataChangedHandler:&v55];
  [v52 addDataTransformer:qword_100008360 forDomain:{6, v55, v56, v57, v58}];
  [v52 addDataTransformer:qword_100008360 forDomain:7];
  notify_post("com.apple.systemstatus.server-launch");
  v53 = +[NSRunLoop currentRunLoop];
  [v53 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t sub_10000175C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000017A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = qword_100008330;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000187C;
  v7[3] = &unk_1000042B8;
  v8 = v3;
  v6 = v3;
  [v4 modifyClientDataTransformerProvider:v5 forDomain:7 usingBlock:v7];
  [*(a1 + 32) modifyClientDataTransformerProvider:qword_100008338 forDomain:4 usingBlock:&stru_1000042F8];
}

void sub_100001894(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = qword_100008350;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000192C;
    block[3] = &unk_100004248;
    v5 = *(a1 + 32);
    dispatch_async(v3, block);
  }
}