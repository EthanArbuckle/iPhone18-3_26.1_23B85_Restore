@interface PTPassiveTraceArchiveHandle
- (PTPassiveTraceArchiveHandle)initWithAarPath:(id)a3 sandboxExtension:(id)a4;
- (void)dealloc;
@end

@implementation PTPassiveTraceArchiveHandle

- (PTPassiveTraceArchiveHandle)initWithAarPath:(id)a3 sandboxExtension:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PTPassiveTraceArchiveHandle;
  v9 = [(PTPassiveTraceArchiveHandle *)&v18 init];
  v10 = v9;
  if (!v9)
  {
LABEL_6:
    v12 = v10;
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_aarPath, a3);
  [v8 UTF8String];
  v10->_sandboxToken = sandbox_extension_consume();
  if ([(PTPassiveTraceArchiveHandle *)v10 sandboxToken]!= -1)
  {
    v11 = _passiveArchiveHandleHandle();
    if (os_signpost_enabled(v11))
    {
      *buf = 138543362;
      v20 = v7;
      _os_signpost_emit_with_name_impl(&dword_25E3D3000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PassiveTraceArchiveHandleCreation", "Successfully created an archive handle for '%{public}@'", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v13 = _passiveArchiveHandleErrorHandle();
  if (os_signpost_enabled(v13))
  {
    v14 = __error();
    v15 = strerror(*v14);
    *buf = 138543618;
    v20 = v7;
    v21 = 2082;
    v22 = v15;
    _os_signpost_emit_with_name_impl(&dword_25E3D3000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ExtensionConsumptionFailed", "Failed to consume sandbox extension for '%{public}@' due to error: %{public}s", buf, 0x16u);
  }

  v12 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(PTPassiveTraceArchiveHandle *)self sandboxToken]!= -1)
  {
    [(PTPassiveTraceArchiveHandle *)self sandboxToken];
    if (sandbox_extension_release())
    {
      v3 = _passiveArchiveHandleErrorHandle();
      if (os_signpost_enabled(v3))
      {
        v4 = [(PTPassiveTraceArchiveHandle *)self aarPath];
        v5 = __error();
        v6 = strerror(*v5);
        *buf = 138543618;
        v14 = v4;
        v15 = 2082;
        v16 = v6;
        v7 = "PassiveTraceArchiveHandleExtensionReleaseFailure";
        v8 = "Failed to release sandbox extension for %{public}@ due to error: %{public}s";
        v9 = v3;
        v10 = 22;
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_25E3D3000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v7, v8, buf, v10);
      }
    }

    else
    {
      v3 = _passiveArchiveHandleHandle();
      if (os_signpost_enabled(v3))
      {
        v4 = [(PTPassiveTraceArchiveHandle *)self aarPath];
        *buf = 138543362;
        v14 = v4;
        v7 = "PassiveTraceArchiveHandleExtensionRelease";
        v8 = "Successfully released the sandbox extension for %{public}@";
        v9 = v3;
        v10 = 12;
        goto LABEL_7;
      }
    }
  }

  v12.receiver = self;
  v12.super_class = PTPassiveTraceArchiveHandle;
  [(PTPassiveTraceArchiveHandle *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

@end