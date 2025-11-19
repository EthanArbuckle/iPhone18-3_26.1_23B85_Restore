@interface IPodLibrary
+ (id)deviceIPodLibrary;
+ (void)deleteIPodPurchaseWithMessage:(id)a3 connection:(id)a4;
- (BOOL)_addLibraryItems:(id)a3 toMusicLibrary:(id)a4 itemPids:(int64_t *)a5 error:(id *)a6;
- (BOOL)_removeDownloadWithIdentifier:(int64_t)a3 canceled:(BOOL)a4 inLibrary:(id)a5;
- (BOOL)addLibraryItems:(id)a3 error:(id *)a4;
- (IPodLibrary)init;
- (int64_t)addLibraryItem:(id)a3 error:(id *)a4;
- (void)_commitScheduledLibraryItems;
- (void)_dispatchAsync:(id)a3;
- (void)_setDownloadPropertiesForTrack:(id)a3 usingLibraryItem:(id)a4;
- (void)commitScheduledLibraryItems;
- (void)dealloc;
- (void)deleteAllOTATracks;
- (void)removeDownloadWithIdentifier:(int64_t)a3 canceled:(BOOL)a4;
- (void)removeDownloadsWithIdentifiers:(id)a3 canceled:(BOOL)a4;
- (void)scheduleLibraryItem:(id)a3;
- (void)scheduleLibraryItems:(id)a3;
- (void)setAppleIdentifier:(id)a3 forAccountIdentifier:(unint64_t)a4;
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
  block[4] = a1;
  if (qword_100383F38 != -1)
  {
    dispatch_once(&qword_100383F38, block);
  }

  return qword_100383F30;
}

- (int64_t)addLibraryItem:(id)a3 error:(id *)a4
{
  v5 = 0;
  v6 = a3;
  [(IPodLibrary *)self _addLibraryItems:+[NSArray arrayWithObjects:count:](NSArray toMusicLibrary:"arrayWithObjects:count:" itemPids:&v6 error:1), +[ML3MusicLibrary sharedLibrary], &v5, a4];
  return v5;
}

- (BOOL)addLibraryItems:(id)a3 error:(id *)a4
{
  v7 = +[ML3MusicLibrary sharedLibrary];

  return [(IPodLibrary *)self _addLibraryItems:a3 toMusicLibrary:v7 itemPids:0 error:a4];
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

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
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

- (void)removeDownloadsWithIdentifiers:(id)a3 canceled:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014BE88;
  v4[3] = &unk_100328000;
  v4[4] = a3;
  v4[5] = self;
  v5 = a4;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

- (void)removeDownloadWithIdentifier:(int64_t)a3 canceled:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014C0B4;
  v4[3] = &unk_100329E48;
  v4[4] = self;
  v4[5] = a3;
  v5 = a4;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

- (void)scheduleLibraryItem:(id)a3
{
  v4 = [[NSArray alloc] initWithObjects:{a3, 0}];
  [(IPodLibrary *)self scheduleLibraryItems:v4];
}

- (void)scheduleLibraryItems:(id)a3
{
  if ([a3 count])
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
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
      v17 = [a3 count];
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
    v13[5] = a3;
    [(IPodLibrary *)self _dispatchAsync:v13, v11];
  }
}

- (void)setAppleIdentifier:(id)a3 forAccountIdentifier:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014C548;
  v4[3] = &unk_100327808;
  v4[4] = a3;
  v4[5] = a4;
  [(IPodLibrary *)self _dispatchAsync:v4];
}

+ (void)deleteIPodPurchaseWithMessage:(id)a3 connection:(id)a4
{
  if (SSXPCConnectionHasEntitlement())
  {
    v4 = +[IPodLibrary deviceIPodLibrary];

    [v4 deleteAllOTATracks];
  }
}

- (BOOL)_addLibraryItems:(id)a3 toMusicLibrary:(id)a4 itemPids:(int64_t *)a5 error:(id *)a6
{
  v6 = a3;
  v130 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a3 count]);
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v135 objects:v143 count:16];
  obj = v6;
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
        v13 = [v11 libraryPersistentIdentifier];
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        v15 = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v15 |= 2u;
        }

        if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v15 &= 2u;
        }

        if (v15)
        {
          v16 = objc_opt_class();
          v139 = 138412546;
          v140 = v16;
          v141 = 2048;
          *v142 = v13;
          LODWORD(v120) = 22;
          v112 = &v139;
          v17 = _os_log_send_and_compose_impl();
          if (v17)
          {
            v18 = v17;
            v19 = [NSString stringWithCString:v17 encoding:4, &v139, v120];
            free(v18);
            v112 = v19;
            SSFileLog();
          }
        }

        if (v13)
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

          v22 = [v21 shouldLog];
          if ([v21 shouldLogToDisk])
          {
            v22 |= 2u;
          }

          if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v22 &= 2u;
          }

          if (v22)
          {
            v23 = objc_opt_class();
            v139 = 138412546;
            v140 = v23;
            v141 = 2048;
            *v142 = v13;
            LODWORD(v120) = 22;
            v112 = &v139;
            v24 = _os_log_send_and_compose_impl();
            if (v24)
            {
              v25 = v24;
              v26 = [NSString stringWithCString:v24 encoding:4, &v139, v120];
              free(v25);
              v112 = v26;
              SSFileLog();
            }
          }
        }

        else
        {
          [(NSMutableArray *)v130 addObject:v11];
        }
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v135 objects:v143 count:16];
    }

    while (v8);
  }

  if ([(NSMutableArray *)v130 count])
  {
    v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v128 = objc_alloc_init(IPodLibraryML3TrackImporter);
    v28 = [(IPodLibraryML3TrackImporter *)v128 importLibraryItems:v130 toMusicLibrary:a4 importedItemPids:v27];
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    v30 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v30 |= 2u;
    }

    if (os_log_type_enabled([v29 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 2;
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
        v36 = [NSString stringWithCString:v34 encoding:4, &v139, v120];
        free(v35);
        v113 = v36;
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

    v6 = obj;
  }

  v127 = objc_opt_new();
  v128 = objc_opt_new();
  if ([v6 count])
  {
    v38 = 0;
    v123 = ML3TrackPropertyBaseLocationID;
    v124 = ML3TrackPropertyLocationFileName;
    v122 = ML3TrackPropertyStoreFamilyAccountID;
    do
    {
      v39 = [v6 objectAtIndex:{v38, v113}];
      v40 = [v39 itemMediaPath];
      v131 = v39;
      v41 = [v39 libraryPersistentIdentifier];
      v42 = v41;
      if (a5)
      {
        a5[v38] = v41;
      }

      v43 = +[SSLogConfig sharedDaemonConfig];
      if (!v43)
      {
        v43 = +[SSLogConfig sharedConfig];
      }

      v44 = [v43 shouldLog];
      if ([v43 shouldLogToDisk])
      {
        v44 |= 2u;
      }

      if (!os_log_type_enabled([v43 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v44 &= 2u;
      }

      if (v44)
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
          v48 = [NSString stringWithCString:v46 encoding:4, &v139, v120];
          free(v47);
          v114 = v48;
          SSFileLog();
        }
      }

      v49 = v42;
      v50 = [[ML3Track alloc] initWithPersistentID:v42 inLibrary:a4];
      v129 = [v50 valueForProperty:v124];
      v51 = [objc_msgSend(v50 valueForProperty:{v123), "longLongValue"}];
      v133 = v40;
      [objc_msgSend(v40 "stringByDeletingLastPathComponent")];
      v52 = ML3BaseLocationIDFromMediaRelativePathInLibrary();
      v53 = [v50 valueForProperty:v122];
      v54 = [v53 longLongValue];
      v55 = +[SSLogConfig sharedDaemonConfig];
      if (!v55)
      {
        v55 = +[SSLogConfig sharedConfig];
      }

      v56 = [v55 shouldLog];
      if ([v55 shouldLogToDisk])
      {
        v56 |= 2u;
      }

      if (!os_log_type_enabled([v55 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v56 &= 2u;
      }

      if (v56)
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
          v60 = [NSString stringWithCString:v58 encoding:4, &v139, v120];
          free(v59);
          v115 = v60;
          SSFileLog();
        }
      }

      if (v133)
      {
        v61 = +[SSLogConfig sharedDaemonConfig];
        v62 = v61;
        if (v51 <= v52 || v54)
        {
          if (!v61)
          {
            v62 = +[SSLogConfig sharedConfig];
          }

          v76 = [v62 shouldLog];
          if ([v62 shouldLogToDisk])
          {
            v77 = v76 | 2;
          }

          else
          {
            v77 = v76;
          }

          if (!os_log_type_enabled([v62 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v77 &= 2u;
          }

          v6 = obj;
          if (v77)
          {
            v78 = objc_opt_class();
            v79 = [v50 persistentID];
            v139 = 138412546;
            v140 = v78;
            v141 = 2048;
            *v142 = v79;
            LODWORD(v120) = 22;
            v118 = &v139;
            v80 = _os_log_send_and_compose_impl();
            if (v80)
            {
              v81 = v80;
              v82 = [NSString stringWithCString:v80 encoding:4, &v139, v120];
              free(v81);
              v118 = v82;
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

          v63 = [v62 shouldLog];
          if ([v62 shouldLogToDisk])
          {
            v64 = v63 | 2;
          }

          else
          {
            v64 = v63;
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
              v68 = [NSString stringWithCString:v66 encoding:4, &v139, v120];
              free(v67);
              v116 = v68;
              SSFileLog();
            }
          }

          if ([v131 isDownloading])
          {
            [(IPodLibrary *)self _setDownloadPropertiesForTrack:v50 usingLibraryItem:v131];
          }

          [NSSet setWithObject:v133];
          ML3DeleteAssetsAtPaths();
          v6 = obj;
        }
      }

      else
      {
        v69 = +[SSLogConfig sharedDaemonConfig];
        v6 = obj;
        if (!v69)
        {
          v69 = +[SSLogConfig sharedConfig];
        }

        v70 = [v69 shouldLog];
        if ([v69 shouldLogToDisk])
        {
          v71 = v70 | 2;
        }

        else
        {
          v71 = v70;
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
            v75 = [NSString stringWithCString:v73 encoding:4, &v139, v120];
            free(v74);
            v117 = v75;
            SSFileLog();
          }
        }

        if ([v131 isDownloading])
        {
          [(IPodLibrary *)self _setDownloadPropertiesForTrack:v50 usingLibraryItem:v131];
        }

        else if ([v131 updateType] == 2)
        {
          v83 = [v131 itemArtworkData];
          if ([v83 length])
          {
            [v50 populateArtworkCacheWithArtworkData:v83];
          }
        }
      }

      v84 = +[SSLogConfig sharedDaemonConfig];
      if (!v84)
      {
        v84 = +[SSLogConfig sharedConfig];
      }

      v85 = [v84 shouldLog];
      if ([v84 shouldLogToDisk])
      {
        v86 = v85 | 2;
      }

      else
      {
        v86 = v85;
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
          v90 = [NSString stringWithCString:v88 encoding:4, &v139, v120];
          free(v89);
          v113 = v90;
          SSFileLog();
        }
      }

      ++v38;
    }

    while ([v6 count] > v38);
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

      v97 = [v96 shouldLog];
      if ([v96 shouldLogToDisk])
      {
        v97 |= 2u;
      }

      if (!os_log_type_enabled([v96 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v97 &= 2u;
      }

      if (v97)
      {
        v98 = objc_opt_class();
        v99 = [v95 persistentID];
        v139 = 138412546;
        v140 = v98;
        v141 = 2048;
        *v142 = v99;
        LODWORD(v120) = 22;
        v119 = &v139;
        v100 = _os_log_send_and_compose_impl();
        if (v100)
        {
          v101 = v100;
          v102 = [NSString stringWithCString:v100 encoding:4, &v139, v120];
          free(v101);
          v119 = v102;
          SSFileLog();
        }
      }

      v103 = [v94 itemArtworkData];
      if ([v103 length])
      {
        [v95 populateArtworkCacheWithArtworkData:v103];
      }

      v104 = [v94 protectionType];
      v105 = v104;
      if (v104 != 2 && v104 != 1)
      {
        if (!v104 && (v106 = [objc_msgSend(v94 "itemMetadata")], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v106, "count"))
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

  if (a6)
  {
    *a6 = 0;
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

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
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

- (void)_dispatchAsync:(id)a3
{
  [+[Daemon daemon](Daemon "daemon")];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014D88C;
  block[3] = &unk_100327FD8;
  block[4] = a3;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_removeDownloadWithIdentifier:(int64_t)a3 canceled:(BOOL)a4 inLibrary:(id)a5
{
  v6 = a4;
  v7 = [[NSString alloc] initWithFormat:@"%lld", a3];
  v8 = ML3TrackPropertyDownloadIdentifier;
  v9 = [ML3Track anyInLibrary:a5 predicate:[ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyDownloadIdentifier equalToValue:v7]];
  if (!v9)
  {
LABEL_25:
    v18 = 1;
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

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
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
    if (v6)
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

  v21 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = v21 | 2;
  }

  else
  {
    v22 = v21;
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

  v18 = [v10 deleteFromLibrary];
LABEL_26:

  return v18;
}

- (void)_setDownloadPropertiesForTrack:(id)a3 usingLibraryItem:(id)a4
{
  v7[0] = [a4 itemDownloadIdentifier];
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

  [a3 setValues:v7 forProperties:v6 count:v5];
}

@end