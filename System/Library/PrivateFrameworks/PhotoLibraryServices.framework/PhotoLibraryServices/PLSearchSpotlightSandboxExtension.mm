@interface PLSearchSpotlightSandboxExtension
- (BOOL)_acquireSpotlightSandboxExtensionWithPathManager:(id)manager;
- (PLSearchSpotlightSandboxExtension)initWithPathManager:(id)manager;
- (void)_releaseSpotlightSandboxExtension;
- (void)dealloc;
@end

@implementation PLSearchSpotlightSandboxExtension

- (void)_releaseSpotlightSandboxExtension
{
  if (self->_spotlightSandboxExtensionHandle != -1)
  {
    sandbox_extension_release();
    self->_spotlightSandboxExtensionHandle = -1;
    v3 = PLSearchBackendIndexStatusGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Released sandbox extension", v4, 2u);
    }
  }
}

- (BOOL)_acquireSpotlightSandboxExtensionWithPathManager:(id)manager
{
  *&v25[5] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (+[PLSpotlightDonationUtilities spotlightPrivateIndexEnabled])
  {
    if (self->_spotlightSandboxExtensionHandle != -1)
    {
LABEL_19:
      v16 = self->_spotlightSandboxExtensionHandle != -1;
      goto LABEL_20;
    }

    spotlightSearchIndexPath = [managerCopy spotlightSearchIndexPath];
    fileSystemRepresentation = [spotlightSearchIndexPath fileSystemRepresentation];

    if (fileSystemRepresentation)
    {
      v7 = sandbox_extension_issue_file_to_self();
      if (v7)
      {
        v8 = v7;
        v9 = sandbox_extension_consume();
        self->_spotlightSandboxExtensionHandle = v9;
        v10 = PLSearchBackendIndexStatusGetLog();
        v11 = v10;
        if (v9 == -1)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v22 = *__error();
            v24 = 67109378;
            v25[0] = v22;
            LOWORD(v25[1]) = 2080;
            *(&v25[1] + 2) = fileSystemRepresentation;
            v12 = "Failed to consume sandbox extension token, errno: %{darwin.errno}d, path: %s";
            v13 = v11;
            v14 = OS_LOG_TYPE_ERROR;
            v15 = 18;
            goto LABEL_17;
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v24) = 0;
          v12 = "Acquired sandbox extension";
          v13 = v11;
          v14 = OS_LOG_TYPE_DEBUG;
          v15 = 2;
LABEL_17:
          _os_log_impl(&dword_19BF1F000, v13, v14, v12, &v24, v15);
        }

        free(v8);
        goto LABEL_19;
      }

      v17 = PLSearchBackendIndexStatusGetLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v21 = *__error();
      v24 = 67109378;
      v25[0] = v21;
      LOWORD(v25[1]) = 2080;
      *(&v25[1] + 2) = fileSystemRepresentation;
      v18 = "Failed to issue sandbox extension token, errno: %{darwin.errno}d, path: %s";
      v19 = v17;
      v20 = 18;
    }

    else
    {
      v17 = PLSearchBackendIndexStatusGetLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        goto LABEL_19;
      }

      v24 = 138412290;
      *v25 = managerCopy;
      v18 = "Unable to get spotlight search index path from path manager %@";
      v19 = v17;
      v20 = 12;
    }

    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, v18, &v24, v20);
    goto LABEL_14;
  }

  v16 = 1;
LABEL_20:

  return v16;
}

- (void)dealloc
{
  [(PLSearchSpotlightSandboxExtension *)self _releaseSpotlightSandboxExtension];
  v3.receiver = self;
  v3.super_class = PLSearchSpotlightSandboxExtension;
  [(PLSearchSpotlightSandboxExtension *)&v3 dealloc];
}

- (PLSearchSpotlightSandboxExtension)initWithPathManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = PLSearchSpotlightSandboxExtension;
  v5 = [(PLSearchSpotlightSandboxExtension *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_spotlightSandboxExtensionHandle = -1;
    if (![(PLSearchSpotlightSandboxExtension *)v5 _acquireSpotlightSandboxExtensionWithPathManager:managerCopy])
    {

      v6 = 0;
    }
  }

  return v6;
}

@end