@interface WBSAutoFillQuirksManager
- (BOOL)_isURL:(id)a3 containedInQuirks:(id)a4;
- (BOOL)arePasskeysDisallowedForRelyingParty:(id)a3;
- (BOOL)isDomainKnownToAskForCredentialsForOtherServicesWhenEmbeddedAsThirdParty:(id)a3;
- (BOOL)isDomainKnownToDoSameDocumentNavigationInTextEditingCallback:(id)a3;
- (BOOL)shouldUseFallbackUIForRelyingParty:(id)a3;
- (WBSAppIDsToDomainsAssociationManager)appToWebsiteAssociationManager;
- (WBSAutoFillAssociatedDomainsManager)associatedDomainsManager;
- (WBSChangePasswordURLManager)changePasswordURLManager;
- (WBSPair)knownWebBrowsersAndExtensionStorefronts;
- (WBSPasswordAuditingEligibleDomainsManager)passwordAuditingEligibleDomainsManager;
- (WBSPasswordGenerationManager)passwordGenerationManager;
- (id)_appIDsToDomainsAssociationsFromCurrentSnapshot;
- (id)_changePasswordURLStringsFromCurrentSnapshot;
- (id)_domainsIneligibleForPasswordAuditingFromCurrentSnapshot;
- (id)_domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServicesFromCurrentSnapshot;
- (id)_domainsToConsiderIdenticalFromCurrentSnapshot;
- (id)_domainsWithAssociatedCredentialsFromCurrentSnapshot;
- (id)_initWithBuiltInQuirksURL:(id)a3 downloadsDirectoryURL:(id)a4 resourceName:(id)a5 resourceVersion:(id)a6 updateDateDefaultsKey:(id)a7 updateInterval:(double)a8 isForTesting:(BOOL)a9;
- (id)_passwordRequirementsByDomainFromCurrentSnapshot;
- (id)_urlFromRelyingParty:(id)a3;
- (id)domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices;
- (void)_sendDidDownloadNewDataNotification;
- (void)didDownloadDataForRemotelyUpdatableDataController:(id)a3;
@end

@implementation WBSAutoFillQuirksManager

- (id)_initWithBuiltInQuirksURL:(id)a3 downloadsDirectoryURL:(id)a4 resourceName:(id)a5 resourceVersion:(id)a6 updateDateDefaultsKey:(id)a7 updateInterval:(double)a8 isForTesting:(BOOL)a9
{
  v9 = a9;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v29.receiver = self;
  v29.super_class = WBSAutoFillQuirksManager;
  v21 = [(WBSAutoFillQuirksManager *)&v29 init];
  p_isa = &v21->super.isa;
  if (v21)
  {
    if (v9)
    {
      v21->_isForTesting = v9;
    }

    else
    {
      v23 = [WBSRemotelyUpdatableDataController alloc];
      v24 = objc_opt_class();
      v25 = [(WBSRemotelyUpdatableDataController *)v23 initWithDataFormat:0 builtInListURL:v16 downloadsDirectoryURL:v17 resourceName:v18 resourceVersion:v19 updateDateDefaultsKey:v20 updateInterval:a8 snapshotClass:v24 snapshotTransformerClass:objc_opt_class()];
      v26 = p_isa[3];
      p_isa[3] = v25;

      [p_isa[3] setShouldKeepBuiltInSnapshotLoaded:1];
      [p_isa[3] setDelegate:p_isa];
      if (a8 != 0.0)
      {
        [p_isa[3] setShouldAttemptToUpdateConfiguration:1];
      }

      [p_isa[3] setDataIsUsedByMultipleProcesses:1];
    }

    v27 = p_isa;
  }

  return p_isa;
}

- (WBSPasswordGenerationManager)passwordGenerationManager
{
  passwordGenerationManager = self->_passwordGenerationManager;
  if (!passwordGenerationManager)
  {
    v4 = [WBSPasswordGenerationManager alloc];
    v5 = [(WBSAutoFillQuirksManager *)self _passwordRequirementsByDomainFromCurrentSnapshot];
    v6 = [(WBSPasswordGenerationManager *)v4 initWithPasswordRequirementsByDomain:v5];
    v7 = self->_passwordGenerationManager;
    self->_passwordGenerationManager = v6;

    passwordGenerationManager = self->_passwordGenerationManager;
  }

  v8 = passwordGenerationManager;

  return v8;
}

- (WBSAutoFillAssociatedDomainsManager)associatedDomainsManager
{
  associatedDomainsManager = self->_associatedDomainsManager;
  if (!associatedDomainsManager)
  {
    v4 = [WBSAutoFillAssociatedDomainsManager alloc];
    v5 = [(WBSAutoFillQuirksManager *)self _domainsWithAssociatedCredentialsFromCurrentSnapshot];
    v6 = [(WBSAutoFillQuirksManager *)self _domainsToConsiderIdenticalFromCurrentSnapshot];
    v7 = [(WBSAutoFillAssociatedDomainsManager *)v4 initWithDomainsWithAssociatedCredentials:v5 domainsToConsiderIdentical:v6];
    v8 = self->_associatedDomainsManager;
    self->_associatedDomainsManager = v7;

    associatedDomainsManager = self->_associatedDomainsManager;
  }

  v9 = associatedDomainsManager;

  return v9;
}

- (WBSPasswordAuditingEligibleDomainsManager)passwordAuditingEligibleDomainsManager
{
  passwordAuditingEligibleDomainsManager = self->_passwordAuditingEligibleDomainsManager;
  if (!passwordAuditingEligibleDomainsManager)
  {
    v4 = [WBSPasswordAuditingEligibleDomainsManager alloc];
    v5 = [(WBSAutoFillQuirksManager *)self _domainsIneligibleForPasswordAuditingFromCurrentSnapshot];
    v6 = [(WBSPasswordAuditingEligibleDomainsManager *)v4 initWithDomainsIneligibleForPasswordAuditing:v5];
    v7 = self->_passwordAuditingEligibleDomainsManager;
    self->_passwordAuditingEligibleDomainsManager = v6;

    passwordAuditingEligibleDomainsManager = self->_passwordAuditingEligibleDomainsManager;
  }

  v8 = passwordAuditingEligibleDomainsManager;

  return v8;
}

- (WBSChangePasswordURLManager)changePasswordURLManager
{
  changePasswordURLManager = self->_changePasswordURLManager;
  if (!changePasswordURLManager)
  {
    v4 = [WBSChangePasswordURLManager alloc];
    v5 = [(WBSAutoFillQuirksManager *)self _changePasswordURLStringsFromCurrentSnapshot];
    v6 = [(WBSChangePasswordURLManager *)v4 initWithChangePasswordURLStrings:v5];
    v7 = self->_changePasswordURLManager;
    self->_changePasswordURLManager = v6;

    changePasswordURLManager = self->_changePasswordURLManager;
  }

  v8 = changePasswordURLManager;

  return v8;
}

- (WBSAppIDsToDomainsAssociationManager)appToWebsiteAssociationManager
{
  appToWebsiteAssociationManager = self->_appToWebsiteAssociationManager;
  if (!appToWebsiteAssociationManager)
  {
    v4 = [WBSAppIDsToDomainsAssociationManager alloc];
    v5 = [(WBSAutoFillQuirksManager *)self _appIDsToDomainsAssociationsFromCurrentSnapshot];
    v6 = [(WBSAppIDsToDomainsAssociationManager *)v4 initWithAppIDsToDomains:v5];
    v7 = self->_appToWebsiteAssociationManager;
    self->_appToWebsiteAssociationManager = v6;

    appToWebsiteAssociationManager = self->_appToWebsiteAssociationManager;
  }

  v8 = appToWebsiteAssociationManager;

  return v8;
}

- (WBSPair)knownWebBrowsersAndExtensionStorefronts
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = MEMORY[0x1E695E0F0];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = MEMORY[0x1E695E0F0];
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__WBSAutoFillQuirksManager_knownWebBrowsersAndExtensionStorefronts__block_invoke;
  v6[3] = &unk_1E7CF1780;
  v6[4] = &v13;
  v6[5] = &v7;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessBuiltInAndRemotelyLoadedSnapshots:v6];
  v3 = [WBSPair alloc];
  v4 = [(WBSPair *)v3 initWithFirst:v14[5] second:v8[5]];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void __67__WBSAutoFillQuirksManager_knownWebBrowsersAndExtensionStorefronts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v5 knownWebBrowsers];
  if (!v6 || (v7 = v6, [v5 knownExtensionStorefronts], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v9 = v5, !v8))
  {
    v9 = v16;
  }

  v10 = [v9 knownWebBrowsers];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v9 knownExtensionStorefronts];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices
{
  domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices = self->_domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices;
  if (!domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices)
  {
    v4 = [(WBSAutoFillQuirksManager *)self _domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServicesFromCurrentSnapshot];
    v5 = self->_domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices;
    self->_domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices = v4;

    domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices = self->_domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices;
  }

  v6 = domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices;

  return v6;
}

- (void)didDownloadDataForRemotelyUpdatableDataController:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSAutoFillQuirksManager_didDownloadDataForRemotelyUpdatableDataController___block_invoke;
  block[3] = &unk_1E7CF16E0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__WBSAutoFillQuirksManager_didDownloadDataForRemotelyUpdatableDataController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _passwordRequirementsByDomainFromCurrentSnapshot];
  [*(*(a1 + 32) + 8) setPasswordRequirementsByDomain:v2];

  v3 = [*(a1 + 32) _domainsWithAssociatedCredentialsFromCurrentSnapshot];
  [*(*(a1 + 32) + 16) setDomainsWithAssociatedCredentials:v3];

  v4 = [*(a1 + 32) _domainsToConsiderIdenticalFromCurrentSnapshot];
  [*(*(a1 + 32) + 16) setDomainsToConsiderIdentical:v4];

  v5 = [*(a1 + 32) _domainsIneligibleForPasswordAuditingFromCurrentSnapshot];
  [*(*(a1 + 32) + 32) setDomainsIneligibleForPasswordAuditing:v5];

  v6 = [*(a1 + 32) _changePasswordURLStringsFromCurrentSnapshot];
  [*(*(a1 + 32) + 48) setChangePasswordURLStrings:v6];

  v7 = [*(a1 + 32) _appIDsToDomainsAssociationsFromCurrentSnapshot];
  [*(*(a1 + 32) + 40) setAppIDsToDomains:v7];

  v8 = [*(a1 + 32) _domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServicesFromCurrentSnapshot];
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = v8;

  v11 = *(a1 + 32);

  return [v11 _sendDidDownloadNewDataNotification];
}

- (void)_sendDidDownloadNewDataNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"WBSAutoFillQuirksManagerDidDownloadNewQuirks" object:self];
}

- (id)_passwordRequirementsByDomainFromCurrentSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__WBSAutoFillQuirksManager__passwordRequirementsByDomainFromCurrentSnapshot__block_invoke;
  v5[3] = &unk_1E7CF17A8;
  v5[4] = &v6;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessCurrentSnapshot:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __76__WBSAutoFillQuirksManager__passwordRequirementsByDomainFromCurrentSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 passwordRequirementsByDomain];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_domainsWithAssociatedCredentialsFromCurrentSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__WBSAutoFillQuirksManager__domainsWithAssociatedCredentialsFromCurrentSnapshot__block_invoke;
  v5[3] = &unk_1E7CF17A8;
  v5[4] = &v6;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessCurrentSnapshot:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __80__WBSAutoFillQuirksManager__domainsWithAssociatedCredentialsFromCurrentSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 domainsWithAssociatedCredentials];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_domainsToConsiderIdenticalFromCurrentSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__WBSAutoFillQuirksManager__domainsToConsiderIdenticalFromCurrentSnapshot__block_invoke;
  v5[3] = &unk_1E7CF17A8;
  v5[4] = &v6;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessCurrentSnapshot:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __74__WBSAutoFillQuirksManager__domainsToConsiderIdenticalFromCurrentSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 domainsToConsiderIdentical];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_domainsIneligibleForPasswordAuditingFromCurrentSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__WBSAutoFillQuirksManager__domainsIneligibleForPasswordAuditingFromCurrentSnapshot__block_invoke;
  v5[3] = &unk_1E7CF17A8;
  v5[4] = &v6;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessCurrentSnapshot:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __84__WBSAutoFillQuirksManager__domainsIneligibleForPasswordAuditingFromCurrentSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v7 = [a2 domainsIneligibleForPasswordAuditing];
  v4 = [v3 setWithArray:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_changePasswordURLStringsFromCurrentSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__WBSAutoFillQuirksManager__changePasswordURLStringsFromCurrentSnapshot__block_invoke;
  v5[3] = &unk_1E7CF17A8;
  v5[4] = &v6;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessCurrentSnapshot:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __72__WBSAutoFillQuirksManager__changePasswordURLStringsFromCurrentSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 changePasswordURLsByDomain];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_appIDsToDomainsAssociationsFromCurrentSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__WBSAutoFillQuirksManager__appIDsToDomainsAssociationsFromCurrentSnapshot__block_invoke;
  v5[3] = &unk_1E7CF17D0;
  v5[4] = &v6;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessBuiltInAndRemotelyLoadedSnapshots:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __75__WBSAutoFillQuirksManager__appIDsToDomainsAssociationsFromCurrentSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 appIDsToDomainsAssociations];
  v6 = v5;
  if (!v5)
  {
    v6 = [v7 appIDsToDomainsAssociations];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  if (!v5)
  {
  }
}

- (id)_domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServicesFromCurrentSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  remotelyUpdatableDataController = self->_remotelyUpdatableDataController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __114__WBSAutoFillQuirksManager__domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServicesFromCurrentSnapshot__block_invoke;
  v5[3] = &unk_1E7CF17D0;
  v5[4] = &v6;
  [(WBSRemotelyUpdatableDataController *)remotelyUpdatableDataController accessBuiltInAndRemotelyLoadedSnapshots:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __114__WBSAutoFillQuirksManager__domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServicesFromCurrentSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices];
  v6 = v5;
  if (!v5)
  {
    v6 = [v7 domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  if (!v5)
  {
  }
}

- (BOOL)arePasskeysDisallowedForRelyingParty:(id)a3
{
  v4 = [(WBSAutoFillQuirksManager *)self _urlFromRelyingParty:a3];
  if (v4)
  {
    v5 = [(WBSAutoFillQuirksManager *)self _isURL:v4 containedInQuirks:&__block_literal_global_20];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldUseFallbackUIForRelyingParty:(id)a3
{
  v4 = [(WBSAutoFillQuirksManager *)self _urlFromRelyingParty:a3];
  if (v4)
  {
    v5 = [(WBSAutoFillQuirksManager *)self _isURL:v4 containedInQuirks:&__block_literal_global_22];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDomainKnownToAskForCredentialsForOtherServicesWhenEmbeddedAsThirdParty:(id)a3
{
  v4 = [(WBSAutoFillQuirksManager *)self _urlFromRelyingParty:a3];
  if (v4)
  {
    v5 = [(WBSAutoFillQuirksManager *)self _isURL:v4 containedInQuirks:&__block_literal_global_24];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDomainKnownToDoSameDocumentNavigationInTextEditingCallback:(id)a3
{
  v4 = [(WBSAutoFillQuirksManager *)self _urlFromRelyingParty:a3];
  if (v4)
  {
    v5 = [(WBSAutoFillQuirksManager *)self _isURL:v4 containedInQuirks:&__block_literal_global_26];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isURL:(id)a3 containedInQuirks:(id)a4
{
  v6 = a3;
  v7 = [(WBSRemotelyUpdatableDataController *)self->_remotelyUpdatableDataController fetchDataFromRemotelyLoadedSnapshotFallingBackToBuiltInSnapshot:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__WBSAutoFillQuirksManager__isURL_containedInQuirks___block_invoke;
  v10[3] = &unk_1E7CF1818;
  v11 = v6;
  v8 = v6;
  LOBYTE(v6) = [v7 safari_containsObjectPassingTest:v10];

  return v6;
}

- (id)_urlFromRelyingParty:(id)a3
{
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setHost:v4];

  [v5 setScheme:@"https"];
  v6 = [v5 URL];

  return v6;
}

@end