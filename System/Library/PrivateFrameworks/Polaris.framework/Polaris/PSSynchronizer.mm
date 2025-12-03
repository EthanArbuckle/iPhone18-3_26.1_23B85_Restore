@interface PSSynchronizer
+ (BOOL)timstampWithinSyncTolerance:(unint64_t)tolerance compareTimestamp:(unint64_t)timestamp;
+ (id)sharedInstanceWithGSM:(ps_gsm_s *)m;
- (PSSynchronizer)initWithGSM:(ps_gsm_s *)m;
- (_opaque_pthread_mutex_t)mLock;
- (unint64_t)resourceIDForKey:(id)key;
- (void)dealloc;
- (void)generateLocksForSyncedResources;
- (void)registerStreamKey:(id)key writer:(PSShbufferGroupWriter *)writer telemetryID:(unsigned __int16)d gsm_source:(ps_gsm_source_s *)gsm_source;
- (void)setMLock:(_opaque_pthread_mutex_t *)lock;
- (void)unregisterStream:(id)stream;
@end

@implementation PSSynchronizer

+ (id)sharedInstanceWithGSM:(ps_gsm_s *)m
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011DA8;
  block[3] = &unk_100028D58;
  block[4] = m;
  if (qword_100031120 != -1)
  {
    dispatch_once(&qword_100031120, block);
  }

  v3 = qword_100031128;

  return v3;
}

+ (BOOL)timstampWithinSyncTolerance:(unint64_t)tolerance compareTimestamp:(unint64_t)timestamp
{
  v4 = timestamp - tolerance;
  if (tolerance >= timestamp)
  {
    v4 = tolerance - timestamp;
  }

  return v4 < 0x1D4C1;
}

- (void)generateLocksForSyncedResources
{
  v3 = +[PLSSettings currentSettings];
  synchronizeStreamPairs = [v3 synchronizeStreamPairs];

  log = sub_100013BF4();
  v5 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (synchronizeStreamPairs)
  {
    if (v5)
    {
      LODWORD(buf.__sig) = 136315138;
      *(&buf.__sig + 4) = "[PSSynchronizer generateLocksForSyncedResources]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "PSSynchronizer %s synchronizing stream pairs", &buf, 0xCu);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    keyToIDMap = [(PSSynchronizer *)self keyToIDMap];
    allKeys = [keyToIDMap allKeys];

    log = allKeys;
    v8 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(log);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [(PLSDevice *)self->_device propertiesForKey:v12];
          v14 = [(PSSynchronizer *)self resourceIDForKey:v12];
          syncedKey = [v13 syncedKey];

          if (syncedKey)
          {
            syncedKey2 = [v13 syncedKey];
            v17 = [(PSSynchronizer *)self resourceIDForKey:syncedKey2];

            if (byte_100031AF0[v17] == 1)
            {
              v18 = qword_100031B90[v17];
              qword_100031B90[[(PSSynchronizer *)self resourceIDForKey:v12]] = v18;
              v19 = qword_100032A08[v17];
              qword_100032A08[[(PSSynchronizer *)self resourceIDForKey:v12]] = v19;
            }

            else
            {
              v21 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
              buf.__sig = 0;
              *buf.__opaque = 0;
              pthread_mutexattr_init(&buf);
              pthread_mutexattr_settype(&buf, 2);
              pthread_mutex_init(v21, &buf);
              pthread_mutexattr_destroy(&buf);
              qword_100031B90[v14] = v21;
              v22 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
              *v22 = 0;
              qword_100032A08[v14] = v22;
            }

            byte_100031AF0[v14] = 1;
          }

          else
          {
            v20 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
            *v20 = 0;
            qword_100032A08[v14] = v20;
          }
        }

        v9 = [log countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }
  }

  else if (v5)
  {
    LODWORD(buf.__sig) = 136315138;
    *(&buf.__sig + 4) = "[PSSynchronizer generateLocksForSyncedResources]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "PSSynchronizer %s not synchronizing stream pairs", &buf, 0xCu);
  }
}

- (unint64_t)resourceIDForKey:(id)key
{
  keyCopy = key;
  keyToIDMap = [(PSSynchronizer *)self keyToIDMap];
  allKeys = [keyToIDMap allKeys];
  v7 = [allKeys containsObject:keyCopy];

  if (!v7)
  {
    sub_100018224(keyCopy);
  }

  keyToIDMap2 = [(PSSynchronizer *)self keyToIDMap];
  v9 = [keyToIDMap2 objectForKeyedSubscript:keyCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (PSSynchronizer)initWithGSM:(ps_gsm_s *)m
{
  v8.receiver = self;
  v8.super_class = PSSynchronizer;
  v4 = [(PSSynchronizer *)&v8 init];
  if (v4)
  {
    v9.__sig = 0;
    *v9.__opaque = 0;
    pthread_mutexattr_init(&v9);
    pthread_mutexattr_settype(&v9, 0);
    pthread_mutex_init(&v4->_mLock, &v9);
    pthread_mutexattr_destroy(&v9);
    v5 = [[PLSDevice alloc] initWithContext:0];
    device = v4->_device;
    v4->_device = v5;

    v4->_gsm = m;
    [(PSSynchronizer *)v4 generateKeyToIDMap];
    [(PSSynchronizer *)v4 generateLocksForSyncedResources];
  }

  return v4;
}

- (void)registerStreamKey:(id)key writer:(PSShbufferGroupWriter *)writer telemetryID:(unsigned __int16)d gsm_source:(ps_gsm_source_s *)gsm_source
{
  keyCopy = key;
  [(PSSynchronizer *)self lock];
  v11 = sub_100013BF4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = keyCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PSSynchronizer registering  stream for key %@", &v13, 0xCu);
  }

  v12 = [(PSSynchronizer *)self resourceIDForKey:keyCopy];
  *(&xmmword_1000323F0 + v12) = d;
  qword_100031610[v12] = writer;
  qword_100032528[v12] = gsm_source;
  [(PSSynchronizer *)self unlock];
}

- (void)unregisterStream:(id)stream
{
  streamCopy = stream;
  [(PSSynchronizer *)self lock];
  v5 = [(PSSynchronizer *)self resourceIDForKey:streamCopy];
  v6 = qword_100031610[v5];
  v7 = sub_100013BF4();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    sub_100018290(v8, streamCopy, v7);
  }

  if (v8)
  {
    v9 = 138412290;
    v10 = streamCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PSSynchronizer is closing stream %@.", &v9, 0xCu);
  }

  qword_100031610[v5] = 0;
  *(&xmmword_1000323F0 + v5) = 0;
  qword_100032528[v5] = 0;
  [(PSSynchronizer *)self unlock];
}

- (void)dealloc
{
  for (i = 0; i != 156; ++i)
  {
    if (qword_100031610[i])
    {
      abort();
    }
  }

  v5 = 0;
  *&v2 = 67109376;
  v14 = v2;
  do
  {
    v6 = qword_100031B90[v5];
    if (v6)
    {
      v7 = pthread_mutex_destroy(v6);
      if (v7)
      {
        v8 = v7;
        v9 = sub_100013BF4();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = v14;
          v17 = v5;
          v18 = 1024;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to destroy timestamp lock for resourceID %d err=%d", buf, 0xEu);
        }
      }

      free(qword_100031B90[v5]);
    }

    v10 = qword_100032A08[v5];
    if (v10)
    {
      free(v10);
    }

    ++v5;
  }

  while (v5 != 156);
  v11 = pthread_mutex_destroy(&self->_mLock);
  if (v11)
  {
    v12 = v11;
    v13 = sub_100013BF4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to destroy Mutex Lock for CameraStream Manager err=%d", buf, 8u);
    }
  }

  v15.receiver = self;
  v15.super_class = PSSynchronizer;
  [(PSSynchronizer *)&v15 dealloc];
}

- (_opaque_pthread_mutex_t)mLock
{
  v3 = *&self->__opaque[40];
  *&retstr->__sig = *&self->__opaque[24];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[8];
  *&retstr->__opaque[24] = *&self[1].__sig;
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setMLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_mLock.__opaque[24] = *&lock->__opaque[24];
  *&self->_mLock.__opaque[40] = v5;
  *&self->_mLock.__sig = v3;
  *&self->_mLock.__opaque[8] = v4;
}

@end