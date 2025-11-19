@interface XBLaunchImageDataProvider
- (XBLaunchImageDataProvider)initWithRequest:(id)a3 contextID:(unsigned int)a4 opaque:(BOOL)a5;
- (id)fetchImage;
- (void)invalidateImage;
@end

@implementation XBLaunchImageDataProvider

- (XBLaunchImageDataProvider)initWithRequest:(id)a3 contextID:(unsigned int)a4 opaque:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v9 = a3;
  if (!v6)
  {
    [XBLaunchImageDataProvider initWithRequest:a2 contextID:self opaque:?];
  }

  if (v6 == -1)
  {
    [XBLaunchImageDataProvider initWithRequest:a2 contextID:self opaque:?];
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else if (v9)
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
    v11 = [v9 displayConfiguration];
    [v11 scale];
    v13 = v12;
    memset(&v33, 0, sizeof(v33));
    CGAffineTransformMakeScale(&v33, v12, v12);
    v14 = objc_alloc(MEMORY[0x277D0AE40]);
    v31 = v33;
    CATransform3DMakeAffineTransform(&v32, &v31);
    v15 = [v14 initWithContextID:v6 baseTransform:&v32];
    v16 = objc_alloc(MEMORY[0x277D0AE38]);
    v17 = [MEMORY[0x277CBEB70] orderedSetWithObject:v15];
    v18 = [v16 initWithDisplayConfiguration:v11 layers:v17];

    [v18 setOpaque:v5];
    [v18 setScale:v13];
    [v9 referenceSize];
    v20 = v19;
    v22 = v21;
    v23 = [v9 interfaceOrientation];
    if ((v23 - 3) >= 2)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if ((v23 - 3) >= 2)
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
    [(XBSnapshotDataProviderContext *)v10->_context setOpaque:v5];
  }

  return v10;
}

- (id)fetchImage
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_cachedImage)
  {
    if ([(_FBSSnapshot *)v2->_snapshot hasProtectedContent])
    {
      v3 = [objc_alloc(MEMORY[0x277D755B8]) initWithIOSurface:{-[_FBSSnapshot IOSurface](v2->_snapshot, "IOSurface")}];
    }

    else
    {
      v4 = [(_FBSSnapshot *)v2->_snapshot CGImage];
      if (!v4)
      {
LABEL_7:
        [(_FBSSnapshot *)v2->_snapshot invalidate];
        snapshot = v2->_snapshot;
        v2->_snapshot = 0;

        goto LABEL_8;
      }

      v5 = objc_alloc(MEMORY[0x277D755B8]);
      [(XBSnapshotDataProviderContext *)v2->_context scale];
      v3 = [v5 initWithCGImage:v4 scale:0 orientation:?];
    }

    cachedImage = v2->_cachedImage;
    v2->_cachedImage = v3;

    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(v2);

  v8 = v2->_cachedImage;

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