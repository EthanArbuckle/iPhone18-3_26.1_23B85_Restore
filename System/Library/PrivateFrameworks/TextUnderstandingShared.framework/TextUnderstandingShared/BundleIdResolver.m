@interface BundleIdResolver
- (BundleIdResolver)initWithProcessIdentifier:(int)a3;
- (id)bundleIdentifierOrProcessName:(BOOL *)a3;
- (void)_populateResultWithLockWitness:(id)a3;
- (void)dealloc;
@end

@implementation BundleIdResolver

- (id)bundleIdentifierOrProcessName:(BOOL *)a3
{
  if (self->_exePath)
  {
    pthread_mutex_lock(&self->_lock);
    guardedData = self->_guardedData;
    if (!guardedData->bundleIdOrProcName)
    {
      [(BundleIdResolver *)self _populateResultWithLockWitness:?];
      guardedData = self->_guardedData;
    }

    if (a3)
    {
      *a3 = guardedData->isProcessName;
      guardedData = self->_guardedData;
    }

    v6 = guardedData->bundleIdOrProcName;
    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_populateResultWithLockWitness:(id)a3
{
  v18 = a3;
  v5 = CFURLCreateWithFileSystemPath(0, self->_exePath, kCFURLPOSIXPathStyle, 0);
  if (!v5)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"BundleIdResolver.m" lineNumber:62 description:{@"Failed to compute URL for filesystem path: %@", self->_exePath}];
  }

  v6 = _CFBundleCopyBundleURLForExecutableURL();
  if (v6)
  {
    v7 = v6;
    Unique = _CFBundleCreateUnique();
    if (Unique)
    {
      v9 = Unique;
      Identifier = CFBundleGetIdentifier(Unique);
      if (Identifier)
      {
        Copy = CFStringCreateCopy(0, Identifier);
        if (!Copy)
        {
          v17 = [MEMORY[0x277CCA890] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"BundleIdResolver.m" lineNumber:72 description:@"Failed to copy bundleIdentifier."];

          Copy = 0;
        }

        v12 = v18[1];
        v18[1] = Copy;

        *(v18 + 16) = 0;
      }

      CFRelease(v9);
    }

    CFRelease(v7);
  }

  CFRelease(v5);
  v13 = v18;
  if (!v18[1])
  {
    v14 = [(NSString *)self->_exePath lastPathComponent];
    v15 = v18[1];
    v18[1] = v14;

    v13 = v18;
    *(v18 + 16) = 1;
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = BundleIdResolver;
  [(BundleIdResolver *)&v3 dealloc];
}

- (BundleIdResolver)initWithProcessIdentifier:(int)a3
{
  v3 = MEMORY[0x28223BE20](self);
  v5 = v4;
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = v3;
  v14.super_class = BundleIdResolver;
  v6 = [(BundleIdResolver *)&v14 init];
  if (v6)
  {
    bzero(buffer, 0x1000uLL);
    v7 = proc_pidpath(v5, buffer, 0x1000u);
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v7 encoding:4];
    }

    exePath = v6->_exePath;
    v6->_exePath = v8;

    v10 = objc_opt_new();
    guardedData = v6->_guardedData;
    v6->_guardedData = v10;

    pthread_mutex_init(&v6->_lock, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

@end