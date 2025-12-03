@interface IMAPServiceBodyLoadContext
- (BOOL)loadHasStarted;
- (IMAPServiceBodyLoadContext)initWithMambaID:(const char *)d;
- (id)parseWithDelegate:(id)delegate;
- (unsigned)currentOffset;
- (unsigned)expectedLength;
- (void)_postNotification:(id)notification withLengthNumber:(id)number;
- (void)cleanUpErroredFile;
- (void)dealloc;
- (void)setExpectedLength:(unsigned int)length;
- (void)writeDataIfNeeded;
@end

@implementation IMAPServiceBodyLoadContext

- (IMAPServiceBodyLoadContext)initWithMambaID:(const char *)d
{
  v11.receiver = self;
  v11.super_class = IMAPServiceBodyLoadContext;
  v4 = [(IMAPServiceBodyLoadContext *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->mambaID = d;
    v6 = sub_100015F94();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v5->mambaID;
      v8 = objc_opt_class();
      *buf = 136315906;
      v13 = mambaID;
      v14 = 2080;
      v15 = " ";
      v16 = 2112;
      v17 = v8;
      v18 = 2048;
      v19 = v5;
      v9 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p created", buf, 0x2Au);
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = sub_100015F94();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v8 = mambaID;
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2048;
    selfCopy = self;
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p deleted", buf, 0x2Au);
  }

  v6.receiver = self;
  v6.super_class = IMAPServiceBodyLoadContext;
  [(IMAPServiceBodyLoadContext *)&v6 dealloc];
}

- (void)cleanUpErroredFile
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    recordLibraryId = self->_recordLibraryId;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v6 = WeakRetained;
    if (recordLibraryId == 0x7FFFFFFF)
    {
      accountDir = [WeakRetained accountDir];
      v9 = sub_1000856A8(accountDir, v8);
      path = [v9 path];
    }

    else
    {
      getAccountStore = [WeakRetained getAccountStore];
      v12 = sub_1000931E8(getAccountStore, self->_recordLibraryId);

      if (!v12)
      {
LABEL_8:
        self->_fd = -1;
        return;
      }

      v13 = objc_loadWeakRetained(&self->_service);
      getAccountStore2 = [v13 getAccountStore];
      path = sub_100092DDC(getAccountStore2, v12);

      CFRelease(v12);
    }

    if (path)
    {
      unlink([path fileSystemRepresentation]);
    }

    goto LABEL_8;
  }
}

- (void)writeDataIfNeeded
{
  v3 = objc_autoreleasePoolPush();
  if ((self->_fd & 0x80000000) == 0)
  {
    currentPart = [(MFProgressiveMimeParser *)self->_parser currentPart];
    v5 = currentPart;
    if (!currentPart || (v6 = [currentPart range], v8 = v7, lastOffset = self->_lastOffset, v7 <= lastOffset))
    {
LABEL_24:

      goto LABEL_25;
    }

    v10 = v6;
    if (*(self + 64))
    {
      v26 = v7 - lastOffset;
      data = [(MFProgressiveMimeParser *)self->_parser data];
      v16 = [data mf_decodeBase64InRange:&v25];

      if (v26)
      {
        bytes = [v16 bytes];
        v14 = v26;
        v13 = [v16 length];
      }

      else
      {
        bytes = 0;
        v13 = 0;
        v14 = 0;
      }

      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      data2 = [(MFProgressiveMimeParser *)self->_parser data];
      bytes = &v10[[data2 bytes] + self->_lastOffset];

      v13 = (v8 - self->_lastOffset);
      v14 = v13;
      if (!v13)
      {
LABEL_12:
        [(IMAPServiceBodyLoadContext *)self mf_lock];
        if (v13)
        {
          lengthWritten = self->_lengthWritten;
          if (&v13[lengthWritten] >= 0x400)
          {
            if (lengthWritten >= 0x400)
            {
              v18 = &off_1000EEA30;
            }

            else
            {
              v18 = &off_1000EEA28;
            }

            v19 = *v18;
            if (self->_notificationDict)
            {
              v20 = [[NSNumber alloc] initWithUnsignedLong:&v13[self->_lengthWritten]];
              [(IMAPServiceBodyLoadContext *)self mf_performOnewaySelectorInMainThread:"_postNotification:withLengthNumber:" withObject:v19 withObject:v20];
            }
          }
        }

        v21 = self->_lengthWritten + v13;
        self->_lastOffset += v14;
        self->_lengthWritten = v21;
        [(IMAPServiceBodyLoadContext *)self mf_unlock];
        goto LABEL_24;
      }
    }

    if (write(self->_fd, bytes, v13) < 0)
    {
      [(IMAPServiceBodyLoadContext *)self cleanUpErroredFile];
      v22 = +[MFActivityMonitor currentTracebleMonitor];
      error = [v22 error];

      if (!error)
      {
        v24 = [NSError errorWithDomain:kVVErrorDomain code:1010 localizedDescription:@"Unable to write to file."];
        [v22 setError:v24];
      }

      goto LABEL_24;
    }

    goto LABEL_12;
  }

LABEL_25:
  objc_autoreleasePoolPop(v3);
}

- (void)_postNotification:(id)notification withLengthNumber:(id)number
{
  notificationCopy = notification;
  numberCopy = number;
  [(NSMutableDictionary *)self->_notificationDict setObject:numberCopy forKey:@"VVCurrentDataLength"];
  v7 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [v7 postNotificationName:notificationCopy object:WeakRetained userInfo:self->_notificationDict];
}

- (BOOL)loadHasStarted
{
  [(IMAPServiceBodyLoadContext *)self mf_lock];
  v3 = self->_lengthWritten > 0x400;
  [(IMAPServiceBodyLoadContext *)self mf_unlock];
  return v3;
}

- (void)setExpectedLength:(unsigned int)length
{
  [(IMAPServiceBodyLoadContext *)self mf_lock];
  self->_expectedLength = length;

  [(IMAPServiceBodyLoadContext *)self mf_unlock];
}

- (unsigned)expectedLength
{
  [(IMAPServiceBodyLoadContext *)self mf_lock];
  expectedLength = self->_expectedLength;
  [(IMAPServiceBodyLoadContext *)self mf_unlock];
  return expectedLength;
}

- (unsigned)currentOffset
{
  [(IMAPServiceBodyLoadContext *)self mf_lock];
  lengthWritten = self->_lengthWritten;
  [(IMAPServiceBodyLoadContext *)self mf_unlock];
  return lengthWritten;
}

- (id)parseWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!self->_parser && self->_headersDict && [(NSMutableData *)self->_bodyData length])
  {
    v8 = [MFProgressiveMimeParser alloc];
    bodyData = self->_bodyData;
    headersDict = self->_headersDict;
    v11 = +[IMAPServiceBodyLoadMonitor _headersToPreserve];
    v12 = [v8 initWithBodyData:bodyData topLevelHeaders:headersDict headersToPreserve:v11 mambaID:self->mambaID];
    parser = self->_parser;
    self->_parser = v12;

    [(MFProgressiveMimeParser *)self->_parser setDelegate:delegateCopy];
    [(MFProgressiveMimeParser *)self->_parser setContext:self];
    [(MFProgressiveMimeParser *)self->_parser start];
  }

  v5 = self->_parser;
  v6 = v5;

  return v5;
}

@end