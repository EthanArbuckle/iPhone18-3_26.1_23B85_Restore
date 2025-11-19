@interface WBSProfileDataManager
- (WBSProfileDataManager)initWithProfileProvider:(id)a3;
- (void)didRemoveProfile:(id)a3;
- (void)didRemoveProfileWithServerID:(id)a3 profileIdentifier:(id)a4;
- (void)ensureProfileDirectoriesExistForProfileWithServerID:(id)a3 profileIdentifier:(id)a4;
@end

@implementation WBSProfileDataManager

- (WBSProfileDataManager)initWithProfileProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSProfileDataManager;
  v6 = [(WBSProfileDataManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileProvider, a3);
    v8 = v7;
  }

  return v7;
}

- (void)ensureProfileDirectoriesExistForProfileWithServerID:(id)a3 profileIdentifier:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 safari_profileDirectoryURLWithID:v5 createIfNeeded:1];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 safari_profileDirectoryURLWithID:v10 createIfNeeded:1];
}

- (void)didRemoveProfileWithServerID:(id)a3 profileIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  if (v5)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 safari_profileDirectoryURLWithID:v5 createIfNeeded:0];
    v20 = 0;
    [v7 removeItemAtURL:v9 error:&v20];
    v10 = v20;

    if (!v10)
    {
      if (v6)
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
    [(WBSProfileDataManager *)v5 didRemoveProfileWithServerID:v14 profileIdentifier:v10];
  }

  if (v6)
  {
LABEL_4:
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [v11 safari_profileDirectoryURLWithID:v6 createIfNeeded:0];
    v19 = 0;
    [v7 removeItemAtURL:v12 error:&v19];
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
    [(WBSProfileDataManager *)v6 didRemoveProfileWithServerID:v15 profileIdentifier:v13];
  }

LABEL_13:
  +[WBSParsecDSession clearAllParsecFeedbackAndEngagedCompletions];
  v16 = +[WBSSiriIntelligenceDonor sharedInstance];
  [v16 removeAllCoreSpotlightHistoryDataDonatedBySafariForProfileWithIdentifier:v6];

  v17 = +[WBSSiriIntelligenceDonor sharedInstance];
  [v17 removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier:v6];

  v18 = +[WBSIgnoredSiriSuggestedSitesController sharedController];
  [v18 removeIgnoredSiriSuggestedSitesInProfile:v6];
}

- (void)didRemoveProfile:(id)a3
{
  v4 = a3;
  v6 = [v4 serverID];
  v5 = [v4 identifier];

  [(WBSProfileDataManager *)self didRemoveProfileWithServerID:v6 profileIdentifier:v5];
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