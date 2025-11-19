@interface fileRef
- (BOOL)hasConflict:(unsigned int)a3;
- (fileRef)initWithMode:(unsigned int)a3;
- (unsigned)decRef;
- (void)addRef;
- (void)dealloc;
@end

@implementation fileRef

- (fileRef)initWithMode:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = fileRef;
  v4 = [(fileRef *)&v9 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.SMBProvider.refSyncQueue", 0);
    refSyncQueue = v4->_refSyncQueue;
    v4->_refSyncQueue = v5;

    v4->_reconnState = 0;
    v4->_openMode = a3;
    streamName = v4->_streamName;
    v4->_streamName = 0;

    v4->_refCount = 0;
  }

  return v4;
}

- (BOOL)hasConflict:(unsigned int)a3
{
  v3 = a3;
  if ((self->_openMode & 0x20) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100057738();
    }

    goto LABEL_14;
  }

  v5 = (a3 >> 1) & ((self->_openMode & 0x10) >> 4);
  if (v5 == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000577B0();
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100057828();
  }

  LOBYTE(v5) = 1;
LABEL_8:
  if ((v3 & 0x10) != 0 && (self->_openMode & 2) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000578A0();
    }

LABEL_14:
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)addRef
{
  v3 = [(fileRef *)self refSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BA80;
  block[3] = &unk_10008C880;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (unsigned)decRef
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(fileRef *)self refSyncQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002BB6C;
  v5[3] = &unk_10008C858;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = fileRef;
  [(fileRef *)&v2 dealloc];
}

@end