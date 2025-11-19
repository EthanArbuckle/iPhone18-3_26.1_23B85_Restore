@interface PBPasteboardServerServicer
+ (id)newServicerForConnection:(id)a3 detectiveAgency:(id)a4 pasteButtonSlotMachine:(id)a5 pasteAuthority:(id)a6 pasteNotifier:(id)a7;
- (NSXPCConnection)clientToServerConnection;
- (PBPasteboardServerServicer)initWithConnection:(id)a3 detectiveAgency:(id)a4 pasteButtonSlotMachine:(id)a5 pasteAuthority:(id)a6 pasteNotifier:(id)a7;
- (id)hangAssertionForAuditTokenInfo:(id)a3;
- (id)pasteAnnoucementForPasteboard:(id)a3 auditTokenInfo:(id)a4 loadContext:(id)a5 timeout:(double)a6;
- (id)sanitizedDoNothingCopyOfPasteboard:(id)a3 destinationAuditTokenInfo:(id)a4;
- (void)_pasteboardWithName:(id)a3 localOnly:(BOOL)a4 createIfNeeded:(BOOL)a5 deviceIsLocked:(BOOL)a6 completionBlock:(id)a7;
- (void)announcePasteForPasteboard:(id)a3 auditTokenInfo:(id)a4;
- (void)deletePersistentPasteboardWithName:(id)a3 completionBlock:(id)a4;
- (void)didInvalidateItemCollectionWithUUID:(id)a3;
- (void)didPasteContentsFromPasteboardWithName:(id)a3 UUID:(id)a4 completionBlock:(id)a5;
- (void)getAllPasteboardsCompletionBlock:(id)a3;
- (void)getRemoteContentForLayerContextWithId:(unint64_t)a3 slotStyle:(id)a4 pasteButtonTag:(id)a5 completionBlock:(id)a6;
- (void)localGeneralPasteboardCompletionBlock:(id)a3;
- (void)pasteboardWithName:(id)a3 createIfNeeded:(BOOL)a4 completionBlock:(id)a5;
- (void)performJanitorialTasksCompletionBlock:(id)a3;
- (void)removeActiveAuthorizationAnnouncer:(id)a3 collection:(id)a4;
- (void)requestFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 needData:(BOOL)a7 dataOwner:(int64_t)a8 loadContext:(id)a9 errorBlock:(id)a10 pasteboardItemBlock:(id)a11;
- (void)requestItemFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 typeIdentifier:(id)a7 dataOwner:(int64_t)a8 loadContext:(id)a9 completionBlock:(id)a10;
- (void)requestPatternDetectionsFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 patterns:(id)a7 needValues:(BOOL)a8 dataOwner:(int64_t)a9 completionBlock:(id)a10;
- (void)requestSecurePasteAuthenticationMessageWithContext:(unint64_t)a3 forClientVersionedPID:(int64_t)a4 completionBlock:(id)a5;
- (void)requestUserAuthorizationForPasteboard:(id)a3 auditTokenInfo:(id)a4 loadContext:(id)a5 completionHandler:(id)a6;
- (void)savePasteboard:(id)a3 dataProviderEndpoint:(id)a4 completionBlock:(id)a5;
- (void)setActiveAuthorizationAnnouncer:(id)a3 collection:(id)a4;
@end

@implementation PBPasteboardServerServicer

- (NSXPCConnection)clientToServerConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_clientToServerConnection);

  return WeakRetained;
}

+ (id)newServicerForConnection:(id)a3 detectiveAgency:(id)a4 pasteButtonSlotMachine:(id)a5 pasteAuthority:(id)a6 pasteNotifier:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[PBPasteboardServerServicer alloc] initWithConnection:v15 detectiveAgency:v14 pasteButtonSlotMachine:v13 pasteAuthority:v12 pasteNotifier:v11];

  return v16;
}

- (PBPasteboardServerServicer)initWithConnection:(id)a3 detectiveAgency:(id)a4 pasteButtonSlotMachine:(id)a5 pasteAuthority:(id)a6 pasteNotifier:(id)a7
{
  v12 = a3;
  v27 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v31.receiver = self;
  v31.super_class = PBPasteboardServerServicer;
  v16 = [(PBPasteboardServerServicer *)&v31 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_clientToServerConnection, v12);
    [v12 setExportedObject:v17];
    v18 = PBNewClientToServerXPCInterface();
    [v12 setExportedInterface:v18];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100009358;
    v29[3] = &unk_100030D98;
    v19 = v17;
    v30 = v19;
    [v12 setInvalidationHandler:v29];
    if (v12)
    {
      [v12 auditToken];
    }

    else
    {
      memset(v28, 0, sizeof(v28));
    }

    v20 = sub_100001B6C(v28);
    clientAuditTokenInfo = v19->_clientAuditTokenInfo;
    v19->_clientAuditTokenInfo = v20;

    objc_storeStrong(&v19->_detectiveAgency, a4);
    objc_storeStrong(&v19->_pasteButtonSlotMachine, a5);
    objc_storeStrong(&v19->_pasteAuthority, a6);
    objc_storeStrong(&v19->_pasteNotifier, a7);
    v22 = +[NSMutableDictionary dictionary];
    activeAnnouncers = v19->_activeAnnouncers;
    v19->_activeAnnouncers = v22;

    v24 = +[NSMutableDictionary dictionary];
    authorizationReplyBlocks = v19->_authorizationReplyBlocks;
    v19->_authorizationReplyBlocks = v24;
  }

  return v17;
}

- (void)_pasteboardWithName:(id)a3 localOnly:(BOOL)a4 createIfNeeded:(BOOL)a5 deviceIsLocked:(BOOL)a6 completionBlock:(id)a7
{
  v8 = a6;
  v40 = a5;
  v9 = a4;
  v11 = a3;
  v12 = a7;
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
  v17 = [(PBPasteboardServerServicer *)self clientToServerConnection];
  v18 = v17;
  if (v17)
  {
    [v17 auditToken];
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
    v21 = [v19 bundleID];
    [v19 teamID];
    v22 = v8;
    v24 = v23 = v9;
    v25 = [v19 pid];
    *buf = 138413058;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    *&buf[22] = 1024;
    *&buf[24] = v25;
    *&buf[28] = 2112;
    *&buf[30] = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BundleID %@ from team %@ (pid %d) is requesting pasteboard %@", buf, 0x26u);

    v9 = v23;
    v8 = v22;
  }

  if (v9)
  {
    v26 = _PBLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v19 bundleID];
      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Requesting local only pasteboard for %@", buf, 0xCu);
    }
  }

  v58 = 0;
  v28 = PBIsPasteboardNameAllowed();
  v29 = 0;
  if (v28)
  {
    if (v8)
    {
      if (([v11 isEqualToString:PBGeneralPasteboardName] & 1) == 0)
      {
        v37 = _PBLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Access to pasteboard named %@ is not allowed while the device is locked.", buf, 0xCu);
        }

        if (v12)
        {
          v51 = _NSConcreteStackBlock;
          v52 = 3221225472;
          v53 = sub_100009A0C;
          v54 = &unk_100031230;
          v56 = v12;
          v55 = v11;
          v57 = spid;
          PBDispatchAsyncCallback();

          v32 = v56;
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      if (sub_100002298(v11, v19, 0))
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

    else if (sub_100002298(v11, v19, 0))
    {
LABEL_25:
      v33 = +[PBPasteboardModel sharedModel];
      v34 = [v19 bundleID];
      [v19 teamID];
      v35 = v39 = v9;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100009ACC;
      v46[3] = &unk_100031258;
      v46[4] = self;
      v47 = v19;
      v48 = v11;
      v49 = v12;
      v50 = spid;
      LOBYTE(v38) = v8;
      [v33 getPasteboardNamed:v48 bundleID:v34 teamID:v35 createIfNeeded:v40 localOnly:v39 processInfo:v47 deviceIsLocked:v38 completionBlock:v46];

      v32 = v47;
      goto LABEL_34;
    }

    v36 = _PBLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "...client not allowed to request pasteboard %@. Error: %@", buf, 0x16u);
    }

    if (v12)
    {
      v45 = v12;
      v44 = v11;
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
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "...pasteboard name %@ is not allowed. Error: %@", buf, 0x16u);
    }

    if (v12)
    {
      v43 = v12;
      v42 = v29;
      PBDispatchAsyncCallback();

      v32 = v43;
LABEL_34:
    }
  }

LABEL_35:
}

- (void)pasteboardWithName:(id)a3 createIfNeeded:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v13 = a3;
  v9 = PBIsPasteboardNameGeneralPasteboard();
  v10 = MKBGetDeviceLockState();
  v12 = v10 != 3 && v10 != 0;
  [(PBPasteboardServerServicer *)self _pasteboardWithName:v13 localOnly:0 createIfNeeded:v9 | v5 deviceIsLocked:v12 completionBlock:v8];
}

- (void)localGeneralPasteboardCompletionBlock:(id)a3
{
  v4 = PBGeneralPasteboardName;
  v8 = a3;
  v5 = MKBGetDeviceLockState();
  v7 = v5 != 3 && v5 != 0;
  [(PBPasteboardServerServicer *)self _pasteboardWithName:v4 localOnly:1 createIfNeeded:1 deviceIsLocked:v7 completionBlock:v8];
}

- (id)sanitizedDoNothingCopyOfPasteboard:(id)a3 destinationAuditTokenInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 copyWithDoNothingLoaders];
  v8 = [v5 UUID];
  [v7 setUUID:v8];

  if (([v6 isAllowedToQueryBundleID] & 1) == 0)
  {
    [v7 setSaveBootSession:0];
    [v7 setSaveTimestamp:0];
    [v7 setOriginatorPersistentID:0];
    [v7 setOriginatorBundleID:0];
    [v7 setOriginatorTeamID:0];
    [v7 setOriginatorLocalizedName:0];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v7 items];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 metadata];
        if ([v15 count])
        {
          v16 = +[NSMutableDictionary dictionary];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10000A164;
          v20[3] = &unk_100031280;
          v21 = v6;
          v22 = v5;
          v23 = v16;
          v17 = v16;
          [v15 enumerateKeysAndObjectsUsingBlock:v20];
          [v14 setMetadata:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  return v19;
}

- (void)savePasteboard:(id)a3 dataProviderEndpoint:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MKBGetDeviceLockState();
  v13 = v11 != 3 && v11 != 0;
  if (v11)
  {
    if (v11 != 3)
    {
      v14 = [v8 name];
      v15 = PBIsPasteboardNameGeneralPasteboard();

      if ((v15 & 1) == 0)
      {
        v47 = _PBLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v8 name];
          *buf = 138412290;
          v64 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Access to pasteboard named %@ is not allowed while the device is locked.", buf, 0xCu);
        }

        if (!v10)
        {
          v18 = 0;
          goto LABEL_40;
        }

        v57 = _NSConcreteStackBlock;
        v58 = 3221225472;
        v59 = sub_10000AA14;
        v60 = &unk_100030B50;
        v62 = v10;
        v61 = v8;
        PBDispatchAsyncCallback();

        v44 = 0;
        v19 = v62;
        goto LABEL_39;
      }
    }
  }

  v16 = [v8 name];
  v56 = 0;
  v17 = PBIsPasteboardNameAllowed();
  v18 = 0;

  if (v17)
  {
    v19 = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
    v20 = [v8 name];
    v21 = sub_100002298(v20, v19, 0);

    if (v21)
    {
      [v8 setDataProviderEndpoint:v9];
      v22 = sub_100010628();
      [v8 setSaveBootSession:v22];

      [v8 setSaveTimestamp:mach_continuous_time()];
      v23 = objc_opt_new();
      [v8 setSharingToken:v23];

      v24 = [v19 persistentIdentifier];
      [v8 setOriginatorPersistentID:v24];

      v25 = [v19 bundleID];
      [v8 setOriginatorBundleID:v25];

      v26 = [v19 teamID];
      [v8 setOriginatorTeamID:v26];

      v27 = [v19 localizedName];
      [v8 setOriginatorLocalizedName:v27];

      [v8 setOriginatorAllowedToCopyOnPaste:{objc_msgSend(v19, "isAllowedToCopyOnPaste")}];
      v28 = _PBLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v19 bundleID];
        v30 = [v19 teamID];
        v31 = [v8 name];
        *buf = 138412802;
        v64 = v29;
        v65 = 2112;
        v66 = v30;
        v67 = 2112;
        v68 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Bundle ID %@ from team %@ is saving pasteboard named %@", buf, 0x20u);
      }

      v32 = +[MCProfileConnection sharedConnection];
      v33 = [v8 originatorBundleID];
      v34 = [v32 dataOwnerForBundleID:v33 requestedDataOwner:{objc_msgSend(v8, "originatorDataOwner")}];

      [v8 setOriginatorDataOwner:v34];
      if (([v32 isContinuityPasteboardWithManagedDataAllowed] & 1) == 0 && v34 == 2)
      {
        [v8 setLocalOnly:1];
      }

      v35 = [v8 name];
      v36 = PBIsPasteboardNameGeneralPasteboard();

      if (v36)
      {
        _PBDefaultMaxGeneralPasteboardAgeForLockState();
        if (v37 > 0.0)
        {
          v38 = [NSDate dateWithTimeIntervalSinceNow:?];
          v39 = [v8 expirationDate];
          v40 = v39;
          if (!v39 || [v39 compare:v38] == 1)
          {
            [v8 setExpirationDate:v38];
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
      v54 = v8;
      v55 = v10;
      [v42 savePasteboard:v54 deviceIslocked:v13 completionBlock:v53];
    }

    else
    {
      v45 = _PBLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v50 = [v8 name];
        *buf = 138412290;
        v64 = v50;
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "...client is not allowed to access pasteboard named %@", buf, 0xCu);
      }

      v46 = [v8 name];
      v44 = PBPasteboardNameInvalidError();

      if (!v10)
      {
        goto LABEL_39;
      }

      v52 = v10;
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
    v49 = [v8 name];
    *buf = 138412546;
    v64 = v49;
    v65 = 2112;
    v66 = v18;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "...pasteboard name %@ is not allowed. Error: %@", buf, 0x16u);
  }

  if (v10)
  {
    v51 = v10;
    v44 = v18;
    PBDispatchAsyncCallback();

    v19 = v51;
    goto LABEL_39;
  }

LABEL_40:
}

- (void)deletePersistentPasteboardWithName:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
  v27 = 0;
  v9 = PBIsPasteboardNameAllowed();
  v10 = 0;
  v11 = _PBLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 bundleID];
      v14 = [v8 teamID];
      *buf = 138412802;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bundle ID %@ from team %@ is deleting persistent pasteboard named %@", buf, 0x20u);
    }

    v15 = +[PBPasteboardModel sharedModel];
    v16 = [v8 bundleID];
    v17 = [v8 teamID];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000AF10;
    v23[3] = &unk_1000312D0;
    v18 = &v24;
    v24 = v10;
    v19 = &v25;
    v20 = v6;
    v25 = v20;
    v26 = v7;
    [v15 deletePasteboardNamed:v20 bundleID:v16 teamID:v17 completionBlock:v23];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v29 = v6;
    v30 = 2112;
    v31 = v10;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "...pasteboard name %@ is not allowed. Error: %@", buf, 0x16u);
  }

  if (v7)
  {
    v18 = &v22;
    v22 = v7;
    v19 = &v21;
    v21 = v10;
    PBDispatchAsyncCallback();
LABEL_9:
  }
}

- (id)hangAssertionForAuditTokenInfo:(id)a3
{
  v3 = a3;
  v4 = +[RBSTarget targetWithPid:](RBSTarget, "targetWithPid:", [v3 pid]);
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
      v13 = [v3 pid];
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

- (void)announcePasteForPasteboard:(id)a3 auditTokenInfo:(id)a4
{
  v5 = [(PBPasteboardServerServicer *)self pasteAnnoucementForPasteboard:a3 auditTokenInfo:a4 loadContext:0 timeout:0.0];
  [(PBPasteNotifying *)self->_pasteNotifier notifyPaste:v5];
}

- (void)requestUserAuthorizationForPasteboard:(id)a3 auditTokenInfo:(id)a4 loadContext:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0.0;
  if ([v12 isFromUIFramework] && objc_msgSend(v12, "isBlockingMainThread"))
  {
    v15 = [(PBPasteboardServerServicer *)self hangAssertionForAuditTokenInfo:v11];
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

  v27 = v11;
  v26 = [(PBPasteboardServerServicer *)self pasteAnnoucementForPasteboard:v10 auditTokenInfo:v11 loadContext:v12 timeout:v14];
  v16 = [v10 UUID];
  v17 = [(PBPasteboardServerServicer *)self activeAnnouncers];
  v18 = [v17 objectForKeyedSubscript:v16];

  v19 = [(PBPasteboardServerServicer *)self authorizationReplyBlocks];
  v20 = [v19 objectForKeyedSubscript:v16];

  if (!v20)
  {
    v20 = +[NSMutableArray array];
    v21 = [(PBPasteboardServerServicer *)self authorizationReplyBlocks];
    [v21 setObject:v20 forKeyedSubscript:v16];
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000B688;
  v38[3] = &unk_1000312F8;
  v22 = v13;
  v40 = v22;
  v23 = v15;
  v39 = v23;
  v24 = objc_retainBlock(v38);
  v25 = objc_retainBlock(v24);
  [v20 addObject:v25];

  if (!v18)
  {
    v18 = [[PBCFUserNotificationPasteAnnouncer alloc] initWithAuditTokenInfo:v27];
    [(PBPasteboardServerServicer *)self setActiveAuthorizationAnnouncer:v18 collection:v10];
    objc_initWeak(&location, v10);
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
    v31 = v16;
    [(PBCFUserNotificationPasteAnnouncer *)v18 requestAuthorizationForPaste:v26 replyHandler:v28];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }
}

- (void)didInvalidateItemCollectionWithUUID:(id)a3
{
  v4 = a3;
  v3 = v4;
  PBDispatchAsyncCallback();
}

- (void)setActiveAuthorizationAnnouncer:(id)a3 collection:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(PBPasteboardServerServicer *)self activeAnnouncers];
  v8 = [v9 UUID];
  [v7 setObject:v6 forKey:v8];

  [v9 addInvalidationDelegate:self];
}

- (void)removeActiveAuthorizationAnnouncer:(id)a3 collection:(id)a4
{
  v7 = a4;
  v5 = [(PBPasteboardServerServicer *)self activeAnnouncers];
  v6 = [v7 UUID];
  [v5 removeObjectForKey:v6];

  [v7 removeInvalidationDelegate:self];
}

- (id)pasteAnnoucementForPasteboard:(id)a3 auditTokenInfo:(id)a4 loadContext:(id)a5 timeout:(double)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 originatorPersistentID];
  if (v10 && (v11 = [[LSBundleRecord alloc] initWithPersistentIdentifier:v10]) != 0)
  {
    v12 = v11;
    v13 = [v11 localizedName];
  }

  else
  {
    v14 = [v8 originatorBundleID];
    v12 = [LSBundleRecord bundleRecordWithBundleIdentifier:v14 allowPlaceholder:0 error:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v12 teamIdentifier];
      v16 = [v8 originatorTeamID];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {
        v18 = +[NSLocale preferredLanguages];
        v19 = [v12 localizedNameWithPreferredLocalizations:v18];

        v20 = [v12 persistentIdentifier];

        v10 = v20;
        goto LABEL_9;
      }
    }

    v13 = [v8 originatorLocalizedName];
  }

  v19 = v13;
LABEL_9:
  if ([v8 isOrWasRemote])
  {
    v21 = [DRPasteAnnouncementContinuityEndpoint alloc];
    v22 = [v8 remoteDeviceName];
    v23 = [v21 initWithDeviceName:v22];
  }

  else
  {
    v24 = [v12 bundleIdentifier];
    v25 = [v24 isEqualToString:@"com.apple.springboard"];

    if (v25)
    {
      v26 = +[DRPasteAnnouncementApplicationEndpoint homeScreenEndpoint];
    }

    else
    {
      v26 = [[DRPasteAnnouncementApplicationEndpoint alloc] initWithLocalizedName:v19 persistentIdentifier:v10];
    }

    v23 = v26;
  }

  v27 = [v9 bundleID];
  v28 = [v27 isEqualToString:@"com.apple.springboard"];

  if (v28)
  {
    v29 = +[DRPasteAnnouncementApplicationEndpoint homeScreenEndpoint];
  }

  else
  {
    v30 = [DRPasteAnnouncementApplicationEndpoint alloc];
    v31 = [v9 localizedName];
    v32 = [v9 persistentIdentifier];
    v29 = [v30 initWithLocalizedName:v31 persistentIdentifier:v32];
  }

  v33 = [DRPasteAnnouncement alloc];
  v34 = [v8 UUID];
  v35 = [v33 initWithSource:v23 destination:v29 pasteboardUUID:v34 timeout:a6];

  return v35;
}

- (void)requestFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 needData:(BOOL)a7 dataOwner:(int64_t)a8 loadContext:(id)a9 errorBlock:(id)a10 pasteboardItemBlock:(id)a11
{
  v43 = a7;
  v14 = a3;
  v15 = a4;
  v47 = a5;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = MKBGetDeviceLockState();
  v80 = 0;
  v20 = PBIsPasteboardNameAllowed();
  v21 = 0;
  if (v20)
  {
    v48 = v15;
    if (v19 && v19 != 3 && (PBIsPasteboardNameGeneralPasteboard() & 1) == 0)
    {
      v34 = v47;
      if (!v17)
      {
        goto LABEL_24;
      }

      v68 = _NSConcreteStackBlock;
      v69 = 3221225472;
      v70 = sub_10000C4D0;
      v71 = &unk_100030B50;
      v73 = v17;
      v72 = v14;
      PBDispatchAsyncCallback();

      v22 = v73;
      goto LABEL_23;
    }

    v22 = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
    v67 = 0;
    v23 = _PBLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v22 bundleID];
      [v22 teamID];
      v25 = v17;
      v26 = a8;
      v27 = v18;
      v29 = v28 = v16;
      *buf = 138413314;
      v82 = v24;
      v83 = 2112;
      v84 = v29;
      v85 = 1024;
      v86 = a6;
      v87 = 2112;
      v88 = v14;
      v89 = 2112;
      v90 = v48;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Bundle ID %@ from team %@ is requesting item %u from pasteboard named %@ with UUID %@", buf, 0x30u);

      v16 = v28;
      v18 = v27;
      a8 = v26;
      v17 = v25;
    }

    if (sub_100002298(v14, v22, &v67))
    {
      v42 = a8;
      if (v43 && PBPreferencesBoolValue() && [v14 isEqualToString:PBGeneralPasteboardName] && v67 == 1)
      {
        v30 = sub_10000C598();
        dispatch_sync(v30, &stru_1000313A8);
      }

      v31 = [v22 bundleID];
      v32 = [v22 teamID];
      v41 = PBPasteboardPersistenceName();

      v33 = self->_pasteAuthority;
      v40 = +[PBPasteboardModel sharedModel];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10000C6BC;
      v49[3] = &unk_100031488;
      v56 = v17;
      v50 = v48;
      v58 = a6;
      v57 = v18;
      v60 = v43;
      v51 = v22;
      v52 = v33;
      v34 = v47;
      v53 = v47;
      v59 = v42;
      v54 = v16;
      v55 = self;
      v35 = v41;
      v46 = v33;
      [v40 getExistingPasteboardWithPersistenceName:v41 name:v14 UUID:v50 processInfo:v51 completionBlock:v49];
    }

    else
    {
      v37 = _PBLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [v22 bundleID];
        v39 = v38 = v18;
        *buf = 138412546;
        v82 = v39;
        v83 = 2112;
        v84 = v21;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "...bundle ID %@ is not allowed to access the pasteboard. Error: %@", buf, 0x16u);

        v18 = v38;
      }

      v34 = v47;
      if (!v17)
      {
        goto LABEL_23;
      }

      v61 = _NSConcreteStackBlock;
      v62 = 3221225472;
      v63 = sub_10000C534;
      v64 = &unk_100030B50;
      v66 = v17;
      v65 = v14;
      PBDispatchAsyncCallback();

      v35 = v66;
    }

LABEL_23:
    v15 = v48;
    goto LABEL_24;
  }

  v36 = _PBLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v82 = v14;
    v83 = 2112;
    v84 = v21;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "...pasteboard name %@ is not allowed. Error: %@", buf, 0x16u);
  }

  v34 = v47;
  if (v17)
  {
    v48 = v15;
    v74 = _NSConcreteStackBlock;
    v75 = 3221225472;
    v76 = sub_10000C4B8;
    v77 = &unk_100030B50;
    v79 = v17;
    v78 = v21;
    PBDispatchAsyncCallback();

    v22 = v79;
    goto LABEL_23;
  }

LABEL_24:
}

- (void)requestItemFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 typeIdentifier:(id)a7 dataOwner:(int64_t)a8 loadContext:(id)a9 completionBlock:(id)a10
{
  v13 = a7;
  v14 = a10;
  v15 = a9;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = _PBLog();
  v20 = os_signpost_id_generate(v19);

  v21 = _PBLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "RequestItem", &unk_10002C5F1, buf, 2u);
  }

  if (v14)
  {
    v23 = v37;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000D050;
    v37[3] = &unk_1000314B0;
    v28 = &v38;
    v38 = v14;
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
  v25 = v13;
  v33 = v25;
  v34 = v24;
  v36 = v20;
  v26 = v14;
  v35 = v26;
  v27 = v24;
  [(PBPasteboardServerServicer *)self requestFromPasteboardWithName:v18 UUID:v17 authenticationMessage:v16 itemIndex:a6 needData:1 dataOwner:a8 loadContext:v15 errorBlock:v27 pasteboardItemBlock:v32];

  if (v14)
  {
  }
}

- (void)requestPatternDetectionsFromPasteboardWithName:(id)a3 UUID:(id)a4 authenticationMessage:(id)a5 itemIndex:(unint64_t)a6 patterns:(id)a7 needValues:(BOOL)a8 dataOwner:(int64_t)a9 completionBlock:(id)a10
{
  v29 = a8;
  v27 = a7;
  v14 = a10;
  v15 = v14;
  if (v14)
  {
    v16 = v36;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000D724;
    v36[3] = &unk_1000314B0;
    v26 = &v37;
    v37 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_retainBlock(v16);
  v21 = self->_detectiveAgency;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000D738;
  v30[3] = &unk_1000315D8;
  v22 = v15;
  v33 = v22;
  v35 = v29;
  v23 = v27;
  v34 = v20;
  v31 = v23;
  v32 = v21;
  v24 = v21;
  v25 = v20;
  [(PBPasteboardServerServicer *)self requestFromPasteboardWithName:v19 UUID:v18 authenticationMessage:v17 itemIndex:a6 needData:v29 dataOwner:a9 loadContext:0 errorBlock:v25 pasteboardItemBlock:v30];

  if (v15)
  {
  }
}

- (void)didPasteContentsFromPasteboardWithName:(id)a3 UUID:(id)a4 completionBlock:(id)a5
{
  if (a5)
  {
    PBDispatchAsyncCallback();
  }
}

- (void)performJanitorialTasksCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
  v6 = [v5 isAllowedToPerformJanitorialTasks];
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 bundleID];
      v10 = [v5 teamID];
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Bundle ID %@ from team %@ is requesting to perform janitorial tasks.", buf, 0x16u);
    }

    v11 = +[PBPasteboardModel sharedModel];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000E138;
    v14[3] = &unk_100031600;
    v15 = v4;
    [v11 deleteOrphanedPasteboardFilesCompletionBlock:v14];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 bundleID];
      v13 = [v5 teamID];
      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bundle ID %@ from team %@ is not allowed to perform janitorial tasks.", buf, 0x16u);
    }

    if (v4)
    {
      PBDispatchAsyncCallback();
    }
  }
}

- (void)getAllPasteboardsCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
  v6 = [v5 isAllowedToPerformJanitorialTasks];
  v7 = _PBLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 bundleID];
      v10 = [v5 teamID];
      *buf = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Bundle ID %@ from team %@ is enumerating all pasteboards", buf, 0x16u);
    }

    v11 = +[PBPasteboardModel sharedModel];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000E41C;
    v16[3] = &unk_100031628;
    v12 = &v17;
    v17 = v4;
    [v11 getAllPasteboardsCompletionBlock:v16];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = [v5 bundleID];
    v14 = [v5 teamID];
    *buf = 138412546;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bundle ID %@ from team %@ is not allowed to enumerate all pasteboards.", buf, 0x16u);
  }

  if (v4)
  {
    v12 = &v15;
    v15 = v4;
    PBDispatchAsyncCallback();
LABEL_9:
  }
}

- (void)getRemoteContentForLayerContextWithId:(unint64_t)a3 slotStyle:(id)a4 pasteButtonTag:(id)a5 completionBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!a3 || !v10 || !v11)
  {
    v15 = _PBLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17[0] = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Remote contents missing parameters.", v17, 2u);
    }

    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = [(UISSlotMachine *)self->_pasteButtonSlotMachine remoteContentForLayerContextWithId:a3 style:v10 tag:v11];
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      v12[2](v12, v13, 0);
      goto LABEL_12;
    }

LABEL_10:
    v16 = PBNotAuthorizedError();
    (v12)[2](v12, 0, v16);

LABEL_11:
    v14 = 0;
  }

LABEL_12:
}

- (void)requestSecurePasteAuthenticationMessageWithContext:(unint64_t)a3 forClientVersionedPID:(int64_t)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [(PBPasteboardServerServicer *)self clientAuditTokenInfo];
  v10 = +[PBSecurePasteAuthenticationMessageGenerator sharedInstance];
  v13 = 0;
  v11 = [v10 generateAuthenticationMessageWithContext:a3 forClientVersionedPID:a4 requesterAuditTokenInfo:v9 error:&v13];
  v12 = v13;

  v8[2](v8, v11, v12);
}

@end