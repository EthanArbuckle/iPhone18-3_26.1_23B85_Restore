uint64_t sub_100001D6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001D7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001D8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001D9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001DAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001DBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001DCC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001DDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001DEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001DFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001E0C(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudKitIsEnabled];
  v3 = *(a1 + 32);
  v4 = v3[21];
  if (v2)
  {
    if (v4)
    {
      return;
    }

    v13 = 0;
    v5 = [v3 _setupCloudMirroring:&v13];
    v6 = v13;
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = [v7[21] store];
      [v7 _registerForCloudKitContainerEventsForMirroringStore:v8];

      v9 = *(a1 + 32);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100019818;
      v12[3] = &unk_100055EC0;
      v12[4] = v9;
      [v9 exportRecordingsToCloud:v12];
    }

    else
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000371D0();
      }
    }

    goto LABEL_12;
  }

  if (v4)
  {
    v10 = [v4 store];
    [v3 _unregisterForCloudKitContainerEventsForMirroringStore:v10];

    if (([*(a1 + 32) _shutdownCloudMirroring] & 1) == 0)
    {
      v6 = OSLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100037150();
      }

LABEL_12:
    }
  }
}

id sub_1000020E8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020118;
  v3[3] = &unk_100056320;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

uint64_t sub_100002170()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000021AC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000021EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100024720(&qword_10005C940, &qword_10003F540);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000022B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100024720(&qword_10005C940, &qword_10003F540);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100002368()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000023C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002400()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002444()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000247C()
{
  v1 = sub_100024720(&qword_10005CB78, &qword_10003F970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002510()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002548()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002598()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000025D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002618()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 88);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100002694()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000026F4()
{
  v1 = sub_100024720(&qword_10005CC48, &qword_10003FB38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002788()
{
  v1 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v2 = *(v0 + 64);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000027E8()
{
  v1 = sub_100024720(&qword_10005CC48, &qword_10003FB38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000028D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002910()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_100002EF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSManagedObjectModel rc_newObjectModel];
  v8 = objc_opt_new();
  v12[0] = NSXPCStorePostUpdateNotificationsKey;
  v12[1] = NSPersistentHistoryTrackingKey;
  v13[0] = &__kCFBooleanTrue;
  v13[1] = &__kCFBooleanTrue;
  v12[2] = NSPersistentStoreRemoteChangeNotificationOptionKey;
  v12[3] = NSXPCStoreDaemonizeKey;
  v13[2] = &__kCFBooleanTrue;
  v13[3] = &__kCFBooleanTrue;
  v12[4] = NSXPCStoreServiceNameKey;
  v13[4] = v6;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  v10 = [[RCXPCStoreServer alloc] initForStoreWithURL:v5 usingModel:v7 options:v9 policy:v8];

  [v10 setShouldAcceptDatabaseConnection:*(a1 + 32)];

  return v10;
}

void sub_10000322C(uint64_t a1)
{
  v2 = dispatch_time(0, 10000000000);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000032E4;
  v6[3] = &unk_1000551C0;
  v6[4] = v4;
  v7 = v3;
  dispatch_after(v2, v5, v6);
}

void sub_1000032F0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[MobileRestoreObserver _pollBackupManager:]_block_invoke_3";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s -- Mobile Restore has finished.", &v10, 0xCu);
    }

    *(*(a1 + 32) + 24) = 0;
    v8 = 40;
  }

  else
  {
    if (v5)
    {
      v9 = OSLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100034310();
      }
    }

    v8 = 48;
  }

  (*(*(a1 + v8) + 16))();
}

void sub_100003678(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  _Block_object_dispose((v2 - 88), 8);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000036A0(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = OSLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100034404(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    notify_cancel(*(*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 40) + 8) + 24) = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _pollBackupManager:*(a1 + 32)];
  }
}

void sub_1000038DC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100003C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuid];

  if (!v4)
  {
    v7 = [*(a1 + 32) context];
    [v7 deleteObject:v3];

    [*(a1 + 32) saveIfNecessary];
    goto LABEL_68;
  }

  v5 = *(a1 + 40);
  v6 = [v3 uuid];
  v49 = [v5 objectForKeyedSubscript:v6];

  if (v49)
  {
    [v49 addObject:v3];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    v8 = [NSMutableArray arrayWithObject:v3];
    v9 = *(a1 + 40);
    v10 = [v3 uuid];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  [*(a1 + 32) _logMissingAudioFutureIfNeeded:v3];
  v48 = [v3 localAssetIsCurrent];
  if (v48 && [v3 audioFutureNeedsDownload])
  {
    [v3 setAudioFutureNeedsDownload:0];
  }

  v11 = [v3 url];
  if (!v11)
  {
    v30 = [v3 syncedAudioFuture];

    if (v30)
    {
      [v3 setAudioFutureNeedsDownload:1];
    }

    goto LABEL_66;
  }

  [*(a1 + 48) addURL:v11];
  v12 = [v11 URLByDeletingLastPathComponent];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = +[RCCaptureFormat fileExtensionsSupported];
  v14 = [v13 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v14)
  {
    v15 = *v53;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(a1 + 48);
        v18 = [v12 URLByAppendingPathExtension:*(*(&v52 + 1) + 8 * i)];
        [v17 addURL:v18];
      }

      v14 = [v13 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v14);
  }

  if (![v11 checkResourceIsReachableAndReturnError:0] || (*v63 = 0, (objc_msgSend(v11, "getResourceValue:forKey:error:", v63, NSURLFileSizeKey, 0) & 1) == 0) || !objc_msgSend(*v63, "unsignedLongLongValue"))
  {
    v27 = [RCComposition compositionBundleURLForComposedAVURL:v11];
    v28 = [v27 checkResourceIsReachableAndReturnError:0];

    if (v28)
    {
      v29 = [RCComposition compositionLoadedForComposedAVURL:v11 createIfNeeded:0];
      if ([v29 rcs_allAssetsAreMissing])
      {
        [v29 deleteFromFilesystem];
      }

      else if (v29)
      {
        v31 = [v29 decomposedFragments];
        if ([v31 count])
        {
          v32 = [v3 playable];

          if (v32)
          {
            [*(a1 + 56) addObject:v11];
            goto LABEL_64;
          }
        }

        else
        {
        }
      }
    }

    v33 = [*(a1 + 64) containsObject:v11];
    v34 = [v3 syncedAudioFuture];
    v35 = v34 == 0;

    if (((v35 | v33) & 1) == 0 && ([v3 audioFutureNeedsDownload] & 1) == 0)
    {
      [v3 setAudioFutureNeedsDownload:1];
    }

    goto LABEL_65;
  }

  [v3 length];
  if (v19 <= 0.0 || ([v3 playable] & 1) == 0)
  {
    v51 = 0;
    v20 = [FragmentConsolidator consolidateMovieFragmentsForFileAt:v11 error:&v51];
    v21 = v51;
    if ((v20 & 1) == 0)
    {
      v22 = OSLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v11 lastPathComponent];
        sub_100034670(v23, v21, v63, v22);
      }
    }

    v24 = [AVURLAsset rc_preciseTimingAssetWithURL:v11];
    v25 = v24;
    if (v24)
    {
      [v24 rc_durationInSeconds];
      if (v26 > 0.0)
      {
        [v3 setLength:?];
        [v3 setPlayable:1];
      }
    }

    else
    {
      v36 = OSLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [v11 path];
        sub_1000346E8(v37, v62, v36);
      }
    }
  }

  [v3 length];
  if (v38 > 0.00000011920929 && ([v3 playable] & 1) == 0)
  {
    [v3 setPlayable:1];
  }

  if ((v48 & 1) != 0 || *(a1 + 80) != 1)
  {
    goto LABEL_65;
  }

  v39 = [v3 syncedAudioFuture];
  v29 = v39;
  if (v39)
  {
    v40 = [v39 fileURL];
    v41 = v40;
    if (v40)
    {
      v50 = 0;
      v42 = [v40 checkResourceIsReachableAndReturnError:&v50];
      v43 = v50;
      v44 = v43;
      if (v42)
      {
LABEL_63:

        goto LABEL_64;
      }

      if (!v43)
      {
LABEL_62:
        [v3 setAudioFutureNeedsDownload:1];
        goto LABEL_63;
      }

      v45 = OSLogForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [v3 uuid];
        *buf = 136315650;
        v57 = "[RCSavedRecordingsModel(RCSOrphanHandling) performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs:andFinalizingCompositions:restoreFileFutures:]_block_invoke";
        v58 = 2112;
        v59 = v46;
        v60 = 2112;
        v61 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s -- Marking recording %@ audioFutureNeedsDownload because audioFuture.fileURL unreachable, reachableError = %@", buf, 0x20u);
      }
    }

    else
    {
      v45 = OSLogForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v47 = [v3 uuid];
        *buf = 136315394;
        v57 = "[RCSavedRecordingsModel(RCSOrphanHandling) performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs:andFinalizingCompositions:restoreFileFutures:]_block_invoke";
        v58 = 2112;
        v59 = v47;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%s -- Marking recording %@ audioFutureNeedsDownload because audioFuture.fileURL is nil.", buf, 0x16u);
      }

      v44 = 0;
    }

    goto LABEL_62;
  }

LABEL_64:

LABEL_65:
LABEL_66:

  if ([v3 hasChanges])
  {
    [*(a1 + 32) saveIfNecessary];
  }

LABEL_68:
}

void sub_100004384(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x100004324);
  }

  _Unwind_Resume(exc_buf);
}

void sub_100004428(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count] >= 2)
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100034754();
    }

    [*(a1 + 32) mergeRecordings:v6];
  }
}

void sub_1000048AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000048E4(uint64_t a1)
{
  v2 = [AVURLAsset assetWithURL:*(a1 + 32)];
  v3 = [v2 rc_recordingMetadata];
  v4 = [v3 objectForKeyedSubscript:@"uniqueID"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) savedRecordingUUID];
  }

  v7 = v6;

  [v2 rc_durationInSeconds];
  if (v8 == 0.0)
  {
    [*(*(*(a1 + 48) + 8) + 40) composedDuration];
  }

  v9 = v8;
  v10 = [v3 objectForKeyedSubscript:@"date"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [*(*(*(a1 + 48) + 8) + 40) creationDate];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = sub_100004CB8(*(a1 + 32));
    }

    v12 = v15;
  }

  v16 = [v3 objectForKeyedSubscript:@"title"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = [*(*(*(a1 + 48) + 8) + 40) title];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v22 = *(a1 + 40);
      v21 = [objc_opt_class() recoveredRecordingTitleFromDate:v12];
    }

    v18 = v21;
  }

  v23 = OSLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [*(a1 + 32) lastPathComponent];
    *buf = 136315394;
    v40 = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfCompositionsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]_block_invoke";
    v41 = 2112;
    v42 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s -- Found orphaned AVURL (%@) with .composition, recover it by inserting it into the database.", buf, 0x16u);
  }

  v25 = *(a1 + 40);
  v26 = [*(a1 + 32) path];
  v38 = 0;
  v27 = [v25 insertRecordingWithAudioFile:v26 duration:v12 date:v18 customTitleBase:v7 uniqueID:&v38 error:v9];
  v28 = v38;

  if (v27)
  {
    v29 = OSLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [*(a1 + 32) lastPathComponent];
      [v27 title];
      v37 = v12;
      v31 = v2;
      v33 = v32 = v7;
      *buf = 136315650;
      v40 = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfCompositionsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]_block_invoke";
      v41 = 2112;
      v42 = v30;
      v43 = 2112;
      v44 = v33;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s -- Orphaned composed AVURL: inserted '%@' into the database with title '%@'", buf, 0x20u);

      v7 = v32;
      v2 = v31;
      v12 = v37;
    }

    v34 = [RCComposition compositionLoadedForSavedRecording:v27];
    v35 = *(*(a1 + 48) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;
  }

  else
  {
    v36 = OSLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000347E0();
    }
  }
}

id sub_100004CB8(void *a1)
{
  v6 = 0;
  [a1 getResourceValue:&v6 forKey:NSURLCreationDateKey error:0];
  v1 = v6;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSDate date];
  }

  v4 = v3;

  return v4;
}

uint64_t sub_10000570C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = [v3 path];
  v7 = [v5 _SHA256DataForPath:v6];

  v8 = *(a1 + 40);
  v9 = [v3 path];
  v10 = [v8 attributesOfItemAtPath:v9 error:0];

  if (v10)
  {
    v11 = [v10 fileSize];
    v12 = 0;
    if (v7 && v11)
    {
      v39 = v11;
      v35 = v10;
      v36 = v3;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v13 = [*(a1 + 48) URLs];
      v14 = [v13 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v14)
      {
        v15 = v14;
        v37 = v13;
        v38 = *v41;
LABEL_6:
        v16 = 0;
        while (1)
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v40 + 1) + 8 * v16);
          v18 = objc_autoreleasePoolPush();
          v19 = *(a1 + 40);
          v20 = [v17 path];
          v21 = [v19 attributesOfItemAtPath:v20 error:0];

          if (v21)
          {
            v22 = [v21 fileSize];
          }

          else
          {
            v22 = 0;
          }

          if (v39 != v22)
          {
            goto LABEL_19;
          }

          v23 = [*(a1 + 56) objectForKeyedSubscript:v17];
          if (v23)
          {
            break;
          }

          v25 = v7;
          v26 = *(a1 + 32);
          v27 = objc_opt_class();
          v28 = [v17 path];
          v24 = [v27 _SHA256DataForPath:v28];

          v7 = v25;
          if (v24)
          {
            v13 = v37;
LABEL_17:
            [*(a1 + 56) setObject:v24 forKey:v17];
            if ([v24 isEqualToData:v7])
            {
              v30 = OSLogForCategory();
              v3 = v36;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = [v36 lastPathComponent];
                [v17 lastPathComponent];
                v33 = v32 = v7;
                *buf = 136315650;
                v45 = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]_block_invoke";
                v46 = 2112;
                v47 = v31;
                v48 = 2112;
                v49 = v33;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s -- orphanPath = %@ matches existing file = %@", buf, 0x20u);

                v7 = v32;
                v13 = v37;
              }

              objc_autoreleasePoolPop(v18);
              v12 = 0;
              goto LABEL_28;
            }

            goto LABEL_18;
          }

          v13 = v37;
LABEL_18:

LABEL_19:
          objc_autoreleasePoolPop(v18);
          if (v15 == ++v16)
          {
            v29 = [v13 countByEnumeratingWithState:&v40 objects:v50 count:16];
            v15 = v29;
            if (v29)
            {
              goto LABEL_6;
            }

            goto LABEL_23;
          }
        }

        v24 = v23;
        goto LABEL_17;
      }

LABEL_23:

      v3 = v36;
      [*(a1 + 48) addURL:v36];
      [*(a1 + 56) setObject:v36 forKey:v7];
      v12 = 1;
LABEL_28:
      v10 = v35;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

int64_t sub_100005AA0(id a1, NSURL *a2, NSURL *a3)
{
  v4 = a3;
  v5 = [(NSURL *)a2 path];
  v6 = [(NSURL *)v4 path];

  v7 = [v5 length];
  if (v7 <= [v6 length])
  {
    v9 = [v5 length];
    if (v9 >= [v6 length])
    {
      v8 = [v5 compare:v6 options:64];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void sub_100005CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005CE4(uint64_t a1)
{
  [*(a1 + 32) composedDuration];
  v3 = v2;
  if (v2 <= 2.22044605e-16)
  {
    v15 = *(a1 + 32);

    [v15 deleteFromFilesystem];
  }

  else
  {
    v4 = [*(a1 + 40) recordingWithUniqueID:*(a1 + 48)];
    if (v4)
    {
      v5 = [*(a1 + 32) composedAVURL];
      v6 = [v5 lastPathComponent];

      v7 = [v4 fileName];
      v8 = [v7 isEqual:v6];

      if ((v8 & 1) == 0)
      {
        [v4 setFileName:v6];
      }

      [v4 length];
      if (v9 != v3)
      {
        v10 = v9;
        v11 = OSLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [NSNumber numberWithDouble:v10];
          v13 = [NSNumber numberWithDouble:v3];
          *buf = 136316162;
          v35 = "[RCSavedRecordingsModel(RCSOrphanHandling) updateRecordingForFinalizedCompositionAndMigrateIfNecessary:]_block_invoke";
          v36 = 2112;
          v37 = v6;
          v38 = 2112;
          v39 = v12;
          v40 = 2112;
          v41 = v13;
          v42 = 2048;
          v43 = v3 - v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s -- fileName = %@, savedRecording.length was %@, but should be %@ (delta = %.3f).  Fixing it up!", buf, 0x34u);
        }

        [v4 setLength:v3];
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 48));
      }

      if ([*(a1 + 32) hasMultipleTracks])
      {
        v14 = [v4 canUpdateWithMultiTrackAsset] ^ 1;
      }

      else
      {
        v14 = 0;
      }

      if ([*(a1 + 32) hasSpatialAudio])
      {
        v16 = [v4 canUpdateWithSpatialAsset] ^ 1;
      }

      else
      {
        v16 = 0;
      }

      if ((v14 | v16))
      {
        v17 = *(a1 + 40);
        v18 = [v4 creationDate];
        v33 = 0;
        v19 = [v17 duplicateRecording:v4 copyingResources:1 creationDate:v18 error:&v33];
        v20 = v33;

        v21 = [v4 title];
        [v19 setTitle:v21];

        v22 = OSLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v4 uuid];
          v24 = [v19 uuid];
          *buf = 136315650;
          v35 = "[RCSavedRecordingsModel(RCSOrphanHandling) updateRecordingForFinalizedCompositionAndMigrateIfNecessary:]_block_invoke";
          v36 = 2112;
          v37 = v23;
          v38 = 2112;
          v39 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s -- Finalized composition has incompatible asset for current recording, migrating uniqueID %@ to uniqueID %@", buf, 0x20u);
        }

        [*(a1 + 40) eraseRecording:v4];
        v25 = [v19 uuid];
        v26 = *(*(a1 + 56) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;
      }

      else
      {
        [v4 setPlayable:1];
      }

      v28 = *(a1 + 40);
      v32 = 0;
      v29 = [v28 saveIfNecessary:&v32];
      v30 = v32;
      if ((v29 & 1) == 0)
      {
        v31 = OSLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000348E4();
        }
      }
    }
  }
}

void sub_100006214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000622C(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (a3)
  {
    v6 = [*(a1 + 32) updateRecordingForFinalizedCompositionAndMigrateIfNecessary:*(*(*(a1 + 40) + 8) + 40)];
  }
}

uint64_t sub_100006CE0(uint64_t a1)
{
  [*(a1 + 32) progress];
  notify_set_state(*(a1 + 48), v2);
  v3 = [*(a1 + 40) UTF8String];

  return notify_post(v3);
}

void sub_100006D30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 invalidate];
    notify_cancel(*(a1 + 56));
  }

  v8 = v6;
  v9 = v8;
  if (v5)
  {
    v10 = [*(*(*(a1 + 48) + 8) + 40) _compositionByReplacingDecomposedFragments:&__NSArray0__struct];
    v11 = [v10 mutableCopy];

    v12 = [v11 composedAVURL];
    v13 = [v5 pathExtension];
    v14 = [v12 rc_URLByReplacingPathExtensionWithExtension:v13];
    [v11 setComposedAVURL:v14];

    v15 = +[NSFileManager defaultManager];
    v16 = [v11 composedAVURL];
    v22 = 0;
    v17 = [v15 moveItemAtURL:v5 toURL:v16 error:&v22];
    v18 = v22;

    if (v17)
    {
      [v11 saveMetadataToDefaultLocation];
      v19 = v11;
      v20 = v9;
    }

    else
    {
      v20 = v18;

      v21 = OSLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100034970();
      }

      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = v8;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100006FA8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [v6 saveMetadataToDefaultLocation];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, a3);
  }
}

void sub_100007188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000071AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = v5;
  if (*(a1 + 48) - 1 == a3)
  {
    [v5 contentDuration];
    v7 = v6;
    if (v8 < 0.00000011920929)
    {
      v9 = [v6 AVOutputURL];
      v10 = [AVURLAsset rc_preciseTimingAssetWithURL:v9];

      if (v10)
      {
        v7 = [v6 mutableCopy];
        [v10 rc_durationInSeconds];
        [v7 setContentDuration:?];
        [v6 timeRangeInComposition];
        [v6 timeRangeInComposition];
        [v6 contentDuration];
        RCTimeRangeMake();
        [v7 setTimeRangeInComposition:?];
        [v7 contentDuration];
        RCTimeRangeMake();
        [v7 setTimeRangeInContentToUse:?];
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        v11 = OSLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000349F0(v6, v11);
        }

        v7 = v6;
      }
    }
  }

  [v7 contentDuration];
  if (v12 <= 0.0)
  {
    [v6 deleteFromFilesystem];
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

void sub_100007850(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 32) + 8);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000793C;
  v13[3] = &unk_100055458;
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a3;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

void sub_100007D90(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = OSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100034CA8();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_100008404(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 setMetadata:*(a1 + 32)];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100008530;
    v11[3] = &unk_1000554F8;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13 = v7;
    v11[4] = v8;
    v12 = v9;
    [v5 writeCompositionWithCompletionBlock:v11];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100034EF8();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100008530(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v18 = 0;
    v9 = [v7 _overwriteFileAtURL:v8 withFileAtURL:v5 error:&v18];
    v10 = v18;
    if (v9)
    {
      v11 = +[NSFileManager defaultManager];
      v17 = v10;
      v12 = [v11 removeItemAtURL:v5 error:&v17];
      v13 = v17;

      if ((v12 & 1) == 0)
      {
        v14 = OSLogForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100034FE0();
        }
      }

      (*(a1[6] + 16))();
      v10 = v13;
    }

    else
    {
      v16 = OSLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100034F6C();
      }

      (*(a1[6] + 16))();
    }
  }

  else
  {
    v15 = OSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100035054();
    }

    (*(a1[6] + 16))();
  }
}

void sub_1000087BC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_100008B60(id result, uint64_t a2, void *a3)
{
  if (a3)
  {
    result = [NSError errorWithDomain:@"VoiceMemosContainerErrorDomain" code:result userInfo:a2];
    *a3 = result;
  }

  return result;
}

id sub_100008DA8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) metadata];
  v5 = [v4 mutableCopy];

  [v5 setObject:*(a1 + 40) forKeyedSubscript:@"com.apple.VoiceMemos.DatabaseProperties"];
  [*(a1 + 32) setMetadata:v5];
  v6 = [*(a1 + 48) save:a2];

  return v6;
}

void sub_100008F08(id a1)
{
  v1 = [RCServiceContainer alloc];
  v4 = RCCloudRecordingsStoreURL();
  v2 = [(RCServiceContainer *)v1 initWithURL:v4];
  v3 = qword_10005CD10;
  qword_10005CD10 = v2;
}

void sub_1000098F4(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = [a2 URL];
    [v4 setObject:v5 forKeyedSubscript:v6];
  }
}

uint64_t sub_100009970(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) URL];
  v8 = [v5 isEqual:v7];

  v9 = v6;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 domain];
    if ([v11 isEqualToString:NSCocoaErrorDomain])
    {
      v12 = [v10 code] == 134130;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v5 path];
  v15 = [v13 fileExistsAtPath:v14];

  return v8 & v12 & v15;
}

void sub_100009A88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = 0;
  v6 = [v5 _manuallyMigrateCloudRecordingsDatabase:v4 error:&v10];
  v7 = v10;
  v8 = OSLogForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[RCServiceContainer loadStore:error:]_block_invoke_3";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s -- Successfully recovered from NSMigrationMissingSourceModelError with manual migration", buf, 0xCu);
    }

    [*(a1 + 48) setObject:0 forKeyedSubscript:v3];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000352D0();
    }
  }
}

void sub_100009BCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 path];
  v8 = [*(a1 + 32) fileExistsAtPath:v7];
  v9 = OSLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
  if (!v8)
  {
    if (v10)
    {
      sub_100035344(v7, v6, v9);
    }

    goto LABEL_25;
  }

  if (v10)
  {
    sub_1000353F8();
  }

  if (sub_100009F70(v6))
  {
    if (!RCIsInternalInstall())
    {
      v21 = *(a1 + 40);
      v28 = 0;
      v22 = [v21 destroyPersistentStoreAtURL:v5 withType:NSSQLiteStoreType options:0 error:&v28];
      v9 = v28;
      if (v22)
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      else
      {
        v24 = OSLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_10003546C();
        }
      }

      goto LABEL_25;
    }

    v9 = +[NSUUID UUID];
    v11 = [v7 stringByDeletingPathExtension];
    v12 = [v9 UUIDString];
    v13 = [NSString stringWithFormat:@"%@-%@.db", v11, v12];

    v27 = v13;
    v14 = [NSURL fileURLWithPath:v13];
    v15 = *(a1 + 40);
    v30 = 0;
    LODWORD(v13) = [v15 replacePersistentStoreAtURL:v14 destinationOptions:0 withPersistentStoreFromURL:v5 sourceOptions:0 storeType:NSSQLiteStoreType error:&v30];
    v26 = v30;
    v16 = OSLogForCategory();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = [v14 path];
        *buf = 136315394;
        v32 = "[RCServiceContainer loadStore:error:]_block_invoke";
        v33 = 2112;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s -- Please file a radar. Moved corrupt database to path '%@'", buf, 0x16u);
      }

      v19 = *(a1 + 40);
      v29 = 0;
      v20 = [v19 destroyPersistentStoreAtURL:v5 withType:NSSQLiteStoreType options:0 error:&v29];
      v17 = v29;
      if (v20)
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      else
      {
        v25 = OSLogForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          sub_100035554();
        }
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v23 = v26;
      sub_1000354E0();
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    v23 = v26;
    goto LABEL_24;
  }

LABEL_26:
}

uint64_t sub_100009F70(void *a1)
{
  v1 = a1;
  v2 = [v1 code];
  v3 = [v1 domain];
  v4 = [v1 userInfo];
  if ([v3 isEqualToString:NSCocoaErrorDomain])
  {
    if (v2 == 259)
    {
      v10 = 1;
      goto LABEL_32;
    }

    if (v2 != 134110)
    {
LABEL_31:
      v10 = 0;
      goto LABEL_32;
    }

    v5 = [v4 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v5)
    {
      v6 = [v5 userInfo];

      v7 = [v6 objectForKeyedSubscript:@"NSSQLiteErrorDomain"];
      v8 = [v7 integerValue];
      v10 = v8 == 11 || v8 == 26;

      v4 = v6;
      v1 = v5;
      goto LABEL_32;
    }

LABEL_30:
    v1 = 0;
    goto LABEL_31;
  }

  if (![v3 isEqualToString:NSSQLiteErrorDomain])
  {
    v12 = [v4 objectForKeyedSubscript:@"NSSQLiteErrorDomain"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 integerValue];
      v10 = v14 == 11 || v14 == 26;
    }

    else
    {
      v16 = [v4 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (!v16)
      {
        goto LABEL_30;
      }

      v10 = sub_100009F70(v16);
      v1 = v16;
    }

    goto LABEL_32;
  }

  v10 = v2 == 11 || v2 == 26;
LABEL_32:

  return v10;
}

void sub_10000A130(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = [a2 URL];
    [v4 setObject:v5 forKeyedSubscript:v6];
  }
}

id sub_10000A1AC(uint64_t a1, void *a2)
{
  v3 = [a2 URL];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10000A994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000AD84(uint64_t a1)
{
  [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"MigratedMetadataToCloudStore"];
  [*(a1 + 32) migrate:*(*(a1 + 40) + 8)];
  [*(a1 + 32) save];
  [*(*(a1 + 40) + 8) save];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _saveMigrationStep:v3 migrationFlag:@"MigratedMetadataToCloudStore"];
}

void sub_10000AE08(uint64_t a1)
{
  v2 = [RCSavedRecording fetchLegacyRecordingsForMigrationWithContext:*(a1 + 32)];
  v3 = OSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v52 = "[RCServiceContainer _migrateLegacyStore:]_block_invoke_2";
    v53 = 2048;
    v54 = [v2 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s -- original database contains %ld recordings", buf, 0x16u);
  }

  v39 = +[NSFileManager defaultManager];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    v40 = *v47;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 uniqueID];

        if (!v10)
        {
          v11 = +[NSUUID UUID];
          v12 = [v11 UUIDString];
          [v8 setUniqueID:v12];

          v13 = [v8 url];
          v14 = [v13 path];

          v15 = OSLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v14 lastPathComponent];
            v17 = [v39 fileExistsAtPath:v14];
            *buf = 136315650;
            v18 = @"NO";
            if (v17)
            {
              v18 = @"YES";
            }

            v52 = "[RCServiceContainer _migrateLegacyStore:]_block_invoke";
            v53 = 2112;
            v54 = v16;
            v55 = 2112;
            v56 = v18;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s -- migrating recording '%@', exists = %@", buf, 0x20u);
          }

          v19 = [RCCloudRecording alloc];
          v20 = *(a1 + 32);
          v21 = [v8 date];
          v22 = [v19 initWithContext:v20 andCreationDate:v21];

          v23 = [v8 path];
          [v22 setFileName:v23];

          v24 = [v8 uniqueID];
          [v22 setUuid:v24];

          [v8 duration];
          [v22 setLength:?];
          v25 = [v8 customLabel];
          [v22 setTitle:v25];

          [v22 setAudioFutureNeedsDownload:{objc_msgSend(v8, "pendingRestore")}];
          [v22 setPlayable:1];
          [*(a1 + 40) _saveMigrationStep:*(a1 + 32) migrationFlag:@"CloudRecordingsMigrated"];
          [*(a1 + 32) refreshObject:v22 mergeChanges:0];
          [*(a1 + 32) refreshObject:v8 mergeChanges:0];

          v6 = v40;
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 8) setObject:&__kCFBooleanTrue forKeyedSubscript:@"CloudRecordingsMigrated"];
  [*(*(a1 + 40) + 8) setObject:&__kCFBooleanTrue forKeyedSubscript:@"CloudRecordingsMarkedPlayableAndEvicted"];
  [*(*(a1 + 40) + 8) save];
  [RCSavedRecording deleteOrphanedEntityRevisionsWithContext:*(a1 + 32)];
  [*(a1 + 40) _saveMigrationStep:*(a1 + 32) migrationFlag:@"CloudRecordingsMigrated"];
  v26 = [*(a1 + 40) _cloudRecordingsInContext:*(a1 + 32)];
  v27 = OSLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v26 count];
    *buf = 136315394;
    v52 = "[RCServiceContainer _migrateLegacyStore:]_block_invoke";
    v53 = 2048;
    v54 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s -- new database contains %ld recordings", buf, 0x16u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v26;
  v30 = [v29 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v43;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v42 + 1) + 8 * j);
        v35 = OSLogForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v52 = "[RCServiceContainer _migrateLegacyStore:]_block_invoke";
          v53 = 2112;
          v54 = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s -- migrated cloudRecording = %@", buf, 0x16u);
        }

        v36 = *(a1 + 40);
        v37 = [v34 uuid];
        v38 = [v36 _legacyRecordingWithUniqueID:v37 context:*(a1 + 32)];

        [*(a1 + 40) _validateMigratedRecording:v34 legacyRecording:v38];
        [*(a1 + 32) refreshObject:v34 mergeChanges:0];
        [*(a1 + 32) refreshObject:v38 mergeChanges:0];
      }

      v31 = [v29 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v31);
  }
}

id sub_10000B784(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _cloudRecordingsInContext:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) setPlayable:1];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 8) setObject:&__kCFBooleanTrue forKeyedSubscript:@"CloudRecordingsMarkedPlayableAndEvicted"];
  [*(*(a1 + 32) + 8) save];
  return [*(a1 + 32) _saveMigrationStep:*(a1 + 40) migrationFlag:@"CloudRecordingsMarkedPlayableAndEvicted"];
}

void sub_10000B8C0(uint64_t a1)
{
  +[NSFileManager defaultManager];
  v17 = v16 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) _cloudRecordingsInContext:*(a1 + 40)];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 fileName];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 lastPathComponent];
          v11 = RCRecordingsDirectoryURL();
          v12 = [v11 URLByAppendingPathComponent:v10];

          v13 = [v12 path];
          v14 = [v17 fileExistsAtPath:v13 isDirectory:0];

          if (v14)
          {
            v15 = v10;
          }

          else
          {
            v15 = 0;
          }

          [v7 setFileName:v15];
          [v7 setPlayable:v14];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  [*(*(v16 + 32) + 8) setObject:@"RCRecordingsRelativePath" forKeyedSubscript:@"RCRecordingsDirectory"];
  [*(*(v16 + 32) + 8) save];
  [*(v16 + 32) _saveMigrationStep:*(v16 + 40) migrationFlag:@"RCRecordingsDirectory"];
}

id sub_10000BAB4(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _cloudRecordingsInContext:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) url];
        if (v7)
        {
          [RCComposition migrateBackupExclusionFlag:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 8) setObject:&__kCFBooleanTrue forKeyedSubscript:@"BackupExclusionFlagMigrated"];
  return [*(*(a1 + 32) + 8) save];
}

id sub_10000BC04(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _cloudRecordingsInContext:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) synchronizeRecordingMetadata];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 8) setObject:&__kCFBooleanTrue forKeyedSubscript:@"CloudRecordingsHaveCompleteMetadata"];
  [*(*(a1 + 32) + 8) save];
  return [*(a1 + 32) _saveMigrationStep:*(a1 + 40) migrationFlag:@"CloudRecordingsHaveCompleteMetadata"];
}

id sub_10000BD3C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _cloudRecordingsInContext:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) migrateLocalProperties];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 8) setObject:&__kCFBooleanTrue forKeyedSubscript:@"kRCCloudRecordingsLocalPropertiesUpdated"];
  [*(*(a1 + 32) + 8) save];
  return [*(a1 + 32) _saveMigrationStep:*(a1 + 40) migrationFlag:@"kRCCloudRecordingsLocalPropertiesUpdated"];
}

id sub_10000BF44(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _cloudRecordingsInContext:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) migrateSyncedUUIDs];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 8) setObject:&__kCFBooleanTrue forKeyedSubscript:@"CloudRecordingsSyncedUUIDMigrated"];
  [*(*(a1 + 32) + 8) save];
  return [*(a1 + 32) _saveMigrationStep:*(a1 + 40) migrationFlag:@"CloudRecordingsSyncedUUIDMigrated"];
}

id sub_10000C14C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _cloudRecordingsInContext:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) migratePlaybackSettings];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 8) setObject:&__kCFBooleanTrue forKeyedSubscript:@"CloudRecordingsSyncedPlaybackSettingsMigrated"];
  [*(*(a1 + 32) + 8) save];
  return [*(a1 + 32) _saveMigrationStep:*(a1 + 40) migrationFlag:@"CloudRecordingsSyncedPlaybackSettingsMigrated"];
}

id sub_10000C3F8(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) allRecordings];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) migrateCustomLabelIfNeeded];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) saveIfNecessary];
}

void sub_10000C6B0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, int a12, __int16 a13, __int16 a14, id a15, __int128 a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = OSLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = [v16 userInfo];
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "[RCServiceContainer _saveMigrationStep:migrationFlag:]";
      WORD6(buf) = 2112;
      a14 = 2112;
      a15 = v16;
      LOWORD(a16) = 2112;
      *(&a16 + 2) = v18;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%s -- ERROR: Save threw an exception - migration flag = %@, exception = %@ - userInfo = %@", &buf, 0x2Au);
    }

    exit(0);
  }

  _Unwind_Resume(a1);
}

void sub_10000CBC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_10000CDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10000CDCC(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

void sub_10000D004(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D170;
    v11[3] = &unk_100055768;
    v4 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v4 performSynchronizedStepWithDescription:@"update index (purge all)" block:v11];
  }

  v5 = [v3 allRecordings];
  v6 = [v5 na_map:&stru_1000557A8];

  if ([v6 count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000D27C;
    v8[3] = &unk_1000557D0;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v6;
    [v7 performSynchronizedStepWithDescription:@"update index (update all)" block:v8];
  }
}

void sub_10000D170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D208;
  v6[3] = &unk_100055740;
  v7 = v3;
  v5 = v3;
  [v4 deleteAllSearchableItemsWithCompletionHandler:v6];
}

CSSearchableItem *__cdecl sub_10000D218(id a1, RCCloudRecording *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = RCSearchableItemForRecording();
  objc_autoreleasePoolPop(v3);

  return v4;
}

void sub_10000D27C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D320;
  v7[3] = &unk_100055740;
  v8 = v3;
  v6 = v3;
  [v5 indexSearchableItems:v4 completionHandler:v7];
}

void sub_10000D330(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) transactionError];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10000D5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSSet setWithArray:*(a1 + 32)];
  v5 = [v4 setByAddingObjectsFromArray:*(a1 + 40)];
  v6 = [v5 allObjects];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D7C0;
  v18[3] = &unk_100055820;
  v7 = v3;
  v19 = v7;
  v8 = [v6 na_map:v18];
  v9 = [*(a1 + 48) na_map:&stru_100055860];
  if ([v8 count])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000D7E8;
    v15[3] = &unk_1000557D0;
    v10 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = v8;
    [v10 performSynchronizedStepWithDescription:@"update index (update items)" block:v15];
  }

  if ([v9 count])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000D89C;
    v12[3] = &unk_1000557D0;
    v11 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = v9;
    [v11 performSynchronizedStepWithDescription:@"update index (delete items)" block:v12];
  }
}

void sub_10000D7E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D88C;
  v7[3] = &unk_100055740;
  v8 = v3;
  v6 = v3;
  [v5 indexSearchableItems:v4 completionHandler:v7];
}

void sub_10000D89C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000D940;
  v7[3] = &unk_100055740;
  v8 = v3;
  v6 = v3;
  [v5 deleteSearchableItemsWithIdentifiers:v4 completionHandler:v7];
}

void sub_10000D950(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) transactionError];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_10000DC3C(uint64_t a1)
{
  v2 = +[RCServiceContainer sharedContainer];
  v3 = [v2 newBackgroundModel];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000DE80;
  v18[3] = &unk_1000551C0;
  v4 = v3;
  v19 = v4;
  v20 = *(a1 + 40);
  [v4 performBlockAndWait:v18];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DF00;
  block[3] = &unk_1000558B0;
  block[4] = v5;
  block[5] = &v14;
  dispatch_sync(v6, block);
  if (*(v15 + 24) == 1)
  {
    v7 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000DF14;
    v12[3] = &unk_100055768;
    v12[4] = v7;
    [v7 performSynchronizedStepWithDescription:@"update index (end batching)" isSkippedIfPreviousErrors:0 isIndexUpdatingStep:0 block:v12];
  }

  v8 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DFE8;
  v10[3] = &unk_1000554A8;
  v9 = *(a1 + 48);
  v10[4] = *(a1 + 32);
  v11 = v9;
  dispatch_async(v8, v10);

  _Block_object_dispose(&v14, 8);
}

uint64_t sub_10000DE80(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = +[NSQueryGenerationToken currentQueryGenerationToken];
  [v2 setQueryGenerationFromToken:v3 error:0];

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_10000DF14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v5 = +[NSData data];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DFD8;
  v7[3] = &unk_100055740;
  v8 = v3;
  v6 = v3;
  [v4 endIndexBatchWithClientState:v5 completionHandler:v7];
}

void sub_10000DFE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;
}

void *sub_10000E1E8(void *result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    v2 = result[4];
    if ((*(v2 + 41) & 1) == 0 && *(v2 + 40) == 1)
    {
      result = [*(v2 + 56) beginIndexBatch];
      *(v1[4] + 41) = 1;
    }
  }

  return result;
}

void sub_10000E244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E2F0;
  v7[3] = &unk_1000556C8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_sync(v5, v7);
  dispatch_semaphore_signal(*(a1 + 40));
}

void *sub_10000E2F0(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 32) addObject:?];
  }

  return result;
}

void sub_10000E910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E930(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_10000EA48(void *a1)
{
  result = [*(a1[4] + 24) setObject:a1[6] forKeyedSubscript:a1[5]];
  *(a1[4] + 32) = 1;
  return result;
}

void sub_10000EAF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1)
  {
    v4 = [*(v2 + 8) metadata];
    v6 = [v4 mutableCopy];

    v5 = [*(*(a1 + 32) + 24) copy];
    [v6 setObject:v5 forKeyedSubscript:@"com.apple.VoiceMemos.DatabaseProperties"];

    [*(*(a1 + 32) + 8) setMetadata:v6];
    *(*(a1 + 32) + 32) = 0;
  }
}

void sub_10000ECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000ED10(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000ED5C(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000EE00;
  v3[3] = &unk_100055980;
  v4 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
  *(*(a1 + 32) + 32) = 1;
}

id sub_10000EFC0(id *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [a1[5] recordingWithID:{v7, v10}];
        [v8 setAudioFutureNeedsExport:1];
        [a1[6] _validateCorrectStore:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [a1[5] saveIfNecessary];
  return [a1[6] _checkProgressOfExportingRecordings:a1[5]];
}

void sub_10000F1B0(uint64_t a1)
{
  v3 = [*(a1 + 32) recordingWithID:*(a1 + 40)];
  v2 = [v3 syncedAudioFuture];

  if (v2)
  {
    [v3 setAudioFutureNeedsExport:1];
    [*(a1 + 48) _validateCorrectStore:*(a1 + 40)];
    [*(a1 + 32) saveIfNecessary];
  }
}

void sub_10000F5CC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIDsForRecordingsNeedingAssetExport];
  if ([v2 count])
  {
    [*(a1 + 40) _fetchProgressAndUpdateIfNeeded:v2 mirroringModel:*(a1 + 32)];
  }
}

void sub_10000F6C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [*(a1 + 32) _processExportProgressResult:v5 mirroringModel:*(a1 + 40)];
  }

  else
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100035864();
    }
  }
}

void sub_10000F834(uint64_t a1)
{
  v2 = [*(a1 + 32) objectIDToLastExportedToken];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F8D8;
  v4[3] = &unk_1000559D0;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_100010130(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = OSLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[RCAudioFutureSyncManager importAudioFuture:mirroringModel:]_block_invoke";
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s -- ERROR: fetchError = %@", buf, 0x16u);
    }
  }

  if ([v10 count] || objc_msgSend(v11, "count"))
  {
    v14 = [*(a1 + 32) _newBackgroundMirroringModel];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000102EC;
    v18[3] = &unk_1000559F8;
    v19 = v10;
    v20 = v14;
    v15 = v11;
    v16 = *(a1 + 32);
    v21 = v15;
    v22 = v16;
    v17 = v14;
    [v17 performBlockAndWait:v18];
  }
}

id sub_1000102EC(id *a1)
{
  v1 = a1;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v47;
    *&v3 = 136315650;
    v35 = v3;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [v1[5] recordingWithID:{*(*(&v46 + 1) + 8 * i), v35}];
        v45 = 0;
        v8 = [v7 synchronizeWithExistingAudioFuture:&v45];
        v9 = v45;
        if ((v8 & 1) == 0)
        {
          v10 = OSLogForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v7 uuid];
            *buf = v35;
            v51 = "[RCAudioFutureSyncManager importAudioFuture:mirroringModel:]_block_invoke";
            v52 = 2112;
            v53 = v11;
            v54 = 2112;
            v55 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -- synchronizeWithExistingAudioFuture failed - recordingID = %@, error = %@", buf, 0x20u);
          }
        }

        v12 = [v7 url];
        v13 = v12;
        if (v12 && [v12 checkResourceIsReachableAndReturnError:0])
        {
          v14 = OSLogForCategory();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_17;
          }

          v15 = [v7 uuid];
          *buf = 136315394;
          v51 = "[RCAudioFutureSyncManager importAudioFuture:mirroringModel:]_block_invoke";
          v52 = 2112;
          v53 = v15;
          v16 = v14;
          v17 = OS_LOG_TYPE_DEFAULT;
          v18 = "%s -- fetched recording %@";
        }

        else
        {
          v14 = OSLogForCategory();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            goto LABEL_17;
          }

          v15 = [v7 uuid];
          *buf = 136315394;
          v51 = "[RCAudioFutureSyncManager importAudioFuture:mirroringModel:]_block_invoke";
          v52 = 2112;
          v53 = v15;
          v16 = v14;
          v17 = OS_LOG_TYPE_INFO;
          v18 = "%s -- failed to fetch recording %@";
        }

        _os_log_impl(&_mh_execute_header, v16, v17, v18, buf, 0x16u);

LABEL_17:
      }

      v4 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v4);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obja = [v1[6] allKeys];
  v19 = [obja countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v42;
    v23 = kVMLogCategoryService;
    *&v20 = 136315906;
    v36 = v20;
    v37 = v1;
    do
    {
      v24 = 0;
      v38 = v21;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obja);
        }

        v25 = *(*(&v41 + 1) + 8 * v24);
        v26 = [v1[5] recordingWithID:{v25, v36}];
        v27 = [v1[6] objectForKeyedSubscript:v25];
        v28 = [v1[7] _shouldRetryFutureDownloadForError:v27];
        v29 = OSLogForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v26 uuid];
          [NSNumber numberWithBool:v28];
          v31 = v23;
          v33 = v32 = v22;
          *buf = v36;
          v51 = "[RCAudioFutureSyncManager importAudioFuture:mirroringModel:]_block_invoke";
          v52 = 2112;
          v53 = v30;
          v54 = 2112;
          v55 = v27;
          v56 = 2112;
          v57 = v33;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s -- download of recording %@ failed - error = %@ - retrying = %@", buf, 0x2Au);

          v22 = v32;
          v23 = v31;
          v1 = v37;

          v21 = v38;
        }

        if (v28)
        {
          [v1[7] importAudioFuture:v25 mirroringModel:v1[5]];
        }

        v24 = v24 + 1;
      }

      while (v21 != v24);
      v21 = [obja countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v21);
  }

  return [v1[5] saveIfNecessary];
}

void sub_1000108F4(void *a1)
{
  v2 = *(a1[4] + 8);
  if (v2)
  {
    v9 = [v2 lastObject];
    if (v9 && [v9 count] <= 0x63)
    {
      [v9 addObject:a1[5]];
      v3 = v9;
    }

    else
    {
      v4 = [NSMutableArray arrayWithObject:a1[5]];

      [*(a1[4] + 8) addObject:v4];
      v3 = v4;
    }
  }

  else
  {
    v5 = [NSMutableArray arrayWithObject:a1[5]];
    v6 = [NSMutableArray arrayWithObject:v5];
    v7 = a1[4];
    v8 = *(v7 + 8);
    *(v7 + 8) = v6;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100010B04(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = *(*(a1 + 32) + 8);

    [v5 removeObjectAtIndex:0];
  }
}

void sub_100010C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010C60(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
  }
}

void sub_100010E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ___popAudioFutureBatch];
  if (v4)
  {
    v5 = [*(a1 + 32) _newBackgroundMirroringModel];
    v6 = [*(a1 + 32) _audioFutureEntityToAttributesDict];
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100011000;
      v11[3] = &unk_100055AC0;
      v10 = *(a1 + 40);
      v11[4] = *(a1 + 32);
      v12 = v10;
      v13 = v3;
      [v5 fetchObjectsFromCloud:v4 entityToAttributesToFetch:v7 forStore:0 completionHandler:v11];
    }
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100035964(v9);
    }

    v3[2](v3);
  }
}

void sub_100011000(uint64_t a1, void *a2, void *a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000110EC;
  v9[3] = &unk_100055A98;
  v10 = a2;
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v6;
  v14 = *(a1 + 48);
  v7 = v11;
  v8 = v10;
  [v5 _performOnSchedulerQueue:v9];
}

void sub_1000110EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 madeChanges]);
  }

  v11 = v2;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [*(a1 + 32) error];
  }

  v5 = v4;
  v6 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = [v8 updatedObjectIDs];
    v10 = [v8 failedObjectIDsToError];
    (*(v7 + 16))(v7, v11, v9, v10, v5);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 48) ___fetchNextAudioFutureBatch:*(a1 + 56)];
  (*(*(a1 + 64) + 16))();
}

void sub_10001147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011494(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011538;
  block[3] = &unk_100055B10;
  block[4] = *(a1 + 40);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100011538(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

uint64_t start()
{
  v0 = OSLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "main";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%s -- voicememod launched", &v15, 0xCu);
  }

  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v14 = OSLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "main";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s -- _set_user_dir_suffix failed, exiting", &v15, 0xCu);
    }

    exit(0);
  }

  +[SavedRecordingService moveRecordingsDirectoryIfNeeded];
  v1 = @"+removeDatabaseDirectories";
  v2 = RCRecordingsDirectoryURL();
  v3 = [v2 URLByAppendingPathComponent:v1 isDirectory:0];

  v4 = [NSString stringWithContentsOfURL:v3 encoding:4 error:0];
  v5 = [(__CFString *)v1 rc_reversedString];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    +[SavedRecordingService removeDatabaseDirectories];
  }

  v7 = OSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100035A6C(v7);
  }

  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100035AF0(v8);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = +[SavedRecordingService sharedInstance];
  [v10 start];

  objc_autoreleasePoolPop(v9);
  v11 = +[NSRunLoop currentRunLoop];
  [v11 run];

  v12 = OSLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100035BF0(v12);
  }

  return 0;
}

void sub_1000119C4(id a1)
{
  qword_10005CD20 = [[SavedRecordingService alloc] _init];

  _objc_release_x1();
}

void sub_10001208C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 168) || ([*(v2 + 152) waitingForMobileRestoreToFinish] & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[SavedRecordingService enableCloudRecordingsWithCompletionBlock:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Warning, enabling iCloud while automatic scheduling is unsupported. Proceed with caution.", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    v9 = 0;
    v7 = [v6 _setupCloudMirroring:&v9];
    v3 = v9;
    if ((v7 & 1) == 0)
    {
      v8 = OSLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[SavedRecordingService enableCloudRecordingsWithCompletionBlock:]_block_invoke";
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s -- Voice Memos iCloud setup failed:  %@", buf, 0x16u);
      }
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_100012554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100035D04();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 madeChanges];
    v10 = "NO";
    if (v9)
    {
      v10 = "YES";
    }

    v14 = 136315394;
    v15 = "[SavedRecordingService importRecordingsFromCloud:]_block_invoke";
    v16 = 2080;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s -- CloudKit import succeeded, madeChanges = %s", &v14, 0x16u);
  }

  v11 = [*(a1 + 32) _serviceErrorForInternalError:v6 code:402];
  v12 = *(a1 + 40);
  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 madeChanges]);
  (*(v12 + 16))(v12, v13, v11);
}

void sub_100012874(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100035D80();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 madeChanges];
    v10 = "NO";
    if (v9)
    {
      v10 = "YES";
    }

    v14 = 136315394;
    v15 = "[SavedRecordingService exportRecordingsToCloud:]_block_invoke";
    v16 = 2080;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s -- CloudKit export succeeded, madeChanges = %s", &v14, 0x16u);
  }

  v11 = [*(a1 + 32) _serviceErrorForInternalError:v6 code:401];
  v12 = *(a1 + 40);
  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 madeChanges]);
  (*(v12 + 16))(v12, v13, v11);
}

void sub_100012B70(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v18 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v18];
  v5 = v18;

  if (!v4)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100035DFC();
    }

    (*(*(a1 + 48) + 16))();
  }

  v7 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) uuid];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100012EC8(uint64_t a1)
{
  v2 = [*(a1 + 32) recordingWithUniqueID:*(a1 + 40)];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Failed to create metadata: could not find recording for id %@.", *(a1 + 40)];
    v5 = RCVoiceMemosErrorDomain;
    v18 = NSDebugDescriptionErrorKey;
    v19 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v3 = [NSError errorWithDomain:v5 code:1 userInfo:v6];
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v2 url];
  v17 = v3;
  v9 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v8 create:1 error:&v17];
  v10 = v17;

  if (v9)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100013134;
    v14[3] = &unk_1000554F8;
    v16 = *(a1 + 56);
    v13 = *(a1 + 40);
    v11 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    [v2 copyResourcesForSharingIntoDirectory:v9 completion:v14];
  }

  else
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100035E78();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_100013134(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v9 = 0;
    v5 = [v3 _createMetadataForRecordingWithId:v4 withAssetAtURL:a2 error:&v9];
    v6 = v9;
    (*(a1[6] + 16))();
  }

  else
  {
    v7 = a1[6];
    v8 = *(a1[6] + 16);

    v8();
  }
}

void sub_100013960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10001398C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordingWithUniqueID:*(a1 + 40)];
  if (!v2)
  {
    v3 = [NSString stringWithFormat:@"Failed to create metadata: could not find recording for id %@.", *(a1 + 40)];
    v4 = RCVoiceMemosErrorDomain;
    v12 = NSDebugDescriptionErrorKey;
    v13 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = [NSError errorWithDomain:v4 code:1 userInfo:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = [[RCVoiceMemoMetadata alloc] initFromCloudRecording:v2 withCodecs:*(a1 + 48)];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_100013C64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v5 _serviceErrorForInternalError:a3 code:403];
  v7 = *(a1 + 40);
  v8 = [v6 madeChanges];

  v9 = [NSNumber numberWithBool:v8];
  (*(v7 + 16))(v7, v9, v10);
}

void sub_100013F00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013FA8;
  v4[3] = &unk_100055C28;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _onServiceQueueOpenAccessSessionNamed:@"capture" compositionAVURL:v2 accessIntent:3 xpcConnection:v3 accessSessionHandler:v4];
}

void sub_100013FA8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 accessToken];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_100014208(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000142B0;
  v4[3] = &unk_100055C28;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _onServiceQueueOpenAccessSessionNamed:@"preview" compositionAVURL:v2 accessIntent:1 xpcConnection:v3 accessSessionHandler:v4];
}

void sub_1000142B0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 accessToken];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_100014510(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000145D4;
  v8[3] = &unk_100055CC8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v8[4] = v6;
  v9 = v7;
  [v2 _onServiceQueueOpenAccessSessionNamed:@"export" compositionAVURL:v3 accessIntent:2 xpcConnection:v4 accessSessionHandler:v8];
}

void sub_1000145D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000146E0;
    v9[3] = &unk_100055CA0;
    v9[4] = v7;
    v12 = *(a1 + 48);
    v10 = v5;
    v11 = v6;
    [v7 _attemptFinalizationOfCompositionAVURL:v8 ignoredAccessSession:v10 completionBlock:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000146E0(uint64_t a1, char a2)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000147C0;
  v9[3] = &unk_100055C78;
  v12 = a2;
  v5 = *(a1 + 56);
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *v3;
  v8 = v6;
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [v4 _performOnServiceQueue:v9];
}

void sub_1000147C0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 56);
    v5 = [*(a1 + 32) accessToken];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    [*(a1 + 40) _onQueueCloseAccessSession:*(a1 + 32) normalTermination:1 completionBlock:0];
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }
}

void sub_100014A58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014B00;
  v4[3] = &unk_100055C28;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _onServiceQueueOpenAccessSessionNamed:@"trimming" compositionAVURL:v2 accessIntent:3 xpcConnection:v3 accessSessionHandler:v4];
}

void sub_100014B00(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 accessToken];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_100015470(uint64_t a1)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) activeSessions];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) closeSession:*(*(&v19 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v4);
  }

  v7 = *(*(a1 + 40) + 144);
  v18 = 0;
  v8 = [v7 deleteSearchMetadata:&v18];
  v9 = v18;
  if ((v8 & 1) == 0)
  {
    v10 = v9;
    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[SavedRecordingService removeAllUserDataWithCompletion:]_block_invoke";
      v25 = 2112;
      v26 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s -- ERROR:  deleteSearchMetadata failed:  %@", buf, 0x16u);
    }
  }

  [SavedRecordingService setLocalChangeToken:0];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) _wipeCloudKitCaches];
  [*(a1 + 40) _stopMonitoringDemoMovieIfNeeded];
  v12 = RCRecordingsDirectoryURL();
  v13 = [v12 URLByAppendingPathComponent:@"+removeDatabaseDirectories" isDirectory:0];

  [@"+removeDatabaseDirectories" rc_reversedString];
  v17 = 0;
  LOBYTE(v12) = [objc_claimAutoreleasedReturnValue() writeToURL:v13 atomically:1 encoding:4 error:&v17];
  v14 = v17;
  if ((v12 & 1) == 0)
  {
    v15 = v14;
    v16 = OSLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[SavedRecordingService removeAllUserDataWithCompletion:]_block_invoke";
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s -- sentinelError = %@", buf, 0x16u);
    }
  }

  exit(0);
}

void sub_100015818(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) activeSessionWithAccessToken:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _onQueueCloseAccessSession:v2 normalTermination:1 completionBlock:*(a1 + 48)];
  }

  else if (*(a1 + 48))
  {
    v3 = RCSSavedRecordingServiceErrorDomain;
    v4 = *(a1 + 40);
    v7 = @"accessToken";
    v8 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:v3 code:302 userInfo:v5];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100015F24(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100001DCC;
  v13 = sub_100013984;
  v14 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016064;
  v8[3] = &unk_1000558B0;
  v8[4] = v2;
  v8[5] = &v9;
  dispatch_sync(v3, v8);
  v4 = [*(a1 + 32) _onQueue_composedAVURLsWithActiveSessionsOrScheduledWork];
  v5 = [*(a1 + 40) performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs:v4 andFinalizingCompositions:v10[5] restoreFileFutures:{objc_msgSend(*(a1 + 32), "cloudKitIsEnabled")}];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  _Block_object_dispose(&v9, 8);
}

void sub_10001604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016064(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000160B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RCComposition compositionLoadedForComposedAVURL:*(a1 + 32) createIfNeeded:0];
  if (v3)
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "[SavedRecordingService _onQueuePerformOrphanHandlingIfEnabled]_block_invoke";
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- ERROR:  finalizing editing composition = %@, error = %@", &v6, 0x20u);
    }
  }
}

void sub_100016258(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = OSLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100036C48();
    }
  }

  v5 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001634C;
  v8[3] = &unk_100055D18;
  v8[4] = v5;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 _performOnServiceQueue:v8];
}

uint64_t sub_10001634C(uint64_t a1)
{
  [*(a1 + 32) _onQueuePerformOrphanHandlingIfEnabled];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100016440(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100001DCC;
  v10 = sub_100013984;
  v11 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016540;
  v5[3] = &unk_1000558B0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);
  v4 = v7[5];
  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v6, 8);
}

void sub_100016528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016540(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100016628(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000166EC;
  v9[3] = &unk_1000556C8;
  v9[4] = v3;
  v10 = v2;
  v5 = v2;
  dispatch_sync(v4, v9);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7, v8);
}

void sub_1000166EC(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 104) activeSessions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) accessToken];
        if ([v7 accessIntent] == 3)
        {
          v8 = *(a1 + 40);
          v9 = [v7 compositionAVURL];
          [v8 addObject:v9];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000168CC(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100016990;
  v9[3] = &unk_1000556C8;
  v9[4] = v3;
  v10 = v2;
  v5 = v2;
  dispatch_sync(v4, v9);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7, v8);
}

void sub_100016990(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 104) activeSessions];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) accessToken];
        [v7 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100016B40(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 144);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100016BD0;
  v2[3] = &unk_100055740;
  v3 = *(a1 + 40);
  [v1 reloadExistingSearchMetadataWithCompletionBlock:v2];
}

uint64_t sub_100016BD0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100016C7C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 144);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100016D0C;
  v2[3] = &unk_100055740;
  v3 = *(a1 + 40);
  [v1 clearAndReloadSearchMetadataWithCompletionBlock:v2];
}

uint64_t sub_100016D0C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100016E30(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 144);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016ED8;
  v5[3] = &unk_100055740;
  v6 = *(a1 + 64);
  [v2 updateSearchMetadataWithRecordingURIsToInsert:v1 recordingURIsToUpdate:v3 recordingURIsToDelete:v4 completionBlock:v5];
}

uint64_t sub_100016ED8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000171F4(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) changes];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [*(a1 + 40) _processImportChange:v7 model:*(a1 + 48)];
        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000184A4(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100018608;
  v18[3] = &unk_100055E08;
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v8 = v2;
  v22 = v8;
  v9 = [v3 enumerateChangeHistorySinceToken:v4 forStore:0 usingBlock:v18];
  v10 = *(a1 + 32);
  v11 = *(v10 + 136);
  *(v10 + 136) = v9;

  if ([v8 count])
  {
    v12 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001873C;
    v15[3] = &unk_1000556C8;
    v13 = v8;
    v14 = *(a1 + 32);
    v16 = v13;
    v17 = v14;
    [v12 _performOnServiceQueue:v15];
  }
}

void sub_100018608(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 author];
  v4 = [v3 componentsSeparatedByString:@"."];

  v5 = [v4 firstObject];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 168);
  v8 = [v5 isEqualToString:@"NSCloudKitMirroringDelegate"];
  if (v6 == v7)
  {
    if (v8)
    {
      v10 = [v4 lastObject];
      if ([v10 isEqualToString:@"import"])
      {
        [*(a1 + 40) _processImportTransaction:v11 model:*(a1 + 48)];
      }

      else if ([v10 isEqualToString:@"reset"])
      {
        [*(a1 + 40) _processResetTransaction:v11 model:*(a1 + 48)];
      }

      goto LABEL_11;
    }

LABEL_7:
    [*(a1 + 40) _processLocalTransaction:v11 model:*(a1 + 48)];
LABEL_11:
    v9 = v11;
    goto LABEL_12;
  }

  v9 = v11;
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  [*(a1 + 40) _processSpotlightTransaction:v9 changes:*(a1 + 56)];
}

void sub_10001873C(uint64_t a1)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"inserts"];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"updates"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"deletes"];
  [*(*(a1 + 40) + 144) updateSearchMetadataWithRecordingURIsToInsert:v4 recordingURIsToUpdate:v2 recordingURIsToDelete:v3 completionBlock:0];
}

void sub_100018D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018D38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconcileMigrationStates];
}

void sub_100018FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 192) encryptedFieldsAccountStatus];
  v5 = [v3 encryptedFieldsMigrationExists];
  if (v4 == 1 && (v5 & 1) == 0)
  {
    [*(a1 + 32) _createAccountStatusUpdatedMigration:v3];
LABEL_5:
    [*(a1 + 32) performLocalEncryptedTitleMigrationIfNeeded:v3];
    v6 = 1;
    v7 = 1;
    goto LABEL_7;
  }

  if ((v4 == 1) | v5 & 1)
  {
    goto LABEL_5;
  }

  v6 = 0;
  v7 = 2;
LABEL_7:
  *(*(a1 + 32) + 204) = v7;
  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disabled";
    if (v6)
    {
      v9 = @"enabled";
    }

    v10 = 136315394;
    v11 = "[SavedRecordingService _updateMigrationStatusIfNeeded]_block_invoke";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s -- Encrypted fields status is %@", &v10, 0x16u);
  }

  [*(a1 + 32) _notifyEncryptedFieldsMigrationStatusKnown:v6];
  [*(a1 + 32) _validateOnFirstImport:v3];
}

void sub_1000192B8(uint64_t a1)
{
  v2 = [*(a1 + 32) createEncryptedFieldsMigration:3];
  [*(a1 + 32) saveIfNecessary];
  v3 = OSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SavedRecordingService _initiateImplicitEncryptedTitleMigration]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s -- Created encrypted fields migration %@", &v4, 0x16u);
  }
}

void sub_100019818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = OSLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[SavedRecordingService _handleiCloudAvailabilityChanged]_block_invoke_2";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s -- CloudKit export finished, madeChanges = %@, error = %@", &v8, 0x20u);
  }

  [*(a1 + 32) importRecordingsFromCloud:&stru_100055E98];
}

void sub_100019918(id a1, NSNumber *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = OSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[SavedRecordingService _handleiCloudAvailabilityChanged]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s -- CloudKit import finished, madeChanges = %@, error = %@", &v7, 0x20u);
  }
}

void sub_100019FA0(uint64_t a1)
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v1)
  {
    v3 = v1;
    v4 = *v30;
    v5 = NSURLContentModificationDateKey;
    *&v2 = 136315394;
    v22 = v2;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * v6);
        v28 = 0;
        v8 = [v7 getResourceValue:&v28 forKey:v5 error:{0, v22}];
        v9 = v28;
        if (v8)
        {
          v10 = [v7 lastPathComponent];
          v11 = [v10 stringByDeletingPathExtension];

          v12 = *(a1 + 40);
          v13 = [v7 path];
          v27 = 0;
          v14 = [v12 insertRecordingWithAudioFile:v13 duration:v9 date:v11 customTitleBase:0 uniqueID:&v27 error:-1.0];
          v15 = v27;

          if (v14)
          {
            [v14 uuid];
            v25 = v15;
            v16 = v3;
            v17 = v5;
            v19 = v18 = v4;
            v20 = [RCCaptureFormat AVAssetAuthoringMetadataWithCreationDate:v9 title:v11 uniqueID:v19];

            v21 = [v14 url];
            v26 = 0;
            v4 = v18;
            v5 = v17;
            v3 = v16;
            v15 = v25;
            [AVAsset rc_updateMetadataInFile:v21 withMetadata:v20 error:&v26];
          }

          else
          {
            v20 = OSLogForCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v34 = "[SavedRecordingService _initWithContainer:recordingsExist:]_block_invoke";
              v35 = 2112;
              v36 = v15;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s -- Failed to insert recording with error: %@", buf, 0x16u);
            }
          }
        }

        v6 = v6 + 1;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v3);
  }
}

id sub_10001A448(uint64_t a1)
{
  [*(a1 + 32) reloadExistingSearchMetadataWithCompletionBlock:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001A4D0;
  v4[3] = &unk_100055F28;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 enableOrphanHandlingWithCompletionBlock:v4];
}

void sub_10001A4D0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10001A7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A7FC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

BOOL sub_10001A810(uint64_t a1, uint64_t a2)
{
  v3 = [SavedRecordingService shouldAcceptXPCConnection:a2];
  if (v3)
  {
    *(*(a1 + 32) + 200) = 1;
    [*(a1 + 32) _handleiCloudAvailabilityChanged];
  }

  return v3;
}

void sub_10001AD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_10001ADA0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100037594();
  }

  if (v3 && WeakRetained)
  {
    v5 = objc_loadWeakRetained(a1 + 6);
    [v3 _handleXPCDisconnect:v5];
  }

  if ([a1[4] isEqualToString:RCVoiceMemosBundleID])
  {
    *(a1[5] + 12) = 0;
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100037610();
    }

    if (+[SavedRecordingService reloadStockRecordings])
    {
      [a1[5] removeAllUserDataWithCompletion:&stru_100055F90];
    }
  }
}

void sub_10001AEBC(id a1, NSError *a2)
{
  v2 = OSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100037690();
  }
}

void sub_10001AF0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100037710();
  }

  if (v3 && WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v3 _handleXPCDisconnect:v5];
  }
}

void sub_10001B0B4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B158;
  block[3] = &unk_100055B10;
  block[4] = *(a1 + 40);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_10001B158(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10001B200(uint64_t a1)
{
  v2 = +[RCServiceContainer sharedContainer];
  v3 = [v2 newBackgroundModel];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001B2C4;
  v6[3] = &unk_1000554A8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 performBlockAndWait:v6];
}

void sub_10001B598(uint64_t a1, uint64_t a2)
{
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100037808(a1, a2, v4);
  }

  if (a2)
  {
    v5 = *(a1 + 64);
    v6 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:302 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001B718;
    v12[3] = &unk_100056008;
    v11 = *(a1 + 32);
    v7 = v11.i64[0];
    v8 = *(a1 + 48);
    v16 = *(a1 + 72);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v13 = vextq_s8(v11, v11, 8uLL);
    v14 = v10;
    v15 = *(a1 + 64);
    [v11.i64[1] _performOnServiceQueue:v12];
  }
}

void sub_10001BC50(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = OSLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      *buf = 136315394;
      v13 = "[SavedRecordingService _onQueueCloseAccessSession:normalTermination:completionBlock:]_block_invoke";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s -- Finally closing access session: %@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
    [*(*(a1 + 32) + 104) closeSession:*(a1 + 40)];
    [*(a1 + 32) _onServiceQueueAttemptToRunningDeferredWorkAfterClosingSession:*(a1 + 40)];
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) accessToken];
    v7 = [v6 compositionAVURL];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001BE18;
    v9[3] = &unk_100056080;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    v11 = *(a1 + 48);
    [v5 _attemptFinalizationOfCompositionAVURL:v7 ignoredAccessSession:v10 completionBlock:v9];
  }
}

void sub_10001BE18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001BEC0;
  v3[3] = &unk_100055BB0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performOnServiceQueue:v3];
}

uint64_t sub_10001BEC0(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 104) closeSession:*(a1 + 40)];
  [*(a1 + 32) _onServiceQueueAttemptToRunningDeferredWorkAfterClosingSession:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10001C0EC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C1B0;
  v4[3] = &unk_1000560D0;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 _onServiceQueueOpenAccessSessionNamed:@"finalize" compositionAVURL:v5 accessIntent:2 xpcConnection:0 accessSessionHandler:v4];
}

void sub_10001C1B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001C294;
    v7[3] = &unk_100056080;
    v7[4] = v5;
    v8 = v3;
    v9 = *(a1 + 48);
    [v5 _attemptFinalizationOfCompositionAVURL:v6 ignoredAccessSession:v8 completionBlock:v7];
  }

  else
  {
    [v5[9] addObject:*(a1 + 40)];
  }
}

void sub_10001C294(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001C33C;
  v3[3] = &unk_100055BB0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performOnServiceQueue:v3];
}

void sub_10001C590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001C5A8(void *a1)
{
  result = [*(a1[4] + 96) containsObject:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    v3 = a1[5];
    v4 = *(a1[4] + 96);

    return [v4 addObject:v3];
  }

  return result;
}

void sub_10001C60C(void *a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7 && a3)
  {
    v9 = +[RCServiceContainer sharedContainer];
    v10 = [v9 newBackgroundModel];
    v11 = [v10 updateRecordingForFinalizedCompositionAndMigrateIfNecessary:v7];
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = *(v13 + 8);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10001C73C;
  v19 = &unk_1000556C8;
  v20 = v13;
  v21 = v12;
  dispatch_sync(v14, &v16);
  v15 = a1[6];
  if (v15)
  {
    (*(v15 + 16))(v15, v7 != 0);
  }

  notify_post([RCSavedRecordingServiceDidChangeCompositionAVURLsBeingExportedDistributedNotification UTF8String]);
}

void sub_10001CA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    _Block_object_dispose(&a21, 8);
    objc_begin_catch(exception_object);
    if (!v21)
    {
      JUMPOUT(0x10001CA34);
    }

    JUMPOUT(0x10001CA24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001CAF4(uint64_t a1)
{
  v13 = [RCComposition uriRepresentationForLegacyComposedAVURL:*(a1 + 32)];
  if (v13)
  {
    v2 = [*(a1 + 40) recordingWithURIRepresentation:v13];
    v3 = [v2 uuid];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) lastPathComponent];
    v8 = [v6 recordingWithFileName:v7];

    v9 = [v8 uuid];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return _objc_release_x1();
}

void sub_10001CBEC(id a1, RCCompositionFragment *a2, BOOL *a3)
{
  v3 = a2;
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(RCCompositionFragment *)v3 AVOutputURL];
    v6 = [v5 path];
    v7 = 136315394;
    v8 = "[SavedRecordingService _attemptOrphanedFragmentsCleanupForCompositionAVURL:ignoredAccessSession:completionBlock:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s -- NOTE: cleaning (deleting) orphaned fragment '%@' no longer in use.", &v7, 0x16u);
  }

  [(RCCompositionFragment *)v3 deleteFromFilesystem];
}

void sub_10001D500(uint64_t a1)
{
  [*(a1 + 32) rcs_setValid:0];
  v2 = [*(*(a1 + 40) + 104) activeSessionsWithXPCConnection:*(a1 + 32)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    *&v4 = 136315650;
    v11 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = OSLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *(a1 + 32);
          *buf = v11;
          v17 = "[SavedRecordingService _handleXPCDisconnect:]_block_invoke";
          v18 = 2112;
          v19 = v8;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s -- Terminating access session %@ for terminated connection: %@", buf, 0x20u);
        }

        [*(a1 + 40) _onQueueCloseAccessSession:v8 normalTermination:0 completionBlock:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) _removeDisabledOrphanCleanupAVURLsForConnection:{*(a1 + 32), v11}];
  [*(a1 + 40) enableOrphanHandlingWithCompletionBlock:0];
}

void sub_10001D76C(int8x16_t *a1)
{
  v2 = objc_opt_new();
  v3 = RCCloudRecording_Duration;
  v14[0] = RCCloudRecording_Duration;
  v14[1] = RCCloudRecording_Flags;
  v14[2] = RCCloudRecording_FileName;
  v14[3] = RCCloudRecording_UniqueID;
  v4 = [NSArray arrayWithObjects:v14 count:4];
  v5 = [NSSortDescriptor sortDescriptorWithKey:v3 ascending:1];
  v13 = v5;
  v6 = [NSArray arrayWithObjects:&v13 count:1];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001D92C;
  v10[3] = &unk_1000561B0;
  v9 = a1[2];
  v7 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  v8 = v2;
  v12 = v8;
  [v7 enumerateExistingRecordingsWithProperties:v4 sortDescriptors:v6 block:v10];
  if ([v8 count])
  {
    [*(a1[2].i64[1] + 160) markRecordingsAsNeedingExportAndCheckProgress:v8 mirroringModel:a1[2].i64[0]];
  }
}

void sub_10001D92C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 url];
  if ([v3 audioFutureNeedsDownload])
  {
    v5 = OSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 uuid];
      v11 = 136315394;
      v12 = "[SavedRecordingService _downloadAssets]_block_invoke_2";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- Attempting to download a pending restore recording %@", &v11, 0x16u);
    }

    v7 = *(a1[4] + 160);
    v8 = [v3 objectID];
    [v7 importAudioFuture:v8 mirroringModel:a1[5]];
  }

  else if (v4 && ([RCCloudRecording isRecordingExported:v4]& 1) == 0)
  {
    v9 = a1[6];
    v10 = [v3 objectID];
    [v9 addObject:v10];
  }
}

void sub_10001DECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001DEF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleDebugSignal];
    WeakRetained = v2;
  }
}

void sub_10001DF3C(id a1)
{
  v1 = OSLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_100037968();
  }

  xpc_transaction_exit_clean();
}

void sub_10001DF90(uint64_t a1, void *a2, void *a3)
{
  handler = a3;
  v5 = [a2 intValue];
  v6 = dispatch_source_create(&_dispatch_source_type_signal, v5, 0, *(a1 + 32));
  v7 = v6;
  if (v6)
  {
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v7);
    [*(*(a1 + 40) + 120) addObject:v7];
    signal(v5, 1);
  }
}

void sub_10001E684(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void sub_10001E6FC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_10001E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001E81C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [*(a1 + 32) allRecordings];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10001EC40;
  v45[3] = &unk_100056268;
  v4 = v2;
  v46 = v4;
  [v3 enumerateObjectsUsingBlock:v45];

  v35 = a1;
  v5 = *(a1 + 32);
  v44 = 0;
  LOBYTE(v2) = [v5 saveIfNecessary:&v44];
  v6 = v44;
  v7 = v6;
  if ((v2 & 1) != 0 || !v6)
  {
    v10 = +[NSFileManager defaultManager];
    v11 = RCStockRecordingsURL();
    v52 = NSURLContentModificationDateKey;
    v12 = [NSArray arrayWithObjects:&v52 count:1];
    v13 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v12 options:5 error:0];

    if (v13)
    {
      v32 = v10;
      v33 = v7;
      v34 = v4;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v31 = v13;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
      v15 = NSURLContentModificationDateKey;
      if (v14)
      {
        v16 = v14;
        v17 = *v41;
        do
        {
          v18 = 0;
          do
          {
            if (*v41 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v40 + 1) + 8 * v18);
            v39 = 0;
            v20 = [v19 getResourceValue:&v39 forKey:v15 error:{0, v31, v32, v33, v34}];
            v21 = v39;
            if (v20)
            {
              v22 = [v19 lastPathComponent];
              v23 = [v22 stringByDeletingPathExtension];

              v24 = *(v35 + 32);
              v25 = [v19 path];
              v38 = 0;
              v26 = [v24 insertRecordingWithAudioFile:v25 duration:v21 date:v23 customTitleBase:0 uniqueID:&v38 error:-1.0];
              v27 = v38;

              if (v26)
              {
                v28 = [v26 uuid];
                v29 = [RCCaptureFormat AVAssetAuthoringMetadataWithCreationDate:v21 title:v23 uniqueID:v28];

                v30 = [v26 url];
                v37 = 0;
                [AVAsset rc_updateMetadataInFile:v30 withMetadata:v29 error:&v37];

                v15 = NSURLContentModificationDateKey;
              }

              else
              {
                v29 = OSLogForCategory();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v48 = "[RCSavedRecordingsModel(DemoContent) reloadDemoContent:]_block_invoke";
                  v49 = 2112;
                  v50 = v27;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s -- Failed to insert recording with error: %@", buf, 0x16u);
                }
              }
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
        }

        while (v16);
      }

      v7 = v33;
      v4 = v34;
      v13 = v31;
      v10 = v32;
    }
  }

  else
  {
    v8 = *(*(v35 + 40) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }
}

void sub_10001EC40(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 url];
  [RCComposition deleteFromFilesystem:v3];

  [*(a1 + 32) deleteObject:v4];
}

id sub_10001ECBC(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = OSLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_100037AF0();
    }

    v1 = &RCSSavedRecordingServiceEncryptedStatusUnknown;
  }

  else
  {
    v1 = *(&off_1000562B0 + a1);
  }

  v3 = *v1;

  return v3;
}

void sub_10001F000(uint64_t a1, void *a2)
{
  v3 = [a2 walrusStatus];
  if (!RCIsInternalInstall())
  {
    v5 = 0;
    goto LABEL_9;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"kForcedEncryptedFieldsAccountState"];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = OSLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "accountStatusForStatus";
    v15 = 2112;
    v16 = @"kForcedEncryptedFieldsAccountState";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s -- %@ user default == %@", &v13, 0x20u);
  }

  if ([v5 isEqualToString:RCSSavedRecordingServiceEncryptedStatusUnknown])
  {
LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  if ([v5 isEqualToString:RCSSavedRecordingServiceEncryptedStatusEnabled])
  {
    v3 = 1;
    goto LABEL_14;
  }

  if (([v5 isEqualToString:RCSSavedRecordingServiceEncryptedStatusDisabled] & 1) == 0)
  {
LABEL_9:
    if (v3 < 3)
    {
      goto LABEL_14;
    }

    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100037B70();
    }

    goto LABEL_13;
  }

  v3 = 2;
LABEL_14:

  v8 = OSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_10001ECBC(v3);
    v13 = 136315394;
    v14 = "[RCAccountStatusObserver _checkAccountStatus]_block_invoke";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s -- account status is %@", &v13, 0x16u);
  }

  if (v3 != *(*(a1 + 32) + 16))
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10001ECBC(*(*(a1 + 32) + 16));
      v12 = sub_10001ECBC(v3);
      v13 = 136315650;
      v14 = "[RCAccountStatusObserver _checkAccountStatus]_block_invoke";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -- effective account status updated from %@ to %@", &v13, 0x20u);
    }

    *(*(a1 + 32) + 16) = v3;
    [*(a1 + 32) _notifyDelegate];
  }
}

void sub_10001F724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10001F778(uint64_t a1)
{
  v2 = [RCSSavedRecordingAccessToken tokenWithName:*(a1 + 32) accessIntent:*(a1 + 96) compositionAVURL:*(a1 + 40)];
  v3 = [*(*(a1 + 48) + 24) objectForKey:*(a1 + 40)];
  if ([v2 isExclusive] && objc_msgSend(v3, "count"))
  {
    v4 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:301 userInfo:0];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    if (([v2 isExclusive] & 1) == 0)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v31;
        while (2)
        {
          v11 = 0;
          do
          {
            if (*v31 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v30 + 1) + 8 * v11) accessToken];
            v13 = [v12 isExclusive];

            if (v13)
            {
              v22 = [NSError errorWithDomain:RCSSavedRecordingServiceErrorDomain code:301 userInfo:0];
              v23 = *(*(a1 + 64) + 8);
              v24 = *(v23 + 40);
              *(v23 + 40) = v22;

              goto LABEL_19;
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    v14 = [*(a1 + 40) path];
    v7 = [NSString stringWithFormat:@"Opening access session for compositionAVURL: %@, connection: %@", v14, *(a1 + 56)];

    [v7 UTF8String];
    v15 = os_transaction_create();
    v16 = [*(a1 + 48) _onQueueActiveSessions];
    v17 = *(*(a1 + 72) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [[AssetAccessSession alloc] initWithAccessToken:v2 compositionAVURL:*(a1 + 40) xpcConnection:*(a1 + 56) xpcTransaction:v15];
    v20 = *(*(a1 + 80) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    if (v3)
    {
      [v3 addObject:*(*(*(a1 + 80) + 8) + 40)];
    }

    else
    {
      v25 = *(*(a1 + 48) + 24);
      v26 = [NSMutableSet setWithObject:*(*(*(a1 + 80) + 8) + 40)];
      [v25 setObject:v26 forKey:*(a1 + 40)];
    }

    v27 = [*(a1 + 48) _onQueueActiveSessions];
    v28 = *(*(a1 + 88) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

LABEL_19:
  }
}

void sub_10001FC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10001FC3C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) compositionAVURL];
  v10 = [v2 objectForKey:v3];

  v4 = [*(a1 + 32) _onQueueActiveSessions];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [v10 removeObject:*(a1 + 40)];
  v7 = [*(a1 + 32) _onQueueActiveSessions];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t sub_10001FE08(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueueActiveSessionWithAccessToken:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001FF68(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueueActiveSessionsWithWithCompositionAVURL:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_1000200C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueueActiveSessionsWithXPCConnection:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100020118(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(*(a1 + 32) + 8) + 40) addObject:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

id sub_10002047C(uint64_t a1, void *a2)
{
  v3 = [a2 xpcConnection];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100020610(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        (*(*(a1 + 32) + 16))();
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000207F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1000209A4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100020A2C;
  v2[3] = &unk_1000563E8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _onQueueEnumerateActiveSessionsWithBlock:v2];
}

void sub_100020A2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 accessToken];
  v6 = [v5 compositionAVURL];
  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = +[NSMutableArray array];
    v8 = *(a1 + 32);
    v9 = [v11 accessToken];
    v10 = [v9 compositionAVURL];
    [v8 setObject:v7 forKeyedSubscript:v10];
  }

  [v7 addObject:v11];
}

void sub_100020B10(id a1, NSURL *a2, NSArray *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = __stderrp;
  v8 = [(NSURL *)v5 description];
  fprintf(v7, "compositionAVURL = %s\n", [v8 UTF8String]);

  v9 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v6;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v23 + 1) + 8 * v14) debugDescription];
        [v9 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v16 = __stderrp;
  v17 = [v9 count];
  v18 = [v9 componentsJoinedByString:@" "];;
  v19 = [v18 description];
  fprintf(v16, "\tActive Sessions (%d) = %s\n", v17, [v19 UTF8String]);

  v20 = [RCComposition compositionLoadedForComposedAVURL:v5 createIfNeeded:1];
  v21 = __stderrp;
  v22 = [v20 debugDescription];
  fprintf(v21, "\tComposition Metadata = %s\n\n\n", [v22 UTF8String]);
}

void sub_1000218C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Unwind_Resume(a1);
}

void sub_100021970(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"RCSlowComposeDelay"];

  if (v7)
  {
    [v7 doubleValue];
    [NSThread sleepForTimeInterval:?];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v10, v5);
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = +[NSFileManager defaultManager];
    [v9 removeItemAtURL:*(*(*(a1 + 40) + 8) + 40) error:0];
  }
}

void sub_100021A70(uint64_t a1, int a2)
{
  if (a2 && ([*(*(a1 + 32) + 16) rc_audioTracks], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4 < 2))
  {
    v5 = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), AVAssetExportPresetPassthrough);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), AVFileTypeQuickTimeMovie);
    v5 = [*(*(*(a1 + 64) + 8) + 40) rc_URLByReplacingPathExtensionWithExtension:RCAudioFileExtensionQT];
  }

  v6 = [[AVAssetExportSession alloc] initWithAsset:*(*(a1 + 32) + 16) presetName:*(*(*(a1 + 48) + 8) + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;

  [*(*(a1 + 32) + 8) setOutputFileType:*(*(*(a1 + 56) + 8) + 40)];
  v9 = v5;
  if (!v5)
  {
    v9 = *(*(*(a1 + 64) + 8) + 40);
  }

  [*(*(a1 + 32) + 8) setOutputURL:v9];
  [*(*(a1 + 32) + 8) setMetadata:*(*(a1 + 32) + 24)];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  if (v11)
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_100001DFC;
    v23[4] = sub_100021968;
    v24 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100021DA0;
    v17[3] = &unk_100056478;
    v17[4] = v10;
    v20 = v25;
    v21 = v23;
    v12 = v5;
    v13 = *(a1 + 64);
    v18 = v12;
    v22 = v13;
    v19 = *(a1 + 40);
    [v11 exportAsynchronouslyWithCompletionHandler:v17];

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }

  else
  {
    v14 = OSLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100037C7C(v14);
    }

    v15 = *(a1 + 40);
    v16 = RCGenericErrorWithUnderlyingError();
    (*(v15 + 16))(v15, 0, v16);
  }
}

void sub_100021D1C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = *(v12 + 40);
    v18 = RCGenericError();
    (*(v17 + 16))(v17, 0, v18);

    objc_end_catch();
    JUMPOUT(0x100021CF8);
  }

  _Unwind_Resume(a1);
}

void sub_100021DA0(void *a1)
{
  v2 = (a1 + 4);
  if ([*(a1[4] + 8) status] == 4)
  {
    *(*(a1[7] + 8) + 24) = 1;
    v3 = [*(a1[4] + 8) error];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100037D00(v2, (a1 + 8), v6);
    }
  }

  if ([*(*v2 + 8) status] != 3)
  {
    v16 = a1[6];
    v17 = [*(a1[4] + 8) error];
    v18 = RCGenericErrorWithUnderlyingError();
    (*(v16 + 16))(v16, 0, v18);

    return;
  }

  if (a1[5])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = a1[5];
    v9 = *(*(a1[9] + 8) + 40);
    v24 = 0;
    v10 = [v7 moveItemAtURL:v8 toURL:v9 error:&v24];
    v11 = v24;

    if (!v10)
    {
      (*(a1[6] + 16))();

      return;
    }
  }

  v12 = [AVURLAsset assetWithURL:*(*(a1[9] + 8) + 40)];
  v13 = [v12 rc_audioTracks];
  v14 = [v13 count];

  if (v14)
  {
    v15 = *(*(a1[9] + 8) + 40);
    (*(a1[6] + 16))();
  }

  else
  {
    v19 = OSLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_100037DAC(v19);
    }

    v20 = a1[6];
    v21 = RCVoiceMemosErrorDomain;
    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = @"No audio tracks after export";
    v22 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v23 = [NSError errorWithDomain:v21 code:401 userInfo:v22];
    (*(v20 + 16))(v20, 0, v23);
  }
}

void sub_100022260(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) _recordsContainIncompatibleDevice:a2];
  }

  (*(*(a1 + 40) + 16))();
}

id *sub_1000228FC(id *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

void sub_10002290C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 16);
LABEL_3:
    v6();
    goto LABEL_6;
  }

  if (!v8)
  {
    v7 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 16);
    goto LABEL_3;
  }

  [*(a1 + 32) _fetchDeviceRecordsWithCursor:v8 results:*(a1 + 40) completion:*(a1 + 48)];
LABEL_6:
}

uint64_t sub_1000229F8()
{
  v1[2] = v0;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100022B14, 0, 0);
}

uint64_t sub_100022B14()
{
  v15 = v0;
  v1 = [objc_opt_self() sharedContainer];
  if (v1 && (v2 = v1, v3 = [v1 newBackgroundModel], v0[9] = v3, v2, v3))
  {
    type metadata accessor for DaemonFileCoordinator();
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_100022D5C;

    return sub_100026AC8();
  }

  else
  {
    if (qword_10005C910 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100024CD0(v6, qword_10005D2B0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100030FD8(0xD00000000000001ELL, 0x800000010004BC50, &v14);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s - failed to create service model", v9, 0xCu);
      sub_100024D08(v10);
    }

    v11 = v0[8];
    v12 = v0[5];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100022D5C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_10002331C;
  }

  else
  {

    v3 = sub_100022E7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100022E7C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = [objc_opt_self() defaultManager];
  v6 = RCCaptureRecoveryDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_100029334(v2, 5);
  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    v8 = v0[9];

    v9 = v0[8];
    v10 = v0[5];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[9];
    v15 = v0[4];
    v14 = v0[5];
    v17 = v0[2];
    v16 = v0[3];

    v18 = swift_allocObject();
    v0[12] = v18;
    v18[2] = v7;
    v18[3] = v17;
    v18[4] = v13;
    v0[13] = [v13 context];
    (*(v15 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v16);
    v19 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_1000230A0;
    v21 = v0[5];

    return NSManagedObjectContext.perform<A>(schedule:_:)();
  }
}

uint64_t sub_1000230A0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v6 = sub_10002329C;
  }

  else
  {
    v7 = v2[12];
    v9 = v2[4];
    v8 = v2[5];
    v10 = v2[3];

    (*(v9 + 8))(v8, v10);
    v6 = sub_100023224;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100023224()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002329C()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[15];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10002331C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  v4 = *(v0 + 8);

  return v4();
}

char *sub_100023394(char *result, uint64_t a2, void *a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(result + 2);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(type metadata accessor for URL() - 8);
    result = sub_100023460(&v5[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++], a3);
  }

  while (!v3);
  return result;
}

id sub_100023460(char *a1, void *a2)
{
  v4 = v3;
  v80 = type metadata accessor for URL();
  v7 = *(v80 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v80);
  v73 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v69 - v12;
  __chkstk_darwin(v11);
  v15 = v69 - v14;
  v16 = sub_100024D74();
  v75 = *(v16 + 2);
  if (!v75)
  {

    v50 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v51);
    v53 = v52;
    v81 = 0;
    v54 = [v50 removeItemAtURL:v52 error:&v81];

    v55 = v81;
    if (!v54)
    {
      v56 = v81;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    return v55;
  }

  v76 = v2;
  if (qword_10005C910 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v74 = v13;
    v72 = a2;
    v17 = type metadata accessor for Logger();
    v18 = sub_100024CD0(v17, qword_10005D2B0);

    v69[1] = v18;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v71 = v4;
    v69[2] = a1;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v81 = v23;
      *v22 = 136315138;
      v24 = Array.description.getter();
      v26 = v20;
      v27 = sub_100030FD8(v24, v25, &v81);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v26, "Attempting to recover orphaned asset files: %s", v22, 0xCu);
      sub_100024D08(v23);
    }

    v30 = v7[2];
    v29 = v7 + 2;
    v28 = v30;
    v31 = *(v29 + 64);
    v79 = v16;
    v32 = v16 + ((v31 + 32) & ~v31);
    v33 = v29[7];
    v34 = (v29 - 1);
    v70 = v32;
    v35 = v75;
    v36 = v80;
    v37 = v15;
    do
    {
      v4 = v33;
      v38 = v28;
      v28(v37, v32, v36);
      sub_100025264(v37);
      v16 = *v34;
      (*v34)(v37, v36);
      v28 = v38;
      v33 = v4;
      v32 = &v4[v32];
      --v35;
    }

    while (v35);
    v77 = v29;
    v78 = v29 - 1;
    v39 = *(v79 + 2);
    if (!v39)
    {
      __break(1u);
    }

    v40 = v74;
    v41 = v70;
    v42 = v80;
    v43 = v28;
    v28(v74, v70, v80);
    if (v39 == 1)
    {
      break;
    }

    v76 = v43;
    v16(v40, v42);
    v15 = 0;
    v13 = v71;
    v7 = v72;
    a2 = v73;
    a1 = v75;
    v57 = v80;
    while (v15 < *(v79 + 2))
    {
      v76(a2, v41, v57);
      sub_100026200(a2, v7);
      if (v13)
      {
        v16(a2, v57);
      }

      ++v15;
      v16(a2, v57);
      v41 = &v4[v41];
      if (a1 == v15)
      {

        v46 = v7;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v44 = URL.lastPathComponent.getter();
  v45 = v71;
  v46 = v72;
  v48 = sub_100023EE0(v40, v72, v44, v47);
  if (v45)
  {
    v16(v40, v42);
  }

  v58 = v48;

  if ((v58 & 1) == 0)
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v81 = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_100030FD8(0xD00000000000001FLL, 0x800000010004BC70, &v81);
      _os_log_impl(&_mh_execute_header, v59, v60, "%s - failed to utilize asset metadata inserting bare asset", v61, 0xCu);
      sub_100024D08(v62);
      v46 = v72;
    }

    sub_100026200(v74, v46);
  }

  v16(v74, v42);
LABEL_24:
  [v46 saveIfNecessary];
  v63 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v64);
  v66 = v65;
  v81 = 0;
  v67 = [v63 removeItemAtURL:v65 error:&v81];

  v55 = v81;
  if (v67)
  {
    return v55;
  }

  v68 = v81;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100023CD8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  swift_getObjCClassMetadata();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100023D7C;

  return sub_1000229F8();
}

uint64_t sub_100023D7C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100023EE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100024720(&qword_10005C940, &qword_10003F540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for InitialCaptureOrphanHandler.RecoveryMetadata();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = a1;
  sub_100024298(v15);
  v39 = a3;
  v16 = String._bridgeToObjectiveC()();
  v40 = a2;
  v17 = [a2 recordingWithUniqueID:v16];

  v18 = *v15;
  v19 = v15[1];
  if (v19)
  {
    if (v17)
    {
LABEL_5:
      v23 = sub_100025BDC(v17, v41, v15);

      goto LABEL_15;
    }

    v20 = v15[1];
    v38 = a4;
    v21 = v18;
    v22 = String._bridgeToObjectiveC()();
    v17 = [v40 recordingWithUniqueID:v22];

    v18 = v21;
  }

  if (v17)
  {
    goto LABEL_5;
  }

  v38 = v18;
  URL.path.getter();
  v37 = String._bridgeToObjectiveC()();

  sub_1000264A8(v15 + *(v12 + 20), v11);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  isa = 0;
  if ((*(v25 + 48))(v11, 1, v24) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v25 + 8))(v11, v24);
  }

  v27 = (v15 + *(v12 + 24));
  if (v27[1])
  {
    v28 = *v27;
    v29 = String._bridgeToObjectiveC()();
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:

    goto LABEL_13;
  }

  v29 = 0;
  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_13:

  v30 = String._bridgeToObjectiveC()();

  v42 = 0;
  v31 = v37;
  v32 = [v40 insertRecordingWithAudioFile:v37 duration:isa date:v29 customTitleBase:v30 uniqueID:&v42 error:-1.0];

  v23 = v42;
  if (v32)
  {
    v33 = v42;
    v23 = 1;
    sub_100025658(0xD000000000000045, 0x800000010004BC90, v41, v32, 1);
  }

  else
  {
    v35 = v42;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_15:
  sub_100026518(v15);
  return v23 & 1;
}

uint64_t sub_100024298@<X0>(void *a1@<X8>)
{
  v2 = (*(*(sub_100024720(&qword_10005C940, &qword_10003F540) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v30 - v3;
  v5 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = [v5 initWithURL:v7 options:0];

  v10 = [v9 rc_recordingMetadata];
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v11 + 16) && (v12 = sub_100031580(0x4449657571696E75, 0xE800000000000000), (v13 & 1) != 0))
  {
    sub_1000265E4(*(v11 + 56) + 32 * v12, v32);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v30;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v31;
    }

    else
    {
      v16 = 0;
    }

    if (!*(v11 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    if (!*(v11 + 16))
    {
LABEL_14:
      v21 = type metadata accessor for Date();
      (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
      goto LABEL_15;
    }
  }

  v17 = sub_100031580(1702125924, 0xE400000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1000265E4(*(v11 + 56) + 32 * v17, v32);
  v19 = type metadata accessor for Date();
  v20 = swift_dynamicCast();
  (*(*(v19 - 8) + 56))(v4, v20 ^ 1u, 1, v19);
LABEL_15:
  if (*(v11 + 16) && (v22 = sub_100031580(0x656C746974, 0xE500000000000000), (v23 & 1) != 0))
  {
    sub_1000265E4(*(v11 + 56) + 32 * v22, v32);

    v24 = swift_dynamicCast();
    if (v24)
    {
      v25 = v30;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v31;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {

    v25 = 0;
    v26 = 0;
  }

  *a1 = v15;
  a1[1] = v16;
  v27 = type metadata accessor for InitialCaptureOrphanHandler.RecoveryMetadata();
  result = sub_100026574(v4, a1 + *(v27 + 20));
  v29 = (a1 + *(v27 + 24));
  *v29 = v25;
  v29[1] = v26;
  return result;
}

id sub_100024584()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InitialCaptureOrphanHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000245E4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10002465C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000246DC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100024720(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100024768()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100024814;

  return sub_100023CD8(v2);
}

uint64_t sub_100024814()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100024908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100024950@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10002497C(uint64_t a1)
{
  v2 = sub_100026974(&qword_10005CA38, type metadata accessor for RCAudioCodecName);
  v3 = sub_100026974(&qword_10005CA40, type metadata accessor for RCAudioCodecName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100024A38()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100024A74()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100024AC8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100024B3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100024BC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100024C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100026AC4;

  return sub_10002AD38(a1, v4, v5, v7);
}

uint64_t sub_100024CD0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100024D08(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100024D74()
{
  v0 = type metadata accessor for URL();
  v44 = *(v0 - 8);
  v1 = *(v44 + 64);
  v2 = __chkstk_darwin(v0);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v38 - v4;
  v6 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v45 = 0;
  v10 = [v6 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:5 error:&v45];

  v11 = v45;
  if (!v10)
  {
    v29 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10005C910 == -1)
    {
LABEL_14:
      v30 = type metadata accessor for Logger();
      sub_100024CD0(v30, qword_10005D2B0);
      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v45 = v35;
        *v33 = 136315394;
        *(v33 + 4) = sub_100030FD8(0x6C69467465737361, 0xEF293A6E69287365, &v45);
        *(v33 + 12) = 2112;
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v36;
        *v34 = v36;
        _os_log_impl(&_mh_execute_header, v31, v32, "%s - failed to read contents of directory, error: %@", v33, 0x16u);
        sub_100026640(v34);

        sub_100024D08(v35);
      }

      return &_swiftEmptyArrayStorage;
    }

LABEL_21:
    swift_once();
    goto LABEL_14;
  }

  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v11;

  v14 = v12;
  v42 = *(v12 + 16);
  if (v42)
  {
    v15 = v0;
    v16 = 0;
    v38 = (v44 + 8);
    v40 = (v44 + 32);
    v41 = v44 + 16;
    v17 = &_swiftEmptyArrayStorage;
    v39 = v0;
    while (v16 < *(v14 + 16))
    {
      v18 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v19 = v14;
      v20 = *(v44 + 72);
      (*(v44 + 16))(v5, v14 + v18 + v20 * v16, v15);
      v21 = objc_opt_self();
      URL.pathExtension.getter();
      v22 = String._bridgeToObjectiveC()();

      v23 = [v21 supportsFileExtension:v22];

      if (v23)
      {
        v24 = *v40;
        (*v40)(v43, v5, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000280A4(0, v17[2] + 1, 1);
          v17 = v45;
        }

        v27 = v17[2];
        v26 = v17[3];
        if (v27 >= v26 >> 1)
        {
          sub_1000280A4(v26 > 1, v27 + 1, 1);
          v17 = v45;
        }

        v17[2] = v27 + 1;
        v28 = v17 + v18 + v27 * v20;
        v15 = v39;
        v24(v28, v43, v39);
      }

      else
      {
        (*v38)(v5, v15);
      }

      ++v16;
      v14 = v19;
      if (v42 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v17 = &_swiftEmptyArrayStorage;
LABEL_18:

  return v17;
}

void sub_100025264(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v25 = 0;
  LODWORD(v7) = [v7 consolidateMovieFragmentsForFileAt:v9 error:&v25];

  v11 = v25;
  if (v7)
  {

    v12 = v11;
  }

  else
  {
    v24 = v25;
    v13 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10005C910 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100024CD0(v14, qword_10005D2B0);
    (*(v3 + 16))(v6, a1, v2);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v17 = 136315650;
      *(v17 + 4) = sub_100030FD8(0xD000000000000025, 0x800000010004BD40, &v25);
      *(v17 + 12) = 2080;
      sub_100026974(&qword_10005C948, &type metadata accessor for URL);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v3 + 8))(v6, v2);
      v22 = sub_100030FD8(v19, v21, &v25);

      *(v17 + 14) = v22;
      *(v17 + 22) = 2112;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s failed to consolidate fragments for %s: %@", v17, 0x20u);
      sub_100026640(v18);

      swift_arrayDestroy();
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

void sub_100025658(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (__chkstk_darwin)();
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  if (a5)
  {
    if (qword_10005C910 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100024CD0(v18, qword_10005D2B0);
    (*(v11 + 16))(v17, a3, v10);

    v19 = a4;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v21))
    {

      (*(v11 + 8))(v17, v10);
      return;
    }

    v22 = a1;
    v23 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v23 = 136315650;
    *(v23 + 4) = sub_100030FD8(v22, a2, &v50);
    *(v23 + 12) = 2080;
    sub_100026974(&qword_10005C948, &type metadata accessor for URL);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v11 + 8))(v17, v10);
    v27 = sub_100030FD8(v24, v26, &v50);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2080;
    v28 = [v19 uuid];
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 7104878;
      v32 = 0xE300000000000000;
    }

    v47 = sub_100030FD8(v30, v32, &v50);

    *(v23 + 24) = v47;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s - file at %s was recovered and recording with uuid:%s was created", v23, 0x20u);
    swift_arrayDestroy();
    goto LABEL_19;
  }

  if (qword_10005C910 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100024CD0(v33, qword_10005D2B0);
  (*(v11 + 16))(v15, a3, v10);

  v34 = a4;
  v20 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v35))
  {
    v36 = a1;
    v37 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v37 = 136315650;
    *(v37 + 4) = sub_100030FD8(v36, a2, &v50);
    *(v37 + 12) = 2080;
    sub_100026974(&qword_10005C948, &type metadata accessor for URL);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    (*(v11 + 8))(v15, v10);
    v41 = sub_100030FD8(v38, v40, &v50);

    *(v37 + 14) = v41;
    *(v37 + 22) = 2080;
    v42 = [v34 uuid];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v44 = 7104878;
      v46 = 0xE300000000000000;
    }

    v48 = sub_100030FD8(v44, v46, &v50);

    *(v37 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v20, v35, "%s - file at %s was recovered and associated with recording with uuid:%s", v37, 0x20u);
    swift_arrayDestroy();
LABEL_19:

    return;
  }

  (*(v11 + 8))(v15, v10);
}

uint64_t sub_100025BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v66 = a2;
  v4 = type metadata accessor for URL();
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v60 - v10;
  __chkstk_darwin(v9);
  v64 = &v60 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v60 - v19;
  v21 = [a1 creationDate];
  if (v21)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v14 + 32))(v20, v18, v13);
    v22 = [a1 url];
    v63 = v20;
    if (v22)
    {
      v23 = v22;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = a1;
      v24 = v14;
      v25 = v13;
      v26 = v65;
      (*(v65 + 32))(v11, v8, v4);
      v27 = v64;
      (*(v26 + 16))(v64, v11, v4);
      v28 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v29 = String._bridgeToObjectiveC()();

      v30 = [v28 fileExistsAtPath:v29];

      v31 = v26;
      v13 = v25;
      v14 = v24;
      a1 = v61;
      v32 = *(v31 + 8);
      v33 = v11;
      p_base_props = (&RCSpatialExporter + 64);
      v32(v33, v4);
      if (v30)
      {
        v32(v27, v4);
        LOBYTE(v21) = 0;
LABEL_14:
        (*(v14 + 8))(v63, v13);
        return v21 & 1;
      }
    }

    else
    {
      v35 = objc_opt_self();
      p_base_props = &RCSpatialExporter.base_props;
      isa = Date._bridgeToObjectiveC()().super.isa;
      URL.pathExtension.getter();
      v37 = String._bridgeToObjectiveC()();

      v38 = [v35 standardURLForRecordingWithCreationDate:isa fileExtension:v37];

      v27 = v64;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.lastPathComponent.getter();
      v39 = String._bridgeToObjectiveC()();

      [a1 setFileName:v39];
    }

    v40 = [objc_opt_self() p_base_props[345]];
    URL._bridgeToObjectiveC()(v41);
    v43 = v42;
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    v67 = 0;
    v47 = v27;
    v48 = [v40 moveItemAtURL:v43 toURL:v45 error:&v67];

    if (v48)
    {
      v49 = v67;
      [a1 setPlayable:1];
      v50 = [a1 title];
      if (!v50)
      {
        v51 = (v62 + *(type metadata accessor for InitialCaptureOrphanHandler.RecoveryMetadata() + 24));
        if (v51[1])
        {
          v52 = *v51;
          v53 = v51[1];
        }

        else
        {
          v55 = objc_opt_self();
          v56 = Date._bridgeToObjectiveC()().super.isa;
          v57 = [v55 recoveredRecordingTitleFromDate:v56];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v58 = String._bridgeToObjectiveC()();

        [a1 setTitle:v58];
        v50 = v58;
      }

      sub_100025658(0xD000000000000034, 0x800000010004BCE0, v66, a1, 0);
      (*(v65 + 8))(v47, v4);
      LOBYTE(v21) = 1;
      goto LABEL_14;
    }

    v54 = v67;
    LOBYTE(v21) = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v65 + 8))(v47, v4);
    (*(v14 + 8))(v63, v13);
  }

  return v21 & 1;
}

uint64_t sub_100026200(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v9 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 recoveredRecordingTitleFromDate:isa];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  URL.path.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = Date._bridgeToObjectiveC()().super.isa;
  v19 = 0;
  v14 = [a2 insertRecordingWithAudioFile:v12 duration:v13 date:v11 customTitleBase:0 uniqueID:&v19 error:-1.0];

  if (v14)
  {
    v15 = v19;
    sub_100025658(0xD00000000000001ALL, 0x800000010004BD20, a1, v14, 1);
  }

  else
  {
    v17 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t type metadata accessor for InitialCaptureOrphanHandler.RecoveryMetadata()
{
  result = qword_10005C9B0;
  if (!qword_10005C9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000264A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024720(&qword_10005C940, &qword_10003F540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026518(uint64_t a1)
{
  v2 = type metadata accessor for InitialCaptureOrphanHandler.RecoveryMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100026574(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024720(&qword_10005C940, &qword_10003F540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000265E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100026640(uint64_t a1)
{
  v2 = sub_100024720(&qword_10005C950, &qword_10003F548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000266D0()
{
  sub_100026A74(319, &qword_10005C9C0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10002677C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002677C()
{
  if (!qword_10005C9C8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10005C9C8);
    }
  }
}

uint64_t sub_10002680C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002682C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_10002687C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100026890(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000268B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100026974(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100026A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100026AC8()
{
  v1[2] = v0;
  v2 = *(*(sub_100024720(&unk_10005CB80, &qword_10003FAC0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100026BD8, 0, 0);
}

uint64_t sub_100026BD8()
{
  sub_10002829C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[5];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v29 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v6 = v1 + v29;
    v34 = (v3 - 8);
    v30 = (v3 + 16);
    v31 = (v3 + 32);
    v35 = &_swiftEmptyArrayStorage;
    v32 = *(v3 + 56);
    v33 = v5;
    do
    {
      v8 = v0[8];
      v10 = v0[3];
      v9 = v0[4];
      v11 = v0[2];
      v4(v8, v6, v9);
      sub_100026FC0(v8, v10);
      v12 = *v34;
      (*v34)(v8, v9);
      if ((*v31)(v10, 1, v9) == 1)
      {
        sub_100028ED4(v0[3], &unk_10005CB80, &qword_10003FAC0);
        v7 = v32;
      }

      else
      {
        v14 = v0[6];
        v13 = v0[7];
        v15 = v0[4];
        v16 = *v30;
        (*v30)(v13, v0[3], v15);
        v4(v14, v13, v15);
        v17 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100030E00(0, v35[2] + 1, 1, v35);
        }

        v19 = v17[2];
        v18 = v17[3];
        if (v19 >= v18 >> 1)
        {
          v35 = sub_100030E00(v18 > 1, v19 + 1, 1, v17);
        }

        else
        {
          v35 = v17;
        }

        v20 = v0[6];
        v21 = v0[4];
        v12(v0[7], v21);
        v35[2] = v19 + 1;
        v7 = v32;
        v16(v35 + v29 + v19 * v32, v20, v21);
      }

      v6 += v7;
      --v2;
      v4 = v33;
    }

    while (v2);

    v22 = v35;
  }

  else
  {

    v22 = &_swiftEmptyArrayStorage;
  }

  v24 = v0[7];
  v23 = v0[8];
  v25 = v0[6];
  v26 = v0[3];

  v27 = v0[1];

  return v27(v22);
}

Swift::Int sub_100026F04()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100026F70()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100026FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  (*(v5 + 56))(a2, 1, 1, v4);
  v10 = a1;
  v11 = a2;
  return sub_100028664(a1, 0x3FF0000000000000, 0, sub_100028648, v9);
}

uint64_t sub_100027714(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  swift_getObjCClassMetadata();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000277B8;

  return sub_100026AC8();
}

uint64_t sub_1000277B8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for URL();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

void sub_10002792C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = RCCaptureRecoveryDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.lastPathComponent.getter();
  URL.appendingPathComponent(_:)();

  v12 = *(v4 + 8);
  v12(v8, v3);
  v13 = [objc_opt_self() defaultManager];
  sub_100027B28();
  if (v2)
  {
    v12(v10, v3);
  }

  else
  {

    v14 = v16;
    sub_100028ED4(v16, &unk_10005CB80, &qword_10003FAC0);
    (*(v4 + 32))(v14, v10, v3);
    (*(v4 + 56))(v14, 0, 1, v3);
  }
}

uint64_t sub_100027B28()
{
  v1 = v0;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v12 = 0;
  LODWORD(v1) = [v1 moveItemAtURL:v3 toURL:v5 error:&v12];

  if (v1)
  {
    v7 = v12;
    v8 = 1;
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = _convertErrorToNSError(_:)();
    LODWORD(v9) = RCIsFileNotFoundError();

    if (v9)
    {

      v8 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  return v8 & 1;
}

uint64_t sub_100027C50(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

BOOL sub_100027D34()
{
  sub_100029134(0, &qword_10005CAA0, NSError_ptr);
  sub_10002917C();
  v1 = v0;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  v12 = [v3 code];

  return v12 == 3072;
}

id sub_100027EE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonFileCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100027F38()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100024814;

  return sub_100027714(v2);
}

uint64_t sub_100027FE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100026AC4;

  return sub_10002AC50(v2, v3, v5);
}

size_t sub_1000280A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1000280C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000280C4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100024720(&qword_10005CAB0, &qword_10003F800);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_10002829C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v30 - v8;
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = RCCaptureDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_100029334(v11, 5);
  if (v0)
  {
    (*(v2 + 8))(v11, v1);
  }

  else
  {
    v30[1] = 0;
    v39 = v12;
    v15 = v14;
    v35 = *(v2 + 8);
    v36 = v2 + 8;
    v35(v11, v1);
    v16 = v15;
    v38 = v15[2];
    if (v38)
    {
      v17 = 0;
      v37 = v2 + 16;
      v32 = (v2 + 32);
      v33 = v6;
      v34 = &_swiftEmptyArrayStorage;
      do
      {
        if (v17 >= v16[2])
        {
          __break(1u);
        }

        v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v19 = v16;
        v20 = *(v2 + 72);
        v21 = v1;
        (*(v2 + 16))(v9, v16 + v18 + v20 * v17, v1);
        v40 = 0;
        URL.path.getter();
        v22 = String._bridgeToObjectiveC()();

        v23 = [v39 fileExistsAtPath:v22 isDirectory:&v40];

        if (v23 && (v40 & 1) != 0)
        {
          v31 = *v32;
          v31(v33, v9, v21);
          v24 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000280A4(0, v24[2] + 1, 1);
            v24 = v41;
          }

          v27 = v24[2];
          v26 = v24[3];
          v28 = (v27 + 1);
          if (v27 >= v26 >> 1)
          {
            v34 = (v27 + 1);
            sub_1000280A4(v26 > 1, v27 + 1, 1);
            v28 = v34;
            v24 = v41;
          }

          v24[2] = v28;
          v34 = v24;
          v29 = v24 + v18 + v27 * v20;
          v1 = v21;
          v31(v29, v33, v21);
        }

        else
        {
          v1 = v21;
          v35(v9, v21);
        }

        ++v17;
        v16 = v19;
      }

      while (v38 != v17);
    }

    else
    {
      v34 = &_swiftEmptyArrayStorage;
    }
  }
}

uint64_t sub_100028664(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v56 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  __chkstk_darwin(v8);
  v50 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchTime();
  v51 = *(v54 - 8);
  v11 = *(v51 + 64);
  v12 = __chkstk_darwin(v54);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = v45 - v15;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  __chkstk_darwin(v16);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v22 = type metadata accessor for DispatchQoS();
  v47 = *(v22 - 8);
  v48 = v22;
  v23 = *(v47 + 64);
  __chkstk_darwin(v22);
  v25 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(NSFileCoordinator) init];
  if ((a3 & 1) == 0 && *&a2 > 0.0)
  {
    v45[3] = sub_100029134(0, &qword_10005CA88, OS_dispatch_queue_ptr);
    v45[2] = "rectory(_:)";
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    v45[1] = sub_100029040(&unk_10005CCC0, &type metadata accessor for OS_dispatch_queue.Attributes);
    v45[4] = a1;
    sub_100024720(&qword_10005CA90, &unk_10003F7F0);
    sub_1000290E0(&qword_10005CCD0, &qword_10005CA90, &unk_10003F7F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v46 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
    v46 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static DispatchTime.now()();
    v26 = v49;
    + infix(_:_:)();
    v51 = *(v51 + 8);
    (v51)(v14, v54);
    v27 = swift_allocObject();
    v28 = v57;
    *(v27 + 16) = v57;
    v62 = sub_1000290D0;
    v63 = v27;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_10002C924;
    v61 = &unk_100056938;
    v29 = _Block_copy(&aBlock);
    v30 = v28;
    static DispatchQoS.unspecified.getter();
    v65 = &_swiftEmptyArrayStorage;
    sub_100029040(&unk_10005CC50, &type metadata accessor for DispatchWorkItemFlags);
    sub_100024720(&qword_10005CA98, &qword_10003FB40);
    sub_1000290E0(&qword_10005CC60, &qword_10005CA98, &qword_10003FB40);
    v31 = v50;
    v32 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v46;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v29);

    (*(v52 + 8))(v31, v32);
    (*(v47 + 8))(v25, v48);
    (v51)(v26, v54);
  }

  v65 = 0;
  v64 = 1;
  URL._bridgeToObjectiveC()(1);
  v35 = v34;
  v36 = swift_allocObject();
  v36[2] = &v64;
  v37 = v56;
  v36[3] = v55;
  v36[4] = v37;
  v36[5] = &v65;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100028F34;
  *(v38 + 24) = v36;
  v62 = sub_100028FAC;
  v63 = v38;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100027C50;
  v61 = &unk_1000568E8;
  v39 = _Block_copy(&aBlock);

  aBlock = 0;
  v40 = v57;
  [v57 coordinateWritingItemAtURL:v35 options:2 error:&aBlock byAccessor:v39];
  _Block_release(v39);

  v41 = aBlock;
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
  }

  if (v64 == 1)
  {
    if (v41)
    {
      v42 = v41;
      if (sub_100027D34())
      {
        sub_100028FEC();
        swift_allocError();
      }

      else
      {
        v44 = v42;
      }

      swift_willThrow();
    }

    else
    {
      sub_100028FEC();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    if (!v65)
    {
    }

    swift_willThrow();
    swift_errorRetain();
  }
}

uint64_t sub_100028ED4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100024720(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100028F34()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  **(v0 + 16) = 0;
  return v1();
}

uint64_t sub_100028FAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100028FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100028FEC()
{
  result = qword_10005CA80;
  if (!qword_10005CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CA80);
  }

  return result;
}

uint64_t sub_100029040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029088(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000290E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100029088(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100029134(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10002917C()
{
  result = qword_10005CAA8;
  if (!qword_10005CAA8)
  {
    sub_100029134(255, &qword_10005CAA0, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CAA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonFileCoordinator.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DaemonFileCoordinator.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000292D8()
{
  result = qword_10005CAB8;
  if (!qword_10005CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CAB8);
  }

  return result;
}

void *sub_100029334(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v13 = 0;
  v6 = [v2 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:a2 error:&v13];

  v7 = v13;
  if (v6)
  {
    type metadata accessor for URL();
    found = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;
  }

  else
  {
    v10 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = _convertErrorToNSError(_:)();
    found = RCIsFileNotFoundError();

    if (found)
    {

      return &_swiftEmptyArrayStorage;
    }

    else
    {
      swift_willThrow();
    }
  }

  return found;
}

uint64_t sub_10002948C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_100029524;

  return sub_10002C150(a1);
}

uint64_t sub_100029524(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_10002982C;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_10002964C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002964C()
{
  v1 = *(v0 + 32);
  v2 = **(&off_100056BE8 + *(v0 + 64));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = objc_allocWithZone(AVAssetExportSession);
  v4 = v1;
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithAsset:v4 presetName:v5];

  if (v6)
  {
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    *(v7 + OBJC_IVAR____TtC10voicememod34RCExportSessionComposedAssetWriter_exportSession) = v6;
    v9 = type metadata accessor for RCExportSessionComposedAssetWriter();
    *(v0 + 16) = v7;
    *(v0 + 24) = v9;
    v10 = objc_msgSendSuper2((v0 + 16), "init");

    v11 = *(v0 + 8);

    return v11(v10);
  }

  else
  {
    sub_10002C628();
    v13 = swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v16 = *(v0 + 32);
    v15 = *(v0 + 40);
    swift_allocError();
    *v17 = v13;
    swift_willThrow();

    type metadata accessor for RCExportSessionComposedAssetWriter();
    swift_deallocPartialClassInstance();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10002982C()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  sub_10002C628();
  swift_allocError();
  *v4 = v1;
  swift_willThrow();

  type metadata accessor for RCExportSessionComposedAssetWriter();
  swift_deallocPartialClassInstance();
  v5 = v0[1];

  return v5();
}

id sub_100029930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCExportSessionComposedAssetWriter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(sub_100024720(&unk_10005CB80, &qword_10003FAC0) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[11] = v11;
  v12 = *(v11 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100029B34, 0, 0);
}

uint64_t sub_100029B34()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = objc_opt_self();
  v0[16] = v4;
  v5 = [v4 defaultManager];
  v6 = RCRecordingsDirectoryURL();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = *(v3 + 8);
  v0[17] = v10;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  v0[2] = 0;
  v11 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v9 create:1 error:v0 + 2];

  v12 = v0[2];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  if (v11)
  {
    v16 = v0[10];
    v29 = v0[13];
    v30 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    v31 = v0[4];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v12;

    UUID.init()();
    UUID.uuidString.getter();
    (*(v18 + 8))(v16, v17);
    URL.appendingPathComponent(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathExtension(_:)();

    v10(v14, v30);
    v20 = *(v31 + OBJC_IVAR____TtC10voicememod34RCExportSessionComposedAssetWriter_exportSession);
    v21 = async function pointer to AVAssetExportSession.export(to:as:isolation:)[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_100029E60;
    v23 = v0[13];

    return AVAssetExportSession.export(to:as:isolation:)(v23, AVFileTypeAppleM4A, 0, 0);
  }

  else
  {
    v24 = v0[10];
    v25 = v0[7];
    v26 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100029E60()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_10002A19C;
  }

  else
  {
    v3 = sub_100029FA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100029FA0()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[5];
  (*(v1 + 16))(v3, v0[13], v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4(v3, 0);
  v6 = v0[15];
  v5 = v0[16];
  sub_100028ED4(v0[7], &unk_10005CB80, &qword_10003FAC0);
  v7 = [v5 defaultManager];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v0[3] = 0;
  LODWORD(v1) = [v7 removeItemAtURL:v9 error:v0 + 3];

  v11 = v0[3];
  if (v1)
  {
    v12 = v11;
  }

  else
  {
    v13 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[11];
  v19 = v0[7];
  v15(v0[13], v18);
  v15(v17, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10002A19C()
{
  v1 = v0[20];
  v2 = v0[7];
  v3 = v0[5];
  (*(v0[12] + 56))(v2, 1, 1, v0[11]);
  swift_errorRetain();
  v3(v2, v1);

  v5 = v0[15];
  v4 = v0[16];
  sub_100028ED4(v0[7], &unk_10005CB80, &qword_10003FAC0);
  v6 = [v4 defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v0[3] = 0;
  LODWORD(v3) = [v6 removeItemAtURL:v8 error:v0 + 3];

  v10 = v0[3];
  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v12 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[11];
  v18 = v0[7];
  v14(v0[13], v17);
  v14(v16, v17);

  v19 = v0[1];

  return v19();
}

BOOL sub_10002A4D8(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = static Hasher._hash(seed:bytes:count:)();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void sub_10002A584(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024720(&qword_10005CB78, &qword_10003F970);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = objc_opt_self();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_10002C6D0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002A780;
  aBlock[3] = &unk_100056AE0;
  v12 = _Block_copy(aBlock);
  v13 = AVAssetExportPresetPassthrough;

  [v9 determineCompatibilityOfExportPreset:v13 withAsset:a2 outputFileType:AVFileTypeAppleM4A completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_10002A780(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10002A958(void *a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  objc_allocWithZone(type metadata accessor for RCExportSessionComposedAssetWriter());
  v4 = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_10002AA1C;

  return sub_10002948C(v4);
}

uint64_t sub_10002AA1C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10002AB9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100024814;

  return sub_10002A958(v2, v3);
}

uint64_t sub_10002AC50(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100026AC4;

  return v7();
}

uint64_t sub_10002AD38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100024814;

  return v8();
}

uint64_t sub_10002AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100024720(&qword_10005CB50, &qword_10003F510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_10002B10C(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100028ED4(v11, &qword_10005CB50, &qword_10003F510);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_100028ED4(a3, &qword_10005CB50, &qword_10003F510);

    return v22;
  }

LABEL_8:
  sub_100028ED4(a3, &qword_10005CB50, &qword_10003F510);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10002B10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024720(&qword_10005CB50, &qword_10003F510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B17C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B274;

  return v7(a1);
}

uint64_t sub_10002B274()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002B36C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100026AC4;

  return sub_10002B17C(a1, v5);
}

uint64_t sub_10002B424(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024720(&qword_10005CB70, &qword_10003F968);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10002B64C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002B424(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10002B770();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10002B8B0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10002B770()
{
  v1 = v0;
  sub_100024720(&qword_10005CB70, &qword_10003F968);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10002B8B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100024720(&qword_10005CB70, &qword_10003F968);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}