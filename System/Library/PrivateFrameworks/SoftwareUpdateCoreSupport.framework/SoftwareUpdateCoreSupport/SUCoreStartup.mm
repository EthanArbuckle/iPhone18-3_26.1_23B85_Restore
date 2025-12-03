@interface SUCoreStartup
+ (id)initializeSharedStartup:(int64_t)startup usingDomain:(id)domain usingFilesystemDir:(id)dir;
- (id)_initAtStartup:(int64_t)startup usingDomain:(id)domain usingFilesystemDir:(id)dir;
@end

@implementation SUCoreStartup

+ (id)initializeSharedStartup:(int64_t)startup usingDomain:(id)domain usingFilesystemDir:(id)dir
{
  domainCopy = domain;
  dirCopy = dir;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SUCoreStartup_initializeSharedStartup_usingDomain_usingFilesystemDir___block_invoke;
  block[3] = &unk_1E86FD370;
  v17 = dirCopy;
  startupCopy = startup;
  v16 = domainCopy;
  v9 = initializeSharedStartup_usingDomain_usingFilesystemDir__startupOnce;
  v10 = dirCopy;
  v11 = domainCopy;
  if (v9 != -1)
  {
    dispatch_once(&initializeSharedStartup_usingDomain_usingFilesystemDir__startupOnce, block);
  }

  v12 = initializeSharedStartup_usingDomain_usingFilesystemDir__startup;
  v13 = initializeSharedStartup_usingDomain_usingFilesystemDir__startup;

  return v12;
}

uint64_t __72__SUCoreStartup_initializeSharedStartup_usingDomain_usingFilesystemDir___block_invoke(void *a1)
{
  initializeSharedStartup_usingDomain_usingFilesystemDir__startup = [[SUCoreStartup alloc] _initAtStartup:a1[6] usingDomain:a1[4] usingFilesystemDir:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initAtStartup:(int64_t)startup usingDomain:(id)domain usingFilesystemDir:(id)dir
{
  startupCopy = startup;
  domainCopy = domain;
  dirCopy = dir;
  v17.receiver = self;
  v17.super_class = SUCoreStartup;
  v10 = [(SUCoreStartup *)&v17 init];
  if (!v10)
  {
    goto LABEL_7;
  }

  if (startupCopy)
  {
    v13 = +[SUCore sharedCore];
    v14 = v13;
    if (domainCopy)
    {
      [v13 useDomain:domainCopy];
    }

    if (dirCopy)
    {
      [v14 useFilesystemBaseDir:dirCopy];
    }

    if ((startupCopy & 2) == 0)
    {
LABEL_4:
      if ((startupCopy & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      v16 = +[SUCoreEventReporter sharedReporter];
      if ((startupCopy & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((startupCopy & 2) == 0)
  {
    goto LABEL_4;
  }

  v15 = +[SUCoreLog sharedLogger];
  if ((startupCopy & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((startupCopy & 8) != 0)
  {
LABEL_6:
    v11 = +[SUCoreDiag sharedDiag];
  }

LABEL_7:

  return v10;
}

@end