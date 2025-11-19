void sub_2074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_209C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndex:a3];
  LOBYTE(v7) = [PLSLibraryChangeSnapshot string:v8 equalsString:v9];

  if ((v7 & 1) == 0)
  {
    v10 = [NSString stringWithFormat:@"album assetUUID not equal"];
    v11 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%@", &v12, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_4660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4694(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectAtIndex:a3];
  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 isEqualToAlbum:v8];
    }

    else
    {
      v10 = [v7 isEqualToEvent:v8];
    }

    *(*(*(a1 + 40) + 8) + 24) = v10;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v11 = [NSString stringWithFormat:@"snapshot albums not equal"];
    v12 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%@", &v13, 0xCu);
    }

    *a4 = 1;
  }
}

void sub_481C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 objectForKey:a2];
  LOBYTE(a2) = [v9 isEquivalentTo:v8];

  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

int64_t sub_546C(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6 options:65];
  return v7;
}

void sub_7798(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(*(a1 + 32) + 24) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PLManagedAlbum albumWithUUID:v10 inLibrary:*(a1 + 40)];
        v12 = [v11 objectID];
        v13 = [v12 URIRepresentation];

        if (v13)
        {
          [*(*(a1 + 32) + 96) setObject:v13 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

void sub_828C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 path];
    v6 = [v5 isEqualToString:*(a1 + 32)];

    if (v6)
    {
      [v4 setStatus:1];
      v7 = *(a1 + 40);
      v9 = *(a1 + 32);
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [v7 _addPaths:v8 toRestoreContextFilesForKey:@"kPLSyncRestoreContextUnrecoverableFilesKey"];

      [*(a1 + 40) _writeRestoreContext];
    }
  }
}

void sub_8378(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    v3 = [v5 path];
    v4 = [v3 isEqualToString:*(a1 + 32)];

    if (v4)
    {
      [v5 setStatus:2];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void sub_8790(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PLSyncGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "_saveOutstandingSyncJobs: completed call to saveSyncedAssets", buf, 2u);
  }

  dispatch_group_leave(*(*(a1 + 32) + 48));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 finishedBlock];

        if (v12)
        {
          v13 = [v11 finishedBlock];
          (v13)[2](v13, v4);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }
}

void sub_94F4(uint64_t a1)
{
  v1 = [*(a1 + 32) syncProgressAlbum];
  [v1 reducePendingItemsCountBy:1];
}

void sub_953C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = v5;
  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 assetUUIDs];
    v9 = [*(a1 + 32) identifier];
    v10 = [v8 containsObject:v9];

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = *(a1 + 40);
    v12 = v7;
    v13 = [v11 eventUUID];
    v14 = [v12 uuid];

    LODWORD(v12) = [v13 isEqualToString:v14];
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v15 = [*(a1 + 48) _albumURIForAlbumUUID:v16];
  if (v15)
  {
    [*(a1 + 56) addObject:v15];
  }

LABEL_9:
}

uint64_t sub_98A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_98BC(uint64_t a1)
{
  v132 = 0;
  v62 = objc_alloc_init(MBManager);
  v2 = [v62 restoreFilesForDomain:@"CameraRollDomain" error:&v132];
  v61 = v132;
  if (v61)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v4 = PLSyncGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v61;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Could not retrieve the list of files backed up. Error = %{public}@", buf, 0xCu);
    }
  }

  v5 = PLSyncGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v2 count];
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "<===----- The list of backedup files in the CameraRollDomain (%d total):", buf, 8u);
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = v2;
  v7 = [obj countByEnumeratingWithState:&v128 objects:v137 count:16];
  if (v7)
  {
    v8 = *v129;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v129 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v128 + 1) + 8 * i) path];
        v11 = PLSyncGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v10;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "   %{public}@", buf, 0xCu);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v128 objects:v137 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) _loadRestoreContext];
  v12 = [*(a1 + 40) managedObjectContext];
  v63 = [PLManagedAsset pathAndDateDictionariesForAllIncompleteAssetsInManagedObjectContext:v12];

  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = 0;
  v13 = *(a1 + 32);
  v118 = _NSConcreteStackBlock;
  v119 = 3221225472;
  v120 = sub_A5E8;
  v121 = &unk_249A8;
  v123 = &v124;
  v122 = v13;
  PLSafeRunWithUnfairLock();
  if (v125[3])
  {
    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v135 = sub_98A4;
    *&v136 = sub_98B4;
    *(&v136 + 1) = 0;
    v14 = *(a1 + 32);
    v77 = _NSConcreteStackBlock;
    v78 = 3221225472;
    v79 = sub_A8B4;
    v80 = &unk_24AD8;
    v81 = v14;
    v82 = &v84;
    v83 = buf;
    PLSafeRunWithUnfairLock();
    if (*(v85 + 24) != 1)
    {
      goto LABEL_34;
    }

    if (!*(*&buf[8] + 40))
    {
      goto LABEL_24;
    }

    v15 = [*(a1 + 40) managedObjectContext];
    v16 = [v15 storeUUID];

    v17 = [v16 isEqualToString:*(*&buf[8] + 40)];
    *(v85 + 24) = v17;

    if (v85[3])
    {
LABEL_24:
      v18 = PLSyncGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v76 = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Resuming restore with incomplete files from the database", v76, 2u);
      }

      v19 = *(a1 + 32);
      v20 = [v63 allKeys];
      v64 = [v19 _restorePathsFromIncompleteAssetUUIDs:v20 inLibrary:*(a1 + 40)];
    }

    else
    {
LABEL_34:
      v30 = PLSyncGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v76 = 0;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Resuming restore without using the database for the asset list", v76, 2u);
      }

      v64 = [*(a1 + 32) _restorePathsFromBackupList:obj];
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v84, 8);
  }

  else
  {
    v21 = PLSyncGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "First time attempting this restore", buf, 2u);
    }

    [*(a1 + 32) _createRestoreContext];
    v22 = *(a1 + 32);
    v113 = _NSConcreteStackBlock;
    v114 = 3221225472;
    v115 = sub_A604;
    v116 = &unk_24738;
    v117 = v22;
    PLSafeRunWithUnfairLock();
    v23 = *(a1 + 32);
    v24 = [v63 allKeys];
    v25 = [v23 _restorePathsFromIncompleteAssetUUIDs:v24 inLibrary:*(a1 + 40)];

    v26 = [*(a1 + 32) _restorePathsFromBackupList:obj];
    if ([v25 count] && !objc_msgSend(obj, "count"))
    {
      v31 = PLSyncGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [v25 count];
        *buf = 67109120;
        *&buf[4] = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Relying on restoring incomplete assets from the database (%d), failed to get the restore files from mobile backup", buf, 8u);
      }

      v33 = [*(a1 + 40) managedObjectContext];
      v34 = [v33 storeUUID];

      v35 = v25;
      v36 = *(a1 + 32);
      v106 = _NSConcreteStackBlock;
      v107 = 3221225472;
      v108 = sub_A69C;
      v109 = &unk_248B8;
      v110 = v36;
      v64 = v35;
      v111 = v64;
      v112 = v34;
      PLSafeRunWithUnfairLock();
    }

    else
    {
      v27 = PLSyncGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Using the restore files from mobile backup", buf, 2u);
      }

      v28 = v26;
      v29 = *(a1 + 32);
      v100 = _NSConcreteStackBlock;
      v101 = 3221225472;
      v102 = sub_A768;
      v103 = &unk_24868;
      v104 = v29;
      v64 = v28;
      v105 = v64;
      PLSafeRunWithUnfairLock();
    }

    v37 = [v62 restoreInfo];
    if ([v37 wasCloudRestore])
    {
      v38 = [v37 backupBuildVersion];
      if ([v38 length])
      {
        v39 = *(a1 + 32);
        v94 = _NSConcreteStackBlock;
        v95 = 3221225472;
        v96 = sub_A7FC;
        v97 = &unk_24868;
        v98 = v39;
        v99 = v38;
        PLSafeRunWithUnfairLock();
        v40 = [[PLBuildVersion alloc] initWithString:v99];
        v41 = [[PLBuildVersion alloc] initWithString:@"13C1"];
        v42 = [v40 compareBuildVersion:v41 withPrecision:2] == -1;
      }

      else
      {
        v42 = 1;
      }
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a1 + 32);
    v88 = _NSConcreteStackBlock;
    v89 = 3221225472;
    v90 = sub_A810;
    v91 = &unk_24B00;
    v92 = v43;
    v93 = v42;
    PLSafeRunWithUnfairLock();
    *(*(a1 + 32) + 120) = v42;
    [*(a1 + 32) _writeRestoreContext];
  }

  v44 = *(a1 + 32);
  v71 = _NSConcreteStackBlock;
  v72 = 3221225472;
  v73 = sub_A93C;
  v74 = &unk_24738;
  v75 = v44;
  PLSafeRunWithUnfairLock();
  [*(a1 + 32) _populateRestorePathGroupsAndUpdateValidatedRestorePaths:v64];
  v45 = [*(a1 + 32) _getAssetsToRestoreFromPaths:v64];
  [*(a1 + 32) _sortATAssetsToRestore:v45 withUUIDPathDict:v63];
  [*(a1 + 32) _prioritizeAssets:v45];
  v46 = [v45 copy];
  v47 = *(*(a1 + 48) + 8);
  v48 = *(v47 + 40);
  *(v47 + 40) = v46;

  v49 = PLSyncGetLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = [*(*(*(a1 + 48) + 8) + 40) count];
    *buf = 67109120;
    *&buf[4] = v50;
    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "ATAssets to restore [%d]:", buf, 8u);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = *(*(*(a1 + 48) + 8) + 40);
  v51 = [v65 countByEnumeratingWithState:&v67 objects:v133 count:16];
  if (v51)
  {
    v52 = *v68;
    do
    {
      for (j = 0; j != v51; j = j + 1)
      {
        if (*v68 != v52)
        {
          objc_enumerationMutation(v65);
        }

        v54 = *(*(&v67 + 1) + 8 * j);
        v55 = PLSyncGetLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = v45;
          if ([v54 isPrioritized])
          {
            v57 = @"Priority ";
          }

          else
          {
            v57 = &stru_24CF0;
          }

          if ([v54 isRestore])
          {
            v58 = @"Restore";
          }

          else
          {
            v58 = @"Sync";
          }

          v59 = [v54 dataclass];
          v60 = [v54 path];
          *buf = 138544130;
          *&buf[4] = v57;
          *&buf[12] = 2114;
          *&buf[14] = v58;
          *&buf[22] = 2114;
          v135 = v59;
          LOWORD(v136) = 2114;
          *(&v136 + 2) = v60;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "   %{public}@%{public}@ %{public}@ %{public}@", buf, 0x2Au);

          v45 = v56;
        }
      }

      v51 = [v65 countByEnumeratingWithState:&v67 objects:v133 count:16];
    }

    while (v51);
  }

  _Block_object_dispose(&v124, 8);
}

void sub_A538(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreKeyToAssetGroup];
  v3 = [v2 count];

  if (v3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  v5 = [*(a1 + 40) otaRestoreProgressAlbum];
  if (v3 != [v5 pendingItemsCount])
  {
    [v5 setPendingItemsCount:v3];
  }

  if ([v5 pendingItemsType] != v4)
  {
    [v5 setPendingItemsType:v4];
  }
}

void sub_A604(uint64_t a1)
{
  v4 = PLCompleteDateFormatter();
  v2 = +[NSDate date];
  v3 = [v4 stringFromDate:v2];
  [*(*(a1 + 32) + 80) setObject:v3 forKeyedSubscript:@"kPLSyncRestoreContextBackgroundPhaseStartDateKey"];
}

id sub_A69C(uint64_t a1)
{
  [*(*(a1 + 32) + 80) setObject:@"Database" forKeyedSubscript:@"kPLSyncRestoreContextAssetsSourceKey"];
  v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
  [*(*(a1 + 32) + 80) setObject:v2 forKeyedSubscript:@"kPLSyncRestoreContextAssetsCountKey"];

  result = [*(*(a1 + 32) + 80) setObject:&__kCFBooleanTrue forKeyedSubscript:@"kPLSyncRestoreContextUseDatabaseKey"];
  if (*(a1 + 48))
  {
    v4 = *(*(a1 + 32) + 80);

    return [v4 setObject:? forKeyedSubscript:?];
  }

  return result;
}

void sub_A768(uint64_t a1)
{
  [*(*(a1 + 32) + 80) setObject:@"MobileBackup" forKeyedSubscript:@"kPLSyncRestoreContextAssetsSourceKey"];
  v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
  [*(*(a1 + 32) + 80) setObject:v2 forKeyedSubscript:@"kPLSyncRestoreContextAssetsCountKey"];
}

void sub_A810(uint64_t a1)
{
  v3 = +[PLBuildVersion currentBuildVersionString];
  if ([v3 length])
  {
    [*(*(a1 + 32) + 80) setObject:v3 forKeyedSubscript:@"kPLSyncRestoreContextRestoreBuildVersion"];
  }

  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  [*(*(a1 + 32) + 80) setObject:v2 forKeyedSubscript:@"PLSyncRestoreContextFixAddedDatesKey"];
}

uint64_t sub_A8B4(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:@"kPLSyncRestoreContextUseDatabaseKey"];
  *(*(a1[5] + 8) + 24) = [v2 BOOLValue];

  v3 = [*(a1[4] + 80) objectForKeyedSubscript:@"kPLSyncRestoreContextUseDatabaseUUIDKey"];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

uint64_t sub_A93C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:@"PLSyncRestoreContextFixAddedDatesKey"];
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  *(*(a1 + 32) + 120) = v3;

  return _objc_release_x1();
}

void sub_AA78(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  [*(*(a1 + 32) + 80) setObject:v3 forKeyedSubscript:*(a1 + 40)];

LABEL_6:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a1 + 48);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (([v2 containsObject:{v10, v11}] & 1) == 0)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void sub_AC58(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    v3 = [v2 count];
    v4 = PLSyncGetLog();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        v6 = "Writing restore context";
LABEL_9:
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      }
    }

    else if (v5)
    {
      *buf = 0;
      v6 = "Writing empty restore context";
      goto LABEL_9;
    }

    v8 = *(*(a1 + 32) + 80);
    v15 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:100 options:0 error:&v15];
    v10 = v15;
    if (v9)
    {
      v11 = [*(a1 + 32) _pathToRestoreContext];
      v14 = v10;
      v12 = [v9 writeToFile:v11 options:1073741825 error:&v14];
      v7 = v14;

      if ((v12 & 1) == 0)
      {
        v13 = PLSyncGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v17 = v7;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Failed to write _restoreContext %{public}@", buf, 0xCu);
        }
      }

      [PLFileUtilities changeFileOwnerToMobileAtPath:v11 error:0];
    }

    else
    {
      v11 = PLSyncGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Failed to serialize _restoreContext %{public}@", buf, 0xCu);
      }

      v7 = v10;
    }

    goto LABEL_20;
  }

  v7 = PLSyncGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Failed to write nil _restoreContext", buf, 2u);
  }

LABEL_20:
}

id sub_AF2C(uint64_t a1)
{
  if (*(*(a1 + 32) + 80))
  {
    v2 = PLSyncGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Ignoring request to load restore context (already exists)", v12, 2u);
    }
  }

  else
  {
    v3 = [NSMutableDictionary alloc];
    v4 = [*(a1 + 32) _pathToRestoreContext];
    v2 = [v3 initWithContentsOfFile:v4];

    v5 = [v2 count];
    v6 = PLSyncGetLog();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Loaded restore context", buf, 2u);
      }

      v8 = *(a1 + 32);
      v9 = v2;
      v6 = *(v8 + 80);
      *(v8 + 80) = v9;
    }

    else if (v7)
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Unable to load restore context", v13, 2u);
    }
  }

  v10 = *(a1 + 32);
  return [objc_opt_class() _logRestoreContext:*(v10 + 80)];
}

void sub_B100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

uint64_t sub_B180(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  return _objc_release_x1();
}

void sub_B798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_B814(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:@"kPLSyncRestoreContextRestoredFilesKey"];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 80) objectForKeyedSubscript:@"kPLSyncRestoreContextUnrecoverableFilesKey"];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

void sub_B984(uint64_t a1, uint64_t a2)
{
  v3 = [PLManagedAsset assetWithUUID:a2 inLibrary:*(a1 + 32)];
  v4 = [v3 filePathsWithoutThumbs];
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

        [*(a1 + 40) addObject:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_BEE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"path"];
  v8 = [v6 objectForKeyedSubscript:@"date"];

  v9 = [*(a1 + 32) _restoreGroupKeyFromATAssetFilePath:v7];
  v10 = [*(a1 + 40) objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    [v10 setUUID:v5];
    [v11 setDate:v8];
  }

  else
  {
    v12 = PLSyncGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to find sync asset group for path: %@", &v13, 0xCu);
    }
  }
}

uint64_t sub_C03C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 path];
  v7 = [v5 path];

  v8 = [*(a1 + 32) _restoreGroupKeyFromATAssetFilePath:v6];
  v9 = [*(a1 + 32) _restoreGroupKeyFromATAssetFilePath:v7];
  v10 = [*(a1 + 40) objectForKeyedSubscript:v8];
  v11 = [*(a1 + 40) objectForKeyedSubscript:v9];
  v12 = [v10 date];
  v13 = [v11 date];
  v14 = v13;
  if (!v12 || !v13)
  {
    if (v12)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    if (v12 | v13)
    {
      goto LABEL_13;
    }

    v16 = v9;
    v17 = v8;
    goto LABEL_11;
  }

  if (v10 == v11)
  {
LABEL_12:
    v15 = [v7 compare:v6];
    goto LABEL_13;
  }

  v15 = [v13 compare:v12];
  if (!v15)
  {
    v16 = v7;
    v17 = v6;
LABEL_11:
    v15 = [v16 compare:v17];
    if (!v15)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return v15;
}

void sub_C5C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(PLSyncAssetGroup);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  [(PLSyncAssetGroup *)v7 setAssetPairs:v8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [*(a1 + 40) setObject:v5 forKeyedSubscript:{v14, v16}];
        v15 = [[PLSyncFileStatusPair alloc] initWithPath:v14];
        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

void sub_D1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_D248(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:@"kPLSyncRestoreContextBackgroundPhaseEndDateKey"];

  if (!v2)
  {
    v3 = PLCompleteDateFormatter();
    v4 = +[NSDate date];
    v5 = [v3 stringFromDate:v4];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(a1 + 32) + 80) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:@"kPLSyncRestoreContextBackgroundPhaseEndDateKey"];
  }

  v8 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:@"kPLSyncRestoreContextResultKey"];
  v9 = *(*(a1 + 32) + 80);
  if (*(a1 + 40))
  {
    [v9 setObject:@"ERROR" forKeyedSubscript:@"kPLSyncRestoreContextResultKey"];
    v10 = [*(a1 + 40) description];
    [*(*(a1 + 32) + 80) setObject:v10 forKeyedSubscript:@"kPLSyncRestoreContextEndedErrorKey"];

    v11 = PLSyncGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      *buf = 138543362;
      v27 = v12;
      v13 = "Photos restore ended with error: %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 12;
LABEL_8:
      _os_log_impl(&dword_0, v14, v15, v13, buf, v16);
    }
  }

  else
  {
    [v9 setObject:@"SUCCESS" forKeyedSubscript:@"kPLSyncRestoreContextResultKey"];
    v11 = PLSyncGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Photos restore ended with success";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 2;
      goto LABEL_8;
    }
  }

  v17 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:@"kPLSyncRestoreContextResultKey"];
  if (v8 && ([v8 isEqualToString:v17] & 1) == 0)
  {
    v18 = PLCompleteDateFormatter();
    v19 = +[NSDate date];
    v20 = [v18 stringFromDate:v19];

    v21 = [NSString stringWithFormat:@"old = %@, new = %@, time = %@, error = %@", v8, v17, v20, *(a1 + 40)];
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = PLSyncGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543362;
      v27 = v25;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Photos restore ended with a conflicting result: %{public}@", buf, 0xCu);
    }
  }
}

void sub_DA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_DA3C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:@"kPLSyncRestoreContextUseDatabaseKey"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue] ^ 1;
}

void sub_DBA8(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"Album"];
  v3 = [NSPredicate predicateWithFormat:@"((kind = %d) OR (kind = %d)) AND (assets.@count = 0)", 1550, 1551];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 32) managedObjectContext];
  v17 = v2;
  v5 = [v4 executeFetchRequest:v2 error:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = PLSyncGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 uuid];
          v14 = [v11 objectID];
          v15 = [v11 title];
          *buf = 138543874;
          v23 = v13;
          v24 = 2114;
          v25 = v14;
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Deleting empty sync album %{public}@ %{public}@ %@", buf, 0x20u);
        }

        [v11 delete];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v8);
  }

  v16 = PLSyncGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "_clearEmptySyncAlbums completed", buf, 2u);
  }
}

void sub_DEE8(uint64_t a1)
{
  v2 = PLSyncGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1 + 32) + 121))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "_clearPendingCounts: _syncRequested=%@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4[121])
  {
    v5 = [v4 _onDeviceAlbumsByUUID];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v5 objectForKey:*(*(&v15 + 1) + 8 * v10)];
          if ([v11 pendingItemsType] != 1 || objc_msgSend(v11, "pendingItemsCount"))
          {
            [v11 setPendingItemsType:1];
            [v11 setPendingItemsCount:0];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [*(a1 + 40) syncProgressAlbum];
    [v12 setPendingItemsType:1];

    v13 = [*(a1 + 40) syncProgressAlbum];
    [v13 setPendingItemsCount:0];
  }

  else
  {
    v5 = [*(a1 + 40) otaRestoreProgressAlbum];
    if ([v5 pendingItemsType] != 1 || objc_msgSend(v5, "pendingItemsCount"))
    {
      [v5 setPendingItemsType:1];
      [v5 setPendingItemsCount:0];
    }
  }

  v14 = PLSyncGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "_clearPendingCounts completed", buf, 2u);
  }
}

void sub_F1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_F1F4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
    v8 = [v7 albumSubclass];
    v9 = [v8 intValue];

    if (v9 == 5)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
      *a4 = 1;
    }
  }

  return _objc_release_x1();
}

void sub_F4D8(uint64_t a1)
{
  v2 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [*(*(a1 + 32) + 136) count]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v3 = *(*(a1 + 32) + 136);
  v4 = [v3 countByEnumeratingWithState:&v62 objects:v81 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v63;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v63 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v62 + 1) + 8 * i) identifier];
        [v2 addObject:v8];
        if ([v8 length])
        {
          v9 = [*(*(a1 + 32) + 152) objectForKey:v8];
          v10 = [v9 eventUUID];
          if ([v10 length])
          {
            v11 = [*(*(a1 + 32) + 24) objectForKey:v10];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [*(a1 + 32) _incrementPendingCountForContainerUUID:v10];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v62 objects:v81 count:16];
    }

    while (v5);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [*(*(a1 + 32) + 24) allKeys];
  v12 = [obj countByEnumeratingWithState:&v58 objects:v80 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v59;
    do
    {
      v15 = 0;
      v46 = v13;
      do
      {
        if (*v59 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v58 + 1) + 8 * v15);
        v17 = [*(*(a1 + 32) + 24) objectForKey:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v18 = [v17 assetUUIDs];
          v19 = [v18 countByEnumeratingWithState:&v54 objects:v79 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v55;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v55 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                if ([v2 containsObject:*(*(&v54 + 1) + 8 * j)])
                {
                  [*(a1 + 32) _incrementPendingCountForContainerUUID:v16];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v54 objects:v79 count:16];
            }

            while (v20);
          }

          v13 = v46;
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v58 objects:v80 count:16];
    }

    while (v13);
  }

  v47 = [*(a1 + 32) _onDeviceAlbumsByUUID];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v42 = [*(*(a1 + 32) + 112) allKeys];
  obja = [v42 countByEnumeratingWithState:&v50 objects:v78 count:16];
  if (obja)
  {
    v24 = *v51;
    *&v23 = 134217984;
    v40 = v23;
    v41 = *v51;
    do
    {
      for (k = 0; k != obja; k = k + 1)
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(v42);
        }

        v26 = *(*(&v50 + 1) + 8 * k);
        v27 = [v47 objectForKey:{v26, v40}];
        Value = CFDictionaryGetValue(*(*(a1 + 32) + 112), v26);
        if (Value)
        {
          v29 = Value;
          v30 = PLSyncGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [v27 localizedTitle];
            v31 = objc_opt_class();
            v44 = v31;
            v32 = [v27 _kindDescription];
            v33 = [v27 uuid];
            v43 = [v27 pendingItemsCount];
            v34 = [v27 shortObjectIDURI];
            *buf = 138413570;
            v67 = v45;
            v68 = 2114;
            v69 = v31;
            v70 = 2114;
            v71 = v32;
            v72 = 2114;
            v73 = v33;
            v74 = 2048;
            v75 = v43;
            v76 = 2114;
            v77 = v34;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Album: %@ (%{public}@,%{public}@) id=%{public}@ pendingItemsCount=%lu CD_ID=%{public}@", buf, 0x3Eu);

            v24 = v41;
          }

          v35 = PLSyncGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v40;
            v67 = v29;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "     Setting pendingItemsCount to be %lu", buf, 0xCu);
          }

          v36 = 2;
          goto LABEL_46;
        }

        if ([v27 pendingItemsType] != 1 || objc_msgSend(v27, "pendingItemsCount"))
        {
          v29 = 0;
          v36 = 1;
LABEL_46:
          [v27 setPendingItemsCount:v29];
          [v27 setPendingItemsType:v36];
        }
      }

      obja = [v42 countByEnumeratingWithState:&v50 objects:v78 count:16];
    }

    while (obja);
  }

  v37 = [*(a1 + 40) syncProgressAlbum];
  v38 = [*(a1 + 32) outstandingAssets];
  [v37 setPendingItemsCount:{objc_msgSend(v38, "count")}];

  v39 = [*(a1 + 40) syncProgressAlbum];
  [v39 setPendingItemsType:2];
}

void sub_FDD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 uuid];
    if (v9)
    {
      v10 = [v8 assetUUIDs];
      +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v10 count]);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_FF24;
      v13 = v12[3] = &unk_248E0;
      v11 = v13;
      [v10 enumerateObjectsUsingBlock:v12];
      [*(a1 + 32) setObject:v11 forKey:v9];
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_FF24(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [v4 setObject:v6 forKey:v5];
}

void sub_10038(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v6) setSyncEventOrderKey:{v4++, v7}];
        v6 = v6 + 1;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_10530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 kind];
  v6 = [v5 intValue];

  if (v6 == 15)
  {
    v11 = [*(a1 + 80) indexOfObject:v4];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = PLSyncGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v4;
        v9 = "===== ERROR ===== Didn't find Face album %@ in face album list";
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v14 = v11;
    [*(a1 + 88) addObject:v4];
    v15 = *(a1 + 96);
    goto LABEL_21;
  }

  if (v6 != 1551)
  {
    if (v6 != 1550)
    {
      v8 = PLSyncGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v4;
        v9 = "_reconcileDeviceAlbumListSortingWithAlbums found an album of an unexpected kind %@";
        v12 = v8;
        v13 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v7 = [*(a1 + 32) indexOfObject:v4];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = PLSyncGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v4;
        v9 = "===== ERROR ===== Didn't find Album %@ in album list";
LABEL_13:
        v12 = v8;
        v13 = OS_LOG_TYPE_ERROR;
LABEL_16:
        _os_log_impl(&dword_0, v12, v13, v9, &v16, 0xCu);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v14 = v7;
    [*(a1 + 40) addObject:v4];
    v15 = *(a1 + 48);
LABEL_21:
    [v15 addIndex:v14];
    goto LABEL_22;
  }

  v10 = [*(a1 + 56) indexOfObject:v4];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v10;
    [*(a1 + 64) addObject:v4];
    v15 = *(a1 + 72);
    goto LABEL_21;
  }

  v8 = PLSyncGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v4;
    v9 = "===== ERROR ===== Didn't find Event %@ in event list";
    goto LABEL_13;
  }

LABEL_17:

LABEL_22:
}

void sub_10778(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v5 uuid];

  [v4 setObject:v7 forKey:v6];
}

id sub_1080C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 uuid];
  v7 = [*(a1 + 32) objectForKey:v6];
  v8 = [v5 uuid];

  v9 = [*(a1 + 32) objectForKey:v8];
  v10 = [v7 compare:v9];

  return v10;
}

void sub_10B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10BC0(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [v9 uuid];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    v8 = [v9 uuid];
    [v6 setObject:v7 forKey:v8];
  }
}

void sub_10C68(uint64_t a1, uint64_t a2)
{
  v9 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  v4 = [v9 uuid];
  if (v4)
  {
    v5 = [*(a1 + 40) objectForKey:v4];
    v6 = v5;
    if (v5 && [v5 intValue] != a2)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v7 = *(a1 + 40);
      v8 = [NSNumber numberWithUnsignedInteger:a2];
      [v7 setObject:v8 forKey:v4];
    }
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

id sub_10D6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 uuid];
  v7 = [*(a1 + 32) objectForKey:v6];
  v8 = [v5 uuid];

  v9 = [*(a1 + 32) objectForKey:v8];
  v10 = [v7 compare:v9];

  return v10;
}

void sub_10F90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKey:v4];
}

void sub_11088(uint64_t a1)
{
  v1 = PLSyncGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Starting album reconciliation", buf, 2u);
  }

  v2 = [*(a1 + 32) _onDeviceAlbumsByUUID];
  v3 = [v2 allKeys];
  v4 = [NSMutableSet setWithArray:v3];

  v5 = [*(*(a1 + 32) + 24) allKeys];
  v6 = [NSSet setWithArray:v5];

  v7 = PLSyncGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    *buf = 134217984;
    v93 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Syncing %ld albums from iTunes", buf, 0xCu);
  }

  v9 = [v4 mutableCopy];
  v59 = [*(a1 + 32) isResync];
  if ((v59 & 1) == 0)
  {
    [v9 minusSet:v6];
  }

  v58 = v6;
  v61 = v4;
  v10 = PLSyncGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    *buf = 134217984;
    v93 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Deleting %ld previously synced, stale albums from iTunes", buf, 0xCu);
  }

  v12 = [*(a1 + 32) pathManager];
  v63 = [v12 iTunesSyncedFaceAlbumThumbnailsDirectory];

  v13 = +[NSMutableArray array];
  context = objc_autoreleasePoolPush();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
  v62 = v13;
  if (v14)
  {
    v15 = v14;
    v16 = *v88;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v88 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v87 + 1) + 8 * i);
        v19 = [v2 objectForKey:v18];
        v20 = [v19 objectID];
        [v13 addObject:v20];

        v21 = PLSyncGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v19 uuid];
          v23 = [v19 kindValue];
          *buf = 138543618;
          v93 = v22;
          v94 = 1024;
          LODWORD(v95) = v23;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Preparing to delete album: %{public}@, kind: %d", buf, 0x12u);
        }

        if ([v19 kindValue] == 15)
        {
          v24 = [v63 stringByAppendingPathComponent:v18];
          v25 = [v24 stringByAppendingPathExtension:@"JPG"];

          v26 = +[NSFileManager defaultManager];
          v86 = 0;
          v27 = [v26 removeItemAtPath:v25 error:&v86];
          v28 = v86;

          if ((v27 & 1) == 0)
          {
            v29 = PLUnderlyingPOSIXError();
            v30 = [v29 code];

            if (v30 != &dword_0 + 2)
            {
              v31 = PLSyncGetLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v93 = v25;
                v94 = 2114;
                v95 = v28;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Could not remove face thumbnail at path %{public}@ Error: %{public}@", buf, 0x16u);
              }
            }
          }

          v13 = v62;
        }

        [v2 removeObjectForKey:v18];
      }

      v15 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v15);
  }

  if ([v13 count])
  {
    v32 = [NSPredicate predicateWithFormat:@"self IN %@", v13];
    v33 = [*(a1 + 40) managedObjectContext];
    v34 = [PLGenericAlbum entityInManagedObjectContext:v33];

    v35 = *(a1 + 40);
    v85 = 0;
    v36 = [v35 batchDeleteObjectsWithEntity:v34 predicate:v32 error:&v85];
    v37 = v85;
    if ((v36 & 1) == 0)
    {
      v38 = PLSyncGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v93 = obj;
        v94 = 2114;
        v95 = v37;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "Failed to delete albums %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  objc_autoreleasePoolPop(context);
  [v61 minusSet:obj];
  v39 = *(a1 + 40);
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_1191C;
  v78[3] = &unk_24890;
  v40 = v58;
  v79 = v40;
  v84 = v59;
  v41 = v61;
  v42 = *(a1 + 32);
  v43 = *(a1 + 40);
  v80 = v41;
  v81 = v42;
  v82 = v43;
  v44 = v2;
  v83 = v44;
  [v39 performTransactionAndWait:v78];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_11C40;
  v75[3] = &unk_248B8;
  v45 = *(a1 + 40);
  v75[4] = *(a1 + 32);
  v46 = v44;
  v76 = v46;
  v77 = *(a1 + 40);
  [v45 performTransactionAndWait:v75];
  if ((v59 & 1) == 0)
  {
    v60 = objc_autoreleasePoolPush();
    v47 = [v41 mutableCopy];
    v66 = v40;
    [v47 intersectSet:v40];
    v48 = PLSyncGetLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [v47 count];
      *buf = 134217984;
      v93 = v49;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Updating (if necessary) %ld albums from iTunes", buf, 0xCu);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v50 = v47;
    v51 = [v50 countByEnumeratingWithState:&v71 objects:v91 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v72;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v72 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v71 + 1) + 8 * j);
          v56 = *(a1 + 40);
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_11CB4;
          v67[3] = &unk_248B8;
          v68 = v46;
          v69 = v55;
          v70 = *(a1 + 32);
          [v56 performTransactionAndWait:v67];
        }

        v52 = [v50 countByEnumeratingWithState:&v71 objects:v91 count:16];
      }

      while (v52);
    }

    objc_autoreleasePoolPop(v60);
    v13 = v62;
    v40 = v66;
  }
}

void sub_1191C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = v2;
  if ((*(a1 + 72) & 1) == 0)
  {
    [v2 minusSet:*(a1 + 40)];
  }

  v4 = PLSyncGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = [v3 count];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Adding %ld albums from iTunes", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 138412802;
    v25 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(a1 + 48) + 24) objectForKey:{*(*(&v26 + 1) + 8 * i), v25, v26}];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
            v13 = [v12 albumSubclass];
            v14 = [v13 intValue];

            if (v14 == 4)
            {
              v15 = 1551;
            }

            else
            {
              v15 = 1550;
            }

            if (v14 == 3)
            {
              v16 = 15;
            }

            else
            {
              v16 = v15;
            }

            v17 = [v12 name];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v11 name];
            }

            else
            {
              v17 = 0;
            }

            v16 = 1551;
          }

          v18 = PLSyncGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v11 uuid];
            *buf = v25;
            v31 = v17;
            v32 = 2114;
            v33 = v19;
            v34 = 1024;
            v35 = v16;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Creating managed album with name %@, uuid: %{public}@, kind: %d", buf, 0x1Cu);
          }

          v20 = *(a1 + 48);
          v21 = [v11 uuid];
          v22 = [v20 _addAlbumNamed:v17 uuid:v21 kindValue:v16 inLibrary:*(a1 + 56)];

          if (v22)
          {
            v23 = *(a1 + 64);
            v24 = [v22 uuid];
            [v23 setObject:v22 forKey:v24];
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v8);
  }
}

void sub_11C40(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryChangeSnapshot];
  v3 = [v2 orderedAlbums];

  [*(a1 + 32) _reconcileDeviceAlbumListSortingWithAlbums:*(a1 + 40) iTunesAlbumOrder:v3 inLibrary:*(a1 + 48)];
  [*(a1 + 32) _persistAssetAlbumOrderStructures];
}

void sub_11CB4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(*(a1 + 48) + 24) objectForKey:*(a1 + 40)];
    if ([v3 conformsToProtocol:&OBJC_PROTOCOL___PLSNamedItem])
    {
      v4 = [v3 name];
      v5 = [v2 title];
      v6 = [v4 isEqualToString:v5];

      if ((v6 & 1) == 0)
      {
        v7 = PLSyncGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138412546;
          v9 = v2;
          v10 = 2112;
          v11 = v4;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Updating album %@ to have title %@", &v8, 0x16u);
        }

        [v2 setTitle:v4];
      }
    }

    [v2 sortAssetsUsingiTunesAlbumOrder];
  }
}

void sub_120A4(uint64_t a1)
{
  v136 = [*(a1 + 32) isResync];
  v1 = PLSyncGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = @"sync";
    if (v136)
    {
      v2 = @"resync";
    }

    *buf = 138543362;
    *&buf[4] = v2;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Starting reconcile assets (%{public}@)", buf, 0xCu);
  }

  v139 = [*(a1 + 32) _onDeviceAlbumsByUUID];
  v3 = [*(*(a1 + 32) + 152) allKeys];
  v118 = [NSSet setWithArray:v3];

  v4 = PLSyncGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v118 count];
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Syncing %ld assets from iTunes", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [PLAssetTransactionReason transactionReason:@"[_reconcileAssets] Deleting assets that are not being synced from iTunes."];
  if ((v136 & 1) != 0 || ![v118 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSPredicate predicateWithFormat:@"NOT (uuid IN %@)", v118];
  }

  [*(a1 + 32) _batchDeleteSyncedAssetsWithReason:v7 subpredicate:v8];

  objc_autoreleasePoolPop(v6);
  v123 = [*(a1 + 32) _onDeviceAssetsByUUIDInLibrary:*(a1 + 40)];
  v9 = [v123 allKeys];
  v117 = [NSMutableSet setWithArray:v9];

  context = objc_autoreleasePoolPush();
  v10 = [v118 mutableCopy];
  v11 = v10;
  if ((v136 & 1) == 0)
  {
    [v10 minusSet:v117];
  }

  v12 = PLSyncGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 count];
    *buf = 134217984;
    *&buf[4] = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Adding %ld new assets from iTunes", buf, 0xCu);
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v174 objects:v191 count:16];
  if (v14)
  {
    v15 = *v175;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v175 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v174 + 1) + 8 * i);
        v18 = [*(*(a1 + 32) + 152) objectForKey:v17];
        v19 = [v18 caption];
        v20 = [ATAsset downloadAssetWithIdentifier:v17 dataclass:@"Photo" prettyName:v19];

        if ([v18 hasVideoComplement])
        {
          [v20 setVariantOptions:&off_25D68];
        }

        v21 = PLSyncGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v20 path];
          *buf = 138543618;
          *&buf[4] = v17;
          *&buf[12] = 2114;
          *&buf[14] = v22;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Downloading synced asset %{public}@ %{public}@", buf, 0x16u);
        }

        [*(*(a1 + 32) + 136) addObject:v20];
      }

      v14 = [obj countByEnumeratingWithState:&v174 objects:v191 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
  if ((v136 & 1) == 0)
  {
    v116 = objc_autoreleasePoolPush();
    v23 = [v117 mutableCopy];
    [v23 intersectSet:v118];
    v24 = PLSyncGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v23 count];
      *buf = 134217984;
      *&buf[4] = v25;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Updating (if changed) %ld assets from iTunes", buf, 0xCu);
    }

    v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v23 count]);
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v27 = v23;
    v28 = [v27 countByEnumeratingWithState:&v170 objects:v190 count:16];
    if (v28)
    {
      v29 = *v171;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v171 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v170 + 1) + 8 * j);
          v32 = [*(*(a1 + 32) + 152) objectForKey:v31];
          v33 = [v32 eventUUID];

          if (v33)
          {
            v34 = [v32 eventUUID];
            v35 = [NSMutableSet setWithObject:v34];
          }

          else
          {
            v35 = +[NSMutableSet set];
          }

          [v26 setObject:v35 forKey:v31];
        }

        v28 = [v27 countByEnumeratingWithState:&v170 objects:v190 count:16];
      }

      while (v28);
    }

    v36 = *(*(a1 + 32) + 24);
    v168[0] = _NSConcreteStackBlock;
    v168[1] = 3221225472;
    v168[2] = sub_13460;
    v168[3] = &unk_24818;
    v119 = v26;
    v169 = v119;
    [v36 enumerateKeysAndObjectsUsingBlock:v168];
    v121 = +[NSMutableArray array];
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v120 = v27;
    v124 = [v120 countByEnumeratingWithState:&v164 objects:v189 count:16];
    if (v124)
    {
      v122 = *v165;
      longitude = kCLLocationCoordinate2DInvalid.longitude;
      do
      {
        v38 = 0;
        do
        {
          if (*v165 != v122)
          {
            v39 = v38;
            objc_enumerationMutation(v120);
            v38 = v39;
          }

          v128 = v38;
          v133 = *(*(&v164 + 1) + 8 * v38);
          v40 = [v123 objectForKey:?];
          v131 = [*(*(a1 + 32) + 152) objectForKey:v133];
          v41 = [v131 modificationDate];
          [v41 doubleValue];
          v129 = [NSDate dateWithTimeIntervalSinceReferenceDate:v42 - kCFAbsoluteTimeIntervalSince1904];

          v43 = [v40 modificationDate];
          v44 = [v129 compare:v43] == 0;

          if (v44)
          {
            v130 = [*(*(a1 + 32) + 104) objectForKey:v133];
            [v130 doubleValue];
            v52 = v51;
            [v40 sortToken];
            if (v130 && vabdd_f64(v53, v52) >= 2.22044605e-16)
            {
              [v40 setSortToken:v52];
            }

            v126 = [v131 latitude];
            v125 = [v131 longitude];
            v54 = longitude;
            latitude = kCLLocationCoordinate2DInvalid.latitude;
            if (v126)
            {
              v54 = longitude;
              latitude = kCLLocationCoordinate2DInvalid.latitude;
              if (v125)
              {
                [v126 doubleValue];
                v57 = v56;
                [v125 doubleValue];
                v59 = CLLocationCoordinate2DMake(v57, v58);
                latitude = v59.latitude;
                v54 = v59.longitude;
              }
            }

            if ([v40 isLocatedAtCoordinates:{latitude, v54}])
            {
              v60 = PLSyncGetLog();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEBUG, "onDeviceAsset was already located at coords!", buf, 2u);
              }
            }

            else if (([PLLocationUtils canUseCoordinate:latitude, v54]& 1) != 0)
            {
              v61 = [[CLLocation alloc] initWithLatitude:latitude longitude:v54];
              v62 = PLSyncGetLog();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v61;
                _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "Updating onDeviceAsset for its new location: %@", buf, 0xCu);
              }

              [v40 setLocation:v61];
            }

            else
            {
              v63 = PLSyncGetLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = v133;
                _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "Removing location for asset %{public}@", buf, 0xCu);
              }

              [v40 setLocation:0];
            }

            v64 = [v131 getFacesArray];
            v65 = [v64 mutableCopy];

            obja = +[NSMutableIndexSet indexSet];
            v162 = 0u;
            v163 = 0u;
            v160 = 0u;
            v161 = 0u;
            v66 = [v40 legacyFaces];
            v67 = [v66 countByEnumeratingWithState:&v160 objects:v188 count:16];
            if (v67)
            {
              v68 = *v161;
              do
              {
                for (k = 0; k != v67; k = k + 1)
                {
                  if (*v161 != v68)
                  {
                    objc_enumerationMutation(v66);
                  }

                  v70 = *(*(&v160 + 1) + 8 * k);
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2020000000;
                  LOBYTE(v180) = 0;
                  v71 = [v70 identifier];
                  v156[0] = _NSConcreteStackBlock;
                  v156[1] = 3221225472;
                  v156[2] = sub_135B4;
                  v156[3] = &unk_24840;
                  v159 = v71;
                  v158 = buf;
                  v156[4] = v70;
                  v157 = obja;
                  [v65 enumerateObjectsUsingBlock:v156];
                  if ((*(*&buf[8] + 24) & 1) == 0)
                  {
                    v72 = PLSyncGetLog();
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      *v186 = 67109120;
                      v187 = v71;
                      _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "Deleting face with index: %d", v186, 8u);
                    }

                    [v70 delete];
                  }

                  _Block_object_dispose(buf, 8);
                }

                v67 = [v66 countByEnumeratingWithState:&v160 objects:v188 count:16];
              }

              while (v67);
            }

            [v65 removeObjectsAtIndexes:obja];
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            contexta = v65;
            v73 = [contexta countByEnumeratingWithState:&v152 objects:v185 count:16];
            if (v73)
            {
              v74 = *v153;
              do
              {
                for (m = 0; m != v73; m = m + 1)
                {
                  if (*v153 != v74)
                  {
                    objc_enumerationMutation(contexta);
                  }

                  v76 = *(*(&v152 + 1) + 8 * m);
                  v77 = PLSyncGetLog();
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                  {
                    v78 = [v76 identifier];
                    *buf = 67109120;
                    *&buf[4] = v78;
                    _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEFAULT, "adding face: %d", buf, 8u);
                  }

                  [v76 relativeRect];
                  v80 = v79;
                  v82 = v81;
                  v84 = v83;
                  v86 = v85;
                  v87 = [v76 identifier];
                  v88 = [v76 albumUUID];
                  v89 = [v40 addLegacyFaceWithRelativeRect:v87 identifier:v88 albumUUID:{v80, v82, v84, v86}];
                }

                v73 = [contexta countByEnumeratingWithState:&v152 objects:v185 count:16];
              }

              while (v73);
            }

            v90 = [v40 albums];
            v91 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v90 count]);

            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v92 = [v40 albums];
            v93 = [v92 countByEnumeratingWithState:&v148 objects:v184 count:16];
            if (v93)
            {
              v94 = *v149;
              do
              {
                for (n = 0; n != v93; n = n + 1)
                {
                  if (*v149 != v94)
                  {
                    objc_enumerationMutation(v92);
                  }

                  v96 = [*(*(&v148 + 1) + 8 * n) uuid];
                  [v91 addObject:v96];
                }

                v93 = [v92 countByEnumeratingWithState:&v148 objects:v184 count:16];
              }

              while (v93);
            }

            v127 = [v119 objectForKey:v133];
            v97 = [v91 mutableCopy];
            [v97 minusSet:v127];
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v98 = v97;
            v99 = [v98 countByEnumeratingWithState:&v144 objects:v183 count:16];
            if (v99)
            {
              v100 = *v145;
              do
              {
                for (ii = 0; ii != v99; ii = ii + 1)
                {
                  if (*v145 != v100)
                  {
                    objc_enumerationMutation(v98);
                  }

                  v102 = *(*(&v144 + 1) + 8 * ii);
                  v103 = [v139 objectForKey:v102];
                  if (([v103 isDeleted] & 1) == 0)
                  {
                    v104 = [v103 mutableAssets];
                    [v104 removeObject:v40];
                    v105 = PLSyncGetLog();
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138413058;
                      *&buf[4] = v40;
                      *&buf[12] = 2114;
                      *&buf[14] = v133;
                      *&buf[22] = 2112;
                      v180 = v103;
                      v181 = 2114;
                      v182 = v102;
                      _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "Asset %@ %{public}@ removed from album %@ %{public}@", buf, 0x2Au);
                    }
                  }
                }

                v99 = [v98 countByEnumeratingWithState:&v144 objects:v183 count:16];
              }

              while (v99);
            }

            v106 = [v127 mutableCopy];
            [v106 minusSet:v91];
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v107 = v106;
            v108 = [v107 countByEnumeratingWithState:&v140 objects:v178 count:16];
            if (v108)
            {
              v109 = *v141;
              do
              {
                for (jj = 0; jj != v108; jj = jj + 1)
                {
                  if (*v141 != v109)
                  {
                    objc_enumerationMutation(v107);
                  }

                  v111 = *(*(&v140 + 1) + 8 * jj);
                  v112 = [v139 objectForKey:v111];
                  if (([v112 isDeleted] & 1) == 0)
                  {
                    [v112 addAssetUsingiTunesAlbumOrder:v40];
                    v113 = PLSyncGetLog();
                    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138413058;
                      *&buf[4] = v40;
                      *&buf[12] = 2114;
                      *&buf[14] = v133;
                      *&buf[22] = 2112;
                      v180 = v112;
                      v181 = 2114;
                      v182 = v111;
                      _os_log_impl(&dword_0, v113, OS_LOG_TYPE_DEFAULT, "Asset %@ %{public}@ added to album %@ %{public}@", buf, 0x2Au);
                    }
                  }
                }

                v108 = [v107 countByEnumeratingWithState:&v140 objects:v178 count:16];
              }

              while (v108);
            }
          }

          else
          {
            v45 = PLSyncGetLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = [v40 uuid];
              *buf = 138543362;
              *&buf[4] = v46;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Deleting stale asset: %{public}@", buf, 0xCu);
            }

            v47 = [v40 objectID];
            [v121 addObject:v47];

            v48 = PLSyncGetLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v133;
              _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "=========== ASSET %{public}@ HAS CHANGED, RE-REQUESTING DOWNLOAD", buf, 0xCu);
            }

            v49 = [v131 caption];
            v130 = [ATAsset downloadAssetWithIdentifier:v133 dataclass:@"Photo" prettyName:v49];

            if ([v131 hasVideoComplement])
            {
              [v130 setVariantOptions:&off_25D90];
            }

            v50 = PLSyncGetLog();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v130;
              _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "Download request for asset: %@", buf, 0xCu);
            }

            [*(*(a1 + 32) + 136) addObject:v130];
          }

          v38 = v128 + 1;
        }

        while ((v128 + 1) != v124);
        v124 = [v120 countByEnumeratingWithState:&v164 objects:v189 count:16];
      }

      while (v124);
    }

    if ([v121 count])
    {
      v114 = [PLAssetTransactionReason transactionReason:@"[_reconcileAssets] Based on the asset date, it is stale.  Deleting"];
      v115 = [NSPredicate predicateWithFormat:@"SELF in %@", v121];
      [*(a1 + 32) _batchDeleteSyncedAssetsWithReason:v114 subpredicate:v115];
    }

    objc_autoreleasePoolPop(v116);
  }
}

void sub_13460(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v6 assetUUIDs];
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

          v12 = [*(a1 + 32) objectForKey:*(*(&v13 + 1) + 8 * v11)];
          [v12 addObject:v5];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

void sub_135B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  if (*(a1 + 56) == [v19 identifier])
  {
    [*(a1 + 32) relativeRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v19 relativeRect];
    v22.origin.x = v15;
    v22.origin.y = v16;
    v22.size.width = v17;
    v22.size.height = v18;
    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    *(*(*(a1 + 48) + 8) + 24) = CGRectEqualToRect(v21, v22);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      [*(a1 + 40) addIndex:a3];
      *a4 = 1;
    }
  }
}

void sub_138C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuid];
  if (v4)
  {
    [*(a1 + 32) setObject:v3 forKey:v4];
  }

  else
  {
    v5 = PLSyncGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 directory];
      v7 = [v3 filename];
      v8 = [v3 objectID];
      v9 = 138543874;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Synced asset has nil UUID %{public}@/%{public}@ %{public}@", &v9, 0x20u);
    }
  }
}

void sub_141F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1422C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PLSyncGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "prepareForSyncWithHostAnchor: %{public}@ - error waiting for cleanup in assetsd: %{public}@", &v6, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_14468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14480(void *a1)
{
  if (+[PLPhotoLibrary systemPhotoLibraryIsObtainable])
  {
    v2 = a1[4];
    v3 = [v2 pathManager];
    v4 = [v3 libraryURL];
    v58 = 0;
    v5 = [v2 _metricsForLibraryAtURL:v4 error:&v58];
    v6 = v58;

    v7 = PLSyncGetLog();
    v8 = v7;
    if (!v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v62 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to load system photo library for asset metrics: %{public}@", buf, 0xCu);
      }

      goto LABEL_38;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v62 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "system photo library metrics: %{public}@", buf, 0xCu);
    }

    v9 = [PLPhotoLibraryPathManager wellKnownPhotoLibraryURLForIdentifier:3];
    v10 = a1[4];
    v57 = v6;
    v8 = [v10 _metricsForLibraryAtURL:v9 error:&v57];
    v11 = v57;

    v12 = PLSyncGetLog();
    v13 = v12;
    v37 = a1;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v62 = v8;
        v14 = "syndication photo library metrics: %{public}@";
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
        _os_log_impl(&dword_0, v15, v16, v14, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v62 = v11;
      v14 = "Failed to load syndication photo library for asset metrics: %{public}@";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_12;
    }

    v36 = v11;

    v40 = objc_alloc_init(NSMutableDictionary);
    v17 = objc_alloc_init(NSMutableSet);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v38 = v5;
    obj = v5;
    v41 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v41)
    {
      v39 = *v54;
      do
      {
        v18 = 0;
        do
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v18;
          v19 = *(*(&v53 + 1) + 8 * v18);
          [v17 addObject:v19];
          v20 = [obj objectForKeyedSubscript:v19];
          v47 = objc_alloc_init(NSMutableDictionary);
          v45 = v19;
          [v40 setObject:? forKeyedSubscript:?];
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v43 = v20;
          v48 = [v43 countByEnumeratingWithState:&v49 objects:v59 count:16];
          if (v48)
          {
            v44 = *v50;
            do
            {
              for (i = 0; i != v48; i = i + 1)
              {
                if (*v50 != v44)
                {
                  objc_enumerationMutation(v43);
                }

                v22 = *(*(&v49 + 1) + 8 * i);
                [v17 addObject:v22];
                v23 = [obj objectForKeyedSubscript:v45];
                v24 = [v23 objectForKeyedSubscript:v22];
                v25 = [v24 unsignedIntegerValue];
                v26 = [v8 objectForKeyedSubscript:v45];
                [v26 objectForKeyedSubscript:v22];
                v28 = v27 = v8;
                v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", &v25[[v28 unsignedIntegerValue]]);
                [v47 setObject:v29 forKeyedSubscript:v22];

                v8 = v27;
              }

              v48 = [v43 countByEnumeratingWithState:&v49 objects:v59 count:16];
            }

            while (v48);
          }

          v18 = v42 + 1;
        }

        while ((v42 + 1) != v41);
        v41 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v41);
    }

    objc_storeStrong((*(v37[5] + 8) + 40), v40);
    v30 = PLSyncGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(v37[5] + 8) + 40);
      *buf = 138543362;
      v62 = v31;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Installed Asset Metrics (Photos): %{public}@", buf, 0xCu);
    }

    v5 = v38;
    if (([v17 containsObject:@"Photo"] & 1) == 0)
    {
      v32 = +[NSAssertionHandler currentHandler];
      [v32 handleFailureInMethod:v37[6] object:v37[4] file:@"PLSyncClient.m" lineNumber:441 description:{@"Invalid parameter not satisfying: %@", @"[foundKeys containsObject:kATAssetTypePhoto]"}];
    }

    if (([v17 containsObject:@"CameraRoll"] & 1) == 0)
    {
      v33 = +[NSAssertionHandler currentHandler];
      [v33 handleFailureInMethod:v37[6] object:v37[4] file:@"PLSyncClient.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"[foundKeys containsObject:kATAssetTypeCameraRoll]"}];
    }

    if (([v17 containsObject:@"_PhysicalSize"] & 1) == 0)
    {
      v34 = +[NSAssertionHandler currentHandler];
      [v34 handleFailureInMethod:v37[6] object:v37[4] file:@"PLSyncClient.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"[foundKeys containsObject:kATAssetMetricPhysicalSize]"}];
    }

    if (([v17 containsObject:@"_PurgeableSize"] & 1) == 0)
    {
      v35 = +[NSAssertionHandler currentHandler];
      [v35 handleFailureInMethod:v37[6] object:v37[4] file:@"PLSyncClient.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"[foundKeys containsObject:kATAssetMetricPurgeableStorageSize]"}];
    }

    v6 = v36;
LABEL_38:
  }
}

void sub_14B20(id a1)
{
  qword_2B160 = dispatch_queue_create("com.apple.photoSyncClient.isolation", 0);

  _objc_release_x1();
}

uint64_t sub_14F30(uint64_t result)
{
  if (!*(*(result + 32) + 56))
  {
    v2 = result;
    v3 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
    v4 = *(v2 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    return _objc_release_x1();
  }

  return result;
}

void sub_15048(uint64_t a1)
{
  v2 = PLSyncGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v5 = *(v3 + 48);
    v11 = 134218240;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Uninitializing library (%p, group: %p)", &v11, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  if (v7)
  {
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = 0;

    v6 = *(a1 + 32);
  }

  v10 = *(v6 + 32);
  *(v6 + 32) = 0;
}

void sub_15228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_15240(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 48) == 1)
  {
    v3 = PLHasInternalDiagnostics();
    v4 = PLSyncGetLog();
    v5 = v4;
    if (v3)
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v6 = "Initializing library [Unexpected nil library, initializing may result in long-lived photo library]";
      v7 = v5;
      v8 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v6 = "Initializing library [Unexpected nil library, initializing may result in long-lived photo library]";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
    }
  }

  else
  {
    v5 = PLSyncGetLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v6 = "Initializing library";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_0, v7, v8, v6, buf, 2u);
LABEL_11:

  v9 = objc_alloc_init(PLPhotoLibraryOptions);
  [v9 setRequiredState:6];
  [v9 setAutomaticallyMergesContext:1];
  [v9 setAutomaticallyPinToFirstFetch:0];
  v10 = [*(a1 + 32) pathManager];
  v11 = [v10 libraryURL];
  v26 = 0;
  v12 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLSyncClient _photoLibraryWithExpectationExists:]_block_invoke" loadedFromURL:v11 options:v9 error:&v26];
  v13 = v26;
  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  *(v14 + 32) = v12;

  v16 = *(*(a1 + 32) + 32);
  v17 = PLSyncGetLog();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Done initializing library.";
      v20 = v18;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = 2;
LABEL_16:
      _os_log_impl(&dword_0, v20, v21, v19, buf, v22);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v28 = v13;
    v19 = "Failed to initialize library, error: %{public}@";
    v20 = v18;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 12;
    goto LABEL_16;
  }

  v2 = *(*(a1 + 32) + 32);
LABEL_18:
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  if (!*(*(a1 + 32) + 48))
  {
    v23 = dispatch_group_create();
    v24 = *(a1 + 32);
    v25 = *(v24 + 48);
    *(v24 + 48) = v23;
  }
}

void sub_159CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_159E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained managedObjectContext];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_15A8C;
  v4[3] = &unk_24738;
  v5 = v2;
  v3 = v2;
  [v3 performBlock:v4];
}

void sub_15A8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [*(a1 + 32) registeredObjects];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) refreshObject:*(*(&v10 + 1) + 8 * i) mergeChanges:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "hasChanges")}];
      }

      v6 += v5;
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = PLSyncGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v6;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Re-faulted %d objects.", buf, 8u);
  }

  objc_autoreleasePoolPop(v2);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}