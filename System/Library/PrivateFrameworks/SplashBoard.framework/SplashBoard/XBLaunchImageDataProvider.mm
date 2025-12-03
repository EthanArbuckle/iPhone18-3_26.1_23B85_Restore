@interface XBLaunchImageDataProvider
- (XBLaunchImageDataProvider)initWithRequest:(id)request contextID:(unsigned int)d opaque:(BOOL)opaque;
- (id)fetchImage;
- (void)invalidateImage;
@end

@implementation XBLaunchImageDataProvider

- (XBLaunchImageDataProvider)initWithRequest:(id)request contextID:(unsigned int)d opaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  v6 = *&d;
  requestCopy = request;
  if (!v6)
  {
    [XBLaunchImageDataProvider initWithRequest:a2 contextID:self opaque:?];
  }

  if (v6 == -1)
  {
    [XBLaunchImageDataProvider initWithRequest:a2 contextID:self opaque:?];
    if (requestCopy)
    {
      goto LABEL_5;
    }
  }

  else if (requestCopy)
  {
    goto LABEL_5;
  }

  [XBLaunchImageDataProvider initWithRequest:a2 contextID:self opaque:?];
LABEL_5:
  v34.receiver = self;
  v34.super_class = XBLaunchImageDataProvider;
  v10 = [(XBLaunchImageDataProvider *)&v34 init];
  if (v10)
  {
    displayConfiguration = [requestCopy displayConfiguration];
    [displayConfiguration scale];
    v13 = v12;
    memset(&v33, 0, sizeof(v33));
    CGAffineTransformMakeScale(&v33, v12, v12);
    v14 = objc_alloc(MEMORY[0x277D0AE40]);
    v31 = v33;
    CATransform3DMakeAffineTransform(&v32, &v31);
    v15 = [v14 initWithContextID:v6 baseTransform:&v32];
    v16 = objc_alloc(MEMORY[0x277D0AE38]);
    v17 = [MEMORY[0x277CBEB70] orderedSetWithObject:v15];
    v18 = [v16 initWithDisplayConfiguration:displayConfiguration layers:v17];

    [v18 setOpaque:opaqueCopy];
    [v18 setScale:v13];
    [requestCopy referenceSize];
    v20 = v19;
    v22 = v21;
    interfaceOrientation = [requestCopy interfaceOrientation];
    if ((interfaceOrientation - 3) >= 2)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if ((interfaceOrientation - 3) >= 2)
    {
      v25 = v20;
    }

    else
    {
      v25 = v22;
    }

    [v18 setSnapshotSize:{v25, v24}];
    v26 = [objc_alloc(MEMORY[0x277D0AE30]) initWithSnapshotContext:v18];
    snapshot = v10->_snapshot;
    v10->_snapshot = v26;

    v28 = objc_alloc_init(XBSnapshotDataProviderContext);
    context = v10->_context;
    v10->_context = v28;

    [(XBSnapshotDataProviderContext *)v10->_context setScale:v13];
    [(XBSnapshotDataProviderContext *)v10->_context setOpaque:opaqueCopy];
  }

  return v10;
}

- (id)fetchImage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_cachedImage)
  {
    if ([(_FBSSnapshot *)selfCopy->_snapshot hasProtectedContent])
    {
      v3 = [objc_alloc(MEMORY[0x277D755B8]) initWithIOSurface:{-[_FBSSnapshot IOSurface](selfCopy->_snapshot, "IOSurface")}];
    }

    else
    {
      cGImage = [(_FBSSnapshot *)selfCopy->_snapshot CGImage];
      if (!cGImage)
      {
LABEL_7:
        [(_FBSSnapshot *)selfCopy->_snapshot invalidate];
        snapshot = selfCopy->_snapshot;
        selfCopy->_snapshot = 0;

        goto LABEL_8;
      }

      v5 = objc_alloc(MEMORY[0x277D755B8]);
      [(XBSnapshotDataProviderContext *)selfCopy->_context scale];
      v3 = [v5 initWithCGImage:cGImage scale:0 orientation:?];
    }

    cachedImage = selfCopy->_cachedImage;
    selfCopy->_cachedImage = v3;

    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(selfCopy);

  v8 = selfCopy->_cachedImage;

  return v8;
}

- (void)invalidateImage
{
  obj = self;
  objc_sync_enter(obj);
  [(_FBSSnapshot *)obj->_snapshot invalidate];
  snapshot = obj->_snapshot;
  obj->_snapshot = 0;

  cachedImage = obj->_cachedImage;
  obj->_cachedImage = 0;

  objc_sync_exit(obj);
}

- (void)initWithRequest:(uint64_t)a1 contextID:(uint64_t)a2 opaque:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBLaunchImageDataProvider.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"contextID != 0"}];
}

- (void)initWithRequest:(uint64_t)a1 contextID:(uint64_t)a2 opaque:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBLaunchImageDataProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"contextID != XBInvalidContextId"}];
}

- (void)initWithRequest:(uint64_t)a1 contextID:(uint64_t)a2 opaque:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBLaunchImageDataProvider.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"request"}];
}

@end