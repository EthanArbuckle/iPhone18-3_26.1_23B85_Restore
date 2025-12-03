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
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addApplicationWorkspaceChangeWithHandle:(id)handle changeType:(int64_t)type;
- (void)addApplicationWorkspaceChange:(id)change;
- (void)addCanceledAppDataRestoreID:(id)d;
- (void)addCanceledIPodLibraryDownloadID:(int64_t)d;
- (void)addDeletedHTTPCookies:(id)cookies;
- (void)addDeletedIPodLibraryDownloadID:(int64_t)d;
- (void)addDownloadKind:(id)kind;
- (void)addDownloadToPipelineWithID:(int64_t)d;
- (void)addFinishedDownloadKind:(id)kind;
- (void)addHTTPCookie:(id)cookie;
- (void)addPolicyChangedDownloadID:(int64_t)d;
- (void)addRemovedDownloadID:(int64_t)d;
- (void)addRemovedPersistentDownloadID:(int64_t)d;
- (void)addRestorableDownloadID:(int64_t)d;
- (void)addSSAppWakeRequest:(id)request;
- (void)addStatusChangedDownloadID:(int64_t)d;
- (void)addUpdatedDownloadID:(int64_t)d;
- (void)dealloc;
- (void)removeDownloadFromPipelineWithID:(int64_t)d;
- (void)unionChangeset:(id)changeset;
@end

@implementation DownloadsChangeset

- (DownloadsChangeset)init
{
  _initDownloadsChangeset = [(DownloadsChangeset *)self _initDownloadsChangeset];
  if (_initDownloadsChangeset)
  {
    _initDownloadsChangeset->_changedDownloadKinds = objc_alloc_init(NSMutableSet);
    _initDownloadsChangeset->_ipodLibraryItems = objc_alloc_init(NSMutableArray);
    _initDownloadsChangeset->_pipelineAdditions = objc_alloc_init(NSMutableOrderedSet);
    _initDownloadsChangeset->_pipelineRestarts = objc_alloc_init(NSMutableOrderedSet);
    _initDownloadsChangeset->_removedDownloadIDs = objc_alloc_init(NSMutableOrderedSet);
    _initDownloadsChangeset->_removedPersistentDownloadIDs = objc_alloc_init(NSMutableOrderedSet);
    _initDownloadsChangeset->_restorableDownloadIDs = objc_alloc_init(NSMutableOrderedSet);
    _initDownloadsChangeset->_statusChangedDownloadIDs = objc_alloc_init(NSMutableSet);
    _initDownloadsChangeset->_updatedDownloadIDs = objc_alloc_init(NSMutableSet);
  }

  return _initDownloadsChangeset;
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

- (void)addSSAppWakeRequest:(id)request
{
  _SSAppWakeRequests = [(DownloadsChangeset *)self _SSAppWakeRequests];

  [_SSAppWakeRequests addObject:request];
}

- (void)addApplicationWorkspaceChange:(id)change
{
  _applicationWorkspaceChanges = [(DownloadsChangeset *)self _applicationWorkspaceChanges];

  [_applicationWorkspaceChanges addObject:change];
}

- (void)addCanceledAppDataRestoreID:(id)d
{
  _canceledAppDataRestoreIDs = [(DownloadsChangeset *)self _canceledAppDataRestoreIDs];

  [_canceledAppDataRestoreIDs addObject:d];
}

- (void)addCanceledIPodLibraryDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [-[DownloadsChangeset _canceledIPodLibraryDownloadIDs](self "_canceledIPodLibraryDownloadIDs")];
}

- (void)addDeletedHTTPCookies:(id)cookies
{
  _deletedHTTPCookies = [(DownloadsChangeset *)self _deletedHTTPCookies];

  [_deletedHTTPCookies addObjectsFromArray:cookies];
}

- (void)addDeletedIPodLibraryDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [-[DownloadsChangeset _deletedIPodLibraryDownloadIDs](self "_deletedIPodLibraryDownloadIDs")];
}

- (void)addDownloadKind:(id)kind
{
  if (kind)
  {
    [(NSMutableSet *)self->_changedDownloadKinds addObject:?];
  }
}

- (void)addDownloadToPipelineWithID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableOrderedSet *)self->_pipelineAdditions addObject:v4];
}

- (void)addFinishedDownloadKind:(id)kind
{
  if (kind)
  {
    _finishedDownloadKinds = [(DownloadsChangeset *)self _finishedDownloadKinds];

    [_finishedDownloadKinds addObject:kind];
  }
}

- (void)addHTTPCookie:(id)cookie
{
  _cookies = [(DownloadsChangeset *)self _cookies];

  [_cookies addObject:cookie];
}

- (void)addPolicyChangedDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [-[DownloadsChangeset _policyChangedDownloadIDs](self "_policyChangedDownloadIDs")];
}

- (void)addRemovedDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableOrderedSet *)self->_removedDownloadIDs addObject:v4];
}

- (void)addRemovedPersistentDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableOrderedSet *)self->_removedPersistentDownloadIDs addObject:v4];
}

- (void)addRestorableDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableOrderedSet *)self->_restorableDownloadIDs addObject:v4];
}

- (void)addStatusChangedDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableSet *)self->_statusChangedDownloadIDs addObject:v4];
}

- (void)addUpdatedDownloadID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableSet *)self->_updatedDownloadIDs addObject:v4];
}

- (void)removeDownloadFromPipelineWithID:(int64_t)d
{
  v4 = [[NSNumber alloc] initWithLongLong:d];
  [(NSMutableOrderedSet *)self->_pipelineAdditions removeObject:v4];
}

- (void)unionChangeset:(id)changeset
{
  sSAppWakeRequests = [changeset SSAppWakeRequests];
  if (sSAppWakeRequests)
  {
    [-[DownloadsChangeset _SSAppWakeRequests](self "_SSAppWakeRequests")];
  }

  applicationWorkspaceChanges = [changeset applicationWorkspaceChanges];
  if ([applicationWorkspaceChanges count])
  {
    [-[DownloadsChangeset _applicationWorkspaceChanges](self "_applicationWorkspaceChanges")];
  }

  canceledAppDataRestoreIDs = [changeset canceledAppDataRestoreIDs];
  if (canceledAppDataRestoreIDs)
  {
    [-[DownloadsChangeset _canceledAppDataRestoreIDs](self "_canceledAppDataRestoreIDs")];
  }

  changedDownloadProperties = [changeset changedDownloadProperties];
  if (changedDownloadProperties)
  {
    v9 = changedDownloadProperties;
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

  changedExternalDownloadProperties = [changeset changedExternalDownloadProperties];
  if (changedExternalDownloadProperties)
  {
    v14 = changedExternalDownloadProperties;
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

  finishedDownloadKinds = [changeset finishedDownloadKinds];
  if (finishedDownloadKinds)
  {
    [-[DownloadsChangeset _finishedDownloadKinds](self "_finishedDownloadKinds")];
  }

  hTTPCookies = [changeset HTTPCookies];
  if (hTTPCookies)
  {
    [-[DownloadsChangeset _cookies](self "_cookies")];
  }

  deletedHTTPCookies = [changeset deletedHTTPCookies];
  if (deletedHTTPCookies)
  {
    [-[DownloadsChangeset _deletedHTTPCookies](self "_deletedHTTPCookies")];
  }

  deletedIPodLibraryDownloadIDs = [changeset deletedIPodLibraryDownloadIDs];
  if (deletedIPodLibraryDownloadIDs)
  {
    [-[DownloadsChangeset _deletedIPodLibraryDownloadIDs](self "_deletedIPodLibraryDownloadIDs")];
  }

  canceledIPodLibraryDownloadIDs = [changeset canceledIPodLibraryDownloadIDs];
  if (canceledIPodLibraryDownloadIDs)
  {
    [-[DownloadsChangeset _canceledIPodLibraryDownloadIDs](self "_canceledIPodLibraryDownloadIDs")];
  }

  policyChangedDownloadIDs = [changeset policyChangedDownloadIDs];
  if (policyChangedDownloadIDs)
  {
    [-[DownloadsChangeset _policyChangedDownloadIDs](self "_policyChangedDownloadIDs")];
  }

  -[NSMutableSet unionSet:](self->_changedDownloadKinds, "unionSet:", [changeset changedDownloadKinds]);
  self->_downloadChangeTypes |= [changeset downloadChangeTypes];
  -[NSMutableArray addObjectsFromArray:](self->_ipodLibraryItems, "addObjectsFromArray:", [changeset IPodLibraryItems]);
  -[NSMutableOrderedSet unionOrderedSet:](self->_pipelineAdditions, "unionOrderedSet:", [changeset pipelineAdditions]);
  -[NSMutableOrderedSet unionOrderedSet:](self->_removedDownloadIDs, "unionOrderedSet:", [changeset removedDownloadIDs]);
  -[NSMutableOrderedSet unionOrderedSet:](self->_removedPersistentDownloadIDs, "unionOrderedSet:", [changeset removedPersistentDownloadIDs]);
  -[NSMutableOrderedSet unionOrderedSet:](self->_restorableDownloadIDs, "unionOrderedSet:", [changeset restorableDownloadIDs]);
  -[NSMutableSet unionSet:](self->_statusChangedDownloadIDs, "unionSet:", [changeset statusChangedDownloadIDs]);
  -[NSMutableSet unionSet:](self->_updatedDownloadIDs, "unionSet:", [changeset updatedDownloadIDs]);
  if (!self->_restoreReason)
  {
    self->_restoreReason = [changeset restoreReason];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initDownloadsChangeset"}];
  v5[1] = [(NSMutableArray *)self->_SSAppWakeRequests mutableCopyWithZone:zone];
  v5[2] = [(NSMutableArray *)self->_applicationWorkspaceChanges mutableCopyWithZone:zone];
  v5[3] = [(NSMutableSet *)self->_canceledAppDataRestoreIDs mutableCopyWithZone:zone];
  v5[4] = [(NSMutableSet *)self->_canceledIPodLibraryDownloadIDs mutableCopyWithZone:zone];
  v5[5] = [(NSMutableSet *)self->_changedDownloadKinds mutableCopyWithZone:zone];
  v5[6] = [(NSDictionary *)self->_changedDownloadProperties copyWithZone:zone];
  v5[7] = [(NSDictionary *)self->_changedExternalDownloadProperties copyWithZone:zone];
  v5[8] = [(NSMutableArray *)self->_cookies mutableCopyWithZone:zone];
  v5[9] = [(NSMutableArray *)self->_deletedHTTPCookies mutableCopyWithZone:zone];
  v5[10] = [(NSMutableSet *)self->_deletedIPodLibraryDownloadIDs mutableCopyWithZone:zone];
  v5[11] = self->_downloadChangeTypes;
  v5[12] = [(NSMutableSet *)self->_finishedDownloadKinds mutableCopyWithZone:zone];
  v5[13] = [(NSMutableArray *)self->_ipodLibraryItems mutableCopyWithZone:zone];
  v5[14] = [(NSMutableOrderedSet *)self->_pipelineAdditions mutableCopyWithZone:zone];
  v5[15] = [(NSMutableOrderedSet *)self->_pipelineRestarts mutableCopyWithZone:zone];
  v5[16] = [(NSMutableOrderedSet *)self->_policyChangedDownloadIDs mutableCopyWithZone:zone];
  v5[17] = [(NSMutableOrderedSet *)self->_removedDownloadIDs mutableCopyWithZone:zone];
  v5[18] = [(NSMutableOrderedSet *)self->_removedPersistentDownloadIDs mutableCopyWithZone:zone];
  v5[19] = [(NSMutableOrderedSet *)self->_restorableDownloadIDs mutableCopyWithZone:zone];
  v5[20] = [(NSString *)self->_restoreReason copyWithZone:zone];
  v5[21] = [(NSMutableSet *)self->_statusChangedDownloadIDs mutableCopyWithZone:zone];
  v5[22] = [(NSMutableSet *)self->_updatedDownloadIDs mutableCopyWithZone:zone];
  return v5;
}

- (void)_addApplicationWorkspaceChangeWithHandle:(id)handle changeType:(int64_t)type
{
  v7 = objc_alloc_init(ApplicationWorkspaceChange);
  [(ApplicationWorkspaceChange *)v7 setChangeType:type];
  [(ApplicationWorkspaceChange *)v7 setApplicationHandle:handle];
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