@interface liveFilesSearchRequest
- (int)startSearch;
- (liveFilesSearchRequest)initWithVolume:(id)a3 withStartLocation:(id)a4 withSearchToken:(id)a5 withSearchCriteria:(id)a6 withProxy:(id)a7 andWithCallerID:(unint64_t)a8;
- (void)invalidateConnections;
@end

@implementation liveFilesSearchRequest

- (liveFilesSearchRequest)initWithVolume:(id)a3 withStartLocation:(id)a4 withSearchToken:(id)a5 withSearchCriteria:(id)a6 withProxy:(id)a7 andWithCallerID:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v24 = a5;
  v23 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = liveFilesSearchRequest;
  v17 = [(liveFilesSearchRequest *)&v26 init];
  if (v17)
  {
    v25 = 0;
    v18 = [v14 newConnectionIDOrError:&v25];
    v21 = v25;
    v17->_searchLIClientID = v18;
    v19 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100023640(&v17->_searchLIClientID, v19);
    }

    if (v17->_searchLIClientID)
    {
      v17->_callerID = a8;
      objc_storeStrong(&v17->_targetVolume, a3);
      objc_storeStrong(&v17->_startLocation, a4);
      objc_storeStrong(&v17->_searchToken, a5);
      objc_storeStrong(&v17->_searchCriteria, a6);
      objc_storeStrong(&v17->_resultsHandler, a7);
      v17->_aborted = 0;
    }

    else
    {

      v17 = 0;
    }
  }

  return v17;
}

- (int)startSearch
{
  v3 = [(userFSVolume *)self->_targetVolume searchGroup];
  dispatch_group_enter(v3);

  v4 = [(userFSVolume *)self->_targetVolume SearchRequests];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018EC4;
  block[3] = &unk_100038668;
  block[4] = self;
  dispatch_async(v4, block);

  return 0;
}

- (void)invalidateConnections
{
  v3 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000236BC(self, v3);
  }

  [(userFSVolume *)self->_targetVolume invalidateFileNodesForConnection:self->_searchLIClientID];
  [(userFSVolume *)self->_targetVolume releaseConnectionAllocation:self->_searchLIClientID];
}

@end