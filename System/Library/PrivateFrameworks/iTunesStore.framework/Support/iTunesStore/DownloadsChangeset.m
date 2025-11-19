@interface DownloadsChangeset
- (DownloadsChangeset)init;
- (id)_SSAppWakeRequests;
- (id)_applicationWorkspaceChanges;
- (id)_canceledAppDataRestoreIDs;
- (id)_canceledIPodLibraryDownloadIDs;
- (id)_cookies;
- (id)_deletedHTTPCookies;
- (id)_deletedIPodLibraryDownloadIDs;
- (id)_finishedDownloadKinds;
- (id)_initDownloadsChangeset;
- (id)_policyChangedDownloadIDs;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addApplicationWorkspaceChangeWithHandle:(id)a3 changeType:(int64_t)a4;
- (void)addApplicationWorkspaceChange:(id)a3;
- (void)addCanceledAppDataRestoreID:(id)a3;
- (void)addCanceledIPodLibraryDownloadID:(int64_t)a3;
- (void)addDeletedHTTPCookies:(id)a3;
- (void)addDeletedIPodLibraryDownloadID:(int64_t)a3;
- (void)addDownloadKind:(id)a3;
- (void)addDownloadToPipelineWithID:(int64_t)a3;
- (void)addFinishedDownloadKind:(id)a3;
- (void)addHTTPCookie:(id)a3;
- (void)addPolicyChangedDownloadID:(int64_t)a3;
- (void)addRemovedDownloadID:(int64_t)a3;
- (void)addRemovedPersistentDownloadID:(int64_t)a3;
- (void)addRestorableDownloadID:(int64_t)a3;
- (void)addSSAppWakeRequest:(id)a3;
- (void)addStatusChangedDownloadID:(int64_t)a3;
- (void)addUpdatedDownloadID:(int64_t)a3;
- (void)dealloc;
- (void)removeDownloadFromPipelineWithID:(int64_t)a3;
- (void)unionChangeset:(id)a3;
@end

@implementation DownloadsChangeset

- (DownloadsChangeset)init
{
  v2 = [(DownloadsChangeset *)self _initDownloadsChangeset];
  if (v2)
  {
    v2->_changedDownloadKinds = objc_alloc_init(NSMutableSet);
    v2->_ipodLibraryItems = objc_alloc_init(NSMutableArray);
    v2->_pipelineAdditions = objc_alloc_init(NSMutableOrderedSet);
    v2->_pipelineRestarts = objc_alloc_init(NSMutableOrderedSet);
    v2->_removedDownloadIDs = objc_alloc_init(NSMutableOrderedSet);
    v2->_removedPersistentDownloadIDs = objc_alloc_init(NSMutableOrderedSet);
    v2->_restorableDownloadIDs = objc_alloc_init(NSMutableOrderedSet);
    v2->_statusChangedDownloadIDs = objc_alloc_init(NSMutableSet);
    v2->_updatedDownloadIDs = objc_alloc_init(NSMutableSet);
  }

  return v2;
}

- (id)_initDownloadsChangeset
{
  v3.receiver = self;
  v3.super_class = DownloadsChangeset;
  return [(DownloadsChangeset *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadsChangeset;
  [(DownloadsChangeset *)&v3 dealloc];
}

- (void)addSSAppWakeRequest:(id)a3
{
  v4 = [(DownloadsChangeset *)self _SSAppWakeRequests];

  [v4 addObject:a3];
}

- (void)addApplicationWorkspaceChange:(id)a3
{
  v4 = [(DownloadsChangeset *)self _applicationWorkspaceChanges];

  [v4 addObject:a3];
}

- (void)addCanceledAppDataRestoreID:(id)a3
{
  v4 = [(DownloadsChangeset *)self _canceledAppDataRestoreIDs];

  [v4 addObject:a3];
}

- (void)addCanceledIPodLibraryDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [-[DownloadsChangeset _canceledIPodLibraryDownloadIDs](self "_canceledIPodLibraryDownloadIDs")];
}

- (void)addDeletedHTTPCookies:(id)a3
{
  v4 = [(DownloadsChangeset *)self _deletedHTTPCookies];

  [v4 addObjectsFromArray:a3];
}

- (void)addDeletedIPodLibraryDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [-[DownloadsChangeset _deletedIPodLibraryDownloadIDs](self "_deletedIPodLibraryDownloadIDs")];
}

- (void)addDownloadKind:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_changedDownloadKinds addObject:?];
  }
}

- (void)addDownloadToPipelineWithID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableOrderedSet *)self->_pipelineAdditions addObject:v4];
}

- (void)addFinishedDownloadKind:(id)a3
{
  if (a3)
  {
    v4 = [(DownloadsChangeset *)self _finishedDownloadKinds];

    [v4 addObject:a3];
  }
}

- (void)addHTTPCookie:(id)a3
{
  v4 = [(DownloadsChangeset *)self _cookies];

  [v4 addObject:a3];
}

- (void)addPolicyChangedDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [-[DownloadsChangeset _policyChangedDownloadIDs](self "_policyChangedDownloadIDs")];
}

- (void)addRemovedDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableOrderedSet *)self->_removedDownloadIDs addObject:v4];
}

- (void)addRemovedPersistentDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableOrderedSet *)self->_removedPersistentDownloadIDs addObject:v4];
}

- (void)addRestorableDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableOrderedSet *)self->_restorableDownloadIDs addObject:v4];
}

- (void)addStatusChangedDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableSet *)self->_statusChangedDownloadIDs addObject:v4];
}

- (void)addUpdatedDownloadID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableSet *)self->_updatedDownloadIDs addObject:v4];
}

- (void)removeDownloadFromPipelineWithID:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableOrderedSet *)self->_pipelineAdditions removeObject:v4];
}

- (void)unionChangeset:(id)a3
{
  v5 = [a3 SSAppWakeRequests];
  if (v5)
  {
    [-[DownloadsChangeset _SSAppWakeRequests](self "_SSAppWakeRequests")];
  }

  v6 = [a3 applicationWorkspaceChanges];
  if ([v6 count])
  {
    [-[DownloadsChangeset _applicationWorkspaceChanges](self "_applicationWorkspaceChanges")];
  }

  v7 = [a3 canceledAppDataRestoreIDs];
  if (v7)
  {
    [-[DownloadsChangeset _canceledAppDataRestoreIDs](self "_canceledAppDataRestoreIDs")];
  }

  v8 = [a3 changedDownloadProperties];
  if (v8)
  {
    v9 = v8;
    changedDownloadProperties = self->_changedDownloadProperties;
    if (changedDownloadProperties)
    {
      v11 = [(NSDictionary *)changedDownloadProperties mutableCopy];
    }

    else
    {
      v11 = objc_alloc_init(NSMutableDictionary);
    }

    v12 = v11;
    [v11 addEntriesFromDictionary:v9];
    [(DownloadsChangeset *)self setChangedDownloadProperties:v12];
  }

  v13 = [a3 changedExternalDownloadProperties];
  if (v13)
  {
    v14 = v13;
    changedExternalDownloadProperties = self->_changedExternalDownloadProperties;
    if (changedExternalDownloadProperties)
    {
      v16 = [(NSDictionary *)changedExternalDownloadProperties mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(NSMutableDictionary);
    }

    v17 = v16;
    [v16 addEntriesFromDictionary:v14];
    [(DownloadsChangeset *)self setChangedExternalDownloadProperties:v17];
  }

  v18 = [a3 finishedDownloadKinds];
  if (v18)
  {
    [-[DownloadsChangeset _finishedDownloadKinds](self "_finishedDownloadKinds")];
  }

  v19 = [a3 HTTPCookies];
  if (v19)
  {
    [-[DownloadsChangeset _cookies](self "_cookies")];
  }

  v20 = [a3 deletedHTTPCookies];
  if (v20)
  {
    [-[DownloadsChangeset _deletedHTTPCookies](self "_deletedHTTPCookies")];
  }

  v21 = [a3 deletedIPodLibraryDownloadIDs];
  if (v21)
  {
    [-[DownloadsChangeset _deletedIPodLibraryDownloadIDs](self "_deletedIPodLibraryDownloadIDs")];
  }

  v22 = [a3 canceledIPodLibraryDownloadIDs];
  if (v22)
  {
    [-[DownloadsChangeset _canceledIPodLibraryDownloadIDs](self "_canceledIPodLibraryDownloadIDs")];
  }

  v23 = [a3 policyChangedDownloadIDs];
  if (v23)
  {
    [-[DownloadsChangeset _policyChangedDownloadIDs](self "_policyChangedDownloadIDs")];
  }

  -[NSMutableSet unionSet:](self->_changedDownloadKinds, "unionSet:", [a3 changedDownloadKinds]);
  self->_downloadChangeTypes |= [a3 downloadChangeTypes];
  -[NSMutableArray addObjectsFromArray:](self->_ipodLibraryItems, "addObjectsFromArray:", [a3 IPodLibraryItems]);
  -[NSMutableOrderedSet unionOrderedSet:](self->_pipelineAdditions, "unionOrderedSet:", [a3 pipelineAdditions]);
  -[NSMutableOrderedSet unionOrderedSet:](self->_removedDownloadIDs, "unionOrderedSet:", [a3 removedDownloadIDs]);
  -[NSMutableOrderedSet unionOrderedSet:](self->_removedPersistentDownloadIDs, "unionOrderedSet:", [a3 removedPersistentDownloadIDs]);
  -[NSMutableOrderedSet unionOrderedSet:](self->_restorableDownloadIDs, "unionOrderedSet:", [a3 restorableDownloadIDs]);
  -[NSMutableSet unionSet:](self->_statusChangedDownloadIDs, "unionSet:", [a3 statusChangedDownloadIDs]);
  -[NSMutableSet unionSet:](self->_updatedDownloadIDs, "unionSet:", [a3 updatedDownloadIDs]);
  if (!self->_restoreReason)
  {
    self->_restoreReason = [a3 restoreReason];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "_initDownloadsChangeset"}];
  v5[1] = [(NSMutableArray *)self->_SSAppWakeRequests mutableCopyWithZone:a3];
  v5[2] = [(NSMutableArray *)self->_applicationWorkspaceChanges mutableCopyWithZone:a3];
  v5[3] = [(NSMutableSet *)self->_canceledAppDataRestoreIDs mutableCopyWithZone:a3];
  v5[4] = [(NSMutableSet *)self->_canceledIPodLibraryDownloadIDs mutableCopyWithZone:a3];
  v5[5] = [(NSMutableSet *)self->_changedDownloadKinds mutableCopyWithZone:a3];
  v5[6] = [(NSDictionary *)self->_changedDownloadProperties copyWithZone:a3];
  v5[7] = [(NSDictionary *)self->_changedExternalDownloadProperties copyWithZone:a3];
  v5[8] = [(NSMutableArray *)self->_cookies mutableCopyWithZone:a3];
  v5[9] = [(NSMutableArray *)self->_deletedHTTPCookies mutableCopyWithZone:a3];
  v5[10] = [(NSMutableSet *)self->_deletedIPodLibraryDownloadIDs mutableCopyWithZone:a3];
  v5[11] = self->_downloadChangeTypes;
  v5[12] = [(NSMutableSet *)self->_finishedDownloadKinds mutableCopyWithZone:a3];
  v5[13] = [(NSMutableArray *)self->_ipodLibraryItems mutableCopyWithZone:a3];
  v5[14] = [(NSMutableOrderedSet *)self->_pipelineAdditions mutableCopyWithZone:a3];
  v5[15] = [(NSMutableOrderedSet *)self->_pipelineRestarts mutableCopyWithZone:a3];
  v5[16] = [(NSMutableOrderedSet *)self->_policyChangedDownloadIDs mutableCopyWithZone:a3];
  v5[17] = [(NSMutableOrderedSet *)self->_removedDownloadIDs mutableCopyWithZone:a3];
  v5[18] = [(NSMutableOrderedSet *)self->_removedPersistentDownloadIDs mutableCopyWithZone:a3];
  v5[19] = [(NSMutableOrderedSet *)self->_restorableDownloadIDs mutableCopyWithZone:a3];
  v5[20] = [(NSString *)self->_restoreReason copyWithZone:a3];
  v5[21] = [(NSMutableSet *)self->_statusChangedDownloadIDs mutableCopyWithZone:a3];
  v5[22] = [(NSMutableSet *)self->_updatedDownloadIDs mutableCopyWithZone:a3];
  return v5;
}

- (void)_addApplicationWorkspaceChangeWithHandle:(id)a3 changeType:(int64_t)a4
{
  v7 = objc_alloc_init(ApplicationWorkspaceChange);
  [(ApplicationWorkspaceChange *)v7 setChangeType:a4];
  [(ApplicationWorkspaceChange *)v7 setApplicationHandle:a3];
  [(DownloadsChangeset *)self addApplicationWorkspaceChange:v7];
}

- (id)_SSAppWakeRequests
{
  result = self->_SSAppWakeRequests;
  if (!result)
  {
    result = objc_alloc_init(NSMutableArray);
    self->_SSAppWakeRequests = result;
  }

  return result;
}

- (id)_applicationWorkspaceChanges
{
  result = self->_applicationWorkspaceChanges;
  if (!result)
  {
    result = objc_alloc_init(NSMutableArray);
    self->_applicationWorkspaceChanges = result;
  }

  return result;
}

- (id)_canceledAppDataRestoreIDs
{
  result = self->_canceledAppDataRestoreIDs;
  if (!result)
  {
    result = objc_alloc_init(NSMutableSet);
    self->_canceledAppDataRestoreIDs = result;
  }

  return result;
}

- (id)_canceledIPodLibraryDownloadIDs
{
  result = self->_canceledIPodLibraryDownloadIDs;
  if (!result)
  {
    result = objc_alloc_init(NSMutableSet);
    self->_canceledIPodLibraryDownloadIDs = result;
  }

  return result;
}

- (id)_cookies
{
  result = self->_cookies;
  if (!result)
  {
    result = objc_alloc_init(NSMutableArray);
    self->_cookies = result;
  }

  return result;
}

- (id)_deletedHTTPCookies
{
  result = self->_deletedHTTPCookies;
  if (!result)
  {
    result = objc_alloc_init(NSMutableArray);
    self->_deletedHTTPCookies = result;
  }

  return result;
}

- (id)_deletedIPodLibraryDownloadIDs
{
  result = self->_deletedIPodLibraryDownloadIDs;
  if (!result)
  {
    result = objc_alloc_init(NSMutableSet);
    self->_deletedIPodLibraryDownloadIDs = result;
  }

  return result;
}

- (id)_finishedDownloadKinds
{
  result = self->_finishedDownloadKinds;
  if (!result)
  {
    result = objc_alloc_init(NSMutableSet);
    self->_finishedDownloadKinds = result;
  }

  return result;
}

- (id)_policyChangedDownloadIDs
{
  result = self->_policyChangedDownloadIDs;
  if (!result)
  {
    result = objc_alloc_init(NSMutableOrderedSet);
    self->_policyChangedDownloadIDs = result;
  }

  return result;
}

@end