@interface NSExtension(SafariFoundationExtras)
- (BOOL)_sf_credentialProviderExtensionNeedsToDeclarePasswordSupport;
- (id)sf_applicationRecordForContainingApp;
- (id)sf_bundleIdentifierForContainingApp;
- (void)_sf_addHandlerForRequestIdentifier:()SafariFoundationExtras withBlock:;
- (void)_sf_credentialProviderExtensionNeedsToDeclarePasswordSupport;
@end

@implementation NSExtension(SafariFoundationExtras)

- (id)sf_applicationRecordForContainingApp
{
  v1 = [a1 _plugIn];
  v2 = [v1 containingUrl];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:v2 allowPlaceholder:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sf_bundleIdentifierForContainingApp
{
  v1 = [a1 sf_applicationRecordForContainingApp];
  v2 = [v1 bundleIdentifier];

  return v2;
}

- (void)_sf_addHandlerForRequestIdentifier:()SafariFoundationExtras withBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    os_unfair_lock_lock(&registrationLock);
    v18 = 0;
    v9 = getFinishHandlersForExtension(a1, &v18);
    v10 = _Block_copy(v8);
    [v9 setObject:v10 forKeyedSubscript:v6];

    if (v18 == 1)
    {
      objc_initWeak(&location, a1);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __84__NSExtension_SafariFoundationExtras___sf_addHandlerForRequestIdentifier_withBlock___block_invoke;
      v15[3] = &unk_279B61BC0;
      objc_copyWeak(&v16, &location);
      [a1 setRequestCompletionBlock:v15];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __84__NSExtension_SafariFoundationExtras___sf_addHandlerForRequestIdentifier_withBlock___block_invoke_2;
      v13[3] = &unk_279B61BE8;
      objc_copyWeak(&v14, &location);
      [a1 setRequestCancellationBlock:v13];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __84__NSExtension_SafariFoundationExtras___sf_addHandlerForRequestIdentifier_withBlock___block_invoke_3;
      v11[3] = &unk_279B61C10;
      objc_copyWeak(&v12, &location);
      [a1 setRequestInterruptionBlock:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock(&registrationLock);
  }
}

- (BOOL)_sf_credentialProviderExtensionNeedsToDeclarePasswordSupport
{
  v2 = objc_alloc(MEMORY[0x277CC1E50]);
  v3 = [a1 identifier];
  v14 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:&v14];
  v5 = v14;

  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NSExtension(SafariFoundationExtras) *)v5 _sf_credentialProviderExtensionNeedsToDeclarePasswordSupport];
    }

    goto LABEL_8;
  }

  v7 = [v4 platform] - 1;
  if (v7 > 0xB || ((0xC63u >> v7) & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = qword_26453E550[v7];
  v9 = [v4 SDKVersion];
  v10 = [v9 componentsSeparatedByString:@"."];
  v11 = [v10 firstObject];

  if ([v11 length])
  {
    v12 = v8 <= [v11 intValue];
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  return v12;
}

- (void)_sf_credentialProviderExtensionNeedsToDeclarePasswordSupport
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26450F000, a2, OS_LOG_TYPE_ERROR, "Failed to get application extension record: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end