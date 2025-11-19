@interface SSRVoiceProfileManager
+ (id)sharedInstanceWithEndpointId:(id)a3;
+ (void)clearVTEnableAfterProfileSyncFlag;
- (BOOL)_checkIfDownloadRequiredForProfileId:(id)a3;
- (BOOL)_isDirectory:(id)a3;
- (BOOL)_isLegacyEnrollmentMarkedWith:(id)a3 forLanguageCode:(id)a4;
- (BOOL)_isMarkedForVoiceProfileTrainingSyncForLanguage:(id)a3;
- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)a3;
- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)a3 withBackupMetaBlob:(id)a4;
- (BOOL)isSATEnrolledForSiriProfileId:(id)a3 forLanguageCode:(id)a4;
- (BOOL)isSATEnrollmentMigratedForSiriProfileId:(id)a3 forLanguageCode:(id)a4;
- (BOOL)isVoiceTriggerRepromptRequired;
- (BOOL)triggerVoiceProfileDuplicatesCleanup;
- (SSRVoiceProfileManager)initWithEndpointId:(id)a3;
- (SSRVoiceProfileManagerDelegate)delegate;
- (id)SSRBasePathForAppDomain:(id)a3;
- (id)SSRSpeakerProfilesBasePath;
- (id)_CSSATCachePathForAppDomain:(id)a3;
- (id)_CSSATDownloadPath;
- (id)_CSSATLegacyUploadPath;
- (id)_CSSATUploadPathForSiriProfileId:(id)a3;
- (id)_copyVoiceProfileAtPath:(id)a3 toPath:(id)a4;
- (id)_createAndSetNewEnrollmentId;
- (id)_downloadAndEnrollVoiceProfileForProfileId:(id)a3 withDownloadTriggerBlock:(id)a4;
- (id)_enableVoiceTriggerIfLanguageMatches:(id)a3;
- (id)_enrollVoiceProfileForSiriProfileId:(id)a3 fromCacheDirectoryPath:(id)a4 withCategoryType:(unint64_t)a5;
- (id)_getUserVoiceProfileDownloadCacheDirectoryForProfileId:(id)a3 forDeviceCategory:(unint64_t)a4 forVoiceProfileVersion:(unint64_t)a5;
- (id)_getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:(id)a3;
- (id)_getVoiceProfilePathsToBeUploadedForSiriProfileId:(id)a3;
- (id)_getVoiceProfilesForSiriProfileId:(id)a3 withLanguageCode:(id)a4;
- (id)_prepareVoiceProfileWithSiriProfileId:(id)a3 withUploadBlock:(id)a4;
- (id)createEnrollmentId;
- (id)deleteUserVoiceProfile:(id)a3;
- (id)devicesWithVoiceProfileIniCloudForLanguage:(id)a3;
- (id)discardSiriEnrollmentForProfileId:(id)a3 forLanguageCode:(id)a4;
- (id)getAllContentsOfVoiceProfileStore;
- (id)getCacheDirectoryForAppDomain:(id)a3;
- (id)getCachedVoiceProfileAvailabilityMetaBlob;
- (id)getDonationIdsFromLanguageCode:(id)a3 error:(id *)a4;
- (id)getSATEnrollmentPath;
- (id)getUserVoiceProfileUpdateDirectory;
- (id)getUserVoiceProfileUploadPathWithEnrolledLanguageList:(id *)a3;
- (id)getVoiceProfileAnalyticsForAppDomain:(id)a3 withLocale:(id)a4;
- (id)markSATEnrollmentSuccessForVoiceProfile:(id)a3;
- (id)newVoiceProfileWithLocale:(id)a3 withAppDomain:(id)a4;
- (id)provisionedVoiceProfilesForAppDomain:(id)a3 withLocale:(id)a4;
- (id)provisionedVoiceProfilesForLocale:(id)a3;
- (id)updateVoiceProfile:(id)a3 withUserName:(id)a4;
- (id)voiceProfileForId:(id)a3;
- (id)voiceTriggerRepromptFinished;
- (void)_copyExplicitEnrollmentFilesFromPath:(id)a3 toPath:(id)a4 withCompletion:(id)a5;
- (void)_downloadVoiceProfileForProfileId:(id)a3 forDeviceCategory:(unint64_t)a4 withDownloadTriggerBlock:(id)a5 withCompletion:(id)a6;
- (void)_markVoiceProfileTrainingSyncForLanguage:(id)a3;
- (void)addUtterances:(id)a3 toProfile:(id)a4 withContext:(id)a5 doUtteranceDonation:(BOOL)a6 withCompletion:(id)a7;
- (void)applyContentsToVoiceProfileStore:(id)a3;
- (void)cleanupVoiceProfileModelFilesForLocale:(id)a3 withAsset:(id)a4;
- (void)cleanupVoiceProfileModelFilesForLocale:(id)a3 withAssets:(id)a4;
- (void)deleteAllVoiceProfilesForAppDomain:(id)a3;
- (void)enableVoiceTriggerUponVoiceProfileSyncForLanguage:(id)a3;
- (void)importVoiceProfile:(id)a3 appDomain:(id)a4 withSharedUserId:(id)a5 withPersonaId:(id)a6 withLocale:(id)a7 withAsset:(id)a8 trainWithPayload:(BOOL)a9 withCompletion:(id)a10;
- (void)isImplicitTrainingRequiredForVoiceProfileId:(id)a3 locale:(id)a4 completion:(id)a5;
- (void)isVoiceProfileUploadedToiCloudForLanguageCode:(id)a3 withCompletionBlock:(id)a4;
- (void)isVoiceTriggerRepromptRequiredWithCompletion:(id)a3;
- (void)markSATEnrollmentSuccessForVoiceProfile:(id)a3 completion:(id)a4;
- (void)migrateTDVoiceProfilesToTDTI;
- (void)notifyImplicitTrainingUtteranceAvailable:(id)a3 forVoiceProfileId:(id)a4 withRecordDeviceInfo:(id)a5 withRecordCtxt:(id)a6 withVoiceTriggerCtxt:(id)a7 withOtherCtxt:(id)a8 assetToUse:(id)a9 withCompletion:(id)a10;
- (void)notifyUserVoiceProfileDownloadReadyForUser:(id)a3 getData:(id)a4 completion:(id)a5;
- (void)notifyUserVoiceProfileUpdateReady;
- (void)notifyUserVoiceProfileUploadComplete;
- (void)notifyUserVoiceProfileUploadCompleteForSiriProfileId:(id)a3 withError:(id)a4;
- (void)pruneImplicitUtterancesOfProfile:(id)a3 withAsset:(id)a4;
- (void)setDelegate:(id)a3;
- (void)triggerInvalidSiriProfileCleanupFromPersonalDevicesForLanguage:(id)a3 appDomain:(id)a4;
- (void)triggerRetrainingVoiceProfile:(id)a3 withContext:(id)a4 withCompletion:(id)a5;
- (void)triggerVoiceProfileCleanupWithCompletion:(id)a3;
- (void)triggerVoiceProfileDownload;
- (void)triggerVoiceProfileMigrationWithCompletion:(id)a3;
- (void)uploadUserVoiceProfileForSiriProfileId:(id)a3 withUploadTrigger:(id)a4 completion:(id)a5;
- (void)voiceTriggerRepromptFinishedWithCompletion:(id)a3;
@end

@implementation SSRVoiceProfileManager

- (SSRVoiceProfileManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)getDonationIdsFromLanguageCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6714;
  v25 = __Block_byref_object_dispose__6715;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6714;
  v19 = __Block_byref_object_dispose__6715;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SSRVoiceProfileManager_getDonationIdsFromLanguageCode_error___block_invoke;
  block[3] = &unk_2785791B8;
  v8 = v6;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  dispatch_sync(queue, block);
  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __63__SSRVoiceProfileManager_getDonationIdsFromLanguageCode_error___block_invoke(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = +[SSRVoiceProfileStore sharedInstance];
  v3 = [v2 userVoiceProfilesForLocale:a1[4]];

  if (v3 && [v3 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = [v9 appDomain];
          v11 = [v10 isEqualToString:@"com.apple.siri"];

          if (v11)
          {
            v15 = [v9 getDonationIds];
            v16 = *(a1[6] + 8);
            v17 = *(v16 + 40);
            *(v16 + 40) = v15;

            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if (!*(*(a1[6] + 8) + 40))
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"voiceProfile with appDomain: %@ is not found", @"com.apple.siri"];
      v19 = MEMORY[0x277CCA9B8];
      v29 = @"reason";
      v30 = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v21 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v20];
      v22 = *(a1[5] + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:&unk_2839337E8];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SSRVoiceProfileManager_setDelegate___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)applyContentsToVoiceProfileStore:(id)a3
{
  v3 = a3;
  v4 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  [v4 applyContentsToVoiceProfileStorePrefs:v3];
}

- (id)getAllContentsOfVoiceProfileStore
{
  v2 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  v3 = [v2 getAllContentsOfVoiceProfileStorePrefs];

  return v3;
}

- (void)importVoiceProfile:(id)a3 appDomain:(id)a4 withSharedUserId:(id)a5 withPersonaId:(id)a6 withLocale:(id)a7 withAsset:(id)a8 trainWithPayload:(BOOL)a9 withCompletion:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __139__SSRVoiceProfileManager_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke;
  v26[3] = &unk_278579690;
  v22 = v21;
  v27 = v22;
  v23 = MEMORY[0x22AA71400](v26);
  if (v15 && v16 && v19)
  {
    v24 = +[SSRVoiceProfileManagerXPCClient sharedClient];
    LOBYTE(v25) = a9;
    [v24 importVoiceProfile:v15 appDomain:v16 withSharedUserId:v17 withPersonaId:v18 withLocale:v19 withAsset:v20 trainWithPayload:v25 withCompletion:v23];
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:113 userInfo:&unk_2839337C0];
    (v23)[2](v23, v24);
  }
}

void __139__SSRVoiceProfileManager_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    v5 = MEMORY[0x277D01970];
    v6 = *MEMORY[0x277D01970];
    if (v3 && os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[SSRVoiceProfileManager importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s ERR: %@", &v8, 0x16u);
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[SSRVoiceProfileManager importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
      _os_log_fault_impl(&dword_225E12000, v6, OS_LOG_TYPE_FAULT, "%s No completionBlock provided to importVoice Profile", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isLegacyEnrollmentMarkedWith:(id)a3 forLanguageCode:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v17 = *MEMORY[0x277D01970];
    v16 = 0;
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v23 = 136315138;
    v24 = "[SSRVoiceProfileManager _isLegacyEnrollmentMarkedWith:forLanguageCode:]";
    _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Language Code is nil!", &v23, 0xCu);
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v8 = [(SSRVoiceProfileManager *)self SSRSpeakerProfilesBasePath];
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  if (![v10 fileExistsAtPath:v9 isDirectory:0])
  {
    v18 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[SSRVoiceProfileManager _isLegacyEnrollmentMarkedWith:forLanguageCode:]";
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s SAT path doesnt exist - %@", &v23, 0x16u);
    }

    goto LABEL_17;
  }

  v11 = [v9 stringByAppendingPathComponent:v6];
  v12 = [v9 stringByAppendingPathComponent:@"td/audio"];
  if (![v10 fileExistsAtPath:v11 isDirectory:0])
  {
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v13 = [v10 contentsOfDirectoryAtPath:v12 error:0];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.wav'"];
  v15 = [v13 filteredArrayUsingPredicate:v14];

  if (!v15 || ![v15 count])
  {
    v19 = MEMORY[0x277D01970];
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = "[SSRVoiceProfileManager _isLegacyEnrollmentMarkedWith:forLanguageCode:]";
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s No Audio file exists when enrollment marker is set, remove marker", &v23, 0xCu);
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "[SSRVoiceProfileManager _isLegacyEnrollmentMarkedWith:forLanguageCode:]";
      v25 = 2114;
      v26 = v13;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s Contents of audio dir - %{public}@", &v23, 0x16u);
    }

    [v10 removeItemAtPath:v11 error:0];

    goto LABEL_16;
  }

  v16 = 1;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_CSSATUploadPathForSiriProfileId:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Caches/VoiceTrigger/SATUpload"];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingPathComponent:v3];

    v5 = v6;
  }

  v7 = +[SSRUtils baseDir];
  v8 = [v7 stringByAppendingPathComponent:v5];

  return v8;
}

- (id)_CSSATCachePathForAppDomain:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Caches/VoiceTrigger"];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingPathComponent:v3];

    v5 = v6;
  }

  v7 = +[SSRUtils baseDir];
  v8 = [v7 stringByAppendingPathComponent:v5];

  return v8;
}

- (id)_CSSATDownloadPath
{
  v2 = +[SSRUtils getVoiceEnrollmentDownloadBaseDir];
  v3 = [v2 stringByAppendingPathComponent:@"SATUpdate"];

  return v3;
}

- (void)deleteAllVoiceProfilesForAppDomain:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D01970];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[SSRVoiceProfileManager deleteAllVoiceProfilesForAppDomain:]";
    v40 = 2112;
    v41 = v3;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Deleting all voice profiles for app domain: %@", buf, 0x16u);
  }

  v6 = +[SSRVoiceProfileStore sharedInstance];
  v31 = v3;
  v7 = [v6 userVoiceProfilesForAppDomain:v3];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = [v6 deleteUserVoiceProfile:v12];
        if (v13)
        {
          v14 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            v15 = v14;
            v16 = [v12 profileID];
            *buf = 136315650;
            v39 = "[SSRVoiceProfileManager deleteAllVoiceProfilesForAppDomain:]";
            v40 = 2114;
            v41 = v16;
            v42 = 2114;
            v43 = v13;
            _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete Voice Profile %{public}@ with error %{public}@", buf, 0x20u);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v9);
  }

  v17 = [v30 SSRBasePathForAppDomain:v31];
  v18 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v18 fileExistsAtPath:v17 isDirectory:0])
  {
    v33 = 0;
    [v18 removeItemAtPath:v17 error:&v33];
    v19 = v33;
    if (v19)
    {
      v20 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v25 = v20;
        v26 = [v19 localizedDescription];
        *buf = 136315650;
        v39 = "[SSRVoiceProfileManager deleteAllVoiceProfilesForAppDomain:]";
        v40 = 2112;
        v41 = v17;
        v42 = 2112;
        v43 = v26;
        _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s Couldn't delete SAT directory at path %@ %@", buf, 0x20u);
      }
    }
  }

  v21 = [v30 _CSSATCachePath];
  if ([v18 fileExistsAtPath:v21 isDirectory:0])
  {
    v32 = 0;
    [v18 removeItemAtPath:v21 error:&v32];
    v22 = v32;
    if (v22)
    {
      v23 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v27 = v23;
        v28 = [v22 localizedDescription];
        *buf = 136315650;
        v39 = "[SSRVoiceProfileManager deleteAllVoiceProfilesForAppDomain:]";
        v40 = 2112;
        v41 = v21;
        v42 = 2112;
        v43 = v28;
        _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s Couldn't delete SAT cache directory at path %@ %@", buf, 0x20u);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)deleteUserVoiceProfile:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D01970];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[SSRVoiceProfileManager deleteUserVoiceProfile:]";
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Deleting voice profile with voiceProfileId: %@", &v15, 0x16u);
  }

  if (!v3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile passed is nil - Bailing out"];
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[SSRVoiceProfileManager deleteUserVoiceProfile:]";
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s %{public}@", &v15, 0x16u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v7 = [v12 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v10];
    goto LABEL_10;
  }

  v6 = +[SSRVoiceProfileStore sharedInstance];
  v7 = [v6 deleteUserVoiceProfile:v3];

  if (v7)
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = [v3 profileID];
      v15 = 136315650;
      v16 = "[SSRVoiceProfileManager deleteUserVoiceProfile:]";
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v7;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete Voice Profile %{public}@ with error %{public}@", &v15, 0x20u);
LABEL_10:
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isSATEnrollmentMigratedForSiriProfileId:(id)a3 forLanguageCode:(id)a4
{
  v4 = [SSRUtils getVoiceProfileForSiriProfileId:a3 forLanguageCode:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isMarkedSATMigrated];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSATEnrolledForSiriProfileId:(id)a3 forLanguageCode:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
  v9 = [v8 getVoiceProfileStoreVersion];

  if (v9 == -1)
  {
    v12 = [(SSRVoiceProfileManager *)self _isLegacyEnrollmentMarkedWith:@"enrollment_completed" forLanguageCode:v7];
  }

  else
  {
    v10 = [SSRUtils getVoiceProfileForSiriProfileId:v6 forLanguageCode:v7];
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[SSRVoiceProfileManager isSATEnrolledForSiriProfileId:forLanguageCode:]";
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Profiles already migrated, check for enrollment on %{public}@ on profile %{public}@", &v15, 0x20u);
    }

    if (v10)
    {
      v12 = [v10 isMarkedSATEnrolled];
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)markSATEnrollmentSuccessForVoiceProfile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke;
  block[3] = &unk_278579218;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__291;
  v25 = __Block_byref_object_dispose__292;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_293;
  v18[3] = &unk_278579050;
  v20 = *(a1 + 48);
  v19 = *(a1 + 32);
  v26 = MEMORY[0x22AA71400](v18);
  if (*(a1 + 32))
  {
    v2 = +[SSRVoiceProfileStore sharedInstance];
    if ([*(a1 + 32) markSATEnrollmentSuccess])
    {
      if (CSIsIOS() && (CSIsCommunalDevice() & 1) == 0)
      {
        v3 = *(a1 + 40);
        v4 = [*(a1 + 32) locale];
        [v3 _markVoiceProfileTrainingSyncForLanguage:v4];
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_294;
      v15[3] = &unk_2785790A0;
      v17 = &v21;
      v14 = *(a1 + 32);
      v16 = vextq_s8(v14, v14, 8uLL);
      [v2 addUserVoiceProfile:v14.i64[0] withContext:0 withCompletion:v15];

      v5 = 0;
    }

    else
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [*(a1 + 32) profileID];
      v10 = [v8 stringWithFormat:@"ERR: Failed in marking Enrollment as Successful for profile %@", v9];

      v11 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28 = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v5 = [v11 errorWithDomain:@"com.apple.speakerrecognition" code:723 userInfo:v12];

      (*(v22[5] + 16))();
    }
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile sent as nil - Bailing out"];
    v6 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = v2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v5 = [v6 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v7];

    (*(v22[5] + 16))();
  }

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_293(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277D01970];
  if (v5)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[SSRVoiceProfileManager markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s %{public}@", &v14, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *v6;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 profileID];
      v14 = 136315906;
      v15 = "[SSRVoiceProfileManager markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
      v16 = 2112;
      v17 = v12;
      v18 = 1024;
      v19 = a2;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Marking SAT enrollment success for voice profile %@ finished with result: %i and error: %@", &v14, 0x26u);

      v8 = *(a1 + 40);
    }

    (*(v8 + 16))(v8, a2, v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_294(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_2;
  block[3] = &unk_278579078;
  v13 = a2;
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __77__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  if (*(a1 + 56) == 1)
  {
    if (CSIsIOS())
    {
      v4 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[SSRVoiceProfileManager markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke_2";
        _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Triggering profile sync check", &v9, 0xCu);
      }

      v5 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v5 postNotificationName:@"com.apple.voicetrigger.voiceprofilesync" object:0];
    }

    v6 = +[SSRVoiceProfileStore sharedInstance];
    [v6 cleanupDuplicatesForProfile:*(a1 + 40)];
  }

  result = notify_post("com.apple.voicetrigger.PHSProfileModified");
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)markSATEnrollmentSuccessForVoiceProfile:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6714;
  v27 = __Block_byref_object_dispose__6715;
  v28 = 0;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = objc_alloc_init(MEMORY[0x277D01710]);
  [v6 enter];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile___block_invoke;
  v20[3] = &unk_278579028;
  v22 = &v23;
  v7 = v6;
  v21 = v7;
  [(SSRVoiceProfileManager *)self markSATEnrollmentSuccessForVoiceProfile:v4 completion:v20];
  v8 = [v7 waitWithTimeout:{dispatch_time(0, 10000000000)}];
  v9 = [MEMORY[0x277CBEAA8] date];
  [v9 timeIntervalSinceDate:v5];
  if (v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"markSATEnrollmentSuccessForVoiceProfile timedout after %fms", v10 * 1000.0];
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[SSRVoiceProfileManager markSATEnrollmentSuccessForVoiceProfile:]";
      v33 = 2112;
      v34 = v11;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v13 = MEMORY[0x277CCA9B8];
    v29 = @"reason";
    v30 = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.speakerrecognition" code:767 userInfo:v14];
    v16 = v24[5];
    v24[5] = v15;
  }

  v17 = v24[5];

  _Block_object_dispose(&v23, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __66__SSRVoiceProfileManager_markSATEnrollmentSuccessForVoiceProfile___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) leave];
}

- (void)triggerRetrainingVoiceProfile:(id)a3 withContext:(id)a4 withCompletion:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = +[SSRVoiceProfileStore sharedInstance];
    v11 = [v7 profileID];
    v12 = [v10 userVoiceProfileForVoiceProfileID:v11];

    if (v12)
    {
      [v10 retrainVoiceProfile:v12 withContext:v8 withCompletion:v9];
    }

    else
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [v7 profileID];
      v18 = [v16 stringWithFormat:@"ERR: Voice Profile not found for Id %@ - Bailing out", v17];

      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[SSRVoiceProfileManager triggerRetrainingVoiceProfile:withContext:withCompletion:]";
        v30 = 2114;
        v31 = v18;
        _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25 = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v21];
      v9[2](v9, v22);

      v12 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile sent as nil - Bailing out"];
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[SSRVoiceProfileManager triggerRetrainingVoiceProfile:withContext:withCompletion:]";
      v30 = 2114;
      v31 = v10;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27 = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v15 = [v14 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v12];
    v9[2](v9, v15);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)triggerVoiceProfileDownload
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];
}

- (void)pruneImplicitUtterancesOfProfile:(id)a3 withAsset:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_alloc_init(SSRVoiceProfilePruner);
  if (CSIsCommunalDevice())
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  [(SSRVoiceProfilePruner *)v8 pruneVoiceProfile:v6 forSpIdType:v7 withAsset:v5];
}

- (void)cleanupVoiceProfileModelFilesForLocale:(id)a3 withAssets:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  [v7 cleanupVoiceProfileModelFilesForLocale:v6 withAssets:v5];
}

- (void)cleanupVoiceProfileModelFilesForLocale:(id)a3 withAsset:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = v7;
  if (v6)
  {
    [v7 addObject:v6];
  }

  [(SSRVoiceProfileManager *)self cleanupVoiceProfileModelFilesForLocale:v9 withAssets:v8];
}

- (void)triggerVoiceProfileCleanupWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  [v4 cleanupVoiceProfileStore:v3];
}

- (BOOL)triggerVoiceProfileDuplicatesCleanup
{
  v2 = +[SSRVoiceProfileStore sharedInstance];
  v3 = [v2 cleanupDuplicatedProfiles];

  return v3;
}

- (void)triggerInvalidSiriProfileCleanupFromPersonalDevicesForLanguage:(id)a3 appDomain:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  [v7 cleanupInvalidSiriProfilesFromPersonalDevicesForLanguage:v6 appDomain:v5];
}

- (void)migrateTDVoiceProfilesToTDTI
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = +[SSRVoiceProfileStore sharedInstance];
  v3 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  v4 = [v2 userVoiceProfilesForAppDomain:@"com.apple.siri" forLocale:v3];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v11 copyTDAudioToTDTI];
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v11 voiceProfileBasePath];
          *buf = 136315394;
          v21 = "[SSRVoiceProfileManager migrateTDVoiceProfilesToTDTI]";
          v22 = 2112;
          v23 = v14;
          _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Triggering td profile migration for profile: %@", buf, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)triggerVoiceProfileMigrationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  [v4 migrateVoiceProfilesIfNeededWithCompletionBlock:v3];
}

- (void)voiceTriggerRepromptFinishedWithCompletion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SSRVoiceProfileManager voiceTriggerRepromptFinishedWithCompletion:]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Not-implemented", &v6, 0xCu);
  }

  v3[2](v3, 0);

  v5 = *MEMORY[0x277D85DE8];
}

- (id)voiceTriggerRepromptFinished
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SSRVoiceProfileManager voiceTriggerRepromptFinished]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Running VoiceTriggerRePromptFinised...", &v11, 0xCu);
  }

  v5 = self->_lastRepromptedDate;
  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[SSRVoiceProfileManager voiceTriggerRepromptFinished]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Storing VoiceTriggerRePromptFinished on date %@", &v11, 0x16u);
  }

  v7 = [MEMORY[0x277D01788] sharedPreferences];
  [v7 voiceTriggerRePromptFinishedWithDate:v5];

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SSRVoiceProfileManager voiceTriggerRepromptFinished]";
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Done VoiceTriggerRePromptFinised!", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)isVoiceTriggerRepromptRequiredWithCompletion:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequiredWithCompletion:]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s not-implemented. return false.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isVoiceTriggerRepromptRequired
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Checking if isVoiceTriggerRepromptRequired...", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D01788] sharedPreferences];
  v8 = [v7 forceRePromptVoiceTrigger];

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Checking if already reprompted...", buf, 0xCu);
  }

  v10 = [MEMORY[0x277D01788] sharedPreferences];
  v11 = [v10 dateWhenVoiceTriggerRePrompted];

  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    if (v8)
    {
      v13 = @"YES";
    }

    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Force re-prompt preference config value %@", buf, 0x16u);
    v12 = *v5;
  }

  v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    v18 = "%s Not RePrompted before";
    v19 = v12;
LABEL_17:
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_18:
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Setting up AFSettingsConnection...", buf, 0xCu);
    }

    v51 = objc_alloc_init(MEMORY[0x277CEF3A0]);
    v21 = [MEMORY[0x277CBEAA8] date];
    v22 = dispatch_semaphore_create(0);
    v23 = dispatch_time(0, 5000000000);
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v75 = __Block_byref_object_copy__6714;
    v76 = __Block_byref_object_dispose__6715;
    v77 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__6714;
    v62 = __Block_byref_object_dispose__6715;
    v63 = 0;
    v24 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v68 = 136315138;
      v69 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Fetching active account using AFSettingConnection...", v68, 0xCu);
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __56__SSRVoiceProfileManager_isVoiceTriggerRepromptRequired__block_invoke;
    v53[3] = &unk_278579000;
    v55 = buf;
    v56 = &v58;
    v57 = &v64;
    v25 = v22;
    v54 = v25;
    [v51 fetchActiveAccount:v53];
    v26 = COERCE_DOUBLE(dispatch_semaphore_wait(v25, v23));
    v27 = [MEMORY[0x277CBEAA8] date];
    v28 = *v5;
    if (v26 == 0.0)
    {
      v30 = v28;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        [v27 timeIntervalSinceDate:v21];
        *v68 = 136315394;
        v69 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
        v70 = 2050;
        v71 = v31 * 1000.0;
        _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s timeToRet(AFSettingsConnection:fetchActiveAccount:): %{public}fms", v68, 0x16u);
      }
    }

    else if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v68 = 136315650;
      v69 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      v70 = 2050;
      v71 = v26;
      v72 = 1026;
      LODWORD(v73) = 5000;
      _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Timedout waiting for AFSettingsConnection:fetchActiveAccount: %{public}ld, waitedFor: %{public}d, Returning false", v68, 0x1Cu);
    }

    v32 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v65 + 24))
      {
        *&v33 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v33 = COERCE_DOUBLE(@"NO");
      }

      *v68 = 136315394;
      v69 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      v70 = 2112;
      v71 = *&v33;
      _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s Result of isVoiceTriggerRepromptRequired is %@...", v68, 0x16u);
    }

    v34 = [MEMORY[0x277CCAC38] processInfo];
    [v34 systemUptime];
    v36 = v35;

    v37 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *v68 = 136315394;
      v69 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      v70 = 2050;
      v71 = (v36 - v4) * 1000.0;
      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s isVoiceTriggerRePrompt required check if re prompt is required took %{public}.3fms", v68, 0x16u);
    }

    v38 = [MEMORY[0x277D01788] sharedPreferences];
    v39 = [v38 forceSetRePromptRequired];

    if (CSIsInternalBuild() & v39)
    {
      v40 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v65 + 24))
        {
          *&v41 = COERCE_DOUBLE(@"YES");
        }

        else
        {
          *&v41 = COERCE_DOUBLE(@"NO");
        }

        *v68 = 136315394;
        v69 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
        v70 = 2112;
        v71 = *&v41;
        _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Forcing isRePromptRequired to YES overriding it's original value of: %@", v68, 0x16u);
      }

      *(v65 + 24) = v39;
    }

    else if ((v65[3] & 1) == 0)
    {
      v29 = 0;
LABEL_50:

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v64, 8);
      goto LABEL_51;
    }

    v42 = objc_alloc_init(MEMORY[0x277CCA968]);
    v43 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v42 setLocale:v43];

    [v42 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v44 = [MEMORY[0x277CBEAA8] now];
    v45 = [v42 stringFromDate:v44];

    v46 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      lastRepromptedDate = self->_lastRepromptedDate;
      *v68 = 136315650;
      v69 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
      v70 = 2112;
      v71 = *&lastRepromptedDate;
      v72 = 2112;
      v73 = v45;
      _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, "%s RePrompted. Updating _lastRepromptedDate from %@ to %@", v68, 0x20u);
    }

    objc_storeStrong(&self->_lastRepromptedDate, v45);
    v48 = [MEMORY[0x277D01900] sharedLogger];
    [v48 logRePromptFinishedWithSiriSpeechID:v59[5] withRePromptDate:self->_lastRepromptedDate withIsRePrompted:*(v65 + 24) withLocale:*(*&buf[8] + 40)];

    v29 = *(v65 + 24);
    goto LABEL_50;
  }

  if (v14)
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Already RePrompted on %@", buf, 0x16u);
  }

  v15 = CSIsInternalBuild() & v8;
  v16 = *v5;
  v17 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
  if (v15 == 1)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    v18 = "%s Force re-prompt enabled. Continuing with RePrompt..";
    v19 = v16;
    goto LABEL_17;
  }

  if (v17)
  {
    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]";
    _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s RePrompt is not required. Return false.", buf, 0xCu);
  }

  v29 = 0;
LABEL_51:

  v49 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

void __56__SSRVoiceProfileManager_isVoiceTriggerRepromptRequired__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v5 debugDescription];
    v20 = 136315394;
    v21 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]_block_invoke";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Active Assistant Account is %@", &v20, 0x16u);
  }

  v11 = [v5 speechIdentifier];
  v12 = [v5 localeIdentifier];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
  v15 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]_block_invoke";
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s speechIdentifier is %@", &v20, 0x16u);
  }

  v16 = +[VoiceTriggerRePromptUtil sharedInstance];
  v17 = [v16 isRePromptableWithAssistantId:v11];

  if (v17)
  {
    v18 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[SSRVoiceProfileManager isVoiceTriggerRepromptRequired]_block_invoke";
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s AssistantId required RePrompt", &v20, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getVoiceProfileAnalyticsForAppDomain:(id)a3 withLocale:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  v8 = [v7 userVoiceProfilesForAppDomain:v5 forLocale:v6];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = +[SSRAssetManager sharedManager];
    v12 = 3;
    v34 = v6;
    v13 = [v11 installedAssetOfType:3 forLanguage:v6];

    v14 = v13;
    if ((CSIsCommunalDevice() & 1) == 0)
    {
      if ((CSIsIOS() & 1) != 0 || CSIsAppleSiliconMac())
      {
        [v14 psrCombinationWeight];
        if (((v15 == 1.0) & [v14 useTDTIEnrollment]) != 0)
        {
          v12 = 3;
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 1;
      }
    }

    v33 = v7;
    v35 = v5;
    v32 = v14;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v9;
    v17 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = [MEMORY[0x277CBEB38] dictionary];
          v23 = [v21 profileID];
          [v22 setObject:v23 forKey:@"profileID"];

          v24 = MEMORY[0x277CCABB0];
          v25 = [v21 getExplicitEnrollmentUtterancesForType:v12];
          v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
          [v22 setObject:v26 forKey:@"numExplicitUtt"];

          v27 = MEMORY[0x277CCABB0];
          v28 = [v21 getImplicitEnrollmentUtterancesForType:v12];
          v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
          [v22 setObject:v29 forKey:@"numImplicitUtt"];

          [v10 addObject:v22];
        }

        v18 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v18);
    }

    v6 = v34;
    v5 = v35;
    v7 = v33;
  }

  else
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v43 = "[SSRVoiceProfileManager getVoiceProfileAnalyticsForAppDomain:withLocale:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s voiceProfileArray is nil!", buf, 0xCu);
    }

    v10 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)voiceProfileForId:(id)a3
{
  v3 = a3;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  v5 = [v4 userVoiceProfileForVoiceProfileID:v3];

  return v5;
}

- (id)provisionedVoiceProfilesForLocale:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SSRVoiceProfileStore sharedInstance];
  v5 = [v4 userVoiceProfilesForLocale:v3];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v5 && [v5 count])
  {
    v20 = v4;
    v21 = v3;
    v19 = [MEMORY[0x277D018F8] deviceProductType];
    v7 = [SSRUtils deviceCategoryForDeviceProductType:?];
    v8 = [v5 sortedArrayUsingComparator:&__block_literal_global_272];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[SSRVoiceProfileMetaContext alloc] initWithVoiceProfile:*(*(&v22 + 1) + 8 * i)];
          v14 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v7];
          [(SSRVoiceProfileMetaContext *)v13 setProductCategory:v14];

          [(SSRVoiceProfileMetaContext *)v13 setVersion:&unk_283933948];
          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    v15 = v6;

    v4 = v20;
    v3 = v21;
  }

  else
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[SSRVoiceProfileManager provisionedVoiceProfilesForLocale:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s voiceProfileArray is nil!", buf, 0xCu);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __60__SSRVoiceProfileManager_provisionedVoiceProfilesForLocale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateAdded];

  if (v6)
  {
    v7 = [v5 dateAdded];

    if (v7)
    {
      v8 = [v4 dateAdded];
      v9 = [v5 dateAdded];
      v10 = [v8 compare:v9];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)provisionedVoiceProfilesForAppDomain:(id)a3 withLocale:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  v8 = [v7 userVoiceProfilesForAppDomain:v5 forLocale:v6];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_6768];
  }

  else
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[SSRVoiceProfileManager provisionedVoiceProfilesForAppDomain:withLocale:]";
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s voiceProfileArray is nil for %{public}@ and %{public}@!", &v14, 0x20u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __74__SSRVoiceProfileManager_provisionedVoiceProfilesForAppDomain_withLocale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 dateAdded];

  if (v6)
  {
    v7 = [v5 dateAdded];

    if (v7)
    {
      v8 = [v4 dateAdded];
      v9 = [v5 dateAdded];
      v10 = [v8 compare:v9];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)_CSSATLegacyUploadPath
{
  v2 = +[SSRUtils getVoiceEnrollmentDownloadBaseDir];
  v3 = [v2 stringByAppendingPathComponent:@"SATLegacyUpload"];

  return v3;
}

- (BOOL)_isDirectory:(id)a3
{
  v7 = 0;
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  [v5 fileExistsAtPath:v4 isDirectory:&v7];

  return v7;
}

- (id)devicesWithVoiceProfileIniCloudForLanguage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D01970];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileManager devicesWithVoiceProfileIniCloudForLanguage:]";
    *&buf[12] = 2114;
    *&buf[14] = v3;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s \nlanguageCode: %{public}@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = objc_alloc_init(MEMORY[0x277CEF3A0]);
  v8 = dispatch_semaphore_create(0);
  v9 = dispatch_time(0, 5000000000);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__6714;
  v32 = __Block_byref_object_dispose__6715;
  v33 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__SSRVoiceProfileManager_devicesWithVoiceProfileIniCloudForLanguage___block_invoke;
  v20[3] = &unk_278578FA0;
  v10 = v3;
  v21 = v10;
  v23 = buf;
  v11 = v8;
  v22 = v11;
  [v7 getDevicesWithAvailablePHSAssetsForLanguage:v10 completion:v20];
  v12 = dispatch_semaphore_wait(v11, v9);
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = *v4;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 136315650;
      v25 = "[SSRVoiceProfileManager devicesWithVoiceProfileIniCloudForLanguage:]";
      v26 = 2050;
      v27 = *&v12;
      v28 = 1026;
      v29 = 5000;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Timedout waiting for AFSettingsConnection:getDevicesWithAvailablePHSAssetsForLanguage: %{public}ld, waitedFor: %{public}d, Returning nil", v24, 0x1Cu);
    }
  }

  else
  {
    v15 = v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [v13 timeIntervalSinceDate:v6];
      *v24 = 136315394;
      v25 = "[SSRVoiceProfileManager devicesWithVoiceProfileIniCloudForLanguage:]";
      v26 = 2050;
      v27 = v16 * 1000.0;
      _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s timeToRet(AFSettingsConnection:getDevicesWithAvailablePHSAssetsForLanguage:): %{public}fms", v24, 0x16u);
    }
  }

  v17 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __69__SSRVoiceProfileManager_devicesWithVoiceProfileIniCloudForLanguage___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[SSRVoiceProfileManager devicesWithVoiceProfileIniCloudForLanguage:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Devices with VoiceProfile in iCloud for language: %{public}@:%{public}@", &v10, 0x20u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

- (void)enableVoiceTriggerUponVoiceProfileSyncForLanguage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D01970];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[SSRVoiceProfileManager enableVoiceTriggerUponVoiceProfileSyncForLanguage:]";
      v17 = 2114;
      v18 = v3;
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Will Enable VoiceTrigger after VoiceProfile sync for language: %{public}@", buf, 0x16u);
    }

    _CSNotBackedupPreferencesSetValueForKey();
    if (CSIsInternalBuild())
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = _CSNotBackedupPreferencesValueForKey();
      v7 = v6;
      if (v6)
      {
        v8 = [v6 mutableCopy];

        v5 = v8;
      }

      v9 = [MEMORY[0x277D018F8] deviceBuildVersion];
      v13[1] = @"timestamp";
      v14[0] = v9;
      v10 = +[SSRUtils timeStampString];
      v14[1] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

      [v5 setObject:v11 forKeyedSubscript:@"EnableVTUponVoiceProfileSync"];
      _CSNotBackedupPreferencesSetValueForKey();
    }

    CSNotBackedupInternalPreferencesSynchronize();
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "[SSRVoiceProfileManager enableVoiceTriggerUponVoiceProfileSyncForLanguage:]";
    v17 = 2082;
    v18 = "[SSRVoiceProfileManager enableVoiceTriggerUponVoiceProfileSyncForLanguage:]";
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: %{public}s: Bailing out as language is nil!", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SSRVoiceProfileManager *)self createEnrollmentId];
  v6 = [MEMORY[0x277D018F8] deviceProductType];
  if (!v6)
  {
    v33 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_23:
      v38 = @"Unknown device";
      v39 = self;
      v40 = v5;
      v41 = v4;
LABEL_24:
      [(SSRVoiceProfileManager *)v39 emitMetricEnrollmentId:v40 isVoiceProfileiCloudSyncSuccess:0 failureReasonIfAny:v38 forLocale:v41];
      v30 = 0;
      goto LABEL_29;
    }

    *buf = 136315394;
    v54 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
    v55 = 2114;
    v56 = v4;
    v34 = "%s ERR: Unknown device. Returning false, language: %{public}@";
    v35 = v33;
    v36 = 22;
LABEL_34:
    _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
    goto LABEL_23;
  }

  v7 = [SSRUtils deviceCategoryForDeviceProductType:v6];
  if (!v7)
  {
    v37 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136315650;
    v54 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
    v55 = 2114;
    v56 = v6;
    v57 = 2114;
    v58 = v4;
    v34 = "%s ERR: Unknown device-category for device: %{public}@, languageCode: %{public}@";
    v35 = v37;
    v36 = 32;
    goto LABEL_34;
  }

  v8 = MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (!v4)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
      v55 = 2082;
      v56 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: %{public}s: Bailing out as language is nil!", buf, 0x16u);
    }

    v38 = @"Unknown language";
    v39 = self;
    v40 = v5;
    v41 = 0;
    goto LABEL_24;
  }

  v10 = v7;
  v45 = v5;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
    v12 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v10];
    *buf = 136315650;
    v54 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
    v55 = 2114;
    v56 = v6;
    v57 = 2114;
    v58 = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Searching for synced-VoiceProfile for CurrDevice: %{public}@{%{public}@}", buf, 0x20u);
  }

  v48 = v6;
  v44 = self;
  v46 = v4;
  [(SSRVoiceProfileManager *)self devicesWithVoiceProfileIniCloudForLanguage:v4];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = v52 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v63 count:16];
  v15 = 0x278577000uLL;
  if (v14)
  {
    v16 = v14;
    v17 = *v50;
    v47 = *v50;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        v20 = [*(v15 + 1160) deviceCategoryForDeviceProductType:v19];
        v21 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v8;
          v23 = *(v15 + 1160);
          v24 = v21;
          v25 = [v23 deviceCategoryStringRepresentationForCategoryType:v10];
          [*(v15 + 1160) deviceCategoryStringRepresentationForCategoryType:v20];
          v27 = v26 = v13;
          *buf = 136316162;
          v54 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
          v55 = 2114;
          v56 = v48;
          v57 = 2114;
          v58 = v25;
          v59 = 2114;
          v60 = v19;
          v61 = 2114;
          v62 = v27;
          _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s currDevice=[%{public}@ : {%{public}@}] ; syncedDevice=[%{public}@ : {%{public}@}]", buf, 0x34u);

          v13 = v26;
          v15 = 0x278577000;

          v8 = v22;
          v17 = v47;

          v21 = *v8;
        }

        v28 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20 == v10)
        {
          if (v28)
          {
            *buf = 136315138;
            v54 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
            _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MATCH", buf, 0xCu);
          }

          v30 = 1;
          v5 = v45;
          v4 = v46;
          [(SSRVoiceProfileManager *)v44 emitMetricEnrollmentId:v45 isVoiceProfileiCloudSyncSuccess:1 failureReasonIfAny:@"not-applicable forLocale:no-failure", v46];

          v6 = v48;
          goto LABEL_28;
        }

        if (v28)
        {
          *buf = 136315138;
          v54 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
          _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MIS-MATCH", buf, 0xCu);
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v5 = v45;
  v4 = v46;
  [(SSRVoiceProfileManager *)v44 emitMetricEnrollmentId:v45 isVoiceProfileiCloudSyncSuccess:0 failureReasonIfAny:@"Voice Profile Mismatch" forLocale:v46];
  v29 = *v8;
  v30 = 0;
  v6 = v48;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v29;
    v32 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v10];
    *buf = 136315650;
    v54 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:]";
    v55 = 2114;
    v56 = v48;
    v57 = 2114;
    v58 = v32;
    _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s CurrDevice: [%{public}@ : {%{public}@}] DOES NOT have VoiceProfile synced in iCloud", buf, 0x20u);

    v30 = 0;
  }

LABEL_28:

LABEL_29:
  v42 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)_createAndSetNewEnrollmentId
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];

  v5 = [MEMORY[0x277D01788] sharedPreferences];
  [v5 setEnrollmentIdForVoiceProfileiCloudMetrics:v4 on:v2];

  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SSRVoiceProfileManager _createAndSetNewEnrollmentId]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Returning enrollment ID %@...", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)createEnrollmentId
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D01970];
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SSRVoiceProfileManager createEnrollmentId]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Creating an enrollmentID...", &v22, 0xCu);
  }

  v5 = [MEMORY[0x277D01788] sharedPreferences];
  v6 = [v5 dateWhenEnrollmentIdForVoiceProfileiCloudMetricsWasCreated];

  v7 = [MEMORY[0x277D01788] sharedPreferences];
  v8 = [v7 enrollmentIdForVoiceProfileiCloudMetrics];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[SSRVoiceProfileManager createEnrollmentId]";
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s No enrollmentId exists, create new one", &v22, 0xCu);
    }

    v11 = [(SSRVoiceProfileManager *)self _createAndSetNewEnrollmentId];
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v13 setMonth:-6];
    v14 = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [v14 dateByAddingComponents:v13 toDate:v12 options:0];
    v16 = [v6 compare:v15];
    v17 = *v3;
    v18 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
    if (v16 == -1)
    {
      if (v18)
      {
        v22 = 136315394;
        v23 = "[SSRVoiceProfileManager createEnrollmentId]";
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s The date %@ is older than 6 months ago.", &v22, 0x16u);
      }

      v19 = [(SSRVoiceProfileManager *)self _createAndSetNewEnrollmentId];
    }

    else
    {
      if (v18)
      {
        v22 = 136315394;
        v23 = "[SSRVoiceProfileManager createEnrollmentId]";
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s The date %@ is within 6 months. Reusing enrollment ID", &v22, 0x16u);
        v17 = *v3;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315394;
        v23 = "[SSRVoiceProfileManager createEnrollmentId]";
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Returning enrollment ID %@...", &v22, 0x16u);
      }

      v19 = v8;
    }

    v11 = v19;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)isVoiceProfileUploadedToiCloudForLanguageCode:(id)a3 withCompletionBlock:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D018F8] deviceProductType];
  if (!v7)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Unknown product type. Returning false, language: %@", v5];
    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
      v47 = 2114;
      v48 = v11;
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v43 = @"reason";
    v44 = v11;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v44;
    v25 = &v43;
    goto LABEL_18;
  }

  v8 = [SSRUtils deviceCategoryForDeviceProductType:v7];
  if (!v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Unknown device-category for device: %@, languageCode: %@", v7, v5];
    v26 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
      v47 = 2114;
      v48 = v11;
      _os_log_error_impl(&dword_225E12000, v26, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v41 = @"reason";
    v42 = v11;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v42;
    v25 = &v41;
LABEL_18:
    v19 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
    v20 = [v22 errorWithDomain:@"com.apple.speakerrecognition" code:711 userInfo:v19];
    v6[2](v6, v20, 0);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [SSRUtils getVoiceProfileForSiriProfileId:0 forLanguageCode:v5];
  v11 = v10;
  if (!v10)
  {
LABEL_9:
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
      v47 = 2114;
      v48 = v5;
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Querying VoiceProfile upload state on %{public}@", buf, 0x16u);
    }

    v18 = objc_alloc_init(MEMORY[0x277CEF3A0]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __92__SSRVoiceProfileManager_isVoiceProfileUploadedToiCloudForLanguageCode_withCompletionBlock___block_invoke;
    v31[3] = &unk_278578F78;
    v32 = v18;
    v33 = 0;
    v36 = v6;
    v34 = v7;
    v37 = v9;
    v35 = v5;
    v38 = v11 != 0;
    v19 = v18;
    [v19 getDevicesWithAvailablePHSAssetsOnDeviceCheck:v31];

    v20 = v32;
    goto LABEL_19;
  }

  v12 = [v10 getExplicitEnrollmentUtterancesForType:1];
  v13 = [v12 count];

  v14 = [v11 getExplicitEnrollmentUtterancesForType:3];
  v15 = [v14 count];

  if ([v11 isMarkedSATEnrolled] && (v15 + v13) >= 3)
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
      v47 = 2114;
      v48 = v5;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Triggering VoiceProfile upload for %{public}@", buf, 0x16u);
    }

    notify_post("com.apple.voicetrigger.PHSProfileModified");
    goto LABEL_9;
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Improper VoiceProfile detected: %@, languageCode: %@", v7, v5];
  v28 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v46 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]";
    v47 = 2114;
    v48 = v19;
    _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  v29 = MEMORY[0x277CCA9B8];
  v39 = @"reason";
  v40 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v30 = [v29 errorWithDomain:@"com.apple.speakerrecognition" code:711 userInfo:v20];
  v6[2](v6, v30, 0);

LABEL_19:
  v27 = *MEMORY[0x277D85DE8];
}

void __92__SSRVoiceProfileManager_isVoiceProfileUploadedToiCloudForLanguageCode_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v5 = a3;
  v41 = *(a1 + 32);
  v6 = MEMORY[0x277D01970];
  v7 = *MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  if (!v5)
  {
    v10 = 0x278577000uLL;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 72);
      v13 = v7;
      v14 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v12, v41];
      *buf = 136315906;
      v59 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
      v60 = 2114;
      v61 = v11;
      v62 = 2114;
      v63 = v14;
      v64 = 2114;
      v65 = v42;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Looking VoiceProfile for CurrDevice: %{public}@{%{public}@} in devices %{public}@", buf, 0x2Au);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v15 = v42;
    v16 = [v15 countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v16)
    {
      v17 = v16;
      v43 = 0;
      v18 = *v55;
      v44 = *v55;
      v45 = v15;
      do
      {
        v19 = 0;
        v46 = v17;
        do
        {
          if (*v55 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v54 + 1) + 8 * v19);
          if ([v20 isEqualToString:{*(a1 + 56), v41}])
          {
            v21 = [v15 objectForKeyedSubscript:v20];
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            obj = v21;
            v49 = [obj countByEnumeratingWithState:&v50 objects:v68 count:16];
            if (v49)
            {
              v47 = v19;
              v22 = *v51;
              while (2)
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v51 != v22)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v24 = *(*(&v50 + 1) + 8 * i);
                  v25 = [*(v10 + 1160) deviceCategoryForDeviceProductType:v24];
                  v26 = *v6;
                  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = *(a1 + 48);
                    v28 = *(v10 + 1160);
                    v29 = v10;
                    v30 = a1;
                    v31 = *(a1 + 72);
                    v32 = v26;
                    v33 = [v28 deviceCategoryStringRepresentationForCategoryType:v31];
                    v34 = [*(v29 + 1160) deviceCategoryStringRepresentationForCategoryType:v25];
                    *buf = 136316162;
                    v59 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
                    v60 = 2114;
                    v61 = v27;
                    v62 = 2114;
                    v63 = v33;
                    v64 = 2114;
                    v65 = v24;
                    v66 = 2114;
                    v67 = v34;
                    _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s currDevice=[%{public}@ : {%{public}@}] ; syncedDevice=[%{public}@ : {%{public}@}]", buf, 0x34u);

                    a1 = v30;
                    v10 = v29;

                    v6 = MEMORY[0x277D01970];
                    v26 = *v6;
                  }

                  v35 = *(a1 + 72);
                  v36 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                  if (v25 == v35)
                  {
                    if (v36)
                    {
                      *buf = 136315138;
                      v59 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
                      _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MATCH", buf, 0xCu);
                    }

                    v43 = 1;
                    goto LABEL_29;
                  }

                  if (v36)
                  {
                    *buf = 136315138;
                    v59 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
                    _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MIS-MATCH", buf, 0xCu);
                  }
                }

                v49 = [obj countByEnumeratingWithState:&v50 objects:v68 count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }

LABEL_29:
              v18 = v44;
              v15 = v45;
              v17 = v46;
              v19 = v47;
            }
          }

          ++v19;
        }

        while (v19 != v17);
        v17 = [v15 countByEnumeratingWithState:&v54 objects:v69 count:16];
      }

      while (v17);

      if (v43)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    if (*(a1 + 80) == 1)
    {
      v37 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1 + 56);
        *buf = 136315394;
        v59 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
        v60 = 2114;
        v61 = v38;
        _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile available locally for %{public}@, not uploaded yet", buf, 0x16u);
      }
    }

LABEL_39:
    (*(*(a1 + 64) + 16))();
    v9 = 0;
    goto LABEL_40;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v40 = *(a1 + 40);
    *buf = 136315394;
    v59 = "[SSRVoiceProfileManager isVoiceProfileUploadedToiCloudForLanguageCode:withCompletionBlock:]_block_invoke";
    v60 = 2114;
    v61 = v40;
    _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: Fetching cached devices resulted in error %{public}@", buf, 0x16u);
  }

  v9 = v5;
  (*(*(a1 + 64) + 16))(*(a1 + 64));
LABEL_40:

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasVoiceProfileIniCloudForLanguageCode:(id)a3 withBackupMetaBlob:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D018F8] deviceProductType];
  v8 = v7;
  if (!v6)
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v67 = 2114;
      v68 = v5;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_INFO, "%s metaBlob is nil. Returning false, language: %{public}@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (!v7)
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v67 = 2114;
      v68 = v5;
      v18 = "%s ERR: Unknown device. Returning false, language: %{public}@";
LABEL_17:
      v20 = v17;
      v21 = 22;
      goto LABEL_18;
    }

LABEL_19:
    v12 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v9 = [SSRUtils deviceCategoryForDeviceProductType:v7];
  if (!v9)
  {
    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v67 = 2114;
      v68 = v8;
      v69 = 2114;
      v70 = v5;
      v18 = "%s ERR: Unknown device-category for device: %{public}@, languageCode: %{public}@";
      v20 = v19;
      v21 = 32;
LABEL_18:
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, v18, buf, v21);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (!v5)
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v67 = 2082;
      v68 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v18 = "%s ERR: %{public}s: Bailing out as language is nil!";
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  v10 = v9;
  v64 = 0;
  v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v64];
  v12 = v64;
  v13 = MEMORY[0x277D01970];
  v14 = *MEMORY[0x277D01970];
  if (v12)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v67 = 2114;
      v68 = v12;
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: Failed to deserialize metaBlob with error %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v14;
      v25 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v10];
      *buf = 136315906;
      v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v67 = 2114;
      v68 = v8;
      v69 = 2114;
      v70 = v25;
      v71 = 2114;
      v72 = v11;
      _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Looking VoiceProfile for CurrDevice: %{public}@{%{public}@} in metablob %{public}@", buf, 0x2Au);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v26 = v11;
    v52 = [v26 countByEnumeratingWithState:&v60 objects:v76 count:16];
    if (v52)
    {
      v53 = *v61;
      v50 = v6;
      v51 = v5;
      v54 = v8;
      v49 = v26;
      v47 = v11;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v61 != v53)
          {
            objc_enumerationMutation(v26);
          }

          v28 = *(*(&v60 + 1) + 8 * i);
          if ([v28 isEqualToString:{v5, v47}])
          {
            v48 = i;
            v29 = [v26 objectForKeyedSubscript:v28];
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            obj = v29;
            v30 = [obj countByEnumeratingWithState:&v56 objects:v75 count:16];
            v31 = 0x278577000uLL;
            if (v30)
            {
              v32 = v30;
              v33 = *v57;
              while (2)
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v57 != v33)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v35 = *(*(&v56 + 1) + 8 * j);
                  v36 = [*(v31 + 1160) deviceCategoryForDeviceProductType:v35];
                  v37 = *v13;
                  if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
                  {
                    v38 = v13;
                    v39 = *(v31 + 1160);
                    v40 = v37;
                    v41 = [v39 deviceCategoryStringRepresentationForCategoryType:v10];
                    v42 = [*(v31 + 1160) deviceCategoryStringRepresentationForCategoryType:v36];
                    *buf = 136316162;
                    v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
                    v67 = 2114;
                    v68 = v54;
                    v69 = 2114;
                    v70 = v41;
                    v71 = 2114;
                    v72 = v35;
                    v73 = 2114;
                    v74 = v42;
                    _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s currDevice=[%{public}@ : {%{public}@}] ; syncedDevice=[%{public}@ : {%{public}@}]", buf, 0x34u);

                    v31 = 0x278577000;
                    v13 = v38;

                    v37 = *v38;
                  }

                  v43 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
                  if (v36 == v10)
                  {
                    if (v43)
                    {
                      *buf = 136315138;
                      v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
                      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MATCH", buf, 0xCu);
                    }

                    v15 = 1;
                    v6 = v50;
                    v5 = v51;
                    v8 = v54;
                    v12 = 0;
                    v11 = v47;
                    goto LABEL_49;
                  }

                  if (v43)
                  {
                    *buf = 136315138;
                    v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
                    _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile MIS-MATCH", buf, 0xCu);
                  }
                }

                v32 = [obj countByEnumeratingWithState:&v56 objects:v75 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }
            }

            v6 = v50;
            v5 = v51;
            v8 = v54;
            v26 = v49;
            v12 = 0;
            i = v48;
          }
        }

        v52 = [v26 countByEnumeratingWithState:&v60 objects:v76 count:16];
        v11 = v47;
      }

      while (v52);
    }

    v44 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44;
      v46 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v10];
      *buf = 136315650;
      v66 = "[SSRVoiceProfileManager hasVoiceProfileIniCloudForLanguageCode:withBackupMetaBlob:]";
      v67 = 2114;
      v68 = v8;
      v69 = 2114;
      v70 = v46;
      _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s CurrDevice: [%{public}@ : {%{public}@}] DOES NOT have VoiceProfile synced in iCloud", buf, 0x20u);
    }
  }

  v15 = 0;
LABEL_49:

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)getCachedVoiceProfileAvailabilityMetaBlob
{
  v41 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__6714;
  v33 = __Block_byref_object_dispose__6715;
  v34 = 0;
  v2 = [MEMORY[0x277D018F8] deviceProductType];
  if (!v2)
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]";
      v5 = "%s ERR: Unknown device - returning nil";
      v6 = v8;
      v7 = 12;
      goto LABEL_8;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_15;
  }

  v3 = [SSRUtils deviceCategoryForDeviceProductType:v2];
  if (v3 == 1)
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]";
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s NonAOP device-category - returning nil", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (!v3)
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]";
      v37 = 2114;
      v38 = v2;
      v5 = "%s ERR: Unknown device-category for device: %{public}@";
      v6 = v4;
      v7 = 22;
LABEL_8:
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = objc_alloc_init(MEMORY[0x277CEF3A0]);
  v12 = dispatch_time(0, 100000000);
  v13 = dispatch_semaphore_create(0);
  v14 = [MEMORY[0x277CBEAA8] date];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __67__SSRVoiceProfileManager_getCachedVoiceProfileAvailabilityMetaBlob__block_invoke;
  v26 = &unk_278578F50;
  v15 = v13;
  v27 = v15;
  v28 = &v29;
  [v11 getDevicesWithAvailablePHSAssetsOnDeviceCheck:&v23];
  v16 = dispatch_semaphore_wait(v15, v12);
  v17 = [MEMORY[0x277CBEAA8] date];
  [v17 timeIntervalSinceDate:v14];
  v19 = v18;
  v20 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]";
    v37 = 2048;
    v38 = v16;
    v39 = 2048;
    v40 = v19 * 1000.0;
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s CachedVoiceProfileFetch: Done Waiting with timedOut=%ld, waitTimeMs: %fms", buf, 0x20u);
  }

  v10 = v30[5];

LABEL_15:
  _Block_object_dispose(&v29, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

void __67__SSRVoiceProfileManager_getCachedVoiceProfileAvailabilityMetaBlob__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
      v37 = 2114;
      v38 = v6;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: Fetching cached devices resulted in error %{public}@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  if (!v5)
  {
    v26 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
      _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Devices with voice profile is nil!", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v28 = a1;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29 = v5;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    v13 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [SSRUtils getVoiceProfileForSiriProfileId:0 forLanguageCode:v15];
        if ([v16 isMarkedSATEnrolled])
        {
          v17 = [v9 objectForKeyedSubscript:v15];
          [v8 setObject:v17 forKeyedSubscript:v15];
        }

        else
        {
          v18 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
            v37 = 2114;
            v38 = v15;
            _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Skipping %{public}@ not locally present", buf, 0x16u);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v11);
  }

  a1 = v28;
  v6 = 0;
  if (!v8 || ![v8 count])
  {
LABEL_23:

    v5 = v29;
LABEL_26:
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_27;
  }

  v19 = MEMORY[0x277CCAAA0];
  v20 = [v8 copy];
  v30 = 0;
  v21 = [v19 dataWithJSONObject:v20 options:0 error:&v30];
  v22 = v30;

  v23 = *MEMORY[0x277D01970];
  if (v21 && !v22)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
      v37 = 2114;
      v38 = v9;
      _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Cached devices with VoiceProfile in iCloud: %{public}@", buf, 0x16u);
    }

    v24 = *(*(v28 + 40) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v21;

    goto LABEL_23;
  }

  v5 = v29;
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v36 = "[SSRVoiceProfileManager getCachedVoiceProfileAvailabilityMetaBlob]_block_invoke";
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: error creating profilesJsonData: %@, err: %@", buf, 0x20u);
  }

  dispatch_semaphore_signal(*(v28 + 32));

LABEL_27:
  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isMarkedForVoiceProfileTrainingSyncForLanguage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = _CSNotBackedupPreferencesValueForKey();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = "[SSRVoiceProfileManager _isMarkedForVoiceProfileTrainingSyncForLanguage:]";
      v12 = 2114;
      v13 = v4;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s VoiceProfile training sync language: %{public}@, VoiceProfile language: %{public}@", &v10, 0x20u);
    }

    if ([v3 isEqualToString:v4])
    {
      _CSNotBackedupPreferencesSetValueForKey();
      CSNotBackedupInternalPreferencesSynchronize();
      v6 = 1;
    }

    else
    {
LABEL_7:
      v6 = 0;
    }
  }

  else
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SSRVoiceProfileManager _isMarkedForVoiceProfileTrainingSyncForLanguage:]";
      v12 = 2082;
      v13 = "[SSRVoiceProfileManager _isMarkedForVoiceProfileTrainingSyncForLanguage:]";
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: %{public}s: Bailing out as language is nil!", &v10, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_markVoiceProfileTrainingSyncForLanguage:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D01970];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[SSRVoiceProfileManager _markVoiceProfileTrainingSyncForLanguage:]";
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting VoiceProfile Training Sync for language: %{public}@", &v6, 0x16u);
    }

    _CSNotBackedupPreferencesSetValueForKey();
    CSNotBackedupInternalPreferencesSynchronize();
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SSRVoiceProfileManager _markVoiceProfileTrainingSyncForLanguage:]";
    v8 = 2082;
    v9 = "[SSRVoiceProfileManager _markVoiceProfileTrainingSyncForLanguage:]";
    _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: %{public}s: Bailing out as language is nil!", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_prepareVoiceProfileWithSiriProfileId:(id)a3 withUploadBlock:(id)a4
{
  v95[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v70 = a4;
  v72 = self;
  v7 = [(SSRVoiceProfileManager *)self _CSSATUploadPathForSiriProfileId:v6];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v8 fileExistsAtPath:v7])
  {
    v78 = 0;
    v9 = [v8 removeItemAtPath:v7 error:&v78];
    v10 = v78;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [v10 localizedDescription];
      v14 = [v12 stringWithFormat:@"Cannot delete existing SATUpload Diretory : %@", v13];

      v15 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
        v85 = 2114;
        v86 = v14;
        _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      v16 = MEMORY[0x277CCA9B8];
      v94 = @"reason";
      v95[0] = v14;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
      v18 = v16;
      v19 = 708;
LABEL_37:
      v46 = [v18 errorWithDomain:@"com.apple.speakerrecognition" code:v19 userInfo:v17];
      goto LABEL_44;
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;
  v77 = v11;
  v21 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v77];
  v11 = v77;

  if ((v21 & 1) == 0)
  {
    v47 = MEMORY[0x277CCACA8];
    v48 = [v11 localizedDescription];
    v14 = [v47 stringWithFormat:@"Cannot create SAT Upload Directory : %@", v48];

    v49 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
      v85 = 2114;
      v86 = v14;
      _os_log_error_impl(&dword_225E12000, v49, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v50 = MEMORY[0x277CCA9B8];
    v92 = @"reason";
    v93 = v14;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    v18 = v50;
    v19 = 709;
    goto LABEL_37;
  }

  [(SSRVoiceProfileManager *)v72 _getVoiceProfilePathsToBeUploadedForSiriProfileId:v6];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v22 = v76 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v73 objects:v91 count:16];
  if (v23)
  {
    v24 = v23;
    v66 = v8;
    v67 = v6;
    v71 = *v74;
    v68 = v22;
    v69 = v7;
    while (2)
    {
      v25 = 0;
      v26 = v11;
      do
      {
        if (*v74 != v71)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v73 + 1) + 8 * v25);
        v28 = [v22 objectForKeyedSubscript:v27];
        v29 = [v28 languageCode];
        v30 = [v7 stringByAppendingPathComponent:v29];

        v11 = [(SSRVoiceProfileManager *)v72 _copyVoiceProfileAtPath:v27 toPath:v30];
        v31 = *MEMORY[0x277D01970];
        v32 = *MEMORY[0x277D01970];
        if (v11)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
            v85 = 2112;
            v86 = v27;
            v87 = 2112;
            v88 = v30;
            v89 = 2114;
            v90 = v11;
            _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s Cannot copy voice profile from %@ to %@ with error %{public}@", buf, 0x2Au);
          }

          v33 = [SSRUtils removeItemAtPath:v30];
        }

        else
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
            v85 = 2112;
            v86 = v27;
            _os_log_impl(&dword_225E12000, v31, OS_LOG_TYPE_DEFAULT, "%s Triggering upload of voice profile %@", buf, 0x16u);
          }

          v34 = v70[2](v70, v28, v30);
          if (v34)
          {
            v35 = v34;
            v51 = MEMORY[0x277CCACA8];
            v52 = [v28 languageCode];
            v53 = [v35 localizedDescription];
            v36 = [v51 stringWithFormat:@"Failed to upload %@ with error %@ - Bailing out", v52, v53];

            v54 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
              v85 = 2114;
              v86 = v36;
              _os_log_error_impl(&dword_225E12000, v54, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
            }

            v55 = MEMORY[0x277CCA9B8];
            v81 = @"reason";
            v82 = v36;
            v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
            v46 = [v55 errorWithDomain:@"com.apple.speakerrecognition" code:717 userInfo:v56];
            goto LABEL_41;
          }

          v35 = [v27 stringByAppendingPathComponent:@"enrollment_version.json"];
          v36 = [SSRUtils getVoiceProfileIdentityFromVersionFilePath:v35];
          v37 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            v39 = [v28 productCategory];
            *buf = 136315906;
            v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
            v85 = 2114;
            v86 = v36;
            v87 = 2112;
            v88 = v30;
            v89 = 2114;
            v90 = v39;
            _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, "%s Upload of voice profile with identifier %{public}@ at %@ with category %{public}@ completed successfully", buf, 0x2Au);
          }

          if (CSIsIOS())
          {
            if ((CSIsCommunalDevice() & 1) == 0)
            {
              v40 = [v28 languageCode];
              v41 = [(SSRVoiceProfileManager *)v72 _isMarkedForVoiceProfileTrainingSyncForLanguage:v40];

              if (v41)
              {
                v42 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:5];
                [v28 setProductCategory:v42];

                v43 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
                  v85 = 2112;
                  v86 = v27;
                  _os_log_impl(&dword_225E12000, v43, OS_LOG_TYPE_DEFAULT, "%s Triggering upload of explicit voice profile %@", buf, 0x16u);
                }

                v44 = v70[2](v70, v28, v30);
                if (v44)
                {
                  v56 = v44;
                  v59 = MEMORY[0x277CCACA8];
                  v60 = [v28 languageCode];
                  v61 = [v56 localizedDescription];
                  v62 = [v59 stringWithFormat:@"Failed to upload %@ with error %@ - Bailing out", v60, v61];

                  v63 = *MEMORY[0x277D01970];
                  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
                    v85 = 2114;
                    v86 = v62;
                    _os_log_error_impl(&dword_225E12000, v63, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
                  }

                  v64 = MEMORY[0x277CCA9B8];
                  v79 = @"reason";
                  v80 = v62;
                  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
                  v46 = [v64 errorWithDomain:@"com.apple.speakerrecognition" code:717 userInfo:v65];

LABEL_41:
                  v11 = 0;
                  v17 = v68;
                  v7 = v69;
                  goto LABEL_42;
                }

                v45 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v84 = "[SSRVoiceProfileManager _prepareVoiceProfileWithSiriProfileId:withUploadBlock:]";
                  v85 = 2112;
                  v86 = v30;
                  _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s Upload of explicit voice profile at %@ completed successfully", buf, 0x16u);
                }
              }
            }
          }

          v22 = v68;
          v7 = v69;
        }

        ++v25;
        v26 = v11;
      }

      while (v24 != v25);
      v24 = [v22 countByEnumeratingWithState:&v73 objects:v91 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }

    v17 = v22;
    v46 = 0;
LABEL_42:
    v14 = v17;
    v6 = v67;
    v8 = v66;
  }

  else
  {
    v17 = v22;
    v46 = 0;
    v14 = v17;
  }

LABEL_44:

  v57 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)_copyVoiceProfileAtPath:(id)a3 toPath:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v54 = a4;
  v50 = v5;
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v7 = [SSRUtils getContentsOfDirectory:v6];

  v51 = [MEMORY[0x277CCAA00] defaultManager];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__6714;
  v78 = __Block_byref_object_dispose__6715;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v62 objects:v90 count:16];
  if (v8)
  {
    v9 = *v63;
    do
    {
      v10 = 0;
      do
      {
        if (*v63 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * v10);
        v12 = [v11 lastPathComponent];
        v13 = [v11 path];
        v14 = [v13 lastPathComponent];
        v15 = [v54 stringByAppendingPathComponent:v14];

        v16 = [SSRUtils stringForCSSpIdType:1];
        if ([v12 isEqualToString:v16])
        {

LABEL_9:
          v19 = [v11 path];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __57__SSRVoiceProfileManager__copyVoiceProfileAtPath_toPath___block_invoke;
          v57[3] = &unk_278578F20;
          v59 = &v74;
          v20 = v12;
          v58 = v20;
          v60 = &v70;
          v61 = &v66;
          [(SSRVoiceProfileManager *)self _copyExplicitEnrollmentFilesFromPath:v19 toPath:v15 withCompletion:v57];

          if (v75[5])
          {
            v34 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v46 = [v11 path];
              v47 = v75[5];
              *buf = 136315906;
              v81 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
              v82 = 2114;
              *v83 = v46;
              *&v83[8] = 2114;
              *v84 = v15;
              *&v84[8] = 2114;
              v85[0] = v47;
              _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s ERR: Failed to copy from %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
            }

            v33 = v75[5];
            v21 = v58;
            v12 = v20;
LABEL_38:

            goto LABEL_39;
          }

          v21 = v58;
LABEL_11:

          goto LABEL_12;
        }

        v17 = [SSRUtils stringForCSSpIdType:3];
        v18 = [v12 isEqualToString:v17];

        if (v18)
        {
          goto LABEL_9;
        }

        if (([v12 isEqualToString:@"meta_version.json"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"enrollment_version.json"))
        {
          v21 = [v15 stringByDeletingLastPathComponent];
          v22 = (v75 + 5);
          v56 = v75[5];
          v23 = [v51 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:&v56];
          objc_storeStrong(v22, v56);
          if ((v23 & 1) == 0)
          {
            v43 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              v49 = v75[5];
              *buf = 136315650;
              v81 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
              v82 = 2114;
              *v83 = v21;
              *&v83[8] = 2114;
              *v84 = v49;
              _os_log_error_impl(&dword_225E12000, v43, OS_LOG_TYPE_ERROR, "%s Cannot create %{public}@ with error %{public}@ - Skipping language", buf, 0x20u);
            }

            v33 = v75[5];
            goto LABEL_38;
          }

          v24 = (v75 + 5);
          v55 = v75[5];
          v25 = [v51 copyItemAtPath:v13 toPath:v15 error:&v55];
          objc_storeStrong(v24, v55);
          v26 = v75;
          if (!v25 || v75[5])
          {
            v37 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              v48 = v26[5];
              *buf = 136315906;
              v81 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
              v82 = 2114;
              *v83 = v13;
              *&v83[8] = 2114;
              *v84 = v15;
              *&v84[8] = 2114;
              v85[0] = v48;
              _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s ERR: Cannot copy file %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
              v26 = v75;
            }

            v38 = MEMORY[0x277CCACA8];
            v39 = [v26[5] localizedDescription];
            v40 = [v38 stringWithFormat:@"Failed to copy to SATUpload Diretory : %@", v39];

            v41 = MEMORY[0x277CCA9B8];
            v88 = @"reason";
            v89 = v40;
            v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            v33 = [v41 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v42];

            goto LABEL_38;
          }

          goto LABEL_11;
        }

LABEL_12:

        ++v10;
      }

      while (v8 != v10);
      v27 = [obj countByEnumeratingWithState:&v62 objects:v90 count:16];
      v8 = v27;
    }

    while (v27);
  }

  v28 = v71[3];
  if (v28 > 2 || v67[3] > 2)
  {
    v35 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v36 = v67[3];
      *buf = 136316162;
      v81 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
      v82 = 1026;
      *v83 = v28;
      *&v83[4] = 1026;
      *&v83[6] = v36;
      *v84 = 2112;
      *&v84[2] = v50;
      LOWORD(v85[0]) = 2112;
      *(v85 + 2) = v54;
      _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Successfully copied {%{public}d,%{public}d} utterances from %@ to %@", buf, 0x2Cu);
    }

    v33 = 0;
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Number of training utterances copied from %@ to %@ is too less %ld", v50, v54, v28];
    v30 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v81 = "[SSRVoiceProfileManager _copyVoiceProfileAtPath:toPath:]";
      v82 = 2114;
      *v83 = v29;
      _os_log_error_impl(&dword_225E12000, v30, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v31 = MEMORY[0x277CCA9B8];
    v86 = @"reason";
    v87 = v29;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v33 = [v31 errorWithDomain:@"com.apple.speakerrecognition" code:733 userInfo:v32];
  }

LABEL_39:
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  v44 = *MEMORY[0x277D85DE8];
  return v33;
}

void __57__SSRVoiceProfileManager__copyVoiceProfileAtPath_toPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = *(a1 + 32);
  v7 = [SSRUtils stringForCSSpIdType:1];
  LODWORD(v6) = [v6 isEqualToString:v7];

  v8 = 56;
  if (v6)
  {
    v8 = 48;
  }

  *(*(*(a1 + v8) + 8) + 24) = a3;
}

- (void)_copyExplicitEnrollmentFilesFromPath:(id)a3 toPath:(id)a4 withCompletion:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [MEMORY[0x277CCAA00] defaultManager];
  v49 = v59 = 0;
  v51 = v9;
  LOBYTE(a5) = [v49 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v59];
  v53 = v59;
  if (a5)
  {
    v46 = v10;
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v11 enumeratorAtPath:v8];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v55 objects:v70 count:16];
    if (v14)
    {
      v15 = v14;
      v52 = 0;
      v16 = *v56;
      v47 = v13;
      v48 = v8;
LABEL_4:
      v17 = 0;
      v50 = v15;
      while (1)
      {
        if (*v56 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v55 + 1) + 8 * v17);
        v19 = [v8 stringByAppendingPathComponent:v18];
        v20 = [(SSRVoiceProfileManager *)self _isDirectory:v19];

        if (v20)
        {
          goto LABEL_23;
        }

        v21 = v16;
        v22 = self;
        v23 = [v18 pathExtension];
        if ([v18 containsString:@"audiocache"])
        {
          v24 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v63 = "[SSRVoiceProfileManager _copyExplicitEnrollmentFilesFromPath:toPath:withCompletion:]";
            v64 = 2112;
            v65 = v18;
            _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Skipping audiocache file %@", buf, 0x16u);
          }

          goto LABEL_22;
        }

        if (([v23 isEqualToString:@"wav"] & 1) != 0 || objc_msgSend(v23, "isEqualToString:", @"json"))
        {
          break;
        }

LABEL_22:

        self = v22;
        v16 = v21;
LABEL_23:
        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v55 objects:v70 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_33;
        }
      }

      v25 = v13;
      v26 = [v8 stringByAppendingPathComponent:v18];
      v27 = [v51 stringByAppendingPathComponent:v18];
      v28 = [v18 lastPathComponent];
      v29 = [v28 isEqualToString:@"enrollment_version.json"];

      if ((v29 & 1) == 0)
      {
        v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:v26];
        v31 = [SSRVoiceProfileMetadataManager getUtteranceEnrollmentType:v30];

        if (v31 && ([v31 isEqualToString:@"implicit"] & 1) != 0)
        {

          v13 = v25;
          v8 = v48;
LABEL_21:
          v15 = v50;
          goto LABEL_22;
        }
      }

      v32 = [v23 isEqualToString:@"wav"];
      v33 = [v27 stringByDeletingLastPathComponent];
      v34 = [SSRUtils createDirectoryIfDoesNotExist:v33];

      v54 = 0;
      LODWORD(v33) = [v49 copyItemAtPath:v26 toPath:v27 error:&v54];
      v35 = v54;
      if (!v33 || v35)
      {
        v53 = v35;
        v38 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v63 = "[SSRVoiceProfileManager _copyExplicitEnrollmentFilesFromPath:toPath:withCompletion:]";
          v64 = 2114;
          v65 = v26;
          v66 = 2114;
          v67 = v27;
          v68 = 2114;
          v69 = v53;
          _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s Cannot copy file %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
        }

        v39 = MEMORY[0x277CCACA8];
        v40 = [v53 localizedDescription];
        v41 = [v39 stringWithFormat:@"Failed to copy to SATUpload Diretory : %@", v40];

        v42 = MEMORY[0x277CCA9B8];
        v60 = @"reason";
        v61 = v41;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v44 = [v42 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v43];
        v10 = v46;
        v46[2](v46, v44, 0);

        v13 = v47;
        v8 = v48;
        goto LABEL_34;
      }

      v52 += v32;

      v53 = 0;
      v13 = v47;
      v8 = v48;
      goto LABEL_21;
    }

    v52 = 0;
LABEL_33:

    v10 = v46;
    v46[2](v46, 0, v52);
LABEL_34:

    v37 = v53;
  }

  else
  {
    v36 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v63 = "[SSRVoiceProfileManager _copyExplicitEnrollmentFilesFromPath:toPath:withCompletion:]";
      v64 = 2114;
      v65 = v9;
      v66 = 2114;
      v67 = v53;
      _os_log_error_impl(&dword_225E12000, v36, OS_LOG_TYPE_ERROR, "%s Cannot create %{public}@ with error %{public}@ - Skipping language", buf, 0x20u);
    }

    v37 = v53;
    v10[2](v10, v53, 0);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_getVoiceProfilePathsToBeUploadedForSiriProfileId:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = AFPreferencesSupportedLanguages();
  v6 = CSIsCommunalDevice();
  if (v3 || !v6)
  {
    v30 = v3;
    v9 = [SSRUtils getVoiceProfilesForSiriProfileId:v3];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (!v10)
    {
      goto LABEL_26;
    }

    v11 = v10;
    v12 = *v33;
    v13 = MEMORY[0x277D01970];
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if (v5)
        {
          v16 = [*(*(&v32 + 1) + 8 * i) locale];
          v17 = [v5 containsObject:v16];

          if ((v17 & 1) == 0)
          {
            v21 = *v13;
            if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
            {
              continue;
            }

            v18 = v21;
            v20 = [v15 locale];
            *buf = 136315650;
            v37 = "[SSRVoiceProfileManager _getVoiceProfilePathsToBeUploadedForSiriProfileId:]";
            v38 = 2114;
            v39 = v20;
            v40 = 2114;
            v41 = v5;
            p_super = &v18->super;
            v23 = "%s Unsupported languagecode %{public}@ in %{public}@ - Skipping";
            v24 = 32;
LABEL_20:
            _os_log_impl(&dword_225E12000, p_super, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
            goto LABEL_23;
          }
        }

        if (![v15 voiceProfileVersion])
        {
          v25 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v18 = v25;
          v20 = [v15 locale];
          *buf = 136315906;
          v37 = "[SSRVoiceProfileManager _getVoiceProfilePathsToBeUploadedForSiriProfileId:]";
          v38 = 2114;
          v39 = v20;
          v40 = 2048;
          v41 = 0;
          v42 = 2048;
          v43 = 1;
          p_super = &v18->super;
          v23 = "%s Skipping uploading %{public}@ legacy version (%lu) of voice profile, current version %lu";
          v24 = 42;
          goto LABEL_20;
        }

        if ([v15 isMarkedSATEnrolled])
        {
          v18 = [[SSRVoiceProfileMetaContext alloc] initWithVoiceProfile:v15];
          v19 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:self->_currentDeviceCategory];
          [(SSRVoiceProfileMetaContext *)v18 setProductCategory:v19];

          [(SSRVoiceProfileMetaContext *)v18 setVersion:&unk_283933948];
          v20 = [v15 voiceProfileBasePath];
          [v4 setObject:v18 forKey:v20];
        }

        else
        {
          v26 = *v13;
          if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v18 = v26;
          v20 = [v15 locale];
          v27 = [v15 profileID];
          *buf = 136315650;
          v37 = "[SSRVoiceProfileManager _getVoiceProfilePathsToBeUploadedForSiriProfileId:]";
          v38 = 2114;
          v39 = v20;
          v40 = 2112;
          v41 = v27;
          _os_log_impl(&dword_225E12000, &v18->super, OS_LOG_TYPE_DEFAULT, "%s Skipping uploading %{public}@ voice profile for profileId %@", buf, 0x20u);
        }

LABEL_23:
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (!v11)
      {
LABEL_26:
        v8 = v4;

        v3 = v30;
        goto LABEL_27;
      }
    }
  }

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v37 = "[SSRVoiceProfileManager _getVoiceProfilePathsToBeUploadedForSiriProfileId:]";
    _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: siriProfileId is nil - Bailing out", buf, 0xCu);
  }

  v8 = 0;
LABEL_27:

  v28 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)notifyUserVoiceProfileUploadComplete
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SSRVoiceProfileManager_notifyUserVoiceProfileUploadComplete__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__SSRVoiceProfileManager_notifyUserVoiceProfileUploadComplete__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) _CSSATLegacyUploadPath];
  if ([v2 fileExistsAtPath:v3])
  {
    v10 = 0;
    v4 = [v2 removeItemAtPath:v3 error:&v10];
    v5 = v10;
    if ((v4 & 1) == 0)
    {
      v6 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = [v5 localizedDescription];
        *buf = 136315394;
        v12 = "[SSRVoiceProfileManager notifyUserVoiceProfileUploadComplete]_block_invoke";
        v13 = 2114;
        v14 = v8;
        _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Cannot delete existing SATUpload Diretory : %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getUserVoiceProfileUploadPathWithEnrolledLanguageList:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (CSIsCommunalDevice())
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]";
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s Legacy upload API called on Horseman - Bailing out", &buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__6714;
    v13 = __Block_byref_object_dispose__6715;
    v14 = [(SSRVoiceProfileManager *)self _CSSATLegacyUploadPath];
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__SSRVoiceProfileManager_getUserVoiceProfileUploadPathWithEnrolledLanguageList___block_invoke;
    v9[3] = &unk_2785797D0;
    v9[4] = self;
    v9[5] = &buf;
    dispatch_sync(queue, v9);
    v5 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

void __80__SSRVoiceProfileManager_getUserVoiceProfileUploadPathWithEnrolledLanguageList___block_invoke(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v2 = 0x277CCA000uLL;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v3 fileExistsAtPath:*(*(*(a1 + 40) + 8) + 40)])
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v77 = 0;
    v5 = [v3 removeItemAtPath:v4 error:&v77];
    v6 = v77;
    if ((v5 & 1) == 0)
    {
      v7 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = [v6 localizedDescription];
        *buf = 136315394;
        v80 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
        v81 = 2114;
        v82 = v9;
        v10 = "%s Cannot delete existing SATUpload Diretory : %{public}@";
LABEL_51:
        _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);

        goto LABEL_40;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  v12 = *(*(*(a1 + 40) + 8) + 40);
  v76 = v6;
  v13 = [v3 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v76];
  v6 = v76;

  if ((v13 & 1) == 0)
  {
    v43 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = v43;
      v9 = [v6 localizedDescription];
      *buf = 136315394;
      v80 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
      v81 = 2114;
      v82 = v9;
      v10 = "%s Cannot create SAT Upload Directory : %{public}@";
      goto LABEL_51;
    }

LABEL_40:
    v44 = *(*(a1 + 40) + 8);
    v14 = *(v44 + 40);
    *(v44 + 40) = 0;
    goto LABEL_49;
  }

  [*(a1 + 32) _getVoiceProfilePathsToBeUploadedForSiriProfileId:0];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v14 = v75 = 0u;
  v57 = [v14 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v57)
  {
    v58 = *v73;
    *&v15 = 136315650;
    v54 = v15;
    v63 = v3;
    v55 = v14;
    do
    {
      v16 = 0;
      do
      {
        if (*v73 != v58)
        {
          objc_enumerationMutation(v14);
        }

        v60 = v16;
        v17 = *(*(&v72 + 1) + 8 * v16);
        v18 = [v14 objectForKeyedSubscript:{v17, v54}];
        v19 = [v18 languageCode];

        v20 = v17;
        v21 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingPathComponent:v19];
        v61 = v20;
        v22 = [v20 stringByAppendingPathComponent:@"td"];
        v23 = [*(v2 + 2560) defaultManager];
        v24 = [v23 enumeratorAtPath:v22];

        v71 = v6;
        v64 = v21;
        LOBYTE(v23) = [v63 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:&v71];
        v25 = v71;

        v59 = v24;
        if (v23)
        {
          v56 = v19;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          obj = v24;
          v26 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v68;
            while (2)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v68 != v28)
                {
                  objc_enumerationMutation(obj);
                }

                v30 = *(*(&v67 + 1) + 8 * i);
                v31 = a1;
                v32 = *(a1 + 32);
                v33 = [v22 stringByAppendingPathComponent:v30];
                LODWORD(v32) = [v32 _isDirectory:v33];

                if (v32)
                {
                  v34 = [v64 stringByAppendingPathComponent:v30];
                  v66 = v25;
                  v35 = [v63 createDirectoryAtPath:v34 withIntermediateDirectories:1 attributes:0 error:&v66];
                  v6 = v66;

                  if ((v35 & 1) == 0)
                  {
                    v45 = *MEMORY[0x277D01970];
                    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                    {
                      v52 = v45;
                      v53 = [v64 stringByAppendingPathComponent:v30];
                      *buf = 136315394;
                      v80 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
                      v81 = 2114;
                      v82 = v53;
                      _os_log_error_impl(&dword_225E12000, v52, OS_LOG_TYPE_ERROR, "%s Cannot create directory(%{public}@)", buf, 0x16u);
                    }

                    v46 = *(*(v31 + 40) + 8);
                    v36 = *(v46 + 40);
                    *(v46 + 40) = 0;
LABEL_47:
                    v3 = v63;
                    v14 = v55;

                    goto LABEL_48;
                  }

                  v25 = v6;
                }

                else
                {
                  v36 = [v30 pathExtension];
                  if (([v36 isEqualToString:@"wav"] & 1) != 0 || objc_msgSend(v36, "isEqualToString:", @"json"))
                  {
                    v37 = [v22 stringByAppendingPathComponent:v30];
                    v38 = [v64 stringByAppendingPathComponent:v30];

                    v65 = 0;
                    v39 = [v63 copyItemAtPath:v37 toPath:v38 error:&v65];
                    v40 = v65;
                    if (v39)
                    {
                      v41 = v40 == 0;
                    }

                    else
                    {
                      v41 = 0;
                    }

                    if (!v41)
                    {
                      v6 = v40;
                      v47 = *MEMORY[0x277D01970];
                      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                      {
                        *buf = v54;
                        v80 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
                        v81 = 2114;
                        v82 = v37;
                        v83 = 2114;
                        v84 = v38;
                        _os_log_error_impl(&dword_225E12000, v47, OS_LOG_TYPE_ERROR, "%s Cannot copy file: %{public}@ to %{public}@", buf, 0x20u);
                      }

                      v49 = *(*(v31 + 40) + 8);
                      v50 = *(v49 + 40);
                      *(v49 + 40) = 0;

                      goto LABEL_47;
                    }

                    v25 = 0;
                  }
                }

                a1 = v31;
              }

              v27 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          v6 = v25;
          v14 = v55;
          v19 = v56;
        }

        else
        {
          v42 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = v54;
            v80 = "[SSRVoiceProfileManager getUserVoiceProfileUploadPathWithEnrolledLanguageList:]_block_invoke";
            v81 = 2114;
            v82 = v21;
            v83 = 2114;
            v84 = v25;
            _os_log_error_impl(&dword_225E12000, v42, OS_LOG_TYPE_ERROR, "%s Cannot create %{public}@ with error %{public}@ - Skipping language", buf, 0x20u);
          }

          v6 = v25;
        }

        v2 = 0x277CCA000;

        v16 = v60 + 1;
      }

      while (v60 + 1 != v57);
      v57 = [v14 countByEnumeratingWithState:&v72 objects:v85 count:16];
      v3 = v63;
    }

    while (v57);
  }

LABEL_48:

LABEL_49:
  v51 = *MEMORY[0x277D85DE8];
}

- (void)uploadUserVoiceProfileForSiriProfileId:(id)a3 withUploadTrigger:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__SSRVoiceProfileManager_uploadUserVoiceProfileForSiriProfileId_withUploadTrigger_completion___block_invoke;
  v15[3] = &unk_278578EF8;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __94__SSRVoiceProfileManager_uploadUserVoiceProfileForSiriProfileId_withUploadTrigger_completion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Primary User";
    if (*(a1 + 32))
    {
      v4 = *(a1 + 32);
    }

    *buf = 136315394;
    v27 = "[SSRVoiceProfileManager uploadUserVoiceProfileForSiriProfileId:withUploadTrigger:completion:]_block_invoke";
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Upload trigger of voice profile of %@ ", buf, 0x16u);
  }

  if (!*(*(a1 + 40) + 8))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277D018F8] deviceProductType];
    v7 = [v9 stringWithFormat:@"Unknown device category for device type %@ - Bailing out", v10];

    v11 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[SSRVoiceProfileManager uploadUserVoiceProfileForSiriProfileId:withUploadTrigger:completion:]_block_invoke";
      v28 = 2114;
      v29 = v7;
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = MEMORY[0x277CCA9B8];
      v24 = @"reason";
      v25 = v7;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v15 = [v13 errorWithDomain:@"com.apple.speakerrecognition" code:711 userInfo:v14];
      (*(v12 + 16))(v12, v15);
    }

    goto LABEL_15;
  }

  if (CSIsIOS() & 1) != 0 || (CSIsOSX())
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__SSRVoiceProfileManager_uploadUserVoiceProfileForSiriProfileId_withUploadTrigger_completion___block_invoke_205;
    v22[3] = &unk_278578ED0;
    v23 = *(a1 + 56);
    v7 = [v5 _prepareVoiceProfileWithSiriProfileId:v6 withUploadBlock:v22];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

LABEL_15:
    goto LABEL_16;
  }

  v17 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v19 = MEMORY[0x277D018F8];
    v20 = v17;
    v21 = [v19 deviceProductType];
    *buf = 136315394;
    v27 = "[SSRVoiceProfileManager uploadUserVoiceProfileForSiriProfileId:withUploadTrigger:completion:]_block_invoke";
    v28 = 2114;
    v29 = v21;
    _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s Upload not supported on %{public}@", buf, 0x16u);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, 0);
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)notifyUserVoiceProfileUploadCompleteForSiriProfileId:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SSRVoiceProfileManager_notifyUserVoiceProfileUploadCompleteForSiriProfileId_withError___block_invoke;
  block[3] = &unk_2785793A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __89__SSRVoiceProfileManager_notifyUserVoiceProfileUploadCompleteForSiriProfileId_withError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) _CSSATUploadPathForSiriProfileId:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = MEMORY[0x277D01970];
  v6 = *MEMORY[0x277D01970];
  v7 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 40);
    if (!v8)
    {
      v8 = @"Primary User";
    }

    *buf = 136315650;
    v21 = "[SSRVoiceProfileManager notifyUserVoiceProfileUploadCompleteForSiriProfileId:withError:]_block_invoke";
    v22 = 2112;
    v23 = v8;
    v24 = 2114;
    v25 = v4;
    v9 = "%s Upload of Voice Profile for %@ completed with error %{public}@";
    v10 = v6;
    v11 = 32;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v12 = @"Primary User";
    if (*(a1 + 40))
    {
      v12 = *(a1 + 40);
    }

    *buf = 136315394;
    v21 = "[SSRVoiceProfileManager notifyUserVoiceProfileUploadCompleteForSiriProfileId:withError:]_block_invoke";
    v22 = 2112;
    v23 = v12;
    v9 = "%s Upload of Voice Profile for %@ completed successfully";
    v10 = v6;
    v11 = 22;
  }

  _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_11:
  if ([v2 fileExistsAtPath:v3])
  {
    v19 = 0;
    v13 = [v2 removeItemAtPath:v3 error:&v19];
    v14 = v19;
    if ((v13 & 1) == 0)
    {
      v15 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = [v14 localizedDescription];
        *buf = 136315394;
        v21 = "[SSRVoiceProfileManager notifyUserVoiceProfileUploadCompleteForSiriProfileId:withError:]_block_invoke";
        v22 = 2114;
        v23 = v17;
        _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete existing SATUpload diretory : %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:0];

  v6 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[SSRVoiceProfileManager _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:]";
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s PHS update directory already exists, remove before we move forward", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v10 = [v9 removeItemAtPath:v3 error:&v20];
  v6 = v20;

  if ((v10 & 1) == 0)
  {
    v16 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[SSRVoiceProfileManager _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:]";
      _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s Failed to delete PHS update directory", buf, 0xCu);
    }
  }

  else
  {
LABEL_6:
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = v6;
    v12 = [v11 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v19];
    v13 = v19;

    if (v12)
    {

LABEL_8:
      v14 = v3;
      goto LABEL_16;
    }

    v15 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[SSRVoiceProfileManager _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:]";
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s Failed to create PHS update directory", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_getUserVoiceProfileDownloadCacheDirectoryForProfileId:(id)a3 forDeviceCategory:(unint64_t)a4 forVoiceProfileVersion:(unint64_t)a5
{
  v8 = a3;
  if (a4 == 3)
  {
    v9 = +[SSRUtils getVoiceEnrollmentDownloadBaseDir];
    v10 = v9;
    if (a5)
    {
      v11 = @"SATUpdateNewerZone";
    }

    else
    {
      v11 = @"SATUpdate";
    }

    v15 = [v9 stringByAppendingPathComponent:v11];
  }

  else
  {
    v12 = +[SSRUtils getVoiceEnrollmentDownloadBaseDir];
    v13 = [v12 stringByAppendingPathComponent:@"SATUpdate"];

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%d_%d", a4, a5];
    v15 = [v13 stringByAppendingString:v14];

    if (!v8)
    {
      goto LABEL_9;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%@", v8];
    v16 = [v15 stringByAppendingString:v10];

    v15 = v16;
  }

LABEL_9:
  v17 = [(SSRVoiceProfileManager *)self _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:v15];

  return v17;
}

- (id)_enableVoiceTriggerIfLanguageMatches:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CSNotBackedupPreferencesValueForKey();
  v6 = MEMORY[0x277D018F8];
  v7 = [(NSUUID *)self->_endpointUUID UUIDString];
  v8 = [v6 getSiriLanguageWithEndpointId:v7 fallbackLanguage:0];

  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315906;
    v31 = "[SSRVoiceProfileManager _enableVoiceTriggerIfLanguageMatches:]";
    v32 = 2114;
    v33 = *&v4;
    v34 = 2114;
    v35 = v5;
    v36 = 2114;
    v37 = v8;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s language: %{public}@, enableVTAfterSyncLanguage: %{public}@, currSiriLanguage: %{public}@", &v30, 0x2Au);
  }

  if (v5 && v8)
  {
    v11 = [v4 isEqualToString:v8];
    v12 = *v9;
    if (v11)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 136315650;
        v31 = "[SSRVoiceProfileManager _enableVoiceTriggerIfLanguageMatches:]";
        v32 = 2114;
        v33 = *&v8;
        v34 = 2114;
        v35 = v5;
        _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Enabling VoiceTrigger Upon VoiceProfile sync for language: %{public}@ and enrolled language: %{public}@", &v30, 0x20u);
      }

      _CSNotBackedupPreferencesSetValueForKey();
      CSNotBackedupInternalPreferencesSynchronize();
      v13 = [MEMORY[0x277D7A8D0] sharedPreferences];
      [v13 setVoiceTriggerEnabled:1];

      if ([MEMORY[0x277D018F8] supportRemoteDarwinVoiceTrigger])
      {
        v14 = [MEMORY[0x277D7A8D0] sharedPreferences];
        [v14 setVoiceTriggerEnabled:1 sender:self deviceType:3 endpointId:0];
      }

      if (CSIsInternalBuild())
      {
        v15 = _CSNotBackedupPreferencesValueForKey();
        v16 = v15;
        if (v15)
        {
          v17 = [v15 objectForKeyedSubscript:@"EnableVTUponVoiceProfileSync"];

          if (v17)
          {
            v18 = [v16 objectForKeyedSubscript:@"EnableVTUponVoiceProfileSync"];
            v19 = [v18 objectForKeyedSubscript:@"timestamp"];
            v20 = objc_alloc_init(MEMORY[0x277CCA968]);
            v21 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
            [v20 setLocale:v21];

            [v20 setDateFormat:@"yyyyMMdd-HH:mm:ss"];
            v22 = [v20 dateFromString:v19];
            v23 = [MEMORY[0x277CBEAA8] date];
            [v23 timeIntervalSinceDate:v22];
            v25 = v24;
            if (v24 > 604800.0)
            {
              v26 = *v9;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v30 = 136315394;
                v31 = "[SSRVoiceProfileManager _enableVoiceTriggerIfLanguageMatches:]";
                v32 = 2048;
                v33 = v25;
                _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Triggering ABC logging since VoiceProfile download took %f secs", &v30, 0x16u);
              }

              v27 = [MEMORY[0x277D01708] sharedInstance];
              [v27 submitVoiceTriggerIssueReport:*MEMORY[0x277D01A90]];
            }
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    v12 = *v9;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315394;
    v31 = "[SSRVoiceProfileManager _enableVoiceTriggerIfLanguageMatches:]";
    v32 = 2114;
    v33 = *&v4;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Not enabling VoiceTrigger Upon VoiceProfile sync for language: %{public}@", &v30, 0x16u);
  }

LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_enrollVoiceProfileForSiriProfileId:(id)a3 fromCacheDirectoryPath:(id)a4 withCategoryType:(unint64_t)a5
{
  v149[1] = *MEMORY[0x277D85DE8];
  v109 = a3;
  v106 = a4;
  v110 = self;
  v7 = [(SSRVoiceProfileManager *)self SSRSpeakerProfilesBasePath];
  v103 = v7;
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__6714;
  v127 = __Block_byref_object_dispose__6715;
  v128 = 0;
  if (!v106 || !v7)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"SourcePath (%@) or DestinationPath (%@) is nil - Bailing out", v106, v7];
    v19 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
      v141 = 2114;
      v142 = v18;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v129 = @"reason";
    v130 = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
    v102 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:722 userInfo:v21];

    goto LABEL_12;
  }

  v8 = [SSRUtils createDirectoryIfDoesNotExist:v7];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = (v124 + 5);
  obj = v124[5];
  v97 = [v9 contentsOfDirectoryAtPath:v106 error:&obj];
  objc_storeStrong(v10, obj);

  v111 = AFPreferencesSupportedLanguages();
  v11 = v124[5];
  v12 = v110;
  if (v11)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [v11 localizedDescription];
    v105 = [v13 stringWithFormat:@"Failed to get contents of %@ with error %@", v106, v14];

    v15 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
      v141 = 2114;
      v142 = v105;
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v148 = @"reason";
    v149[0] = v105;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:&v148 count:1];
    v102 = [v16 errorWithDomain:@"com.apple.speakerrecognition" code:722 userInfo:v17];
    goto LABEL_7;
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v105 = v97;
  v24 = [(SSRVoiceProfileRetrainingContext *)v105 countByEnumeratingWithState:&v118 objects:v147 count:16];
  if (!v24)
  {
    log = 0;
    goto LABEL_98;
  }

  log = 0;
  v107 = *v119;
  v25 = v109;
  if (!v109)
  {
    v25 = @"Primary User";
  }

  v93 = v25;
  do
  {
    v108 = v24;
    for (i = 0; i != v108; ++i)
    {
      if (*v119 != v107)
      {
        objc_enumerationMutation(v105);
      }

      v27 = *(*(&v118 + 1) + 8 * i);
      if (v111 && ([v111 containsObject:*(*(&v118 + 1) + 8 * i)] & 1) == 0)
      {
        v45 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v141 = 2114;
          v142 = v27;
          v143 = 2114;
          v144 = *&v111;
          _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s Language %{public}@ not supported in %{public}@ - Skipping", buf, 0x20u);
        }

        goto LABEL_73;
      }

      v28 = [v106 stringByAppendingPathComponent:v27];
      v29 = MEMORY[0x277D018F8];
      v30 = [(NSUUID *)v12->_endpointUUID UUIDString];
      v31 = [v29 getSiriLanguageWithEndpointId:v30 fallbackLanguage:0];

      v32 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        endpointUUID = v110->_endpointUUID;
        *buf = 136315650;
        v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
        v141 = 2112;
        v142 = endpointUUID;
        v143 = 2112;
        v144 = *&v31;
        _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_DEFAULT, "%s endPointId:%@, currentLanguageCode:%@", buf, 0x20u);
      }

      v34 = CSIsCommunalDevice();
      if (v31)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      if (v35 == 1)
      {
        if (([(SSRVoiceProfileRetrainingContext *)v27 isEqualToString:v31]& 1) != 0)
        {
          if ([SSRUtils isSpeakerRecognitionSupportedInLocale:v31])
          {
            goto LABEL_32;
          }

          v70 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v141 = 2114;
            v142 = v109;
            v143 = 2114;
            v144 = *&v31;
            v47 = v70;
            v48 = "%s Skipping profile download for %{public}@ - voiceId not supported in %{public}@";
            v49 = 32;
LABEL_63:
            _os_log_impl(&dword_225E12000, v47, OS_LOG_TYPE_DEFAULT, v48, buf, v49);
          }
        }

        else
        {
          v46 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v141 = 2114;
            v142 = v109;
            v143 = 2114;
            v144 = *&v27;
            v145 = 2114;
            v146 = v31;
            v47 = v46;
            v48 = "%s Skipping profile download for %{public}@ - %{public}@ not matching current %{public}@";
            v49 = 42;
            goto LABEL_63;
          }
        }

        goto LABEL_73;
      }

LABEL_32:
      v36 = [SSRUtils getVoiceProfileForSiriProfileId:v109 forLanguageCode:v27];
      if (v36)
      {
        if (CSIsCommunalDevice())
        {
          v37 = +[SSRVoiceProfileStore sharedInstance];
          v38 = [v37 checkIfVoiceProfile:v36 needsUpdatedWith:v28 withCategory:a5];

          if ((v38 & 1) == 0)
          {
            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Skipping profile Update for %@ in %@", v109, v27];
            v40 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
              v141 = 2114;
              v142 = v39;
              _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
            }

            v41 = MEMORY[0x277CCA9B8];
            v137 = @"reason";
            v138 = v39;
            v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
            v43 = [v41 errorWithDomain:@"com.apple.speakerrecognition" code:748 userInfo:v42];
            v44 = v124[5];
            v124[5] = v43;

            log = 1;
LABEL_45:

LABEL_73:
            v12 = v110;
            continue;
          }
        }

        else if ([v36 isMarkedSATEnrolled])
        {
          v50 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v141 = 2114;
            v142 = v27;
            _os_log_impl(&dword_225E12000, v50, OS_LOG_TYPE_DEFAULT, "%s Skipping language [%{public}@] since we already have enrollment data for this language", buf, 0x16u);
          }

          goto LABEL_45;
        }
      }

      v51 = objc_autoreleasePoolPush();
      v52 = +[SSRVoiceProfileStore sharedInstance];
      if (v36)
      {
        v53 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v141 = 2112;
          v142 = v109;
          _os_log_impl(&dword_225E12000, v53, OS_LOG_TYPE_DEFAULT, "%s Deleting the existing voice profile before enrolling a new one for siriSharedUserId: %@", buf, 0x16u);
        }

        v54 = [v52 deleteUserVoiceProfile:v36];
      }

      else
      {
        v36 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:v27 withAppDomain:@"com.apple.siri"];
        [v36 setSharedSiriProfileId:v109];
      }

      v55 = [MEMORY[0x277CBEBC0] fileURLWithPath:v28];
      v56 = [v36 importVoiceProfileAtPath:v55];
      v57 = v124[5];
      v124[5] = v56;

      if (v124[5])
      {
        v58 = MEMORY[0x277CCACA8];
        v59 = [v36 locale];
        v60 = [v58 stringWithFormat:@"ERR: Failed to import profile %@ for %@", v59, v109];

        v61 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_69;
      }

      if (([v36 markSATEnrollmentSuccess] & 1) == 0)
      {
        v71 = MEMORY[0x277CCACA8];
        v72 = [v36 locale];
        v60 = [v71 stringWithFormat:@"ERR: Migrated language %@ for %@ but failed to mark SAT enrollment", v72, v109];

        v61 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
LABEL_68:
          *buf = 136315394;
          v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v141 = 2114;
          v142 = v60;
          _os_log_error_impl(&dword_225E12000, v61, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        }

LABEL_69:
        v69 = 5;
        goto LABEL_70;
      }

      if (([v36 markSATEnrollmentMigrated] & 1) == 0)
      {
        v73 = MEMORY[0x277CCACA8];
        v74 = [v36 locale];
        v60 = [v73 stringWithFormat:@"ERR: Failed to mark migrated for %@ in language %@", v109, v74];

        v61 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_69;
      }

      if (CSIsCommunalDevice())
      {
        v135[0] = @"SSRVoiceRetrainingVoiceProfile";
        v135[1] = @"SSRVoiceRetrainingSpIdType";
        v136[0] = v36;
        v136[1] = &unk_283933960;
        v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];
        v62 = [SSRVoiceProfileRetrainingContext alloc];
        v63 = (v124 + 5);
        v117 = v124[5];
        v60 = [(SSRVoiceProfileRetrainingContext *)v62 initWithVoiceRetrainingContext:v101 error:&v117];
        objc_storeStrong(v63, v117);
        if (v124[5])
        {
          v64 = MEMORY[0x277CCACA8];
          v65 = [v36 profileID];
          v100 = [v64 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", v65, v124[5]];

          v66 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v141 = 2112;
            v142 = v100;
            _os_log_error_impl(&dword_225E12000, v66, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
          }

          v67 = MEMORY[0x277CCA9B8];
          v133 = @"reason";
          v134 = v100;
          v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          v102 = [v67 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v68];
          v69 = 1;
          goto LABEL_87;
        }
      }

      else
      {
        v60 = 0;
      }

      v96 = v51;
      v101 = [MEMORY[0x277CBEAA8] date];
      v75 = objc_alloc_init(MEMORY[0x277D01710]);
      [v75 enter];
      v76 = +[SSRVoiceProfileStore sharedInstance];
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __102__SSRVoiceProfileManager__enrollVoiceProfileForSiriProfileId_fromCacheDirectoryPath_withCategoryType___block_invoke;
      v112[3] = &unk_278578E58;
      v116 = &v123;
      v77 = v36;
      v113 = v77;
      v114 = v27;
      v100 = v75;
      v115 = v100;
      v94 = v77;
      [v76 addUserVoiceProfile:v77 withContext:v60 withCompletion:v112];

      v51 = v96;
      v78 = [(SSRVoiceProfileRetrainingContext *)v100 waitWithTimeout:dispatch_time(0, 10000000000)];
      v79 = [MEMORY[0x277CBEAA8] date];
      [v79 timeIntervalSinceDate:v101];
      v81 = v80 * 1000.0;
      if (v78)
      {
        v82 = MEMORY[0x277CCACA8];
        v83 = [v94 siriProfileId];
        v84 = [v82 stringWithFormat:@"userAddition timedout for siriProfileId %@ after %fms", v83, *&v81];

        v85 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v141 = 2112;
          v142 = v84;
          _os_log_error_impl(&dword_225E12000, v85, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
        }
      }

      else
      {
        v86 = v124[5];
        v87 = *MEMORY[0x277D01970];
        if (!v86)
        {
          v88 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v141 = 2114;
            v142 = v93;
            v143 = 2048;
            v144 = v81;
            _os_log_impl(&dword_225E12000, v88, OS_LOG_TYPE_DEFAULT, "%s Successfully added %{public}@ in %.2fms", buf, 0x20u);
            v88 = *MEMORY[0x277D01970];
          }

          loga = v88;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
          {
            v89 = [v94 locale];
            *buf = 136315650;
            v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
            v141 = 2114;
            v142 = v109;
            v143 = 2114;
            v144 = *&v89;
            _os_log_impl(&dword_225E12000, loga, OS_LOG_TYPE_DEFAULT, "%s Sucessfully enrolled %{public}@ for language %{public}@", buf, 0x20u);
          }

          if (v110->_currentDeviceCategory - 1 <= 2)
          {
            v90 = [(SSRVoiceProfileManager *)v110 _enableVoiceTriggerIfLanguageMatches:v27];
          }

          v69 = 0;
          log = 1;
          goto LABEL_86;
        }

        v95 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
          v141 = 2114;
          v142 = v109;
          v143 = 2114;
          v144 = *&v27;
          v145 = 2114;
          v146 = v86;
          _os_log_error_impl(&dword_225E12000, v95, OS_LOG_TYPE_ERROR, "%s ERR: Failed migrating Voice profile with ID %{public}@ for language %{public}@ with error %{public}@", buf, 0x2Au);
        }
      }

      v69 = 5;
LABEL_86:

      v68 = v113;
LABEL_87:

LABEL_70:
      objc_autoreleasePoolPop(v51);

      if (v69 == 5)
      {
        goto LABEL_73;
      }

      v12 = v110;
      if (v69)
      {
        goto LABEL_8;
      }
    }

    v24 = [(SSRVoiceProfileRetrainingContext *)v105 countByEnumeratingWithState:&v118 objects:v147 count:16];
  }

  while (v24);
LABEL_98:

  if (log & 1 | ((CSIsCommunalDevice() & 1) == 0) || v124[5])
  {

    v102 = v124[5];
    goto LABEL_12;
  }

  v105 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to enroll user - %@", v109];
  v91 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v140 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]";
    v141 = 2114;
    v142 = v105;
    _os_log_error_impl(&dword_225E12000, v91, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  v92 = MEMORY[0x277CCA9B8];
  v131 = @"reason";
  v132 = v105;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
  v102 = [v92 errorWithDomain:@"com.apple.speakerrecognition" code:747 userInfo:v17];
LABEL_7:

LABEL_8:
LABEL_12:
  _Block_object_dispose(&v123, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v102;
}

void __102__SSRVoiceProfileManager__enrollVoiceProfileForSiriProfileId_fromCacheDirectoryPath_withCategoryType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 profileID];
    v10 = *(a1 + 40);
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v13 = 136315906;
    v14 = "[SSRVoiceProfileManager _enrollVoiceProfileForSiriProfileId:fromCacheDirectoryPath:withCategoryType:]_block_invoke";
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Adding voiceprofile for %{public}@ in language %{public}@ completed with error %{public}@", &v13, 0x2Au);
  }

  [*(a1 + 48) leave];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_downloadVoiceProfileForProfileId:(id)a3 forDeviceCategory:(unint64_t)a4 withDownloadTriggerBlock:(id)a5 withCompletion:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v37 = a5;
  v10 = a6;
  v11 = MEMORY[0x277D018F8];
  endpointUUID = self->_endpointUUID;
  v13 = a3;
  v14 = [(NSUUID *)endpointUUID UUIDString];
  v15 = [v11 getSiriLanguageWithEndpointId:v14 fallbackLanguage:0];

  v16 = MEMORY[0x277D01970];
  v17 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_endpointUUID;
    *buf = 136315650;
    v43 = "[SSRVoiceProfileManager _downloadVoiceProfileForProfileId:forDeviceCategory:withDownloadTriggerBlock:withCompletion:]";
    v44 = 2112;
    v45 = v18;
    v46 = 2112;
    v47 = v15;
    _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s endPointId:%@, currentLanguageCode:%@", buf, 0x20u);
  }

  v19 = [SSRVoiceProfileMetaContext alloc];
  if (CSIsCommunalDevice())
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v21 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:a4];
  v22 = [(SSRVoiceProfileMetaContext *)v19 initWithSharedSiriId:v13 languageCode:v20 productCategory:v21 version:&unk_283933948];

  v23 = [(SSRVoiceProfileManager *)self _getUserVoiceProfileDownloadCacheDirectoryForProfileId:v13 forDeviceCategory:a4 forVoiceProfileVersion:1];

  if (!v23)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"SAT download path is nil - Bailing out"];
    v33 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "[SSRVoiceProfileManager _downloadVoiceProfileForProfileId:forDeviceCategory:withDownloadTriggerBlock:withCompletion:]";
      v44 = 2114;
      v45 = v27;
      _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v34 = MEMORY[0x277CCA9B8];
    v40 = @"reason";
    v41 = v27;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v28 = [v34 errorWithDomain:@"com.apple.speakerrecognition" code:718 userInfo:v35];

    v25 = v37;
    if (v10)
    {
      v10[2](v10, v28, 0);
    }

    goto LABEL_17;
  }

  v24 = [SSRUtils removeItemAtPath:v23];
  v25 = v37;
  v26 = (*(v37 + 2))(v37, v22, v23);
  if (v26)
  {
    v27 = v26;
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Download for %@ failed with %@", v22, v26];
    v29 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "[SSRVoiceProfileManager _downloadVoiceProfileForProfileId:forDeviceCategory:withDownloadTriggerBlock:withCompletion:]";
      v44 = 2114;
      v45 = v28;
      _os_log_error_impl(&dword_225E12000, v29, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v30 = MEMORY[0x277CCA9B8];
    v38 = @"reason";
    v39 = v28;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v32 = [v30 errorWithDomain:@"com.apple.speakerrecognition" code:712 userInfo:v31];

    if (v10)
    {
      v10[2](v10, v32, 0);
    }

LABEL_17:
    goto LABEL_21;
  }

  if (v10)
  {
    (v10)[2](v10, 0, v23);
  }

  v27 = 0;
LABEL_21:

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_downloadAndEnrollVoiceProfileForProfileId:(id)a3 withDownloadTriggerBlock:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__SSRVoiceProfileManager__downloadAndEnrollVoiceProfileForProfileId_withDownloadTriggerBlock___block_invoke;
  v22[3] = &unk_278578EA8;
  v22[4] = self;
  v8 = v6;
  v23 = v8;
  v9 = v7;
  v24 = v9;
  v10 = MEMORY[0x22AA71400](v22);
  currentDeviceCategory = self->_currentDeviceCategory;
  v12 = v10[2];
  if (currentDeviceCategory == 2)
  {
    v18 = v12();
    if (!v18)
    {
      v17 = 0;
      goto LABEL_16;
    }

    v15 = v18;
    v17 = (v10[2])(v10, self->_currentDeviceCategory);
    goto LABEL_15;
  }

  if (currentDeviceCategory == 4)
  {
    v13 = v12();
    if (v13 && ((v10[2])(v10, 2), v14 = objc_claimAutoreleasedReturnValue(), v13, (v13 = v14) != 0))
    {
      v15 = (v10[2])(v10, 1);

      if (v15)
      {
        v13 = v13;
        v16 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v26 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]";
          v27 = 2112;
          v28 = v8;
          v29 = 2114;
          v30 = v13;
          _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s Failed to enroll siriProfileId %@ with %{public}@", buf, 0x20u);
        }

        v17 = v13;
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v17 = v12();
LABEL_16:
  v19 = v17;

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

id __94__SSRVoiceProfileManager__downloadAndEnrollVoiceProfileForProfileId_withDownloadTriggerBlock___block_invoke(void *a1, uint64_t a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6714;
  v16 = __Block_byref_object_dispose__6715;
  v17 = 0;
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__SSRVoiceProfileManager__downloadAndEnrollVoiceProfileForProfileId_withDownloadTriggerBlock___block_invoke_2;
  v8[3] = &unk_278578E80;
  v10 = &v12;
  v11 = a2;
  v8[4] = v4;
  v9 = v3;
  [v4 _downloadVoiceProfileForProfileId:v9 forDeviceCategory:a2 withDownloadTriggerBlock:v5 withCompletion:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __94__SSRVoiceProfileManager__downloadAndEnrollVoiceProfileForProfileId_withDownloadTriggerBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 56);
      v38 = v7;
      v39 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v37];
      *buf = 136315650;
      v48 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke_2";
      v49 = 2114;
      v50 = v5;
      v51 = 2114;
      v52 = v39;
      _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s Failed to download voice profile with error %{public}@ and category %{public}@ ", buf, 0x20u);
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = v5;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
    goto LABEL_23;
  }

  v11 = [*(a1 + 32) _enrollVoiceProfileForSiriProfileId:*(a1 + 40) fromCacheDirectoryPath:v6 withCategoryType:*(a1 + 56)];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (!v14)
  {
    v16 = MEMORY[0x277D01970];
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 56);
      v20 = v17;
      v21 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v19];
      *buf = 136315650;
      v48 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
      v49 = 2112;
      v50 = v18;
      v51 = 2114;
      v52 = v21;
      _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Successfully enrolled voice profile %@ with %{public}@ profile", buf, 0x20u);
    }

    if (!CSIsIOS())
    {
      goto LABEL_20;
    }

    v22 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v48 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
      _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s Triggering profile sync check", buf, 0xCu);
    }

    v23 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v23 postNotificationName:@"com.apple.voicetrigger.voiceprofilesync" object:0];
    goto LABEL_14;
  }

  v15 = [v14 domain];
  if (v15 == @"com.apple.speakerrecognition")
  {
    v24 = [*(*(*(a1 + 48) + 8) + 40) code];

    if (v24 == 748)
    {
      v25 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        v27 = *(a1 + 56);
        v28 = v25;
        v29 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v27];
        *buf = 136315650;
        v48 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
        v49 = 2112;
        v50 = v26;
        v51 = 2114;
        v52 = v29;
        _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Skipped enrolling voice profile %@ with %{public}@ profile", buf, 0x20u);
      }

      v30 = *(*(a1 + 48) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = 0;

      goto LABEL_20;
    }
  }

  else
  {
  }

  v32 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v40 = *(a1 + 40);
    v41 = *(a1 + 56);
    v23 = v32;
    v42 = [SSRUtils deviceCategoryStringRepresentationForCategoryType:v41];
    *buf = 136315650;
    v48 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
    v49 = 2112;
    v50 = v40;
    v51 = 2114;
    v52 = v42;
    _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: Failed in enrolling Voice profile %@ with category %{public}@ profile", buf, 0x20u);

LABEL_14:
  }

LABEL_20:
  v33 = [MEMORY[0x277CCAA00] defaultManager];
  v46 = 0;
  v34 = [v33 removeItemAtPath:v6 error:&v46];
  v10 = v46;

  if ((v34 & 1) == 0)
  {
    v35 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v43 = *(*(*(a1 + 48) + 8) + 40);
      v44 = v35;
      v45 = [v43 localizedDescription];
      *buf = 136315650;
      v48 = "[SSRVoiceProfileManager _downloadAndEnrollVoiceProfileForProfileId:withDownloadTriggerBlock:]_block_invoke";
      v49 = 2114;
      v50 = v6;
      v51 = 2114;
      v52 = v45;
      _os_log_error_impl(&dword_225E12000, v44, OS_LOG_TYPE_ERROR, "%s Failed to remove update path [%{public}@] upon migration completion, error: %{public}@", buf, 0x20u);
    }
  }

LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkIfDownloadRequiredForProfileId:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (CSIsIOS() & 1) != 0 || (CSIsCommunalDevice() & 1) != 0 || (CSIsOSX())
  {
    v5 = CSIsCommunalDevice();
    if (v4 || !v5)
    {
      if ((CSIsCommunalDevice() & 1) == 0)
      {
        v8 = MEMORY[0x277D018F8];
        v9 = [(NSUUID *)self->_endpointUUID UUIDString];
        v10 = [v8 getSiriLanguageWithEndpointId:v9 fallbackLanguage:0];

        v11 = [SSRUtils getVoiceProfileForSiriProfileId:v4 forLanguageCode:v10];
        if ([v11 isMarkedSATEnrolled])
        {
          v12 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315394;
            v17 = "[SSRVoiceProfileManager _checkIfDownloadRequiredForProfileId:]";
            v18 = 2114;
            v19 = v10;
            _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Skipping download for language [%{public}@] since we already have enrollment data for this language", &v16, 0x16u);
          }

          goto LABEL_16;
        }
      }

      v13 = 1;
      goto LABEL_19;
    }

    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[SSRVoiceProfileManager _checkIfDownloadRequiredForProfileId:]";
      v7 = "%s Skipping download for tvOS when shared id is nil";
LABEL_15:
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, v7, &v16, 0xCu);
    }
  }

  else
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[SSRVoiceProfileManager _checkIfDownloadRequiredForProfileId:]";
      v7 = "%s Skipping download for unsupported OS";
      goto LABEL_15;
    }
  }

LABEL_16:
  v13 = 0;
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)notifyUserVoiceProfileUpdateReady
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SSRVoiceProfileManager_notifyUserVoiceProfileUpdateReady__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__SSRVoiceProfileManager_notifyUserVoiceProfileUpdateReady__block_invoke(uint64_t a1)
{
  v123 = *MEMORY[0x277D85DE8];
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__6714;
  v111 = __Block_byref_object_dispose__6715;
  v112 = 0;
  v87 = [*(a1 + 32) _CSSATDownloadPath];
  v2 = [*(a1 + 32) SSRSpeakerProfilesBasePath];
  v3 = v2;
  v106 = 0;
  v75 = v2;
  if (v87 && v2)
  {
    v80 = a1;
    v4 = [SSRUtils createDirectoryIfDoesNotExist:v2];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = (v108 + 5);
    obj = v108[5];
    v7 = [v5 contentsOfDirectoryAtPath:v87 error:&obj];
    objc_storeStrong(v6, obj);

    v8 = v108;
    if (v108[5])
    {
      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v8[5] localizedDescription];
        *buf = 136315394;
        v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
        v115 = 2114;
        v116 = v10;
        _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_INFO, "%s Failed to get device hash list %{public}@", buf, 0x16u);
      }

LABEL_83:
      goto LABEL_84;
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v77 = v7;
    v79 = [v77 countByEnumeratingWithState:&v101 objects:v122 count:16];
    if (!v79)
    {
      goto LABEL_79;
    }

    v78 = *v102;
    v76 = *MEMORY[0x277D01AC0];
LABEL_9:
    v81 = 0;
    while (1)
    {
      if (*v102 != v78)
      {
        objc_enumerationMutation(v77);
      }

      v88 = *(*(&v101 + 1) + 8 * v81);
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
        v115 = 2114;
        v116 = v88;
        _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Processing sync data from device hash: %{public}@", buf, 0x16u);
      }

      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v87 stringByAppendingPathComponent:v88];
      v14 = (v108 + 5);
      v100 = v108[5];
      v15 = [v12 contentsOfDirectoryAtPath:v13 error:&v100];
      objc_storeStrong(v14, v100);

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v86 = v15;
      v16 = [v86 countByEnumeratingWithState:&v96 objects:v121 count:16];
      if (v16)
      {
        break;
      }

LABEL_77:

      if (++v81 == v79)
      {
        v79 = [v77 countByEnumeratingWithState:&v101 objects:v122 count:16];
        if (!v79)
        {
LABEL_79:

          goto LABEL_80;
        }

        goto LABEL_9;
      }
    }

    v89 = *v97;
LABEL_16:
    v17 = 0;
    while (1)
    {
      if (*v97 != v89)
      {
        objc_enumerationMutation(v86);
      }

      v18 = *(*(&v96 + 1) + 8 * v17);
      v19 = [SSRUtils getVoiceProfileForSiriProfileId:0 forLanguageCode:v18];
      v20 = v19;
      if (v19 && [v19 isMarkedSATEnrolled])
      {
        v21 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
          v115 = 2114;
          v116 = v18;
          _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Skipping language [%{public}@] since we already have enrollment data for this language", buf, 0x16u);
        }

        goto LABEL_57;
      }

      v22 = [v87 stringByAppendingPathComponent:v88];
      v23 = [v22 stringByAppendingPathComponent:v18];

      v24 = [MEMORY[0x277CBEBC0] fileURLWithPath:v23];
      [v24 URLByAppendingPathComponent:@"audio"];
      v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v106 = 0;
      v26 = [MEMORY[0x277CCAA00] defaultManager];
      v27 = [*&v25 path];
      v28 = [v26 fileExistsAtPath:v27 isDirectory:&v106];
      v29 = v106;

      if (v28 & v29)
      {
        if ([SSRUtils isCurrentDeviceCompatibleWithVoiceProfileAt:v23])
        {
          v30 = [SSRUtils getExplicitEnrollmentUtterancesFromDirectory:*&v25];
          v31 = +[SSRVoiceProfileStore sharedInstance];
          if (v20)
          {
            v32 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              _os_log_impl(&dword_225E12000, v32, OS_LOG_TYPE_INFO, "%s Deleting invalid voice profile", buf, 0xCu);
            }

            v33 = [v31 deleteUserVoiceProfile:v20];
          }

          else
          {
            v20 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:v18 withAppDomain:@"com.apple.siri"];
          }

          v39 = [v20 addUtterances:v30 spIdType:1];
          v40 = v108[5];
          v108[5] = v39;

          if (v108[5])
          {
            v41 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              [v20 profileID];
              v56 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v57 = [v108[5] localizedDescription];
              *buf = 136315906;
              v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v115 = 2114;
              v116 = v30;
              v117 = 2114;
              v118 = v56;
              v119 = 2114;
              v120 = v57;
              _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s Error to copy profile from %{public}@ to %{public}@, error: %{public}@", buf, 0x2Au);
            }

            goto LABEL_55;
          }

          if ([v20 markSATEnrollmentSuccess])
          {
            v85 = [MEMORY[0x277CBEAA8] date];
            v42 = objc_alloc_init(MEMORY[0x277D01710]);
            [v42 enter];
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = 3221225472;
            v91[2] = __59__SSRVoiceProfileManager_notifyUserVoiceProfileUpdateReady__block_invoke_132;
            v91[3] = &unk_278578E58;
            v95 = &v107;
            v43 = v20;
            v92 = v43;
            v93 = v18;
            v44 = v42;
            v94 = v44;
            [v31 addUserVoiceProfile:v43 withContext:0 withCompletion:v91];
            v83 = v44;
            v45 = [v44 waitWithTimeout:{dispatch_time(0, 10000000000)}];
            v84 = [MEMORY[0x277CBEAA8] date];
            [v84 timeIntervalSinceDate:v85];
            v47 = v46 * 1000.0;
            if (v45)
            {
              v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"userAddition timedout after %fms", v46 * 1000.0, v75];
              v49 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
                v115 = 2112;
                v116 = v48;
                _os_log_error_impl(&dword_225E12000, v49, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
              }

LABEL_54:
LABEL_55:

              goto LABEL_56;
            }

            v53 = *(v108 + 5);
            v54 = *MEMORY[0x277D01970];
            if (v53 != 0.0)
            {
              v55 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
                v115 = 2114;
                v116 = v18;
                v117 = 2114;
                v118 = v53;
                _os_log_error_impl(&dword_225E12000, v55, OS_LOG_TYPE_ERROR, "%s ERR: Failed migrating Voice profile for language %{public}@ with error %{public}@", buf, 0x20u);
              }

              goto LABEL_54;
            }

            v58 = v54;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [v43 locale];
              *buf = 136315650;
              v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v115 = 2114;
              v116 = v59;
              v117 = 2048;
              v118 = v47;
              _os_log_impl(&dword_225E12000, v58, OS_LOG_TYPE_DEFAULT, "%s Successfully added %{public}@ in %.2fms", buf, 0x20u);
            }

            _CSNotBackedupPreferencesValueForKey();
            v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v60 = MEMORY[0x277D018F8];
            v61 = [*(*(v80 + 32) + 24) UUIDString];
            v62 = [v60 getSiriLanguageWithEndpointId:v61 fallbackLanguage:0];

            v63 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v115 = 2114;
              v116 = v18;
              v117 = 2114;
              v118 = v82;
              v119 = 2114;
              v120 = v62;
              _os_log_impl(&dword_225E12000, v63, OS_LOG_TYPE_DEFAULT, "%s language: %{public}@, enableVTAfterSyncLanguage: %{public}@, currSiriLanguage: %{public}@", buf, 0x2Au);
            }

            if (v82 == 0.0 || !v62)
            {
              v65 = *MEMORY[0x277D01970];
            }

            else
            {
              v64 = [v18 isEqualToString:v62];
              v65 = *MEMORY[0x277D01970];
              if (v64)
              {
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
                  v115 = 2114;
                  v116 = v62;
                  v117 = 2114;
                  v118 = v82;
                  _os_log_impl(&dword_225E12000, v65, OS_LOG_TYPE_DEFAULT, "%s Enabling VoiceTrigger Upon VoiceProfile sync for language: %{public}@ and enrolled language: %{public}@", buf, 0x20u);
                }

                _CSNotBackedupPreferencesSetValueForKey();
                CSNotBackedupInternalPreferencesSynchronize();
                v66 = [MEMORY[0x277D7A8D0] sharedPreferences];
                [v66 setVoiceTriggerEnabled:1];

                if (CSIsInternalBuild())
                {
                  v67 = [MEMORY[0x277D01708] sharedInstance];
                  [v67 submitVoiceTriggerIssueReport:v76];
                }

                goto LABEL_73;
              }
            }

            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v115 = 2114;
              v116 = v18;
              _os_log_impl(&dword_225E12000, v65, OS_LOG_TYPE_DEFAULT, "%s Not enabling VoiceTrigger Upon VoiceProfile sync for language: %{public}@", buf, 0x16u);
            }

LABEL_73:
            v68 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v115 = 2114;
              v116 = v18;
              _os_log_impl(&dword_225E12000, v68, OS_LOG_TYPE_DEFAULT, "%s Sucessfully migrated language %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v50 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v115 = 2114;
              v116 = v18;
              _os_log_error_impl(&dword_225E12000, v50, OS_LOG_TYPE_ERROR, "%s Migrated language %{public}@ but failed to mark SAT enrollment", buf, 0x16u);
            }
          }

          v51 = [v20 markSATEnrollmentMigrated];
          v52 = *MEMORY[0x277D01970];
          if (v51)
          {
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
              v115 = 2114;
              v116 = v18;
              _os_log_impl(&dword_225E12000, v52, OS_LOG_TYPE_DEFAULT, "%s Sucessfully marked as migrated for language : %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
            v115 = 2114;
            v116 = v18;
            _os_log_error_impl(&dword_225E12000, v52, OS_LOG_TYPE_ERROR, "%s Failed to mark migrated for language : %{public}@", buf, 0x16u);
          }

          goto LABEL_55;
        }

        v38 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
          v115 = 2114;
          v116 = v18;
          v35 = v38;
          v36 = "%s Skipping language [%{public}@] as voice profile not compatible";
          v37 = 22;
          goto LABEL_33;
        }
      }

      else
      {
        v34 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
          v115 = 2114;
          v116 = v18;
          v117 = 2114;
          v118 = v25;
          v35 = v34;
          v36 = "%s Skipping language [%{public}@] as file path doesnt exist - %{public}@";
          v37 = 32;
LABEL_33:
          _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);
        }
      }

LABEL_56:

LABEL_57:
      if (v16 == ++v17)
      {
        v69 = [v86 countByEnumeratingWithState:&v96 objects:v121 count:16];
        v16 = v69;
        if (!v69)
        {
          goto LABEL_77;
        }

        goto LABEL_16;
      }
    }
  }

LABEL_80:
  v70 = [MEMORY[0x277CCAA00] defaultManager];
  v71 = (v108 + 5);
  v90 = v108[5];
  v72 = [v70 removeItemAtPath:v87 error:&v90];
  objc_storeStrong(v71, v90);

  if ((v72 & 1) == 0)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v108[5] localizedDescription];
      v74 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315650;
      v114 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
      v115 = 2114;
      v116 = v87;
      v117 = 2114;
      v118 = v74;
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s Failed to remove update path [%{public}@] upon migration completion, error: %{public}@", buf, 0x20u);
    }

    goto LABEL_83;
  }

LABEL_84:

  _Block_object_dispose(&v107, 8);
  v73 = *MEMORY[0x277D85DE8];
}

void __59__SSRVoiceProfileManager_notifyUserVoiceProfileUpdateReady__block_invoke_132(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 profileID];
    v10 = *(a1 + 40);
    v11 = *(*(*(a1 + 56) + 8) + 40);
    v13 = 136315906;
    v14 = "[SSRVoiceProfileManager notifyUserVoiceProfileUpdateReady]_block_invoke";
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Adding voiceprofile for %{public}@ in language %{public}@ completed with error %{public}@", &v13, 0x2Au);
  }

  [*(a1 + 48) leave];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notifyUserVoiceProfileDownloadReadyForUser:(id)a3 getData:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__6714;
  v21[4] = __Block_byref_object_dispose__6715;
  v22 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SSRVoiceProfileManager_notifyUserVoiceProfileDownloadReadyForUser_getData_completion___block_invoke;
  block[3] = &unk_278578E30;
  v18 = v9;
  v19 = v10;
  v16 = v8;
  v17 = self;
  v20 = v21;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);

  _Block_object_dispose(v21, 8);
}

void __88__SSRVoiceProfileManager_notifyUserVoiceProfileDownloadReadyForUser_getData_completion___block_invoke(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"Primary User";
    if (*(a1 + 32))
    {
      v4 = *(a1 + 32);
    }

    *buf = 136315394;
    v32 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Enrolling voice profile of %@ ", buf, 0x16u);
  }

  if (!*(a1 + 48))
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing downloadTriggerBlock - Bailing out"];
    v15 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
      v33 = 2114;
      v34 = v14;
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v16 = *(a1 + 56);
    if (!v16)
    {
      goto LABEL_22;
    }

    v17 = MEMORY[0x277CCA9B8];
    v39 = @"reason";
    v40[0] = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v19 = v17;
    v20 = 713;
    goto LABEL_21;
  }

  v5 = *(a1 + 40);
  if (!v5[1])
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277D018F8] deviceProductType];
    v14 = [v21 stringWithFormat:@"Unknown device category for device type %@ - Bailing out", v22];

    v23 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
      v33 = 2114;
      v34 = v14;
      _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    }

    v16 = *(a1 + 56);
    if (!v16)
    {
      goto LABEL_22;
    }

    v24 = MEMORY[0x277CCA9B8];
    v37 = @"reason";
    v38 = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v19 = v24;
    v20 = 711;
LABEL_21:
    v25 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:v20 userInfo:v18];
    (*(v16 + 16))(v16, v25);

LABEL_22:
    goto LABEL_28;
  }

  if ([v5 _checkIfDownloadRequiredForProfileId:*(a1 + 32)])
  {
    v6 = [*(a1 + 40) _downloadAndEnrollVoiceProfileForProfileId:*(a1 + 32) withDownloadTriggerBlock:*(a1 + 48)];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 64) + 8) + 40);
    if (v9)
    {
      v10 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 32);
        *buf = 136315650;
        v32 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
        v33 = 2112;
        v34 = v30;
        v35 = 2112;
        v36 = v9;
        _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s Failed enrolling %@ with error %@", buf, 0x20u);
      }

      v11 = *(a1 + 56);
      if (v11)
      {
        v12 = *(*(*(a1 + 64) + 8) + 40);
        v13 = *(v11 + 16);
LABEL_27:
        v13();
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v26 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      *buf = 136315394;
      v32 = "[SSRVoiceProfileManager notifyUserVoiceProfileDownloadReadyForUser:getData:completion:]_block_invoke";
      v33 = 2114;
      v34 = v27;
      _os_log_impl(&dword_225E12000, v26, OS_LOG_TYPE_DEFAULT, "%s Skipping download for voice profile: %{public}@", buf, 0x16u);
    }
  }

  v28 = *(a1 + 56);
  if (v28)
  {
    v13 = *(v28 + 16);
    goto LABEL_27;
  }

LABEL_28:
  v29 = *MEMORY[0x277D85DE8];
}

- (id)getCacheDirectoryForAppDomain:(id)a3
{
  v4 = [(SSRVoiceProfileManager *)self _CSSATCachePathForAppDomain:a3];
  v5 = [(SSRVoiceProfileManager *)self _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:v4];

  return v5;
}

- (id)getUserVoiceProfileUpdateDirectory
{
  v3 = [(SSRVoiceProfileManager *)self _CSSATDownloadPath];
  v4 = [(SSRVoiceProfileManager *)self _getUserVoiceProfileDownloadCacheDirectoryWithUpdatePath:v3];

  return v4;
}

- (void)notifyImplicitTrainingUtteranceAvailable:(id)a3 forVoiceProfileId:(id)a4 withRecordDeviceInfo:(id)a5 withRecordCtxt:(id)a6 withVoiceTriggerCtxt:(id)a7 withOtherCtxt:(id)a8 assetToUse:(id)a9 withCompletion:(id)a10
{
  v164[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v107 = a5;
  v108 = a6;
  v106 = a7;
  v105 = a8;
  v104 = a9;
  v18 = a10;
  v144 = 0;
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x3032000000;
  v142[3] = __Block_byref_object_copy__6714;
  v142[4] = __Block_byref_object_dispose__6715;
  v143 = [objc_alloc(MEMORY[0x277D017F8]) initWithDescription:@"ImplicitTraining"];
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke;
  v138[3] = &unk_278578D88;
  v19 = v17;
  v139 = v19;
  v141 = v142;
  v20 = v18;
  v140 = v20;
  v21 = MEMORY[0x22AA71400](v138);
  v22 = MEMORY[0x277D01970];
  v23 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v19)
    {
      v24 = v19;
    }

    else
    {
      v24 = @"primary";
    }

    v25 = [v107 route];
    v26 = [v108 type];
    *buf = 136315906;
    *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
    *&buf[12] = 2114;
    *&buf[14] = v24;
    *&buf[22] = 2114;
    v160 = v25;
    LOWORD(v161) = 1024;
    *(&v161 + 2) = v26;
    _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Received implicit utterance for %{public}@ from %{public}@ with context %d", buf, 0x26u);
  }

  v27 = [MEMORY[0x277D01788] sharedPreferences];
  v28 = [v27 shouldDisableImplicitTraining];

  if (!v28)
  {
    if (!v16)
    {
      v36 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v35 = "%s ERR: FilePath is nil - Bailing out";
      v37 = v36;
      v38 = 12;
LABEL_36:
      _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, v35, buf, v38);
      goto LABEL_18;
    }

    v31 = [MEMORY[0x277CCAA00] defaultManager];
    v32 = [v16 path];
    v33 = [v31 fileExistsAtPath:v32 isDirectory:&v144];

    if ((v33 & 1) == 0)
    {
      v34 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      *&buf[12] = 2112;
      *&buf[14] = v16;
      v35 = "%s ERR: Training utterance doesnt exist at %@ - Bailing out";
LABEL_35:
      v37 = v34;
      v38 = 22;
      goto LABEL_36;
    }

    if (v144 == 1)
    {
      v34 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      *&buf[12] = 2112;
      *&buf[14] = v16;
      v35 = "%s ERR: Training utterance is marked as directory at %@ - Bailing out";
      goto LABEL_35;
    }

    if (!v106)
    {
      v29 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v30 = "%s VoiceTriggerEventInfo is nil - Bailing out";
      goto LABEL_9;
    }

    v40 = *MEMORY[0x277D01C10];
    v41 = [v106 objectForKeyedSubscript:*MEMORY[0x277D01C10]];
    v42 = v41 == 0;

    if (v42)
    {
      v29 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v30 = "%s kVTEILanguageCode is nil - Bailing out";
      goto LABEL_9;
    }

    v103 = [v106 objectForKeyedSubscript:v40];
    v43 = [v106 objectForKeyedSubscript:*MEMORY[0x277D01EF0]];
    v44 = v43 == 0;

    if (v44)
    {
      v48 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v49 = "%s ERR: trigger score not found in VTEI - Bailing out";
    }

    else
    {
      v45 = [v106 objectForKeyedSubscript:*MEMORY[0x277D01CF0]];
      v46 = [v45 isEqualToString:@"Siri"];

      if (v46)
      {
        v47 = *v22;
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
          _os_log_impl(&dword_225E12000, v47, OS_LOG_TYPE_DEFAULT, "%s kVTEITriggeredPhrase is JS - Bailing out", buf, 0xCu);
        }

        goto LABEL_48;
      }

      v50 = *MEMORY[0x277D01E38];
      v51 = [v106 objectForKeyedSubscript:*MEMORY[0x277D01E38]];
      v52 = v51 == 0;

      if (v52)
      {
        v54 = 0;
      }

      else
      {
        v53 = [v106 objectForKeyedSubscript:v50];
        v54 = [v53 BOOLValue];
      }

      if ((CSIsCommunalDevice() | v54))
      {
        if ([v108 type] == 21)
        {
          queue = self->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_90;
          block[3] = &unk_278578DB0;
          v130 = v107;
          v131 = self;
          v132 = v16;
          v133 = v19;
          v134 = v106;
          v135 = v103;
          v136 = v105;
          v137 = v21;
          dispatch_async(queue, block);

          v56 = v130;
LABEL_99:

          goto LABEL_49;
        }

        if ([v108 type] == 6)
        {
          if (v104)
          {
            v57 = v104;
            v58 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
              *&buf[12] = 2114;
              *&buf[14] = v57;
              _os_log_impl(&dword_225E12000, v58, OS_LOG_TYPE_DEFAULT, "%s Using asset %{public}@ provided by caller", buf, 0x16u);
            }
          }

          else
          {
            v59 = +[SSRAssetManager sharedManager];
            v60 = [v59 installedAssetOfType:3 forLanguage:v103];

            v57 = v60;
            if (!v60)
            {
              v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get asset for locale %@", v103];
              v70 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                *&buf[12] = 2112;
                *&buf[14] = v69;
                _os_log_error_impl(&dword_225E12000, v70, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
              }

              v71 = MEMORY[0x277CCA9B8];
              v163 = @"reason";
              v164[0] = v69;
              v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:&v163 count:1];
              v73 = [v71 errorWithDomain:@"com.apple.speakerrecognition" code:802 userInfo:v72];
              (v21)[2](v21, v73);
              v101 = v69;
              v100 = v72;
              v56 = 0;

              goto LABEL_98;
            }
          }

          v56 = v57;
          if (([v57 satImplicitTrainingEnabled] & 1) == 0)
          {
            v63 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
              *&buf[12] = 2114;
              *&buf[14] = v103;
              v62 = "%s Implicit training not enabled for %{public}@";
              v64 = v63;
              v65 = 22;
LABEL_63:
              _os_log_impl(&dword_225E12000, v64, OS_LOG_TYPE_DEFAULT, v62, buf, v65);
              goto LABEL_64;
            }

            goto LABEL_64;
          }

          if (CSIsCommunalDevice())
          {
            if (!v19)
            {
              v61 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                v62 = "%s sharedSiriId is nil - Bailing out";
LABEL_62:
                v64 = v61;
                v65 = 12;
                goto LABEL_63;
              }

              goto LABEL_64;
            }
          }

          else if ([MEMORY[0x277D018F8] isIOSDeviceSupportingBargeIn])
          {
            v66 = [v106 objectForKeyedSubscript:*MEMORY[0x277D01DC8]];
            v67 = [v66 isEqualToString:*MEMORY[0x277D01BA0]];

            if (v67)
            {
              v61 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                v62 = "%s Rejecting barge-in utterance from adding to voice profile";
                goto LABEL_62;
              }

LABEL_64:
              v21[2](v21, 0);
              goto LABEL_99;
            }
          }

          if (v107)
          {
            v68 = [v107 route];
            if (v68)
            {
              v101 = [v107 route];
            }

            else
            {
              v101 = @"unknown";
            }
          }

          else
          {
            v101 = @"unknown";
          }

          v74 = MEMORY[0x277CCACA8];
          v75 = v108;
          if (v108)
          {
            v75 = [v108 type];
          }

          v100 = [v74 stringWithFormat:@"%lld", v75];
          v102 = +[SSRVoiceProfileStore sharedInstance];
          v76 = [SSRUtils getVoiceProfileForSiriProfileId:v19 forLanguageCode:v103];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v160 = __Block_byref_object_copy__6714;
          v161 = __Block_byref_object_dispose__6715;
          v162 = 0;
          v99 = v76;
          if (!v76)
          {
            v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile not found for %@ - Bailing out", v19];
            v82 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
            {
              *v151 = 136315394;
              *&v151[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
              *&v151[12] = 2114;
              *&v151[14] = v97;
              _os_log_error_impl(&dword_225E12000, v82, OS_LOG_TYPE_ERROR, "%s %{public}@", v151, 0x16u);
            }

            v83 = MEMORY[0x277CCA9B8];
            v157 = *MEMORY[0x277CCA450];
            v158 = v97;
            v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
            v85 = [v83 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v84];
            (v21)[2](v21, v85);

            goto LABEL_97;
          }

          v77 = [v76 locale];
          v78 = [v77 isEqualToString:v103];

          if ((v78 & 1) == 0)
          {
            v86 = MEMORY[0x277CCACA8];
            v87 = [v99 locale];
            v98 = [v86 stringWithFormat:@"ERR: Voice Profile locale %@ not matching with %@ - Bailing out", v87, v103];

            v88 = *v22;
            if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
            {
              *v151 = 136315394;
              *&v151[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
              *&v151[12] = 2114;
              *&v151[14] = v98;
              _os_log_error_impl(&dword_225E12000, v88, OS_LOG_TYPE_ERROR, "%s %{public}@", v151, 0x16u);
            }

            v89 = MEMORY[0x277CCA9B8];
            v155 = *MEMORY[0x277CCA450];
            v156 = v98;
            v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
            v91 = [v89 errorWithDomain:@"com.apple.speakerrecognition" code:732 userInfo:v90];
            (v21)[2](v21, v91);

            goto LABEL_97;
          }

          v79 = [v105 objectForKeyedSubscript:@"shouldRecordPayload"];
          v96 = [v79 BOOLValue];

          *v151 = 0;
          *&v151[8] = v151;
          *&v151[16] = 0x3032000000;
          v152 = __Block_byref_object_copy__6714;
          v153 = __Block_byref_object_dispose__6715;
          v154 = v16;
          v127[0] = 0;
          v127[1] = v127;
          v127[2] = 0x3032000000;
          v127[3] = __Block_byref_object_copy__6714;
          v127[4] = __Block_byref_object_dispose__6715;
          v128 = 0;
          v121 = 0;
          v122 = &v121;
          v123 = 0x3032000000;
          v124 = __Block_byref_object_copy__6714;
          v125 = __Block_byref_object_dispose__6715;
          v80 = v154;
          v126 = v80;
          if (CSIsCommunalDevice())
          {
            if ((v96 & 1) == 0)
            {
              v81 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
              {
                *v145 = 136315394;
                v146 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                v147 = 2114;
                v148 = v80;
                _os_log_impl(&dword_225E12000, v81, OS_LOG_TYPE_DEFAULT, "%s Privacy disallowed implicit utterance %{public}@ - skipping", v145, 0x16u);
              }

              v21[2](v21, 0);
              goto LABEL_96;
            }
          }

          else
          {
            v119[0] = MEMORY[0x277D85DD0];
            v119[1] = 3221225472;
            v119[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_111;
            v119[3] = &unk_278578DE0;
            v120[1] = buf;
            v120[2] = &v121;
            v120[3] = v151;
            v120[4] = v127;
            v120[0] = v99;
            [SSRUtils segmentVoiceTriggerFromAudioFile:v80 withVTEventInfo:v106 withStorePayloadPortion:v96 withCompletion:v119];
            v92 = *(*&buf[8] + 40);
            if (v92)
            {
              v93 = v120;
              v94 = *v22;
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                *v145 = 136315650;
                v146 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
                v147 = 2114;
                v148 = v80;
                v149 = 2114;
                v150 = v92;
                _os_log_error_impl(&dword_225E12000, v94, OS_LOG_TYPE_ERROR, "%s ERR: Failed to segment %{public}@ with %{public}@ - Bailing out", v145, 0x20u);
                v92 = *(*&buf[8] + 40);
              }

              v21[2](v21, v92);
              goto LABEL_95;
            }
          }

          v95 = v122[5];
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_114;
          v109[3] = &unk_278578E08;
          v116 = buf;
          v110 = v106;
          v111 = v80;
          v117 = v151;
          v112 = v100;
          v113 = v101;
          v114 = v99;
          v118 = v127;
          v115 = v21;
          [v102 addImplicitUtterance:v95 toVoiceProfile:v114 withAsset:v56 withTriggerSource:v112 withAudioInput:v113 withCompletion:v109];

          v93 = &v110;
LABEL_95:

LABEL_96:
          _Block_object_dispose(&v121, 8);

          _Block_object_dispose(v127, 8);
          _Block_object_dispose(v151, 8);

LABEL_97:
          _Block_object_dispose(buf, 8);

LABEL_98:
          goto LABEL_99;
        }

LABEL_48:
        v21[2](v21, 0);
LABEL_49:

        goto LABEL_19;
      }

      v48 = *v22;
      if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
      v49 = "%s ERR: SAT did not trigger!!! - Bailing out";
    }

    _os_log_error_impl(&dword_225E12000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0xCu);
    goto LABEL_48;
  }

  v29 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]";
    v30 = "%s Implicit training has been disabled -- Bailing out";
LABEL_9:
    _os_log_impl(&dword_225E12000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
  }

LABEL_18:
  v21[2](v21, 0);
LABEL_19:

  _Block_object_dispose(v142, 8);
  v39 = *MEMORY[0x277D85DE8];
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      if (!v5)
      {
        v5 = @"primary";
      }

      v11 = 136315650;
      v12 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      v15 = 2114;
      v16 = v3;
      _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: Finished implicit training for %@ with error %{public}@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"primary";
    if (a1[4])
    {
      v6 = a1[4];
    }

    v11 = 136315394;
    v12 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Finished implicit training for %@", &v11, 0x16u);
  }

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = a1[5];
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_90(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteDeviceUID];
  v3 = [v2 UUIDString];

  v4 = [[SSRRemoteControlClient alloc] initWithRemoteDeviceUUID:v3];
  v5 = *(a1 + 40);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;

  if ([*(*(a1 + 40) + 32) waitingForConnection:0 error:3.0])
  {
    v7 = *(*(a1 + 40) + 32);
    v8 = [*(a1 + 48) path];
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = *(a1 + 80);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_2;
    v15[3] = &unk_2785796F8;
    v16 = *(a1 + 48);
    v17 = *(a1 + 88);
    [v7 addImplicitTrainingUtteranceToRemoteFilePath:v8 forVoiceProfileId:v9 withVoiceTriggerCtxt:v10 locale:v11 withOtherCtxt:v12 completion:v15];
  }

  else
  {
    v13 = *(a1 + 88);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1001 userInfo:&unk_283933798];
    (*(v13 + 16))(v13, v14);
  }
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_111(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  if (!*(*(*(a1 + 40) + 8) + 40) && CSIsOSX())
  {
    v11 = [*(*(*(a1 + 56) + 8) + 40) lastPathComponent];
    v12 = [*(a1 + 32) voiceProfileImplicitCacheDirPath];
    v13 = [SSRUtils createDirectoryIfDoesNotExist:v12];
    v14 = MEMORY[0x277CBEBC0];
    v24[0] = v12;
    v24[1] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v16 = [v14 fileURLWithPathComponents:v15];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [*(*(*(a1 + 56) + 8) + 40) path];
    v20 = [*(*(*(a1 + 48) + 8) + 40) path];
    v21 = *(*(a1 + 40) + 8);
    obj = *(v21 + 40);
    [SSRUtils encryptFileAt:v19 andSaveTo:v20 error:&obj];
    objc_storeStrong((v21 + 40), obj);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_114(uint64_t a1, void *a2)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a2);
  if (v4)
  {
    v5 = [*(*(*(a1 + 80) + 8) + 40) code];
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 40);
    if (v5 == 757)
    {
      *(v6 + 40) = 0;

      v8 = *MEMORY[0x277D01970];
      if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      v48 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v9 = "%s Voice Profile is full - Ignoring";
LABEL_10:
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if ([v7 code] == 735)
    {
      v18 = *(*(a1 + 80) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = 0;

      v8 = *MEMORY[0x277D01970];
      if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 136315138;
      v48 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v9 = "%s Implicit Policy not satisfied - Ignoring";
      goto LABEL_10;
    }

    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      v22 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 136315650;
      v48 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v49 = 2114;
      v50 = v21;
      v51 = 2114;
      v52 = v22;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: Failed to process implicit utterance %{public}@ with error %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D01ED0]];
    v11 = [v10 unsignedLongLongValue];

    v12 = +[SSRBiometricMatch sharedInstance];
    v13 = [v12 getLastBiometricMatchForVoiceTriggerTimeStamp:v11];

    v14 = *MEMORY[0x277D01B38];
    v15 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D01B38]];
    if (v15)
    {
      v16 = [*(a1 + 32) objectForKeyedSubscript:v14];
      v17 = [v16 BOOLValue];
    }

    else
    {
      v17 = 0;
    }

    v23 = MEMORY[0x277D01970];
    v24 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      *buf = 136315394;
      v48 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
      v49 = 2114;
      v50 = v25;
      _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Processed implicit utterance %{public}@ successfully", buf, 0x16u);
    }

    if ((CSIsCommunalDevice() & 1) == 0)
    {
      v26 = [*(*(*(a1 + 88) + 8) + 40) path];
      LOBYTE(v45) = 0;
      [SSRVoiceProfileMetadataManager saveUtteranceMetadataForUtterance:v26 enrollmentType:@"implicit" isHandheldEnrollment:v17 triggerSource:*(a1 + 48) audioInput:*(a1 + 56) otherBiometricResult:v13 containsPayload:v45];

      v27 = *(a1 + 64);
      v54[0] = *(*(*(a1 + 88) + 8) + 40);
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
      v29 = [v27 addUtterances:v28 spIdType:1];

      v30 = *(*(*(a1 + 96) + 8) + 40);
      if (v30)
      {
        v31 = [v30 path];
        LOBYTE(v46) = 1;
        [SSRVoiceProfileMetadataManager saveUtteranceMetadataForUtterance:v31 enrollmentType:@"implicit" isHandheldEnrollment:v17 triggerSource:*(a1 + 48) audioInput:*(a1 + 56) otherBiometricResult:v13 containsPayload:v46];

        v32 = *(a1 + 64);
        v53 = *(*(*(a1 + 96) + 8) + 40);
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
        v34 = [v32 addUtterances:v33 spIdType:3];
      }

      v35 = *v23;
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v48 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke";
        _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Generate profile change notification", buf, 0xCu);
      }

      notify_post("com.apple.voicetrigger.PHSProfileModified");
    }
  }

LABEL_22:
  v36 = *(*(*(a1 + 88) + 8) + 40);
  if (v36)
  {
    v37 = [v36 path];
    [SSRUtils removeItemAtPath:v37];
  }

  v38 = *(*(*(a1 + 96) + 8) + 40);
  if (v38)
  {
    v39 = [v38 path];
    [SSRUtils removeItemAtPath:v39];
  }

  if (CSIsOSX())
  {
    v40 = [*(a1 + 64) voiceProfileImplicitCacheDirPath];
    v41 = [SSRUtils removeItemAtPath:v40];

    v42 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v42 postNotificationName:@"com.apple.voicetrigger.speakermodelUpdated" object:0];
  }

  v43 = *(*(*(a1 + 80) + 8) + 40);
  (*(*(a1 + 72) + 16))();

  v44 = *MEMORY[0x277D85DE8];
}

void __182__SSRVoiceProfileManager_notifyImplicitTrainingUtteranceAvailable_forVoiceProfileId_withRecordDeviceInfo_withRecordCtxt_withVoiceTriggerCtxt_withOtherCtxt_assetToUse_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v8 = v4;
      v9 = [v3 localizedDescription];
      v10 = 136315394;
      v11 = "[SSRVoiceProfileManager notifyImplicitTrainingUtteranceAvailable:forVoiceProfileId:withRecordDeviceInfo:withRecordCtxt:withVoiceTriggerCtxt:withOtherCtxt:assetToUse:withCompletion:]_block_invoke_2";
      v12 = 2114;
      v13 = v9;
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s Failed to add implicit training utterance to remote, error: %{public}@", &v10, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v5 path];
    [SSRUtils removeItemAtPath:v6];
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isImplicitTrainingRequiredForVoiceProfileId:(id)a3 locale:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__SSRVoiceProfileManager_isImplicitTrainingRequiredForVoiceProfileId_locale_completion___block_invoke;
  v24[3] = &unk_278578D60;
  v10 = v7;
  v25 = v10;
  v11 = v8;
  v26 = v11;
  v12 = v9;
  v27 = v12;
  v13 = MEMORY[0x22AA71400](v24);
  v14 = +[SSRAssetManager sharedManager];
  v15 = [v14 installedAssetOfType:3 forLanguage:v11];

  v16 = +[SSRVoiceProfileStore sharedInstance];
  v17 = [SSRUtils getVoiceProfileForSiriProfileId:v10 forLanguageCode:v11];
  if (v15 && [v15 satImplicitTrainingEnabled] && v16 && v17 && (objc_msgSend(v17, "locale"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", v11), v18, v19))
  {
    [v16 isImplicitTrainingRequiredToVoiceProfile:v17 withAsset:v15 completion:v13];
  }

  else
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v17 locale];
      *buf = 136316162;
      v29 = "[SSRVoiceProfileManager isImplicitTrainingRequiredForVoiceProfileId:locale:completion:]";
      v30 = 2114;
      v31 = v15;
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      v36 = 2114;
      v37 = v22;
      _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Implicit training not needed since: asset(%{public}@), profileStore(%{public}@), profile(%{public}@), profile locale(%{public}@)", buf, 0x34u);
    }

    v13[2](v13, 0, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __88__SSRVoiceProfileManager_isImplicitTrainingRequiredForVoiceProfileId_locale_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = a1[4];
    v9 = a1[5];
    if (a2)
    {
      v7 = @"YES";
    }

    v12 = 136315906;
    v13 = "[SSRVoiceProfileManager isImplicitTrainingRequiredForVoiceProfileId:locale:completion:]_block_invoke";
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s isImplicitTraining required for profileId %{public}@, locale(%{public}@) ? %{public}@", &v12, 0x2Au);
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addUtterances:(id)a3 toProfile:(id)a4 withContext:(id)a5 doUtteranceDonation:(BOOL)a6 withCompletion:(id)a7
{
  v8 = a6;
  v61[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = +[SSRVoiceProfileStore sharedInstance];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__6714;
  v50 = __Block_byref_object_dispose__6715;
  v51 = 0;
  if (!v13)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: profile is nil - Bailing out"];
    v28 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else if (!v15)
    {
      goto LABEL_17;
    }

    v29 = MEMORY[0x277CCA9B8];
    v60 = @"reason";
    v61[0] = v23;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v31 = [v29 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v30];
    v15[2](v15, v31);

    goto LABEL_17;
  }

  if (!v14)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Context is nil - Bailing out"];
    v32 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_error_impl(&dword_225E12000, v32, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else if (!v15)
    {
      goto LABEL_17;
    }

    v33 = MEMORY[0x277CCA9B8];
    v58 = @"reason";
    v59 = v23;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v35 = [v33 errorWithDomain:@"com.apple.speakerrecognition" code:713 userInfo:v34];
    v15[2](v15, v35);

    goto LABEL_17;
  }

  v17 = [v13 addUtterances:v12 spIdType:{objc_msgSend(v14, "spIdType")}];
  v18 = v47[5];
  v47[5] = v17;

  v19 = v47;
  if (v47[5])
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [v13 profileID];
    v22 = [v47[5] localizedDescription];
    v23 = [v20 stringWithFormat:@"ERR: Failed to copy %@ to %@, error: %@", v12, v21, v22];

    v24 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]";
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      if (!v15)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }

    if (v15)
    {
LABEL_6:
      v25 = MEMORY[0x277CCA9B8];
      v56 = @"reason";
      v57 = v23;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v27 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v26];
      v15[2](v15, v27);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v53 = __Block_byref_object_copy__6714;
      v54 = __Block_byref_object_dispose__6715;
      v55 = 0;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke;
      v43[3] = &unk_278578D10;
      v45 = buf;
      v44 = v13;
      [v12 enumerateObjectsUsingBlock:v43];

      _Block_object_dispose(buf, 8);
      v19 = v47;
      v36 = v47[5];
    }

    else
    {
      v36 = 0;
    }

    v19[5] = 0;

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke_3;
    v38[3] = &unk_278578D38;
    v42 = &v46;
    v41 = v15;
    v39 = v13;
    v40 = self;
    [v16 addUserVoiceProfile:v39 withContext:v14 withCompletion:v38];

    v23 = v41;
  }

LABEL_17:

  _Block_object_dispose(&v46, 8);
  v37 = *MEMORY[0x277D85DE8];
}

void __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEB28];
  v6 = a2;
  v7 = [v5 data];
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke_2;
  v13[3] = &unk_278578CE8;
  v15 = *(a1 + 40);
  v8 = v7;
  v14 = v8;
  [SSRUtils streamAudioFromFileUrl:v6 audioStreamBasicDescriptor:v16 samplesPerStreamChunk:640 audioDataAvailableHandler:v13];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = +[SSRVoiceProfileComposer sharedTrainer];
    v11 = [v8 copy];
    v12 = [*(a1 + 32) locale];
    [v10 logEnrollmentUtterance:v11 locale:v12 utteranceId:a3 mhUUID:v9 phId:0];
  }
}

void __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (a2)
  {
    v7 = [*(a1 + 32) appDomain];
    v8 = [v7 isEqualToString:@"com.apple.siri"];

    if (v8)
    {
      if ([*(a1 + 32) markSATEnrollmentSuccess])
      {
        if (CSIsIOS() && (CSIsCommunalDevice() & 1) == 0)
        {
          v9 = *(a1 + 40);
          v10 = [*(a1 + 32) locale];
          [v9 _markVoiceProfileTrainingSyncForLanguage:v10];
        }

        v11 = *(a1 + 48);
        if (v11)
        {
          (*(v11 + 16))(v11, 0);
        }

        notify_post("com.apple.voicetrigger.PHSProfileModified");
      }

      else
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = [*(a1 + 32) profileID];
        v16 = [v14 stringWithFormat:@"ERR: Failed in marking Enrollment as Successful for profile %@", v15];

        v17 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]_block_invoke";
          v27 = 2114;
          v28 = v16;
          _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
        }

        v18 = *(a1 + 48);
        if (v18)
        {
          v19 = MEMORY[0x277CCA9B8];
          v23 = *MEMORY[0x277CCA450];
          v24 = v16;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          v21 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:723 userInfo:v20];
          (*(v18 + 16))(v18, v21);
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[SSRVoiceProfileManager addUtterances:toProfile:withContext:doUtteranceDonation:withCompletion:]_block_invoke_3";
      v27 = 2114;
      v28 = v6;
      _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s ERR: Failed to add profile into the store with error %{public}@", buf, 0x16u);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(*(a1 + 56) + 8) + 40));
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
}

void __97__SSRVoiceProfileManager_addUtterances_toProfile_withContext_doUtteranceDonation_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:*(a2 + 16) length:*(a2 + 12)];
    if (v8)
    {
      [*(a1 + 32) appendData:v8];
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16[0] = @"dataChunk being nil";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v11 = [v9 errorWithDomain:@"com.apple.speakerrecognition" code:0 userInfo:v10];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)updateVoiceProfile:(id)a3 withUserName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSRVoiceProfileStore sharedInstance];
  v8 = [v7 updateVoiceProfile:v6 withUserName:v5];

  return v8;
}

- (id)newVoiceProfileWithLocale:(id)a3 withAppDomain:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:v6 withAppDomain:v5];

  return v7;
}

- (id)_getVoiceProfilesForSiriProfileId:(id)a3 withLanguageCode:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SSRVoiceProfileManager *)self provisionedVoiceProfilesForAppDomain:@"com.apple.siri" withLocale:a4];
  if ([v7 count])
  {
    if (CSIsCommunalDevice())
    {
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v24 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = v10;
      v12 = *v26;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 siriProfileId];
          if ([v15 isEqualToString:v6])
          {
          }

          else
          {
            v16 = [v14 profileID];
            v17 = [v16 isEqualToString:v6];

            if (!v17)
            {
              continue;
            }
          }

          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (!v11)
        {
LABEL_14:

          if ([v8 count])
          {
            v18 = v8;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;

          v7 = v24;
          goto LABEL_25;
        }
      }
    }

    if ([v7 count] >= 2)
    {
      v21 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "[SSRVoiceProfileManager _getVoiceProfilesForSiriProfileId:withLanguageCode:]";
        v32 = 2114;
        v33 = v7;
        _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s ERR: More than one Siri Voice Profiles - %{public}@", buf, 0x16u);
      }
    }

    v19 = v7;
  }

  else
  {
    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[SSRVoiceProfileManager _getVoiceProfilesForSiriProfileId:withLanguageCode:]";
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: No configured Siri Profiles", buf, 0xCu);
    }

    v19 = 0;
  }

LABEL_25:

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)discardSiriEnrollmentForProfileId:(id)a3 forLanguageCode:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SSRVoiceProfileManager *)self _getVoiceProfilesForSiriProfileId:v6 withLanguageCode:v7];
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (v8)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[SSRVoiceProfileManager discardSiriEnrollmentForProfileId:forLanguageCode:]";
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Discarding voice profiles for siriSharedUserId: %@", buf, 0x16u);
    }

    v23 = v7;
    v24 = v6;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          v17 = v14;
          if (*v26 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v14 = [(SSRVoiceProfileManager *)self deleteUserVoiceProfile:v18];

          if (v14)
          {
            v19 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v31 = "[SSRVoiceProfileManager discardSiriEnrollmentForProfileId:forLanguageCode:]";
              v32 = 2114;
              v33 = v18;
              v34 = 2114;
              v35 = v14;
              _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete %{public}@ with error %{public}@", buf, 0x20u);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v7 = v23;
    v6 = v24;
    v8 = v22;
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v31 = "[SSRVoiceProfileManager discardSiriEnrollmentForProfileId:forLanguageCode:]";
      v32 = 2114;
      v33 = v6;
      v34 = 2114;
      v35 = v7;
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Profile not available for %{public}@ & %{public}@ - Bailing out", buf, 0x20u);
    }

    v14 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)SSRBasePathForAppDomain:(id)a3
{
  v3 = a3;
  v4 = +[SSRUtils baseDir];
  v5 = [v4 stringByAppendingPathComponent:@"VoiceTrigger/SAT"];
  v6 = [v5 stringByAppendingPathComponent:v3];

  return v6;
}

- (id)SSRSpeakerProfilesBasePath
{
  v2 = +[SSRUtils baseDir];
  v3 = [v2 stringByAppendingPathComponent:@"VoiceTrigger/SAT"];

  return v3;
}

- (id)getSATEnrollmentPath
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(SSRVoiceProfileManager *)self SSRSpeakerProfilesBasePath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

  v6 = 0;
  if (v5)
  {
    v7 = MEMORY[0x277CBEA60];
    v8 = [(SSRVoiceProfileManager *)self SSRSpeakerProfilesBasePath];
    v6 = [v7 arrayWithObjects:{v8, 0}];
  }

  return v6;
}

- (SSRVoiceProfileManager)initWithEndpointId:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SSRVoiceProfileManager;
  v5 = [(SSRVoiceProfileManager *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D018F8] deviceProductType];
    v5->_currentDeviceCategory = [SSRUtils deviceCategoryForDeviceProductType:v6];

    v7 = dispatch_queue_create("com.apple.cs.profileManager", 0);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [v4 copy];
    endpointUUID = v5->_endpointUUID;
    v5->_endpointUUID = v9;

    lastRepromptedDate = v5->_lastRepromptedDate;
    v5->_lastRepromptedDate = @"<unset>";
  }

  return v5;
}

+ (void)clearVTEnableAfterProfileSyncFlag
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[SSRVoiceProfileManager clearVTEnableAfterProfileSyncFlag]";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Clearing the VT enable flag upon profile sync", &v4, 0xCu);
  }

  _CSNotBackedupPreferencesSetValueForKey();
  CSNotBackedupInternalPreferencesSynchronize();
  v3 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstanceWithEndpointId:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3 && sharedInstanceWithEndpointId__sharedVoiceProfileManager && ([sharedInstanceWithEndpointId__sharedVoiceProfileManager endpointUUID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 != v3))
  {
    v5 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v9 = sharedInstanceWithEndpointId__sharedVoiceProfileManager;
      v10 = v5;
      v11 = [v9 endpointUUID];
      *buf = 136315650;
      v15 = "+[SSRVoiceProfileManager sharedInstanceWithEndpointId:]";
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s sharedVoiceProfileManager already instantiated with a different endpointUUID. existing-endpointUUID:%@ requested-endpointUUID:%@", buf, 0x20u);
    }

    v6 = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SSRVoiceProfileManager_sharedInstanceWithEndpointId___block_invoke;
    block[3] = &unk_2785797A8;
    v13 = v3;
    if (sharedInstanceWithEndpointId__onceToken != -1)
    {
      dispatch_once(&sharedInstanceWithEndpointId__onceToken, block);
    }

    v6 = sharedInstanceWithEndpointId__sharedVoiceProfileManager;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __55__SSRVoiceProfileManager_sharedInstanceWithEndpointId___block_invoke(uint64_t a1)
{
  SSRLogInitIfNeeded();
  sharedInstanceWithEndpointId__sharedVoiceProfileManager = [[SSRVoiceProfileManager alloc] initWithEndpointId:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

@end