@interface EBookManifest
+ (id)purchasedBookManifest;
+ (id)sharedPurchasedBookManifest;
+ (id)syncedBookManifest;
- (EBookManifest)initWithManifestPath:(id)path;
- (NSString)manifestPath;
- (id)_entries;
- (id)_manifest;
- (id)bookPathForAdamID:(id)d withPublicationVersion:(id)version;
- (id)bookPathPermalink:(id)permalink;
- (id)manifestEntriesWithProperty:(id)property equalToValue:(id)value limitCount:(int64_t)count;
- (void)_invalidateAfterExternalChange;
- (void)addManifestEntries:(id)entries;
- (void)addManifestEntry:(id)entry;
- (void)dealloc;
- (void)removeManifestEntryWithDownloadPermalink:(id)permalink;
- (void)removeManifestEntryWithStoreItemID:(id)d;
- (void)synchronizeData;
@end

@implementation EBookManifest

- (EBookManifest)initWithManifestPath:(id)path
{
  if (![path length])
  {
    sub_100272478(a2, self);
  }

  v9.receiver = self;
  v9.super_class = EBookManifest;
  v6 = [(EBookManifest *)&v9 init];
  if (v6)
  {
    v6->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.EBookManifest", 0);
    v6->_manifestPath = [path copy];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10018E5E0, @"com.apple.books.plist.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.books.plist.changed", 0);
  dispatch_release(self->_dispatchQueue);

  v4.receiver = self;
  v4.super_class = EBookManifest;
  [(EBookManifest *)&v4 dealloc];
}

+ (id)purchasedBookManifest
{
  if (qword_100383FC0 != -1)
  {
    sub_1002724D4();
  }

  return qword_100383FB8;
}

+ (id)sharedPurchasedBookManifest
{
  if (qword_100383FD0 != -1)
  {
    sub_1002724E8();
  }

  return qword_100383FC8;
}

+ (id)syncedBookManifest
{
  if (qword_100383FE0 != -1)
  {
    sub_1002724FC();
  }

  return qword_100383FD8;
}

- (void)addManifestEntry:(id)entry
{
  v4 = [[NSArray alloc] initWithObjects:{entry, 0}];
  [(EBookManifest *)self addManifestEntries:v4];
}

- (void)addManifestEntries:(id)entries
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018E944;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = entries;
  dispatch_sync(dispatchQueue, v4);
}

- (id)bookPathPermalink:(id)permalink
{
  if (!permalink)
  {
    return 0;
  }

  v3 = [(EBookManifest *)self manifestEntriesWithProperty:@"iTunesU Permlink" equalToValue:permalink limitCount:1];
  if ([v3 count] != 1)
  {
    return 0;
  }

  v4 = [v3 objectAtIndex:0];
  if (!v4)
  {
    return 0;
  }

  return [v4 objectForKey:@"Path"];
}

- (id)bookPathForAdamID:(id)d withPublicationVersion:(id)version
{
  if (!d)
  {
    return 0;
  }

  v5 = [(EBookManifest *)self manifestEntriesWithProperty:@"s" equalToValue:d limitCount:1];
  if ([v5 count] != 1)
  {
    return 0;
  }

  v6 = [v5 objectAtIndex:0];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (![objc_msgSend(v6 objectForKey:{@"Publication Version", "isEqualToNumber:", version}])
  {
    return 0;
  }

  return [v7 objectForKey:@"Path"];
}

- (id)manifestEntriesWithProperty:(id)property equalToValue:(id)value limitCount:(int64_t)count
{
  v9 = +[NSMutableArray array];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018EC94;
  block[3] = &unk_100327F60;
  block[4] = self;
  block[5] = property;
  block[6] = value;
  block[7] = v9;
  block[8] = count;
  dispatch_sync(dispatchQueue, block);
  return v9;
}

- (NSString)manifestPath
{
  v2 = self->_manifestPath;

  return v2;
}

- (void)removeManifestEntryWithStoreItemID:(id)d
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018EE5C;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = d;
  dispatch_sync(dispatchQueue, v4);
}

- (void)removeManifestEntryWithDownloadPermalink:(id)permalink
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018F0A0;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = permalink;
  dispatch_sync(dispatchQueue, v4);
}

- (void)synchronizeData
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018F2E4;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (id)_entries
{
  _manifest = [(EBookManifest *)self _manifest];
  result = [_manifest objectForKey:@"Books"];
  if (!result)
  {

    return [_manifest objectForKey:@"Purchases"];
  }

  return result;
}

- (void)_invalidateAfterExternalChange
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
    manifestPath = self->_manifestPath;
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = manifestPath;
    LODWORD(v11) = 22;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4, &v13, v11];
      free(v9);
      SSFileLog();
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018F748;
  block[3] = &unk_100327378;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_manifest
{
  result = self->_manifest;
  if (!result)
  {
    v4 = objc_alloc_init(NSFileManager);
    if ([v4 fileExistsAtPath:self->_manifestPath])
    {
      v21 = 0;
      v5 = [[NSData alloc] initWithContentsOfFile:self->_manifestPath options:0 error:&v21];
      if (v5)
      {
        v6 = v5;
        v7 = [NSPropertyListSerialization propertyListWithData:v5 options:2 format:0 error:&v21];
        self->_manifest = v7;
        if (!v7)
        {
          v8 = +[SSLogConfig sharedDaemonConfig];
          if (!v8)
          {
            v8 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v8 shouldLog];
          if ([v8 shouldLogToDisk])
          {
            v10 = shouldLog | 2;
          }

          else
          {
            v10 = shouldLog;
          }

          if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v10 &= 2u;
          }

          if (v10)
          {
            v11 = objc_opt_class();
            v22 = 138412546;
            v23 = v11;
            v24 = 2112;
            v25 = v21;
            LODWORD(v20) = 22;
            v12 = _os_log_send_and_compose_impl();
            if (v12)
            {
              v13 = v12;
              [NSString stringWithCString:v12 encoding:4, &v22, v20];
              free(v13);
              SSFileLog();
            }
          }

          self->_manifest = objc_alloc_init(NSMutableDictionary);
        }

        goto LABEL_28;
      }

      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = shouldLog2 | 2;
      }

      else
      {
        v16 = shouldLog2;
      }

      if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v16 &= 2u;
      }

      if (v16)
      {
        v17 = objc_opt_class();
        v22 = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v21;
        LODWORD(v20) = 22;
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          v19 = v18;
          [NSString stringWithCString:v18 encoding:4, &v22, v20];
          free(v19);
          SSFileLog();
        }
      }
    }

    self->_manifest = objc_alloc_init(NSMutableDictionary);
LABEL_28:

    return self->_manifest;
  }

  return result;
}

@end