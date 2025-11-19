@interface MFIMAPDownloadCache
- (id)downloadForMessage:(id)a3;
- (void)addCommandsForDownload:(id)a3 toPipeline:(id)a4;
- (void)cleanUpDownloadsForUid:(unsigned int)a3;
- (void)dealloc;
- (void)handleFetchResponse:(id)a3 forUid:(unsigned int)a4;
- (void)handleFetchResponses:(id)a3;
- (void)processResultsForUid:(unsigned int)a3;
@end

@implementation MFIMAPDownloadCache

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPDownloadCache;
  [(MFIMAPDownloadCache *)&v2 dealloc];
}

- (id)downloadForMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uid];
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
      v10 = [v4 vf_publicDescription];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "uid of message %{public}@ is 0", &v14, 0xCu);
    }
  }

  v11 = [[MFIMAPMessageDownload alloc] initWithMessage:v4];
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

- (void)handleFetchResponse:(id)a3 forUid:(unsigned int)a4
{
  v6 = a3;
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, a4);
  v9 = v8;
  v10 = [v6 fetchResults];

  _lockedUpdateDownloadsInRange(self, RangeOfDownloadsWithUid, v9, v10);

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)handleFetchResponses:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    [(MFIMAPDownloadCache *)self mf_lock];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = v4;
    obj = v4;
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

            v16 = [v12 fetchResults];
            _lockedUpdateDownloadsInRange(self, RangeOfDownloadsWithUid, v7, v16);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    [(MFIMAPDownloadCache *)self mf_unlock];
    v4 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)processResultsForUid:(unsigned int)a3
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, a3);
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

- (void)cleanUpDownloadsForUid:(unsigned int)a3
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, a3);
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

- (void)addCommandsForDownload:(id)a3 toPipeline:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MFIMAPDownloadCache *)self mf_lock];
  [v7 addCommandsToPipeline:v6 withCache:self];

  [(MFIMAPDownloadCache *)self mf_unlock];
}

@end