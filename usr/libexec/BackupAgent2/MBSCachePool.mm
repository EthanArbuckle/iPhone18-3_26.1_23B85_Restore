@interface MBSCachePool
+ (id)sharedPool;
- (MBSCachePool)init;
- (id)_openCache;
- (id)acquireCache;
- (void)_closeCache:(id)cache;
- (void)_drain;
- (void)_scheduleDrain;
- (void)dealloc;
- (void)releaseCache:(id)cache;
@end

@implementation MBSCachePool

+ (id)sharedPool
{
  if (qword_10011E2D8 != -1)
  {
    sub_10009B2EC();
  }

  return qword_10011E2D0;
}

- (MBSCachePool)init
{
  v6.receiver = self;
  v6.super_class = MBSCachePool;
  v2 = [(MBSCachePool *)&v6 init];
  if (v2)
  {
    v2->_caches = objc_alloc_init(NSMutableArray);
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v2->_queue = dispatch_queue_create(Name, 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = MBSCachePool;
  [(MBSCachePool *)&v3 dealloc];
}

- (id)acquireCache
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_1000049F0;
  v13 = sub_100004A00;
  v14 = 0;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Removing cache from pool", buf, 2u);
    _MBLog();
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004A0C;
  v7[3] = &unk_1000FD308;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  _openCache = v10[5];
  if (!_openCache)
  {
    _openCache = [(MBSCachePool *)self _openCache];
    v10[5] = _openCache;
  }

  _Block_object_dispose(&v9, 8);
  return _openCache;
}

- (void)releaseCache:(id)cache
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004BDC;
  v4[3] = &unk_1000FD330;
  v4[4] = self;
  v4[5] = cache;
  dispatch_sync(queue, v4);
}

- (id)_openCache
{
  v2 = [[MBServiceCache alloc] initWithPath:+[MBServiceCache domainManager:"systemPath"], [[MBDomainManager alloc] initWithPersona:[MBPersona personalPersonaWithError:0]]];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004EA0;
  v5[3] = &unk_1000FD358;
  v5[4] = v2;
  sub_10000470C(v5);
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Opened cache: %p", buf, 0xCu);
    _MBLog();
  }

  return v2;
}

- (void)_closeCache:(id)cache
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    cacheCopy = cache;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Closing cache: %p", buf, 0xCu);
    cacheCopy2 = cache;
    _MBLog();
  }

  [cache close];
}

- (void)_scheduleDrain
{
  drainScheduled = self->_drainScheduled;
  v4 = MBGetDefaultLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (drainScheduled)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Not scheduling duplicate drain", buf, 2u);
      _MBLog();
    }
  }

  else
  {
    if (v5)
    {
      *buf = 67109120;
      v10 = 10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Scheduling drain of cache pool in %d s", buf, 8u);
      _MBLog();
    }

    v6 = dispatch_time(0, 10000000000);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000051CC;
    block[3] = &unk_1000FD358;
    block[4] = self;
    dispatch_after(v6, queue, block);
    self->_drainScheduled = 1;
  }
}

- (void)_drain
{
  self->_drainScheduled = 0;
  v3 = [(NSMutableArray *)self->_caches count];
  v4 = MBGetDefaultLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Can't drain because cache pool is empty", v7, 2u);
    goto LABEL_10;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Draining cache pool", buf, 2u);
    _MBLog();
  }

  [(MBSCachePool *)self _closeCache:[(NSMutableArray *)self->_caches objectAtIndexedSubscript:0]];
  [(NSMutableArray *)self->_caches removeObjectAtIndex:0];
  if ([(NSMutableArray *)self->_caches count])
  {
    [(MBSCachePool *)self _scheduleDrain];
    return;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Not scheduling cache pool drain because it's empty", v8, 2u);
LABEL_10:
    _MBLog();
  }
}

@end