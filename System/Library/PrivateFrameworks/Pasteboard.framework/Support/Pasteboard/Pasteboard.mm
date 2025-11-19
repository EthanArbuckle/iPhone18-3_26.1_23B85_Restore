PBAuditTokenInfo *sub_100001B6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *atoken.val = *a1;
  *&atoken.val[4] = v2;
  v3 = audit_token_to_pid(&atoken);
  v4 = objc_alloc_init(PBAuditTokenInfo);
  v5 = *(a1 + 16);
  *atoken.val = *a1;
  *&atoken.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &atoken);
  v7 = v6;
  if (v6)
  {
    *error = 0;
    v8 = SecTaskCopyValuesForEntitlements(v6, &off_100033B10, error);
    v9 = v8;
    if (v8)
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100002224;
      v40[3] = &unk_100031728;
      v41 = v8;
      v10 = objc_retainBlock(v40);
      [(PBAuditTokenInfo *)v4 setAllowedToQueryBundleID:(v10[2])(v10, @"com.apple.Pasteboard.originating-bundle-id-query") != 0];
      [(PBAuditTokenInfo *)v4 setAllowedAccessInBackground:(v10[2])(v10, @"com.apple.Pasteboard.background-access") != 0];
      [(PBAuditTokenInfo *)v4 setAllowedToPerformJanitorialTasks:(v10[2])(v10, @"com.apple.Pasteboard.trigger-janitor") != 0];
      [(PBAuditTokenInfo *)v4 setAllowedToPasteUnchecked:(v10[2])(v10, @"com.apple.Pasteboard.paste-unchecked") != 0];
      [(PBAuditTokenInfo *)v4 setAllowedToCopyOnPaste:(v10[2])(v10, @"com.apple.Pasteboard.copy-on-paste") != 0];
      [(PBAuditTokenInfo *)v4 setTrustedToRequestAuthenticationMessages:(v10[2])(v10, @"com.apple.Pasteboard.trusted-authentication-message-request") != 0];
      v11 = (v10[2])(v10, @"com.apple.Pasteboard.trusted-bundle-layout") != 0;

      v12 = v41;
    }

    else
    {
      v12 = _PBLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        atoken.val[0] = 134218242;
        *&atoken.val[1] = v3;
        LOWORD(atoken.val[3]) = 2112;
        *(&atoken.val[3] + 2) = *error;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not obtain entitlements for process with pid %ld: %@", &atoken, 0x16u);
      }

      v11 = 0;
    }

    v13 = SecTaskCopySigningIdentifier(v7, 0);
    [(PBAuditTokenInfo *)v4 setHasAppleSignature:[(__CFString *)v13 hasPrefix:@"com.apple."]];
  }

  else
  {
    v11 = 0;
  }

  v39 = 0;
  v14 = *(a1 + 16);
  *atoken.val = *a1;
  *&atoken.val[4] = v14;
  v15 = [LSBundleRecord bundleRecordForAuditToken:&atoken error:&v39];
  v37 = v39;
  cf = v7;
  if (!v15)
  {
    if (proc_pidpath_audittoken(a1, &atoken, 0x400u))
    {
      v25 = [NSURL fileURLWithFileSystemRepresentation:&atoken isDirectory:0 relativeToURL:0];
      v26 = v25;
      if (!v11)
      {
        if (v25)
        {
          v18 = v3;
          v21 = [v25 lastPathComponent];

LABEL_38:
          v22 = 0;
          v23 = 0;
LABEL_42:
          v17 = 0;
          v24 = 0;
          goto LABEL_43;
        }

LABEL_34:
        v31 = _PBLog();
        v18 = v3;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *error = 134217984;
          *&error[4] = v3;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "WARNING: Cannot determine name of process with pid %ld", error, 0xCu);
        }

        v21 = [NSString stringWithFormat:@"(pid:%ld)", v3, v37];
        goto LABEL_38;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_34;
      }

      v26 = 0;
    }

    *error = 0;
    v22 = 0;
    if (CPCopyBundleIdentifierAndTeamFromSecTaskRef())
    {
      v23 = *error;
    }

    else
    {
      v23 = 0;
    }

    if (v26 && (v27 = _CFBundleCopyBundleURLForExecutableURL()) != 0)
    {
      v28 = v27;
      v18 = v3;
      Unique = _CFBundleCreateUnique();
      if (Unique)
      {
        v30 = Unique;
        v21 = CFBundleGetValueForInfoDictionaryKey(Unique, _kCFBundleDisplayNameKey);
        CFRelease(v30);
      }

      else
      {
        v21 = 0;
      }

      CFRelease(v28);
    }

    else
    {
      v18 = v3;
      v21 = 0;
    }

    goto LABEL_42;
  }

  v16 = v15;
  objc_opt_class();
  v17 = v16;
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 containingBundleRecord];
  }

  v18 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    v21 = [v20 localizedName];
    v22 = [v20 bundleIdentifier];
    v23 = [v20 teamIdentifier];
    v24 = [v20 persistentIdentifier];
  }

  else
  {
    v21 = [v16 localizedName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 effectiveBundleIdentifier];
    }

    else
    {
      [v16 bundleIdentifier];
    }
    v22 = ;
    v24 = [v16 persistentIdentifier];
    v17 = 0;
    v23 = 0;
  }

LABEL_43:
  [(PBAuditTokenInfo *)v4 setLocalizedName:v21];
  [(PBAuditTokenInfo *)v4 setPid:v18];
  v32 = *(a1 + 16);
  *atoken.val = *a1;
  *&atoken.val[4] = v32;
  [(PBAuditTokenInfo *)v4 setAuditToken:&atoken];
  [(PBAuditTokenInfo *)v4 setPersistentIdentifier:v24];
  [(PBAuditTokenInfo *)v4 setTeamID:v23];
  [(PBAuditTokenInfo *)v4 setBundleID:v22];

  v33 = [v15 URL];
  [(PBAuditTokenInfo *)v4 setBundleURL:v33];

  v34 = [v15 SDKVersion];
  [(PBAuditTokenInfo *)v4 setLinkedOnVersion:v34];

  v35 = objc_opt_self();
  [(PBAuditTokenInfo *)v4 setIsExtension:objc_opt_isKindOfClass() & 1];

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

id sub_100002224(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100002298(void *a1, void *a2, char *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 isExtension])
  {
    if ((PBIsPasteboardNameGeneralPasteboard() & 1) == 0)
    {
      v7 = +[LSApplicationWorkspace defaultWorkspace];
      v8 = [v6 linkedOnVersion];
      v9 = [v7 isVersion:v8 greaterThanOrEqualToVersion:@"14.5"];

      if (!v9)
      {
        v22 = 0;
        goto LABEL_21;
      }
    }
  }

  v10 = +[RBSProcessStateDescriptor descriptor];
  [v10 setValues:1];
  v11 = FBSSceneVisibilityEndowmentNamespace;
  v30 = FBSSceneVisibilityEndowmentNamespace;
  v12 = [NSArray arrayWithObjects:&v30 count:1];
  [v10 setEndowmentNamespaces:v12];

  v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 pid]);
  v14 = [RBSProcessPredicate predicateMatchingIdentifier:v13];
  v27 = 0;
  v15 = [RBSProcessState statesForPredicate:v14 withDescriptor:v10 error:&v27];
  v16 = v27;

  if ([v15 count] == 1)
  {
    v17 = [v15 objectAtIndexedSubscript:0];
    v18 = [v17 taskState];
    if (v18 != 4 && v18 != 2 || (-[NSObject endowmentNamespaces](v17, "endowmentNamespaces"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 containsObject:v11], v19, (v20 & 1) == 0))
    {
      v22 = [v6 isAllowedAccessInBackground];
      v21 = 0;
      goto LABEL_14;
    }

    v21 = 1;
  }

  else
  {
    v17 = _PBLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v25 = [v6 pid];
      *buf = 67109378;
      LODWORD(v29[0]) = v25;
      WORD2(v29[0]) = 2112;
      *(v29 + 6) = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not get process state for pid %d. Error: %@", buf, 0x12u);
    }

    v21 = 0;
  }

  v22 = 1;
LABEL_14:

  if (a3)
  {
    *a3 = v21;
  }

  if ((v22 & 1) == 0)
  {
    v23 = _PBLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = [v6 bundleID];
      *buf = 138412290;
      v29[0] = v26;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Not allowing bundle ID %@ access to the pasteboard while it's not foreground.", buf, 0xCu);
    }
  }

LABEL_21:
  return v22;
}

void sub_10000288C(id a1)
{
  qword_100039228 = [[PBPasteboardModel alloc] _init];

  _objc_release_x1();
}

void sub_100002CC0(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (PBIsPasteboardNameGeneralPasteboard())
    {
      v3 = PBDeviceLockedGeneralPasteboardName;
      v4 = PBGeneralPasteboardName;
      v5 = [*(a1 + 40) workQueue_pasteboardWithPersistenceName:PBDeviceLockedGeneralPasteboardName name:PBGeneralPasteboardName localOnly:1];
      if (v5)
      {
        v6 = _PBLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pulling device-locked pasteboard into general pasteboard.", buf, 2u);
        }

        v7 = [PBItemCollection alloc];
        v8 = [v5 items];
        v9 = [v7 initWithItems:v8];

        [v9 setName:v4];
        v10 = [v5 metadata];
        [v9 setMetadata:v10];

        v11 = [v5 privateMetadata];
        [v9 setPrivateMetadata:v11];

        v12 = [v5 expirationDate];
        [v9 setExpirationDate:v12];

        [v9 setPersistent:1];
        v13 = [v5 originatorPersistentID];
        [v9 setOriginatorPersistentID:v13];

        v14 = [v5 originatorBundleID];
        [v9 setOriginatorBundleID:v14];

        v15 = [v5 originatorTeamID];
        [v9 setOriginatorTeamID:v15];

        v16 = [v5 originatorLocalizedName];
        [v9 setOriginatorLocalizedName:v16];

        v17 = [v5 saveBootSession];
        [v9 setSaveBootSession:v17];

        [v9 setSaveTimestamp:{objc_msgSend(v5, "saveTimestamp")}];
        [v9 setLocalOnly:1];
        v18 = [*(a1 + 40) workQueue_savePasteboard:v9 isServerToServerCopy:1 outNotificationState:0 outChangeCount:0];
        [*(a1 + 40) workQueue_deletePasteboardWithPersistenceName:v3];
      }
    }
  }

  v19 = [*(a1 + 40) workQueue_pasteboardWithPersistenceName:*(a1 + 32) name:*(a1 + 48) localOnly:*(a1 + 73)];
  if (!v19)
  {
    if (*(a1 + 74) != 1)
    {
      v19 = 0;
      if (sub_100002638())
      {
LABEL_18:
        v20 = *(a1 + 64);
        if (!v20)
        {
          goto LABEL_23;
        }

        v24 = v20;
        v19 = v19;
        PBDispatchAsyncCallback();

        v21 = v24;
LABEL_22:

        goto LABEL_23;
      }

LABEL_20:
      v22 = *(a1 + 64);
      if (!v22)
      {
        goto LABEL_23;
      }

      v23 = v22;
      v19 = v19;
      PBDispatchAsyncCallback();

      v21 = v23;
      goto LABEL_22;
    }

    v19 = [[PBItemCollection alloc] initWithItems:&__NSArray0__struct];
    [v19 setName:*(a1 + 48)];
    if (*(a1 + 72) == 1)
    {
      [v19 setDeviceLockedPasteboard:1];
    }
  }

  if ((sub_100002638() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v19 || ![v19 isRemote] || (objc_msgSend(v19, "isRemoteMetadataLoaded") & 1) != 0)
  {
    goto LABEL_18;
  }

  [*(a1 + 40) workQueue_faultMetadataForRemotePasteboard:v19 processInfo:*(a1 + 56) completionBlock:*(a1 + 64)];
LABEL_23:
}

void sub_1000030F8(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = PBPasteboardNameInvalidError();
  (*(v2 + 16))(v2, 0, v4);
}

void sub_1000033F0(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue_pasteboardWithPersistenceName:*(a1 + 40) name:*(a1 + 48) localOnly:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 UUID];
    v5 = [v4 isEqual:*(a1 + 56)];

    if (v5)
    {
      v6 = v3;
      goto LABEL_6;
    }
  }

  v6 = [*(a1 + 32) workQueue_pasteboardWithPersistenceName:*(a1 + 40) name:*(a1 + 48) localOnly:1];

  if (!v6)
  {
    sub_100002638();
    v12 = *(a1 + 72);
    if (!v12)
    {
      v6 = 0;
      goto LABEL_17;
    }

    v10 = v19;
    v19[0] = v12;
    v18 = *(a1 + 48);
    PBDispatchAsyncCallback();

    v6 = 0;
    goto LABEL_16;
  }

  v7 = [v6 UUID];
  v8 = [v7 isEqual:*(a1 + 56)];

  if (v8)
  {
LABEL_6:
    if (sub_100002638() && [v6 isRemote] && (objc_msgSend(v6, "isRemoteDataLoaded") & 1) == 0)
    {
      v14 = [*(a1 + 32) workQueue];
      dispatch_suspend(v14);

      v15 = *(a1 + 32);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100003740;
      v21[3] = &unk_100030BC8;
      v10 = v22;
      v16 = *(a1 + 64);
      v17 = *(a1 + 72);
      v21[4] = *(a1 + 32);
      v22[0] = v17;
      [v15 workQueue_faultDataForRemotePasteboard:v6 processInfo:v16 completionBlock:v21];
      goto LABEL_16;
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      v19[1] = _NSConcreteStackBlock;
      v19[2] = 3221225472;
      v19[3] = sub_1000038CC;
      v19[4] = &unk_100030B50;
      v10 = &v20;
      v20 = v9;
      v6 = v6;
      v19[5] = v6;
      PBDispatchAsyncCallback();
      v11 = v6;
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    v22[1] = _NSConcreteStackBlock;
    v22[2] = 3221225472;
    v22[3] = sub_1000036DC;
    v22[4] = &unk_100030B50;
    v10 = &v24;
    v24 = v13;
    v23 = *(a1 + 56);
    PBDispatchAsyncCallback();
    v11 = v23;
    goto LABEL_15;
  }

LABEL_17:
}

void sub_1000036DC(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = PBPasteboardNotAvailableError();
  (*(v2 + 16))(v2, 0, v4);
}

void sub_100003740(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    if (v6)
    {
      v14[1] = _NSConcreteStackBlock;
      v14[2] = 3221225472;
      v14[3] = sub_10000389C;
      v14[4] = &unk_100030B50;
      v9 = &v16;
      v16 = v8;
      v10 = &v15;
      v15 = v7;
      PBDispatchAsyncCallback();
    }

    else
    {
      v9 = v14;
      v14[0] = v8;
      v10 = &v12;
      v12 = v5;
      v13 = 0;
      PBDispatchAsyncCallback();
    }
  }

  v11 = [*(a1 + 32) workQueue];
  dispatch_resume(v11);
}

void sub_1000038E4(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = PBPasteboardNameInvalidError();
  (*(v2 + 16))(v2, 0, v4);
}

void sub_100003948(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = PBPasteboardNameInvalidError();
  (*(v2 + 16))(v2, 0, v4);
}

void sub_1000040D4(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  v2 = [*(a1 + 32) workQueue_savePasteboard:*(a1 + 40) isServerToServerCopy:0 outNotificationState:&v7 outChangeCount:&v6];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = v3;
    v4 = v2;
    PBDispatchAsyncCallback();
  }
}

void sub_10000445C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = PBPasteboardPersistenceName();
  [*(a1 + 56) workQueue_deletePasteboardWithPersistenceName:v5];
  v6 = *(a1 + 32);
  if (PBIsPasteboardNameGeneralPasteboard())
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = PBPasteboardPersistenceName();
    [*(a1 + 56) workQueue_deletePasteboardWithPersistenceName:v10];
  }

  sub_10000F95C();
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = v11;
    PBDispatchAsyncCallback();
  }
}

void sub_1000048B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [v2 workQueue_getAllPasteboardsOutError:&v9];
  v4 = v9;
  v5 = *(a1 + 40);
  if (v5)
  {
    v8 = v5;
    v6 = v3;
    v7 = v4;
    PBDispatchAsyncCallback();
  }
}

void sub_100004EAC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];

  CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
}

uint64_t sub_100004FF8(uint64_t a1)
{
  [*(a1 + 32) workQueue_deleteOrphanedPasteboardFiles];
  result = *(a1 + 40);
  if (result)
  {

    return PBDispatchAsyncCallback();
  }

  return result;
}

uint64_t sub_100005140(uint64_t a1)
{
  qword_100039238 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100005290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000052B4(uint64_t a1)
{
  v2 = _PBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received MDMManagingOrgInfoChangedNotification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateOrgName];
}

uint64_t sub_100005424(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000582C(uint64_t a1)
{
  qword_100039248 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000590C(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    return;
  }

  v2 = +[NSFileManager defaultManager];
  v3 = PBStorageRootURL();
  v4 = [v3 URLByAppendingPathComponent:PBSchemaFilename];

  v5 = PBOldPasteboardStorageRootURL();
  v6 = [v5 path];
  v7 = [v2 fileExistsAtPath:v6];

  if (v7)
  {
    [v2 removeItemAtURL:v5 error:0];
    v8 = _PBLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removed old pasteboard folder.", buf, 2u);
    }
  }

  v9 = PBStorageRootURL();
  v10 = [v9 path];
  v11 = [v2 fileExistsAtPath:v10];

  if (v11)
  {
    v53 = v2;
    v55 = v5;
    v56 = v4;
    v12 = [NSData dataWithContentsOfURL:v4 options:8 error:0];
    v13 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v12 error:0];
    [v13 setDecodingFailurePolicy:1];
    v14 = objc_opt_self();
    v67[0] = v14;
    v15 = objc_opt_self();
    v67[1] = v15;
    v16 = objc_opt_self();
    v67[2] = v16;
    v17 = [NSArray arrayWithObjects:v67 count:3];
    v18 = [NSSet setWithArray:v17];
    v54 = v13;
    v19 = [v13 decodeTopLevelObjectOfClasses:v18 forKey:NSKeyedArchiveRootObjectKey error:0];

    objc_opt_class();
    v20 = 0;
    if (objc_opt_isKindOfClass())
    {
      v21 = [v19 objectForKeyedSubscript:PBSchemaVersionKey];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v21 unsignedIntegerValue];
      }

      else
      {
        v20 = 0;
      }
    }

    v52 = v19;
    v5 = v55;
    v2 = v53;
    v28 = v54;
    if (v20 != PBLatestSchemaVersion)
    {
      v30 = _PBLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Starting Pasteboard migration.", buf, 2u);
      }

      v31 = +[NSFileManager defaultManager];
      if (!v20)
      {
        v51 = v12;
        v32 = _PBLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v71 = 0;
          v72 = 2048;
          v73 = 1;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Migrating schema from version %lu to %lu...", buf, 0x16u);
        }

        v33 = PBStorageRootURL();
        v74 = NSURLIsDirectoryKey;
        v34 = [NSArray arrayWithObjects:&v74 count:1];
        v35 = [v31 enumeratorAtURL:v33 includingPropertiesForKeys:v34 options:5 errorHandler:0];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v36 = v35;
        v37 = [v36 countByEnumeratingWithState:&v61 objects:buf count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v62;
          do
          {
            for (i = 0; i != v38; i = i + 1)
            {
              if (*v62 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v61 + 1) + 8 * i);
              v60 = 0;
              [v41 getResourceValue:&v60 forKey:NSURLIsDirectoryKey error:0];
              v42 = v60;
              if ([v42 BOOLValue])
              {
                [v31 removeItemAtURL:v41 error:0];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v61 objects:buf count:16];
          }

          while (v38);
        }

        v43 = _PBLog();
        v5 = v55;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *v68 = 134217984;
          v69 = 1;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Migrated schema to version %lu.", v68, 0xCu);
        }

        v4 = v56;
        v12 = v51;
        v28 = v54;
      }

      v44 = PBSchemaFileContentsWithVersion();
      v59 = 0;
      v45 = [v44 writeToURL:v4 options:268435457 error:&v59];
      v46 = v59;

      if ((v45 & 1) == 0)
      {
        v47 = _PBLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v71 = v46;
          _os_log_fault_impl(&_mh_execute_header, v47, OS_LOG_TYPE_FAULT, "Could not write new schema version file. Error: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v22 = PBStorageRootURL();
    v65 = NSFileProtectionKey;
    v66 = NSURLFileProtectionNone;
    v23 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v58 = 0;
    v24 = [v2 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:v23 error:&v58];
    v25 = v58;

    if (v24)
    {
      v26 = PBSchemaFileContentsWithVersion();
      v57 = 0;
      v27 = [v26 writeToURL:v4 options:268435457 error:&v57];
      v28 = v57;

      if ((v27 & 1) == 0)
      {
        v29 = _PBLog();
        v12 = v25;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v71 = v28;
          _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Could not write new schema version file. Error: %@", buf, 0xCu);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v28 = _PBLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v49 = __error();
        v50 = strerror(*v49);
        *buf = 136315138;
        v71 = v50;
        _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Could not create pasteboard directory. Aborting migration. Error: %s", buf, 0xCu);
      }
    }

    v12 = v25;
  }

LABEL_44:

  *(*(a1 + 32) + 8) = 1;
  v48 = _PBLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Completed pasteboard migration.", buf, 2u);
  }
}

void sub_100006104(id a1)
{
  qword_100039258 = dispatch_queue_create("com.apple.Pasteboard.migrationQueue", 0);

  _objc_release_x1();
}

void sub_100006144(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v14 = [v12 bundleID];
  if (!v11)
  {
    v16 = @"MissingAuthMessage";
    goto LABEL_10;
  }

  v15 = [v11 context];
  if (v15 > 0x237A2046F04E760BLL)
  {
    if (v15 > 0x51A2F5DDCA075EA0)
    {
      if (v15 > 0x67510999674CD01DLL)
      {
        switch(v15)
        {
          case 0x67510999674CD01ELL:
            v16 = @"PasteButtonUndoInteractionHUDTextDark";
            goto LABEL_10;
          case 0x70A52C167AE7B042:
            v16 = @"PasteButtonSystemInputAssistantLight";
            goto LABEL_10;
          case 0x7EC07AF570CAADBCLL:
            v16 = @"AccessibilityAssistiveTouchControl";
            goto LABEL_10;
        }
      }

      else
      {
        switch(v15)
        {
          case 0x51A2F5DDCA075EA1:
            v16 = @"EditMenuOOP";
            goto LABEL_10;
          case 0x5597A8D691A21829:
            v16 = @"PasteButtonSystemInputAssistantDark";
            goto LABEL_10;
          case 0x5A4A97C3218CE65BLL:
            v16 = @"KeyShortcutHUD";
            goto LABEL_10;
        }
      }
    }

    else if (v15 > 0x2BB12563A205EBD0)
    {
      switch(v15)
      {
        case 0x2BB12563A205EBD1:
          v16 = @"PasteButtonSystemInputAssistantPopover";
          goto LABEL_10;
        case 0x37CA128B814942F4:
          v16 = @"PasteButtonEditMenuLight";
          goto LABEL_10;
        case 0x41683F1594B2E071:
          v16 = @"ContextMenuOOP";
          goto LABEL_10;
      }
    }

    else
    {
      switch(v15)
      {
        case 0x237A2046F04E760CLL:
          v16 = @"PasteButtonUndoInteractionHUDIconLight";
          goto LABEL_10;
        case 0x25FC7F58D8DEA672:
          v16 = @"UndoSlideGestureOut";
          goto LABEL_10;
        case 0x2602B97B3B8E05C3:
          v16 = @"MenuBar";
          goto LABEL_10;
      }
    }
  }

  else
  {
    v16 = @"KeyCommand";
    if (v15 > 0xB40F49E017F83013)
    {
      if (v15 > 0xF635B19E69CD15EBLL)
      {
        switch(v15)
        {
          case 0xF635B19E69CD15ECLL:
            v16 = @"PasteButtonContextMenuLight";
            goto LABEL_10;
          case 0x6B3CE0810AAF53ALL:
            v16 = @"AccessibilityVoiceCommand";
            goto LABEL_10;
          case 0xC59AA8F622F26FCLL:
            v16 = @"PasteButtonUndoInteractionHUDIconDark";
            goto LABEL_10;
        }
      }

      else
      {
        switch(v15)
        {
          case 0xB40F49E017F83014:
            v16 = @"PasteControlLight";
            goto LABEL_10;
          case 0xC58523F7A4B7A983:
            v16 = @"PasteControlDark";
            goto LABEL_10;
          case 0xF317E322CB2CEA02:
            goto LABEL_10;
        }
      }
    }

    else if (v15 > 0x9D0980DD8F0CAFCALL)
    {
      switch(v15)
      {
        case 0x9D0980DD8F0CAFCBLL:
          v16 = @"PasteButtonUndoInteractionHUDTextLight";
          goto LABEL_10;
        case 0xA16D1C5A60C000E1:
          v16 = @"PasteButtonCalloutBar";
          goto LABEL_10;
        case 0xA9745AB1695ED68BLL:
          v16 = @"PasteButtonContextMenuDark";
          goto LABEL_10;
      }
    }

    else
    {
      switch(v15)
      {
        case 0x84E6A8CBF3F0F10CLL:
          goto LABEL_10;
        case 0x926FA0AD41ACE950:
          v16 = @"PasteButtonEditMenuDark";
          goto LABEL_10;
        case 0x95DD33C9595B8B0ALL:
          v16 = @"AccessibilityVoiceOverRotorMenu";
          goto LABEL_10;
      }
    }
  }

  v16 = @"(unknown)";
LABEL_10:
  v23 = v16;
  if (has_internal_diagnostics)
  {
    v17 = _PBLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v12 bundleID];
      buf.count[0] = 138412546;
      *&buf.count[1] = v23;
      LOWORD(buf.hash[1]) = 2112;
      *(&buf.hash[1] + 2) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Paste kind: %@ requested by app:%@", &buf, 0x16u);
    }

LABEL_19:
    v24 = v14;
    v25 = v9;
    v26 = v10;
    AnalyticsSendEventLazy();

    goto LABEL_20;
  }

  v19 = v14;
  if (qword_100039268 != -1)
  {
    dispatch_once(&qword_100039268, &stru_100030E00);
  }

  v29.tv_sec = 0;
  *&v29.tv_usec = 0;
  memset(&v28, 0, sizeof(v28));
  gettimeofday(&v29, 0);
  localtime_r(&v29.tv_sec, &v28);
  data = v28.tm_yday + 366 * v28.tm_year;
  memset(&buf, 0, sizeof(buf));
  CC_SHA256_Init(&buf);
  CC_SHA256_Update(&buf, &unk_100039270, 0x10u);
  CC_SHA256_Update(&buf, &data, 4u);
  if (v19)
  {
    v20 = [v19 UTF8String];
    v21 = strlen(v20);
    CC_SHA256_Update(&buf, v20, v21);
  }

  CC_SHA256_Final(md, &buf);
  v22 = *md;

  if (v22 <= 0x28F)
  {
    goto LABEL_19;
  }

LABEL_20:
}

id sub_1000068A0(void *a1)
{
  v1 = a1[4];
  v2 = @"(none)";
  if (!v1)
  {
    v1 = @"(none)";
  }

  v13[0] = v1;
  v12[0] = @"bundleId";
  v12[1] = @"pasteDecision";
  v3 = a1[8] - 1;
  if (v3 > 4)
  {
    v4 = @"Undecided";
  }

  else
  {
    v4 = off_100030E20[v3];
  }

  v5 = a1[5];
  v6 = a1[6];
  v13[1] = v4;
  v13[2] = v5;
  v12[2] = @"pasteDecisionReason";
  v12[3] = @"finalAccessOverrideReason";
  if (v6)
  {
    v2 = v6;
  }

  v13[3] = v2;
  v12[4] = @"finalPasteDecision";
  v7 = a1[9] - 2;
  if (v7 > 3)
  {
    v8 = @"SilentDeny";
  }

  else
  {
    v8 = off_100030E48[v7];
  }

  v12[5] = @"pasteKind";
  v9 = a1[7];
  v13[4] = v8;
  v13[5] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

void sub_1000069D8(id a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [v2 deviceIdentifierForVendor];
  [v1 getUUIDBytes:&unk_100039270];
}

void sub_100007EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007F0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007F24(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = tcc_authorization_record_get_service();
    if (v7 == *(a1[4] + 40))
    {
      v8 = *(a1[5] + 8);
      if (*(v8 + 40))
      {
        v9 = _PBLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v11) = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "tcc_server_message_get_authorization_records_by_identity returned duplicate pasteboard records!", &v11, 2u);
        }

        v8 = *(a1[5] + 8);
      }

      objc_storeStrong((v8 + 40), a2);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (a3)
  {
    v10 = a1[6];
    if (v10)
    {
      *v10 = 1;
    }

    v7 = _PBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = a3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error returned while fetching authorization for credential. error: %@", &v11, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_100008244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000825C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v7 = _PBLog();
    v8 = v7;
    if (a3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = a3;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error returned while fetching identity for credential. error: %@", &v9, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No existing identity found for credential.", &v9, 2u);
    }
  }
}

void sub_1000084A0(id a1, __CFError *a2)
{
  v3 = _PBLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error returned while setting TCC value to 'limited': %@", &v4, 0xCu);
  }
}

__CFString **sub_100008884(uint64_t a1)
{
  v1 = &off_100030E68 + 2 * a1;
  v2 = _PBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *v1;
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }

  if (v1[1])
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  _set_user_dir_suffix();
  v1 = _PBLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Service started.", buf, 2u);
  }

  v2 = objc_alloc_init(NSMutableSet);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[UISPasteVariant allVariants];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v18 + 1) + 8 * v7) _keyCommandSpecification];
        if (v8)
        {
          [v2 addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  BKSHIDServicesSetAuthenticatedKeyCommands();
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v2, sub_100008C88, @"kBKSHIDServerDiedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
  notify_register_dispatch("AppleLanguagePreferencesChangedNotification", &unk_100038D00, &_dispatch_main_q, &stru_1000311C8);
  v10 = +[PBMigrator sharedMigrator];
  [v10 performMigrationIfNeeded];

  v11 = objc_alloc_init(PBPasteboardServer);
  v12 = qword_100039280;
  qword_100039280 = v11;

  [qword_100039280 start];
  if (CacheDeleteRegisterCallback())
  {
    v13 = _PBLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not register for cache deletion service. Ignoring.", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v0);
  v14 = +[NSPort port];
  v15 = +[NSRunLoop mainRunLoop];
  [v15 addPort:v14 forMode:NSRunLoopCommonModes];

  v16 = +[NSRunLoop mainRunLoop];
  [v16 run];

  return 0;
}

__CFDictionary *__cdecl sub_100008CA4(id a1, __CFDictionary *a2)
{
  v2 = [(__CFDictionary *)a2 objectForKeyedSubscript:@"CACHE_DELETE_OPERATIONS"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 138412290;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 isEqualToString:{@"CACHE_DELETE_PERIODIC_OPERATION", v13}];
        v10 = _PBLog();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v9)
        {
          if (v11)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Performing periodic pasteboard cache purge", buf, 2u);
          }

          v10 = +[PBPasteboardModel sharedModel];
          [v10 deleteOrphanedPasteboardFilesCompletionBlock:0];
        }

        else if (v11)
        {
          *buf = v13;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ignoring cache purge operation: %@", buf, 0xCu);
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_100009A0C(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = PBPasteboardNameNotAvailableError();
  (*(v3 + 16))(v3, 0, v5);

  v6 = _PBLog();
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "PasteboardWithName", &unk_10002C5F1, v9, 2u);
  }
}

void sub_100009ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) sanitizedDoNothingCopyOfPasteboard:a2 destinationAuditTokenInfo:*(a1 + 40)];
  v7 = _PBLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "...requesting pasteboard %@ failed with error: %@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "...requesting pasteboard %@ completed successfully", &v15, 0xCu);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v6, v5);
    v12 = _PBLog();
    v13 = v12;
    v14 = *(a1 + 64);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "PasteboardWithName", &unk_10002C5F1, &v15, 2u);
    }
  }
}

void sub_100009C78(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = PBPasteboardNameNotAvailableError();
  (*(v3 + 16))(v3, 0, v5);

  v6 = _PBLog();
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "PasteboardWithName", &unk_10002C5F1, v9, 2u);
  }
}

void sub_100009D38(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = _PBLog();
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "PasteboardWithName", &unk_10002C5F1, v6, 2u);
  }
}

void sub_10000A164(id *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isEqualToString:PBMetadataTeamDataKey])
  {
    v6 = [a1[4] teamID];
    v7 = [a1[5] originatorTeamID];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    [a1[6] setObject:v5 forKey:v9];
    goto LABEL_8;
  }

  if (([v9 isEqualToString:PBMetadataSuggestedNameKey] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", PBMetadataPreferredPresentationStyleKey) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", PBMetadataEstimatedDisplayedSizeKey))
  {
    goto LABEL_7;
  }

LABEL_8:
}

void sub_10000AA14(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = PBPasteboardNameNotAvailableError();
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10000AA88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = _PBLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "...save pasteboard failed with error: %@", &v13, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "...save pasteboard completed successfully.", &v13, 2u);
    }

    v11 = [PBSaveResponse alloc];
    v9 = [*(a1 + 32) sharingToken];
    v10 = [v11 initWithNotificationState:a2 changeCount:a3 sharingToken:v9];
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v10, v7);
  }
}

void sub_10000AF10(void *a1)
{
  v2 = a1[4];
  v3 = _PBLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v5 = a1[5];
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "...deleting pasteboard name %@ failed with error: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "...deleting pasteboard name %@ completed successfully.", buf, 0xCu);
  }

  v8 = a1[6];
  if (v8)
  {
    v9 = v8;
    PBDispatchAsyncCallback();
  }
}

void sub_10000B644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24, id a25)
{
  objc_destroyWeak(v25 + 9);
  objc_destroyWeak(v25 + 8);
  objc_destroyWeak(v25 + 7);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

id sub_10000B688(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_10000B6CC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_loadWeakRetained((a1 + 64));
  v6 = objc_loadWeakRetained((a1 + 72));
  PBAssertIsOnCallbackQueue();
  [v6 recordUserAuthorizationDecision:a2 == 1 auditTokenInfo:*(a1 + 32)];
  if (v5 && v6)
  {
    [WeakRetained removeActiveAuthorizationAnnouncer:v5 collection:v6];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = [WeakRetained authorizationReplyBlocks];
  [v12 removeObjectForKey:*(a1 + 48)];
}

void sub_10000B8C4(uint64_t a1)
{
  v1 = [*(a1 + 32) activeAnnouncers];
  [v1 enumerateKeysAndObjectsUsingBlock:&stru_100031360];
}

void sub_10000B9A8(uint64_t a1)
{
  v2 = [*(a1 + 32) activeAnnouncers];
  v4 = [v2 objectForKey:*(a1 + 40)];

  [v4 invalidate];
  v3 = [*(a1 + 32) activeAnnouncers];
  [v3 removeObjectForKey:*(a1 + 40)];
}

void sub_10000C4D0(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = PBPasteboardNameNotAvailableError();
  (*(v2 + 16))(v2, 0, v4);
}

void sub_10000C534(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = PBPasteboardNameNotAvailableError();
  (*(v2 + 16))(v2, 0, v4);
}

id sub_10000C598()
{
  if (qword_100039298 != -1)
  {
    dispatch_once(&qword_100039298, &stru_100031648);
  }

  v1 = qword_100039290;

  return v1;
}

void sub_10000C5EC(id a1)
{
  if ((byte_100039288 & 1) == 0)
  {
    byte_100039288 = 1;
    if (qword_1000392A8 != -1)
    {
      dispatch_once(&qword_1000392A8, &stru_100031668);
    }

    v2 = off_1000392A0;

    v2(1255, &stru_1000313C8);
  }
}

void sub_10000C668(id a1)
{
  v1 = sub_10000C598();
  dispatch_async(v1, &stru_1000313E8);
}

void sub_10000C6BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 UUID];
    v9 = [v8 isEqual:*(a1 + 32)];

    if (v9)
    {
      v10 = *(a1 + 96);
      v11 = [v5 items];
      v12 = [v11 count];

      if (v10 < v12)
      {
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10000CC48;
        v48[3] = &unk_100031410;
        v49 = *(a1 + 80);
        v13 = objc_retainBlock(v48);
        objc_initWeak(&location, v5);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10000CCCC;
        v43[3] = &unk_100031438;
        objc_copyWeak(v46, &location);
        v14 = *(a1 + 88);
        v46[1] = *(a1 + 96);
        v45 = v14;
        v44 = *(a1 + 40);
        v15 = objc_retainBlock(v43);
        if (*(a1 + 112) != 1)
        {
LABEL_32:
          (v15[2])(v15, 0);
LABEL_41:

          objc_destroyWeak(v46);
          objc_destroyWeak(&location);

          goto LABEL_42;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        v18 = *(a1 + 56);
        v19 = [*(a1 + 64) pasteSharingToken];
        v20 = [v17 accessToPasteboard:v5 auditTokenInfo:v16 authenticationMessage:v18 sharingToken:v19 dataOwner:*(a1 + 104)];

        if (v20 <= 2)
        {
          if (v20 == 1)
          {
            v31 = _PBLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Paste denied silently.", buf, 2u);
            }
          }

          else if (v20 == 2)
          {
            v28 = _PBLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Paste allowed silently.", buf, 2u);
            }

            if (!PBPreferencesBoolValue())
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }
        }

        else
        {
          if (v20 != 3)
          {
            if (v20 != 4)
            {
              if (v20 == 5)
              {
                if (_os_feature_enabled_impl())
                {
                  v21 = _PBLog();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v22 = "Paste requires user authorization. Prompting...";
LABEL_39:
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
                  }
                }

                else
                {
                  v21 = _PBLog();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v22 = "Paste allowed but announced.";
                    goto LABEL_39;
                  }
                }

                v32 = mach_absolute_time();
                v33 = *(a1 + 40);
                v36 = a1 + 64;
                v34 = *(a1 + 64);
                v35 = *(v36 + 8);
                v37[0] = _NSConcreteStackBlock;
                v37[1] = 3221225472;
                v37[2] = sub_10000CD68;
                v37[3] = &unk_100031460;
                v41 = v32;
                v38 = v33;
                v39 = v13;
                v40 = v15;
                [v35 requestUserAuthorizationForPasteboard:v5 auditTokenInfo:v38 loadContext:v34 completionHandler:v37];

                goto LABEL_41;
              }

              goto LABEL_36;
            }

            v30 = _PBLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Paste allowed but announced", buf, 2u);
            }

LABEL_31:
            [*(a1 + 72) announcePasteForPasteboard:v5 auditTokenInfo:*(a1 + 40)];
            goto LABEL_32;
          }

          v29 = _PBLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Paste denied but announced.", buf, 2u);
          }

          [*(a1 + 72) announcePasteDenied];
        }

LABEL_36:
        (v13[2])(v13, 0);
        goto LABEL_41;
      }

      v23 = *(a1 + 80);
      if (!v23)
      {
        goto LABEL_42;
      }

      v26 = *(a1 + 96);
      v25 = PBIndexOutOfRangeError();
    }

    else
    {
      v23 = *(a1 + 80);
      if (!v23)
      {
        goto LABEL_42;
      }

      v24 = *(a1 + 32);
      v25 = PBPasteboardNotAvailableError();
    }

    v27 = v25;
    (*(v23 + 16))(v23, 0, v25);

    goto LABEL_42;
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_42:
}

void sub_10000CC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CC48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = a2;
    v4 = PBNotAuthorizedError();
    (*(v2 + 16))(v2, v3, v4);
  }
}

void sub_10000CCCC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained items];
  v5 = [v4 objectAtIndexedSubscript:*(a1 + 56)];

  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_10000CD68(uint64_t a1, uint64_t a2)
{
  v5 = [[PBResponseMetadata alloc] initWithAuthorizationStartTime:*(a1 + 56) authorizationEndTime:mach_absolute_time() authorizationAdmonished:{objc_msgSend(*(a1 + 32), "hasAppleSignature")}];
  v4 = 48;
  if (!a2)
  {
    v4 = 40;
  }

  (*(*(a1 + v4) + 16))();
}

void sub_10000D070(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [a3 representationConformingToType:*(a1 + 32)];
  if (v9)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000D2A8;
    v21[3] = &unk_1000314D8;
    v24 = *(a1 + 40);
    v10 = v8;
    v11 = *(a1 + 56);
    v22 = v10;
    v26 = v11;
    v23 = v7;
    v25 = *(a1 + 48);
    v12 = [v9 loadWithCompletionHandler:v21];

    v13 = v24;
  }

  else
  {
    v14 = _PBLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138412290;
      v28 = v20;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cannot find representation for type %@", buf, 0xCu);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = PBCannotLoadRepresentationError();
      (*(v15 + 16))(v15, v8, v17);
    }

    v18 = _PBLog();
    v13 = v18;
    v19 = *(a1 + 56);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v19, "RequestItem", &unk_10002C5F1, buf, 2u);
    }
  }
}

void sub_10000D2A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _PBLog();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v11;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "...item request failed. Error: %@", &v24, 0xCu);
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, *(a1 + 32), v11);
    }

    if (v12)
    {
      v12[2](v12);
    }

    v16 = _PBLog();
    v17 = v16;
    v18 = *(a1 + 64);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(v24) = 0;
LABEL_22:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "RequestItem", &unk_10002C5F1, &v24, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "...item request completed successfully.", &v24, 2u);
    }

    v19 = [*(a1 + 40) name];
    v20 = PBIsPasteboardNameGeneralPasteboard();

    if (v20)
    {
      v21 = [*(a1 + 40) creationDate];
      _PBStatLogPasteAge();
    }

    v22 = *(a1 + 56);
    if (v22)
    {
      (*(v22 + 16))(v22, v9, v10, *(a1 + 32), 0);
    }

    if (v12)
    {
      v12[2](v12);
    }

    v23 = _PBLog();
    v17 = v23;
    v18 = *(a1 + 64);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v24) = 0;
      goto LABEL_22;
    }
  }
}

void sub_10000D738(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v30 = a4;
  v8 = a5;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = sub_100010178();
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = [v7 representationConformingToType:v14];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 typeIdentifier];
          if ([v17 isEqualToString:v14])
          {

LABEL_16:
            v22 = v14;

            if (*(a1 + 64))
            {
              v23 = &stru_100031540;
            }

            else
            {
              v23 = &stru_100031560;
            }

            v24 = objc_alloc_init(NSMutableDictionary);
            v25 = *(a1 + 32);
            v42[0] = _NSConcreteStackBlock;
            v42[1] = 3221225472;
            v42[2] = sub_10000DB60;
            v42[3] = &unk_100031588;
            v26 = v24;
            v43 = v26;
            v44 = v23;
            v27 = [v7 enumeratePatternDetectionsForPatterns:v25 usingBlock:v42];
            if ([v27 count])
            {
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = sub_10000DBEC;
              v32[3] = &unk_1000315B0;
              v39 = *(a1 + 56);
              v20 = v30;
              v33 = v30;
              v34 = v22;
              v35 = *(a1 + 40);
              v36 = v27;
              v37 = v26;
              v40 = v23;
              v38 = v7;
              v41 = *(a1 + 48);
              v28 = [v16 loadDataWithCompletion:v32];
            }

            else
            {
              v29 = *(a1 + 48);
              v20 = v30;
              if (v29)
              {
                (*(v29 + 16))(v29, v26, 0);
              }
            }

            goto LABEL_24;
          }

          v18 = sub_1000102CC(v8, v14);

          if (v18)
          {
            goto LABEL_16;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = _PBLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cannot find representation for any text type", buf, 2u);
  }

  v20 = v30;
  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, &__NSDictionary0__struct, 0);
  }

LABEL_24:
}

PBItemDetection *__cdecl sub_10000DB10(id a1, PBItemDetection *a2)
{
  if (([(PBItemDetection *)a2 present]& 1) != 0)
  {
    +[PBItemDetection detectionPresent];
  }

  else
  {
    +[PBItemDetection detectionAbsent];
  }
  v2 = ;

  return v2;
}

void sub_10000DB60(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v8 = v6(v5, a3);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

void sub_10000DBEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "... loading finished successfully.", buf, 2u);
    }

    v10 = [[NSString alloc] initWithData:v5 encoding:sub_100010480(*(a1 + 40))];
    v11 = v10;
    if (v10)
    {
      v28 = v10;
      v29 = v5;
      v12 = [*(a1 + 48) detectionsForPatterns:*(a1 + 56) inValue:v10];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = *(a1 + 56);
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = *(a1 + 88);
            v20 = [v12 objectForKeyedSubscript:v18];
            v21 = (*(v19 + 16))(v19, v20);
            [*(a1 + 64) setObject:v21 forKeyedSubscript:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);
      }

      [*(a1 + 72) addPatternDetections:v12];
      v22 = *(a1 + 96);
      if (v22)
      {
        (*(v22 + 16))(v22, *(a1 + 64), 0);
      }

      v11 = v28;
      v5 = v29;
    }

    else
    {
      v23 = _PBLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 40);
        *buf = 138412290;
        v36 = v27;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Cannot create string representation for type %@", buf, 0xCu);
      }

      v24 = *(a1 + 80);
      if (!v24)
      {
        goto LABEL_24;
      }

      v26 = *(a1 + 32);
      v25 = *(a1 + 40);
      v12 = PBCannotLoadRepresentationError();
      (*(v24 + 16))(v24, v26, v12);
    }

LABEL_24:
    goto LABEL_25;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "... loading failed with error: %@", buf, 0xCu);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 32), v6);
  }

LABEL_25:
}

uint64_t sub_10000E138(uint64_t a1)
{
  v2 = _PBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "...janitorial tasks complete.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return PBDispatchAsyncCallback();
  }

  return result;
}

void sub_10000E41C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _PBLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "...completed enumerating all pasteboards. Error: %@", buf, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v11 = v8;
    v9 = v5;
    v10 = v6;
    PBDispatchAsyncCallback();
  }
}

void sub_10000E580(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PBNotAuthorizedError();
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10000E924(id a1)
{
  qword_100039290 = dispatch_queue_create("com.apple.pasteboard._soundQueue", 0);

  _objc_release_x1();
}

void sub_10000E964(id a1)
{
  v1 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 1);
  if (!v1)
  {
    v3 = _PBLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    v7 = 136315138;
    v8 = dlerror();
    v4 = "Could not load AudioToolbox framework. Error: %s";
    v5 = v3;
    v6 = 12;
LABEL_10:
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, v4, &v7, v6);
    goto LABEL_7;
  }

  v2 = dlsym(v1, "AudioServicesPlaySystemSoundWithCompletion");
  if (v2)
  {
    off_1000392A0 = v2;
    return;
  }

  v3 = _PBLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315394;
    v8 = "AudioServicesPlaySystemSoundWithCompletion";
    v9 = 2080;
    v10 = dlerror();
    v4 = "Could not load symbol %s. Error: %s";
    v5 = v3;
    v6 = 22;
    goto LABEL_10;
  }

LABEL_7:
}

uint64_t sub_10000EB3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000392B0 = objc_opt_new();

  return _objc_release_x1();
}

uint64_t sub_10000ED90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000EDA8(uint64_t a1)
{
  if (([*(a1 + 32) isTrustedToRequestAuthenticationMessages] & 1) == 0)
  {
    v5 = _PBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) bundleID];
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ requested an authentication message, but didn't have the appropriate entitlement", buf, 0xCu);
    }

    goto LABEL_64;
  }

  if (([*(a1 + 40) _isRequester:*(a1 + 32) allowedToRequestAuthenticationMessageWithContext:*(a1 + 64)] & 1) == 0)
  {
    v5 = _PBLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_64:

      v3 = PBErrorMake();
      v4 = 48;
      goto LABEL_65;
    }

    v7 = [*(a1 + 32) bundleID];
    v8 = v7;
    v9 = *(a1 + 64);
    if (v9 <= 0x237A2046F04E760BLL)
    {
      v10 = @"KeyCommand";
      if (v9 > 0xB40F49E017F83013)
      {
        if (v9 > 0xF635B19E69CD15EBLL)
        {
          switch(v9)
          {
            case 0xF635B19E69CD15ECLL:
              v10 = @"PasteButtonContextMenuLight";
              goto LABEL_63;
            case 0x6B3CE0810AAF53ALL:
              v10 = @"AccessibilityVoiceCommand";
              goto LABEL_63;
            case 0xC59AA8F622F26FCLL:
              v10 = @"PasteButtonUndoInteractionHUDIconDark";
              goto LABEL_63;
          }

          goto LABEL_62;
        }

        if (v9 == 0xB40F49E017F83014)
        {
          v10 = @"PasteControlLight";
          goto LABEL_63;
        }

        if (v9 == 0xC58523F7A4B7A983)
        {
          v10 = @"PasteControlDark";
          goto LABEL_63;
        }

        if (v9 != 0xF317E322CB2CEA02)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v9 > 0x9D0980DD8F0CAFCALL)
        {
          switch(v9)
          {
            case 0x9D0980DD8F0CAFCBLL:
              v10 = @"PasteButtonUndoInteractionHUDTextLight";
              goto LABEL_63;
            case 0xA16D1C5A60C000E1:
              v10 = @"PasteButtonCalloutBar";
              goto LABEL_63;
            case 0xA9745AB1695ED68BLL:
              v10 = @"PasteButtonContextMenuDark";
              goto LABEL_63;
          }

          goto LABEL_62;
        }

        if (v9 != 0x84E6A8CBF3F0F10CLL)
        {
          if (v9 == 0x926FA0AD41ACE950)
          {
            v10 = @"PasteButtonEditMenuDark";
            goto LABEL_63;
          }

          if (v9 == 0x95DD33C9595B8B0ALL)
          {
            v10 = @"AccessibilityVoiceOverRotorMenu";
            goto LABEL_63;
          }

LABEL_62:
          v10 = @"(unknown)";
        }
      }

LABEL_63:
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client %{public}@ requested an authentication message for context %{public}@, but wasn't allowed.", buf, 0x16u);

      goto LABEL_64;
    }

    if (v9 > 0x51A2F5DDCA075EA0)
    {
      if (v9 > 0x67510999674CD01DLL)
      {
        switch(v9)
        {
          case 0x67510999674CD01ELL:
            v10 = @"PasteButtonUndoInteractionHUDTextDark";
            goto LABEL_63;
          case 0x70A52C167AE7B042:
            v10 = @"PasteButtonSystemInputAssistantLight";
            goto LABEL_63;
          case 0x7EC07AF570CAADBCLL:
            v10 = @"AccessibilityAssistiveTouchControl";
            goto LABEL_63;
        }
      }

      else
      {
        switch(v9)
        {
          case 0x51A2F5DDCA075EA1:
            v10 = @"EditMenuOOP";
            goto LABEL_63;
          case 0x5597A8D691A21829:
            v10 = @"PasteButtonSystemInputAssistantDark";
            goto LABEL_63;
          case 0x5A4A97C3218CE65BLL:
            v10 = @"KeyShortcutHUD";
            goto LABEL_63;
        }
      }
    }

    else if (v9 > 0x2BB12563A205EBD0)
    {
      switch(v9)
      {
        case 0x2BB12563A205EBD1:
          v10 = @"PasteButtonSystemInputAssistantPopover";
          goto LABEL_63;
        case 0x37CA128B814942F4:
          v10 = @"PasteButtonEditMenuLight";
          goto LABEL_63;
        case 0x41683F1594B2E071:
          v10 = @"ContextMenuOOP";
          goto LABEL_63;
      }
    }

    else
    {
      switch(v9)
      {
        case 0x237A2046F04E760CLL:
          v10 = @"PasteButtonUndoInteractionHUDIconLight";
          goto LABEL_63;
        case 0x25FC7F58D8DEA672:
          v10 = @"UndoSlideGestureOut";
          goto LABEL_63;
        case 0x2602B97B3B8E05C3:
          v10 = @"MenuBar";
          goto LABEL_63;
      }
    }

    goto LABEL_62;
  }

  v2 = *(*(a1 + 40) + 16);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F3A0;
  v13[3] = &unk_100031688;
  v14 = *(a1 + 64);
  v3 = [v2 buildMessage:v13];
  v4 = 56;
LABEL_65:
  v11 = *(*(a1 + v4) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void sub_10000F3A0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventType:1];
  [v3 setOriginIdentifier:0x30D8E242D30C9F99];
  [v3 setContext:*(a1 + 32)];
  [v3 setVersionedPID:*(a1 + 40)];
  [v3 setRegistrantEntitled:1];
}

id sub_10000F4F4(void *a1)
{
  result = [*(a1[4] + 16) validateMessage:a1[5]];
  *(*(a1[6] + 8) + 24) = result == 2;
  return result;
}

id sub_10000F8E0(void *a1)
{
  v1 = a1;
  v2 = PBStorageRootURL();
  v3 = PBSHA1HashOfString();

  v4 = [v2 URLByAppendingPathComponent:v3];

  return v4;
}

uint64_t sub_10000F95C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  if (qword_100039310 != -1)
  {
    dispatch_once(&qword_100039310, &stru_100031808);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FA34;
  block[3] = &unk_100031700;
  block[4] = &v3;
  dispatch_sync(qword_100039308, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t sub_10000FA34(uint64_t a1)
{
  if (qword_100039320 != -1)
  {
    dispatch_once(&qword_100039320, &stru_100031828);
  }

  *(*(*(a1 + 32) + 8) + 24) = atomic_fetch_add(&qword_100039318, 1uLL) + 1;
  if (qword_100039328 != -1)
  {
    dispatch_once(&qword_100039328, &stru_100031848);
  }

  notify_set_state(dword_1000392C0, *(*(*(a1 + 32) + 8) + 24));
  v2 = [PBPasteboardChangedNotifyNotification UTF8String];

  return notify_post(v2);
}

id sub_10000FAF8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 persistentIdentifier];
  v6 = [v4 originatorPersistentID];
  v7 = [v3 bundleID];

  v8 = [v4 originatorBundleID];

  if (v5 | v6)
  {
    v9 = [v5 isEqualToData:v6];
  }

  else
  {
    if (!v7)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9 = [v7 isEqualToString:v8];
  }

  v10 = v9;
LABEL_6:

  return v10;
}

void sub_10000FBC8(void *a1, void *a2)
{
  v3 = a1;
  v32 = a2;
  v4 = +[NSMutableSet set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v31 = v3;
  obj = [v3 items];
  v5 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v5)
  {
    v6 = v5;
    v36 = *v49;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v9 = [v8 availableTypes];
        v10 = [v9 countByEnumeratingWithState:&v44 objects:v58 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v45;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v45 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v44 + 1) + 8 * j);
              v15 = [v8 persistentFileNameForType:v14];
              [v4 addObject:v15];

              v16 = [v8 persistentBookmarkFileNameForType:v14];
              [v4 addObject:v16];
            }

            v11 = [v9 countByEnumeratingWithState:&v44 objects:v58 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v6);
  }

  v17 = +[NSFileManager defaultManager];
  v57 = NSURLNameKey;
  v18 = [NSArray arrayWithObjects:&v57 count:1];
  v33 = v17;
  v19 = [v17 enumeratorAtURL:v32 includingPropertiesForKeys:v18 options:5 errorHandler:&stru_100031768];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v40 objects:v56 count:16];
  v37 = v20;
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v21;
  obja = 0;
  v23 = *v41;
  do
  {
    for (k = 0; k != v22; k = k + 1)
    {
      if (*v41 != v23)
      {
        objc_enumerationMutation(v37);
      }

      v25 = *(*(&v40 + 1) + 8 * k);
      v38 = 0;
      v39 = 0;
      v26 = [v25 getResourceValue:&v39 forKey:NSURLNameKey error:&v38];
      v27 = v39;
      v28 = v38;
      if (v26)
      {
        if (([v27 isEqualToString:@"Manifest.plist"] & 1) == 0 && (objc_msgSend(v4, "containsObject:", v27) & 1) == 0)
        {
          v29 = _PBLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v53 = v25;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Removing unused file %@", buf, 0xCu);
          }

          [v33 removeItemAtURL:v25 error:0];
          ++obja;
        }
      }

      else
      {
        v30 = _PBLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v53 = v25;
          v54 = 2112;
          v55 = v28;
          _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "Could not get properties of file URL %@, error: %@", buf, 0x16u);
        }
      }
    }

    v22 = [v37 countByEnumeratingWithState:&v40 objects:v56 count:16];
  }

  while (v22);

  if (obja)
  {
    v20 = _PBLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v53 = obja;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Removed %lu files.", buf, 0xCu);
    }

LABEL_34:
  }
}

BOOL sub_1000100A0(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _PBLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Could not enumerate directory entry %@, error: %@", &v8, 0x16u);
  }

  return 1;
}

id sub_100010178()
{
  if (qword_1000392D0 != -1)
  {
    dispatch_once(&qword_1000392D0, &stru_100031788);
  }

  v1 = qword_1000392C8;

  return v1;
}

void sub_1000101CC(id a1)
{
  v1 = [UTTypeUTF8PlainText identifier];
  v7[0] = v1;
  v2 = [UTTypeUTF16PlainText identifier];
  v7[1] = v2;
  v3 = [UTTypePlainText identifier];
  v7[2] = v3;
  v4 = [UTTypeText identifier];
  v7[3] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:4];
  v6 = qword_1000392C8;
  qword_1000392C8 = v5;
}

uint64_t sub_1000102CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_1000392E0 != -1)
  {
    dispatch_once(&qword_1000392E0, &stru_1000317A8);
  }

  if ([qword_1000392D8 containsObject:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v7 = [v3 linkedOnVersion];
    v5 = [v6 isVersion:v7 greaterThanOrEqualToVersion:@"17.0"] ^ 1;
  }

  return v5;
}

void sub_1000103A0(id a1)
{
  v1 = [UTTypeUTF8PlainText identifier];
  v2 = [UTTypeUTF16PlainText identifier];
  v6[1] = v2;
  v3 = [UTTypePlainText identifier];
  v6[2] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:3];
  v5 = qword_1000392D8;
  qword_1000392D8 = v4;
}

id sub_100010480(void *a1)
{
  v1 = qword_1000392F0;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1000392F0, &stru_1000317C8);
  }

  v3 = [qword_1000392E8 objectForKeyedSubscript:v2];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

void sub_1000104FC(id a1)
{
  v1 = [UTTypeUTF8PlainText identifier];
  v7[0] = v1;
  v8[0] = &off_100033C38;
  v2 = [UTTypeUTF16PlainText identifier];
  v7[1] = v2;
  v8[1] = &off_100033C50;
  v3 = [UTTypePlainText identifier];
  v7[2] = v3;
  v8[2] = &off_100033C38;
  v4 = [UTTypeText identifier];
  v7[3] = v4;
  v8[3] = &off_100033C38;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = qword_1000392E8;
  qword_1000392E8 = v5;
}

id sub_100010628()
{
  if (qword_100039300 != -1)
  {
    dispatch_once(&qword_100039300, &stru_1000317E8);
  }

  v1 = qword_1000392F8;

  return v1;
}

void sub_10001067C(id a1)
{
  *in = 0u;
  memset(v8, 0, sizeof(v8));
  v5 = 37;
  memset(uu, 0, sizeof(uu));
  if (sysctlbyname("kern.bootsessionuuid", in, &v5, 0, 0) || uuid_parse(in, uu))
  {
    v1 = _PBLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Could not get boot session UUID.", v4, 2u);
    }

    v2 = +[NSUUID UUID];
  }

  else
  {
    v2 = [[NSUUID alloc] initWithUUIDBytes:uu];
  }

  v3 = qword_1000392F8;
  qword_1000392F8 = v2;
}

void sub_100010794(id a1)
{
  qword_100039308 = dispatch_queue_create("com.apple.Pasteboard.notify-count-queue", 0);

  _objc_release_x1();
}

void sub_10001080C(id a1)
{
  v1 = notify_register_check([PBPasteboardChangedNotifyNotification UTF8String], &dword_1000392C0);
  if (v1)
  {
    v2 = v1;
    v3 = _PBLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not register for notify token. Error: %u", v4, 8u);
    }
  }
}

void sub_100010FB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [PBItemDetection detectionPresentWithValue:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_100011400(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100011818;
  v49 = sub_100011828;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100011818;
  v43 = sub_100011828;
  v13 = v11;
  v44 = v13;
  v14 = &BKSHIDServicesSetAuthenticatedKeyCommands_ptr;
  if (v9)
  {
    v15 = [*(a1 + 32) type];
    v16 = PBTemporaryFileName();

    if (v16)
    {
      [v9 writeToURL:v16 atomically:0];
      v17 = [*(a1 + 32) item];
      v18 = [v17 metadata];
      v19 = [v18 objectForKeyedSubscript:PBMetadataSuggestedNameKey];

      v20 = [*(a1 + 32) type];
      v21 = PBFilenameWithProperExtension();
      v36 = v10;

      v22 = [*(a1 + 32) type];
      obj[1] = 0;
      obj[2] = 0;
      v23 = PBCloneURLToTemporaryFolder();
      v24 = 0;
      v25 = 0;

      if (v25)
      {
        v26 = PBCannotCreateTemporaryFile();
        v27 = v40[5];
        v40[5] = v26;
      }

      else
      {
        v31 = v46;
        v32 = v23;
        v27 = v31[5];
        v31[5] = v32;
      }

      v33 = +[NSFileManager defaultManager];
      [v33 removeItemAtURL:v16 error:0];

      v10 = v36;
      v14 = &BKSHIDServicesSetAuthenticatedKeyCommands_ptr;
    }

    else
    {
      v30 = PBCannotCreateTemporaryFile();
      v21 = v40[5];
      v40[5] = v30;
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    v16 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
    v21 = [v10 url];
    v29 = (v40 + 5);
    v28 = v40[5];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100011830;
    v37[3] = &unk_100031898;
    v37[4] = *(a1 + 32);
    v37[5] = &v39;
    v37[6] = &v45;
    obj[0] = v28;
    [v16 coordinateReadingItemAtURL:v21 options:1 error:obj byAccessor:v37];
    objc_storeStrong(v29, obj[0]);
  }

LABEL_11:
  v34 = *(a1 + 40);
  if (v34)
  {
    (*(v34 + 16))(v34, v46[5], v40[5]);
  }

  if (v12)
  {
    v12[2](v12);
  }

  if (v46[5])
  {
    v35 = [v14[284] defaultManager];
    [v35 removeItemAtURL:v46[5] error:0];
  }

  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
}

void sub_1000117E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011818(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011830(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 item];
    v6 = [v5 metadata];
    v7 = [v6 objectForKeyedSubscript:PBMetadataSuggestedNameKey];

    v8 = [*(a1 + 32) type];
    v9 = PBCloneURLToTemporaryFolder();

    v10 = 0;
    v11 = 0;

    if (v11)
    {
      v12 = PBCannotCreateTemporaryFile();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else
    {
      v15 = *(*(a1 + 48) + 8);
      v16 = v9;
      v14 = *(v15 + 40);
      *(v15 + 40) = v16;
    }
  }
}

void sub_100011AF4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100011818;
  v36 = sub_100011828;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100011818;
  v30 = sub_100011828;
  v13 = v11;
  v31 = v13;
  if (v9)
  {
    v14 = [NSInputStream inputStreamWithData:v9];
    v15 = v33[5];
    v33[5] = v14;

    v16 = *(a1 + 32);
    if (v16)
    {
      (*(v16 + 16))(v16, v33[5], v13);
    }

    if (v12)
    {
      v12[2](v12);
    }
  }

  else if (v10)
  {
    v17 = [v10 url];
    v18 = PBCoordinatedRead();

    v19 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
    v20 = [v10 url];
    v22 = (v27 + 5);
    v21 = v27[5];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100011DB0;
    v24[3] = &unk_100031928;
    v24[4] = &v26;
    v24[5] = &v32;
    obj = v21;
    [v19 coordinateReadingItemAtURL:v20 options:1 error:&obj byAccessor:v24];
    objc_storeStrong(v22, obj);
  }

  v23 = *(a1 + 32);
  if (v23)
  {
    (*(v23 + 16))(v23, v33[5], v13);
  }

  if (v12)
  {
    v12[2](v12);
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
}

void sub_100011D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100011DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [NSFileHandle fileHandleForReadingFromURL:a2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [PBRemotePasteboardItemProviderInputStream inputStreamWithFileHandle:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_100012888(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v67 = v6;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Could not request remote pasteboard data. Error: %@", buf, 0xCu);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v58 = _NSConcreteStackBlock;
      v59 = 3221225472;
      v60 = sub_100012D40;
      v61 = &unk_100030B50;
      v9 = &v63;
      v63 = v8;
      v62 = *(a1 + 32);
      PBDispatchAsyncCallback();

LABEL_31:
    }
  }

  else
  {
    obj = v5;
    v38 = a1;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v40 = [v5 countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v40)
    {
      v39 = *v55;
      v42 = PBMetadataSuggestedNameKey;
      v10 = v48;
      p_info = &@"\n".info;
      v12 = &unk_100031978;
      do
      {
        v13 = 0;
        do
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = v13;
          v14 = *(*(&v54 + 1) + 8 * v13);
          v15 = objc_alloc_init(PBItem);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v45 = [v14 types];
          v16 = [v45 countByEnumeratingWithState:&v50 objects:v64 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v51;
            v43 = *v51;
            do
            {
              v19 = 0;
              v44 = v17;
              do
              {
                if (*v51 != v18)
                {
                  objc_enumerationMutation(v45);
                }

                v20 = *(*(&v50 + 1) + 8 * v19);
                v21 = [v20 type];
                if ([v20 conformsToProtocol:p_info[280]])
                {
                  v22 = v12;
                  v23 = v10;
                  v24 = p_info;
                  v25 = v20;
                  v26 = [v15 metadata];
                  v27 = [v26 mutableCopy];
                  v28 = v27;
                  if (v27)
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = objc_alloc_init(NSMutableDictionary);
                  }

                  v30 = v29;

                  v31 = [v25 getFileName];

                  if (v31)
                  {
                    [v30 setObject:v31 forKeyedSubscript:v42];
                  }

                  [v15 setMetadata:v30];

                  p_info = v24;
                  v10 = v23;
                  v12 = v22;
                  v18 = v43;
                  v17 = v44;
                }

                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v48[0] = sub_100012DB0;
                v48[1] = v12;
                v49 = v21;
                v32 = v21;
                [v15 v2_addRepresentationType:v32 preferredRepresentation:1 loader:v47];

                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v45 countByEnumeratingWithState:&v50 objects:v64 count:16];
            }

            while (v17);
          }

          v33 = [v15 availableTypes];
          v34 = [v33 count];

          if (v34)
          {
            [*(v38 + 48) addObject:v15];
          }

          v13 = v41 + 1;
        }

        while ((v41 + 1) != v40);
        v40 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
      }

      while (v40);
    }

    a1 = v38;
    [*(v38 + 32) setItems:*(v38 + 48)];
    [*(v38 + 32) setRemoteMetadataLoaded];
    v35 = *(v38 + 56);
    v6 = 0;
    v5 = obj;
    if (v35)
    {
      v9 = &v46;
      v46 = v35;
      PBDispatchAsyncCallback();
      goto LABEL_31;
    }
  }

  v36 = [*(a1 + 40) workQueue];
  dispatch_resume(v36);
}

void sub_100012D40(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) UUID];
  v2 = PBPasteboardNotAvailableError();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100012DB0(uint64_t a1, void (**a2)(void, void, void, void, void))
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = PBCannotLoadRepresentationError();
    (a2)[2](v4, 0, 0, v5, 0);
  }

  return 0;
}

void sub_100012FD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5)
  {
    if (v3)
    {
      v6 = v10;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000130F8;
      v10[3] = &unk_100030B50;
      v10[5] = v5;
      v7 = v4;
    }

    else
    {
      v6 = v9;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100013110;
      v9[3] = &unk_100030B50;
      v9[5] = v5;
      v7 = *(a1 + 32);
    }

    v6[4] = v7;
    PBDispatchAsyncCallback();
  }

  v8 = [*(a1 + 40) workQueue];
  dispatch_resume(v8);
}

void sub_100013320(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not request remote pasteboard data. Error: %@", buf, 0xCu);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v52 = _NSConcreteStackBlock;
      v53 = 3221225472;
      v54 = sub_1000137C8;
      v55 = &unk_100030B50;
      v57 = v8;
      v56 = *(a1 + 32);
      PBDispatchAsyncCallback();
    }

    v9 = [*(a1 + 40) workQueue];
    dispatch_resume(v9);
  }

  else
  {
    obj = v5;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v34 = [v5 countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v34)
    {
      v32 = *v49;
      v36 = PBMetadataSuggestedNameKey;
      v10 = v43;
      p_info = &@"\n".info;
      v12 = &unk_100031978;
      v33 = a1;
      do
      {
        v13 = 0;
        do
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v13;
          v14 = *(*(&v48 + 1) + 8 * v13);
          v15 = objc_alloc_init(PBItem);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v39 = [v14 types];
          v16 = [v39 countByEnumeratingWithState:&v44 objects:v58 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v45;
            v37 = *v45;
            do
            {
              v19 = 0;
              v38 = v17;
              do
              {
                if (*v45 != v18)
                {
                  objc_enumerationMutation(v39);
                }

                v20 = *(*(&v44 + 1) + 8 * v19);
                v21 = [v20 type];
                if ([v20 conformsToProtocol:p_info[280]])
                {
                  v22 = v12;
                  v23 = v10;
                  v24 = p_info;
                  v25 = v20;
                  v26 = [v15 metadata];
                  v27 = [v26 mutableCopy];

                  v28 = [v25 getFileName];

                  p_info = v24;
                  v10 = v23;
                  v12 = v22;
                  v17 = v38;
                  [v27 setObject:v28 forKeyedSubscript:v36];

                  [v15 setMetadata:v27];
                  v18 = v37;
                }

                v42[0] = _NSConcreteStackBlock;
                v42[1] = 3221225472;
                v43[0] = sub_10001383C;
                v43[1] = v12;
                v43[2] = v20;
                [v15 v2_addRepresentationType:v21 preferredRepresentation:1 loader:v42];

                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v39 countByEnumeratingWithState:&v44 objects:v58 count:16];
            }

            while (v17);
          }

          a1 = v33;
          [*(v33 + 48) addObject:v15];

          v13 = v35 + 1;
        }

        while ((v35 + 1) != v34);
        v34 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v34);
    }

    [*(a1 + 32) setItems:*(a1 + 48)];
    [*(a1 + 32) setRemoteDataLoaded];
    v9 = [*(a1 + 40) workQueue_saveGeneralPasteboardFromContinuityPasteboard:*(a1 + 32)];
    v29 = *(a1 + 56);
    if (v29)
    {
      v41 = v29;
      v40 = v9;
      PBDispatchAsyncCallback();
    }

    v30 = [*(a1 + 40) workQueue];
    dispatch_resume(v30);

    v6 = 0;
    v5 = obj;
  }
}

void sub_1000137C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) UUID];
  v2 = PBPasteboardNotAvailableError();
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t sub_10001383C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013DE4;
  v7[3] = &unk_100031A18;
  v8 = v3;
  v5 = v3;
  [v4 getDataWithCompletionBlock:v7];

  return 0;
}

void sub_100013A78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    if (v6)
    {
      v9 = v15;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v10 = sub_100013BA0;
      v11 = v6;
    }

    else
    {
      v9 = &v13;
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v10 = sub_100013BB8;
      v11 = v5;
    }

    v9[2] = v10;
    v9[3] = &unk_100030B50;
    v9[5] = v8;
    v9[4] = v11;
    PBDispatchAsyncCallback();
  }

  v12 = [*(a1 + 32) workQueue];
  dispatch_resume(v12);
}

void sub_100013C80(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue_pasteboardWithPersistenceName:PBGeneralPasteboardName name:PBGeneralPasteboardName localOnly:0];
  v5 = v2;
  if (v2)
  {
    v3 = [v2 changeCount] + 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [v4 workQueue_createRemoteGeneralPasteboardWithChangeCount:v3];
  }

  else
  {
    [v4 workQueue_removeRemotePasteboardAndRestoreGeneralPasteboard];
  }
}

uint64_t sub_100013DCC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100013DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    [v5 open];
    v8 = NSTemporaryDirectory();
    v9 = [v8 stringByAppendingPathComponent:@"data"];

    bzero(v42, 0x401uLL);
    [v9 fileSystemRepresentation];
    v10 = CPOpenTemporaryFile();
    if (v10 == -1)
    {
      v18 = _PBLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v26 = __error();
        v27 = strerror(*v26);
        __buf = 136315394;
        v39 = "NSProgress *_loadRemoteItemProvider(NSObject<UAPasteboardItemProviding> *__strong, void (^__strong)(NSData *__strong, PBSecurityScopedURLWrapper *__strong, NSError *__strong, void (^__strong)(void)))_block_invoke";
        v40 = 2080;
        v41 = v27;
        _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "%s: Cannot create temporary file for incoming data stream. Error: %s", &__buf, 0x16u);
      }

      [v5 close];
      v12 = 0;
      goto LABEL_23;
    }

    v11 = v10;
    v12 = [NSURL fileURLWithFileSystemRepresentation:v42 isDirectory:0 relativeToURL:0];
    if ([v5 hasBytesAvailable])
    {
      while (1)
      {
        v13 = [v5 read:&__buf maxLength:1024];
        if ((v13 & 0x8000000000000000) != 0)
        {
          v19 = _PBLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            v23 = [v5 streamError];
            *buf = 136315394;
            v35 = "NSProgress *_loadRemoteItemProvider(NSObject<UAPasteboardItemProviding> *__strong, void (^__strong)(NSData *__strong, PBSecurityScopedURLWrapper *__strong, NSError *__strong, void (^__strong)(void)))_block_invoke";
            v36 = 2112;
            v37 = v23;
            _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "%s: Stream error: %@", buf, 0x16u);
          }

          goto LABEL_21;
        }

        v14 = v13;
        if (v13)
        {
          if (write(v11, &__buf, v13) == -1)
          {
            break;
          }
        }

        if (([v5 hasBytesAvailable] & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v19 = _PBLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      v28 = __error();
      v29 = strerror(*v28);
      *buf = 136315394;
      v35 = "NSProgress *_loadRemoteItemProvider(NSObject<UAPasteboardItemProviding> *__strong, void (^__strong)(NSData *__strong, PBSecurityScopedURLWrapper *__strong, NSError *__strong, void (^__strong)(void)))_block_invoke";
      v36 = 2080;
      v37 = v29;
      v22 = "%s: Cannot write to file. Error: %s";
    }

    else
    {
LABEL_9:
      if (lseek(v11, 0, 0) != -1)
      {
        [v5 close];
        v15 = [[PBSecurityScopedURLWrapper alloc] initWithURLWithoutIssuingExtension:v12];
        v31 = *(a1 + 32);
        v12 = v12;
        v16 = v15;
        PBDispatchAsyncCallback();

        goto LABEL_25;
      }

      v19 = _PBLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_21;
      }

      v20 = __error();
      v21 = strerror(*v20);
      *buf = 136315394;
      v35 = "NSProgress *_loadRemoteItemProvider(NSObject<UAPasteboardItemProviding> *__strong, void (^__strong)(NSData *__strong, PBSecurityScopedURLWrapper *__strong, NSError *__strong, void (^__strong)(void)))_block_invoke";
      v36 = 2080;
      v37 = v21;
      v22 = "%s: Cannot seek to beginning of file. Error: %s";
    }

    _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, v22, buf, 0x16u);
LABEL_21:

    [v5 close];
    close(v11);
    if (v12)
    {
      v24 = +[NSFileManager defaultManager];
      [v24 removeItemAtURL:v12 error:0];
    }

LABEL_23:
    v25 = *(a1 + 32);
    if (!v25)
    {
LABEL_26:

      goto LABEL_27;
    }

    v30 = v25;
    PBDispatchAsyncCallback();
    v16 = v30;
LABEL_25:

    goto LABEL_26;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v33 = v17;
    v32 = v7;
    PBDispatchAsyncCallback();

    v9 = v33;
LABEL_27:
  }
}

void sub_10001430C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000143AC;
  v3[3] = &unk_100030D98;
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  (*(v2 + 16))(v2, 0, v1, 0, v3);
}

void sub_1000143AC(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void sub_100014408(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PBCannotLoadRemotePasteboardError();
  (*(v1 + 16))(v1, 0, 0, v2, 0);
}

void sub_100014678(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000146B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PBLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Failed to paste request authorization due to XPC error: %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  PBDispatchAsyncCallback();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void sub_1000147F8(uint64_t a1)
{
  v3 = *(a1 + 32);
  PBDispatchAsyncCallback();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

id sub_100014A3C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 UUIDString];
  v5 = [NSString stringWithFormat:@"%@-%@", v4, v3];

  v6 = PBSHA1HashOfString();

  return v6;
}

void sub_100014BF4(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) setItemQueue_isStoredOnServer:1];
  v3 = [*v2 itemQueue_typeOrder];
  v4 = [v3 array];

  objc_initWeak(&location, *v2);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [*(a1 + 32) UUID];
        v10 = sub_100014E64(v9, *(a1 + 40), v8);

        v11 = [PBItemRepresentation alloc];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100014EE0;
        v15[3] = &unk_100031AE0;
        objc_copyWeak(&v17, &location);
        v15[4] = v8;
        v12 = v10;
        v16 = v12;
        v13 = [v11 initWithType:v8 preferredRepresentation:1 v2_loader:v15];
        [*(a1 + 32) itemQueue_setItemRepresentation:v13];

        objc_destroyWeak(&v17);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  objc_destroyWeak(&location);
}

id sub_100014E64(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = sub_100014A3C(a1, a3);
  v7 = [v5 URLByAppendingPathComponent:v6 isDirectory:0];

  return v7;
}

id sub_100014EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _PBLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [WeakRetained UUID];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 134218754;
    v39 = WeakRetained;
    v40 = 2112;
    v41 = v6;
    v42 = 2112;
    v43 = v7;
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Loading item %p %@ type %@ from URL %@", buf, 0x2Au);
  }

  v9 = [*(a1 + 40) URLByAppendingPathExtension:@"bookmark"];
  if (!v9 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v10 = objc_claimAutoreleasedReturnValue(), [v9 path], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "fileExistsAtPath:", v11), v11, v10, !v12))
  {
    v15 = [[PBSecurityScopedURLWrapper alloc] initWithURL:*(a1 + 40) readonly:1 extensionClass:@"com.apple.Pasteboard-readonly"];
    (*(v3 + 2))(v3, 0, v15, 0, 0, 0);
    v13 = 0;
    goto LABEL_24;
  }

  v13 = objc_alloc_init(NSProgress);
  v37 = 0;
  v14 = [NSURL bookmarkDataWithContentsOfURL:v9 error:&v37];
  v15 = v37;
  if (v15 || !v14)
  {
    v23 = _PBLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = [WeakRetained UUID];
      v29 = *(a1 + 32);
      *buf = 134218754;
      v39 = WeakRetained;
      v40 = 2112;
      v41 = v28;
      v42 = 2114;
      v43 = v29;
      v44 = 2112;
      v45 = v15;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to load bookmark for item %p %@ type %{public}@. Error: %@", buf, 0x2Au);
    }
  }

  else
  {
    v36 = 0;
    v16 = PBStorageRootURL();
    v35 = 0;
    v17 = [NSURL URLByResolvingBookmarkData:v14 options:256 relativeToURL:v16 bookmarkDataIsStale:&v36 error:&v35];
    v15 = v35;

    if (v36 == 1)
    {
      v18 = _PBLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v30 = [WeakRetained UUID];
        v31 = *(a1 + 32);
        *buf = 134218498;
        v39 = WeakRetained;
        v40 = 2112;
        v41 = v30;
        v42 = 2114;
        v43 = v31;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Item %p %@ type %{public}@ bookmark data is stale. Using it anyway.", buf, 0x20u);
      }
    }

    if (v17)
    {
      [v13 setTotalUnitCount:2];
      v19 = _PBLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [WeakRetained UUID];
        v21 = *(a1 + 32);
        *buf = 134218498;
        v39 = WeakRetained;
        v40 = 2112;
        v41 = v20;
        v42 = 2114;
        v43 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Item %p %@ type %{public}@ successfully resolved bookmark data.", buf, 0x20u);
      }

      objc_initWeak(buf, v13);
      objc_copyWeak(&v34, buf);
      v32 = *(a1 + 32);
      v33 = v3;
      v22 = PBCoordinatedRead();
      [v13 addChild:v22 withPendingUnitCount:2];

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);

      goto LABEL_23;
    }

    v24 = _PBLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [WeakRetained UUID];
      v26 = *(a1 + 32);
      *buf = 134218754;
      v39 = WeakRetained;
      v40 = 2112;
      v41 = v25;
      v42 = 2112;
      v43 = v26;
      v44 = 2112;
      v45 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Item %p %@ type %@ could not resolved bookmark data to a URL. Error: %@", buf, 0x2Au);
    }
  }

  (*(v3 + 2))(v3, 0, 0, 0, v15, 0);
LABEL_23:

LABEL_24:

  return v13;
}

void sub_10001545C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015484(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setCompletedUnitCount:1];
  v8 = v6;
  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = v8;
  if (v5 && !v8)
  {
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) suggestedName];
    v11 = PBCloneURLToTemporaryFolder();
    v10 = 0;
    v12 = 0;

    v15 = _PBLog();
    v16 = v15;
    if (v11)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
LABEL_8:

        goto LABEL_9;
      }

      v17 = *(a1 + 40);
      v18 = [v17 UUID];
      v19 = *(a1 + 32);
      *buf = 134218498;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      v20 = v18;
      v38 = 2114;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Item %p %@ type %{public}@ successfully made a local copy of a bookmarked file.", buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v26 = *(a1 + 40);
      v27 = [v26 UUID];
      v28 = *(a1 + 32);
      *buf = 134218754;
      v35 = v26;
      v36 = 2112;
      v37 = v27;
      v20 = v27;
      v38 = 2114;
      v39 = v28;
      v40 = 2114;
      v41 = v12;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Item %p %@ type %{public}@ could not make a copy of a bookmarked file. Error: %{public}@", buf, 0x2Au);
    }

    goto LABEL_8;
  }

LABEL_9:
  [WeakRetained setCompletedUnitCount:{objc_msgSend(WeakRetained, "totalUnitCount")}];
  v29 = v11;
  v21 = *(a1 + 48);
  v30 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v31 = v9;
  v32 = v10;
  v33 = v21;
  v22 = v12;
  v23 = v10;
  v24 = v9;
  v25 = v11;
  PBDispatchAsyncCallback();
}

void sub_100015794(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v9 = [[PBSecurityScopedURLWrapper alloc] initWithURL:*(a1 + 32) readonly:1];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v2 = _PBLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = [v5 UUID];
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      *buf = 134218754;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Item %p %@ type %{public}@ could not coordinate reading bookmarked file. Error: %{public}@", buf, 0x2Au);
    }

    v3 = +[NSFileManager defaultManager];
    [v3 removeItemAtURL:*(a1 + 64) error:0];

    v4 = *(a1 + 72);
    (*(*(a1 + 80) + 16))();
  }
}

void sub_100015FCC(uint64_t a1)
{
  v2 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 72);
  v7 = *(a1 + 64);
  v3 = v2;
  PBDispatchAsyncCallback();
}

void sub_1000160D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    if ([v9 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
    {
      v10 = 0x40000000;
    }

    else if ([v9 isEqualToString:NSFileProtectionNone])
    {
      v10 = 0x10000000;
    }

    else
    {
      v10 = 0x20000000;
    }

    v21 = 0;
    [v5 writeToURL:v8 options:v10 error:&v21];
    v7 = v21;
  }

  v11 = _PBLog();
  v12 = v11;
  if (v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      *buf = 134218498;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v7;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Could not save item %p representation type %@. Error: %@", buf, 0x20u);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v20 = v13;
      v19 = v7;
      PBDispatchAsyncCallback();
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 48) UUID];
      v15 = *(a1 + 56);
      v16 = *(a1 + 32);
      *buf = 138412802;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Saved item %@ type %@ to %@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_100016354(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  v10 = v8;
  if (v7)
  {
    v10 = v8;
    if (!v8)
    {
      if (!a3 || *(a1 + 80) != 1)
      {
        v16 = +[NSFileManager defaultManager];
        v17 = *(a1 + 40);
        v23 = 0;
        [v16 moveItemAtURL:v7 toURL:v17 error:&v23];
        v10 = v23;

        v11 = _PBLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 48);
          v18 = *(a1 + 56);
          v20 = *(a1 + 40);
          *buf = 134218498;
          v27 = v19;
          v28 = 2114;
          v29 = v18;
          v30 = 2112;
          v31 = v20;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Saved file for item %p representation type %{public}@ to %@", buf, 0x20u);
        }

        goto LABEL_13;
      }

      v25 = 0;
      v11 = [v7 bookmarkDataWithOptions:1024 includingResourceValuesForKeys:0 relativeToURL:0 error:&v25];
      v10 = v25;
      if (!v10 && v11)
      {
        v12 = *(a1 + 32);
        v24 = 0;
        v13 = [NSURL writeBookmarkData:v11 toURL:v12 options:256 error:&v24];
        v10 = v24;
        v14 = _PBLog();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v27 = v7;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Successfully wrote bookmark data for %@", buf, 0xCu);
          }

LABEL_13:
          (*(*(a1 + 64) + 16))();
          goto LABEL_20;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v27 = v7;
          v28 = 2114;
          v29 = v10;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to write bookmark data for %@. Error: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    v22 = v21;
    v10 = v10;
    PBDispatchAsyncCallback();
  }

LABEL_20:
}

void sub_100016668(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = a1[4];
    v21 = 0;
    [v8 moveItemAtURL:v5 toURL:v9 error:&v21];
    v7 = v21;
  }

  v10 = _PBLog();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v17 = a1[5];
      v16 = a1[6];
      v18 = a1[4];
      *buf = 134218754;
      v23 = v17;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v7;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Could not copy file for item %p representation type %@ to %@. Error: %@", buf, 0x2Au);
    }

    v12 = a1[7];
    if (v12)
    {
      v20 = v12;
      v19 = v7;
      PBDispatchAsyncCallback();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = a1[5];
      v13 = a1[6];
      v15 = a1[4];
      *buf = 134218498;
      v23 = v14;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Saved file for item %p representation type %@ to %@", buf, 0x20u);
    }

    (*(a1[8] + 16))();
  }
}

void sub_100016A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016A78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016A90(uint64_t a1)
{
  v5 = [*(a1 + 32) itemQueue_typeOrder];
  v2 = [v5 array];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100016AF8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    [*(a1 + 32) setStorageBaseURL:*(a1 + 40)];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return _objc_release_x1();
}

id sub_100016EDC()
{
  if (qword_100039340 != -1)
  {
    dispatch_once(&qword_100039340, &stru_100031BC8);
  }

  v1 = qword_100039338;

  return v1;
}

void sub_100017144(id a1)
{
  qword_100039338 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_1000171A0(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), &unk_100039330);
  CFRelease(*(a1 + 32));
  [v2 authorizationDidCompleteWithPasteAllowed:*(a1 + 40) == 1];
}

void sub_100017978(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _PBLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to announce paste due to XPC error: %@", &v4, 0xCu);
  }
}

void sub_100017AE4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _PBLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to announce deny due to XPC error: %@", &v4, 0xCu);
  }
}

id sub_100017E1C()
{
  if (qword_100039350 != -1)
  {
    dispatch_once(&qword_100039350, &stru_100031C88);
  }

  v1 = qword_100039348;

  return v1;
}

void sub_100017E88(id a1)
{
  qword_100039348 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_1000186B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v21 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000186E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000186F8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  IsDomainTopLevel = _CFHostIsDomainTopLevel();
  v10 = *(*(a1 + 40) + 8);
  if (IsDomainTopLevel)
  {
    *(v10 + 24) = 1;
  }

  else if (*(v10 + 24) == 1)
  {
    *a4 = 1;
  }

  return _objc_release_x1();
}

uint64_t sub_1000189A8(void *a1)
{
  v1 = a1;
  if (qword_100039378 != -1)
  {
    dispatch_once(&qword_100039378, &stru_100031CD0);
  }

  v2 = pthread_getspecific(qword_100039370);
  v3 = v2;
  if (!v2)
  {
    operator new();
  }

  if (![*v2 isEqualToString:v1])
  {
    v5 = [v1 copy];
    v6 = *v3;
    *v3 = v5;

    v38 = v1;
    v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v8 = [v38 stringByTrimmingCharactersInSet:v7];
    if (![v8 length])
    {
      v4 = 4;
      v9 = v8;
LABEL_73:

      v3[1] = v4;
      goto LABEL_74;
    }

    v9 = [v8 safari_stringByRemovingUnnecessaryCharactersFromUserTypedURLString];

    if (![v9 length])
    {
      goto LABEL_60;
    }

    v10 = [v9 rangeOfCharacterFromSet:v7];
    v11 = [v9 rangeOfString:@"/"];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v17 = [v9 substringToIndex:v10];
    v18 = sub_10001921C(v17);
    if (![v18 length])
    {
      goto LABEL_24;
    }

    v19 = v18;
    if ((atomic_load_explicit(&qword_100039388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100039388))
    {
      qword_100039380 = [[NSSet alloc] initWithObjects:{@"data", @"file", @"ftp", @"ftps", @"http", @"https", @"javascript", 0}];
      __cxa_guard_release(&qword_100039388);
    }

    if (![v19 length])
    {

      goto LABEL_29;
    }

    v20 = [qword_100039380 containsObject:v19];

    if (v20)
    {
LABEL_24:
      v21 = [v18 length];
      if (!v21 || v21 != [v17 length] - 1)
      {
        if ([v17 _webkit_looksLikeAbsoluteURL])
        {
          v4 = 1;
LABEL_30:

LABEL_72:
          goto LABEL_73;
        }

        v33 = [v17 rangeOfString:@"?"];

        if (v33 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_10:
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_34:
            v9 = v9;
            if ([v9 length] && (v24 = objc_msgSend(v9, "length") - 1, objc_msgSend(v9, "characterAtIndex:", v24) == 58))
            {
              v25 = sub_100019640(v9);

              if (v25 == v24)
              {
                goto LABEL_45;
              }
            }

            else
            {
            }

            if ([v9 _webkit_looksLikeAbsoluteURL])
            {
              v26 = sub_10001921C(v9);
              v17 = v26;
              if (v11 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v30 = v26;
                if ((atomic_load_explicit(&qword_100039398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100039398))
                {
                  qword_100039390 = [[NSSet alloc] initWithObjects:{@"site", @"link", @"related", @"cache", 0}];
                  __cxa_guard_release(&qword_100039398);
                }

                if ([v30 length])
                {
                  v31 = qword_100039390;
                  v32 = [v30 lowercaseString];
                  LODWORD(v31) = [v31 containsObject:v32];

                  v4 = ~v31 & 1;
                }

                else
                {

                  v4 = 1;
                }

                goto LABEL_72;
              }

              if (([v9 isEqualToString:@"about:blank"] & 1) == 0)
              {
                if (sub_100019294(v17))
                {
                  v4 = 1;
                }

                else
                {
                  v4 = 3;
                }

                goto LABEL_72;
              }

              goto LABEL_70;
            }

LABEL_45:
            v27 = [v9 rangeOfString:@"."];
            v28 = v27;
            if (v11 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v27 && v27 != 0x7FFFFFFFFFFFFFFFLL && (v39 = 0, (sub_1000193CC(v9, &v39) & 1) != 0))
              {
                v4 = v39;
              }

              else if ([v9 caseInsensitiveCompare:@"localhost"])
              {
                v4 = 3;
              }

              else
              {
                v4 = 2;
              }

              goto LABEL_73;
            }

            v9 = v9;
            if ((atomic_load_explicit(&qword_1000393B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000393B8))
            {
              qword_1000393B0 = sub_1000196A4();
              __cxa_guard_release(&qword_1000393B8);
            }

            v29 = [v9 rangeOfCharacterFromSet:qword_1000393B0];

            if (v29 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v4 = 3;
              goto LABEL_73;
            }

            v17 = 0;
            if (v28)
            {
              if (v28 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v17 = [v9 substringToIndex:v11];
                v39 = 0;
                if (sub_1000193CC(v17, &v39))
                {
                  v4 = v39;
                  goto LABEL_72;
                }
              }
            }

            v34 = [v9 rangeOfString:@"/" options:4];
            if (v34 != [v9 length] - 1)
            {
              v35 = [v9 rangeOfString:@"#" options:4];
              if (v35 == 0x7FFFFFFFFFFFFFFFLL || v35 <= v34)
              {
                v36 = [v9 rangeOfString:@"?" options:4];
                if (v36 == 0x7FFFFFFFFFFFFFFFLL || v36 <= v11)
                {
                  if ([v9 hasPrefix:@"localhost/"])
                  {
                    v4 = 2;
                  }

                  else
                  {
                    v4 = 3;
                  }

                  goto LABEL_72;
                }
              }
            }

LABEL_70:
            v4 = 2;
            goto LABEL_72;
          }

          v12 = v9;
          if ([v12 length])
          {
            v13 = [v12 rangeOfString:@":" options:4];

            if (v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = [v12 length] - 1;
              if (v13 != v14)
              {
                v15 = v13 + 1;
                while (v15 <= v14)
                {
                  v16 = [v12 characterAtIndex:v15];
                  if (v16 <= 0xFF)
                  {
                    ++v15;
                    if ((_DefaultRuneLocale.__runetype[v16] & 0x400) != 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_32;
                }

                v22 = [v12 substringToIndex:v13];
                goto LABEL_33;
              }
            }
          }

          else
          {
          }

LABEL_32:
          v22 = v12;
LABEL_33:
          v23 = v22;

          v9 = v23;
          goto LABEL_34;
        }

LABEL_60:
        v4 = 0;
        goto LABEL_73;
      }
    }

LABEL_29:
    v4 = 0;
    goto LABEL_30;
  }

  v4 = v3[1];
LABEL_74:

  return v4;
}

void sub_10001908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  __cxa_guard_abort(&qword_1000393B8);

  _Unwind_Resume(a1);
}

id *sub_1000191C8(id *result)
{
  if (result)
  {

    operator delete();
  }

  return result;
}

id sub_10001921C(void *a1)
{
  v1 = a1;
  v2 = sub_100019640(v1);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v1 substringToIndex:v2];
  }

  return v3;
}

id sub_100019294(void *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_1000393A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000393A8))
  {
    qword_1000393A0 = [[NSSet alloc] initWithObjects:{@"data", @"facetime", @"gamecenter", @"irc", @"javascript", @"mailto", @"man", @"message", @"radar", @"spotify", @"tel", 0}];
    __cxa_guard_release(&qword_1000393A8);
  }

  if ([v1 length])
  {
    v2 = [qword_1000393A0 containsObject:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1000193A8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1000393A8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000193CC(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 length])
  {
    v4 = [v3 lowercaseString];
    v5 = [v4 safari_possibleTopLevelDomainCorrectionForUserTypedString];
    if ([v5 length])
    {
      v6 = v5;

      v4 = v6;
    }

    v7 = [v4 safari_highLevelDomainFromHost];
    if ([v7 length])
    {

LABEL_6:
      *a2 = 2 * ([v4 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL);
      v8 = 1;
LABEL_14:

      goto LABEL_15;
    }

    v9 = v4;
    if ((atomic_load_explicit(&qword_1000393C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000393C8))
    {
      qword_1000393C0 = [[NSSet alloc] initWithObjects:{@"private", @"box", @"local", 0}];
      __cxa_guard_release(&qword_1000393C8);
    }

    if (![v9 length] || (v10 = objc_msgSend(v9, "rangeOfString:options:", @".", 4), v10 == 0x7FFFFFFFFFFFFFFFLL) || v10 + 1 == objc_msgSend(v9, "length"))
    {
    }

    else
    {
      v12 = qword_1000393C0;
      v13 = [v9 substringFromIndex:?];
      v14 = [v13 lowercaseString];
      LOBYTE(v12) = [v12 containsObject:v14];

      if (v12)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

void sub_1000195C4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1000393C8);

  _Unwind_Resume(a1);
}

uint64_t sub_100019640(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 rangeOfString:@":"];
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

id sub_1000196A4()
{
  v0 = objc_alloc_init(NSMutableCharacterSet);
  v1 = +[NSCharacterSet decimalDigitCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = +[NSCharacterSet punctuationCharacterSet];
  [v0 formUnionWithCharacterSet:v2];

  v3 = +[NSCharacterSet symbolCharacterSet];
  [v0 formUnionWithCharacterSet:v3];

  v4 = [v0 invertedSet];

  return v4;
}

void sub_100019764(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10001A390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A3C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A3E0(void *a1, void *a2, void *a3, char a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a6;
  if ([v12 count])
  {
    v15 = [v12 firstObject];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v16 = PBItemQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AB88;
    block[3] = &unk_100030D70;
    v40 = &v41;
    v17 = v15;
    v39 = v17;
    dispatch_sync(v16, block);

    if (*(v42 + 24) != 1 || (a4 & 1) != 0)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10001ABD4;
      v21[3] = &unk_100031DA0;
      v25 = v14;
      v22 = v12;
      v23 = v11;
      v24 = v13;
      v26 = a4;
      v27 = a5;
      [v17 saveRepresentationsToStorageBaseURL:v23 fileProtectionType:v24 allowedToCopyOnPaste:a5 completionBlock:v21];

      v19 = v25;
    }

    else
    {
      v18 = [v12 subarrayWithRange:{1, objc_msgSend(v12, "count") - 1}];
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_10001ABBC;
      v31 = &unk_100031D78;
      v32 = v11;
      v19 = v18;
      v33 = v19;
      v34 = v13;
      v36 = a4;
      v37 = a5;
      v35 = v14;
      PBDispatchAsyncCallback();
    }

    _Block_object_dispose(&v41, 8);
    goto LABEL_9;
  }

  if (v14)
  {
    v20 = v14;
    PBDispatchAsyncCallback();
    v17 = v20;
LABEL_9:
  }
}

void sub_10001A710(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001A9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A9D0(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), &unk_1000393D0);
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 48) + 8) + 24) = [v2 authorizationDecisionForAuditTokenInfo:*(a1 + 40) timestamp:*(a1 + 56)];
    v2 = v3;
  }
}

void sub_10001AAF8(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), &unk_1000393D0);
  if (!v2)
  {
    v3 = objc_alloc_init(PBUserAuthorizationLedger);
    objc_setAssociatedObject(*(a1 + 32), &unk_1000393D0, v3, 1);
    v2 = v3;
  }

  v4 = v2;
  [v2 recordUserAuthorizationDecision:*(a1 + 48) auditTokenInfo:*(a1 + 40)];
}

id sub_10001AB88(uint64_t a1)
{
  result = [*(a1 + 32) itemQueue_isStoredOnServer];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10001ABD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v6 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 64);
    v9 = *(a1 + 56);
    v5 = v6;
    PBDispatchAsyncCallback();

    goto LABEL_5;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v12 = v4;
    v11 = v3;
    PBDispatchAsyncCallback();

    v5 = v12;
LABEL_5:
  }
}

PBCalloutBarPasteButtonDrawing *sub_10001D98C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PBCalloutBarPasteButtonDrawing alloc] initWithStyle:*(a1 + 32) tag:v3];

  return v4;
}

PBSystemInputAssistantPasteButtonDrawing *sub_10001D9F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PBSystemInputAssistantPasteButtonDrawing alloc] initWithStyle:*(a1 + 32) tag:v3];

  return v4;
}

PBUndoInteractionHUDIconPasteButtonDrawing *sub_10001DA5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PBUndoInteractionHUDIconPasteButtonDrawing alloc] initWithStyle:*(a1 + 32) tag:v3];

  return v4;
}

PBUndoInteractionHUDTextPasteButtonDrawing *sub_10001DAC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PBUndoInteractionHUDTextPasteButtonDrawing alloc] initWithStyle:*(a1 + 32) tag:v3];

  return v4;
}

id sub_10001DB2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[PBContextMenuPasteButtonDrawing drawingWithStyle:tag:size:](PBContextMenuPasteButtonDrawing, "drawingWithStyle:tag:size:", v2, v3, [v3 layoutSize]);

  return v4;
}

PBContextMenuDynamicPasteButtonDrawing *sub_10001DB9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PBContextMenuDynamicPasteButtonDrawing alloc] initWithStyle:*(a1 + 32) tag:v3];

  return v4;
}

PBEditMenuPasteButtonDrawing *sub_10001DC04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PBEditMenuPasteButtonDrawing alloc] initWithStyle:*(a1 + 32) tag:v3];

  return v4;
}

double sub_10001DC6C(const __CTFont *a1)
{
  Leading = CTFontGetLeading(a1);
  v3 = Leading + CTFontGetAscent(a1);
  return v3 + CTFontGetDescent(a1);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}