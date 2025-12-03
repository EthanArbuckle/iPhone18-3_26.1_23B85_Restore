@interface PCSPeerSyncing
- (BOOL)checkHashWithRateLimit:(id)limit;
- (PCSPeerSyncing)initWithDevice:(id)device syncingManager:(id)manager;
- (double)checkRatelimit:(double)ratelimit;
- (double)timeUntilSyncing;
- (id)uuid;
- (void)checkSyncing:(BOOL)syncing;
- (void)handleIncomingMessage:(id)message;
- (void)haveKeys:(id)keys;
- (void)keyFailure:(id)failure;
- (void)sendCurrentKeys:(id)keys;
- (void)sendCurrents:(id)currents dsid:(id)dsid handleReply:(id)reply;
- (void)sendKeys;
- (void)sendKeys:(id)keys dsid:(id)dsid handleReply:(id)reply;
- (void)sendKeysOld;
- (void)sendSomeKeys:(id)keys dsid:(id)dsid;
- (void)updateLastSeen;
@end

@implementation PCSPeerSyncing

- (PCSPeerSyncing)initWithDevice:(id)device syncingManager:(id)manager
{
  deviceCopy = device;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PCSPeerSyncing;
  v9 = [(PCSPeerSyncing *)&v17 init];
  if (v9)
  {
    v10 = [PCSIDSTransport transportWithIDSServiceName:off_100040620];
    transport = v9->_transport;
    v9->_transport = v10;

    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v9->_syncingManager, manager);
    v12 = +[PCSKeySyncing defaultSyncingManager];
    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    v14 = [v12 getClientWithIdentifier:idsDeviceIdentifier];
    client = v9->_client;
    v9->_client = v14;
  }

  return v9;
}

- (id)uuid
{
  device = [(PCSPeerSyncing *)self device];
  idsDeviceIdentifier = [device idsDeviceIdentifier];

  return idsDeviceIdentifier;
}

- (void)updateLastSeen
{
  v3 = +[NSDate date];
  client = [(PCSPeerSyncing *)self client];
  [client setLastSeen:v3];

  v6 = +[PCSKeySyncing defaultSyncingManager];
  client2 = [(PCSPeerSyncing *)self client];
  [v6 saveClient:client2];
}

- (void)sendCurrents:(id)currents dsid:(id)dsid handleReply:(id)reply
{
  currentsCopy = currents;
  dsidCopy = dsid;
  replyCopy = reply;
  v11 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    device = [(PCSPeerSyncing *)self device];
    idsDeviceIdentifier = [device idsDeviceIdentifier];
    *buf = 138412290;
    v20 = idsDeviceIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending keys to peer: %@", buf, 0xCu);
  }

  v17[0] = @"c";
  v17[1] = @"S";
  v18[0] = &off_10003B2E8;
  v18[1] = currentsCopy;
  v17[2] = @"i";
  v18[2] = dsidCopy;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  transport = [(PCSPeerSyncing *)self transport];
  [transport sendMessage:v15 toDevice:self->_device withPriority:200 timeout:@"Current" logDescription:replyCopy handleReply:300.0];
}

- (void)sendKeys:(id)keys dsid:(id)dsid handleReply:(id)reply
{
  keysCopy = keys;
  dsidCopy = dsid;
  replyCopy = reply;
  v11 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    device = [(PCSPeerSyncing *)self device];
    idsDeviceIdentifier = [device idsDeviceIdentifier];
    *buf = 138412290;
    v20 = idsDeviceIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending keys to peer: %@", buf, 0xCu);
  }

  v17[0] = @"c";
  v17[1] = @"K";
  v18[0] = &off_10003B300;
  v18[1] = keysCopy;
  v17[2] = @"i";
  v18[2] = dsidCopy;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
  transport = [(PCSPeerSyncing *)self transport];
  [transport sendMessage:v15 toDevice:self->_device withPriority:200 timeout:@"Keys" logDescription:replyCopy handleReply:300.0];
}

- (double)checkRatelimit:(double)ratelimit
{
  v5 = +[NSDate date];
  client = [(PCSPeerSyncing *)self client];
  lastSent = [client lastSent];
  [v5 timeIntervalSinceDate:lastSent];
  v9 = v8;

  result = ratelimit - v9;
  if (v9 > ratelimit)
  {
    return 0.0;
  }

  return result;
}

- (double)timeUntilSyncing
{
  v3 = +[NSDate date];
  client = [(PCSPeerSyncing *)self client];
  lastSeen = [client lastSeen];
  [v3 timeIntervalSinceDate:lastSeen];
  v7 = v6;

  if (v7 > 604800.0)
  {
    return 0.0;
  }

  client2 = [(PCSPeerSyncing *)self client];
  v10 = [client2 failures] == 0;

  v11 = dbl_100029AD0[v10];

  [(PCSPeerSyncing *)self checkRatelimit:v11];
  return result;
}

- (BOOL)checkHashWithRateLimit:(id)limit
{
  limitCopy = limit;
  client = [(PCSPeerSyncing *)self client];
  lastHash = [client lastHash];
  v7 = [limitCopy isEqualToData:lastHash];

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

- (void)checkSyncing:(BOOL)syncing
{
  syncingCopy = syncing;
  v5 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    device = [(PCSPeerSyncing *)self device];
    idsDeviceIdentifier = [device idsDeviceIdentifier];
    *buf = 138412290;
    *&buf[4] = idsDeviceIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device %@ checking if syncing needed", buf, 0xCu);
  }

  syncingManager = self->_syncingManager;
  client = [(PCSPeerSyncing *)self client];
  [(PCSKeySyncing *)syncingManager updateClient:client];

  client2 = [(PCSPeerSyncing *)self client];
  LODWORD(syncingManager) = [client2 protocolVersion] == 1;

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
        device2 = [(PCSPeerSyncing *)self device];
        idsDeviceIdentifier2 = [device2 idsDeviceIdentifier];
        *buf = 138412290;
        *&buf[4] = idsDeviceIdentifier2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Client %@ already have uptodate keys", buf, 0xCu);
      }
    }

    client3 = [(PCSPeerSyncing *)self client];
    buildVersion = [client3 buildVersion];
    device3 = [(PCSPeerSyncing *)self device];
    buildVersion2 = [device3 buildVersion];
    v24 = [buildVersion isEqualToString:buildVersion2];

    if (!v24)
    {
      goto LABEL_20;
    }

    v25 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      device4 = [(PCSPeerSyncing *)self device];
      idsDeviceIdentifier3 = [device4 idsDeviceIdentifier];
      client4 = [(PCSPeerSyncing *)self client];
      buildVersion3 = [client4 buildVersion];
      *buf = 138412546;
      *&buf[4] = idsDeviceIdentifier3;
      *&buf[12] = 2112;
      *&buf[14] = buildVersion3;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Client %@ have same os version: %@", buf, 0x16u);
    }

    if (((v15 ^ 1 | syncingCopy) & 1) == 0 && [(PCSPeerSyncing *)self ratelimitClientSyncing])
    {
      v31 = self->_syncingManager;
      client5 = [(PCSPeerSyncing *)self client];
      [(PCSKeySyncing *)v31 saveClient:client5];

      v33 = qword_1000407B8;
      v14 = v53;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        device5 = [(PCSPeerSyncing *)self device];
        idsDeviceIdentifier4 = [device5 idsDeviceIdentifier];
        *buf = 138412290;
        *&buf[4] = idsDeviceIdentifier4;
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
        client6 = [(PCSPeerSyncing *)self client];
        [client6 setNumberHandshakes:{objc_msgSend(client6, "numberHandshakes") + 1}];

        v44 = +[NSDate date];
        client7 = [(PCSPeerSyncing *)self client];
        [client7 setLastSent:v44];

        v46 = +[PCSKeySyncing defaultSyncingManager];
        client8 = [(PCSPeerSyncing *)self client];
        [v46 saveClient:client8];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3042000000;
        v62 = sub_10001264C;
        v63 = sub_100012658;
        objc_initWeak(&v64, self);
        v48 = qword_1000407B8;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          device6 = [(PCSPeerSyncing *)self device];
          idsDeviceIdentifier5 = [device6 idsDeviceIdentifier];
          *v57 = 138412546;
          v58 = idsDeviceIdentifier5;
          v59 = 2112;
          v60 = v53;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Sending inital check-in to device %@ hash: %@", v57, 0x16u);
        }

        dsid = [(PCSKeySyncing *)self->_syncingManager dsid];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_100012660;
        v55[3] = &unk_1000392F0;
        v55[4] = buf;
        [(PCSPeerSyncing *)self sendCommand:1 data:v53 dsid:dsid handleReply:v55];

        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&v64);
        goto LABEL_28;
      }

      v38 = qword_1000407B8;
      v14 = v53;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        device7 = [(PCSPeerSyncing *)self device];
        idsDeviceIdentifier6 = [device7 idsDeviceIdentifier];
        *buf = 138412290;
        *&buf[4] = idsDeviceIdentifier6;
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
    dsid = [v7 dsid];
    if (!dsid)
    {
      v20 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Can't get dsid", &buf, 2u);
      }

      goto LABEL_16;
    }

    keys = [(PCSPeerSyncing *)self keys];

    if (!keys)
    {
      v23 = 0;
      v10 = [v7 copyAllPCSKeys:&v23];
      v11 = v23;
      [(PCSPeerSyncing *)self setKeys:v10];

      keys2 = [(PCSPeerSyncing *)self keys];
      LODWORD(v10) = keys2 == 0;

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
      device = [(PCSPeerSyncing *)self device];
      idsDeviceIdentifier = [device idsDeviceIdentifier];
      v16 = +[PCSKeySyncing defaultSyncingManager];
      keys3 = [(PCSPeerSyncing *)self keys];
      v18 = [v16 copySHA256Hash:keys3];
      *v24 = 138412546;
      v25 = idsDeviceIdentifier;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending keys to device %@ hash:%@", v24, 0x16u);
    }

    keys4 = [(PCSPeerSyncing *)self keys];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100012EA8;
    v22[3] = &unk_1000392F0;
    v22[4] = &buf;
    [(PCSPeerSyncing *)self sendCommand:2 data:keys4 dsid:dsid handleReply:v22];

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(v32);
LABEL_16:

    return;
  }

  v3 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    device2 = [(PCSPeerSyncing *)self device];
    idsDeviceIdentifier2 = [device2 idsDeviceIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = idsDeviceIdentifier2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendKeys request to device %@ already pending", &buf, 0xCu);
  }
}

- (void)sendSomeKeys:(id)keys dsid:(id)dsid
{
  keysCopy = keys;
  dsidCopy = dsid;
  objc_initWeak(&location, self);
  v8 = [keysCopy count];
  if ([keysCopy count])
  {
    if (v8 < 0xB)
    {
      v9 = 0;
    }

    else
    {
      v9 = [keysCopy subarrayWithRange:{10, v8 - 10}];
      v10 = [keysCopy subarrayWithRange:{0, 10}];

      keysCopy = v10;
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
    [keysCopy enumerateObjectsUsingBlock:v30];
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
    v28 = dsidCopy;
    [(PCSPeerSyncing *)self sendKeys:v18 dsid:v28 handleReply:v25];

    objc_destroyWeak(&v29);
  }

  else
  {
    v11 = qword_1000407B8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      device = [(PCSPeerSyncing *)self device];
      idsDeviceIdentifier = [device idsDeviceIdentifier];
      *buf = 138412290;
      v35 = idsDeviceIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No key to send [to device: %@", buf, 0xCu);
    }

    syncingManager = [(PCSPeerSyncing *)self syncingManager];
    idsDeviceIdentifier2 = [(PCSDevice *)self->_device idsDeviceIdentifier];
    [syncingManager signalComplete:idsDeviceIdentifier2];

    [(PCSPeerSyncing *)self setPendingRequest:0];
  }

  objc_destroyWeak(&location);
}

- (void)sendCurrentKeys:(id)keys
{
  keysCopy = keys;
  v5 = +[NSMutableDictionary dictionary];
  syncingManager = [(PCSPeerSyncing *)self syncingManager];
  copyIdentitySet = [syncingManager copyIdentitySet];

  if (copyIdentitySet)
  {
    location[1] = _NSConcreteStackBlock;
    location[2] = 3221225472;
    location[3] = sub_100013A0C;
    location[4] = &unk_100039368;
    v15 = copyIdentitySet;
    v8 = v5;
    v14 = v8;
    PCSServiceItemsGetEachName();
    objc_initWeak(location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100013A84;
    v11[3] = &unk_100039390;
    objc_copyWeak(v12, location);
    v12[1] = copyIdentitySet;
    [(PCSPeerSyncing *)self sendCurrents:v8 dsid:keysCopy handleReply:v11];
    objc_destroyWeak(v12);
    objc_destroyWeak(location);
  }

  else
  {
    [(PCSPeerSyncing *)self setPendingRequest:0];
    syncingManager2 = [(PCSPeerSyncing *)self syncingManager];
    idsDeviceIdentifier = [(PCSDevice *)self->_device idsDeviceIdentifier];
    [syncingManager2 signalComplete:idsDeviceIdentifier];
  }
}

- (void)sendKeys
{
  if (![(PCSPeerSyncing *)self pendingRequest])
  {
    dsid = [(PCSKeySyncing *)self->_syncingManager dsid];
    if (dsid)
    {
      syncingManager = self->_syncingManager;
      device = [(PCSPeerSyncing *)self device];
      idsDeviceIdentifier = [device idsDeviceIdentifier];
      v11 = [(PCSKeySyncing *)syncingManager outStandingPCSKeys:idsDeviceIdentifier];

      if (v11)
      {
        iCDPStatus = [(PCSKeySyncing *)self->_syncingManager iCDPStatus];
        companionCircleMember = [(PCSKeySyncing *)self->_syncingManager companionCircleMember];
        v14 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          client = [(PCSPeerSyncing *)self client];
          *buf = 67109376;
          LODWORD(v36[0]) = iCDPStatus;
          WORD2(v36[0]) = 1024;
          *(v36 + 6) = [client iCDP];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "local iCDP: %d, cached peer iCDP status: %d", buf, 0xEu);
        }

        v17 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          client2 = [(PCSPeerSyncing *)self client];
          circle = [client2 circle];
          *buf = 67109376;
          LODWORD(v36[0]) = companionCircleMember;
          WORD2(v36[0]) = 1024;
          *(v36 + 6) = circle;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "local circle: %d, cached peer circle status: %d", buf, 0xEu);
        }

        [(PCSPeerSyncing *)self setPendingRequest:1];
        client3 = [(PCSPeerSyncing *)self client];
        if (iCDPStatus != [client3 iCDP])
        {

LABEL_18:
          objc_initWeak(&location, self);
          v26 = qword_1000407B8;
          if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            LODWORD(v36[0]) = iCDPStatus;
            WORD2(v36[0]) = 1024;
            *(v36 + 6) = companionCircleMember;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Setting peer iCDP status to: %d and circle to: %d", buf, 0xEu);
          }

          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_10001401C;
          v28[3] = &unk_1000393B8;
          objc_copyWeak(&v31, &location);
          v32 = iCDPStatus;
          v33 = companionCircleMember;
          v27 = v11;
          v29 = v27;
          v30 = dsid;
          [(PCSPeerSyncing *)self sendiCDPStatus:iCDPStatus circleStatus:companionCircleMember handleReply:v28];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&location);

          goto LABEL_22;
        }

        client4 = [(PCSPeerSyncing *)self client];
        circle2 = [client4 circle];

        if (companionCircleMember != circle2)
        {
          goto LABEL_18;
        }

        [(PCSPeerSyncing *)self sendSomeKeys:v11 dsid:dsid];

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
    device2 = [(PCSPeerSyncing *)self device];
    idsDeviceIdentifier2 = [device2 idsDeviceIdentifier];
    *buf = 138412290;
    v36[0] = idsDeviceIdentifier2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendKeys request to device %@ already pending", buf, 0xCu);
  }
}

- (void)haveKeys:(id)keys
{
  keysCopy = keys;
  v4 = +[PCSKeySyncing defaultSyncingManager];
  client = [(PCSPeerSyncing *)self client];
  [v4 updateClient:client];

  device = [(PCSPeerSyncing *)self device];
  buildVersion = [device buildVersion];
  client2 = [(PCSPeerSyncing *)self client];
  [client2 setBuildVersion:buildVersion];

  client3 = [(PCSPeerSyncing *)self client];
  [client3 setFailures:0];

  client4 = [(PCSPeerSyncing *)self client];
  firstSync = [client4 firstSync];

  if (!firstSync)
  {
    v12 = +[NSDate date];
    client5 = [(PCSPeerSyncing *)self client];
    [client5 setFirstSync:v12];
  }

  v14 = keysCopy;
  if (!keysCopy)
  {
    v14 = +[NSData data];
  }

  v19 = v14;
  client6 = [(PCSPeerSyncing *)self client];
  [client6 setLastHash:v19];

  v16 = +[PCSKeySyncing defaultSyncingManager];
  client7 = [(PCSPeerSyncing *)self client];
  [v16 saveClient:client7];
}

- (void)keyFailure:(id)failure
{
  failureCopy = failure;
  v4 = +[PCSKeySyncing defaultSyncingManager];
  client = [(PCSPeerSyncing *)self client];
  [v4 updateClient:client];

  client2 = [(PCSPeerSyncing *)self client];
  [client2 setFailures:{objc_msgSend(client2, "failures") + 1}];

  if (!failureCopy)
  {
    failureCopy = +[NSData data];
  }

  client3 = [(PCSPeerSyncing *)self client];
  [client3 setLastHash:failureCopy];

  v8 = +[PCSKeySyncing defaultSyncingManager];
  client4 = [(PCSPeerSyncing *)self client];
  [v8 saveClient:client4];
}

- (void)handleIncomingMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (!messageCopy)
  {
    selfCopy2 = self;
    v14 = 0;
LABEL_8:
    [(PCSPeerSyncing *)selfCopy2 checkSyncing:v14];
    goto LABEL_27;
  }

  message = [messageCopy message];
  v7 = [message objectForKeyedSubscript:@"c"];
  intValue = [v7 intValue];

  v9 = qword_1000407B8;
  v10 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
  if (intValue == 10)
  {
    if (v10)
    {
      v15 = v9;
      device = [(PCSPeerSyncing *)self device];
      *buf = 138412290;
      v39[0] = device;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "handleIncomingMessage sync with escrow proxy: %@", buf, 0xCu);
    }

    [(PCSPeerSyncing *)self checkSyncing:1];
    message2 = [v5 message];
    v18 = [message2 objectForKeyedSubscript:@"s"];

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
      dsid = [v20 dsid];
      identifier = [v20 identifier];
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
      [v29 triggerSyncingWithEscrowProxy:v18 dsid:dsid publicKeys:0 accountIdentifier:identifier settingsKeyExpirationDate:v21 settingsKeyIdentifier:v25 complete:v34];
    }

    else
    {
      [(PCSPeerSyncing *)self sendReply:0 error:0 toMessage:v5];
    }
  }

  else
  {
    if (intValue == 4)
    {
      if (v10)
      {
        v11 = v9;
        device2 = [(PCSPeerSyncing *)self device];
        *buf = 138412290;
        v39[0] = device2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "handleIncomingMessage watch requested keys: %@", buf, 0xCu);
      }

      selfCopy2 = self;
      v14 = 1;
      goto LABEL_8;
    }

    if (v10)
    {
      v30 = v9;
      device3 = [(PCSPeerSyncing *)self device];
      *buf = 67109378;
      LODWORD(v39[0]) = intValue;
      WORD2(v39[0]) = 2112;
      *(v39 + 6) = device3;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "handleIncomingMessage unknown command %d from device: %@", buf, 0x12u);
    }
  }

LABEL_27:
}

@end