@interface RCSavedRecordingsModel
+ (id)_SHA256DataForPath:(id)path;
+ (id)recoveredRecordingTitleFromDate:(id)date;
- (BOOL)reloadDemoContent:(id *)content;
- (id)performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs:(id)ls andFinalizingCompositions:(id)compositions restoreFileFutures:(BOOL)futures;
- (id)repairCompositionDecomposedFragmentMetadataIfNecessary:(id)necessary;
- (id)updateRecordingForFinalizedCompositionAndMigrateIfNecessary:(id)necessary;
- (void)_logMissingAudioFutureIfNeeded:(id)needed;
- (void)_performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:(id)ls fileManager:(id)manager URLsInSavedRecordingsDirectory:(id)directory;
- (void)_performOrphanRecoveryAndCleanupOfCompositionsWithInUseComposedAVURLs:(id)ls fileManager:(id)manager URLsInSavedRecordingsDirectory:(id)directory;
@end

@implementation RCSavedRecordingsModel

- (id)performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs:(id)ls andFinalizingCompositions:(id)compositions restoreFileFutures:(BOOL)futures
{
  lsCopy = ls;
  compositionsCopy = compositions;
  v10 = OSLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing data validation", buf, 2u);
  }

  v11 = objc_opt_new();
  v12 = [_RCURLSet setWithURLs:lsCopy];
  v13 = +[NSFileManager defaultManager];
  v14 = +[RCSavedRecordingsModel savedRecordingsDirectory];
  v15 = [NSURL fileURLWithPath:v14];

  v16 = objc_opt_new();
  *buf = 0;
  v36 = buf;
  v37 = 0x2020000000;
  v38 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100003CB8;
  v28[3] = &unk_100055260;
  v28[4] = self;
  v17 = v11;
  v29 = v17;
  v33 = buf;
  v18 = v12;
  v30 = v18;
  futuresCopy = futures;
  v19 = v16;
  v31 = v19;
  v20 = compositionsCopy;
  v32 = v20;
  [(RCSavedRecordingsModel *)self enumerateExistingRecordingsWithBlock:v28];
  if (v36[24] == 1)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100004428;
    v27[3] = &unk_100055288;
    v27[4] = self;
    [v17 enumerateKeysAndObjectsUsingBlock:v27];
  }

  v21 = +[NSFileManager defaultManager];
  v22 = v15;
  v23 = [v21 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:1 error:0];

  [(RCSavedRecordingsModel *)self _performOrphanRecoveryAndCleanupOfCompositionsWithInUseComposedAVURLs:v18 fileManager:v13 URLsInSavedRecordingsDirectory:v23];
  [(RCSavedRecordingsModel *)self _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:v18 fileManager:v13 URLsInSavedRecordingsDirectory:v23];
  v24 = OSLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *v39 = 136315138;
    v40 = "[RCSavedRecordingsModel(RCSOrphanHandling) performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs:andFinalizingCompositions:restoreFileFutures:]";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s -- performOrphanRecoveryAndCleanupWithExternallyInUseComposedAVURLs: done.", v39, 0xCu);
  }

  v25 = v19;
  _Block_object_dispose(buf, 8);

  return v25;
}

- (void)_performOrphanRecoveryAndCleanupOfCompositionsWithInUseComposedAVURLs:(id)ls fileManager:(id)manager URLsInSavedRecordingsDirectory:(id)directory
{
  lsCopy = ls;
  managerCopy = manager;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = directory;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v9)
  {
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        pathExtension = [v12 pathExtension];
        v14 = [pathExtension isEqualToString:@"composition"];

        if (v14)
        {
          v15 = v12;
          v30 = 0;
          v31 = &v30;
          v32 = 0x3032000000;
          v33 = sub_100001D6C;
          v34 = sub_1000048DC;
          v35 = [RCComposition compositionLoadedFromCompositionBundleURL:v15];
          composedAVURL = [v31[5] composedAVURL];
          if (([lsCopy containsURL:composedAVURL] & 1) == 0)
          {
            if ([v31[5] fileSizeOfAssets])
            {
              v17 = OSLogForCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                lastPathComponent = [v15 lastPathComponent];
                *buf = 136315394;
                v41 = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfCompositionsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
                v42 = 2112;
                v43 = lastPathComponent;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s -- Found orphaned composition (%@) with assets, recover it by inserting it into the database.", buf, 0x16u);
              }

              v19 = [(RCSavedRecordingsModel *)self repairCompositionDecomposedFragmentMetadataIfNecessary:v31[5]];
              v20 = v31[5];
              v31[5] = v19;

              v26[0] = _NSConcreteStackBlock;
              v26[1] = 3221225472;
              v26[2] = sub_1000048E4;
              v26[3] = &unk_1000552B0;
              v21 = composedAVURL;
              selfCopy = self;
              v29 = &v30;
              v27 = v21;
              [(RCSavedRecordingsModel *)self performWithSavingDisabled:v26];
              [v31[5] saveMetadataToDefaultLocation];
              [(RCSavedRecordingsModel *)self saveIfNecessary];
              [lsCopy addURL:v21];
            }

            else
            {
              v22 = OSLogForCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                lastPathComponent2 = [v15 lastPathComponent];
                *buf = 136315394;
                v41 = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfCompositionsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
                v42 = 2112;
                v43 = lastPathComponent2;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s -- Found orphaned composition (%@) with no assets, deleting it.", buf, 0x16u);
              }

              [managerCopy removeItemAtURL:v15 error:0];
            }
          }

          _Block_object_dispose(&v30, 8);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v9);
  }
}

- (void)_performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:(id)ls fileManager:(id)manager URLsInSavedRecordingsDirectory:(id)directory
{
  lsCopy = ls;
  managerCopy = manager;
  directoryCopy = directory;
  v11 = +[NSMutableDictionary dictionary];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_10000570C;
  v77[3] = &unk_1000552D8;
  v77[4] = self;
  v69 = managerCopy;
  v78 = v69;
  v12 = lsCopy;
  v79 = v12;
  v58 = v11;
  v80 = v58;
  v71 = objc_retainBlock(v77);
  v59 = directoryCopy;
  v13 = [directoryCopy sortedArrayUsingComparator:&stru_100055318];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v74;
    selfCopy = self;
    v68 = v12;
    v70 = v13;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v74 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v73 + 1) + 8 * i);
        pathExtension = [v18 pathExtension];
        v20 = [RCCaptureFormat supportsFileExtension:pathExtension];

        if (v20 && ([v12 containsURL:v18] & 1) == 0)
        {
          v21 = v18;
          v22 = OSLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            lastPathComponent = [v21 lastPathComponent];
            LODWORD(buf.value) = 136315394;
            *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
            LOWORD(buf.flags) = 2112;
            *(&buf.flags + 2) = lastPathComponent;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s -- Found orphaned composed AVURL: '%@'", &buf, 0x16u);
          }

          v24 = (v71[2])(v71, v21);
          v25 = OSLogForCategory();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
          if (v24)
          {
            if (v26)
            {
              lastPathComponent2 = [v21 lastPathComponent];
              LODWORD(buf.value) = 136315394;
              *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = lastPathComponent2;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s -- Orphaned composed AVURL: '%@' does not have a duplicate in the database or unsynced assets manifest.  Attempting to insert into the database...", &buf, 0x16u);
            }

            v28 = [AVURLAsset assetWithURL:v21];
            path2 = v28;
            if (v28)
            {
              [v28 duration];
              Seconds = CMTimeGetSeconds(&buf);
              if (Seconds > 0.0)
              {
                v31 = Seconds;
                rc_recordingMetadata = [path2 rc_recordingMetadata];
                v66 = [rc_recordingMetadata objectForKeyedSubscript:@"uniqueID"];
                v33 = [rc_recordingMetadata objectForKeyedSubscript:@"date"];
                v34 = v33;
                if (v33)
                {
                  v35 = v33;
                }

                else
                {
                  v35 = sub_100004CB8(v21);
                }

                v67 = v35;

                v40 = [rc_recordingMetadata objectForKeyedSubscript:@"title"];
                v41 = v40;
                if (v40)
                {
                  v42 = v40;
                }

                else
                {
                  v42 = [objc_opt_class() recoveredRecordingTitleFromDate:v67];
                }

                v65 = v42;

                v43 = OSLogForCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  lastPathComponent3 = [v21 lastPathComponent];
                  LODWORD(buf.value) = 136315394;
                  *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
                  LOWORD(buf.flags) = 2112;
                  *(&buf.flags + 2) = lastPathComponent3;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%s -- Found orphaned AVURL (%@) without .composition, recover it by inserting it into the database.", &buf, 0x16u);
                }

                path = [v21 path];
                v72 = 0;
                v46 = [(RCSavedRecordingsModel *)self insertRecordingWithAudioFile:path duration:v67 date:v65 customTitleBase:v66 uniqueID:&v72 error:v31];
                v63 = v72;

                v64 = v46;
                if (v46)
                {
                  v47 = OSLogForCategory();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                  {
                    lastPathComponent4 = [v21 lastPathComponent];
                    title = [v64 title];
                    LODWORD(buf.value) = 136315650;
                    *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
                    LOWORD(buf.flags) = 2112;
                    *(&buf.flags + 2) = lastPathComponent4;
                    HIWORD(buf.epoch) = 2112;
                    v82 = title;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s -- Orphaned composed AVURL: inserted '%@' into the database with title '%@'", &buf, 0x20u);
                  }

                  v50 = [rc_recordingMetadata objectForKeyedSubscript:@"musicMemoStarRating"];
                  v51 = [rc_recordingMetadata objectForKeyedSubscript:@"musicMemoTags"];
                  v52 = [rc_recordingMetadata objectForKeyedSubscript:@"musicMemoTextNote"];
                  v53 = v52;
                  v62 = v50;
                  if (v50 || v51 || v52)
                  {
                    v54 = OSLogForCategory();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                    {
                      lastPathComponent5 = [v21 lastPathComponent];
                      LODWORD(buf.value) = 136315394;
                      *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
                      LOWORD(buf.flags) = 2112;
                      *(&buf.flags + 2) = lastPathComponent5;
                      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s -- orphaned AVURL (%@) was a Music Memo", &buf, 0x16u);
                    }

                    [v64 setMusicMemo:1];
                    [(RCSavedRecordingsModel *)selfCopy saveIfNecessary];
                  }

                  [v68 addURL:v21];

                  self = selfCopy;
                  goto LABEL_47;
                }

                v55 = OSLogForCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf.value) = 136315394;
                  *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
                  LOWORD(buf.flags) = 2112;
                  *(&buf.flags + 2) = v63;
                  _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%s -- Failed to insert recording with error: %@", &buf, 0x16u);
                }

LABEL_44:
                v56 = OSLogForCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                {
                  lastPathComponent6 = [v21 lastPathComponent];
                  LODWORD(buf.value) = 136315394;
                  *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
                  LOWORD(buf.flags) = 2112;
                  *(&buf.flags + 2) = lastPathComponent6;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s -- Orphaned composed AVURL: '%@' unable to insert orphaned asset into database.  Deleting!", &buf, 0x16u);
                }

                rc_recordingMetadata = [v21 path];
                [v69 removeItemAtPath:rc_recordingMetadata error:0];
LABEL_47:

                v12 = v68;
LABEL_48:

                v13 = v70;
                continue;
              }

              rc_recordingMetadata = OSLogForCategory();
              if (!os_log_type_enabled(rc_recordingMetadata, OS_LOG_TYPE_INFO))
              {
                goto LABEL_44;
              }

              lastPathComponent7 = [v21 lastPathComponent];
              LODWORD(buf.value) = 136315394;
              *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = lastPathComponent7;
              v38 = rc_recordingMetadata;
              v39 = "%s -- Orphaned composed AVURL: unable to insert '%@' into the database because it's duration is 0";
            }

            else
            {
              rc_recordingMetadata = OSLogForCategory();
              if (!os_log_type_enabled(rc_recordingMetadata, OS_LOG_TYPE_INFO))
              {
                goto LABEL_44;
              }

              lastPathComponent7 = [v21 lastPathComponent];
              LODWORD(buf.value) = 136315394;
              *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = lastPathComponent7;
              v38 = rc_recordingMetadata;
              v39 = "%s -- Orphaned composed AVURL: '%@' unable to load AVURLAsset";
            }

            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, v39, &buf, 0x16u);

            goto LABEL_44;
          }

          if (v26)
          {
            lastPathComponent8 = [v21 lastPathComponent];
            LODWORD(buf.value) = 136315394;
            *(&buf.value + 4) = "[RCSavedRecordingsModel(RCSOrphanHandling) _performOrphanRecoveryAndCleanupOfBareAssetsWithInUseComposedAVURLs:fileManager:URLsInSavedRecordingsDirectory:]";
            LOWORD(buf.flags) = 2112;
            *(&buf.flags + 2) = lastPathComponent8;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s -- Orphaned composed AVURL: '%@' already has a duplicate in database or unsynced assets manifest.  Deleting!", &buf, 0x16u);
          }

          path2 = [v21 path];
          [v69 removeItemAtPath:path2 error:0];
          goto LABEL_48;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v15);
  }
}

- (id)updateRecordingForFinalizedCompositionAndMigrateIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  savedRecordingUUID = [necessaryCopy savedRecordingUUID];
  if (savedRecordingUUID)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100001D6C;
    v18 = sub_1000048DC;
    v19 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100005CE4;
    v9[3] = &unk_100055340;
    v10 = necessaryCopy;
    selfCopy = self;
    v12 = savedRecordingUUID;
    v13 = &v14;
    [(RCSavedRecordingsModel *)self performBlockAndWait:v9];
    v6 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100034860(v7);
    }

    v6 = 0;
  }

  return v6;
}

- (id)repairCompositionDecomposedFragmentMetadataIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100001D6C;
  v12 = sub_1000048DC;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000622C;
  v7[3] = &unk_100055368;
  v7[4] = self;
  v7[5] = &v8;
  [necessaryCopy rcs_repairDecomposedFragmentMetadataIfNecessary:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (id)_SHA256DataForPath:(id)path
{
  pathCopy = path;
  v4 = objc_autoreleasePoolPush();
  v5 = [NSURL fileURLWithPath:pathCopy];
  v8 = 0;
  if ([v5 getResourceValue:&v8 forKey:NSURLFileSizeKey error:0] && objc_msgSend(v8, "longLongValue") >= 1)
  {
    v6 = RCComputeFileDigest();
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

- (void)_logMissingAudioFutureIfNeeded:(id)needed
{
  neededCopy = needed;
  syncedAudioFuture = [neededCopy syncedAudioFuture];

  if (!syncedAudioFuture)
  {
    v5 = [neededCopy url];
    v6 = [v5 checkResourceIsReachableAndReturnError:0];

    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [NSNumber numberWithBool:v6];
      uuid = [neededCopy uuid];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = uuid;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recording audio file exists = %@, uuid = %@", &v10, 0x16u);
    }
  }
}

+ (id)recoveredRecordingTitleFromDate:(id)date
{
  v3 = RCLocalizedRecordingDateWithOptions();
  v4 = OSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[RCSavedRecordingsModel(RCSOrphanHandling) recoveredRecordingTitleFromDate:]";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s -- Orphaned file title could not be inferred, using %@", &v6, 0x16u);
  }

  return v3;
}

- (BOOL)reloadDemoContent:(id *)content
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100001DDC;
  v10 = sub_10001E814;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001E81C;
  v5[3] = &unk_100055A70;
  v5[4] = self;
  v5[5] = &v6;
  [(RCSavedRecordingsModel *)self performBlockAndWait:v5];
  if (content)
  {
    *content = v7[5];
  }

  _Block_object_dispose(&v6, 8);

  return 1;
}

@end