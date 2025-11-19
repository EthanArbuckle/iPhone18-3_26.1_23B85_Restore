uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(SYBacklinkMonitorService);
  v2 = qword_100008020;
  qword_100008020 = v1;

  [qword_100008020 beginListeningToConnections];
  v3 = objc_alloc_init(SYLinkContextService);
  v4 = qword_100008028;
  qword_100008028 = v3;

  [qword_100008028 beginListeningToConnections];
  v5 = objc_alloc_init(SYAddLinkContextService);
  v6 = qword_100008030;
  qword_100008030 = v5;

  [qword_100008030 setDelegate:qword_100008028];
  [qword_100008030 beginListeningToConnections];
  v7 = objc_alloc_init(SYNotesActivationService);
  v8 = qword_100008038;
  qword_100008038 = v7;

  [qword_100008038 beginListeningToConnections];
  if (SYIsReturnToSenderEnabled())
  {
    v9 = objc_alloc_init(SYDocumentWorkflowsService);
    v10 = qword_100008040;
    qword_100008040 = v9;

    [qword_100008040 beginListeningToConnections];
  }

  objc_autoreleasePoolPop(v0);
  v11 = +[NSRunLoop mainRunLoop];
  [v11 run];

  return 0;
}