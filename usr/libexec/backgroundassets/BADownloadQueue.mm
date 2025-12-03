@interface BADownloadQueue
+ (id)classesForSerialization;
- (BADownloadQueue)initWithApplicationIdentifier:(id)identifier delegate:(id)delegate;
- (BADownloadQueue)initWithCoder:(id)coder;
- (BADownloadQueueDelegate)delegate;
- (BOOL)cancelDownload:(id)download error:(id *)error;
- (BOOL)startNextDownload;
- (NSArray)allDownloads;
- (NSString)debugDescription;
- (NSString)description;
- (id)_downloadWithIdentifier:(id)identifier;
- (id)_downloadWithUniqueIdentifier:(id)identifier;
- (id)downloadWithUniqueIdentifier:(id)identifier;
- (int64_t)_essentialAssetState;
- (int64_t)essentialAssetsStateWithSizeDownloaded:(int64_t *)downloaded totalDownloadSize:(int64_t *)size;
- (int64_t)numberOfActiveDownloads;
- (int64_t)numberOfWaitingDownloads;
- (void)_addDownload:(id)download;
- (void)_cancelAllDownloadsSilently:(BOOL)silently;
- (void)_removeDownload:(id)download;
- (void)_reportEssentialAssetStateAndProgress;
- (void)demoteAllForegroundDownloads;
- (void)download:(id)download didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)download:(id)download didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)download:(id)download didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)download:(id)download failedWithError:(id)error;
- (void)download:(id)download finishedWithFileURL:(id)l;
- (void)downloadDidBegin:(id)begin;
- (void)downloadDidPause:(id)pause;
- (void)encodeWithCoder:(id)coder;
- (void)freeze;
- (void)pauseAllDownloads;
- (void)scheduleContentRequest:(int64_t)request downloads:(id)downloads applicationInfo:(id)info completionHandler:(id)handler;
- (void)scheduleContentRequestAborted;
- (void)scheduleDownload:(id)download completionHandler:(id)handler;
- (void)startForegroundDownload:(id)download completionHandler:(id)handler;
- (void)thaw;
@end

@implementation BADownloadQueue

+ (id)classesForSerialization
{
  if (qword_100089C50 != -1)
  {
    sub_100048F7C();
  }

  v3 = qword_100089C48;

  return v3;
}

- (BADownloadQueue)initWithApplicationIdentifier:(id)identifier delegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = BADownloadQueue;
  v9 = [(BADownloadQueue *)&v31 init];
  if (v9)
  {
    _baassets_validUTI = [identifierCopy _baassets_validUTI];
    if (![_baassets_validUTI isEqualToString:identifierCopy])
    {

      v27 = 0;
      goto LABEL_6;
    }

    v9->_stateLock = 0;
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = +[NSDate distantPast];
    [(BADownloadQueue *)v9 setLastDownloadStartDate:v11];

    [(BADownloadQueue *)v9 setFrozen:0];
    v12 = objc_alloc_init(NSMutableOrderedSet);
    [(BADownloadQueue *)v9 setDownloads:v12];

    v13 = objc_alloc_init(NSMutableSet);
    [(BADownloadQueue *)v9 setActiveDownloads:v13];

    v14 = objc_alloc_init(NSMutableDictionary);
    [(BADownloadQueue *)v9 setUniqueIdentifiersToDownloads:v14];

    v15 = objc_alloc_init(NSMutableDictionary);
    [(BADownloadQueue *)v9 setIdentifiersToDownloads:v15];

    [(BADownloadQueue *)v9 setActiveManifestDownload:0];
    [(BADownloadQueue *)v9 setDelegate:delegateCopy];
    [(BADownloadQueue *)v9 setEssentialAssetsWaitingOnContentRequest:0];
    [(BADownloadQueue *)v9 setEssentialAssetsBytesDownloaded:0];
    [(BADownloadQueue *)v9 setEssentialAssetsBytesTotal:0];
    v16 = +[NSMutableSet set];
    [(BADownloadQueue *)v9 setEssentialAssetIdentifiersMonitored:v16];

    v17 = [NSString stringWithFormat:@"DownloadStaging/%@", _baassets_validUTI];
    v18 = sub_100016048();
    v19 = [v18 stringByAppendingPathComponent:v17];
    stagingDirectory = v9->_stagingDirectory;
    v9->_stagingDirectory = v19;

    v21 = +[NSFileManager defaultManager];
    stagingDirectory = [(BADownloadQueue *)v9 stagingDirectory];
    v30 = 0;
    [v21 removeItemAtPath:stagingDirectory error:&v30];
    v23 = v30;

    v24 = +[NSFileManager defaultManager];
    stagingDirectory2 = [(BADownloadQueue *)v9 stagingDirectory];
    v29 = v23;
    [v24 createDirectoryAtPath:stagingDirectory2 withIntermediateDirectories:1 attributes:0 error:&v29];
    v26 = v29;
  }

  v27 = v9;
LABEL_6:

  return v27;
}

- (BADownloadQueue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v73.receiver = self;
  v73.super_class = BADownloadQueue;
  v5 = [(BADownloadQueue *)&v73 init];
  v6 = v5;
  if (v5)
  {
    v5->_stateLock = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastDownloadStartDate"];
    [(BADownloadQueue *)v6 setLastDownloadStartDate:v9];

    lastDownloadStartDate = [(BADownloadQueue *)v6 lastDownloadStartDate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v12 = +[NSDate distantPast];
      [(BADownloadQueue *)v6 setLastDownloadStartDate:v12];
    }

    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [NSSet setWithObjects:v13, v14, v15, v16, v17, objc_opt_class(), 0];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"downloads"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BADownloadQueue *)v6 setDownloads:v19];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [NSMutableOrderedSet orderedSetWithArray:v19];
      }

      else
      {
        +[NSMutableOrderedSet orderedSet];
      }
      v20 = ;
      [(BADownloadQueue *)v6 setDownloads:v20];
    }

    if ([coderCopy containsValueForKey:@"activeManifestDownload"])
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeManifestDownload"];
      [(BADownloadQueue *)v6 setActiveManifestDownload:v21];
    }

    [(BADownloadQueue *)v6 setEssentialAssetsWaitingOnContentRequest:0];
    if ([coderCopy containsValueForKey:@"essentialAssetsBytesTotal"])
    {
      -[BADownloadQueue setEssentialAssetsBytesTotal:](v6, "setEssentialAssetsBytesTotal:", [coderCopy decodeIntegerForKey:@"essentialAssetsBytesTotal"]);
    }

    if ([coderCopy containsValueForKey:@"essentialAssetsBytesDownloaded"])
    {
      -[BADownloadQueue setEssentialAssetsBytesDownloaded:](v6, "setEssentialAssetsBytesDownloaded:", [coderCopy decodeIntegerForKey:@"essentialAssetsBytesDownloaded"]);
    }

    v64 = v19;
    if ([coderCopy containsValueForKey:@"essentialAssetIdentifiersMonitored"])
    {
      v22 = objc_opt_class();
      v23 = [NSSet setWithObjects:v22, objc_opt_class(), 0];
      v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"essentialAssetIdentifiersMonitored"];
      [(BADownloadQueue *)v6 setEssentialAssetIdentifiersMonitored:v24];
    }

    if ([coderCopy containsValueForKey:@"frozen"])
    {
      -[BADownloadQueue setFrozen:](v6, "setFrozen:", [coderCopy decodeBoolForKey:@"frozen"]);
    }

    identifier = [(BADownloadQueue *)v6 identifier];
    _baassets_validUTI = [identifier _baassets_validUTI];

    v63 = _baassets_validUTI;
    v27 = [NSString stringWithFormat:@"DownloadStaging/%@", _baassets_validUTI];
    v28 = sub_100016048();
    v62 = v27;
    v29 = [v28 stringByAppendingPathComponent:v27];
    stagingDirectory = v6->_stagingDirectory;
    v6->_stagingDirectory = v29;

    v31 = +[NSFileManager defaultManager];
    stagingDirectory = [(BADownloadQueue *)v6 stagingDirectory];
    [v31 createDirectoryAtPath:stagingDirectory withIntermediateDirectories:1 attributes:0 error:0];

    v33 = +[NSMutableSet set];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    downloads = [(BADownloadQueue *)v6 downloads];
    v35 = [downloads countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v70;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v70 != v37)
          {
            objc_enumerationMutation(downloads);
          }

          v39 = *(*(&v69 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 || [v39 state] == -1)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [downloads countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v36);
    }

    v40 = objc_alloc_init(NSMutableSet);
    [(BADownloadQueue *)v6 setActiveDownloads:v40];

    v41 = +[NSMutableDictionary dictionary];
    [(BADownloadQueue *)v6 setUniqueIdentifiersToDownloads:v41];

    v42 = +[NSMutableDictionary dictionary];
    [(BADownloadQueue *)v6 setIdentifiersToDownloads:v42];

    downloads2 = [(BADownloadQueue *)v6 downloads];
    [downloads2 minusSet:v33];

    activeManifestDownload = [(BADownloadQueue *)v6 activeManifestDownload];

    downloads3 = [(BADownloadQueue *)v6 downloads];
    v46 = [downloads3 set];
    if (activeManifestDownload)
    {
      activeManifestDownload2 = [(BADownloadQueue *)v6 activeManifestDownload];
      v48 = [v46 setByAddingObject:activeManifestDownload2];

      v46 = v48;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v49 = v46;
    v50 = [v49 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v66;
      do
      {
        for (j = 0; j != v51; j = j + 1)
        {
          if (*v66 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v65 + 1) + 8 * j);
          identifier2 = [(BADownloadQueue *)v6 identifier];
          [v54 setApplicationIdentifier:identifier2];

          stagingDirectory2 = [(BADownloadQueue *)v6 stagingDirectory];
          [v54 setDownloadCachePath:stagingDirectory2];

          if ([v54 state] == 2 || objc_msgSend(v54, "state") == 3)
          {
            sub_10004C130(v54, 1);
          }

          uniqueIdentifiersToDownloads = [(BADownloadQueue *)v6 uniqueIdentifiersToDownloads];
          uniqueIdentifier = [v54 uniqueIdentifier];
          [uniqueIdentifiersToDownloads setObject:v54 forKey:uniqueIdentifier];

          identifiersToDownloads = [(BADownloadQueue *)v6 identifiersToDownloads];
          identifier3 = [v54 identifier];
          [identifiersToDownloads setObject:v54 forKey:identifier3];
        }

        v51 = [v49 countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v51);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(BADownloadQueue *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  os_unfair_recursive_lock_lock_with_options();
  lastDownloadStartDate = [(BADownloadQueue *)self lastDownloadStartDate];
  [coderCopy encodeObject:lastDownloadStartDate forKey:@"lastDownloadStartDate"];

  [coderCopy encodeBool:-[BADownloadQueue frozen](self forKey:{"frozen"), @"frozen"}];
  downloads = [(BADownloadQueue *)self downloads];
  [coderCopy encodeObject:downloads forKey:@"downloads"];

  activeManifestDownload = [(BADownloadQueue *)self activeManifestDownload];

  if (activeManifestDownload)
  {
    activeManifestDownload2 = [(BADownloadQueue *)self activeManifestDownload];
    [coderCopy encodeObject:activeManifestDownload2 forKey:@"activeManifestDownload"];
  }

  [coderCopy encodeInteger:-[BADownloadQueue essentialAssetsBytesTotal](self forKey:{"essentialAssetsBytesTotal"), @"essentialAssetsBytesTotal"}];
  [coderCopy encodeInteger:-[BADownloadQueue essentialAssetsBytesDownloaded](self forKey:{"essentialAssetsBytesDownloaded"), @"essentialAssetsBytesDownloaded"}];
  essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
  [coderCopy encodeObject:essentialAssetIdentifiersMonitored forKey:@"essentialAssetIdentifiersMonitored"];

  os_unfair_recursive_lock_unlock();
}

- (void)_addDownload:(id)download
{
  downloadCopy = download;
  os_unfair_lock_assert_owner(&self->_stateLock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = downloadCopy;
    essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
    v7 = [essentialAssetIdentifiersMonitored copy];

    if ([v7 count])
    {
      v8 = sub_100010584();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(BADownloadQueue *)self identifier];
        *buf = 138543618;
        v33 = identifier;
        v34 = 2048;
        v35 = [v7 count];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New manifest being enqueued for %{public}@, canceling existing essential downloads. (Count: %ld)", buf, 0x16u);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        do
        {
          v14 = 0;
          do
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [(BADownloadQueue *)self _downloadWithIdentifier:*(*(&v27 + 1) + 8 * v14), v27];
            v16 = v15;
            if (v15)
            {
              [v15 cancelDownload];
              [(BADownloadQueue *)self _removeDownload:v16];
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v12);
      }
    }

    [(BADownloadQueue *)self setActiveManifestDownload:v5, v27];
    [(BADownloadQueue *)self setEssentialAssetsBytesTotal:0];
    [(BADownloadQueue *)self setEssentialAssetsBytesDownloaded:0];
    if ((sub_100048424(v5) - 1) > 1)
    {
      identifier2 = +[NSMutableSet set];
      [(BADownloadQueue *)self setEssentialAssetIdentifiersMonitored:identifier2];
    }

    else
    {
      identifier2 = [v5 identifier];
      v18 = [NSMutableSet setWithObject:identifier2];
      [(BADownloadQueue *)self setEssentialAssetIdentifiersMonitored:v18];
    }

    [(BADownloadQueue *)self _reportEssentialAssetStateAndProgress];
  }

  downloads = [(BADownloadQueue *)self downloads];
  downloads2 = [(BADownloadQueue *)self downloads];
  v21 = [downloads indexOfObject:downloadCopy inSortedRange:0 options:objc_msgSend(downloads2 usingComparator:{"count"), 1024, &stru_1000797E8}];

  downloads3 = [(BADownloadQueue *)self downloads];
  [downloads3 insertObject:downloadCopy atIndex:v21];

  uniqueIdentifiersToDownloads = [(BADownloadQueue *)self uniqueIdentifiersToDownloads];
  uniqueIdentifier = [downloadCopy uniqueIdentifier];
  [uniqueIdentifiersToDownloads setObject:downloadCopy forKey:uniqueIdentifier];

  identifiersToDownloads = [(BADownloadQueue *)self identifiersToDownloads];
  identifier3 = [downloadCopy identifier];
  [identifiersToDownloads setObject:downloadCopy forKey:identifier3];
}

- (void)_removeDownload:(id)download
{
  downloadCopy = download;
  os_unfair_lock_assert_owner(&self->_stateLock);
  activeDownloads = [(BADownloadQueue *)self activeDownloads];
  [activeDownloads removeObject:downloadCopy];

  downloads = [(BADownloadQueue *)self downloads];
  [downloads removeObject:downloadCopy];

  uniqueIdentifiersToDownloads = [(BADownloadQueue *)self uniqueIdentifiersToDownloads];
  uniqueIdentifier = [downloadCopy uniqueIdentifier];
  [uniqueIdentifiersToDownloads removeObjectForKey:uniqueIdentifier];

  identifiersToDownloads = [(BADownloadQueue *)self identifiersToDownloads];
  identifier = [downloadCopy identifier];
  [identifiersToDownloads removeObjectForKey:identifier];

  essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
  identifier2 = [downloadCopy identifier];
  [essentialAssetIdentifiersMonitored removeObject:identifier2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeManifestDownload = [(BADownloadQueue *)self activeManifestDownload];
    v13 = [activeManifestDownload isEqual:downloadCopy];

    if (v13)
    {
      [(BADownloadQueue *)self setActiveManifestDownload:0];
    }
  }
}

- (id)_downloadWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_stateLock);
  uniqueIdentifiersToDownloads = [(BADownloadQueue *)self uniqueIdentifiersToDownloads];
  v6 = [uniqueIdentifiersToDownloads objectForKey:identifierCopy];

  return v6;
}

- (id)_downloadWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_stateLock);
  identifiersToDownloads = [(BADownloadQueue *)self identifiersToDownloads];
  v6 = [identifiersToDownloads objectForKey:identifierCopy];

  return v6;
}

- (id)downloadWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(BADownloadQueue *)self _downloadWithUniqueIdentifier:identifierCopy];

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (int64_t)essentialAssetsStateWithSizeDownloaded:(int64_t *)downloaded totalDownloadSize:(int64_t *)size
{
  os_unfair_recursive_lock_lock_with_options();
  _essentialAssetState = [(BADownloadQueue *)self _essentialAssetState];
  if (downloaded)
  {
    *downloaded = [(BADownloadQueue *)self essentialAssetsBytesDownloaded];
  }

  if (size)
  {
    *size = [(BADownloadQueue *)self essentialAssetsBytesTotal];
  }

  os_unfair_recursive_lock_unlock();
  return _essentialAssetState;
}

- (int64_t)_essentialAssetState
{
  os_unfair_lock_assert_owner(&self->_stateLock);
  activeManifestDownload = [(BADownloadQueue *)self activeManifestDownload];

  if (activeManifestDownload)
  {
    activeManifestDownload2 = [(BADownloadQueue *)self activeManifestDownload];
    v5 = sub_100048424(activeManifestDownload2);

    if ((v5 - 1) <= 1)
    {
      activeManifestDownload3 = [(BADownloadQueue *)self activeManifestDownload];
      state = [activeManifestDownload3 state];

      if (state < 4)
      {
        return qword_1000594A8[state];
      }
    }
  }

  else
  {
    if ([(BADownloadQueue *)self essentialAssetsWaitingOnContentRequest])
    {
      return 3;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
    v10 = [essentialAssetIdentifiersMonitored countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = *v23;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(essentialAssetIdentifiersMonitored);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          identifiersToDownloads = [(BADownloadQueue *)self identifiersToDownloads];
          v19 = [identifiersToDownloads objectForKey:v17];

          if (v19)
          {
            v20 = [v19 state] == 2;
            if (![v19 state] || objc_msgSend(v19, "state") == 1)
            {
              v13 = 1;
            }

            v12 |= v20;
            if (v12 & v13)
            {

              LOBYTE(v13) = 1;
              LOBYTE(v12) = 1;
LABEL_23:
              if ([(BADownloadQueue *)self frozen])
              {
                return 5;
              }

              v21 = 3;
              if ((v13 & 1) == 0)
              {
                v21 = 0;
              }

              if (v12)
              {
                return 4;
              }

              else
              {
                return v21;
              }
            }

            v14 = 1;
          }
        }

        v11 = [essentialAssetIdentifiersMonitored countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (void)_reportEssentialAssetStateAndProgress
{
  os_unfair_lock_assert_owner(&self->_stateLock);
  _essentialAssetState = [(BADownloadQueue *)self _essentialAssetState];
  essentialAssetsBytesDownloaded = [(BADownloadQueue *)self essentialAssetsBytesDownloaded];
  essentialAssetsBytesTotal = [(BADownloadQueue *)self essentialAssetsBytesTotal];
  delegate = [(BADownloadQueue *)self delegate];
  [delegate downloadQueue:self essentialAssetState:_essentialAssetState bytesWritten:essentialAssetsBytesDownloaded totalBytes:essentialAssetsBytesTotal];
}

- (void)scheduleDownload:(id)download completionHandler:(id)handler
{
  downloadCopy = download;
  handlerCopy = handler;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  os_unfair_lock_lock([downloadCopy downloadLock]);
  identifier = [(BADownloadQueue *)self identifier];
  [downloadCopy setApplicationIdentifier:identifier];

  stagingDirectory = [(BADownloadQueue *)self stagingDirectory];
  [downloadCopy setDownloadCachePath:stagingDirectory];

  sub_10004C130(downloadCopy, 1);
  necessity = [downloadCopy necessity];
  v37 = downloadCopy;
  os_unfair_lock_unlock([downloadCopy downloadLock]);
  v12 = qos_class_self();
  v13 = dispatch_get_global_queue(v12, 0);
  v14 = v13;
  if ((isKindOfClass & 1) != 0 || necessity != 1)
  {
    queue = v13;
    v36 = handlerCopy;
    os_unfair_recursive_lock_lock_with_options();
    v17 = +[NSMutableSet set];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    downloads = [(BADownloadQueue *)self downloads];
    v19 = [downloads countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v48;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(downloads);
          }

          v23 = *(*(&v47 + 1) + 8 * i);
          if (isKindOfClass & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v17 addObject:v23];
          }

          else
          {
            identifier2 = [v23 identifier];
            identifier3 = [v37 identifier];
            v26 = [identifier2 isEqual:identifier3];

            if (v26)
            {
              v32 = sub_100027BE4(100);
              os_unfair_lock_lock([v37 downloadLock]);
              [v37 setDownloadError:v32];
              sub_10004C130(v37, -1);
              os_unfair_lock_unlock([v37 downloadLock]);
              v33 = sub_1000104FC();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_10004904C();
              }

              v44[0] = _NSConcreteStackBlock;
              v44[1] = 3221225472;
              v44[2] = sub_1000135EC;
              v44[3] = &unk_100079810;
              handlerCopy = v36;
              v45 = v32;
              v46 = v36;
              v34 = v32;
              v14 = queue;
              dispatch_async(queue, v44);
              os_unfair_recursive_lock_unlock();

              goto LABEL_28;
            }
          }
        }

        v20 = [downloads countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = v17;
    v27 = [v17 countByEnumeratingWithState:&v40 objects:v54 count:16];
    handlerCopy = v36;
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v17);
          }

          v31 = *(*(&v40 + 1) + 8 * j);
          [v31 cancelDownloadSilently];
          [(BADownloadQueue *)self _removeDownload:v31];
        }

        v28 = [v17 countByEnumeratingWithState:&v40 objects:v54 count:16];
      }

      while (v28);
    }

    [(BADownloadQueue *)self _addDownload:v37];
    os_unfair_recursive_lock_unlock();
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100013600;
    v38[3] = &unk_100079838;
    v39 = v36;
    v14 = queue;
    dispatch_async(queue, v38);
    downloads = v39;
  }

  else
  {
    v15 = sub_100027BE4(109);
    os_unfair_lock_lock([downloadCopy downloadLock]);
    [downloadCopy setDownloadError:v15];
    sub_10004C130(downloadCopy, -1);
    os_unfair_lock_unlock([downloadCopy downloadLock]);
    v16 = sub_1000104FC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100048F90();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000135D8;
    block[3] = &unk_100079810;
    v52 = v15;
    v53 = handlerCopy;
    v17 = v15;
    dispatch_async(v14, block);

    downloads = v53;
  }

LABEL_28:
}

- (void)scheduleContentRequestAborted
{
  os_unfair_recursive_lock_lock_with_options();
  [(BADownloadQueue *)self setEssentialAssetsWaitingOnContentRequest:0];
  [(BADownloadQueue *)self _reportEssentialAssetStateAndProgress];

  os_unfair_recursive_lock_unlock();
}

- (void)scheduleContentRequest:(int64_t)request downloads:(id)downloads applicationInfo:(id)info completionHandler:(id)handler
{
  downloadsCopy = downloads;
  infoCopy = info;
  handlerCopy = handler;
  v12 = qos_class_self();
  queue = dispatch_get_global_queue(v12, 0);
  identifier = [(BADownloadQueue *)self identifier];
  v14 = [BAApplicationInfo applicationForIdentifierAllowsBackgroundActivity:identifier];

  os_unfair_recursive_lock_lock_with_options();
  [(BADownloadQueue *)self setEssentialAssetsWaitingOnContentRequest:0];
  v61 = infoCopy;
  v15 = [infoCopy remainingDownloadAllowanceWithNecessity:1 isManifest:0];
  v59 = downloadsCopy;
  allObjects = [downloadsCopy allObjects];
  v17 = [allObjects sortedArrayUsingSelector:"compare:"];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v56 = v17;
  obj = [v17 reverseObjectEnumerator];
  v18 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v18)
  {
    v19 = v18;
    v64 = *v74;
    v62 = request - 1;
    v60 = v14;
    do
    {
      v20 = 0;
      do
      {
        if (*v74 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v73 + 1) + 8 * v20);
        os_unfair_lock_lock([v21 downloadLock]);
        identifier2 = [(BADownloadQueue *)self identifier];
        [v21 setApplicationIdentifier:identifier2];

        stagingDirectory = [(BADownloadQueue *)self stagingDirectory];
        [v21 setDownloadCachePath:stagingDirectory];

        sub_10004C130(v21, 1);
        os_unfair_lock_unlock([v21 downloadLock]);
        identifier3 = [v21 identifier];
        v25 = [(BADownloadQueue *)self _downloadWithIdentifier:identifier3];

        if (v25)
        {
          v26 = sub_100027BE4(100);
          [v21 setDownloadError:v26];
          sub_10004C130(v21, -1);
          v27 = sub_1000104FC();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            identifier4 = [v21 identifier];
            uniqueIdentifier = [v21 uniqueIdentifier];
            identifier5 = [(BADownloadQueue *)self identifier];
            *buf = 138543874;
            v78 = identifier4;
            v79 = 2114;
            v80 = uniqueIdentifier;
            v81 = 2114;
            v82 = identifier5;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failing download (%{public}@ , %{public}@) because it is already scheduled. App:(%{public}@).", buf, 0x20u);

            v14 = v60;
          }

          responseQueue = [v21 responseQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100013E94;
          block[3] = &unk_100079720;
          block[4] = self;
          block[5] = v21;
          v72 = v26;
          v29 = v26;
          dispatch_async(responseQueue, block);

          v30 = v72;
LABEL_21:

          goto LABEL_22;
        }

        necessity = [v21 necessity];
        if (!((necessity == 1) | v14 & 1))
        {
          v37 = sub_100027BE4(111);
          [v21 setDownloadError:v37];
          sub_10004C130(v21, -1);
          v38 = sub_1000104FC();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            identifier6 = [v21 identifier];
            uniqueIdentifier2 = [v21 uniqueIdentifier];
            identifier7 = [(BADownloadQueue *)self identifier];
            *buf = 138543874;
            v78 = identifier6;
            v79 = 2114;
            v80 = uniqueIdentifier2;
            v81 = 2114;
            v82 = identifier7;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failing download (%{public}@ , %{public}@) because download is optional and background activity is disabled. App:(%{public}@).", buf, 0x20u);

            v14 = v60;
          }

          responseQueue2 = [v21 responseQueue];
          v69[0] = _NSConcreteStackBlock;
          v69[1] = 3221225472;
          v69[2] = sub_100013EA4;
          v69[3] = &unk_100079720;
          v69[4] = self;
          v69[5] = v21;
          v70 = v37;
          v29 = v37;
          dispatch_async(responseQueue2, v69);

          v30 = v70;
          goto LABEL_21;
        }

        if (v62 <= 1 && necessity == 1)
        {
          initialRestrictionsAreEnforced = [v61 initialRestrictionsAreEnforced];
          v33 = sub_10004C1FC(v21);
          if (initialRestrictionsAreEnforced)
          {
            if (v15 < v33)
            {
              v34 = sub_100027BE4(112);
              [v21 setDownloadError:v34];
              sub_10004C130(v21, -1);
              v35 = sub_1000104FC();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                identifier8 = [v21 identifier];
                uniqueIdentifier3 = [v21 uniqueIdentifier];
                identifier9 = [(BADownloadQueue *)self identifier];
                *buf = 138543874;
                v78 = identifier8;
                v79 = 2114;
                v80 = uniqueIdentifier3;
                v81 = 2114;
                v82 = identifier9;
                _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failing download (%{public}@ , %{public}@) because enqueueing download would exceed essential download allowance. App:(%{public}@).", buf, 0x20u);

                v14 = v60;
              }

              responseQueue3 = [v21 responseQueue];
              v67[0] = _NSConcreteStackBlock;
              v67[1] = 3221225472;
              v67[2] = sub_100013EB4;
              v67[3] = &unk_100079720;
              v67[4] = self;
              v67[5] = v21;
              v68 = v34;
              v29 = v34;
              dispatch_async(responseQueue3, v67);

              v30 = v68;
              goto LABEL_21;
            }

            [(BADownloadQueue *)self setEssentialAssetsBytesTotal:[(BADownloadQueue *)self essentialAssetsBytesTotal]+ sub_10004C1FC(v21)];
            essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
            identifier10 = [v21 identifier];
            [essentialAssetIdentifiersMonitored addObject:identifier10];

            v47 = sub_10004C1FC(v21);
            if (v15 >= v47)
            {
              v15 -= v47;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            [(BADownloadQueue *)self setEssentialAssetsBytesTotal:[(BADownloadQueue *)self essentialAssetsBytesTotal]+ v33];
            essentialAssetIdentifiersMonitored2 = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
            identifier11 = [v21 identifier];
            [essentialAssetIdentifiersMonitored2 addObject:identifier11];
          }
        }

        [(BADownloadQueue *)self _addDownload:v21];
LABEL_22:
        v20 = v20 + 1;
      }

      while (v19 != v20);
      v54 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
      v19 = v54;
    }

    while (v54);
  }

  [(BADownloadQueue *)self _reportEssentialAssetStateAndProgress];
  os_unfair_recursive_lock_unlock();
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100013EC4;
  v65[3] = &unk_100079838;
  v66 = handlerCopy;
  v55 = handlerCopy;
  dispatch_async(queue, v65);
}

- (void)startForegroundDownload:(id)download completionHandler:(id)handler
{
  downloadCopy = download;
  handlerCopy = handler;
  uniqueIdentifier = [downloadCopy uniqueIdentifier];
  v9 = [(BADownloadQueue *)self downloadWithUniqueIdentifier:uniqueIdentifier];

  if (v9)
  {
    if ([downloadCopy necessity] == 1)
    {
      v10 = sub_1000104FC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100049250();
      }

      v11 = qos_class_self();
      v12 = dispatch_get_global_queue(v11, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014400;
      block[3] = &unk_100079838;
      v39 = handlerCopy;
      dispatch_async(v12, block);

      v13 = v39;
      goto LABEL_38;
    }

    if ([v9 necessity] == 1 && !objc_msgSend(downloadCopy, "necessity"))
    {
      v17 = sub_1000104FC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100049108();
      }
    }

    os_unfair_recursive_lock_lock_with_options();
    frozen = [(BADownloadQueue *)self frozen];
    os_unfair_recursive_lock_unlock();
    if (frozen)
    {
      v19 = sub_1000104FC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000491AC();
      }

      v20 = qos_class_self();
      v21 = dispatch_get_global_queue(v20, 0);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100014460;
      v36[3] = &unk_100079838;
      v37 = handlerCopy;
      dispatch_async(v21, v36);

      v13 = v37;
      goto LABEL_38;
    }

    os_unfair_lock_lock([v9 downloadLock]);
    if ([v9 isForegroundDownload])
    {
      v22 = 0;
    }

    else
    {
      state = [v9 state];
      if (state == 2)
      {
        v22 = 0;
        v24 = 0;
        v25 = 1;
        goto LABEL_26;
      }

      if (state == -1)
      {
        v24 = sub_100027BE4(103);
        v22 = 0;
        v25 = 0;
        goto LABEL_26;
      }

      v22 = 1;
      [v9 setIsForegroundDownload:1];
    }

    v25 = 0;
    v24 = 0;
LABEL_26:
    os_unfair_lock_unlock([v9 downloadLock]);
    if (!v24)
    {
      if (v25)
      {
        [v9 promoteToForeground];
      }

      else if (v22)
      {
        os_unfair_recursive_lock_lock_with_options();
        v35 = 0;
        v26 = [v9 startDownloadWithDelegate:self error:&v35];
        v27 = v35;
        v28 = v27;
        if (v26)
        {
          activeDownloads = [(BADownloadQueue *)self activeDownloads];
          [activeDownloads addObject:v9];

          v24 = 0;
        }

        else
        {
          if (!v27)
          {
            v28 = sub_100027BE4(102);
          }

          v24 = v28;
          v28 = v24;
        }

        os_unfair_recursive_lock_unlock();

        goto LABEL_37;
      }

      v24 = 0;
    }

LABEL_37:
    v30 = qos_class_self();
    v31 = dispatch_get_global_queue(v30, 0);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000144C0;
    v32[3] = &unk_100079810;
    v33 = v24;
    v34 = handlerCopy;
    v13 = v24;
    dispatch_async(v31, v32);

    goto LABEL_38;
  }

  v14 = sub_1000104FC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000492F4();
  }

  v15 = qos_class_self();
  v16 = dispatch_get_global_queue(v15, 0);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000143A0;
  v40[3] = &unk_100079838;
  v41 = handlerCopy;
  dispatch_async(v16, v40);

  v13 = v41;
LABEL_38:
}

- (BOOL)cancelDownload:(id)download error:(id *)error
{
  uniqueIdentifier = [download uniqueIdentifier];
  v7 = [(BADownloadQueue *)self downloadWithUniqueIdentifier:uniqueIdentifier];

  if (v7)
  {
    [v7 cancelDownload];
  }

  else if (error)
  {
    *error = sub_100027BE4(101);
  }

  return v7 != 0;
}

- (void)_cancelAllDownloadsSilently:(BOOL)silently
{
  silentlyCopy = silently;
  os_unfair_recursive_lock_lock_with_options();
  v5 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  downloads = [(BADownloadQueue *)self downloads];
  v7 = [downloads countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(downloads);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        activeDownloads = [(BADownloadQueue *)self activeDownloads];
        v13 = [activeDownloads containsObject:v11];

        if (v13)
        {
          if (silentlyCopy)
          {
            [v11 cancelDownloadSilently];
          }

          else
          {
            [v11 cancelDownload];
          }
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [downloads countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    if (silentlyCopy)
    {
      v18 = -2;
    }

    else
    {
      v18 = -1;
    }

    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        v21 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0, v22];
        sub_10004C130(v20, v18);
        [(BADownloadQueue *)self download:v20 failedWithError:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  os_unfair_recursive_lock_unlock();
}

- (void)demoteAllForegroundDownloads
{
  os_unfair_recursive_lock_lock_with_options();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  downloads = [(BADownloadQueue *)self downloads];
  v4 = [downloads countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(downloads);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        activeDownloads = [(BADownloadQueue *)self activeDownloads];
        v10 = [activeDownloads containsObject:v8];

        if (v10)
        {
          [v8 demoteToBackground];
        }

        else
        {
          os_unfair_lock_lock([v8 downloadLock]);
          [v8 setIsForegroundDownload:0];
          os_unfair_lock_unlock([v8 downloadLock]);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [downloads countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)startNextDownload
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100014D3C;
  v34 = sub_100014D4C;
  v35 = 0;
  delegate = [(BADownloadQueue *)self delegate];
  v4 = [delegate downloadQueue:self permittedToStartDownloadsWithNecessity:1];

  delegate2 = [(BADownloadQueue *)self delegate];
  v6 = [delegate2 downloadQueue:self permittedToStartDownloadsWithNecessity:0];

  os_unfair_recursive_lock_lock_with_options();
  if ([(BADownloadQueue *)self frozen])
  {
    goto LABEL_5;
  }

  essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
  v8 = [essentialAssetIdentifiersMonitored count];

  downloads = [(BADownloadQueue *)self downloads];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100014D54;
  v26[3] = &unk_100079860;
  v27 = v4;
  v28 = v6;
  v29 = v8 != 0;
  v26[4] = &v30;
  [downloads enumerateObjectsWithOptions:2 usingBlock:v26];

  v10 = v31[5];
  if (!v10)
  {
LABEL_5:
    v11 = 0;
  }

  else
  {
    v25 = 0;
    v11 = [v10 startDownloadWithDelegate:self error:&v25];
    v12 = v25;
    if (v11)
    {
      downloadStartDate = [v31[5] downloadStartDate];
      [(BADownloadQueue *)self setLastDownloadStartDate:downloadStartDate];

      activeDownloads = [(BADownloadQueue *)self activeDownloads];
      [activeDownloads addObject:v31[5]];
    }

    else
    {
      v15 = sub_100010584();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        identifier = [(BADownloadQueue *)self identifier];
        identifier2 = [v31[5] identifier];
        *buf = 138543874;
        v37 = identifier;
        v38 = 2114;
        v39 = identifier2;
        v40 = 2114;
        v41 = v12;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to start the next download in the queue. (Client Identifier: %{public}@) (Download Identifier: %{public}@) Error:%{public}@", buf, 0x20u);
      }

      if (!v12)
      {
        v12 = sub_100027BE4(102);
      }

      os_unfair_lock_lock([v31[5] downloadLock]);
      sub_10004C130(v31[5], -1);
      [v31[5] setDownloadError:v12];
      os_unfair_lock_unlock([v31[5] downloadLock]);
      v16 = os_transaction_create();
      responseQueue = [v31[5] responseQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014E28;
      block[3] = &unk_100079888;
      block[4] = self;
      v24 = &v30;
      v12 = v12;
      v22 = v12;
      v23 = v16;
      activeDownloads = v16;
      dispatch_async(responseQueue, block);
    }
  }

  os_unfair_recursive_lock_unlock();
  _Block_object_dispose(&v30, 8);

  return v11;
}

- (void)pauseAllDownloads
{
  os_unfair_recursive_lock_lock_with_options();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  downloads = [(BADownloadQueue *)self downloads];
  v4 = [downloads countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(downloads);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 state] == 2)
        {
          [v8 pauseDownload];
        }
      }

      v5 = [downloads countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  os_unfair_recursive_lock_unlock();
}

- (void)freeze
{
  os_unfair_recursive_lock_lock_with_options();
  if (![(BADownloadQueue *)self frozen])
  {
    [(BADownloadQueue *)self setFrozen:1];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    downloads = [(BADownloadQueue *)self downloads];
    v4 = [downloads countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(downloads);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 state] == 2)
          {
            [v8 pauseDownload];
          }
        }

        v5 = [downloads countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v5);
    }

    v9 = sub_1000104FC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(BADownloadQueue *)self identifier];
      *buf = 138543362;
      v16 = identifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Download queue (%{public}@) has been frozen.", buf, 0xCu);
    }

    [(BADownloadQueue *)self _reportEssentialAssetStateAndProgress];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)thaw
{
  os_unfair_recursive_lock_lock_with_options();
  if ([(BADownloadQueue *)self frozen])
  {
    [(BADownloadQueue *)self setFrozen:0];
    v3 = sub_1000104FC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(BADownloadQueue *)self identifier];
      v5 = 138543362;
      v6 = identifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Download queue (%{public}@) has been thawed.", &v5, 0xCu);
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (int64_t)numberOfActiveDownloads
{
  os_unfair_recursive_lock_lock_with_options();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  downloads = [(BADownloadQueue *)self downloads];
  v4 = [downloads countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(downloads);
        }

        if ([*(*(&v10 + 1) + 8 * i) state] == 2)
        {
          ++v6;
        }
      }

      v5 = [downloads countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_recursive_lock_unlock();
  return v6;
}

- (int64_t)numberOfWaitingDownloads
{
  os_unfair_recursive_lock_lock_with_options();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  downloads = [(BADownloadQueue *)self downloads];
  v4 = [downloads countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(downloads);
        }

        if ([*(*(&v10 + 1) + 8 * i) state] == 1)
        {
          ++v6;
        }
      }

      v5 = [downloads countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_recursive_lock_unlock();
  return v6;
}

- (NSArray)allDownloads
{
  os_unfair_recursive_lock_lock_with_options();
  downloads = [(BADownloadQueue *)self downloads];
  array = [downloads array];
  v5 = [array copy];

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (NSString)description
{
  allDownloads = [(BADownloadQueue *)self allDownloads];
  v4 = [NSMutableString alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithFormat:@"%@ (%p) - %lu Downloads {\n", v6, self, objc_msgSend(allDownloads, "count")];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = allDownloads;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 appendFormat:@"%@\n", *(*(&v14 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [v7 appendString:@"}"];

  return v7;
}

- (NSString)debugDescription
{
  allDownloads = [(BADownloadQueue *)self allDownloads];
  v4 = [NSMutableString alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identifier = [(BADownloadQueue *)self identifier];
  v8 = [v4 initWithFormat:@"%@ (%p)\nApplication Identifier: %@\nDownloads (%lu): {\n", v6, self, identifier, objc_msgSend(allDownloads, "count")];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = allDownloads;
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

        v14 = [*(*(&v16 + 1) + 8 * i) debugDescription];
        [v8 appendFormat:@"%@\n", v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v8 appendString:@"}"];

  return v8;
}

- (void)downloadDidBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(BADownloadQueue *)self delegate];

  if (delegate)
  {
    delegate2 = [(BADownloadQueue *)self delegate];
    [delegate2 downloadDidBegin:beginCopy];
  }
}

- (void)downloadDidPause:(id)pause
{
  pauseCopy = pause;
  delegate = [(BADownloadQueue *)self delegate];

  if (delegate)
  {
    delegate2 = [(BADownloadQueue *)self delegate];
    [delegate2 downloadDidPause:pauseCopy];
  }
}

- (void)download:(id)download didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  downloadCopy = download;
  delegate = [(BADownloadQueue *)self delegate];

  if (delegate)
  {
    if ([downloadCopy necessity] == 1)
    {
      os_unfair_recursive_lock_lock_with_options();
      essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
      identifier = [downloadCopy identifier];
      v13 = [essentialAssetIdentifiersMonitored containsObject:identifier];

      if (v13)
      {
        [(BADownloadQueue *)self setEssentialAssetsBytesDownloaded:[(BADownloadQueue *)self essentialAssetsBytesDownloaded]+ bytes];
        [(BADownloadQueue *)self _reportEssentialAssetStateAndProgress];
      }

      os_unfair_recursive_lock_unlock();
    }

    delegate2 = [(BADownloadQueue *)self delegate];
    [delegate2 download:downloadCopy didWriteBytes:bytes totalBytesWritten:written totalBytesExpectedToWrite:write];
  }
}

- (void)download:(id)download didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
{
  downloadCopy = download;
  delegate = [(BADownloadQueue *)self delegate];

  if (delegate)
  {
    delegate2 = [(BADownloadQueue *)self delegate];
    [delegate2 download:downloadCopy didResumeAtOffset:offset expectedTotalBytes:bytes];
  }
}

- (void)download:(id)download didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  downloadCopy = download;
  challengeCopy = challenge;
  handlerCopy = handler;
  delegate = [(BADownloadQueue *)self delegate];

  if (delegate)
  {
    delegate2 = [(BADownloadQueue *)self delegate];
    [delegate2 download:downloadCopy didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }
}

- (void)download:(id)download failedWithError:(id)error
{
  downloadCopy = download;
  errorCopy = error;
  os_unfair_recursive_lock_lock_with_options();
  essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
  v8 = [essentialAssetIdentifiersMonitored count];

  [(BADownloadQueue *)self _removeDownload:downloadCopy];
  essentialAssetIdentifiersMonitored2 = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
  v10 = [essentialAssetIdentifiersMonitored2 count];

  if (v8 && !v10)
  {
    [(BADownloadQueue *)self _reportEssentialAssetStateAndProgress];
  }

  os_unfair_recursive_lock_unlock();
  if (sub_10004C244(downloadCopy) == -2)
  {
    v12 = sub_10004C614(downloadCopy, v11);

    if (!v12)
    {
      goto LABEL_10;
    }

    delegate2 = +[NSFileManager defaultManager];
    v15 = sub_10004C614(downloadCopy, v14);
    [delegate2 removeItemAtURL:v15 error:0];
  }

  else
  {
    delegate = [(BADownloadQueue *)self delegate];

    if (!delegate)
    {
      goto LABEL_10;
    }

    delegate2 = [(BADownloadQueue *)self delegate];
    [delegate2 download:downloadCopy failedWithError:errorCopy];
  }

LABEL_10:
}

- (void)download:(id)download finishedWithFileURL:(id)l
{
  downloadCopy = download;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = downloadCopy;
    os_unfair_recursive_lock_lock_with_options();
    if ((sub_100048424(delegate2) - 1) <= 1)
    {
      [(BADownloadQueue *)self setEssentialAssetsWaitingOnContentRequest:1];
      [(BADownloadQueue *)self setEssentialAssetsBytesTotal:[(BADownloadQueue *)self essentialAssetsBytesDownloaded]];
    }

    [(BADownloadQueue *)self _removeDownload:delegate2];
    [(BADownloadQueue *)self _reportEssentialAssetStateAndProgress];
    os_unfair_recursive_lock_unlock();
    delegate = [(BADownloadQueue *)self delegate];
    [delegate downloadQueue:self manifest:delegate2 finishedWithFileURL:lCopy];

    lCopy = delegate;
  }

  else
  {
    os_unfair_recursive_lock_lock_with_options();
    essentialAssetIdentifiersMonitored = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
    v10 = [essentialAssetIdentifiersMonitored count];

    [(BADownloadQueue *)self _removeDownload:downloadCopy];
    essentialAssetIdentifiersMonitored2 = [(BADownloadQueue *)self essentialAssetIdentifiersMonitored];
    v12 = [essentialAssetIdentifiersMonitored2 count];

    if (v10 && !v12)
    {
      [(BADownloadQueue *)self _reportEssentialAssetStateAndProgress];
    }

    os_unfair_recursive_lock_unlock();
    delegate2 = [(BADownloadQueue *)self delegate];
    [delegate2 download:downloadCopy finishedWithFileURL:lCopy];
  }
}

- (BADownloadQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end