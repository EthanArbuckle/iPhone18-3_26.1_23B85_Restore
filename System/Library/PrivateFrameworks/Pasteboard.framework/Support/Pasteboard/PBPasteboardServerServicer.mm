@interface PBPasteboardServerServicer
+ (id)newServicerForConnection:(id)connection detectiveAgency:(id)agency pasteButtonSlotMachine:(id)machine pasteAuthority:(id)authority pasteNotifier:(id)notifier;
- (NSXPCConnection)clientToServerConnection;
- (PBPasteboardServerServicer)initWithConnection:(id)connection detectiveAgency:(id)agency pasteButtonSlotMachine:(id)machine pasteAuthority:(id)authority pasteNotifier:(id)notifier;
- (id)hangAssertionForAuditTokenInfo:(id)info;
- (id)pasteAnnoucementForPasteboard:(id)pasteboard auditTokenInfo:(id)info loadContext:(id)context timeout:(double)timeout;
- (id)sanitizedDoNothingCopyOfPasteboard:(id)pasteboard destinationAuditTokenInfo:(id)info;
- (void)_pasteboardWithName:(id)name localOnly:(BOOL)only createIfNeeded:(BOOL)needed deviceIsLocked:(BOOL)locked completionBlock:(id)block;
- (void)announcePasteForPasteboard:(id)pasteboard auditTokenInfo:(id)info;
- (void)deletePersistentPasteboardWithName:(id)name completionBlock:(id)block;
- (void)didInvalidateItemCollectionWithUUID:(id)d;
- (void)didPasteContentsFromPasteboardWithName:(id)name UUID:(id)d completionBlock:(id)block;
- (void)getAllPasteboardsCompletionBlock:(id)block;
- (void)getRemoteContentForLayerContextWithId:(unint64_t)id slotStyle:(id)style pasteButtonTag:(id)tag completionBlock:(id)block;
- (void)localGeneralPasteboardCompletionBlock:(id)block;
- (void)pasteboardWithName:(id)name createIfNeeded:(BOOL)needed completionBlock:(id)block;
- (void)performJanitorialTasksCompletionBlock:(id)block;
- (void)removeActiveAuthorizationAnnouncer:(id)announcer collection:(id)collection;
- (void)requestFromPasteboardWithName:(id)name UUID:(id)d authenticationMessage:(id)message itemIndex:(unint64_t)index needData:(BOOL)data dataOwner:(int64_t)owner loadContext:(id)context errorBlock:(id)self0 pasteboardItemBlock:(id)self1;
- (void)requestItemFromPasteboardWithName:(id)name UUID:(id)d authenticationMessage:(id)message itemIndex:(unint64_t)index typeIdentifier:(id)identifier dataOwner:(int64_t)owner loadContext:(id)context completionBlock:(id)self0;
- (void)requestPatternDetectionsFromPasteboardWithName:(id)name UUID:(id)d authenticationMessage:(id)message itemIndex:(unint64_t)index patterns:(id)patterns needValues:(BOOL)values dataOwner:(int64_t)owner completionBlock:(id)self0;
- (void)requestSecurePasteAuthenticationMessageWithContext:(unint64_t)context forClientVersionedPID:(int64_t)d completionBlock:(id)block;
- (void)requestUserAuthorizationForPasteboard:(id)pasteboard auditTokenInfo:(id)info loadContext:(id)context completionHandler:(id)handler;
- (void)savePasteboard:(id)pasteboard dataProviderEndpoint:(id)endpoint completionBlock:(id)block;
- (void)setActiveAuthorizationAnnouncer:(id)announcer collection:(id)collection;
@end

@implementation PBPasteboardServerServicer

- (NSXPCConnection)clientToServerConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientToServerConnection);

  return WeakRetained;
}

+ (id)newServicerForConnection:(id)connection detectiveAgency:(id)agency pasteButtonSlotMachine:(id)machine pasteAuthority:(id)authority pasteNotifier:(id)notifier
{
  notifierCopy = notifier;
  authorityCopy = authority;
  machineCopy = machine;
  agencyCopy = agency;
  connectionCopy = connection;
  v16 = [[PBPasteboardServerServicer alloc] initWithConnection:connectionCopy detectiveAgency:agencyCopy pasteButtonSlotMachine:machineCopy pasteAuthority:authorityCopy pasteNotifier:notifierCopy];

  return v16;
}

- (PBPasteboardServerServicer)initWithConnection:(id)connection detectiveAgency:(id)agency pasteButtonSlotMachine:(id)machine pasteAuthority:(id)authority pasteNotifier:(id)notifier
{
  connectionCopy = connection;
  agencyCopy = agency;
  machineCopy = machine;
  authorityCopy = authority;
  notifierCopy = notifier;
  v31.receiver = self;
  v31.super_class = PBPasteboardServerServicer;
  v16 = [(PBPasteboardServerServicer *)&v31 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_clientToServerConnection, connectionCopy);
    [connectionCopy setExportedObject:v17];
    v18 = PBNewClientToServerXPCInterface();
    [connectionCopy setExportedInterface:v18];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100009358;
    v29[3] = &unk_100030D98;
    v19 = v17;
    v30 = v19;
    [connectionCopy setInvalidationHandler:v29];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(v28, 0, sizeof(v28));
    }

    v20 = sub_100001B6C(v28);
    clientAuditTokenInfo = v19->_clientAuditTokenInfo;
    v19->_clientAuditTokenInfo = v20;

    objc_storeStrong(&v19->_detectiveAgency, agency);
    objc_storeStrong(&v19->_pasteButtonSlotMachine, machine);
    objc_storeStrong(&v19->_pasteAuthority, authority);
    objc_storeStrong(&v19->_pasteNotifier, notifier);
    v22 = +[NSMutableDictionary dictionary];
    activeAnnouncers = v19->_activeAnnouncers;
    v19->_activeAnnouncers = v22;

    v24 = +[NSMutableDictionary dictionary];
    authorizationReplyBlocks = v19->_authorizationReplyBlocks;
    v19->_authorizationReplyBlocks = v24;
  }

  return v17;
}

- (void)_pasteboardWithName:(id)name localOnly:(BOOL)only createIfNeeded:(BOOL)needed deviceIsLocked:(BOOL)locked completionBlock:(id)block
{
  lockedCopy = locked;
  neededCopy = needed;
  onlyCopy = only;
  nameCopy = name;
  blockCopy = block;
  v13 = _PBLog();
  v14 = os_signpost_id_generate(v13);

  v15 = _PBLog();
  v16 = v15;
  spid = v14;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PasteboardWithName", &unk_10002C5F1, buf, 2u);
  }

  v59 = 0u;
  v60 = 0u;
  clientToServerConnection = [(PBPasteboardServerServicer *)self clientToServerConnection];
  v18 = clientToServerConnection;
  if (clientToServerConnection)
  {
    [clientToServerConnection auditToken];
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  *buf = v59;
  *&buf[16] = v60;
  v19 = sub_100001B6C(buf);
  v20 = _PBLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [v19 bundleID];
    [v19 teamID];
    v22 = lockedCopy;
    v24 = v23 = onlyCopy;
    v25 = [v19 pid];
    *buf = 138413058;
    *&buf[4] = bundleID;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    *&buf[22] = 1024;
    *&buf[24] = v25;
    *&buf[28] = 2112;
    *&buf[30] = nameCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BundleID %@ from team %@ (pid %d) is requesting pasteboard %@", buf, 0x26u);

    onlyCopy = v23;
    lockedCopy = v22;
  }

  if (onlyCopy)
  {
    v26 = _PBLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      bundleID2 = [v19 bundleID];
      *buf = 138412290;
      *&buf[4] = bundleID2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Requesting local only pasteboard for %@", buf, 0xCu);
    }
  }

  v58 = 0;
  v28 = PBIsPasteboardNameAllowed();
  v29 = 0;
  if (v28)
  {
    if (lockedCopy)
    {
      if (([nameCopy isEqualToString:PBGeneralPasteboardName] & 1) == 0)
      {
        v37 = _PBLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = nameCopy;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Access to pasteboard named %@ is not allowed while the device is locked.", buf, 0xCu);
        }

        if (blockCopy)
        {
          v51 = _NSConcreteStackBlock;
          v52 = 3221225472;
          v53 = sub_100009A0C;
          v54 = &unk_100031230;
          v56 = blockCopy;
          v55 = nameCopy;
          v57 = spid;
          PBDispatchAsyncCallback();

          v32 = v56;
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (sub_100002298(nameCopy, v19, 0))
      {
        v30 = _PBLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Client will receive device-locked general pasteboard.", buf, 2u);
        }

        goto LABEL_25;
      }
    }

    else if (sub_100002298(nameCopy, v19, 0))
    {
LABEL_25:
      v33 = +[PBPasteboardModel sharedModel];
      bundleID3 = [v19 bundleID];
      [v19 teamID];
      v35 = v39 = onlyCopy;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100009ACC;
      v46[3] = &unk_100031258;
      v46[4] = self;
      v47 = v19;
      v48 = nameCopy;
      v49 = blockCopy;
      v50 = spid;
      LOBYTE(v38) = lockedCopy;
      [v33 getPasteboardNamed:v48 bundleID:bundleID3 teamID:v35 createIfNeeded:neededCopy localOnly:v39 processInfo:v47 deviceIsLocked:v38 completionBlock:v46];

      v32 = v47;
      goto LABEL_34;
    }

    v36 = _PBLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = nameCopy;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "...client not allowed to request pasteboard %@. Error: %@", buf, 0x16u);
    }

    if (blockCopy)
    {
      v45 = blockCopy;
      v44 = nameCopy;
      PBDispatchAsyncCallback();

      v32 = v45;
      goto LABEL_34;
    }
  }

  else
  {
    v31 = _PBLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = nameCopy;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "...pasteboard name %@ is not allowed. Error: %@", buf, 0x16u);
    }

    if (blockCopy)
    {
      v43 = blockCopy;
      v42 = v29;
      PBDispatchAsyncCallback();

      v32 = v43;
LABEL_34:
    }
  }

LABEL_35:
}

- (void)pasteboardWithName:(id)name createIfNeeded:(BOOL)needed completionBlock:(id)block
{
  neededCopy = needed;
  blockCopy = block;
  nameCopy = name;
  v9 = PBIsPasteboardNameGeneralPasteboard();
  v10 = MKBGetDeviceLockState();
  v12 = v10 != 3 && v10 != 0;
  [(PBPasteboardServerServicer *)self _pasteboardWithName:nameCopy localOnly:0 createIfNeeded:v9 | neededCopy deviceIsLocked:v12 completionBlock:blockCopy];
}

- (void)localGeneralPasteboardCompletionBlock:(id)block
{
  v4 = PBGeneralPasteboardName;
  blockCopy = block;
  v5 = MKBGetDeviceLockState();
  v7 = v5 != 3 && v5 != 0;
  [(PBPasteboardServerServicer *)self _pasteboardWithName:v4 localOnly:1 createIfNeeded:1 deviceIsLocked:v7 completionBlock:blockCopy];
}

- (id)sanitizedDoNothingCopyOfPasteboard:(id)pasteboard destinationAuditTokenInfo:(id)info
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  copyWithDoNothingLoaders = [pasteboardCopy copyWithDoNothingLoaders];
  uUID = [pasteboardCopy UUID];
  [copyWithDoNothingLoaders setUUID:uUID];

  if (([infoCopy isAllowedToQueryBundleID] & 1) == 0)
  {
    [copyWithDoNothingLoaders setSaveBootSession:0];
    [copyWithDoNothingLoaders setSaveTimestamp:0];
    [copyWithDoNothingLoaders setOriginatorPersistentID:0];
    [copyWithDoNothingLoaders setOriginatorBundleID:0];
    [copyWithDoNothingLoaders setOriginatorTeamID:0];
    [copyWithDoNothingLoaders setOriginatorLocalizedName:0];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  items = [copyWithDoNothingLoaders items];
  v10 = [items countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(items);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        metadata = [v14 metadata];
        if ([metadata count])
        {
          v16 = +[NSMutableDictionary dictionary];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10000A164;
          v20[3] = &unk_100031280;
          v21 = infoCopy;
          v22 = pasteboardCopy;
          v23 = v16;
          v17 = v16;
          [metadata enumerateKeysAndObjectsUsingBlock:v20];
          [v14 setMetadata:v17];
        }
      }

      v11 = [items countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  return v19;
}

- (void)savePasteboard:(id)pasteboard dataProviderEndpoint:(id)endpoint completionBlock:(id)block
{
  pasteboardCopy = pasteboard;
  endpointCopy = endpoint;
  blockCopy = block;
  v11 = MKBGetDeviceLockState();
  v13 = v11 != 3 && v11 != 0;
  if (v11)
  {
    if (v11 != 3)
    {
      name = [pasteboardCopy name];
      v15 = PBIsPasteboardNameGeneralPasteboard();

      if ((v15 & 1) == 0)
      {
        v47 = _PBLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [pasteboardCopy name];
          *buf = 138412290;
          v64 = name2;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Access to pasteboard named %@ is not allowed while the device is locked.", buf, 0xCu);
        }

        if (!blockCopy)
        {
          v18 = 0;
          goto LABEL_40;
        }

        v57 = _NSConcreteStackBlock;
        v58 = 3221225472;
        v59 = sub_10000AA14;
        v60 = &unk_100030B50;
        v62 = blockCopy;
        v61 = pasteboardCopy;
        PBDispatchAsyncCallback();

        v44 = 0;
        clientAuditTokenInfo = v62;
        goto LABEL_39;
      }
    }
  }

  name3 = [pasteboardCopy name];
  v56 = 0;
  v17 = PBIsPasteboardNameAllowed();
  v18 = 0;

  if (v17)
  {
    clientAuditTokenInfo = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
    name4 = [pasteboardCopy name];
    v21 = sub_100002298(name4, clientAuditTokenInfo, 0);

    if (v21)
    {
      [pasteboardCopy setDataProviderEndpoint:endpointCopy];
      v22 = sub_100010628();
      [pasteboardCopy setSaveBootSession:v22];

      [pasteboardCopy setSaveTimestamp:mach_continuous_time()];
      v23 = objc_opt_new();
      [pasteboardCopy setSharingToken:v23];

      persistentIdentifier = [clientAuditTokenInfo persistentIdentifier];
      [pasteboardCopy setOriginatorPersistentID:persistentIdentifier];

      bundleID = [clientAuditTokenInfo bundleID];
      [pasteboardCopy setOriginatorBundleID:bundleID];

      teamID = [clientAuditTokenInfo teamID];
      [pasteboardCopy setOriginatorTeamID:teamID];

      localizedName = [clientAuditTokenInfo localizedName];
      [pasteboardCopy setOriginatorLocalizedName:localizedName];

      [pasteboardCopy setOriginatorAllowedToCopyOnPaste:{objc_msgSend(clientAuditTokenInfo, "isAllowedToCopyOnPaste")}];
      v28 = _PBLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        bundleID2 = [clientAuditTokenInfo bundleID];
        teamID2 = [clientAuditTokenInfo teamID];
        name5 = [pasteboardCopy name];
        *buf = 138412802;
        v64 = bundleID2;
        v65 = 2112;
        v66 = teamID2;
        v67 = 2112;
        v68 = name5;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Bundle ID %@ from team %@ is saving pasteboard named %@", buf, 0x20u);
      }

      v32 = +[MCProfileConnection sharedConnection];
      originatorBundleID = [pasteboardCopy originatorBundleID];
      v34 = [v32 dataOwnerForBundleID:originatorBundleID requestedDataOwner:{objc_msgSend(pasteboardCopy, "originatorDataOwner")}];

      [pasteboardCopy setOriginatorDataOwner:v34];
      if (([v32 isContinuityPasteboardWithManagedDataAllowed] & 1) == 0 && v34 == 2)
      {
        [pasteboardCopy setLocalOnly:1];
      }

      name6 = [pasteboardCopy name];
      v36 = PBIsPasteboardNameGeneralPasteboard();

      if (v36)
      {
        _PBDefaultMaxGeneralPasteboardAgeForLockState();
        if (v37 > 0.0)
        {
          v38 = [NSDate dateWithTimeIntervalSinceNow:?];
          expirationDate = [pasteboardCopy expirationDate];
          v40 = expirationDate;
          if (!expirationDate || [expirationDate compare:v38] == 1)
          {
            [pasteboardCopy setExpirationDate:v38];
            v41 = _PBLog();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v64 = v38;
              _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "Forcing pasteboard expiration date to %@", buf, 0xCu);
            }
          }
        }
      }

      v42 = +[PBPasteboardModel sharedModel];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10000AA88;
      v53[3] = &unk_1000312A8;
      v54 = pasteboardCopy;
      v55 = blockCopy;
      [v42 savePasteboard:v54 deviceIslocked:v13 completionBlock:v53];
    }

    else
    {
      v45 = _PBLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        name7 = [pasteboardCopy name];
        *buf = 138412290;
        v64 = name7;
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "...client is not allowed to access pasteboard named %@", buf, 0xCu);
      }

      name8 = [pasteboardCopy name];
      v44 = PBPasteboardNameInvalidError();

      if (!blockCopy)
      {
        goto LABEL_39;
      }

      v52 = blockCopy;
      v18 = v44;
      PBDispatchAsyncCallback();

      v32 = v52;
    }

    v44 = v18;
LABEL_39:

    v18 = v44;
    goto LABEL_40;
  }

  v43 = _PBLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    name9 = [pasteboardCopy name];
    *buf = 138412546;
    v64 = name9;
    v65 = 2112;
    v66 = v18;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "...pasteboard name %@ is not allowed. Error: %@", buf, 0x16u);
  }

  if (blockCopy)
  {
    v51 = blockCopy;
    v44 = v18;
    PBDispatchAsyncCallback();

    clientAuditTokenInfo = v51;
    goto LABEL_39;
  }

LABEL_40:
}

- (void)deletePersistentPasteboardWithName:(id)name completionBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  clientAuditTokenInfo = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
  v27 = 0;
  v9 = PBIsPasteboardNameAllowed();
  v10 = 0;
  v11 = _PBLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = [clientAuditTokenInfo bundleID];
      teamID = [clientAuditTokenInfo teamID];
      *buf = 138412802;
      v29 = bundleID;
      v30 = 2112;
      v31 = teamID;
      v32 = 2112;
      v33 = nameCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bundle ID %@ from team %@ is deleting persistent pasteboard named %@", buf, 0x20u);
    }

    v15 = +[PBPasteboardModel sharedModel];
    bundleID2 = [clientAuditTokenInfo bundleID];
    teamID2 = [clientAuditTokenInfo teamID];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000AF10;
    v23[3] = &unk_1000312D0;
    v18 = &v24;
    v24 = v10;
    v19 = &v25;
    v20 = nameCopy;
    v25 = v20;
    v26 = blockCopy;
    [v15 deletePasteboardNamed:v20 bundleID:bundleID2 teamID:teamID2 completionBlock:v23];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v29 = nameCopy;
    v30 = 2112;
    v31 = v10;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "...pasteboard name %@ is not allowed. Error: %@", buf, 0x16u);
  }

  if (blockCopy)
  {
    v18 = &v22;
    v22 = blockCopy;
    v19 = &v21;
    v21 = v10;
    PBDispatchAsyncCallback();
LABEL_9:
  }
}

- (id)hangAssertionForAuditTokenInfo:(id)info
{
  infoCopy = info;
  v4 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [infoCopy pid]);
  v5 = [RBSDomainAttribute attributeWithDomain:@"com.apple.frontboard" name:@"DisableWatchdog"];
  v6 = [RBSAssertion alloc];
  v19 = v5;
  v7 = [NSArray arrayWithObjects:&v19 count:1];
  v8 = [v6 initWithExplanation:@"Prevent watchdog termination while blocking on OOP authorization" target:v4 attributes:v7];

  v14 = 0;
  v9 = [v8 acquireWithError:&v14];
  v10 = v14;
  if ((v9 & 1) == 0)
  {
    v11 = _PBLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [infoCopy pid];
      *buf = 67109378;
      v16 = v13;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to acquire watchog disable assertion for pid %d with error: %@", buf, 0x12u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)announcePasteForPasteboard:(id)pasteboard auditTokenInfo:(id)info
{
  v5 = [(PBPasteboardServerServicer *)self pasteAnnoucementForPasteboard:pasteboard auditTokenInfo:info loadContext:0 timeout:0.0];
  [(PBPasteNotifying *)self->_pasteNotifier notifyPaste:v5];
}

- (void)requestUserAuthorizationForPasteboard:(id)pasteboard auditTokenInfo:(id)info loadContext:(id)context completionHandler:(id)handler
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  contextCopy = context;
  handlerCopy = handler;
  v14 = 0.0;
  if ([contextCopy isFromUIFramework] && objc_msgSend(contextCopy, "isBlockingMainThread"))
  {
    v15 = [(PBPasteboardServerServicer *)self hangAssertionForAuditTokenInfo:infoCopy];
    if (v15)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = PBAuthorizationTimeoutInterval;
    }
  }

  else
  {
    v15 = 0;
  }

  v27 = infoCopy;
  v26 = [(PBPasteboardServerServicer *)self pasteAnnoucementForPasteboard:pasteboardCopy auditTokenInfo:infoCopy loadContext:contextCopy timeout:v14];
  uUID = [pasteboardCopy UUID];
  activeAnnouncers = [(PBPasteboardServerServicer *)self activeAnnouncers];
  v18 = [activeAnnouncers objectForKeyedSubscript:uUID];

  authorizationReplyBlocks = [(PBPasteboardServerServicer *)self authorizationReplyBlocks];
  v20 = [authorizationReplyBlocks objectForKeyedSubscript:uUID];

  if (!v20)
  {
    v20 = +[NSMutableArray array];
    authorizationReplyBlocks2 = [(PBPasteboardServerServicer *)self authorizationReplyBlocks];
    [authorizationReplyBlocks2 setObject:v20 forKeyedSubscript:uUID];
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000B688;
  v38[3] = &unk_1000312F8;
  v22 = handlerCopy;
  v40 = v22;
  v23 = v15;
  v39 = v23;
  v24 = objc_retainBlock(v38);
  v25 = objc_retainBlock(v24);
  [v20 addObject:v25];

  if (!v18)
  {
    v18 = [[PBCFUserNotificationPasteAnnouncer alloc] initWithAuditTokenInfo:v27];
    [(PBPasteboardServerServicer *)self setActiveAuthorizationAnnouncer:v18 collection:pasteboardCopy];
    objc_initWeak(&location, pasteboardCopy);
    objc_initWeak(&v36, v18);
    objc_initWeak(&from, self);
    [(PBPasteAuthority *)self->_pasteAuthority recordInteractivePasteAuthorizationPromptActivityForAuditTokenInfo:v27];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000B6CC;
    v28[3] = &unk_100031320;
    objc_copyWeak(&v32, &from);
    objc_copyWeak(&v33, &v36);
    objc_copyWeak(&v34, &location);
    v29 = v27;
    v30 = v20;
    v31 = uUID;
    [(PBCFUserNotificationPasteAnnouncer *)v18 requestAuthorizationForPaste:v26 replyHandler:v28];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }
}

- (void)didInvalidateItemCollectionWithUUID:(id)d
{
  dCopy = d;
  v3 = dCopy;
  PBDispatchAsyncCallback();
}

- (void)setActiveAuthorizationAnnouncer:(id)announcer collection:(id)collection
{
  collectionCopy = collection;
  announcerCopy = announcer;
  activeAnnouncers = [(PBPasteboardServerServicer *)self activeAnnouncers];
  uUID = [collectionCopy UUID];
  [activeAnnouncers setObject:announcerCopy forKey:uUID];

  [collectionCopy addInvalidationDelegate:self];
}

- (void)removeActiveAuthorizationAnnouncer:(id)announcer collection:(id)collection
{
  collectionCopy = collection;
  activeAnnouncers = [(PBPasteboardServerServicer *)self activeAnnouncers];
  uUID = [collectionCopy UUID];
  [activeAnnouncers removeObjectForKey:uUID];

  [collectionCopy removeInvalidationDelegate:self];
}

- (id)pasteAnnoucementForPasteboard:(id)pasteboard auditTokenInfo:(id)info loadContext:(id)context timeout:(double)timeout
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  originatorPersistentID = [pasteboardCopy originatorPersistentID];
  if (originatorPersistentID && (v11 = [[LSBundleRecord alloc] initWithPersistentIdentifier:originatorPersistentID]) != 0)
  {
    v12 = v11;
    localizedName = [v11 localizedName];
  }

  else
  {
    originatorBundleID = [pasteboardCopy originatorBundleID];
    v12 = [LSBundleRecord bundleRecordWithBundleIdentifier:originatorBundleID allowPlaceholder:0 error:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      teamIdentifier = [v12 teamIdentifier];
      originatorTeamID = [pasteboardCopy originatorTeamID];
      v17 = [teamIdentifier isEqualToString:originatorTeamID];

      if (v17)
      {
        v18 = +[NSLocale preferredLanguages];
        v19 = [v12 localizedNameWithPreferredLocalizations:v18];

        persistentIdentifier = [v12 persistentIdentifier];

        originatorPersistentID = persistentIdentifier;
        goto LABEL_9;
      }
    }

    localizedName = [pasteboardCopy originatorLocalizedName];
  }

  v19 = localizedName;
LABEL_9:
  if ([pasteboardCopy isOrWasRemote])
  {
    v21 = [DRPasteAnnouncementContinuityEndpoint alloc];
    remoteDeviceName = [pasteboardCopy remoteDeviceName];
    v23 = [v21 initWithDeviceName:remoteDeviceName];
  }

  else
  {
    bundleIdentifier = [v12 bundleIdentifier];
    v25 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

    if (v25)
    {
      v26 = +[DRPasteAnnouncementApplicationEndpoint homeScreenEndpoint];
    }

    else
    {
      v26 = [[DRPasteAnnouncementApplicationEndpoint alloc] initWithLocalizedName:v19 persistentIdentifier:originatorPersistentID];
    }

    v23 = v26;
  }

  bundleID = [infoCopy bundleID];
  v28 = [bundleID isEqualToString:@"com.apple.springboard"];

  if (v28)
  {
    v29 = +[DRPasteAnnouncementApplicationEndpoint homeScreenEndpoint];
  }

  else
  {
    v30 = [DRPasteAnnouncementApplicationEndpoint alloc];
    localizedName2 = [infoCopy localizedName];
    persistentIdentifier2 = [infoCopy persistentIdentifier];
    v29 = [v30 initWithLocalizedName:localizedName2 persistentIdentifier:persistentIdentifier2];
  }

  v33 = [DRPasteAnnouncement alloc];
  uUID = [pasteboardCopy UUID];
  v35 = [v33 initWithSource:v23 destination:v29 pasteboardUUID:uUID timeout:timeout];

  return v35;
}

- (void)requestFromPasteboardWithName:(id)name UUID:(id)d authenticationMessage:(id)message itemIndex:(unint64_t)index needData:(BOOL)data dataOwner:(int64_t)owner loadContext:(id)context errorBlock:(id)self0 pasteboardItemBlock:(id)self1
{
  dataCopy = data;
  nameCopy = name;
  dCopy = d;
  messageCopy = message;
  contextCopy = context;
  blockCopy = block;
  itemBlockCopy = itemBlock;
  v19 = MKBGetDeviceLockState();
  v80 = 0;
  v20 = PBIsPasteboardNameAllowed();
  v21 = 0;
  if (v20)
  {
    v48 = dCopy;
    if (v19 && v19 != 3 && (PBIsPasteboardNameGeneralPasteboard() & 1) == 0)
    {
      v34 = messageCopy;
      if (!blockCopy)
      {
        goto LABEL_24;
      }

      v68 = _NSConcreteStackBlock;
      v69 = 3221225472;
      v70 = sub_10000C4D0;
      v71 = &unk_100030B50;
      v73 = blockCopy;
      v72 = nameCopy;
      PBDispatchAsyncCallback();

      clientAuditTokenInfo = v73;
      goto LABEL_23;
    }

    clientAuditTokenInfo = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
    v67 = 0;
    v23 = _PBLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = [clientAuditTokenInfo bundleID];
      [clientAuditTokenInfo teamID];
      v25 = blockCopy;
      ownerCopy = owner;
      v27 = itemBlockCopy;
      v29 = v28 = contextCopy;
      *buf = 138413314;
      v82 = bundleID;
      v83 = 2112;
      v84 = v29;
      v85 = 1024;
      indexCopy = index;
      v87 = 2112;
      v88 = nameCopy;
      v89 = 2112;
      v90 = v48;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Bundle ID %@ from team %@ is requesting item %u from pasteboard named %@ with UUID %@", buf, 0x30u);

      contextCopy = v28;
      itemBlockCopy = v27;
      owner = ownerCopy;
      blockCopy = v25;
    }

    if (sub_100002298(nameCopy, clientAuditTokenInfo, &v67))
    {
      ownerCopy2 = owner;
      if (dataCopy && PBPreferencesBoolValue() && [nameCopy isEqualToString:PBGeneralPasteboardName] && v67 == 1)
      {
        v30 = sub_10000C598();
        dispatch_sync(v30, &stru_1000313A8);
      }

      bundleID2 = [clientAuditTokenInfo bundleID];
      teamID = [clientAuditTokenInfo teamID];
      v41 = PBPasteboardPersistenceName();

      v33 = self->_pasteAuthority;
      v40 = +[PBPasteboardModel sharedModel];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10000C6BC;
      v49[3] = &unk_100031488;
      v56 = blockCopy;
      v50 = v48;
      indexCopy2 = index;
      v57 = itemBlockCopy;
      v60 = dataCopy;
      v51 = clientAuditTokenInfo;
      v52 = v33;
      v34 = messageCopy;
      v53 = messageCopy;
      v59 = ownerCopy2;
      v54 = contextCopy;
      selfCopy = self;
      v35 = v41;
      v46 = v33;
      [v40 getExistingPasteboardWithPersistenceName:v41 name:nameCopy UUID:v50 processInfo:v51 completionBlock:v49];
    }

    else
    {
      v37 = _PBLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [clientAuditTokenInfo bundleID];
        v39 = v38 = itemBlockCopy;
        *buf = 138412546;
        v82 = v39;
        v83 = 2112;
        v84 = v21;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "...bundle ID %@ is not allowed to access the pasteboard. Error: %@", buf, 0x16u);

        itemBlockCopy = v38;
      }

      v34 = messageCopy;
      if (!blockCopy)
      {
        goto LABEL_23;
      }

      v61 = _NSConcreteStackBlock;
      v62 = 3221225472;
      v63 = sub_10000C534;
      v64 = &unk_100030B50;
      v66 = blockCopy;
      v65 = nameCopy;
      PBDispatchAsyncCallback();

      v35 = v66;
    }

LABEL_23:
    dCopy = v48;
    goto LABEL_24;
  }

  v36 = _PBLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v82 = nameCopy;
    v83 = 2112;
    v84 = v21;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "...pasteboard name %@ is not allowed. Error: %@", buf, 0x16u);
  }

  v34 = messageCopy;
  if (blockCopy)
  {
    v48 = dCopy;
    v74 = _NSConcreteStackBlock;
    v75 = 3221225472;
    v76 = sub_10000C4B8;
    v77 = &unk_100030B50;
    v79 = blockCopy;
    v78 = v21;
    PBDispatchAsyncCallback();

    clientAuditTokenInfo = v79;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)requestItemFromPasteboardWithName:(id)name UUID:(id)d authenticationMessage:(id)message itemIndex:(unint64_t)index typeIdentifier:(id)identifier dataOwner:(int64_t)owner loadContext:(id)context completionBlock:(id)self0
{
  identifierCopy = identifier;
  blockCopy = block;
  contextCopy = context;
  messageCopy = message;
  dCopy = d;
  nameCopy = name;
  v19 = _PBLog();
  v20 = os_signpost_id_generate(v19);

  v21 = _PBLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "RequestItem", &unk_10002C5F1, buf, 2u);
  }

  if (blockCopy)
  {
    v23 = v37;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000D050;
    v37[3] = &unk_1000314B0;
    v28 = &v38;
    v38 = blockCopy;
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_retainBlock(v23);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000D070;
  v32[3] = &unk_100031500;
  v25 = identifierCopy;
  v33 = v25;
  v34 = v24;
  v36 = v20;
  v26 = blockCopy;
  v35 = v26;
  v27 = v24;
  [(PBPasteboardServerServicer *)self requestFromPasteboardWithName:nameCopy UUID:dCopy authenticationMessage:messageCopy itemIndex:index needData:1 dataOwner:owner loadContext:contextCopy errorBlock:v27 pasteboardItemBlock:v32];

  if (blockCopy)
  {
  }
}

- (void)requestPatternDetectionsFromPasteboardWithName:(id)name UUID:(id)d authenticationMessage:(id)message itemIndex:(unint64_t)index patterns:(id)patterns needValues:(BOOL)values dataOwner:(int64_t)owner completionBlock:(id)self0
{
  valuesCopy = values;
  patternsCopy = patterns;
  blockCopy = block;
  v15 = blockCopy;
  if (blockCopy)
  {
    v16 = v36;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000D724;
    v36[3] = &unk_1000314B0;
    v26 = &v37;
    v37 = blockCopy;
  }

  else
  {
    v16 = 0;
  }

  messageCopy = message;
  dCopy = d;
  nameCopy = name;
  v20 = objc_retainBlock(v16);
  v21 = self->_detectiveAgency;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000D738;
  v30[3] = &unk_1000315D8;
  v22 = v15;
  v33 = v22;
  v35 = valuesCopy;
  v23 = patternsCopy;
  v34 = v20;
  v31 = v23;
  v32 = v21;
  v24 = v21;
  v25 = v20;
  [(PBPasteboardServerServicer *)self requestFromPasteboardWithName:nameCopy UUID:dCopy authenticationMessage:messageCopy itemIndex:index needData:valuesCopy dataOwner:owner loadContext:0 errorBlock:v25 pasteboardItemBlock:v30];

  if (v15)
  {
  }
}

- (void)didPasteContentsFromPasteboardWithName:(id)name UUID:(id)d completionBlock:(id)block
{
  if (block)
  {
    PBDispatchAsyncCallback();
  }
}

- (void)performJanitorialTasksCompletionBlock:(id)block
{
  blockCopy = block;
  clientAuditTokenInfo = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
  isAllowedToPerformJanitorialTasks = [clientAuditTokenInfo isAllowedToPerformJanitorialTasks];
  v7 = _PBLog();
  v8 = v7;
  if (isAllowedToPerformJanitorialTasks)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      bundleID = [clientAuditTokenInfo bundleID];
      teamID = [clientAuditTokenInfo teamID];
      *buf = 138412546;
      v17 = bundleID;
      v18 = 2112;
      v19 = teamID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Bundle ID %@ from team %@ is requesting to perform janitorial tasks.", buf, 0x16u);
    }

    v11 = +[PBPasteboardModel sharedModel];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000E138;
    v14[3] = &unk_100031600;
    v15 = blockCopy;
    [v11 deleteOrphanedPasteboardFilesCompletionBlock:v14];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      bundleID2 = [clientAuditTokenInfo bundleID];
      teamID2 = [clientAuditTokenInfo teamID];
      *buf = 138412546;
      v17 = bundleID2;
      v18 = 2112;
      v19 = teamID2;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bundle ID %@ from team %@ is not allowed to perform janitorial tasks.", buf, 0x16u);
    }

    if (blockCopy)
    {
      PBDispatchAsyncCallback();
    }
  }
}

- (void)getAllPasteboardsCompletionBlock:(id)block
{
  blockCopy = block;
  clientAuditTokenInfo = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
  isAllowedToPerformJanitorialTasks = [clientAuditTokenInfo isAllowedToPerformJanitorialTasks];
  v7 = _PBLog();
  v8 = v7;
  if (isAllowedToPerformJanitorialTasks)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      bundleID = [clientAuditTokenInfo bundleID];
      teamID = [clientAuditTokenInfo teamID];
      *buf = 138412546;
      v19 = bundleID;
      v20 = 2112;
      v21 = teamID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Bundle ID %@ from team %@ is enumerating all pasteboards", buf, 0x16u);
    }

    v11 = +[PBPasteboardModel sharedModel];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000E41C;
    v16[3] = &unk_100031628;
    v12 = &v17;
    v17 = blockCopy;
    [v11 getAllPasteboardsCompletionBlock:v16];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    bundleID2 = [clientAuditTokenInfo bundleID];
    teamID2 = [clientAuditTokenInfo teamID];
    *buf = 138412546;
    v19 = bundleID2;
    v20 = 2112;
    v21 = teamID2;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bundle ID %@ from team %@ is not allowed to enumerate all pasteboards.", buf, 0x16u);
  }

  if (blockCopy)
  {
    v12 = &v15;
    v15 = blockCopy;
    PBDispatchAsyncCallback();
LABEL_9:
  }
}

- (void)getRemoteContentForLayerContextWithId:(unint64_t)id slotStyle:(id)style pasteButtonTag:(id)tag completionBlock:(id)block
{
  styleCopy = style;
  tagCopy = tag;
  blockCopy = block;
  if (!id || !styleCopy || !tagCopy)
  {
    v15 = _PBLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Remote contents missing parameters.", v17, 2u);
    }

    if (!blockCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = [(UISSlotMachine *)self->_pasteButtonSlotMachine remoteContentForLayerContextWithId:id style:styleCopy tag:tagCopy];
  v14 = v13;
  if (blockCopy)
  {
    if (v13)
    {
      blockCopy[2](blockCopy, v13, 0);
      goto LABEL_12;
    }

LABEL_10:
    v16 = PBNotAuthorizedError();
    (blockCopy)[2](blockCopy, 0, v16);

LABEL_11:
    v14 = 0;
  }

LABEL_12:
}

- (void)requestSecurePasteAuthenticationMessageWithContext:(unint64_t)context forClientVersionedPID:(int64_t)d completionBlock:(id)block
{
  blockCopy = block;
  clientAuditTokenInfo = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
  v10 = +[PBSecurePasteAuthenticationMessageGenerator sharedInstance];
  v13 = 0;
  v11 = [v10 generateAuthenticationMessageWithContext:context forClientVersionedPID:d requesterAuditTokenInfo:clientAuditTokenInfo error:&v13];
  v12 = v13;

  blockCopy[2](blockCopy, v11, v12);
}

@end