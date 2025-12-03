@interface TRIRemoteAssetDecrypter
+ (BOOL)decryptAssetWithURL:(id)l destinationFilename:(id)filename namespaceName:(id)name error:(id *)error;
@end

@implementation TRIRemoteAssetDecrypter

+ (BOOL)decryptAssetWithURL:(id)l destinationFilename:(id)filename namespaceName:(id)name error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  filenameCopy = filename;
  nameCopy = name;
  v13 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.trial.TrialArchivingService"];
  v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FEF680];
  [v13 setRemoteObjectInterface:v14];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__36;
  v34 = __Block_byref_object_dispose__36;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__TRIRemoteAssetDecrypter_decryptAssetWithURL_destinationFilename_namespaceName_error___block_invoke;
  v29[3] = &unk_279DE09F8;
  v29[4] = &v30;
  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v29];
  [v13 resume];
  path = [lCopy path];
  if (!path)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIRemoteAssetDecrypter.m" lineNumber:34 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
  }

  v17 = [TRISandboxExtensionFactory extensionTokenForPath:path extensionClass:0];

  v18 = [TRISandboxExtensionFactory extensionTokenForPath:filenameCopy extensionClass:1];
  v19 = v18;
  if (!v17)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      *buf = 138543618;
      *&buf[4] = path2;
      *&buf[12] = 2114;
      *&buf[14] = nameCopy;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Unable to get source extension token for path: %{public}@, namespace name: %{public}@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (!v18)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = filenameCopy;
      *&buf[12] = 2114;
      *&buf[14] = nameCopy;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Unable to get destination extension token for path: %{public}@, namespace name: %{public}@", buf, 0x16u);
    }

LABEL_14:

    v21 = 0;
    goto LABEL_17;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:filenameCopy isDirectory:1];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __87__TRIRemoteAssetDecrypter_decryptAssetWithURL_destinationFilename_namespaceName_error___block_invoke_34;
  v28[3] = &unk_279DE0A70;
  v28[4] = buf;
  [v15 decryptAssetWithURL:lCopy toDestinationFileURL:v20 namespaceName:nameCopy sourceExtension:v17 destinationExtension:v19 completion:v28];

  [v13 invalidate];
  if (error)
  {
    *error = v31[5];
  }

  if (v31[5])
  {
    v21 = 0;
  }

  else
  {
    v21 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);
LABEL_17:

  _Block_object_dispose(&v30, 8);
  v23 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __87__TRIRemoteAssetDecrypter_decryptAssetWithURL_destinationFilename_namespaceName_error___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "connection invalidated with error %{public}@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

void __87__TRIRemoteAssetDecrypter_decryptAssetWithURL_destinationFilename_namespaceName_error___block_invoke_34(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "decryption of asset completed with result %{public}@", &v7, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = *MEMORY[0x277D85DE8];
}

@end