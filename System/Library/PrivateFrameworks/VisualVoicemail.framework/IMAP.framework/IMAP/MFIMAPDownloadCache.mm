@interface MFIMAPDownloadCache
- (id)downloadForMessage:(id)message;
- (void)addCommandsForDownload:(id)download toPipeline:(id)pipeline;
- (void)cleanUpDownloadsForUid:(unsigned int)uid;
- (void)dealloc;
- (void)handleFetchResponse:(id)response forUid:(unsigned int)uid;
- (void)handleFetchResponses:(id)responses;
- (void)processResultsForUid:(unsigned int)uid;
@end

@implementation MFIMAPDownloadCache

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPDownloadCache;
  [(MFIMAPDownloadCache *)&v2 dealloc];
}

- (id)downloadForMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy uid];
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, v5);
  if (v7)
  {
    v8 = [(NSMutableArray *)self->_downloads objectAtIndex:RangeOfDownloadsWithUid];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if (!v5)
  {
    v9 = vm_imap_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      vf_publicDescription = [messageCopy vf_publicDescription];
      v14 = 138543362;
      v15 = vf_publicDescription;
      _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "uid of message %{public}@ is 0", &v14, 0xCu);
    }
  }

  v11 = [[MFIMAPMessageDownload alloc] initWithMessage:messageCopy];
  v8 = v11;
  if (v11)
  {
    [(MFIMAPMessageDownload *)v11 setAllowsPartialDownloads:1];
    [(NSMutableArray *)self->_downloads insertObject:v8 atIndex:RangeOfDownloadsWithUid];
  }

LABEL_12:
  [(MFIMAPDownloadCache *)self mf_unlock];

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)handleFetchResponse:(id)response forUid:(unsigned int)uid
{
  responseCopy = response;
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  v9 = v8;
  fetchResults = [responseCopy fetchResults];

  _lockedUpdateDownloadsInRange(self, RangeOfDownloadsWithUid, v9, fetchResults);

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)handleFetchResponses:(id)responses
{
  v25 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  if ([responsesCopy count])
  {
    [(MFIMAPDownloadCache *)self mf_lock];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = responsesCopy;
    obj = responsesCopy;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      RangeOfDownloadsWithUid = 0;
      v9 = 0;
      v10 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 fetchResultWithType:{8, v18}];
          v14 = [v13 uid];

          if (v14)
          {
            if (v14 != v9)
            {
              RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, v14);
              v7 = v15;
              v9 = v14;
            }

            fetchResults = [v12 fetchResults];
            _lockedUpdateDownloadsInRange(self, RangeOfDownloadsWithUid, v7, fetchResults);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    [(MFIMAPDownloadCache *)self mf_unlock];
    responsesCopy = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)processResultsForUid:(unsigned int)uid
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  if (RangeOfDownloadsWithUid < RangeOfDownloadsWithUid + v6)
  {
    v7 = RangeOfDownloadsWithUid;
    v8 = v6;
    do
    {
      v9 = [(NSMutableArray *)self->_downloads objectAtIndex:v7];
      [v9 processResults];

      ++v7;
      --v8;
    }

    while (v8);
  }

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)cleanUpDownloadsForUid:(unsigned int)uid
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  v7 = RangeOfDownloadsWithUid + v6;
  if (RangeOfDownloadsWithUid + v6 > RangeOfDownloadsWithUid)
  {
    v8 = RangeOfDownloadsWithUid;
    do
    {
      v9 = [(NSMutableArray *)self->_downloads objectAtIndex:--v7];
      if ([v9 isComplete])
      {
        [(NSMutableArray *)self->_downloads removeObjectAtIndex:v7];
      }
    }

    while (v7 > v8);
  }

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)addCommandsForDownload:(id)download toPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  downloadCopy = download;
  [(MFIMAPDownloadCache *)self mf_lock];
  [downloadCopy addCommandsToPipeline:pipelineCopy withCache:self];

  [(MFIMAPDownloadCache *)self mf_unlock];
}

@end