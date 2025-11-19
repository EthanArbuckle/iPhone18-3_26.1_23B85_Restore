@interface PCSPeerSyncing
- (BOOL)checkHashWithRateLimit:(id)a3;
- (PCSPeerSyncing)initWithDevice:(id)a3 syncingManager:(id)a4;
- (double)checkRatelimit:(double)a3;
- (double)timeUntilSyncing;
- (id)uuid;
- (void)checkSyncing:(BOOL)a3;
- (void)handleIncomingMessage:(id)a3;
- (void)haveKeys:(id)a3;
- (void)keyFailure:(id)a3;
- (void)sendCurrentKeys:(id)a3;
- (void)sendCurrents:(id)a3 dsid:(id)a4 handleReply:(id)a5;
- (void)sendKeys;
- (void)sendKeys:(id)a3 dsid:(id)a4 handleReply:(id)a5;
- (void)sendKeysOld;
- (void)sendSomeKeys:(id)a3 dsid:(id)a4;
- (void)updateLastSeen;
@end

@implementation PCSPeerSyncing

- (PCSPeerSyncing)initWithDevice:(id)a3 syncingManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PCSPeerSyncing;
  v9 = [(PCSPeerSyncing *)&v17 init];
  if (v9)
  {
    v10 = [PCSIDSTransport transportWithIDSServiceName:off_100040620];
    transport = v9->_transport;
    v9->_transport = v10;

    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v9->_syncingManager, a4);
    v12 = +[PCSKeySyncing defaultSyncingManager];
    v13 = [v7 idsDeviceIdentifier];
    v14 = [v12 getClientWithIdentifier:v13];
    client = v9->_client;
    v9->_client = v14;
  }

  return v9;
}

- (id)uuid
{
  v2 = [(PCSPeerSyncing *)self device];
  v3 = [v2 idsDeviceIdentifier];

  return v3;
}

- (void)updateLastSeen
{
  v3 = +[NSDate date];
  v4 = [(PCSPeerSyncing *)self client];
  [v4 setLastSeen:v3];

  v6 = +[PCSKeySyncing defaultSyncingManager];
  v5 = [(PCSPeerSyncing *)self client];
  [v6 saveClient:v5];
}

- (void)sendCurrents:(id)a3 dsid:(id)a4 handleReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(PCSPeerSyncing *)self device];
    v14 = [v13 idsDeviceIdentifier];
    *buf = 138412290;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending keys to peer: %@", buf, 0xCu);
  }

  v17[0] = @"c";
  v17[1] = @"S";
  v18[0] = &off_10003B2E8;
  v18[1] = v8;
  v17[2] = @"i";
  v18[2] = v9;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  v16 = [(PCSPeerSyncing *)self transport];
  [v16 sendMessage:v15 toDevice:self->_device withPriority:200 timeout:@"Current" logDescription:v10 handleReply:300.0];
}

- (void)sendKeys:(id)a3 dsid:(id)a4 handleReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(PCSPeerSyncing *)self device];
    v14 = [v13 idsDeviceIdentifier];
    *buf = 138412290;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending keys to peer: %@", buf, 0xCu);
  }

  v17[0] = @"c";
  v17[1] = @"K";
  v18[0] = &off_10003B300;
  v18[1] = v8;
  v17[2] = @"i";
  v18[2] = v9;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  v16 = [(PCSPeerSyncing *)self transport];
  [v16 sendMessage:v15 toDevice:self->_device withPriority:200 timeout:@"Keys" logDescription:v10 handleReply:300.0];
}

- (double)checkRatelimit:(double)a3
{
  v5 = +[NSDate date];
  v6 = [(PCSPeerSyncing *)self client];
  v7 = [v6 lastSent];
  [v5 timeIntervalSinceDate:v7];
  v9 = v8;

  result = a3 - v9;
  if (v9 > a3)
  {
    return 0.0;
  }

  return result;
}

- (double)timeUntilSyncing
{
  v3 = +[NSDate date];
  v4 = [(PCSPeerSyncing *)self client];
  v5 = [v4 lastSeen];
  [v3 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 > 604800.0)
  {
    return 0.0;
  }

  v9 = [(PCSPeerSyncing *)self client];
  v10 = [v9 failures] == 0;

  v11 = dbl_100029AD0[v10];

  [(PCSPeerSyncing *)self checkRatelimit:v11];
  return result;
}

- (BOOL)checkHashWithRateLimit:(id)a3
{
  v4 = a3;
  v5 = [(PCSPeerSyncing *)self client];
  v6 = [v5 lastHash];
  v7 = [v4 isEqualToData:v6];

  if (v7)
  {
    [(PCSPeerSyncing *)self checkRatelimit:86400.0];
    v9 = v8 > 0.0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)checkSyncing:(BOOL)a3
{
  v3 = a3;
  v5 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(PCSPeerSyncing *)self device];
    v8 = [v7 idsDeviceIdentifier];
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device %@ checking if syncing needed", buf, 0xCu);
  }

  syncingManager = self->_syncingManager;
  v10 = [(PCSPeerSyncing *)self client];
  [(PCSKeySyncing *)syncingManager updateClient:v10];

  v11 = [(PCSPeerSyncing *)self client];
  LODWORD(syncingManager) = [v11 protocolVersion] == 1;

  if (syncingManager)
  {
    [(PCSPeerSyncing *)self sendKeys];
    return;
  }

  v12 = self->_syncingManager;
  v56 = 0;
  v13 = [(PCSKeySyncing *)v12 copyAllPCSKeys:&v56];
  v54 = v56;
  if (v13)
  {
    v52 = [(PCSKeySyncing *)self->_syncingManager copySHA256Hash:v13];
    v14 = v52;
    if (!v52)
    {
      v42 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v54;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Can't get initial hash: %@", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v15 = [(PCSPeerSyncing *)self checkHashWithRateLimit:v52];
    if (v15)
    {
      v16 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [(PCSPeerSyncing *)self device];
        v19 = [v18 idsDeviceIdentifier];
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Client %@ already have uptodate keys", buf, 0xCu);
      }
    }

    v20 = [(PCSPeerSyncing *)self client];
    v21 = [v20 buildVersion];
    v22 = [(PCSPeerSyncing *)self device];
    v23 = [v22 buildVersion];
    v24 = [v21 isEqualToString:v23];

    if (!v24)
    {
      goto LABEL_20;
    }

    v25 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = [(PCSPeerSyncing *)self device];
      v28 = [v27 idsDeviceIdentifier];
      v29 = [(PCSPeerSyncing *)self client];
      v30 = [v29 buildVersion];
      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Client %@ have same os version: %@", buf, 0x16u);
    }

    if (((v15 ^ 1 | v3) & 1) == 0 && [(PCSPeerSyncing *)self ratelimitClientSyncing])
    {
      v31 = self->_syncingManager;
      v32 = [(PCSPeerSyncing *)self client];
      [(PCSKeySyncing *)v31 saveClient:v32];

      v33 = qword_1000407B8;
      v14 = v53;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        v35 = [(PCSPeerSyncing *)self device];
        v36 = [v35 idsDeviceIdentifier];
        *buf = 138412290;
        *&buf[4] = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Ratelimit sending to device %@", buf, 0xCu);

LABEL_28:
        v14 = v53;
      }
    }

    else
    {
LABEL_20:
      if (![(PCSPeerSyncing *)self pendingRequest])
      {
        [(PCSPeerSyncing *)self setKeys:v13];
        [(PCSPeerSyncing *)self setPendingRequest:1];
        v43 = [(PCSPeerSyncing *)self client];
        [v43 setNumberHandshakes:{objc_msgSend(v43, "numberHandshakes") + 1}];

        v44 = +[NSDate date];
        v45 = [(PCSPeerSyncing *)self client];
        [v45 setLastSent:v44];

        v46 = +[PCSKeySyncing defaultSyncingManager];
        v47 = [(PCSPeerSyncing *)self client];
        [v46 saveClient:v47];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3042000000;
        v62 = sub_10001264C;
        v63 = sub_100012658;
        objc_initWeak(&v64, self);
        v48 = qword_1000407B8;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [(PCSPeerSyncing *)self device];
          v50 = [v49 idsDeviceIdentifier];
          *v57 = 138412546;
          v58 = v50;
          v59 = 2112;
          v60 = v53;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Sending inital check-in to device %@ hash: %@", v57, 0x16u);
        }

        v51 = [(PCSKeySyncing *)self->_syncingManager dsid];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_100012660;
        v55[3] = &unk_1000392F0;
        v55[4] = buf;
        [(PCSPeerSyncing *)self sendCommand:1 data:v53 dsid:v51 handleReply:v55];

        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&v64);
        goto LABEL_28;
      }

      v38 = qword_1000407B8;
      v14 = v53;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        v40 = [(PCSPeerSyncing *)self device];
        v41 = [v40 idsDeviceIdentifier];
        *buf = 138412290;
        *&buf[4] = v41;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "initial request to device %@ already pending", buf, 0xCu);

        goto LABEL_28;
      }
    }

LABEL_29:

    return;
  }

  v37 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v54;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Can't get initial data: %@", buf, 0xCu);
  }
}

- (void)sendKeysOld
{
  if (![(PCSPeerSyncing *)self pendingRequest])
  {
    v7 = +[PCSKeySyncing defaultSyncingManager];
    v8 = [v7 dsid];
    if (!v8)
    {
      v20 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Can't get dsid", &buf, 2u);
      }

      goto LABEL_16;
    }

    v9 = [(PCSPeerSyncing *)self keys];

    if (!v9)
    {
      v23 = 0;
      v10 = [v7 copyAllPCSKeys:&v23];
      v11 = v23;
      [(PCSPeerSyncing *)self setKeys:v10];

      v12 = [(PCSPeerSyncing *)self keys];
      LODWORD(v10) = v12 == 0;

      if (v10)
      {
        v21 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Can't get initial data: %@", &buf, 0xCu);
        }

        goto LABEL_16;
      }
    }

    [(PCSPeerSyncing *)self setPendingRequest:1];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3042000000;
    v30 = sub_10001264C;
    v31 = sub_100012658;
    objc_initWeak(v32, self);
    v13 = qword_1000407B8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PCSPeerSyncing *)self device];
      v15 = [v14 idsDeviceIdentifier];
      v16 = +[PCSKeySyncing defaultSyncingManager];
      v17 = [(PCSPeerSyncing *)self keys];
      v18 = [v16 copySHA256Hash:v17];
      *v24 = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending keys to device %@ hash:%@", v24, 0x16u);
    }

    v19 = [(PCSPeerSyncing *)self keys];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100012EA8;
    v22[3] = &unk_1000392F0;
    v22[4] = &buf;
    [(PCSPeerSyncing *)self sendCommand:2 data:v19 dsid:v8 handleReply:v22];

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(v32);
LABEL_16:

    return;
  }

  v3 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(PCSPeerSyncing *)self device];
    v6 = [v5 idsDeviceIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendKeys request to device %@ already pending", &buf, 0xCu);
  }
}

- (void)sendSomeKeys:(id)a3 dsid:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 count];
  if ([v6 count])
  {
    if (v8 < 0xB)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v6 subarrayWithRange:{10, v8 - 10}];
      v10 = [v6 subarrayWithRange:{0, 10}];

      v6 = v10;
    }

    v16 = +[NSMutableArray array];
    v17 = +[NSMutableArray array];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000134BC;
    v30[3] = &unk_100039318;
    v30[4] = self;
    v18 = v16;
    v31 = v18;
    v19 = v17;
    v32 = v19;
    [v6 enumerateObjectsUsingBlock:v30];
    v20 = qword_1000407B8;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v18 count];
      v22 = [v9 count];
      *buf = 134218240;
      v35 = v21;
      v36 = 2048;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sending %lu (%lu left) keys to", buf, 0x16u);
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100013538;
    v25[3] = &unk_100039340;
    objc_copyWeak(&v29, &location);
    v23 = v19;
    v26 = v23;
    v24 = v9;
    v27 = v24;
    v28 = v7;
    [(PCSPeerSyncing *)self sendKeys:v18 dsid:v28 handleReply:v25];

    objc_destroyWeak(&v29);
  }

  else
  {
    v11 = qword_1000407B8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(PCSPeerSyncing *)self device];
      v13 = [v12 idsDeviceIdentifier];
      *buf = 138412290;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No key to send [to device: %@", buf, 0xCu);
    }

    v14 = [(PCSPeerSyncing *)self syncingManager];
    v15 = [(PCSDevice *)self->_device idsDeviceIdentifier];
    [v14 signalComplete:v15];

    [(PCSPeerSyncing *)self setPendingRequest:0];
  }

  objc_destroyWeak(&location);
}

- (void)sendCurrentKeys:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(PCSPeerSyncing *)self syncingManager];
  v7 = [v6 copyIdentitySet];

  if (v7)
  {
    location[1] = _NSConcreteStackBlock;
    location[2] = 3221225472;
    location[3] = sub_100013A0C;
    location[4] = &unk_100039368;
    v15 = v7;
    v8 = v5;
    v14 = v8;
    PCSServiceItemsGetEachName();
    objc_initWeak(location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013A84;
    v11[3] = &unk_100039390;
    objc_copyWeak(v12, location);
    v12[1] = v7;
    [(PCSPeerSyncing *)self sendCurrents:v8 dsid:v4 handleReply:v11];
    objc_destroyWeak(v12);
    objc_destroyWeak(location);
  }

  else
  {
    [(PCSPeerSyncing *)self setPendingRequest:0];
    v9 = [(PCSPeerSyncing *)self syncingManager];
    v10 = [(PCSDevice *)self->_device idsDeviceIdentifier];
    [v9 signalComplete:v10];
  }
}

- (void)sendKeys
{
  if (![(PCSPeerSyncing *)self pendingRequest])
  {
    v7 = [(PCSKeySyncing *)self->_syncingManager dsid];
    if (v7)
    {
      syncingManager = self->_syncingManager;
      v9 = [(PCSPeerSyncing *)self device];
      v10 = [v9 idsDeviceIdentifier];
      v11 = [(PCSKeySyncing *)syncingManager outStandingPCSKeys:v10];

      if (v11)
      {
        v12 = [(PCSKeySyncing *)self->_syncingManager iCDPStatus];
        v13 = [(PCSKeySyncing *)self->_syncingManager companionCircleMember];
        v14 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [(PCSPeerSyncing *)self client];
          *buf = 67109376;
          LODWORD(v36[0]) = v12;
          WORD2(v36[0]) = 1024;
          *(v36 + 6) = [v16 iCDP];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "local iCDP: %d, cached peer iCDP status: %d", buf, 0xEu);
        }

        v17 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v19 = [(PCSPeerSyncing *)self client];
          v20 = [v19 circle];
          *buf = 67109376;
          LODWORD(v36[0]) = v13;
          WORD2(v36[0]) = 1024;
          *(v36 + 6) = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "local circle: %d, cached peer circle status: %d", buf, 0xEu);
        }

        [(PCSPeerSyncing *)self setPendingRequest:1];
        v21 = [(PCSPeerSyncing *)self client];
        if (v12 != [v21 iCDP])
        {

LABEL_18:
          objc_initWeak(&location, self);
          v26 = qword_1000407B8;
          if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            LODWORD(v36[0]) = v12;
            WORD2(v36[0]) = 1024;
            *(v36 + 6) = v13;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Setting peer iCDP status to: %d and circle to: %d", buf, 0xEu);
          }

          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_10001401C;
          v28[3] = &unk_1000393B8;
          objc_copyWeak(&v31, &location);
          v32 = v12;
          v33 = v13;
          v27 = v11;
          v29 = v27;
          v30 = v7;
          [(PCSPeerSyncing *)self sendiCDPStatus:v12 circleStatus:v13 handleReply:v28];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&location);

          goto LABEL_22;
        }

        v24 = [(PCSPeerSyncing *)self client];
        v25 = [v24 circle];

        if (v13 != v25)
        {
          goto LABEL_18;
        }

        [(PCSPeerSyncing *)self sendSomeKeys:v11 dsid:v7];

LABEL_22:
        return;
      }

      v22 = qword_1000407B8;
      if (!os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v23 = "Can't get pending keys";
    }

    else
    {
      v22 = qword_1000407B8;
      if (!os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v23 = "Can't get dsid";
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    goto LABEL_22;
  }

  v3 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(PCSPeerSyncing *)self device];
    v6 = [v5 idsDeviceIdentifier];
    *buf = 138412290;
    v36[0] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendKeys request to device %@ already pending", buf, 0xCu);
  }
}

- (void)haveKeys:(id)a3
{
  v18 = a3;
  v4 = +[PCSKeySyncing defaultSyncingManager];
  v5 = [(PCSPeerSyncing *)self client];
  [v4 updateClient:v5];

  v6 = [(PCSPeerSyncing *)self device];
  v7 = [v6 buildVersion];
  v8 = [(PCSPeerSyncing *)self client];
  [v8 setBuildVersion:v7];

  v9 = [(PCSPeerSyncing *)self client];
  [v9 setFailures:0];

  v10 = [(PCSPeerSyncing *)self client];
  v11 = [v10 firstSync];

  if (!v11)
  {
    v12 = +[NSDate date];
    v13 = [(PCSPeerSyncing *)self client];
    [v13 setFirstSync:v12];
  }

  v14 = v18;
  if (!v18)
  {
    v14 = +[NSData data];
  }

  v19 = v14;
  v15 = [(PCSPeerSyncing *)self client];
  [v15 setLastHash:v19];

  v16 = +[PCSKeySyncing defaultSyncingManager];
  v17 = [(PCSPeerSyncing *)self client];
  [v16 saveClient:v17];
}

- (void)keyFailure:(id)a3
{
  v10 = a3;
  v4 = +[PCSKeySyncing defaultSyncingManager];
  v5 = [(PCSPeerSyncing *)self client];
  [v4 updateClient:v5];

  v6 = [(PCSPeerSyncing *)self client];
  [v6 setFailures:{objc_msgSend(v6, "failures") + 1}];

  if (!v10)
  {
    v10 = +[NSData data];
  }

  v7 = [(PCSPeerSyncing *)self client];
  [v7 setLastHash:v10];

  v8 = +[PCSKeySyncing defaultSyncingManager];
  v9 = [(PCSPeerSyncing *)self client];
  [v8 saveClient:v9];
}

- (void)handleIncomingMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v13 = self;
    v14 = 0;
LABEL_8:
    [(PCSPeerSyncing *)v13 checkSyncing:v14];
    goto LABEL_27;
  }

  v6 = [v4 message];
  v7 = [v6 objectForKeyedSubscript:@"c"];
  v8 = [v7 intValue];

  v9 = qword_1000407B8;
  v10 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
  if (v8 == 10)
  {
    if (v10)
    {
      v15 = v9;
      v16 = [(PCSPeerSyncing *)self device];
      *buf = 138412290;
      v39[0] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "handleIncomingMessage sync with escrow proxy: %@", buf, 0xCu);
    }

    [(PCSPeerSyncing *)self checkSyncing:1];
    v17 = [v5 message];
    v18 = [v17 objectForKeyedSubscript:@"s"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39[0] = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "sync with escrow proxy for service %@", buf, 0xCu);
      }

      v20 = +[PCSAccountsModel defaultAccountsModel];
      v32 = [v20 dsid];
      v33 = [v20 identifier];
      v37 = 0;
      v21 = [PCSAccountsModel settingsKeyForKey:@"nextRegistrySync" error:&v37];
      v22 = v37;
      v23 = v22;
      if (!v21 || v22)
      {
        v24 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39[0] = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
        }
      }

      v36 = 0;
      v25 = [PCSAccountsModel settingsKeyForKey:@"registrySyncIdentifier" error:&v36];
      v26 = v36;
      v27 = v26;
      if (!v25 || v26)
      {
        v28 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39[0] = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
        }
      }

      v29 = +[PCSSyncing defaultPCSSyncing];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100014CB0;
      v34[3] = &unk_1000393E0;
      v34[4] = self;
      v35 = v5;
      [v29 triggerSyncingWithEscrowProxy:v18 dsid:v32 publicKeys:0 accountIdentifier:v33 settingsKeyExpirationDate:v21 settingsKeyIdentifier:v25 complete:v34];
    }

    else
    {
      [(PCSPeerSyncing *)self sendReply:0 error:0 toMessage:v5];
    }
  }

  else
  {
    if (v8 == 4)
    {
      if (v10)
      {
        v11 = v9;
        v12 = [(PCSPeerSyncing *)self device];
        *buf = 138412290;
        v39[0] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "handleIncomingMessage watch requested keys: %@", buf, 0xCu);
      }

      v13 = self;
      v14 = 1;
      goto LABEL_8;
    }

    if (v10)
    {
      v30 = v9;
      v31 = [(PCSPeerSyncing *)self device];
      *buf = 67109378;
      LODWORD(v39[0]) = v8;
      WORD2(v39[0]) = 2112;
      *(v39 + 6) = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "handleIncomingMessage unknown command %d from device: %@", buf, 0x12u);
    }
  }

LABEL_27:
}

@end