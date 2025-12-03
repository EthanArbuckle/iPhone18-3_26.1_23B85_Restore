@interface UAActivityReplay
- (BOOL)processCommand:(id)command;
- (BOOL)processCommands:(id)commands completionHandler:(id)handler;
- (BOOL)terminate;
- (UAActivityReplay)initWithManager:(id)manager name:(id)name;
- (id)scanMockAdvertisement:(id)advertisement;
- (id)sharingAdvertiser;
- (id)sharingReceiver;
- (void)activityPayloadFromDevice:(id)device forAdvertisementPayload:(id)payload command:(id)command timeout:(unint64_t)timeout withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)doAdvertiseAdvertisementPayload:(id)payload options:(id)options;
@end

@implementation UAActivityReplay

- (UAActivityReplay)initWithManager:(id)manager name:(id)name
{
  managerCopy = manager;
  nameCopy = name;
  v32.receiver = self;
  v32.super_class = UAActivityReplay;
  v8 = [(UACornerActionManagerHandler *)&v32 initWithManager:managerCopy name:nameCopy];
  if (v8)
  {
    v9 = dispatch_queue_create("Replay", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = [(UAAdvertiser *)[UAActivityReplayAdvertiser alloc] initWithManager:managerCopy name:@"ReplayAdvertiser"];
    [(UAActivityReplay *)v8 setAdvertiser:v11];

    v12 = [(UAReceiver *)[UAActivityReplayReceiver alloc] initWithManager:managerCopy name:@"ReplayReceiver"];
    [(UAActivityReplay *)v8 setReceiver:v12];

    v13 = [[UAReplayClientController alloc] initWithManager:managerCopy];
    [(UAActivityReplay *)v8 setClient:v13];

    v14 = +[NSMutableDictionary dictionary];
    [(UAActivityReplay *)v8 setItems:v14];

    v15 = +[NSMutableDictionary dictionary];
    pendingPayloadFetches = v8->_pendingPayloadFetches;
    v8->_pendingPayloadFetches = v15;

    v17 = objc_alloc_init(SFPeerDevice);
    uuid = [(UACornerActionManagerHandler *)v8 uuid];
    uUIDString = [uuid UUIDString];
    [v17 setUniqueID:uUIDString];

    [v17 setModelIdentifier:{@"iPhone5, 1"}];
    [v17 setProductName:@"Mac OS X"];
    [v17 setProductVersion:@"9.0"];
    [v17 setProductBuildVersion:@"14A100"];
    [v17 setName:@"PEER"];
    [v17 setDeviceColor:@"Orangeish"];
    [v17 setEnclosureColor:@"Greenish"];
    [(UAActivityReplay *)v8 setPairedPeer:v17];
    sharingAdvertiser = [(UAActivityReplay *)v8 sharingAdvertiser];
    if (sharingAdvertiser)
    {
      v21 = [[UAMockActivityAdvertiser alloc] initWithController:v8];
      mockAdvertiser = v8->_mockAdvertiser;
      v8->_mockAdvertiser = v21;

      mockAdvertiser = [(UAActivityReplay *)v8 mockAdvertiser];
      [sharingAdvertiser addSFActivityAdvertiser:mockAdvertiser];
    }

    sharingReceiver = [(UAActivityReplay *)v8 sharingReceiver];
    if (sharingReceiver)
    {
      v25 = [[UAMockActivityScanner alloc] initWithController:v8];
      mockScanner = v8->_mockScanner;
      v8->_mockScanner = v25;

      mockScanner = [(UAActivityReplay *)v8 mockScanner];
      [sharingReceiver addSFActivityScanner:mockScanner];
    }

    manager = [(UACornerActionManagerHandler *)v8 manager];
    [manager addHandler:v8];

    manager2 = [(UACornerActionManagerHandler *)v8 manager];
    [manager2 scheduleUpdatingAdvertisableItems];

    manager3 = [(UACornerActionManagerHandler *)v8 manager];
    [manager3 scheduleBestAppDetermination:0.25];
  }

  return v8;
}

- (void)dealloc
{
  mockScanner = [(UAActivityReplay *)self mockScanner];
  delegate = [mockScanner delegate];
  mockScanner2 = [(UAActivityReplay *)self mockScanner];
  pairedPeer = [(UAActivityReplay *)self pairedPeer];
  [delegate activityScanner:mockScanner2 lostDeviceWithDevice:pairedPeer];

  sharingReceiver = [(UAActivityReplay *)self sharingReceiver];
  if (sharingReceiver)
  {
    mockScanner3 = [(UAActivityReplay *)self mockScanner];
    [sharingReceiver removeSFActivityScanner:mockScanner3];
  }

  sharingAdvertiser = [(UAActivityReplay *)self sharingAdvertiser];
  if (sharingAdvertiser)
  {
    v10 = [[UAMockActivityAdvertiser alloc] initWithController:self];
    mockAdvertiser = self->_mockAdvertiser;
    self->_mockAdvertiser = v10;

    mockAdvertiser = [(UAActivityReplay *)self mockAdvertiser];
    [sharingAdvertiser removeSFActivityAdvertiser:mockAdvertiser];
  }

  v13.receiver = self;
  v13.super_class = UAActivityReplay;
  [(UAActivityReplay *)&v13 dealloc];
}

- (id)sharingReceiver
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  manager = [(UACornerActionManagerHandler *)selfCopy manager];
  receivers = [manager receivers];

  v5 = [receivers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(receivers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [receivers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v5;
}

- (id)sharingAdvertiser
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  manager = [(UACornerActionManagerHandler *)selfCopy manager];
  advertisers = [manager advertisers];

  v5 = [advertisers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(advertisers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [advertisers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)doAdvertiseAdvertisementPayload:(id)payload options:(id)options
{
  payloadCopy = payload;
  optionsCopy = options;
  queue = [(UAActivityReplay *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038AE8;
  block[3] = &unk_1000C5828;
  v12 = optionsCopy;
  selfCopy = self;
  v14 = payloadCopy;
  v9 = payloadCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (id)scanMockAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  if ([advertisementCopy scanString:@"[$" intoString:0])
  {
    pairedPeer2 = sub_1000391E8(advertisementCopy, 1);
    v6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:pairedPeer2 error:0];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    pairedPeer = [(UAActivityReplay *)self pairedPeer];
    [(UAMockActivityAdvertisement *)v7 setDevice:pairedPeer];

    [v6 finishDecoding];
LABEL_3:

LABEL_7:
    goto LABEL_8;
  }

  if (([advertisementCopy scanString:@"-" intoString:0] & 1) != 0 || objc_msgSend(advertisementCopy, "scanString:intoString:", @"$-", 0))
  {
    v7 = objc_alloc_init(UAMockActivityAdvertisement);
    [(UAMockActivityAdvertisement *)v7 setAdvertisementPayload:0];
    [(UAMockActivityAdvertisement *)v7 setAdvertisementVersion:1];
    [(UAMockActivityAdvertisement *)v7 setOptions:0];
    pairedPeer2 = [(UAActivityReplay *)self pairedPeer];
    [(UAMockActivityAdvertisement *)v7 setDevice:pairedPeer2];
    goto LABEL_7;
  }

  if ([advertisementCopy scanString:@"$" intoString:0])
  {
    pairedPeer2 = sub_1000391E8(advertisementCopy, 0);
    if (pairedPeer2)
    {
      v7 = objc_alloc_init(UAMockActivityAdvertisement);
      [(UAMockActivityAdvertisement *)v7 setAdvertisementVersion:1];
      [(UAMockActivityAdvertisement *)v7 setAdvertisementPayload:pairedPeer2];
      pairedPeer3 = [(UAActivityReplay *)self pairedPeer];
      [(UAMockActivityAdvertisement *)v7 setDevice:pairedPeer3];

      if ([advertisementCopy isAtEnd])
      {
        goto LABEL_7;
      }

      string = [advertisementCopy string];
      v6 = [string substringFromIndex:{objc_msgSend(advertisementCopy, "scanLocation")}];

      v12 = [v6 dataUsingEncoding:4];
      pairedPeer4 = [NSJSONSerialization JSONObjectWithData:v12 options:0 error:0];

      if (pairedPeer4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UAMockActivityAdvertisement *)v7 setOptions:pairedPeer4];
        }
      }

      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (([advertisementCopy scanString:@"http://" intoString:0] & 1) == 0)
  {
    v26 = 0;
    v14 = +[NSCharacterSet whitespaceCharacterSet];
    v25 = 0;
    v15 = [advertisementCopy scanUpToCharactersFromSet:v14 intoString:&v25];
    pairedPeer2 = v25;

    if (v15)
    {
      v16 = +[NSCharacterSet whitespaceCharacterSet];
      v24 = 0;
      v17 = [advertisementCopy scanUpToCharactersFromSet:v16 intoString:&v24];
      v6 = v24;

      if (v17)
      {
        [advertisementCopy scanInteger:&v26];
      }

      v7 = objc_alloc_init(UAMockActivityAdvertisement);
      [(UAMockActivityAdvertisement *)v7 setAdvertisementVersion:1];
      v18 = [SharingBTLEAdvertisementPayload alloc];
      v19 = v26;
      v20 = [NSDate dateWithTimeIntervalSinceNow:-v26];
      LOBYTE(v23) = v19 < 10;
      v21 = [(SharingBTLEAdvertisementPayload *)v18 initWithType:1 string:pairedPeer2 dynamicType:0 teamID:v6 webpageURL:0 options:0 isCurrent:v23 when:v20];
      advertisementPayload = [(SharingBTLEAdvertisementPayload *)v21 advertisementPayload];
      [(UAMockActivityAdvertisement *)v7 setAdvertisementPayload:advertisementPayload];

      [(UAMockActivityAdvertisement *)v7 setOptions:0];
      pairedPeer4 = [(UAActivityReplay *)self pairedPeer];
      [(UAMockActivityAdvertisement *)v7 setDevice:pairedPeer4];
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

- (BOOL)processCommand:(id)command
{
  commandCopy = command;
  queue = [(UAActivityReplay *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    *&buf[4] = commandCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PROCESSCOMMAND:%{private}@", buf, 0xCu);
  }

  if ([commandCopy length] >= 0x2E && objc_msgSend(commandCopy, "characterAtIndex:", 9) == 58 && objc_msgSend(commandCopy, "characterAtIndex:", 12) == 58 && objc_msgSend(commandCopy, "characterAtIndex:", 16) == 32 && objc_msgSend(commandCopy, "characterAtIndex:", 38) == 60)
  {
    v7 = [commandCopy rangeOfString:@">: "];
    if (v8)
    {
      v9 = [commandCopy substringFromIndex:&v7[v8]];

      commandCopy = v9;
    }
  }

  if (([commandCopy hasPrefix:@"#"] & 1) == 0 && (objc_msgSend(commandCopy, "hasPrefix:", @"//") & 1) == 0)
  {
    v11 = [NSScanner scannerWithString:commandCopy];
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

    uppercaseString = [v13 uppercaseString];

    v13 = uppercaseString;
    if ([uppercaseString isEqual:@"HELP"])
    {
      [(UAActivityReplay *)self sendResponse:@"COMMANDS: ...\n"];
      [(UAActivityReplay *)self sendResponse:@" - ADVERTISEITEM:<tag> <activitytype> [<archivedUserActivityData>]\n"];
LABEL_18:
      LOBYTE(v10) = 0;
LABEL_39:

      goto LABEL_40;
    }

    if (([uppercaseString isEqual:@"HANDOFF"] & 1) != 0 || objc_msgSend(uppercaseString, "isEqual:", @"VERSION"))
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

      manager = [(UACornerActionManagerHandler *)self manager];
      uuid = [manager uuid];
      v22 = [v18 isEqual:uuid];

      if (v22)
      {
        v23 = sub_100001A30(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          uUIDString = [v18 UUIDString];
          *buf = 138543362;
          *&buf[4] = uUIDString;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "REPLAY: Destroying replay object because the peer's UUID %{public}@ matched our own.", buf, 0xCu);
        }

        [(UAActivityReplay *)self terminate];
      }

      goto LABEL_38;
    }

    if (![uppercaseString compare:@"STARTUP" options:1])
    {
LABEL_38:
      LOBYTE(v10) = 1;
      goto LABEL_39;
    }

    if ([uppercaseString isEqual:@"TERMINATE"])
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

    if ([uppercaseString compare:@"ADVERTISEITEM" options:1])
    {
      if ([uppercaseString compare:@"PAYLOAD" options:1])
      {
        if ([uppercaseString compare:@"PULL" options:1])
        {
          if (![uppercaseString compare:@"REMOVEITEM" options:1])
          {
            v52 = +[NSMutableArray array];
            v53 = sub_10003A940(v11);
            if (v53)
            {
              [v52 addObject:v53];
            }

            else if ([v11 scanString:@"all" intoString:0])
            {
              items = [(UAActivityReplay *)self items];
              allKeys = [items allKeys];
              [v52 addObjectsFromArray:allKeys];
            }

            firstObject = [v52 firstObject];
            LODWORD(v10) = firstObject != 0;

            if (v10)
            {
              items2 = [(UAActivityReplay *)self items];
              v74 = [items2 objectForKeyedSubscript:v53];

              if (v74)
              {
                v75 = sub_100001A30(0);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
                {
                  *buf = 138477827;
                  *&buf[4] = v74;
                  _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "=== REMOVING ACTIVITY %{private}@ to be resumed", buf, 0xCu);
                }

                items3 = [(UAActivityReplay *)self items];
                [items3 removeObjectForKey:v53];
              }
            }

            goto LABEL_39;
          }

          if ([uppercaseString compare:@"PEERINFO" options:1])
          {
            if ([uppercaseString compare:@"RECEIVE" options:1] && objc_msgSend(uppercaseString, "compare:options:", @"BROADCAST", 1))
            {
              if ([uppercaseString compare:@"REQUESTPAYLOAD" options:1])
              {
                if (![uppercaseString compare:@"RETURNPAYLOAD" options:1])
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
                    selfCopy = self;
                    objc_sync_enter(selfCopy);
                    pendingPayloadFetches = selfCopy->_pendingPayloadFetches;
                    advertisementPayload = [v26 advertisementPayload];
                    v30 = [(NSMutableDictionary *)pendingPayloadFetches objectForKey:advertisementPayload];

                    if (v30)
                    {
                      v31 = sub_100001A30(0);
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138477827;
                        *&buf[4] = v26;
                        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "REPLAY: RETURNPAYLOAD request, found existing payloadHandler in _pendingPayloadFetches for advertisementPayload=%{private}@", buf, 0xCu);
                      }

                      v32 = selfCopy->_pendingPayloadFetches;
                      advertisementPayload2 = [v26 advertisementPayload];
                      [(NSMutableDictionary *)v32 removeObjectForKey:advertisementPayload2];
                    }

                    else
                    {
                      advertisementPayload2 = sub_100001A30(0);
                      if (os_log_type_enabled(advertisementPayload2, OS_LOG_TYPE_ERROR))
                      {
                        advertisementPayload3 = [v26 advertisementPayload];
                        v96 = sub_100006EF4(advertisementPayload3);
                        v92 = [(NSMutableDictionary *)selfCopy->_pendingPayloadFetches description];
                        v93 = sub_100009684(v92);
                        *buf = 138543875;
                        *&buf[4] = v96;
                        v106 = 2113;
                        v107 = *&v26;
                        v108 = 2113;
                        v109 = v93;
                        _os_log_impl(&_mh_execute_header, advertisementPayload2, OS_LOG_TYPE_ERROR, "REPLAY: Didn't find handler for advertisement %{public}@/%{private}@, pendingPayloads=%{private}@", buf, 0x20u);
                      }
                    }

                    objc_sync_exit(selfCopy);
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
                sharingAdvertiser = [(UAActivityReplay *)self sharingAdvertiser];
                sharingAdvertiser2 = [(UAActivityReplay *)self sharingAdvertiser];
                advertisementPayload4 = [v86 advertisementPayload];
                device = [v86 device];
                v99[0] = _NSConcreteStackBlock;
                v99[1] = 3221225472;
                v99[2] = sub_10003ABA8;
                v99[3] = &unk_1000C5878;
                v99[4] = self;
                v100 = v86;
                [sharingAdvertiser activityAdvertiser:sharingAdvertiser2 activityPayloadForAdvertisementPayload:advertisementPayload4 command:@"-" requestedByDevice:device withCompletionHandler:v99];
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
                pairedPeer = [(UAActivityReplay *)self pairedPeer];
                [v54 setDevice:pairedPeer];

                sharingReceiver = [(UAActivityReplay *)self sharingReceiver];
                mockScanner = [(UAActivityReplay *)self mockScanner];
                [sharingReceiver activityScanner:mockScanner receivedAdvertisement:v54];
              }
            }

            goto LABEL_38;
          }

          if ([v11 scanString:@"SF[$" intoString:0])
          {
            v59 = sub_1000391E8(v11, 0);
            pairedPeer6 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v59 error:0];
            v61 = [pairedPeer6 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
            [(UAActivityReplay *)self setPairedPeer:v61];

            pairedPeer2 = [(UAActivityReplay *)self pairedPeer];
            uniqueID = [pairedPeer2 uniqueID];
            v64 = uniqueID == 0;

            if (v64)
            {
              uuid2 = [(UACornerActionManagerHandler *)self uuid];
              uUIDString2 = [uuid2 UUIDString];
              pairedPeer3 = [(UAActivityReplay *)self pairedPeer];
              [pairedPeer3 setUniqueID:uUIDString2];

              pairedPeer4 = [(UAActivityReplay *)self pairedPeer];
              name = [pairedPeer4 name];
              [(UACornerActionManagerHandler *)self setName:name];
            }

            [pairedPeer6 finishDecoding];
          }

          else
          {
            if ([v11 scanString:@"[$" intoString:0])
            {
LABEL_115:
              pairedPeer5 = [(UAActivityReplay *)self pairedPeer];
              LOBYTE(v10) = pairedPeer5 != 0;

              goto LABEL_39;
            }

            v59 = objc_alloc_init(SFPeerDevice);
            v77 = +[NSUUID UUID];
            uUIDString3 = [v77 UUIDString];
            [v59 setUniqueID:uUIDString3];

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
            pairedPeer6 = [(UAActivityReplay *)self pairedPeer];
            name2 = [pairedPeer6 name];
            [(UACornerActionManagerHandler *)self setName:name2];
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

        items4 = [(UAActivityReplay *)self items];
        v43 = [items4 objectForKeyedSubscript:v41];

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

          wasResumed = [v43 wasResumed];
          v51 = dispatch_time(0, (v47 * 1000000000.0));
          dispatch_semaphore_wait(wasResumed, v51);
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

        items5 = [(UAActivityReplay *)self items];
        v43 = [items5 objectForKeyedSubscript:v41];

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
          items6 = [(UAActivityReplay *)self items];
          [items6 setObject:v37 forKeyedSubscript:v34];

          v39 = sub_100001A30(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            *&buf[4] = v37;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "=== Forcing item into replay client: %{private}@", buf, 0xCu);
          }

          client = [(UAActivityReplay *)self client];
          [client addItem:v37];
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

- (BOOL)processCommands:(id)commands completionHandler:(id)handler
{
  commandsCopy = commands;
  handlerCopy = handler;
  queue = [(UAActivityReplay *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AFCC;
  block[3] = &unk_1000C58A0;
  v13 = commandsCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v9 = handlerCopy;
  v10 = commandsCopy;
  dispatch_async(queue, block);

  return 1;
}

- (void)activityPayloadFromDevice:(id)device forAdvertisementPayload:(id)payload command:(id)command timeout:(unint64_t)timeout withCompletionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v10 = sub_100006EF4(payloadCopy);
  v11 = [NSString stringWithFormat:@"REQUESTPAYLOAD $%@\n", v10];
  [(UAActivityReplay *)self sendResponse:v11];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingPayloadFetches = selfCopy->_pendingPayloadFetches;
  v14 = objc_retainBlock(handlerCopy);
  [(NSMutableDictionary *)pendingPayloadFetches setObject:v14 forKey:payloadCopy];

  objc_sync_exit(selfCopy);
}

- (BOOL)terminate
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "terminate", buf, 2u);
  }

  pairedPeer = [(UAActivityReplay *)self pairedPeer];
  v5 = pairedPeer == 0;

  if (!v5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    manager = [(UACornerActionManagerHandler *)self manager];
    receivers = [manager receivers];

    v8 = [receivers countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(receivers);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            pairedPeer2 = [(UAActivityReplay *)self pairedPeer];
            uniqueID = [pairedPeer2 uniqueID];
            [v11 lostDeviceWithUUID:uniqueID];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [receivers countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v8);
    }
  }

  sharingReceiver = [(UAActivityReplay *)self sharingReceiver];
  mockScanner = [(UAActivityReplay *)self mockScanner];
  [sharingReceiver removeSFActivityScanner:mockScanner];

  sharingAdvertiser = [(UAActivityReplay *)self sharingAdvertiser];
  mockAdvertiser = [(UAActivityReplay *)self mockAdvertiser];
  [sharingAdvertiser removeSFActivityAdvertiser:mockAdvertiser];

  manager2 = [(UACornerActionManagerHandler *)self manager];
  receiver = [(UAActivityReplay *)self receiver];
  [manager2 removeReceiver:receiver];

  manager3 = [(UACornerActionManagerHandler *)self manager];
  advertiser = [(UAActivityReplay *)self advertiser];
  [manager3 removeAdvertiser:advertiser];

  receiver2 = [(UAActivityReplay *)self receiver];
  [receiver2 terminate];

  advertiser2 = [(UAActivityReplay *)self advertiser];
  [advertiser2 terminate];

  manager4 = [(UACornerActionManagerHandler *)self manager];
  [manager4 removeHandler:self];

  return 1;
}

@end