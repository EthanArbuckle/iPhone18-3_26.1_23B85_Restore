@interface PUIPosterSnapshotDestinationFinalizer
- (PUIPosterSnapshotBundle)finalizedBundle;
- (PUIPosterSnapshotDestinationFinalizer)init;
- (PUIPosterSnapshotDestinationFinalizer)initWithBSXPCCoder:(id)a3;
- (PUIPosterSnapshotDestinationFinalizer)initWithCoder:(id)a3;
- (PUIPosterSnapshotDestinationFinalizer)initWithDestination:(id)a3;
- (PUIPosterSnapshotDestinationFinalizer)initWithType:(int64_t)a3 URL:(id)a4 sandboxExtendedURL:(id)a5;
- (id)finalizeSnapshotBundle:(id)a3;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotDestinationFinalizer

- (PUIPosterSnapshotDestinationFinalizer)init
{
  [(PUIPosterSnapshotDestinationFinalizer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PUIPosterSnapshotDestinationFinalizer)initWithDestination:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUIPosterSnapshotDestinationFinalizer;
  v5 = [(PUIPosterSnapshotDestinationFinalizer *)&v11 init];
  if (v5)
  {
    v5->_type = [v4 type];
    v6 = [v4 basicURL];
    basicURL = v5->_basicURL;
    v5->_basicURL = v6;

    v8 = [v4 sandboxExtendedURL];
    sandboxExtendedURL = v5->_sandboxExtendedURL;
    v5->_sandboxExtendedURL = v8;
  }

  return v5;
}

- (PUIPosterSnapshotDestinationFinalizer)initWithType:(int64_t)a3 URL:(id)a4 sandboxExtendedURL:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PUIPosterSnapshotDestinationFinalizer;
  v11 = [(PUIPosterSnapshotDestinationFinalizer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_basicURL, a4);
    objc_storeStrong(&v12->_sandboxExtendedURL, a5);
  }

  return v12;
}

- (void)dealloc
{
  [(PUIPosterSnapshotDestinationFinalizer *)self invalidate];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotDestinationFinalizer;
  [(PUIPosterSnapshotDestinationFinalizer *)&v3 dealloc];
}

- (PUIPosterSnapshotBundle)finalizedBundle
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PFTFuture *)v2->_finalizeFuture result:0];
  objc_sync_exit(v2);

  return v3;
}

- (id)finalizeSnapshotBundle:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_finalizeFuture)
  {
    v6 = MEMORY[0x1E69C5258];
    v7 = PFFunctionNameForAddress();
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v9 = [v6 futureWithError:{v8, 0}];

    goto LABEL_25;
  }

  type = v5->_type;
  v7 = v5->_basicURL;
  v11 = v5->_sandboxExtendedURL;
  v12 = v11;
  if (type == 6)
  {
    v20 = [(PFSandboxExtendedURL *)v11 URL];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v7;
    }

    v16 = v22;

    v42 = 0;
    v17 = [[PUIPosterSnapshotFilesystemCache alloc] initWithURL:v16 fileManager:0 options:2 error:&v42];
    v18 = v42;
    if (v17)
    {
      v19 = [(PUIPosterSnapshotFilesystemCache *)v17 cacheSnapshotBundle:v4 options:0];
      goto LABEL_15;
    }

    v36 = MEMORY[0x1E69C5258];
    v23 = PFFunctionNameForAddress();
    v34 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v35 = [v36 futureWithError:{v34, 0}];
LABEL_22:
    finalizeFuture = v5->_finalizeFuture;
    v5->_finalizeFuture = v35;

    goto LABEL_23;
  }

  if (type != 5)
  {
    v24 = [(PFSandboxExtendedURL *)v11 URL];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = v7;
    }

    v27 = v26;

    v28 = MEMORY[0x1E69C5258];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __64__PUIPosterSnapshotDestinationFinalizer_finalizeSnapshotBundle___block_invoke;
    v39[3] = &unk_1E7854878;
    v40 = v4;
    v16 = v27;
    v41 = v16;
    v29 = [MEMORY[0x1E69C5270] defaultProvider];
    v30 = [v29 backgroundScheduler];
    v31 = [v28 futureWithBlock:v39 scheduler:v30];
    v32 = v5->_finalizeFuture;
    v5->_finalizeFuture = v31;

    v18 = v40;
    goto LABEL_24;
  }

  v13 = [(PFSandboxExtendedURL *)v11 URL];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  v16 = v15;

  v43 = 0;
  v17 = [[PUIPosterSnapshotSQLiteCache alloc] initWithURL:v16 fileManager:0 options:2 error:&v43];
  v18 = v43;
  if (!v17)
  {
    v33 = MEMORY[0x1E69C5258];
    v23 = PFFunctionNameForAddress();
    v34 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v35 = [v33 futureWithError:{v34, 0}];
    goto LABEL_22;
  }

  v19 = [(PUIPosterSnapshotFilesystemCache *)v17 cacheSnapshotBundle:v4 options:0];
LABEL_15:
  v23 = v5->_finalizeFuture;
  v5->_finalizeFuture = v19;
LABEL_23:

LABEL_24:
  v9 = v5->_finalizeFuture;

LABEL_25:
  objc_sync_exit(v5);

  return v9;
}

id __64__PUIPosterSnapshotDestinationFinalizer_finalizeSnapshotBundle___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) bundleURL];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) bundleURL];
  v7 = [v6 lastPathComponent];
  v8 = [v5 URLByAppendingPathComponent:v7];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v6) = [v9 moveItemAtURL:v4 toURL:v8 error:a2];

  if (v6)
  {
    v10 = [PUIPosterSnapshotBundle snapshotBundleAtURL:v8 error:a2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  if ([(BSAtomicSignal *)obj->_invalidationSignal signal])
  {
    [(PFSandboxExtendedURL *)obj->_sandboxExtendedURL invalidate];
    basicURL = obj->_basicURL;
    obj->_basicURL = 0;

    [(PFTFuture *)obj->_finalizeFuture cancel];
  }

  objc_sync_exit(obj);
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"_type"];
  [v5 encodeObject:self->_basicURL forKey:@"_basicURL"];
  [v5 encodeObject:self->_sandboxExtendedURL forKey:@"_sandboxExtendedURL"];
}

- (PUIPosterSnapshotDestinationFinalizer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"_type"];
  v6 = objc_opt_self();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"_sandboxExtendedURL"];

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"_basicURL"];

  v10 = [(PUIPosterSnapshotDestinationFinalizer *)self initWithType:v5 URL:v9 sandboxExtendedURL:v7];
  if (v10)
  {
    v11 = objc_opt_new();
    invalidationSignal = v10->_invalidationSignal;
    v10->_invalidationSignal = v11;
  }

  return v10;
}

- (PUIPosterSnapshotDestinationFinalizer)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"_type"];
  v6 = objc_opt_self();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"_sandboxExtendedURL"];

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"_basicURL"];

  v10 = [(PUIPosterSnapshotDestinationFinalizer *)self initWithType:v5 URL:v9 sandboxExtendedURL:v7];
  if (v10)
  {
    v11 = objc_opt_new();
    invalidationSignal = v10->_invalidationSignal;
    v10->_invalidationSignal = v11;
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt64:type forKey:@"_type"];
  [v5 encodeObject:self->_basicURL forKey:@"_basicURL"];
  [v5 encodeObject:self->_sandboxExtendedURL forKey:@"_sandboxExtendedURL"];
}

@end