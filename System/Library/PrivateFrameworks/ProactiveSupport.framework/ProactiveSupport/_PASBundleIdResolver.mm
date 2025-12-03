@interface _PASBundleIdResolver
- (_PASBundleIdResolver)initWithProcessIdentifier:(int)identifier;
- (id)bundleIdentifierOrProcessName:(BOOL *)name;
- (void)_populateResultWithLockWitness:(id)witness;
@end

@implementation _PASBundleIdResolver

- (id)bundleIdentifierOrProcessName:(BOOL *)name
{
  if (self->_exePath)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__812;
    v11 = __Block_byref_object_dispose__813;
    v12 = 0;
    lock = self->_lock;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54___PASBundleIdResolver_bundleIdentifierOrProcessName___block_invoke;
    v6[3] = &unk_1E77F1BE0;
    v6[5] = &v7;
    v6[6] = name;
    v6[4] = self;
    [(_PASLock *)lock runWithLockAcquired:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_populateResultWithLockWitness:(id)witness
{
  witnessCopy = witness;
  v5 = CFURLCreateWithFileSystemPath(0, self->_exePath, kCFURLPOSIXPathStyle, 0);
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASBundleIdResolver.m" lineNumber:55 description:{@"Failed to compute URL for filesystem path: %@", self->_exePath}];
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
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASBundleIdResolver.m" lineNumber:65 description:@"Failed to copy bundleIdentifier."];

          Copy = 0;
        }

        v12 = witnessCopy[1];
        witnessCopy[1] = Copy;

        *(witnessCopy + 16) = 0;
      }

      CFRelease(v9);
    }

    CFRelease(v7);
  }

  CFRelease(v5);
  v13 = witnessCopy;
  if (!witnessCopy[1])
  {
    lastPathComponent = [(NSString *)self->_exePath lastPathComponent];
    v15 = witnessCopy[1];
    witnessCopy[1] = lastPathComponent;

    v13 = witnessCopy;
    *(witnessCopy + 16) = 1;
  }
}

- (_PASBundleIdResolver)initWithProcessIdentifier:(int)identifier
{
  v3 = MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = v3;
  v16.super_class = _PASBundleIdResolver;
  v6 = [(_PASBundleIdResolver *)&v16 init];
  if (v6)
  {
    v7 = proc_pidpath(v5, buffer, 0x1000u);
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v7 encoding:4];
    }

    exePath = v6->_exePath;
    v6->_exePath = v8;

    v10 = [_PASLock alloc];
    v11 = objc_opt_new();
    v12 = [(_PASLock *)v10 initWithGuardedData:v11];
    lock = v6->_lock;
    v6->_lock = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

@end