@interface UAActivityReplay
- (BOOL)processCommand:(id)a3;
- (BOOL)processCommands:(id)a3 completionHandler:(id)a4;
- (BOOL)terminate;
- (UAActivityReplay)initWithManager:(id)a3 name:(id)a4;
- (id)scanMockAdvertisement:(id)a3;
- (id)sharingAdvertiser;
- (id)sharingReceiver;
- (void)activityPayloadFromDevice:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(unint64_t)a6 withCompletionHandler:(id)a7;
- (void)dealloc;
- (void)doAdvertiseAdvertisementPayload:(id)a3 options:(id)a4;
@end

@implementation UAActivityReplay

- (UAActivityReplay)initWithManager:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = UAActivityReplay;
  v8 = [(UACornerActionManagerHandler *)&v32 initWithManager:v6 name:v7];
  if (v8)
  {
    v9 = dispatch_queue_create("Replay", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = [(UAAdvertiser *)[UAActivityReplayAdvertiser alloc] initWithManager:v6 name:@"ReplayAdvertiser"];
    [(UAActivityReplay *)v8 setAdvertiser:v11];

    v12 = [(UAReceiver *)[UAActivityReplayReceiver alloc] initWithManager:v6 name:@"ReplayReceiver"];
    [(UAActivityReplay *)v8 setReceiver:v12];

    v13 = [[UAReplayClientController alloc] initWithManager:v6];
    [(UAActivityReplay *)v8 setClient:v13];

    v14 = +[NSMutableDictionary dictionary];
    [(UAActivityReplay *)v8 setItems:v14];

    v15 = +[NSMutableDictionary dictionary];
    pendingPayloadFetches = v8->_pendingPayloadFetches;
    v8->_pendingPayloadFetches = v15;

    v17 = objc_alloc_init(SFPeerDevice);
    v18 = [(UACornerActionManagerHandler *)v8 uuid];
    v19 = [v18 UUIDString];
    [v17 setUniqueID:v19];

    [v17 setModelIdentifier:{@"iPhone5, 1"}];
    [v17 setProductName:@"Mac OS X"];
    [v17 setProductVersion:@"9.0"];
    [v17 setProductBuildVersion:@"14A100"];
    [v17 setName:@"PEER"];
    [v17 setDeviceColor:@"Orangeish"];
    [v17 setEnclosureColor:@"Greenish"];
    [(UAActivityReplay *)v8 setPairedPeer:v17];
    v20 = [(UAActivityReplay *)v8 sharingAdvertiser];
    if (v20)
    {
      v21 = [[UAMockActivityAdvertiser alloc] initWithController:v8];
      mockAdvertiser = v8->_mockAdvertiser;
      v8->_mockAdvertiser = v21;

      v23 = [(UAActivityReplay *)v8 mockAdvertiser];
      [v20 addSFActivityAdvertiser:v23];
    }

    v24 = [(UAActivityReplay *)v8 sharingReceiver];
    if (v24)
    {
      v25 = [[UAMockActivityScanner alloc] initWithController:v8];
      mockScanner = v8->_mockScanner;
      v8->_mockScanner = v25;

      v27 = [(UAActivityReplay *)v8 mockScanner];
      [v24 addSFActivityScanner:v27];
    }

    v28 = [(UACornerActionManagerHandler *)v8 manager];
    [v28 addHandler:v8];

    v29 = [(UACornerActionManagerHandler *)v8 manager];
    [v29 scheduleUpdatingAdvertisableItems];

    v30 = [(UACornerActionManagerHandler *)v8 manager];
    [v30 scheduleBestAppDetermination:0.25];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(UAActivityReplay *)self mockScanner];
  v4 = [v3 delegate];
  v5 = [(UAActivityReplay *)self mockScanner];
  v6 = [(UAActivityReplay *)self pairedPeer];
  [v4 activityScanner:v5 lostDeviceWithDevice:v6];

  v7 = [(UAActivityReplay *)self sharingReceiver];
  if (v7)
  {
    v8 = [(UAActivityReplay *)self mockScanner];
    [v7 removeSFActivityScanner:v8];
  }

  v9 = [(UAActivityReplay *)self sharingAdvertiser];
  if (v9)
  {
    v10 = [[UAMockActivityAdvertiser alloc] initWithController:self];
    mockAdvertiser = self->_mockAdvertiser;
    self->_mockAdvertiser = v10;

    v12 = [(UAActivityReplay *)self mockAdvertiser];
    [v9 removeSFActivityAdvertiser:v12];
  }

  v13.receiver = self;
  v13.super_class = UAActivityReplay;
  [(UAActivityReplay *)&v13 dealloc];
}

- (id)sharingReceiver
{
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(UACornerActionManagerHandler *)v2 manager];
  v4 = [v3 receivers];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v2);

  return v5;
}

- (id)sharingAdvertiser
{
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(UACornerActionManagerHandler *)v2 manager];
  v4 = [v3 advertisers];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v2);

  return v5;
}

- (void)doAdvertiseAdvertisementPayload:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UAActivityReplay *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038AE8;
  block[3] = &unk_1000C5828;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (id)scanMockAdvertisement:(id)a3
{
  v4 = a3;
  if ([v4 scanString:@"[$" intoString:0])
  {
    v5 = sub_1000391E8(v4, 1);
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v5 error:0];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    v8 = [(UAActivityReplay *)self pairedPeer];
    [(UAMockActivityAdvertisement *)v7 setDevice:v8];

    [v6 finishDecoding];
LABEL_3:

LABEL_7:
    goto LABEL_8;
  }

  if (([v4 scanString:@"-" intoString:0] & 1) != 0 || objc_msgSend(v4, "scanString:intoString:", @"$-", 0))
  {
    v7 = objc_alloc_init(UAMockActivityAdvertisement);
    [(UAMockActivityAdvertisement *)v7 setAdvertisementPayload:0];
    [(UAMockActivityAdvertisement *)v7 setAdvertisementVersion:1];
    [(UAMockActivityAdvertisement *)v7 setOptions:0];
    v5 = [(UAActivityReplay *)self pairedPeer];
    [(UAMockActivityAdvertisement *)v7 setDevice:v5];
    goto LABEL_7;
  }

  if ([v4 scanString:@"$" intoString:0])
  {
    v5 = sub_1000391E8(v4, 0);
    if (v5)
    {
      v7 = objc_alloc_init(UAMockActivityAdvertisement);
      [(UAMockActivityAdvertisement *)v7 setAdvertisementVersion:1];
      [(UAMockActivityAdvertisement *)v7 setAdvertisementPayload:v5];
      v10 = [(UAActivityReplay *)self pairedPeer];
      [(UAMockActivityAdvertisement *)v7 setDevice:v10];

      if ([v4 isAtEnd])
      {
        goto LABEL_7;
      }

      v11 = [v4 string];
      v6 = [v11 substringFromIndex:{objc_msgSend(v4, "scanLocation")}];

      v12 = [v6 dataUsingEncoding:4];
      v13 = [NSJSONSerialization JSONObjectWithData:v12 options:0 error:0];

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UAMockActivityAdvertisement *)v7 setOptions:v13];
        }
      }

      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (([v4 scanString:@"http://" intoString:0] & 1) == 0)
  {
    v26 = 0;
    v14 = +[NSCharacterSet whitespaceCharacterSet];
    v25 = 0;
    v15 = [v4 scanUpToCharactersFromSet:v14 intoString:&v25];
    v5 = v25;

    if (v15)
    {
      v16 = +[NSCharacterSet whitespaceCharacterSet];
      v24 = 0;
      v17 = [v4 scanUpToCharactersFromSet:v16 intoString:&v24];
      v6 = v24;

      if (v17)
      {
        [v4 scanInteger:&v26];
      }

      v7 = objc_alloc_init(UAMockActivityAdvertisement);
      [(UAMockActivityAdvertisement *)v7 setAdvertisementVersion:1];
      v18 = [SharingBTLEAdvertisementPayload alloc];
      v19 = v26;
      v20 = [NSDate dateWithTimeIntervalSinceNow:-v26];
      LOBYTE(v23) = v19 < 10;
      v21 = [(SharingBTLEAdvertisementPayload *)v18 initWithType:1 string:v5 dynamicType:0 teamID:v6 webpageURL:0 options:0 isCurrent:v23 when:v20];
      v22 = [(SharingBTLEAdvertisementPayload *)v21 advertisementPayload];
      [(UAMockActivityAdvertisement *)v7 setAdvertisementPayload:v22];

      [(UAMockActivityAdvertisement *)v7 setOptions:0];
      v13 = [(UAActivityReplay *)self pairedPeer];
      [(UAMockActivityAdvertisement *)v7 setDevice:v13];
LABEL_23:

      goto LABEL_3;
    }

LABEL_24:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)processCommand:(id)a3
{
  v4 = a3;
  v5 = [(UAActivityReplay *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PROCESSCOMMAND:%{private}@", buf, 0xCu);
  }

  if ([v4 length] >= 0x2E && objc_msgSend(v4, "characterAtIndex:", 9) == 58 && objc_msgSend(v4, "characterAtIndex:", 12) == 58 && objc_msgSend(v4, "characterAtIndex:", 16) == 32 && objc_msgSend(v4, "characterAtIndex:", 38) == 60)
  {
    v7 = [v4 rangeOfString:@">: "];
    if (v8)
    {
      v9 = [v4 substringFromIndex:&v7[v8]];

      v4 = v9;
    }
  }

  if (([v4 hasPrefix:@"#"] & 1) == 0 && (objc_msgSend(v4, "hasPrefix:", @"//") & 1) == 0)
  {
    v11 = [NSScanner scannerWithString:v4];
    [v11 setCaseSensitive:0];
    v12 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v104 = 0;
    LODWORD(v10) = [v11 scanUpToCharactersFromSet:v12 intoString:&v104];
    v13 = v104;
    if (!v13)
    {
      LODWORD(v10) = 0;
    }

    if (!v10)
    {
      goto LABEL_39;
    }

    v14 = [v13 uppercaseString];

    v13 = v14;
    if ([v14 isEqual:@"HELP"])
    {
      [(UAActivityReplay *)self sendResponse:@"COMMANDS: ...\n"];
      [(UAActivityReplay *)self sendResponse:@" - ADVERTISEITEM:<tag> <activitytype> [<archivedUserActivityData>]\n"];
LABEL_18:
      LOBYTE(v10) = 0;
LABEL_39:

      goto LABEL_40;
    }

    if (([v14 isEqual:@"HANDOFF"] & 1) != 0 || objc_msgSend(v14, "isEqual:", @"VERSION"))
    {
      v103 = 0;
      if ([v11 scanString:@"v" intoString:0] && objc_msgSend(v11, "scanDouble:", &v103))
      {
        v15 = +[NSCharacterSet whitespaceCharacterSet];
        v102 = 0;
        v16 = [v11 scanUpToCharactersFromSet:v15 intoString:&v102];
        v17 = v102;

        if (v16)
        {
          v18 = [[NSUUID alloc] initWithUUIDString:v17];
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v20 = [(UACornerActionManagerHandler *)self manager];
      v21 = [v20 uuid];
      v22 = [v18 isEqual:v21];

      if (v22)
      {
        v23 = sub_100001A30(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v18 UUIDString];
          *buf = 138543362;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "REPLAY: Destroying replay object because the peer's UUID %{public}@ matched our own.", buf, 0xCu);
        }

        [(UAActivityReplay *)self terminate];
      }

      goto LABEL_38;
    }

    if (![v14 compare:@"STARTUP" options:1])
    {
LABEL_38:
      LOBYTE(v10) = 1;
      goto LABEL_39;
    }

    if ([v14 isEqual:@"TERMINATE"])
    {
      v19 = sub_100001A30(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "REPLAY: Terminating UAActivityReplay because TERMINATE was received.", buf, 2u);
      }

      [(UAActivityReplay *)self terminate];
      goto LABEL_18;
    }

    if ([v14 compare:@"ADVERTISEITEM" options:1])
    {
      if ([v14 compare:@"PAYLOAD" options:1])
      {
        if ([v14 compare:@"PULL" options:1])
        {
          if (![v14 compare:@"REMOVEITEM" options:1])
          {
            v52 = +[NSMutableArray array];
            v53 = sub_10003A940(v11);
            if (v53)
            {
              [v52 addObject:v53];
            }

            else if ([v11 scanString:@"all" intoString:0])
            {
              v70 = [(UAActivityReplay *)self items];
              v71 = [v70 allKeys];
              [v52 addObjectsFromArray:v71];
            }

            v72 = [v52 firstObject];
            LODWORD(v10) = v72 != 0;

            if (v10)
            {
              v73 = [(UAActivityReplay *)self items];
              v74 = [v73 objectForKeyedSubscript:v53];

              if (v74)
              {
                v75 = sub_100001A30(0);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                {
                  *buf = 138477827;
                  *&buf[4] = v74;
                  _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "=== REMOVING ACTIVITY %{private}@ to be resumed", buf, 0xCu);
                }

                v76 = [(UAActivityReplay *)self items];
                [v76 removeObjectForKey:v53];
              }
            }

            goto LABEL_39;
          }

          if ([v14 compare:@"PEERINFO" options:1])
          {
            if ([v14 compare:@"RECEIVE" options:1] && objc_msgSend(v14, "compare:options:", @"BROADCAST", 1))
            {
              if ([v14 compare:@"REQUESTPAYLOAD" options:1])
              {
                if (![v14 compare:@"RETURNPAYLOAD" options:1])
                {
                  v26 = [(UAActivityReplay *)self scanMockAdvertisement:v11];
                  v97 = sub_1000391E8(v11, 1);
                  v10 = sub_100001A30(0);
                  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138477827;
                    *&buf[4] = v26;
                    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "REPLAY: RETURNPAYLOAD request, for advertisementPayload=%{private}@", buf, 0xCu);
                  }

                  LOBYTE(v10) = v26 != 0;
                  if (v26)
                  {
                    v27 = self;
                    objc_sync_enter(v27);
                    pendingPayloadFetches = v27->_pendingPayloadFetches;
                    v29 = [v26 advertisementPayload];
                    v30 = [(NSMutableDictionary *)pendingPayloadFetches objectForKey:v29];

                    if (v30)
                    {
                      v31 = sub_100001A30(0);
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138477827;
                        *&buf[4] = v26;
                        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "REPLAY: RETURNPAYLOAD request, found existing payloadHandler in _pendingPayloadFetches for advertisementPayload=%{private}@", buf, 0xCu);
                      }

                      v32 = v27->_pendingPayloadFetches;
                      v33 = [v26 advertisementPayload];
                      [(NSMutableDictionary *)v32 removeObjectForKey:v33];
                    }

                    else
                    {
                      v33 = sub_100001A30(0);
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                      {
                        v95 = [v26 advertisementPayload];
                        v96 = sub_100006EF4(v95);
                        v92 = [(NSMutableDictionary *)v27->_pendingPayloadFetches description];
                        v93 = sub_100009684(v92);
                        *buf = 138543875;
                        *&buf[4] = v96;
                        v106 = 2113;
                        v107 = *&v26;
                        v108 = 2113;
                        v109 = v93;
                        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "REPLAY: Didn't find handler for advertisement %{public}@/%{private}@, pendingPayloads=%{private}@", buf, 0x20u);
                      }
                    }

                    objc_sync_exit(v27);
                    if (v97)
                    {
                      v94 = sub_100001A30(0);
                      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138477827;
                        *&buf[4] = v97;
                        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEBUG, "REPLAY: Sending encoded data %{private}@ to activity handler.", buf, 0xCu);
                      }

                      if (v30)
                      {
                        (v30)[2](v30, v97, 0);
                      }
                    }
                  }

                  goto LABEL_39;
                }

                goto LABEL_18;
              }

              v86 = [(UAActivityReplay *)self scanMockAdvertisement:v11];
              v87 = sub_100001A30(0);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138477827;
                *&buf[4] = v86;
                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "REPLAY: PULLPAYLOAD request, for advertisementPayload=%{private}@", buf, 0xCu);
              }

              if (v86)
              {
                v88 = [(UAActivityReplay *)self sharingAdvertiser];
                v89 = [(UAActivityReplay *)self sharingAdvertiser];
                v90 = [v86 advertisementPayload];
                v91 = [v86 device];
                v99[0] = _NSConcreteStackBlock;
                v99[1] = 3221225472;
                v99[2] = sub_10003ABA8;
                v99[3] = &unk_1000C5878;
                v99[4] = self;
                v100 = v86;
                [v88 activityAdvertiser:v89 activityPayloadForAdvertisementPayload:v90 command:@"-" requestedByDevice:v91 withCompletionHandler:v99];
              }
            }

            else
            {
              v54 = [(UAActivityReplay *)self scanMockAdvertisement:v11];
              v55 = sub_100001A30(0);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138477827;
                *&buf[4] = v54;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "NETWORK: Received broadcasted advertisement %{private}@", buf, 0xCu);
              }

              if (v54)
              {
                v56 = [(UAActivityReplay *)self pairedPeer];
                [v54 setDevice:v56];

                v57 = [(UAActivityReplay *)self sharingReceiver];
                v58 = [(UAActivityReplay *)self mockScanner];
                [v57 activityScanner:v58 receivedAdvertisement:v54];
              }
            }

            goto LABEL_38;
          }

          if ([v11 scanString:@"SF[$" intoString:0])
          {
            v59 = sub_1000391E8(v11, 0);
            v60 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v59 error:0];
            v61 = [v60 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
            [(UAActivityReplay *)self setPairedPeer:v61];

            v62 = [(UAActivityReplay *)self pairedPeer];
            v63 = [v62 uniqueID];
            v64 = v63 == 0;

            if (v64)
            {
              v65 = [(UACornerActionManagerHandler *)self uuid];
              v66 = [v65 UUIDString];
              v67 = [(UAActivityReplay *)self pairedPeer];
              [v67 setUniqueID:v66];

              v68 = [(UAActivityReplay *)self pairedPeer];
              v69 = [v68 name];
              [(UACornerActionManagerHandler *)self setName:v69];
            }

            [v60 finishDecoding];
          }

          else
          {
            if ([v11 scanString:@"[$" intoString:0])
            {
LABEL_115:
              v85 = [(UAActivityReplay *)self pairedPeer];
              LOBYTE(v10) = v85 != 0;

              goto LABEL_39;
            }

            v59 = objc_alloc_init(SFPeerDevice);
            v77 = +[NSUUID UUID];
            v78 = [v77 UUIDString];
            [v59 setUniqueID:v78];

            v79 = sub_10003A9F8(v11);
            [v59 setName:v79];

            v80 = sub_10003A9F8(v11);
            [v59 setModelIdentifier:v80];

            v81 = sub_10003A9F8(v11);
            [v59 setProductName:v81];

            v82 = sub_10003A9F8(v11);
            [v59 setProductVersion:v82];

            v83 = sub_10003A9F8(v11);
            [v59 setProductBuildVersion:v83];

            [(UAActivityReplay *)self setPairedPeer:v59];
            v60 = [(UAActivityReplay *)self pairedPeer];
            v84 = [v60 name];
            [(UACornerActionManagerHandler *)self setName:v84];
          }

          goto LABEL_115;
        }

        v41 = sub_10003A940(v11);
        LOBYTE(v10) = v41 != 0;
        if (!v41)
        {
LABEL_88:

          goto LABEL_39;
        }

        v46 = [(UAActivityReplay *)self items];
        v43 = [v46 objectForKeyedSubscript:v41];

        if (v43)
        {
          *buf = 0;
          if ([v11 scanDouble:buf])
          {
            v47 = *buf;
          }

          else
          {
            v47 = 15.0;
          }

          v48 = sub_1000391E8(v11, 1);
          if (v48)
          {
            [v43 setPayload:v48 identifier:UAUserActivityUserInfoPayload];
          }

          v49 = sub_100001A30(0);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138478083;
            *&buf[4] = v43;
            v106 = 2048;
            v107 = v47;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "=== WAITING FOR ACTIVITY %{private}@ to be resumed (for %g seconds)", buf, 0x16u);
          }

          v50 = [v43 wasResumed];
          v51 = dispatch_time(0, (v47 * 1000000000.0));
          dispatch_semaphore_wait(v50, v51);
        }
      }

      else
      {
        v41 = sub_10003A940(v11);
        if (!v41)
        {
          LOBYTE(v10) = 0;
          goto LABEL_88;
        }

        v42 = [(UAActivityReplay *)self items];
        v43 = [v42 objectForKeyedSubscript:v41];

        LOBYTE(v10) = v43 != 0;
        if (v43)
        {
          v44 = sub_1000391E8(v11, 1);
          if (v44)
          {
            [v43 setPayload:v44 identifier:UAUserActivityUserInfoPayload];
          }

          v45 = sub_100001A30(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            *&buf[4] = v43;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "=== UPDATED PAYLOD FOR item %{private}@ ", buf, 0xCu);
          }
        }
      }

      goto LABEL_88;
    }

    v34 = sub_10003A940(v11);
    if (!v34)
    {
      v36 = 0;
      LOBYTE(v10) = 0;
      goto LABEL_90;
    }

    v35 = +[NSCharacterSet whitespaceCharacterSet];
    if ([v11 scanUpToCharactersFromSet:v35 intoString:0] && objc_msgSend(v11, "scanString:intoString:", @"[", 0))
    {
      v101 = 0;
      LODWORD(v10) = [v11 scanUpToString:@"]" intoString:&v101];
      v36 = v101;
      if (v10)
      {
        LODWORD(v10) = [v11 scanString:@"]" intoString:0];

        if (!v10)
        {
LABEL_90:

          goto LABEL_39;
        }

        v35 = sub_10000A30C(v36);
        v98 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v35 error:0];
        v37 = [v98 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        LOBYTE(v10) = v37 != 0;
        if (v37)
        {
          v38 = [(UAActivityReplay *)self items];
          [v38 setObject:v37 forKeyedSubscript:v34];

          v39 = sub_100001A30(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            *&buf[4] = v37;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "=== Forcing item into replay client: %{private}@", buf, 0xCu);
          }

          v40 = [(UAActivityReplay *)self client];
          [v40 addItem:v37];
        }

        [v98 finishDecoding];
      }
    }

    else
    {
      v36 = 0;
      LOBYTE(v10) = 0;
    }

    goto LABEL_90;
  }

  LOBYTE(v10) = 1;
LABEL_40:

  return v10;
}

- (BOOL)processCommands:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UAActivityReplay *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AFCC;
  block[3] = &unk_1000C58A0;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  return 1;
}

- (void)activityPayloadFromDevice:(id)a3 forAdvertisementPayload:(id)a4 command:(id)a5 timeout:(unint64_t)a6 withCompletionHandler:(id)a7
{
  v15 = a4;
  v9 = a7;
  v10 = sub_100006EF4(v15);
  v11 = [NSString stringWithFormat:@"REQUESTPAYLOAD $%@\n", v10];
  [(UAActivityReplay *)self sendResponse:v11];

  v12 = self;
  objc_sync_enter(v12);
  pendingPayloadFetches = v12->_pendingPayloadFetches;
  v14 = objc_retainBlock(v9);
  [(NSMutableDictionary *)pendingPayloadFetches setObject:v14 forKey:v15];

  objc_sync_exit(v12);
}

- (BOOL)terminate
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "terminate", buf, 2u);
  }

  v4 = [(UAActivityReplay *)self pairedPeer];
  v5 = v4 == 0;

  if (!v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(UACornerActionManagerHandler *)self manager];
    v7 = [v6 receivers];

    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            v12 = [(UAActivityReplay *)self pairedPeer];
            v13 = [v12 uniqueID];
            [v11 lostDeviceWithUUID:v13];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v8);
    }
  }

  v14 = [(UAActivityReplay *)self sharingReceiver];
  v15 = [(UAActivityReplay *)self mockScanner];
  [v14 removeSFActivityScanner:v15];

  v16 = [(UAActivityReplay *)self sharingAdvertiser];
  v17 = [(UAActivityReplay *)self mockAdvertiser];
  [v16 removeSFActivityAdvertiser:v17];

  v18 = [(UACornerActionManagerHandler *)self manager];
  v19 = [(UAActivityReplay *)self receiver];
  [v18 removeReceiver:v19];

  v20 = [(UACornerActionManagerHandler *)self manager];
  v21 = [(UAActivityReplay *)self advertiser];
  [v20 removeAdvertiser:v21];

  v22 = [(UAActivityReplay *)self receiver];
  [v22 terminate];

  v23 = [(UAActivityReplay *)self advertiser];
  [v23 terminate];

  v24 = [(UACornerActionManagerHandler *)self manager];
  [v24 removeHandler:self];

  return 1;
}

@end