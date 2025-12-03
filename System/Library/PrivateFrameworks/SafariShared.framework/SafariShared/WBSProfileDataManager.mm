@interface WBSProfileDataManager
- (WBSProfileDataManager)initWithProfileProvider:(id)provider;
- (void)didRemoveProfile:(id)profile;
- (void)didRemoveProfileWithServerID:(id)d profileIdentifier:(id)identifier;
- (void)ensureProfileDirectoriesExistForProfileWithServerID:(id)d profileIdentifier:(id)identifier;
@end

@implementation WBSProfileDataManager

- (WBSProfileDataManager)initWithProfileProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = WBSProfileDataManager;
  v6 = [(WBSProfileDataManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileProvider, provider);
    v8 = v7;
  }

  return v7;
}

- (void)ensureProfileDirectoriesExistForProfileWithServerID:(id)d profileIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager safari_profileDirectoryURLWithID:identifierCopy createIfNeeded:1];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager2 safari_profileDirectoryURLWithID:dCopy createIfNeeded:1];
}

- (void)didRemoveProfileWithServerID:(id)d profileIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (dCopy)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [defaultManager2 safari_profileDirectoryURLWithID:dCopy createIfNeeded:0];
    v20 = 0;
    [defaultManager removeItemAtURL:v9 error:&v20];
    v10 = v20;

    if (!v10)
    {
      if (identifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXProfiles();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(WBSProfileDataManager *)dCopy didRemoveProfileWithServerID:v14 profileIdentifier:v10];
  }

  if (identifierCopy)
  {
LABEL_4:
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [defaultManager3 safari_profileDirectoryURLWithID:identifierCopy createIfNeeded:0];
    v19 = 0;
    [defaultManager removeItemAtURL:v12 error:&v19];
    v13 = v19;

    if (!v13)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  v15 = WBS_LOG_CHANNEL_PREFIXProfiles();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(WBSProfileDataManager *)identifierCopy didRemoveProfileWithServerID:v15 profileIdentifier:v13];
  }

LABEL_13:
  +[WBSParsecDSession clearAllParsecFeedbackAndEngagedCompletions];
  v16 = +[WBSSiriIntelligenceDonor sharedInstance];
  [v16 removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier:identifierCopy];

  v17 = +[WBSSiriIntelligenceDonor sharedInstance];
  [v17 removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier:identifierCopy];

  v18 = +[WBSIgnoredSiriSuggestedSitesController sharedController];
  [v18 removeIgnoredSiriSuggestedSitesInProfile:identifierCopy];
}

- (void)didRemoveProfile:(id)profile
{
  profileCopy = profile;
  serverID = [profileCopy serverID];
  identifier = [profileCopy identifier];

  [(WBSProfileDataManager *)self didRemoveProfileWithServerID:serverID profileIdentifier:identifier];
}

- (void)didRemoveProfileWithServerID:(void *)a3 profileIdentifier:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v6, v7, "Failed to remove profile directory with server id %{public}@ with error %{public}@", v8, v9, v10, v11, v12);
}

- (void)didRemoveProfileWithServerID:(void *)a3 profileIdentifier:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v6, v7, "Failed to remove profile directory with identifier %{public}@ with error %{public}@", v8, v9, v10, v11, v12);
}

@end