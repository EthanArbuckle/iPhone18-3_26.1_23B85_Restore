@interface MFStream
+ (id)theOnlyNetworkThread;
+ (void)createTheOnlyNetworkThread;
- (BOOL)__setProperty:(id)property forKey:(id)key;
- (BOOL)isOpen;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (MFStream)initWithMambaID:(const char *)d rumba:(id)rumba callBack:(id)back onDispatchQueue:(id)queue;
- (id)__propertyForKey:(id)key;
- (id)propertyForKey:(id)key;
- (int64_t)__read:(char *)__read maxLength:(unint64_t)length;
- (int64_t)__write:(const char *)__write maxLength:(unint64_t)length;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)__close;
- (void)__openToHostName:(id)name port:(int64_t)port;
- (void)_closeAndReleaseStream:(id)stream logMessage:(id)message;
- (void)_createPairWithSocketToHostName:(id)name port:(int64_t)port;
- (void)_readBytesFromStream;
- (void)close;
- (void)dealloc;
- (void)indicateEnd;
- (void)openToHostName:(id)name port:(int64_t)port;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation MFStream

+ (id)theOnlyNetworkThread
{
  v3 = __theOnlyNetworkThread;
  if (!__theOnlyNetworkThread)
  {
    +[MFStream theOnlyNetworkThread];
  }

  return v3;
}

+ (void)createTheOnlyNetworkThread
{
  v6 = *MEMORY[0x277D85DE8];
  if (__theOnlyNetworkThread)
  {
    +[MFStream createTheOnlyNetworkThread];
  }

  v4 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  pthread_attr_init(&v5);
  pthread_attr_setdetachstate(&v5, 2);
  pthread_create(&v4, &v5, _MFSocketTheOnlyNetworkThread_runloop, v2);
  [v2 lockWhenCondition:1];
  [v2 unlock];

  v3 = *MEMORY[0x277D85DE8];
}

- (MFStream)initWithMambaID:(const char *)d rumba:(id)rumba callBack:(id)back onDispatchQueue:(id)queue
{
  v20 = *MEMORY[0x277D85DE8];
  rumbaCopy = rumba;
  backCopy = back;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = MFStream;
  v12 = [(MFStream *)&v19 init];
  if (v12)
  {
    if (!backCopy)
    {
      backCopy = &__block_literal_global_9;
    }

    v13 = [backCopy copy];
    callback = v12->_callback;
    v12->_callback = v13;

    if (queueCopy)
    {
      v15 = queueCopy;
    }

    else
    {
      v15 = dispatch_queue_create(0, 0);
    }

    callback_queue = v12->_callback_queue;
    v12->_callback_queue = v15;

    operator new();
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    rumbaID = self->rumbaID;
    *buf = 136315906;
    v14 = mambaID;
    v15 = 2080;
    v16 = " ";
    v17 = 2114;
    v18 = rumbaID;
    v19 = 2080;
    v20 = " ";
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sstream deleting", buf, 0x2Au);
  }

  [(MFStream *)self close];
  callback_queue = self->_callback_queue;
  self->_callback_queue = 0;

  callback = self->_callback;
  self->_callback = 0;

  v8 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->mambaID;
    v10 = self->rumbaID;
    *buf = 136315906;
    v14 = v9;
    v15 = 2080;
    v16 = " ";
    v17 = 2114;
    v18 = v10;
    v19 = 2080;
    v20 = " ";
    _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sstream destroyed", buf, 0x2Au);
  }

  v12.receiver = self;
  v12.super_class = MFStream;
  [(MFStream *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOpen
{
  if (self->_length)
  {
    return 1;
  }

  if (self->_rStream)
  {
    return self->_wStream != 0;
  }

  return 0;
}

- (id)__propertyForKey:(id)key
{
  keyCopy = key;
  properties = self->_properties;
  if (properties)
  {
    v6 = [(NSMutableDictionary *)properties objectForKey:keyCopy];
LABEL_3:
    v7 = v6;
    goto LABEL_5;
  }

  v7 = [(NSInputStream *)self->_rStream propertyForKey:keyCopy];
  if (!v7)
  {
    v6 = [(NSOutputStream *)self->_wStream propertyForKey:keyCopy];
    goto LABEL_3;
  }

LABEL_5:

  return v7;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__MFStream_propertyForKey___block_invoke;
  v8[3] = &unk_279E34488;
  v9 = keyCopy;
  v10 = &v11;
  v8[4] = self;
  v5 = keyCopy;
  execute_on_networkthread_sync(v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __27__MFStream_propertyForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __propertyForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)__setProperty:(id)property forKey:(id)key
{
  v34 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  keyCopy = key;
  rStream = self->_rStream;
  if (rStream || (rStream = self->_wStream) != 0)
  {
    v9 = rStream;
    v10 = [v9 setProperty:propertyCopy forKey:keyCopy];
    v11 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "out";
      mambaID = self->mambaID;
      rumbaID = self->rumbaID;
      if (v10)
      {
        v12 = "";
      }

      v22 = 136316418;
      v23 = mambaID;
      v24 = 2080;
      v25 = " ";
      v26 = 2114;
      v27 = rumbaID;
      v28 = 2080;
      v29 = " ";
      v30 = 2112;
      v31 = keyCopy;
      v32 = 2080;
      v33 = v12;
      _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sset property %@ with%s success", &v22, 0x3Eu);
    }
  }

  else
  {
    properties = self->_properties;
    if (!properties)
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = self->_properties;
      self->_properties = v18;

      properties = self->_properties;
    }

    [(NSMutableDictionary *)properties setValue:propertyCopy forKey:keyCopy];
    v9 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->mambaID;
      v21 = self->rumbaID;
      v22 = 136316162;
      v23 = v20;
      v24 = 2080;
      v25 = " ";
      v26 = 2114;
      v27 = v21;
      v28 = 2080;
      v29 = " ";
      v30 = 2112;
      v31 = keyCopy;
      _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sset property %@", &v22, 0x34u);
    }

    LOBYTE(v10) = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__MFStream_setProperty_forKey___block_invoke;
  v11[3] = &unk_279E344B0;
  v11[4] = self;
  v12 = propertyCopy;
  v13 = keyCopy;
  v14 = &v15;
  v8 = keyCopy;
  v9 = propertyCopy;
  execute_on_networkthread_sync(v11);
  LOBYTE(propertyCopy) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return propertyCopy;
}

uint64_t __31__MFStream_setProperty_forKey___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __setProperty:*(a1 + 40) forKey:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)__openToHostName:(id)name port:(int64_t)port
{
  v51 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (*&self->_rStream != 0)
  {
    __assert_rtn("[MFStream __openToHostName:port:]", "_NSSocket.mm", 540, "(nil == _rStream) && (nil == _wStream)");
  }

  v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    rumbaID = self->rumbaID;
    *buf = 136316418;
    v40 = mambaID;
    v41 = 2080;
    v42 = " ";
    v43 = 2114;
    v44 = rumbaID;
    v45 = 2080;
    v46 = " ";
    v47 = 2112;
    v48 = nameCopy;
    v49 = 2048;
    portCopy = port;
    _os_log_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sOpening stream to %@:%ld", buf, 0x3Eu);
  }

  v37[0] = @"stream";
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
  v11 = v10;
  v12 = &stru_288159858;
  if (nameCopy)
  {
    v12 = nameCopy;
  }

  v38[0] = v10;
  v38[1] = v12;
  v37[1] = @"host";
  v37[2] = @"port";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:port];
  v38[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  [MFPowerController powerlog:@"StreamOpen" eventData:v14];

  error = self->_error;
  self->_error = 0;

  [(MFStream *)self _createPairWithSocketToHostName:nameCopy port:port];
  [(NSInputStream *)self->_rStream setDelegate:self];
  [(NSOutputStream *)self->_wStream setDelegate:self];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = self->_properties;
  v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        rStream = self->_rStream;
        v22 = [(NSMutableDictionary *)self->_properties objectForKey:v20];
        [(NSInputStream *)rStream setProperty:v22 forKey:v20];
      }

      v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }

  properties = self->_properties;
  self->_properties = 0;

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  v25 = *MEMORY[0x277CBE640];
  [(NSInputStream *)self->_rStream scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];
  [(NSOutputStream *)self->_wStream scheduleInRunLoop:currentRunLoop forMode:v25];
  [(NSInputStream *)self->_rStream open];
  [(NSOutputStream *)self->_wStream open];
  v26 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = self->mambaID;
    v28 = self->rumbaID;
    v29 = self->_rStream;
    wStream = self->_wStream;
    *buf = 136316418;
    v40 = v27;
    v41 = 2080;
    v42 = " ";
    v43 = 2114;
    v44 = v28;
    v45 = 2080;
    v46 = " ";
    v47 = 2048;
    v48 = v29;
    v49 = 2048;
    portCopy = wStream;
    _os_log_impl(&dword_2720B1000, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sopened read stream (%p), write stream (%p)", buf, 0x3Eu);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)openToHostName:(id)name port:(int64_t)port
{
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__MFStream_openToHostName_port___block_invoke;
  v8[3] = &unk_279E344D8;
  v8[4] = self;
  v9 = nameCopy;
  portCopy = port;
  v7 = nameCopy;
  execute_on_networkthread(v8);
}

- (void)_createPairWithSocketToHostName:(id)name port:(int64_t)port
{
  v7 = 0;
  readStream = 0;
  CFStreamCreatePairWithSocketToHost(*MEMORY[0x277CBECE8], name, port, &readStream, &v7);
  rStream = self->_rStream;
  self->_rStream = readStream;

  wStream = self->_wStream;
  self->_wStream = v7;

  self->_treatAsDead = 0;
}

- (void)_closeAndReleaseStream:(id)stream logMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  messageCopy = message;
  v8 = __theOnlyNetworkThread;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (([v8 isEqual:currentThread] & 1) == 0)
  {
    __assert_rtn("[MFStream _closeAndReleaseStream:logMessage:]", "_NSSocket.mm", 591, "[__theOnlyNetworkThread isEqual:[NSThread currentThread]]");
  }

  if (streamCopy)
  {
    [streamCopy setDelegate:0];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [streamCopy removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

    [streamCopy close];
    if (messageCopy)
    {
      v11 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = self->mambaID;
        rumbaID = self->rumbaID;
        *buf = 136316162;
        v25 = mambaID;
        v26 = 2080;
        v27 = " ";
        v28 = 2114;
        v29 = rumbaID;
        v30 = 2080;
        v31 = " ";
        v32 = 2112;
        v33 = messageCopy;
        _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s%@", buf, 0x34u);
      }
    }

    if (!self->_rStream && !self->_wStream)
    {
      v14 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->mambaID;
        v16 = self->rumbaID;
        *buf = 136315906;
        v25 = v15;
        v26 = 2080;
        v27 = " ";
        v28 = 2114;
        v29 = v16;
        v30 = 2080;
        v31 = " ";
        _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%shas been fully closed", buf, 0x2Au);
      }

      v22[0] = @"stream";
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
      v23[0] = v17;
      v22[1] = @"rx";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesRead];
      v23[1] = v18;
      v22[2] = @"tx";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesWritten];
      v23[2] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
      [MFPowerController powerlog:@"StreamClose" eventData:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)indicateEnd
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_error)
  {
    v3 = @"MFStreamEventErrorOccurred";
  }

  else
  {
    v3 = @"MFStreamEventEndEncountered";
  }

  v4 = v3;
  v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    rumbaID = self->rumbaID;
    error = self->_error;
    vf_publicDescription = [(NSError *)error vf_publicDescription];
    v10 = vf_publicDescription;
    v11 = @" error: ";
    *buf = 136316674;
    v12 = &stru_288159858;
    v19 = mambaID;
    v20 = 2080;
    v21 = " ";
    if (!error)
    {
      v11 = &stru_288159858;
    }

    v22 = 2114;
    if (vf_publicDescription)
    {
      v12 = vf_publicDescription;
    }

    v23 = rumbaID;
    v24 = 2080;
    v25 = " ";
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%{public}@%sindicateEnd, dispatching %@%@%{public}@", buf, 0x48u);
  }

  callback_queue = self->_callback_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __23__MFStream_indicateEnd__block_invoke;
  v16[3] = &unk_279E34500;
  v16[4] = self;
  v17 = v4;
  v14 = v4;
  dispatch_async(callback_queue, v16);

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)__read:(char *)__read maxLength:(unint64_t)length
{
  v44 = *MEMORY[0x277D85DE8];
  p_length = &self->_length;
  length = self->_length;
  if (length)
  {
    if (length >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = self->_length;
    }

    memmove(__read, self->_buffer, lengthCopy);
    buffer = self->_buffer;
    v9 = self->_length - lengthCopy;
    self->_length = v9;
    memmove(buffer, &buffer[lengthCopy], v9);
    v10 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [MFStream __read:? maxLength:?];
    }

    self->_bytesRead += lengthCopy;
    self->_dispatchedBytesAvailable = 0;
    if (self->_streamCanRead)
    {
      [(MFStream *)self _readBytesFromStream];
    }

    else if (*p_length)
    {
      v11 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [MFStream __read:? maxLength:?];
      }

      self->_dispatchedBytesAvailable = 1;
      callback_queue = self->_callback_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__MFStream___read_maxLength___block_invoke;
      block[3] = &unk_279E34528;
      block[4] = self;
      dispatch_async(callback_queue, block);
    }

    else if (![(MFStream *)self isOpen])
    {
      if (self->_error)
      {
        v13 = @"MFStreamEventErrorOccurred";
      }

      else
      {
        v13 = @"MFStreamEventEndEncountered";
      }

      v14 = v13;
      v15 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = self->mambaID;
        rumbaID = self->rumbaID;
        error = self->_error;
        vf_publicDescription = [(NSError *)error vf_publicDescription];
        v20 = vf_publicDescription;
        v21 = @" error: ";
        v22 = &stru_288159858;
        *buf = 136316674;
        v31 = mambaID;
        v32 = 2080;
        v33 = " ";
        v34 = 2114;
        if (!error)
        {
          v21 = &stru_288159858;
        }

        v35 = rumbaID;
        if (vf_publicDescription)
        {
          v22 = vf_publicDescription;
        }

        v36 = 2080;
        v37 = " ";
        v38 = 2112;
        v39 = v14;
        v40 = 2112;
        v41 = v21;
        v42 = 2114;
        v43 = v22;
        _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%{public}@%sdispatching %@%@%{public}@", buf, 0x48u);
      }

      v23 = self->_callback_queue;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __29__MFStream___read_maxLength___block_invoke_69;
      v27[3] = &unk_279E34500;
      v27[4] = self;
      v28 = v14;
      v24 = v14;
      dispatch_async(v23, v27);
    }
  }

  else
  {
    lengthCopy = -1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return lengthCopy;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  lengthCopy = length;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__MFStream_read_maxLength___block_invoke;
  v6[3] = &unk_279E34550;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = read;
  v6[7] = length;
  execute_on_networkthread_sync(v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __27__MFStream_read_maxLength___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __read:*(a1 + 48) maxLength:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)__write:(const char *)__write maxLength:(unint64_t)length
{
  v45 = *MEMORY[0x277D85DE8];
  wStream = self->_wStream;
  if (!wStream || self->_treatAsDead)
  {
    v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      rumbaID = self->rumbaID;
      *buf = 136316162;
      v32 = mambaID;
      v33 = 2080;
      v34 = " ";
      v35 = 2114;
      v36 = rumbaID;
      v37 = 2080;
      v38 = " ";
      v39 = 2048;
      lengthCopy = length;
      _os_log_impl(&dword_2720B1000, &v7->super.super, OS_LOG_TYPE_DEFAULT, "#W %s%s%{public}@%sno longer has an open write stream, aborting write of %lu bytes", buf, 0x34u);
    }

    v10 = -1;
LABEL_6:

    goto LABEL_7;
  }

  if (!self->_streamCanWrite)
  {
    [MFStream __write:maxLength:];
  }

  self->_streamCanWrite = 0;
  v10 = [(NSOutputStream *)wStream write:__write maxLength:length];
  v13 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [MFStream __write:? maxLength:?];
  }

  self->_bytesWritten += v10;
  if (v10 < 0)
  {
    v7 = self->_wStream;
    v14 = self->_wStream;
    self->_wStream = 0;

    if (!self->_error)
    {
      streamError = [(NSOutputStream *)v7 streamError];
      error = self->_error;
      self->_error = streamError;
    }

    [(MFStream *)self _closeAndReleaseStream:v7 logMessage:@"closed the write half"];
    if (![(MFStream *)self isOpen])
    {
      if (self->_error)
      {
        v17 = @"MFStreamEventErrorOccurred";
      }

      else
      {
        v17 = @"MFStreamEventEndEncountered";
      }

      v18 = v17;
      v19 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->mambaID;
        v20 = self->rumbaID;
        v22 = self->_error;
        vf_publicDescription = [(NSError *)v22 vf_publicDescription];
        v24 = vf_publicDescription;
        v25 = @" error: ";
        *buf = 136316674;
        v26 = &stru_288159858;
        v32 = v21;
        v33 = 2080;
        v34 = " ";
        if (!v22)
        {
          v25 = &stru_288159858;
        }

        v35 = 2114;
        if (vf_publicDescription)
        {
          v26 = vf_publicDescription;
        }

        v36 = v20;
        v37 = 2080;
        v38 = " ";
        v39 = 2112;
        lengthCopy = v18;
        v41 = 2112;
        v42 = v25;
        v43 = 2114;
        v44 = v26;
        _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#W %s%s%{public}@%sdispatching %@%@%{public}@", buf, 0x48u);
      }

      callback_queue = self->_callback_queue;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __30__MFStream___write_maxLength___block_invoke;
      v29[3] = &unk_279E34500;
      v29[4] = self;
      v30 = v18;
      v28 = v18;
      dispatch_async(callback_queue, v29);
    }

    goto LABEL_6;
  }

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__MFStream_write_maxLength___block_invoke;
  v6[3] = &unk_279E34550;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = write;
  v6[7] = length;
  execute_on_networkthread_sync(v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __28__MFStream_write_maxLength___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __write:*(a1 + 48) maxLength:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)__close
{
  self->_streamCanWrite = 0;
  *&self->_treatAsDead = 1;
  v11 = self->_rStream;
  rStream = self->_rStream;
  self->_rStream = 0;

  v4 = v11;
  if (!self->_error)
  {
    streamError = [(NSInputStream *)v11 streamError];
    error = self->_error;
    self->_error = streamError;

    v4 = v11;
  }

  [(MFStream *)self _closeAndReleaseStream:v4 logMessage:@"closed read part on 'close'"];
  v7 = self->_wStream;
  wStream = self->_wStream;
  self->_wStream = 0;

  if (!self->_error)
  {
    streamError2 = [(NSOutputStream *)v7 streamError];
    v10 = self->_error;
    self->_error = streamError2;
  }

  [(MFStream *)self _closeAndReleaseStream:v7 logMessage:@"closed write part on 'close'"];
  free(self->_buffer);
  self->_capacity = 0;
  self->_length = 0;
  self->_buffer = 0;
}

- (void)close
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __17__MFStream_close__block_invoke;
  v2[3] = &unk_279E34528;
  v2[4] = self;
  execute_on_networkthread_sync(v2);
}

- (void)_readBytesFromStream
{
  OUTLINED_FUNCTION_4(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_2720B1000, v1, v2, "#D %s%s%{public}@%sbuffered %ld bytes");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v37 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    mambaID = self->mambaID;
    rumbaID = self->rumbaID;
    *buf = 136316418;
    v26 = mambaID;
    v27 = 2080;
    v28 = " ";
    v29 = 2114;
    v30 = rumbaID;
    v31 = 2080;
    v32 = " ";
    v33 = 2112;
    v34 = streamCopy;
    v35 = 2048;
    eventCopy = event;
    _os_log_debug_impl(&dword_2720B1000, v7, OS_LOG_TYPE_DEBUG, "#D %s%s%{public}@%s%@ handleEvent:%lu", buf, 0x3Eu);
  }

  rStream = self->_rStream;
  if (rStream == streamCopy || self->_wStream == streamCopy)
  {
    v9 = __ROR8__(event - 2, 1);
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        if (!self->_error)
        {
          streamError = [(NSOutputStream *)streamCopy streamError];
          error = self->_error;
          self->_error = streamError;
        }
      }

      else if (v9 != 7)
      {
        goto LABEL_25;
      }

      v14 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->mambaID;
        v15 = self->rumbaID;
        v17 = self->_error;
        ctu::hex(self->_buffer, self->_length);
        v18 = v23 >= 0 ? &__p : __p;
        *buf = 136316418;
        v26 = v16;
        v27 = 2080;
        v28 = " ";
        v29 = 2114;
        v30 = v15;
        v31 = 2080;
        v32 = " ";
        v33 = 2112;
        v34 = v17;
        v35 = 2080;
        eventCopy = v18;
        _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%send encountered, err:%@, missed data? > '%s'", buf, 0x3Eu);
        if (v23 < 0)
        {
          operator delete(__p);
        }
      }

      self->_streamCanWrite = 0;
      *&self->_treatAsDead = 1;
      [(MFStream *)self indicateEnd];
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        self->_streamCanWrite = 1;
        v10 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [MFStream stream:? handleEvent:?];
        }

        callback_queue = self->_callback_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __31__MFStream_stream_handleEvent___block_invoke;
        block[3] = &unk_279E34528;
        block[4] = self;
        dispatch_async(callback_queue, block);
      }
    }

    else
    {
      if (rStream != streamCopy)
      {
        __assert_rtn("[MFStream stream:handleEvent:]", "_NSSocket.mm", 865, "isReadStream");
      }

      self->_streamCanRead = 1;
      [(MFStream *)self _readBytesFromStream];
    }
  }

LABEL_25:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)__read:(uint64_t)a1 maxLength:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_2720B1000, v1, v2, "#D %s%s%{public}@%sread %lu bytes");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)__read:(uint64_t)a1 maxLength:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_2720B1000, v3, v4, "#D %s%s%{public}@%sdispatching MFStreamEventHasBytesAvailable (%ld)");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)__write:(uint64_t)a1 maxLength:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_2720B1000, v1, v2, "#D %s%s%{public}@%swrote %ld bytes");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)stream:(uint64_t)a1 handleEvent:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_2720B1000, v1, OS_LOG_TYPE_DEBUG, "#D %s%s%{public}@%sdispatching MFStreamEventCanAcceptBytes", v3, 0x2Au);
  v2 = *MEMORY[0x277D85DE8];
}

@end