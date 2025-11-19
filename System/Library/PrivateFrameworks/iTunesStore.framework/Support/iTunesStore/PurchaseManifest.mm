@interface PurchaseManifest
+ (id)_sharedManifestWithManifestType:(int64_t)a3;
+ (id)sharedManifestForDownloadKind:(id)a3;
+ (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5;
+ (void)getPathsWithMessage:(id)a3 connection:(id)a4;
+ (void)jetsam;
+ (void)observeXPCServer:(id)a3;
+ (void)rebuildWithMessage:(id)a3 connection:(id)a4;
+ (void)removeItemWithMessage:(id)a3 connection:(id)a4;
- (BOOL)_writeToFile;
- (NSArray)purchaseManifestItems;
- (NSString)path;
- (PurchaseManifest)initWithPurchaseDirectory:(id)a3;
- (id)_dictionary;
- (id)removeItemsWithAssetPaths:(id)a3 error:(id *)a4;
- (void)addCompletedItem:(id)a3;
- (void)dealloc;
- (void)jetsam;
- (void)rebuildManifest;
@end

@implementation PurchaseManifest

- (PurchaseManifest)initWithPurchaseDirectory:(id)a3
{
  if (!a3)
  {
    sub_100271E80(a2, self);
  }

  v7.receiver = self;
  v7.super_class = PurchaseManifest;
  v5 = [(PurchaseManifest *)&v7 init];
  if (v5)
  {
    v5->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.PurchaseManifest", 0);
    v5->_path = [a3 stringByAppendingPathComponent:@"StorePurchasesInfo.plist"];
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = PurchaseManifest;
  [(PurchaseManifest *)&v3 dealloc];
}

+ (void)jetsam
{
  pthread_mutex_lock(&stru_1003827B0);
  v2 = [qword_100383DA8 copy];
  pthread_mutex_unlock(&stru_1003827B0);
  [v2 makeObjectsPerformSelector:"jetsam"];
}

+ (id)sharedManifestForDownloadKind:(id)a3
{
  if ((SSDownloadKindIsMediaKind() & 1) == 0 && (SSDownloadKindIsPodcastKind() & 1) == 0 && !SSDownloadKindIsToneKind())
  {
    return 0;
  }

  pthread_mutex_lock(&stru_1003827B0);
  if (!qword_100383DA8)
  {
    qword_100383DA8 = objc_alloc_init(NSMutableArray);
  }

  v4 = sub_10020F36C(a3);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = qword_100383DA8;
  v6 = [qword_100383DA8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_8:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([[(NSString *)[(PurchaseManifest *)v10 path] stringByDeletingLastPathComponent] isEqualToString:v4])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

    if (v10)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v10 = [[PurchaseManifest alloc] initWithPurchaseDirectory:v4];
  [qword_100383DA8 addObject:v10];

LABEL_17:
  v11 = v10;
  pthread_mutex_unlock(&stru_1003827B0);
  return v10;
}

- (void)addCompletedItem:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100097D18;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)jetsam
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097FC8;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (NSString)path
{
  v2 = self->_path;

  return v2;
}

- (NSArray)purchaseManifestItems
{
  v3 = +[NSMutableArray array];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000980B8;
  v6[3] = &unk_100327350;
  v6[4] = self;
  v6[5] = v3;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

- (void)rebuildManifest
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098254;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (id)removeItemsWithAssetPaths:(id)a3 error:(id *)a4
{
  v5 = +[NSMutableSet set];
  v74 = objc_alloc_init(NSMutableOrderedSet);
  v88 = 0;
  v89 = &v88;
  v90 = 0x3052000000;
  v91 = sub_100099120;
  v92 = sub_100099130;
  v93 = 0;
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [(NSString *)self->_path stringByDeletingLastPathComponent];
  v75 = v6;
  v77 = self;
  v73 = v5;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v84 objects:v101 count:16];
  if (v8)
  {
    v9 = *v85;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v85 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v84 + 1) + 8 * i);
        v12 = [v11 length];
        if (v12 > -[NSString length](v7, "length") && ([v11 hasPrefix:v7] & 1) != 0)
        {
          [v75 addObject:{objc_msgSend(v11, "substringFromIndex:", -[NSString length](v7, "length") + 1)}];
        }

        else
        {
          v13 = +[SSLogConfig sharedDaemonConfig];
          if (!v13)
          {
            v13 = +[SSLogConfig sharedConfig];
          }

          v14 = [v13 shouldLog];
          v15 = [v13 shouldLogToDisk];
          v16 = [v13 OSLogObject];
          if (v15)
          {
            v17 = v14 | 2;
          }

          else
          {
            v17 = v14;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
          }

          else
          {
            v18 = v17 & 2;
          }

          if (v18)
          {
            v19 = objc_opt_class();
            v95 = 138412802;
            v96 = v19;
            v97 = 2112;
            v98 = v11;
            v99 = 2112;
            v100 = v7;
            LODWORD(v71) = 32;
            v68 = &v95;
            v20 = _os_log_send_and_compose_impl();
            if (v20)
            {
              v21 = v20;
              v22 = [NSString stringWithCString:v20 encoding:4, &v95, v71];
              free(v21);
              v68 = v22;
              SSFileLog();
            }
          }
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v84 objects:v101 count:16];
    }

    while (v8);
  }

  v23 = v73;
  v24 = [v75 count];
  if (v24 != [a3 count])
  {
    v25 = [NSError errorWithDomain:SSErrorDomain code:601 userInfo:0];
    v89[5] = v25;
  }

  if ([v75 count])
  {
    dispatchQueue = v77->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009913C;
    block[3] = &unk_1003273B8;
    block[4] = v77;
    block[5] = v75;
    block[6] = v73;
    block[7] = v7;
    block[8] = v74;
    block[9] = &v88;
    dispatch_sync(dispatchQueue, block);
  }

  v27 = [v73 count];
  if (v27 == [a3 count])
  {
    if ([v74 count])
    {
      v28 = objc_alloc_init(NSFileManager);
      v29 = +[SSLogConfig sharedDaemonConfig];
      if (!v29)
      {
        v29 = +[SSLogConfig sharedConfig];
      }

      v30 = [v29 shouldLog];
      v31 = [v29 shouldLogToDisk];
      v32 = [v29 OSLogObject];
      if (v31)
      {
        v33 = v30 | 2;
      }

      else
      {
        v33 = v30;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 2;
      }

      if (v34)
      {
        v35 = objc_opt_class();
        v36 = [v74 count];
        v37 = [v73 count];
        v95 = 138412802;
        v96 = v35;
        v97 = 2048;
        v98 = v36;
        v99 = 2048;
        v100 = v37;
        LODWORD(v71) = 32;
        v69 = &v95;
        v38 = _os_log_send_and_compose_impl();
        if (v38)
        {
          v39 = v38;
          v40 = [NSString stringWithCString:v38 encoding:4, &v95, v71];
          free(v39);
          v69 = v40;
          SSFileLog();
        }
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v41 = [v74 countByEnumeratingWithState:&v79 objects:v94 count:{16, v69}];
      if (v41)
      {
        v42 = *v80;
        do
        {
          for (j = 0; j != v41; j = j + 1)
          {
            if (*v80 != v42)
            {
              objc_enumerationMutation(v74);
            }

            v44 = *(*(&v79 + 1) + 8 * j);
            v78 = 0;
            if ([v28 removeItemAtPath:v44 error:{&v78, v70, v71}])
            {
              v45 = +[SSLogConfig sharedDaemonConfig];
              if (!v45)
              {
                v45 = +[SSLogConfig sharedConfig];
              }

              v46 = [v45 shouldLog];
              v47 = [v45 shouldLogToDisk];
              v48 = [v45 OSLogObject];
              if (v47)
              {
                v49 = v46 | 2;
              }

              else
              {
                v49 = v46;
              }

              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                v50 = v49;
              }

              else
              {
                v50 = v49 & 2;
              }

              if (v50)
              {
                v51 = objc_opt_class();
                v95 = 138412546;
                v96 = v51;
                v97 = 2112;
                v98 = v44;
                LODWORD(v71) = 22;
                v70 = &v95;
                v52 = _os_log_send_and_compose_impl();
                if (v52)
                {
                  v53 = v52;
                  v54 = [NSString stringWithCString:v52 encoding:4, &v95, v71];
                  free(v53);
                  v70 = v54;
                  SSFileLog();
                }
              }
            }

            else
            {
              v55 = +[SSLogConfig sharedDaemonConfig];
              if (!v55)
              {
                v55 = +[SSLogConfig sharedConfig];
              }

              v56 = [v55 shouldLog];
              v57 = [v55 shouldLogToDisk];
              v58 = [v55 OSLogObject];
              if (v57)
              {
                v59 = v56 | 2;
              }

              else
              {
                v59 = v56;
              }

              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                v60 = v59;
              }

              else
              {
                v60 = v59 & 2;
              }

              if (v60)
              {
                v61 = objc_opt_class();
                v62 = v89[5];
                v95 = 138412802;
                v96 = v61;
                v97 = 2112;
                v98 = v62;
                v99 = 2112;
                v100 = v44;
                LODWORD(v71) = 32;
                v70 = &v95;
                v63 = _os_log_send_and_compose_impl();
                if (v63)
                {
                  v64 = v63;
                  v65 = [NSString stringWithCString:v63 encoding:4, &v95, v71];
                  free(v64);
                  v70 = v65;
                  SSFileLog();
                }
              }
            }
          }

          v41 = [v74 countByEnumeratingWithState:&v79 objects:v94 count:16];
        }

        while (v41);
      }

      v23 = v73;
    }
  }

  else if (a4)
  {
    *a4 = v89[5];
  }

  v66 = v89[5];
  _Block_object_dispose(&v88, 8);
  return v23;
}

+ (void)getPathsWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000995F8;
  v4[3] = &unk_1003273E0;
  v4[4] = a4;
  v4[5] = a3;
  v4[6] = a1;
  [a1 _handleMessage:a3 connection:a4 usingBlock:v4];
}

+ (void)observeXPCServer:(id)a3
{
  [a3 addObserver:a1 selector:"getPathsWithMessage:connection:" forMessage:46];
  [a3 addObserver:a1 selector:"rebuildWithMessage:connection:" forMessage:47];

  [a3 addObserver:a1 selector:"removeItemWithMessage:connection:" forMessage:44];
}

+ (void)rebuildWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100099908;
  v4[3] = &unk_1003273E0;
  v4[4] = a4;
  v4[5] = a3;
  v4[6] = a1;
  [a1 _handleMessage:a3 connection:a4 usingBlock:v4];
}

+ (void)removeItemWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000999FC;
  v4[3] = &unk_1003273E0;
  v4[4] = a4;
  v4[5] = a3;
  v4[6] = a1;
  [a1 _handleMessage:a3 connection:a4 usingBlock:v4];
}

+ (void)_handleMessage:(id)a3 connection:(id)a4 usingBlock:(id)a5
{
  [+[Daemon daemon](Daemon "daemon")];
  xpc_retain(a3);
  xpc_retain(a4);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099CA0;
  block[3] = &unk_100327408;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  dispatch_async(global_queue, block);
}

+ (id)_sharedManifestWithManifestType:(int64_t)a3
{
  if (!a3)
  {
    v3 = &SSDownloadKindMusic;
    return [a1 sharedManifestForDownloadKind:*v3];
  }

  if (a3 == 1)
  {
    v3 = &SSDownloadKindPodcast;
    return [a1 sharedManifestForDownloadKind:*v3];
  }

  return 0;
}

- (id)_dictionary
{
  if (!self->_dictionary && [NSFileManager ensureDirectoryExists:[(NSString *)self->_path stringByDeletingLastPathComponent]])
  {
    memset(&v21, 0, sizeof(v21));
    if (stat([(NSString *)self->_path fileSystemRepresentation], &v21))
    {
      if (*__error() == 2)
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
          path = self->_path;
          v22 = 138412546;
          v23 = v6;
          v24 = 2112;
          v25 = path;
          LODWORD(v20) = 22;
          v8 = _os_log_send_and_compose_impl();
          if (v8)
          {
            v9 = v8;
            [NSString stringWithCString:v8 encoding:4, &v22, v20];
            free(v9);
            SSFileLog();
          }
        }

        self->_dictionary = objc_alloc_init(NSMutableDictionary);
      }
    }

    else if (v21.st_mode < 0)
    {
      v10 = sub_1000CA250(self->_path);
      if ([(__CFDictionary *)v10 length])
      {
        v11 = [NSPropertyListSerialization propertyListWithData:v10 options:1 format:0 error:0];
      }

      else
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
          v15 = objc_opt_class();
          v16 = self->_path;
          v22 = 138412546;
          v23 = v15;
          v24 = 2112;
          v25 = v16;
          LODWORD(v20) = 22;
          v17 = _os_log_send_and_compose_impl();
          if (v17)
          {
            v18 = v17;
            [NSString stringWithCString:v17 encoding:4, &v22, v20];
            free(v18);
            SSFileLog();
          }
        }

        v11 = objc_alloc_init(NSMutableDictionary);
      }

      self->_dictionary = v11;
    }
  }

  return self->_dictionary;
}

- (BOOL)_writeToFile
{
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    return 0;
  }

  v4 = [NSPropertyListSerialization dataWithPropertyList:dictionary format:200 options:0 error:0];
  if (![(NSData *)v4 length])
  {
    return 0;
  }

  v5 = sub_1000CA05C(v4, self->_path);
  v6 = v5 != 0;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 1024;
    v17 = v5 != 0;
    LODWORD(v13) = 18;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      [NSString stringWithCString:v10 encoding:4, &v14, v13];
      free(v11);
      SSFileLog();
    }
  }

  return v6;
}

@end