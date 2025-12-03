@interface IPodLibrary
+ (id)deviceIPodLibrary;
+ (void)deleteIPodPurchaseWithMessage:(id)message connection:(id)connection;
- (BOOL)_addLibraryItems:(id)items toMusicLibrary:(id)library itemPids:(int64_t *)pids error:(id *)error;
- (BOOL)_removeDownloadWithIdentifier:(int64_t)identifier canceled:(BOOL)canceled inLibrary:(id)library;
- (BOOL)addLibraryItems:(id)items error:(id *)error;
- (IPodLibrary)init;
- (int64_t)addLibraryItem:(id)item error:(id *)error;
- (void)_commitScheduledLibraryItems;
- (void)_dispatchAsync:(id)async;
- (void)_setDownloadPropertiesForTrack:(id)track usingLibraryItem:(id)item;
- (void)commitScheduledLibraryItems;
- (void)dealloc;
- (void)deleteAllOTATracks;
- (void)removeDownloadWithIdentifier:(int64_t)identifier canceled:(BOOL)canceled;
- (void)removeDownloadsWithIdentifiers:(id)identifiers canceled:(BOOL)canceled;
- (void)scheduleLibraryItem:(id)item;
- (void)scheduleLibraryItems:(id)items;
- (void)setAppleIdentifier:(id)identifier forAccountIdentifier:(unint64_t)accountIdentifier;
@end

@implementation IPodLibrary

- (IPodLibrary)init
{
  if (+[SSDevice deviceIsAppleTV])
  {

    return 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = IPodLibrary;
    v3 = [(IPodLibrary *)&v6 init];
    if (v3)
    {
      v3->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.IPodLibrary", 0);
      v4 = objc_alloc_init(ISOperationQueue);
      v3->_operationQueue = v4;
      [(ISOperationQueue *)v4 setAdjustsMaxConcurrentOperationCount:0];
      [(ISOperationQueue *)v3->_operationQueue setMaxConcurrentOperationCount:3];
      [+[Daemon daemon](Daemon "daemon")];
    }
  }

  return v3;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  scheduledItemTimer = self->_scheduledItemTimer;
  if (scheduledItemTimer)
  {
    dispatch_source_cancel(scheduledItemTimer);
    dispatch_release(self->_scheduledItemTimer);
  }

  if (self->_operationQueue)
  {
    [+[Daemon daemon](Daemon "daemon")];
    [(ISOperationQueue *)self->_operationQueue cancelAllOperations];
  }

  v5.receiver = self;
  v5.super_class = IPodLibrary;
  [(IPodLibrary *)&v5 dealloc];
}

+ (id)deviceIPodLibrary
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BA40;
  block[3] = &unk_100327378;
  block[4] = self;
  if (qword_100383F38 != -1)
  {
    dispatch_once(&qword_100383F38, block);
  }

  return qword_100383F30;
}

- (int64_t)addLibraryItem:(id)item error:(id *)error
{
  v5 = 0;
  itemCopy = item;
  [(IPodLibrary *)self _addLibraryItems:+[NSArray arrayWithObjects:count:](NSArray toMusicLibrary:"arrayWithObjects:count:" itemPids:&itemCopy error:1), +[ML3MusicLibrary sharedLibrary], &v5, error];
  return v5;
}

- (BOOL)addLibraryItems:(id)items error:(id *)error
{
  v7 = +[ML3MusicLibrary sharedLibrary];

  return [(IPodLibrary *)self _addLibraryItems:items toMusicLibrary:v7 itemPids:0 error:error];
}

- (void)commitScheduledLibraryItems
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10014BBD8;
  v2[3] = &unk_100327378;
  v2[4] = self;
  [(IPodLibrary *)self _dispatchAsync:v2];
}

- (void)deleteAllOTATracks
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v11 = 138412290;
    v12 = objc_opt_class();
    LODWORD(v10) = 12;
    v9 = &v11;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [NSString stringWithCString:v6 encoding:4, &v11, v10];
      free(v7);
      v9 = v8;
      SSFileLog();
    }
  }

  [(IPodLibrary *)self _dispatchAsync:&stru_100329DA8, v9];
}

- (void)removeDownloadsWithIdentifiers:(id)identifiers canceled:(BOOL)canceled
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014BE88;
  v4[3] = &unk_100328000;
  v4[4] = identifiers;
  v4[5] = self;
  canceledCopy = canceled;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

- (void)removeDownloadWithIdentifier:(int64_t)identifier canceled:(BOOL)canceled
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014C0B4;
  v4[3] = &unk_100329E48;
  v4[4] = self;
  v4[5] = identifier;
  canceledCopy = canceled;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

- (void)scheduleLibraryItem:(id)item
{
  v4 = [[NSArray alloc] initWithObjects:{item, 0}];
  [(IPodLibrary *)self scheduleLibraryItems:v4];
}

- (void)scheduleLibraryItems:(id)items
{
  if ([items count])
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = [items count];
      LODWORD(v12) = 22;
      v11 = &v14;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4, &v14, v12];
        free(v9);
        v11 = v10;
        SSFileLog();
      }
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10014C398;
    v13[3] = &unk_100327350;
    v13[4] = self;
    v13[5] = items;
    [(IPodLibrary *)self _dispatchAsync:v13, v11];
  }
}

- (void)setAppleIdentifier:(id)identifier forAccountIdentifier:(unint64_t)accountIdentifier
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014C548;
  v4[3] = &unk_100327808;
  v4[4] = identifier;
  v4[5] = accountIdentifier;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

+ (void)deleteIPodPurchaseWithMessage:(id)message connection:(id)connection
{
  if (SSXPCConnectionHasEntitlement())
  {
    v4 = +[IPodLibrary deviceIPodLibrary];

    [v4 deleteAllOTATracks];
  }
}

- (BOOL)_addLibraryItems:(id)items toMusicLibrary:(id)library itemPids:(int64_t *)pids error:(id *)error
{
  itemsCopy = items;
  v130 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v135 objects:v143 count:16];
  obj = itemsCopy;
  if (v7)
  {
    v8 = v7;
    v9 = *v136;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v136 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v135 + 1) + 8 * i);
        v12 = +[IPodLibraryItem mediaTypeForStoreDownload:](IPodLibraryItem, "mediaTypeForStoreDownload:", [v11 itemMetadata]);
        libraryPersistentIdentifier = [v11 libraryPersistentIdentifier];
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
        {
          shouldLog &= 2u;
        }

        if (shouldLog)
        {
          v16 = objc_opt_class();
          v139 = 138412546;
          v140 = v16;
          v141 = 2048;
          *v142 = libraryPersistentIdentifier;
          LODWORD(v120) = 22;
          v112 = &v139;
          v17 = _os_log_send_and_compose_impl();
          if (v17)
          {
            v18 = v17;
            v120 = [NSString stringWithCString:v17 encoding:4, &v139, v120];
            free(v18);
            v112 = v120;
            SSFileLog();
          }
        }

        if (libraryPersistentIdentifier)
        {
          v20 = v12 == 8;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          v21 = +[SSLogConfig sharedDaemonConfig];
          if (!v21)
          {
            v21 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v21 shouldLog];
          if ([v21 shouldLogToDisk])
          {
            shouldLog2 |= 2u;
          }

          if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_INFO))
          {
            shouldLog2 &= 2u;
          }

          if (shouldLog2)
          {
            v23 = objc_opt_class();
            v139 = 138412546;
            v140 = v23;
            v141 = 2048;
            *v142 = libraryPersistentIdentifier;
            LODWORD(v120) = 22;
            v112 = &v139;
            v24 = _os_log_send_and_compose_impl();
            if (v24)
            {
              v25 = v24;
              v1202 = [NSString stringWithCString:v24 encoding:4, &v139, v120];
              free(v25);
              v112 = v1202;
              SSFileLog();
            }
          }
        }

        else
        {
          [(NSMutableArray *)v130 addObject:v11];
        }
      }

      itemsCopy = obj;
      v8 = [obj countByEnumeratingWithState:&v135 objects:v143 count:16];
    }

    while (v8);
  }

  if ([(NSMutableArray *)v130 count])
  {
    v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
    v128 = objc_alloc_init(IPodLibraryML3TrackImporter);
    v28 = [(IPodLibraryML3TrackImporter *)v128 importLibraryItems:v130 toMusicLibrary:library importedItemPids:v27];
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    if (os_log_type_enabled([v29 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v31 = shouldLog3;
    }

    else
    {
      v31 = shouldLog3 & 2;
    }

    if (v31)
    {
      v32 = objc_opt_class();
      v33 = "failed";
      if (v28)
      {
        v33 = "succeeded";
      }

      v139 = 138412546;
      v140 = v32;
      v141 = 2080;
      *v142 = v33;
      LODWORD(v120) = 22;
      v113 = &v139;
      v34 = _os_log_send_and_compose_impl();
      if (v34)
      {
        v35 = v34;
        v1203 = [NSString stringWithCString:v34 encoding:4, &v139, v120];
        free(v35);
        v113 = v1203;
        SSFileLog();
      }
    }

    if (!v28)
    {
      v110 = 0;
      goto LABEL_151;
    }

    if ([(NSMutableArray *)v130 count])
    {
      v37 = 0;
      do
      {
        [-[NSMutableArray objectAtIndex:](v130 objectAtIndex:{v37, v113), "setLibraryPersistentIdentifier:", objc_msgSend(-[NSMutableArray objectAtIndex:](v27, "objectAtIndex:", v37), "longLongValue")}];
        ++v37;
      }

      while ([(NSMutableArray *)v130 count]> v37);
    }

    itemsCopy = obj;
  }

  v127 = objc_opt_new();
  v128 = objc_opt_new();
  if ([itemsCopy count])
  {
    v38 = 0;
    v123 = ML3TrackPropertyBaseLocationID;
    v124 = ML3TrackPropertyLocationFileName;
    v122 = ML3TrackPropertyStoreFamilyAccountID;
    do
    {
      v39 = [itemsCopy objectAtIndex:{v38, v113}];
      itemMediaPath = [v39 itemMediaPath];
      v131 = v39;
      libraryPersistentIdentifier2 = [v39 libraryPersistentIdentifier];
      v42 = libraryPersistentIdentifier2;
      if (pids)
      {
        pids[v38] = libraryPersistentIdentifier2;
      }

      v43 = +[SSLogConfig sharedDaemonConfig];
      if (!v43)
      {
        v43 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v43 shouldLog];
      if ([v43 shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      if (!os_log_type_enabled([v43 OSLogObject], OS_LOG_TYPE_INFO))
      {
        shouldLog4 &= 2u;
      }

      if (shouldLog4)
      {
        v45 = objc_opt_class();
        v139 = 138412802;
        v140 = v45;
        v141 = 1024;
        *v142 = v38;
        *&v142[4] = 2048;
        *&v142[6] = v42;
        LODWORD(v120) = 28;
        v114 = &v139;
        v46 = _os_log_send_and_compose_impl();
        if (v46)
        {
          v47 = v46;
          v1204 = [NSString stringWithCString:v46 encoding:4, &v139, v120];
          free(v47);
          v114 = v1204;
          SSFileLog();
        }
      }

      v49 = v42;
      v50 = [[ML3Track alloc] initWithPersistentID:v42 inLibrary:library];
      v129 = [v50 valueForProperty:v124];
      v51 = [objc_msgSend(v50 valueForProperty:{v123), "longLongValue"}];
      v133 = itemMediaPath;
      [objc_msgSend(itemMediaPath "stringByDeletingLastPathComponent")];
      v52 = ML3BaseLocationIDFromMediaRelativePathInLibrary();
      v53 = [v50 valueForProperty:v122];
      longLongValue = [v53 longLongValue];
      v55 = +[SSLogConfig sharedDaemonConfig];
      if (!v55)
      {
        v55 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v55 shouldLog];
      if ([v55 shouldLogToDisk])
      {
        shouldLog5 |= 2u;
      }

      if (!os_log_type_enabled([v55 OSLogObject], OS_LOG_TYPE_INFO))
      {
        shouldLog5 &= 2u;
      }

      if (shouldLog5)
      {
        v57 = objc_opt_class();
        v139 = 138412802;
        v140 = v57;
        v141 = 2112;
        *v142 = v129;
        *&v142[8] = 2112;
        *&v142[10] = v53;
        LODWORD(v120) = 32;
        v115 = &v139;
        v58 = _os_log_send_and_compose_impl();
        if (v58)
        {
          v59 = v58;
          v1205 = [NSString stringWithCString:v58 encoding:4, &v139, v120];
          free(v59);
          v115 = v1205;
          SSFileLog();
        }
      }

      if (v133)
      {
        v61 = +[SSLogConfig sharedDaemonConfig];
        v62 = v61;
        if (v51 <= v52 || longLongValue)
        {
          if (!v61)
          {
            v62 = +[SSLogConfig sharedConfig];
          }

          shouldLog6 = [v62 shouldLog];
          if ([v62 shouldLogToDisk])
          {
            v77 = shouldLog6 | 2;
          }

          else
          {
            v77 = shouldLog6;
          }

          if (!os_log_type_enabled([v62 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v77 &= 2u;
          }

          itemsCopy = obj;
          if (v77)
          {
            v78 = objc_opt_class();
            persistentID = [v50 persistentID];
            v139 = 138412546;
            v140 = v78;
            v141 = 2048;
            *v142 = persistentID;
            LODWORD(v120) = 22;
            v118 = &v139;
            v80 = _os_log_send_and_compose_impl();
            if (v80)
            {
              v81 = v80;
              v1206 = [NSString stringWithCString:v80 encoding:4, &v139, v120];
              free(v81);
              v118 = v1206;
              SSFileLog();
            }
          }

          [v127 addObject:{v131, v118}];
          [(IPodLibraryML3TrackImporter *)v128 addObject:v50];
        }

        else
        {
          if (!v61)
          {
            v62 = +[SSLogConfig sharedConfig];
          }

          shouldLog7 = [v62 shouldLog];
          if ([v62 shouldLogToDisk])
          {
            v64 = shouldLog7 | 2;
          }

          else
          {
            v64 = shouldLog7;
          }

          if (!os_log_type_enabled([v62 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v64 &= 2u;
          }

          if (v64)
          {
            v65 = objc_opt_class();
            v139 = 138412802;
            v140 = v65;
            v141 = 2048;
            *v142 = v49;
            *&v142[8] = 2112;
            *&v142[10] = v129;
            LODWORD(v120) = 32;
            v116 = &v139;
            v66 = _os_log_send_and_compose_impl();
            if (v66)
            {
              v67 = v66;
              v1207 = [NSString stringWithCString:v66 encoding:4, &v139, v120];
              free(v67);
              v116 = v1207;
              SSFileLog();
            }
          }

          if ([v131 isDownloading])
          {
            [(IPodLibrary *)self _setDownloadPropertiesForTrack:v50 usingLibraryItem:v131];
          }

          [NSSet setWithObject:v133];
          ML3DeleteAssetsAtPaths();
          itemsCopy = obj;
        }
      }

      else
      {
        v69 = +[SSLogConfig sharedDaemonConfig];
        itemsCopy = obj;
        if (!v69)
        {
          v69 = +[SSLogConfig sharedConfig];
        }

        shouldLog8 = [v69 shouldLog];
        if ([v69 shouldLogToDisk])
        {
          v71 = shouldLog8 | 2;
        }

        else
        {
          v71 = shouldLog8;
        }

        if (!os_log_type_enabled([v69 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v71 &= 2u;
        }

        if (v71)
        {
          v72 = objc_opt_class();
          v139 = 138412546;
          v140 = v72;
          v141 = 2048;
          *v142 = v49;
          LODWORD(v120) = 22;
          v117 = &v139;
          v73 = _os_log_send_and_compose_impl();
          if (v73)
          {
            v74 = v73;
            v1208 = [NSString stringWithCString:v73 encoding:4, &v139, v120];
            free(v74);
            v117 = v1208;
            SSFileLog();
          }
        }

        if ([v131 isDownloading])
        {
          [(IPodLibrary *)self _setDownloadPropertiesForTrack:v50 usingLibraryItem:v131];
        }

        else if ([v131 updateType] == 2)
        {
          itemArtworkData = [v131 itemArtworkData];
          if ([itemArtworkData length])
          {
            [v50 populateArtworkCacheWithArtworkData:itemArtworkData];
          }
        }
      }

      v84 = +[SSLogConfig sharedDaemonConfig];
      if (!v84)
      {
        v84 = +[SSLogConfig sharedConfig];
      }

      shouldLog9 = [v84 shouldLog];
      if ([v84 shouldLogToDisk])
      {
        v86 = shouldLog9 | 2;
      }

      else
      {
        v86 = shouldLog9;
      }

      if (os_log_type_enabled([v84 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v87 = v86;
      }

      else
      {
        v87 = v86 & 2;
      }

      if (v87)
      {
        v139 = 134217984;
        v140 = v49;
        LODWORD(v120) = 12;
        v113 = &v139;
        v88 = _os_log_send_and_compose_impl();
        if (v88)
        {
          v89 = v88;
          v1209 = [NSString stringWithCString:v88 encoding:4, &v139, v120];
          free(v89);
          v113 = v1209;
          SSFileLog();
        }
      }

      ++v38;
    }

    while ([itemsCopy count] > v38);
  }

  v91 = v127;
  if ([v127 count])
  {
    v92 = 0;
    v93 = ML3TrackPropertyStoreFamilyAccountID;
    do
    {
      v94 = [v91 objectAtIndex:v92];
      v95 = [(IPodLibraryML3TrackImporter *)v128 objectAtIndex:v92];
      v96 = +[SSLogConfig sharedDaemonConfig];
      if (!v96)
      {
        v96 = +[SSLogConfig sharedConfig];
      }

      shouldLog10 = [v96 shouldLog];
      if ([v96 shouldLogToDisk])
      {
        shouldLog10 |= 2u;
      }

      if (!os_log_type_enabled([v96 OSLogObject], OS_LOG_TYPE_INFO))
      {
        shouldLog10 &= 2u;
      }

      if (shouldLog10)
      {
        v98 = objc_opt_class();
        persistentID2 = [v95 persistentID];
        v139 = 138412546;
        v140 = v98;
        v141 = 2048;
        *v142 = persistentID2;
        LODWORD(v120) = 22;
        v119 = &v139;
        v100 = _os_log_send_and_compose_impl();
        if (v100)
        {
          v101 = v100;
          v12010 = [NSString stringWithCString:v100 encoding:4, &v139, v120];
          free(v101);
          v119 = v12010;
          SSFileLog();
        }
      }

      itemArtworkData2 = [v94 itemArtworkData];
      if ([itemArtworkData2 length])
      {
        [v95 populateArtworkCacheWithArtworkData:itemArtworkData2];
      }

      protectionType = [v94 protectionType];
      v105 = protectionType;
      if (protectionType != 2 && protectionType != 1)
      {
        if (!protectionType && (v106 = [objc_msgSend(v94 "itemMetadata")], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v106, "count"))
        {
          v107 = [[DownloadDRM alloc] initWithSinfArray:v106];
          v105 = ([(DownloadDRM *)v107 isDRMFree]^ 1);
        }

        else
        {
          v105 = 0;
        }
      }

      [v95 populateLocationPropertiesWithPath:objc_msgSend(v94 protectionType:{"itemMediaPath"), v105}];
      v108 = [objc_msgSend(v94 "itemMetadata")];
      if (v108)
      {
        v109 = v108;
      }

      else
      {
        v109 = &off_10034BEB0;
      }

      [v95 setValue:v109 forProperty:v93];
      [(IPodLibrary *)self _setDownloadPropertiesForTrack:v95 usingLibraryItem:0];
      ++v92;
      v91 = v127;
    }

    while (v92 < [v127 count]);
  }

  v110 = 1;
LABEL_151:

  if (error)
  {
    *error = 0;
  }

  return v110;
}

- (void)_commitScheduledLibraryItems
{
  if ([(NSMutableArray *)self->_scheduledItems count])
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v6 = objc_opt_class();
      v7 = [(NSMutableArray *)self->_scheduledItems count];
      v14 = 138412546;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      LODWORD(v13) = 22;
      v12 = &v14;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4, &v14, v13];
        free(v9);
        v12 = v10;
        SSFileLog();
      }
    }

    [(IPodLibrary *)self addLibraryItems:self->_scheduledItems error:0, v12];
    [(NSMutableArray *)self->_scheduledItems removeAllObjects];
    [+[Daemon daemon](Daemon "daemon")];
  }

  scheduledItemTimer = self->_scheduledItemTimer;
  if (scheduledItemTimer)
  {
    dispatch_source_cancel(scheduledItemTimer);
    dispatch_release(self->_scheduledItemTimer);
    self->_scheduledItemTimer = 0;
  }
}

- (void)_dispatchAsync:(id)async
{
  [+[Daemon daemon](Daemon "daemon")];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014D88C;
  block[3] = &unk_100327FD8;
  block[4] = async;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_removeDownloadWithIdentifier:(int64_t)identifier canceled:(BOOL)canceled inLibrary:(id)library
{
  canceledCopy = canceled;
  identifier = [[NSString alloc] initWithFormat:@"%lld", identifier];
  v8 = ML3TrackPropertyDownloadIdentifier;
  v9 = [ML3Track anyInLibrary:library predicate:[ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyDownloadIdentifier equalToValue:identifier]];
  if (!v9)
  {
LABEL_25:
    deleteFromLibrary = 1;
    goto LABEL_26;
  }

  v10 = v9;
  v35[0] = ML3TrackPropertyLocationFileName;
  v35[1] = ML3TrackPropertyStoreSagaID;
  v35[2] = ML3TrackPropertyPurchaseHistoryID;
  v35[3] = ML3TrackPropertyStoreIsSubscription;
  v35[4] = ML3TrackPropertyIsRental;
  [v9 getValues:&v30 forProperties:v35 count:5];
  v11 = v34;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 BOOLValue])
  {
    [v10 setValue:&__kCFBooleanFalse forProperty:ML3TrackPropertyIsOTAPurchased];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v30 length] || v31 && objc_msgSend(v31, "longLongValue") || v32 && objc_msgSend(v32, "longLongValue") || v33 && (objc_msgSend(v33, "BOOLValue"))
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      *v29 = 138412546;
      *&v29[4] = objc_opt_class();
      *&v29[12] = 2048;
      *&v29[14] = [v10 persistentID];
      LODWORD(v27) = 22;
      v26 = v29;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4, v29, v27];
        free(v16);
        v26 = v17;
        SSFileLog();
      }
    }

    *v29 = v8;
    *&v29[8] = ML3TrackPropertyNeedsRestore;
    v28 = unk_100329E68;
    [v10 setValues:&v28 forProperties:v29 count:{2, v26}];
    if (canceledCopy)
    {
      [v10 setValue:&off_10034BEC8 forProperty:ML3EntityPropertyKeepLocal];
    }

    goto LABEL_25;
  }

  v20 = +[SSLogConfig sharedDaemonConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = shouldLog2 | 2;
  }

  else
  {
    v22 = shouldLog2;
  }

  if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v22 &= 2u;
  }

  if (v22)
  {
    *v29 = 138412546;
    *&v29[4] = objc_opt_class();
    *&v29[12] = 2048;
    *&v29[14] = [v10 persistentID];
    LODWORD(v27) = 22;
    v26 = v29;
    v23 = _os_log_send_and_compose_impl();
    if (v23)
    {
      v24 = v23;
      v25 = [NSString stringWithCString:v23 encoding:4, v29, v27];
      free(v24);
      v26 = v25;
      SSFileLog();
    }
  }

  deleteFromLibrary = [v10 deleteFromLibrary];
LABEL_26:

  return deleteFromLibrary;
}

- (void)_setDownloadPropertiesForTrack:(id)track usingLibraryItem:(id)item
{
  v7[0] = [item itemDownloadIdentifier];
  v7[1] = &__kCFBooleanFalse;
  v6[0] = ML3TrackPropertyDownloadIdentifier;
  v6[1] = ML3TrackPropertyNeedsRestore;
  if (v7[0])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [track setValues:v7 forProperties:v6 count:v5];
}

@end