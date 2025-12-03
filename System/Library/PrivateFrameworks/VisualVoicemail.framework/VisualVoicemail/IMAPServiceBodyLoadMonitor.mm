@interface IMAPServiceBodyLoadMonitor
+ (id)_headersToPreserve;
- (BOOL)progressiveBodyLoadHasStartedForRecord:(void *)record;
- (id)_createHeaderDictionaryForData:(id)data;
- (id)initForService:(id)service;
- (void)_activityCompleted:(id)completed;
- (void)_postDataAvailableWithUserInfo:(id)info;
- (void)dealloc;
- (void)lengthsOfBodyLoadForRecord:(void *)record expected:(unsigned int *)expected current:(unsigned int *)current;
- (void)progressiveMimeParser:(id)parser beganDataForMimePart:(id)part;
- (void)progressiveMimeParser:(id)parser failedWithError:(id)error;
- (void)progressiveMimeParser:(id)parser finishedMimePart:(id)part;
@end

@implementation IMAPServiceBodyLoadMonitor

+ (id)_headersToPreserve
{
  [self mf_lock];
  if (!qword_10010D7A0)
  {
    v3 = [[NSArray alloc] initWithObjects:{@"x-applevm-duration", 0}];
    v4 = qword_10010D7A0;
    qword_10010D7A0 = v3;
  }

  [self mf_unlock];
  v5 = qword_10010D7A0;

  return v5;
}

- (id)initForService:(id)service
{
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = IMAPServiceBodyLoadMonitor;
  v5 = [(IMAPServiceBodyLoadMonitor *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
    v6->mambaID = [serviceCopy getServiceObjLogPrefix];
    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    loadContextsByLibraryId = v6->_loadContextsByLibraryId;
    v6->_loadContextsByLibraryId = v7;

    v9 = sub_100015F94();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v6->mambaID;
      v11 = objc_opt_class();
      *buf = 136316162;
      v19 = mambaID;
      v20 = 2080;
      v21 = " ";
      v22 = 2112;
      v23 = v11;
      v24 = 2048;
      v25 = v6;
      v26 = 2112;
      v27 = serviceCopy;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p with service %@ created", buf, 0x34u);
    }

    v13 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v6->_service);
    [v13 addObserver:v6 selector:"_activityCompleted:" name:@"VVServiceTaskEndedNotification" object:WeakRetained];

    v15 = objc_loadWeakRetained(&v6->_service);
    [v13 addObserver:v6 selector:"_activityCompleted:" name:@"VVServiceTaskCancelledNotification" object:v15];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = sub_100015F94();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v9 = mambaID;
    v10 = 2080;
    v11 = " ";
    v12 = 2112;
    v13 = objc_opt_class();
    v14 = 2048;
    selfCopy = self;
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p deleted", buf, 0x2Au);
  }

  v7.receiver = self;
  v7.super_class = IMAPServiceBodyLoadMonitor;
  [(IMAPServiceBodyLoadMonitor *)&v7 dealloc];
}

- (id)_createHeaderDictionaryForData:(id)data
{
  dataCopy = data;
  v4 = [[MFMessageHeaders alloc] initWithHeaderData:dataCopy encoding:0xFFFFFFFFLL];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = H_CONTENT_TYPE;
  v7 = [v4 firstHeaderForKey:H_CONTENT_TYPE];
  if (v7)
  {
    [v5 setObject:v7 forKey:v6];
  }

  v8 = H_CONTENT_TRANSFER_ENCODING;
  v9 = [v4 firstHeaderForKey:H_CONTENT_TRANSFER_ENCODING];

  if (v9)
  {
    [v5 setObject:v9 forKey:v8];
  }

  _headersToPreserve = [objc_opt_class() _headersToPreserve];
  v11 = [_headersToPreserve count];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = [_headersToPreserve objectAtIndex:i];
      v14 = [v4 firstHeaderForKey:v13];

      if (v14)
      {
        [v5 setObject:v14 forKey:v13];
      }

      v9 = v14;
    }
  }

  else
  {
    v14 = v9;
  }

  return v5;
}

- (void)_activityCompleted:(id)completed
{
  completedCopy = completed;
  userInfo = [completedCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    v7 = [userInfo objectForKey:@"VVTaskType"];
    intValue = [v7 intValue];

    v9 = [v6 objectForKey:@"VVRecord"];
    if (v9 && intValue == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_service);
      getAccountStore = [WeakRetained getAccountStore];
      v13 = sub_100092784(getAccountStore, v9);

      [(IMAPServiceBodyLoadMonitor *)self mf_lock];
      if (v13 >= 1)
      {
        v14 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v13 create:0];
        if (v14)
        {
          v15 = sub_100015F94();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            mambaID = self->mambaID;
            v19 = 136315650;
            v20 = mambaID;
            v21 = 2080;
            v22 = " ";
            v23 = 2112;
            v24 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sBody context %@ left hanging around after activity completion - time to clean it up.", &v19, 0x20u);
          }

          [v14 cleanUpErroredFile];
          loadContextsByLibraryId = [(IMAPServiceBodyLoadMonitor *)self loadContextsByLibraryId];
          v18 = [NSNumber numberWithInt:v13];
          [loadContextsByLibraryId removeObjectForKey:v18];
        }
      }

      [(IMAPServiceBodyLoadMonitor *)self mf_unlock];
    }
  }
}

- (BOOL)progressiveBodyLoadHasStartedForRecord:(void *)record
{
  if (record)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    getAccountStore = [WeakRetained getAccountStore];
    v7 = sub_100092784(getAccountStore, record);

    if (v7 < 1)
    {
      return 0;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFLL;
  }

  [(IMAPServiceBodyLoadMonitor *)self mf_lock];
  v9 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v7 create:0];
  v10 = v9;
  if (v9)
  {
    loadHasStarted = [v9 loadHasStarted];
  }

  else
  {
    loadHasStarted = 0;
  }

  [(IMAPServiceBodyLoadMonitor *)self mf_unlock];

  return loadHasStarted;
}

- (void)lengthsOfBodyLoadForRecord:(void *)record expected:(unsigned int *)expected current:(unsigned int *)current
{
  if (record)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    getAccountStore = [WeakRetained getAccountStore];
    v10 = sub_100092784(getAccountStore, record);

    if (v10 < 1)
    {
      return;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFLL;
  }

  [(IMAPServiceBodyLoadMonitor *)self mf_lock];
  v12 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v10 create:0];
  if (v12)
  {
    if (expected)
    {
      *expected = [v12 expectedLength];
    }

    if (current)
    {
      *current = [v12 currentOffset];
    }
  }

  [(IMAPServiceBodyLoadMonitor *)self mf_unlock];
}

- (void)progressiveMimeParser:(id)parser beganDataForMimePart:(id)part
{
  parserCopy = parser;
  partCopy = part;
  v8 = sub_100015F94();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    type = [partCopy type];
    *buf = 136315650;
    v57 = mambaID;
    v58 = 2080;
    v59 = " ";
    v60 = 2112;
    v61 = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVVPARSE BEGIN DATA for type [%@]", buf, 0x20u);
  }

  type2 = [partCopy type];
  if ([type2 isEqualToString:@"audio"])
  {
    subtype = [partCopy subtype];
    v13 = [subtype isEqualToString:@"amr"];
  }

  else
  {
    v13 = 0;
  }

  v14 = +[MFAttachmentManager defaultManager];
  attachmentURLs = [partCopy attachmentURLs];
  firstObject = [attachmentURLs firstObject];
  v17 = [v14 attachmentForURL:firstObject error:0];

  if ((v13 & 1) != 0 || [partCopy isAttachment] && (objc_msgSend(v17, "inferredMimeType"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", @"audio/amr"), v29, v30))
  {
    context = [parserCopy context];
    contentTransferEncoding = [partCopy contentTransferEncoding];
    v55 = [partCopy dispositionParameterForKey:@"size"];
    v54 = [partCopy preservedHeaderValueForKey:@"x-applevm-duration"];
    v20 = [contentTransferEncoding isEqualToString:@"base64"];
    *(context + 64) = *(context + 64) & 0xFE | v20;
    if (!((contentTransferEncoding == 0) | v20 & 1))
    {
      path = sub_100015F94();
      if (os_log_type_enabled(path, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->mambaID;
        *buf = 136315394;
        v57 = v31;
        v58 = 2080;
        v59 = " ";
        _os_log_impl(&_mh_execute_header, path, OS_LOG_TYPE_DEFAULT, "#I %s%sBad content transfer encoding; skipping body load", buf, 0x16u);
      }

      goto LABEL_39;
    }

    v21 = *(context + 24) == 0x7FFFFFFF;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v23 = WeakRetained;
    if (v21)
    {
      accountDir = [WeakRetained accountDir];
      v26 = sub_1000856A8(accountDir, v25);
      path = [v26 path];

      v28 = 0;
    }

    else
    {
      getAccountStore = [WeakRetained getAccountStore];
      v28 = sub_1000931E8(getAccountStore, *(context + 24));

      if (!v28)
      {
        path = 0;
LABEL_39:

        goto LABEL_40;
      }

      intValue = [v54 intValue];
      if (intValue)
      {
        v34 = objc_loadWeakRetained(&self->_service);
        getAccountStore2 = [v34 getAccountStore];
        sub_100092944(getAccountStore2, v28, intValue);

        v36 = objc_loadWeakRetained(&self->_service);
        getAccountStore3 = [v36 getAccountStore];
        [getAccountStore3 save];
      }

      v23 = objc_loadWeakRetained(&self->_service);
      accountDir = [v23 getAccountStore];
      path = sub_100092DDC(accountDir, v28);
    }

    if (path)
    {
      v38 = sub_100015F94();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = self->mambaID;
        *buf = 136315650;
        v57 = v39;
        v58 = 2080;
        v59 = " ";
        v60 = 2112;
        v61 = path;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s%sVVPARSE COPYING DATA TO %@", buf, 0x20u);
      }

      v40 = path;
      v41 = open([path fileSystemRepresentation], 1538, 448);
      *(context + 28) = v41;
      if (v41 < 0)
      {
        v47 = [[NSString alloc] initWithFormat:@"Unable to open file for writing: %@", path];
        v48 = [NSError errorWithDomain:kVVErrorDomain code:1010 localizedDescription:v47];
        v49 = +[MFActivityMonitor currentTracebleMonitor];
        [v49 setError:v48];
      }

      else
      {
        if ([v55 length])
        {
          v42 = objc_alloc_init(NSMutableDictionary);
          v43 = *(context + 48);
          *(context + 48) = v42;

          v44 = [NSNumber alloc];
          v45 = objc_loadWeakRetained(&self->_service);
          if (v45)
          {
            self = objc_loadWeakRetained(&self->_service);
            currentTaskType = [(IMAPServiceBodyLoadMonitor *)self currentTaskType];
          }

          else
          {
            currentTaskType = 0;
          }

          v50 = [v44 initWithInt:currentTaskType];
          if (v45)
          {
          }

          [*(context + 48) setObject:v50 forKey:@"VVTaskType"];
          intValue2 = [v55 intValue];
          v53 = [[NSNumber alloc] initWithUnsignedInt:intValue2];
          [*(context + 48) setObject:v53 forKey:@"VVExpectedDataLength"];
          [context setExpectedLength:intValue2];
          if (v28)
          {
            [*(context + 48) setObject:v28 forKey:@"VVRecord"];
          }
        }

        else
        {
          v50 = sub_100015F94();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = self->mambaID;
            *buf = 136315394;
            v57 = v51;
            v58 = 2080;
            v59 = " ";
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s%sNo size value; streaming disabled", buf, 0x16u);
          }
        }

        [context writeDataIfNeeded];
      }
    }

    if (v28)
    {
      CFRelease(v28);
    }

    goto LABEL_39;
  }

LABEL_40:
}

- (void)progressiveMimeParser:(id)parser finishedMimePart:(id)part
{
  parserCopy = parser;
  partCopy = part;
  v8 = sub_100015F94();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    type = [partCopy type];
    v16 = 136315650;
    v17 = mambaID;
    v18 = 2080;
    v19 = " ";
    v20 = 2112;
    v21 = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVVPARSE FINISH for type [%@]", &v16, 0x20u);
  }

  context = [parserCopy context];
  v12 = context;
  if (context && (context[7] & 0x80000000) == 0)
  {
    [context setMimePartFinishedLoading:1];
    [v12 writeDataIfNeeded];
    close(v12[7]);
    v12[7] = -1;
    v13 = v12[6] == 0x7FFFFFFF;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v15 = WeakRetained;
    if (v13)
    {
      [WeakRetained _setGreetingCached:1];
    }

    else
    {
      [WeakRetained _setDataForRecordWithIdentifier:v12[6]];
    }
  }
}

- (void)_postDataAvailableWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100015F94();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v10 = 136315906;
    v11 = mambaID;
    v12 = 2080;
    v13 = " ";
    v14 = 2112;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting VVServiceDataAvailableNotification service %@ with userInfo %@", &v10, 0x2Au);
  }

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = objc_loadWeakRetained(&self->_service);
  [v8 postNotificationName:@"VVServiceDataAvailableNotification" object:v9 userInfo:infoCopy];
}

- (void)progressiveMimeParser:(id)parser failedWithError:(id)error
{
  parserCopy = parser;
  errorCopy = error;
  v8 = sub_100015F94();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v13 = 136315650;
    v14 = mambaID;
    v15 = 2080;
    v16 = " ";
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVVPARSE FAIL with error %@", &v13, 0x20u);
  }

  v10 = +[MFActivityMonitor currentTracebleMonitor];
  [v10 setError:errorCopy];

  context = [parserCopy context];
  v12 = context;
  if (context && (context[7] & 0x80000000) == 0)
  {
    [context cleanUpErroredFile];
  }
}

@end