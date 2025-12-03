@interface liveFilesSearchRequest
- (int)startSearch;
- (liveFilesSearchRequest)initWithVolume:(id)volume withStartLocation:(id)location withSearchToken:(id)token withSearchCriteria:(id)criteria withProxy:(id)proxy andWithCallerID:(unint64_t)d;
- (void)invalidateConnections;
@end

@implementation liveFilesSearchRequest

- (liveFilesSearchRequest)initWithVolume:(id)volume withStartLocation:(id)location withSearchToken:(id)token withSearchCriteria:(id)criteria withProxy:(id)proxy andWithCallerID:(unint64_t)d
{
  volumeCopy = volume;
  locationCopy = location;
  tokenCopy = token;
  criteriaCopy = criteria;
  proxyCopy = proxy;
  v26.receiver = self;
  v26.super_class = liveFilesSearchRequest;
  v17 = [(liveFilesSearchRequest *)&v26 init];
  if (v17)
  {
    v25 = 0;
    v18 = [volumeCopy newConnectionIDOrError:&v25];
    v21 = v25;
    v17->_searchLIClientID = v18;
    v19 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100023640(&v17->_searchLIClientID, v19);
    }

    if (v17->_searchLIClientID)
    {
      v17->_callerID = d;
      objc_storeStrong(&v17->_targetVolume, volume);
      objc_storeStrong(&v17->_startLocation, location);
      objc_storeStrong(&v17->_searchToken, token);
      objc_storeStrong(&v17->_searchCriteria, criteria);
      objc_storeStrong(&v17->_resultsHandler, proxy);
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
  searchGroup = [(userFSVolume *)self->_targetVolume searchGroup];
  dispatch_group_enter(searchGroup);

  searchRequests = [(userFSVolume *)self->_targetVolume SearchRequests];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018EC4;
  block[3] = &unk_100038668;
  block[4] = self;
  dispatch_async(searchRequests, block);

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