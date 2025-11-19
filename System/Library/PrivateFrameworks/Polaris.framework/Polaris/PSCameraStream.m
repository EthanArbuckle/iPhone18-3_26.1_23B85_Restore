@interface PSCameraStream
- (PSCameraStream)initWithKey:(id)a3 queue:(id)a4 device:(id)a5;
- (_opaque_pthread_mutex_t)mLock;
- (void)dealloc;
- (void)setMLock:(_opaque_pthread_mutex_t *)a3;
@end

@implementation PSCameraStream

- (PSCameraStream)initWithKey:(id)a3 queue:(id)a4 device:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = sub_100013BF4();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__sig) = 138412290;
    *(&buf.__sig + 4) = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initializing stream key (%@)\n", &buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = PSCameraStream;
  v13 = [(PSCameraStream *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, a3);
    objc_storeStrong(&v14->_queue, a4);
    objc_storeStrong(&v14->_device, a5);
    buf.__sig = 0;
    *buf.__opaque = 0;
    pthread_mutexattr_init(&buf);
    pthread_mutexattr_settype(&buf, 2);
    pthread_mutex_init(&v14->_mLock, &buf);
    pthread_mutexattr_destroy(&buf);
    v15 = v14;
  }

  return v14;
}

- (void)dealloc
{
  v3 = pthread_mutex_destroy(&self->_mLock);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100013BF4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      key = self->_key;
      *buf = 138412546;
      v9 = key;
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to destroy Mutex Lock for Source node %@ err=%d", buf, 0x12u);
    }
  }

  v7.receiver = self;
  v7.super_class = PSCameraStream;
  [(PSCameraStream *)&v7 dealloc];
}

- (_opaque_pthread_mutex_t)mLock
{
  v3 = *&self->__opaque[48];
  *&retstr->__sig = *&self->__opaque[32];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[16];
  *&retstr->__opaque[24] = *self[1].__opaque;
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setMLock:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[24];
  *&self->_mLock.__opaque[40] = *&a3->__opaque[40];
  *&self->_mLock.__opaque[24] = v5;
  *&self->_mLock.__opaque[8] = v4;
  *&self->_mLock.__sig = v3;
}

@end