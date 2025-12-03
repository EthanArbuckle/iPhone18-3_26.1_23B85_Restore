@interface TRISandboxExtensionFactory
+ (id)extensionTokenForPath:(id)path extensionClass:(unsigned __int8)class;
@end

@implementation TRISandboxExtensionFactory

+ (id)extensionTokenForPath:(id)path extensionClass:(unsigned __int8)class
{
  classCopy = class;
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = pathCopy;
  if (classCopy == 1)
  {
    v7 = MEMORY[0x277D861C0];
  }

  else
  {
    if (classCopy)
    {
      goto LABEL_6;
    }

    v7 = MEMORY[0x277D861B8];
  }

  v8 = *v7;
LABEL_6:
  [pathCopy fileSystemRepresentation];
  v9 = *MEMORY[0x277D861E8];
  v10 = sandbox_extension_issue_file();
  if (!v10)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v17 = __error();
      v18 = strerror(*v17);
      v19 = *__error();
      v22 = 138543874;
      *v23 = v6;
      *&v23[8] = 2080;
      *&v23[10] = v18;
      v24 = 1024;
      v25 = v19;
      _os_log_fault_impl(&dword_26F567000, v15, OS_LOG_TYPE_FAULT, "failed to issue extension for %{public}@ err %s errno %d", &v22, 0x1Cu);
    }

    goto LABEL_16;
  }

  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v10 encoding:4];
  free(v11);
  v13 = TRILogCategory_Server();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v22) = 0;
      _os_log_fault_impl(&dword_26F567000, v14, OS_LOG_TYPE_FAULT, "failed to construct sandbox extension with raw token", &v22, 2u);
    }

    v15 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109378;
    *v23 = classCopy;
    *&v23[4] = 2080;
    *&v23[6] = [v6 fileSystemRepresentation];
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "issuing sandbox extension (of type: %d) for path %s", &v22, 0x12u);
  }

  v15 = v12;
  v16 = v15;
LABEL_17:

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

@end