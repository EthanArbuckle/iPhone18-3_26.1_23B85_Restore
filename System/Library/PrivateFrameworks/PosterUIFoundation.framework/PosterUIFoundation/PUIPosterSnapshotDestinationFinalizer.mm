@interface PUIPosterSnapshotDestinationFinalizer
- (PUIPosterSnapshotBundle)finalizedBundle;
- (PUIPosterSnapshotDestinationFinalizer)init;
- (PUIPosterSnapshotDestinationFinalizer)initWithBSXPCCoder:(id)coder;
- (PUIPosterSnapshotDestinationFinalizer)initWithCoder:(id)coder;
- (PUIPosterSnapshotDestinationFinalizer)initWithDestination:(id)destination;
- (PUIPosterSnapshotDestinationFinalizer)initWithType:(int64_t)type URL:(id)l sandboxExtendedURL:(id)rL;
- (id)finalizeSnapshotBundle:(id)bundle;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotDestinationFinalizer

- (PUIPosterSnapshotDestinationFinalizer)init
{
  [(PUIPosterSnapshotDestinationFinalizer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PUIPosterSnapshotDestinationFinalizer)initWithDestination:(id)destination
{
  destinationCopy = destination;
  v11.receiver = self;
  v11.super_class = PUIPosterSnapshotDestinationFinalizer;
  v5 = [(PUIPosterSnapshotDestinationFinalizer *)&v11 init];
  if (v5)
  {
    v5->_type = [destinationCopy type];
    basicURL = [destinationCopy basicURL];
    basicURL = v5->_basicURL;
    v5->_basicURL = basicURL;

    sandboxExtendedURL = [destinationCopy sandboxExtendedURL];
    sandboxExtendedURL = v5->_sandboxExtendedURL;
    v5->_sandboxExtendedURL = sandboxExtendedURL;
  }

  return v5;
}

- (PUIPosterSnapshotDestinationFinalizer)initWithType:(int64_t)type URL:(id)l sandboxExtendedURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = PUIPosterSnapshotDestinationFinalizer;
  v11 = [(PUIPosterSnapshotDestinationFinalizer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_basicURL, l);
    objc_storeStrong(&v12->_sandboxExtendedURL, rL);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(PFTFuture *)selfCopy->_finalizeFuture result:0];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)finalizeSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_finalizeFuture)
  {
    v6 = MEMORY[0x1E69C5258];
    v7 = PFFunctionNameForAddress();
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v9 = [v6 futureWithError:{v8, 0}];

    goto LABEL_25;
  }

  type = selfCopy->_type;
  v7 = selfCopy->_basicURL;
  v11 = selfCopy->_sandboxExtendedURL;
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
      v19 = [(PUIPosterSnapshotFilesystemCache *)v17 cacheSnapshotBundle:bundleCopy options:0];
      goto LABEL_15;
    }

    v36 = MEMORY[0x1E69C5258];
    v23 = PFFunctionNameForAddress();
    v34 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v35 = [v36 futureWithError:{v34, 0}];
LABEL_22:
    finalizeFuture = selfCopy->_finalizeFuture;
    selfCopy->_finalizeFuture = v35;

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
    v40 = bundleCopy;
    v16 = v27;
    v41 = v16;
    defaultProvider = [MEMORY[0x1E69C5270] defaultProvider];
    backgroundScheduler = [defaultProvider backgroundScheduler];
    v31 = [v28 futureWithBlock:v39 scheduler:backgroundScheduler];
    v32 = selfCopy->_finalizeFuture;
    selfCopy->_finalizeFuture = v31;

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

  v19 = [(PUIPosterSnapshotFilesystemCache *)v17 cacheSnapshotBundle:bundleCopy options:0];
LABEL_15:
  v23 = selfCopy->_finalizeFuture;
  selfCopy->_finalizeFuture = v19;
LABEL_23:

LABEL_24:
  v9 = selfCopy->_finalizeFuture;

LABEL_25:
  objc_sync_exit(selfCopy);

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

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"_type"];
  [coderCopy encodeObject:self->_basicURL forKey:@"_basicURL"];
  [coderCopy encodeObject:self->_sandboxExtendedURL forKey:@"_sandboxExtendedURL"];
}

- (PUIPosterSnapshotDestinationFinalizer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"_type"];
  v6 = objc_opt_self();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_sandboxExtendedURL"];

  v8 = objc_opt_self();
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"_basicURL"];

  v10 = [(PUIPosterSnapshotDestinationFinalizer *)self initWithType:v5 URL:v9 sandboxExtendedURL:v7];
  if (v10)
  {
    v11 = objc_opt_new();
    invalidationSignal = v10->_invalidationSignal;
    v10->_invalidationSignal = v11;
  }

  return v10;
}

- (PUIPosterSnapshotDestinationFinalizer)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"_type"];
  v6 = objc_opt_self();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_sandboxExtendedURL"];

  v8 = objc_opt_self();
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"_basicURL"];

  v10 = [(PUIPosterSnapshotDestinationFinalizer *)self initWithType:v5 URL:v9 sandboxExtendedURL:v7];
  if (v10)
  {
    v11 = objc_opt_new();
    invalidationSignal = v10->_invalidationSignal;
    v10->_invalidationSignal = v11;
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt64:type forKey:@"_type"];
  [coderCopy encodeObject:self->_basicURL forKey:@"_basicURL"];
  [coderCopy encodeObject:self->_sandboxExtendedURL forKey:@"_sandboxExtendedURL"];
}

@end