@interface SSRVoiceProfileStore
+ (id)sharedInstance;
- (BOOL)_checkIfRetrainingRequiredForProfile:(id)profile;
- (BOOL)checkIfVoiceProfile:(id)profile needsUpdatedWith:(id)with withCategory:(unint64_t)category;
- (BOOL)cleanupDuplicatedProfiles;
- (BOOL)evaluateImplicitAdditionPolicyWithScores:(id)scores forProfile:(id)profile withImplicitThreshold:(float)threshold withDeltaThreshold:(float)deltaThreshold;
- (id)_deleteUserVoiceProfile:(id)profile;
- (id)_enrolledVoiceProfiles;
- (id)_getTopScoringProfileIdFromScores:(id)scores;
- (id)_retrainVoiceProfile:(id)profile withContext:(id)context;
- (id)_retrainVoiceProfile:(id)profile withContext:(id)context withUtterances:(id)utterances;
- (id)copyAudioFiles:(id)files toProfile:(id)profile forModelType:(unint64_t)type;
- (id)deleteUserVoiceProfile:(id)profile;
- (id)initStore;
- (id)loadCurrentVoiceProfiles;
- (id)updateVoiceProfile:(id)profile withUserName:(id)name;
- (id)updateVoiceProfile:(id)profile withUserName:(id)name withBasePathExclave:(id)exclave;
- (id)userVoiceProfileForVoiceProfileID:(id)d;
- (id)userVoiceProfilesForAppDomain:(id)domain;
- (id)userVoiceProfilesForAppDomain:(id)domain forLocale:(id)locale;
- (id)userVoiceProfilesForLocale:(id)locale;
- (void)_logVoiceProfileConfusionWithCleanup:(BOOL)cleanup;
- (void)_retrainLiveOnOnboardedProfilesForLanguage:(id)language withForceRetrain:(BOOL)retrain withCompletion:(id)completion;
- (void)_saveTrainedUsers:(id)users;
- (void)_synchronizeSiriVoiceProfilesWithAssistant;
- (void)_updateTrainedUsersWithAction:(unint64_t)action UserVoiceProfile:(id)profile;
- (void)addImplicitUtterance:(id)utterance toVoiceProfile:(id)profile withAsset:(id)asset withTriggerSource:(id)source withAudioInput:(id)input withCompletion:(id)completion;
- (void)addUserVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion;
- (void)cleanupDuplicatesForProfile:(id)profile;
- (void)cleanupInvalidSiriProfilesFromPersonalDevicesForLanguage:(id)language appDomain:(id)domain;
- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAsset:(id)asset;
- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAssets:(id)assets;
- (void)cleanupVoiceProfileStore:(id)store;
- (void)isImplicitTrainingRequiredToVoiceProfile:(id)profile withAsset:(id)asset completion:(id)completion;
- (void)logVoiceProfileConfusionWithCleanup:(BOOL)cleanup;
- (void)migrateVoiceProfilesIfNeededWithCompletionBlock:(id)block;
- (void)retrainVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion;
- (void)saveVoiceProfiles:(id)profiles completion:(id)completion;
@end

@implementation SSRVoiceProfileStore

- (id)copyAudioFiles:(id)files toProfile:(id)profile forModelType:(unint64_t)type
{
  v51 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v8 = [profile voiceProfileAudioDirPathForSpidType:type];
  v35 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v9 = [SSRUtils createDirectoryIfDoesNotExist:v8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = filesCopy;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (!v11)
  {
    v21 = v10;
    goto LABEL_19;
  }

  v33 = v8;
  obj = v10;
  v12 = *v39;
  v13 = v35;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v38 + 1) + 8 * i);
      uRLByDeletingPathExtension = [v15 URLByDeletingPathExtension];
      v17 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"json"];

      lastPathComponent = [v17 lastPathComponent];
      v19 = [v13 URLByAppendingPathComponent:lastPathComponent];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v37 = 0;
      [defaultManager copyItemAtURL:v17 toURL:v19 error:&v37];
      v21 = v37;

      if (v21)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy %@ to %@ with error %@", v17, v19, v21];
        v25 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v47 = "[SSRVoiceProfileStore copyAudioFiles:toProfile:forModelType:]";
          v48 = 2112;
          v49 = v23;
          _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
        }

        v26 = MEMORY[0x277CCA9B8];
        v44 = @"reason";
        v45 = v23;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v11 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v27];
        goto LABEL_18;
      }

      lastPathComponent2 = [v15 lastPathComponent];
      v23 = [v13 URLByAppendingPathComponent:lastPathComponent2];

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = 0;
      [defaultManager2 copyItemAtURL:v15 toURL:v23 error:&v36];
      v21 = v36;

      if (v21)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy %@ to %@ with error %@", v15, v23, v21];
        v28 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v47 = "[SSRVoiceProfileStore copyAudioFiles:toProfile:forModelType:]";
          v48 = 2112;
          v49 = v27;
          _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
        }

        v29 = MEMORY[0x277CCA9B8];
        v42 = @"reason";
        v43 = v27;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v11 = [v29 errorWithDomain:@"com.apple.speakerrecognition" code:721 userInfo:v30];

LABEL_18:
        v8 = v33;
        v10 = obj;

        goto LABEL_19;
      }

      v13 = v35;
    }

    v10 = obj;
    v11 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  v21 = obj;
  v8 = v33;
LABEL_19:

  v31 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_retrainVoiceProfile:(id)profile withContext:(id)context withUtterances:(id)utterances
{
  v71[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  contextCopy = context;
  utterancesCopy = utterances;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__7847;
  v58 = __Block_byref_object_dispose__7848;
  v59 = 0;
  v41 = contextCopy;
  spIdType = [contextCopy spIdType];
  appDomain = [profileCopy appDomain];
  if ([appDomain isEqualToString:@"com.apple.siri"])
  {
    if (!utterancesCopy)
    {

LABEL_29:
      utterancesCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Too less (%d) audio files in %@ ", objc_msgSend(utterancesCopy, "count"), utterancesCopy];
      v35 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *location = 136315394;
        *&location[4] = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]";
        v61 = 2112;
        v62 = utterancesCopy;
        _os_log_error_impl(&dword_225E12000, v35, OS_LOG_TYPE_ERROR, "%s ERR: %@", location, 0x16u);
      }

      mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
      [mEMORY[0x277D01708] submitVoiceIdIssueReport:*MEMORY[0x277D01A80]];

      v37 = MEMORY[0x277CCA9B8];
      v70 = @"reason";
      v71[0] = utterancesCopy;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
      v27 = [v37 errorWithDomain:@"com.apple.speakerrecognition" code:728 userInfo:?];
      goto LABEL_32;
    }

    v10 = [utterancesCopy count] < 3;

    if (v10)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  utterancesCopy = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
  v11 = [(SSRVoiceProfileRetrainerFactory *)utterancesCopy voiceRetrainersWithContext:v41];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = [v11 count];
    v12 = v13;
    if (v14)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v50 objects:v67 count:16];
      if (!v16)
      {
        goto LABEL_24;
      }

      v17 = *v51;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v50 + 1) + 8 * i);
          if ([v19 needsRetrainingWithAudioFiles:utterancesCopy])
          {
            if ([v19 resetModelForRetraining])
            {
              objc_initWeak(location, v19);
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __72__SSRVoiceProfileStore__retrainVoiceProfile_withContext_withUtterances___block_invoke;
              v44[3] = &unk_2785795C8;
              v48 = &v54;
              objc_copyWeak(&v49, location);
              v45 = profileCopy;
              v46 = v19;
              v47 = v41;
              [v19 addUtterances:utterancesCopy withPolicy:0 withCompletion:v44];

              objc_destroyWeak(&v49);
              objc_destroyWeak(location);
              continue;
            }

            v20 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              profileID = [profileCopy profileID];
              v25 = [SSRUtils stringForCSSpIdType:spIdType];
              v26 = +[SSRUtils stringForVoiceProfileRetrainerType:](SSRUtils, "stringForVoiceProfileRetrainerType:", [v19 retrainerType]);
              *location = 136315906;
              *&location[4] = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]";
              v61 = 2114;
              v62 = profileID;
              v63 = 2114;
              v64 = v25;
              v65 = 2114;
              v66 = v26;
              _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: Failed resetting for %{public}@ - for {%{public}@, %{public}@}", location, 0x2Au);
            }
          }

          else
          {
            v20 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              profileID2 = [profileCopy profileID];
              v22 = [SSRUtils stringForCSSpIdType:spIdType];
              v23 = +[SSRUtils stringForVoiceProfileRetrainerType:](SSRUtils, "stringForVoiceProfileRetrainerType:", [v19 retrainerType]);
              *location = 136315906;
              *&location[4] = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]";
              v61 = 2114;
              v62 = profileID2;
              v63 = 2114;
              v64 = v22;
              v65 = 2114;
              v66 = v23;
              _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Skipping retraining for %{public}@ - for {%{public}@, %{public}@}", location, 0x2Au);
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v50 objects:v67 count:16];
        if (!v16)
        {
LABEL_24:

          v27 = v55[5];
          v28 = v15;
          goto LABEL_32;
        }
      }
    }
  }

  v28 = v12;
  v29 = MEMORY[0x277CCACA8];
  profileID3 = [profileCopy profileID];
  v31 = [v29 stringWithFormat:@"Failed to init retrainers for profileID %@ with ctxt %@", profileID3, v41];

  v32 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *location = 136315394;
    *&location[4] = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]";
    v61 = 2112;
    v62 = v31;
    _os_log_error_impl(&dword_225E12000, v32, OS_LOG_TYPE_ERROR, "%s ERR: %@", location, 0x16u);
  }

  v33 = MEMORY[0x277CCA9B8];
  v68 = @"reason";
  v69 = v31;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v27 = [v33 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v34];

LABEL_32:
  _Block_object_dispose(&v54, 8);

  v38 = *MEMORY[0x277D85DE8];

  return v27;
}

void __72__SSRVoiceProfileStore__retrainVoiceProfile_withContext_withUtterances___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = WeakRetained;
  v57 = a1;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v53 = v8;
    v54 = v10;
    v56 = WeakRetained;
    v21 = [WeakRetained modelFilePath];
    v58 = [v21 URLByDeletingLastPathComponent];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v52 = v9;
    obj = v9;
    v22 = [obj countByEnumeratingWithState:&v64 objects:v83 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v65;
      v25 = MEMORY[0x277D01970];
      v55 = *v65;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v65 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *v25;
          if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(*(&v64 + 1) + 8 * i);
            v29 = v27;
            v30 = [v28 lastPathComponent];
            v31 = [*(v57 + 32) profileID];
            v32 = +[SSRUtils stringForCSSpIdType:](SSRUtils, "stringForCSSpIdType:", [*(v57 + 48) spIdType]);
            v33 = [v56 modelFilePath];
            v34 = [v33 lastPathComponent];
            v35 = [v58 lastPathComponent];
            v36 = [obj objectForKeyedSubscript:v28];
            *buf = 136316674;
            v70 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]_block_invoke";
            v71 = 2114;
            v72 = v30;
            v73 = 2114;
            v74 = v31;
            v75 = 2114;
            v76 = v32;
            v77 = 2114;
            v78 = v34;
            v79 = 2114;
            v80 = v35;
            v81 = 2114;
            v82 = v36;
            _os_log_impl(&dword_225E12000, v29, OS_LOG_TYPE_DEFAULT, "%s Added utterance %{public}@ to {%{public}@, %{public}@, %{public}@, %{public}@} with score %{public}@", buf, 0x48u);

            v24 = v55;
            v25 = MEMORY[0x277D01970];
          }
        }

        v23 = [obj countByEnumeratingWithState:&v64 objects:v83 count:16];
      }

      while (v23);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v37 = v54;
    v38 = [v37 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v61;
      v41 = MEMORY[0x277D01970];
      do
      {
        v42 = 0;
        do
        {
          if (*v61 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *v41;
          if (os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
          {
            v44 = *(*(&v60 + 1) + 8 * v42);
            v45 = v43;
            v46 = [v37 objectForKeyedSubscript:v44];
            *buf = 136315650;
            v70 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]_block_invoke";
            v71 = 2114;
            v72 = v44;
            v73 = 2114;
            v74 = v46;
            _os_log_error_impl(&dword_225E12000, v45, OS_LOG_TYPE_ERROR, "%s Rejected utterance %{public}@ with error %{public}@", buf, 0x20u);
          }

          ++v42;
        }

        while (v39 != v42);
        v39 = [v37 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v39);
    }

    v9 = v52;
    v8 = v53;
    v10 = v54;
    v12 = v56;
    goto LABEL_26;
  }

  v13 = MEMORY[0x277D01970];
  v14 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v48 = *(v57 + 32);
    v49 = v14;
    v50 = [v48 profileID];
    v51 = *(*(*(v57 + 56) + 8) + 40);
    *buf = 136315650;
    v70 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]_block_invoke";
    v71 = 2114;
    v72 = v50;
    v73 = 2114;
    v74 = v51;
    _os_log_error_impl(&dword_225E12000, v49, OS_LOG_TYPE_ERROR, "%s ERR: Failed in retraining %{public}@ with error %{public}@", buf, 0x20u);
  }

  v15 = [*(v57 + 40) modelFilePath];
  v16 = [v15 path];
  v17 = [SSRUtils removeItemAtPath:v16];

  v58 = v17;
  if (v17)
  {
    v18 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = [v12 modelFilePath];
      *buf = 136315394;
      v70 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:withUtterances:]_block_invoke";
      v71 = 2114;
      v72 = v20;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: Failed to delete the model at %{public}@", buf, 0x16u);
    }

LABEL_26:
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)_retrainVoiceProfile:(id)profile withContext:(id)context
{
  v107[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  contextCopy = context;
  appDomain = [profileCopy appDomain];
  v9 = [appDomain isEqualToString:@"com.apple.siri"];

  v10 = MEMORY[0x277D01970];
  if (!profileCopy)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"VoiceProfile is nil - Bailing out"];
    v18 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v96 = 2112;
      v97 = v12;
      _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v106 = @"reason";
    v107[0] = v12;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v107;
    v17 = &v106;
    goto LABEL_13;
  }

  if (!contextCopy)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"context is nil - Bailing out"];
    v19 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v96 = 2112;
      v97 = v12;
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v104 = @"reason";
    v105 = v12;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v105;
    v17 = &v104;
    goto LABEL_13;
  }

  spIdType = [contextCopy spIdType];
  if ((spIdType - 6) <= 0xFFFFFFFFFFFFFFFALL)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid spIdType %d - Bailing out", spIdType];
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v96 = 2112;
      v97 = v12;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v102 = @"reason";
    v103 = v12;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v103;
    v17 = &v102;
LABEL_13:
    v20 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v21 = [v14 errorWithDomain:@"com.apple.speakerrecognition" code:730 userInfo:v20];
    goto LABEL_14;
  }

  v85 = v9;
  selfCopy = self;
  v24 = [SSRUtils explicitSpIdTypeForSpId:spIdType];
  v20 = [profileCopy getEnrollmentUtterancesForModelType:spIdType];
  v82 = v24;
  v25 = [profileCopy getEnrollmentUtterancesForModelType:v24];
  v90 = [v20 mutableCopy];
  v26 = MEMORY[0x277CCACA8];
  profileID = [profileCopy profileID];
  v28 = [v26 stringWithFormat:@"SSRVoiceProfileStore retrainer - %@", profileID];

  [v28 UTF8String];
  v29 = os_transaction_create();
  v30 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
    v96 = 2048;
    v97 = v29;
    v98 = 2114;
    v99 = v28;
    _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Creating OS Transaction %p for %{public}@", buf, 0x20u);
  }

  v88 = v28;
  v31 = objc_autoreleasePoolPush();
  v87 = v29;
  if ([contextCopy filterToVoiceTriggerUtterances])
  {
    v32 = +[SSRAssetManager sharedManager];
    locale = [profileCopy locale];
    v34 = [v32 installedAssetOfType:0 forLanguage:locale];

    if (v34)
    {
      v35 = [MEMORY[0x277CBEB98] setWithArray:v20];
      v36 = [v35 mutableCopy];

      if ([v36 count] && objc_msgSend(v25, "count"))
      {
        v37 = [MEMORY[0x277CBEB98] setWithArray:v25];
        [v36 minusSet:v37];

        if ([v36 count])
        {
          allObjects = [v36 allObjects];
          locale2 = [profileCopy locale];
          contexta = [SSRTriggerPhraseDetector filterVTAudioFiles:allObjects withLocale:locale2 withAsset:v34];

          v40 = [v25 mutableCopy];
          [v40 addObjectsFromArray:contexta];

          v90 = v40;
        }

        else
        {
          v74 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
            _os_log_impl(&dword_225E12000, v74, OS_LOG_TYPE_DEFAULT, "%s No Implicit audio - ignoring filterToVoiceTriggerUtterances", buf, 0xCu);
          }
        }
      }

      else
      {
        v41 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
          v96 = 2114;
          v97 = v36;
          v98 = 2114;
          v99 = v25;
          _os_log_error_impl(&dword_225E12000, v41, OS_LOG_TYPE_ERROR, "%s ERR: ignoring filtering option as %{public}@ or %{public}@ is nil", buf, 0x20u);
        }
      }
    }

    else
    {
      v42 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v77 = v42;
        locale3 = [profileCopy locale];
        *buf = 136315394;
        v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
        v96 = 2114;
        v97 = locale3;
        _os_log_error_impl(&dword_225E12000, v77, OS_LOG_TYPE_ERROR, "%s ERR: ignoring filtering option as VTAssets not found on %{public}@", buf, 0x16u);
      }
    }
  }

  objc_autoreleasePoolPop(v31);
  context = objc_autoreleasePoolPush();
  date = [MEMORY[0x277CBEAA8] date];
  v44 = [(SSRVoiceProfileStore *)selfCopy _retrainVoiceProfile:profileCopy withContext:contextCopy withUtterances:v90];
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v47 = v46;
  logAggregator = [contextCopy logAggregator];
  [logAggregator setRetrainingWaitTime:v47];

  if (v44)
  {
    code = [v44 code];
    [contextCopy logAggregator];
    v51 = v50 = v25;
    [v51 setVoiceProfileRetrainingFailureReasonCode:code];

    v25 = v50;
    v52 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v75 = v52;
      v25 = v50;
      v76 = [SSRUtils stringForCSSpIdType:spIdType];
      *buf = 136315906;
      v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v96 = 2114;
      v97 = v76;
      v98 = 2114;
      v99 = profileCopy;
      v100 = 2114;
      v101 = v44;
      _os_log_error_impl(&dword_225E12000, v75, OS_LOG_TYPE_ERROR, "%s ERR: Failed training %{public}@ of %{public}@ with error %{public}@", buf, 0x2Au);
    }
  }

  logAggregator2 = [contextCopy logAggregator];
  [logAggregator2 pushAnalytics];

  objc_autoreleasePoolPop(context);
  v54 = objc_autoreleasePoolPush();
  if (!v85)
  {
    v58 = MEMORY[0x277D01970];
LABEL_50:
    objc_autoreleasePoolPop(v54);

    v73 = *v58;
    v70 = v88;
    if (os_log_type_enabled(*v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
      v96 = 2114;
      v97 = v88;
      _os_log_impl(&dword_225E12000, v73, OS_LOG_TYPE_DEFAULT, "%s Releasing OS Transaction %{public}@", buf, 0x16u);
    }

    v12 = v44;
    v21 = v12;
    goto LABEL_53;
  }

  v86 = v25;
  v55 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v55 setObject:profileCopy forKeyedSubscript:@"SSRVoiceRetrainingVoiceProfile"];
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v82];
  [v55 setObject:v56 forKeyedSubscript:@"SSRVoiceRetrainingSpIdType"];

  asset = [contextCopy asset];

  v58 = MEMORY[0x277D01970];
  if (asset)
  {
    asset2 = [contextCopy asset];
    [v55 setObject:asset2 forKeyedSubscript:@"SSRVoiceRetrainingAsset"];
  }

  secureAsset = [contextCopy secureAsset];

  if (secureAsset)
  {
    secureAsset2 = [contextCopy secureAsset];
    [v55 setObject:secureAsset2 forKeyedSubscript:@"SSRVoiceRetrainingSecureAsset"];
  }

  v91 = v44;
  v62 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v55 error:&v91];
  v12 = v91;

  if (!v12)
  {
    v71 = [(SSRVoiceProfileStore *)selfCopy _retrainVoiceProfile:profileCopy withContext:v62 withUtterances:v86];
    if (v71)
    {
      v72 = *v58;
      if (os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
      {
        v79 = v72;
        v80 = [SSRUtils stringForCSSpIdType:v82];
        siriProfileId = [profileCopy siriProfileId];
        *buf = 136315906;
        v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
        v96 = 2114;
        v97 = v80;
        v98 = 2114;
        v99 = v71;
        v100 = 2114;
        v101 = siriProfileId;
        _os_log_error_impl(&dword_225E12000, v79, OS_LOG_TYPE_ERROR, "%s Failed to create %{public}@ model with error %{public}@ for profile %{public}@", buf, 0x2Au);

        v58 = MEMORY[0x277D01970];
      }
    }

    v44 = 0;
    v25 = v86;
    goto LABEL_50;
  }

  v63 = MEMORY[0x277CCACA8];
  profileID2 = [profileCopy profileID];
  v65 = [v63 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", profileID2, v12];

  v66 = *v58;
  if (os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
    v96 = 2112;
    v97 = v65;
    _os_log_error_impl(&dword_225E12000, v66, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
  }

  v67 = *v58;
  if (os_log_type_enabled(*v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v95 = "[SSRVoiceProfileStore _retrainVoiceProfile:withContext:]";
    v96 = 2114;
    v97 = v88;
    _os_log_impl(&dword_225E12000, v67, OS_LOG_TYPE_DEFAULT, "%s Releasing OS Transaction %{public}@", buf, 0x16u);
  }

  v68 = MEMORY[0x277CCA9B8];
  v92 = @"reason";
  v93 = v65;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  v21 = [v68 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v69];

  objc_autoreleasePoolPop(v54);
  v25 = v86;
  v70 = v88;
LABEL_53:

LABEL_14:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_retrainLiveOnOnboardedProfilesForLanguage:(id)language withForceRetrain:(BOOL)retrain withCompletion:(id)completion
{
  retrainCopy = retrain;
  v70 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  completionCopy = completion;
  selfCopy = self;
  v9 = [(SSRVoiceProfileStore *)self userVoiceProfilesForAppDomain:@"com.apple.siridebug" forLocale:languageCopy];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v58 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
    v59 = 2114;
    v60 = languageCopy;
    v61 = 1024;
    LODWORD(v62) = retrainCopy;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Retraining for locale %{public}@ with force %d", buf, 0x1Cu);
  }

  v42 = languageCopy;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v9;
  v44 = completionCopy;
  v47 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
  v11 = 0;
  if (!v47)
  {
    v50 = 0;
    goto LABEL_27;
  }

  v50 = 0;
  v12 = 0x277CBE000uLL;
  v45 = *v54;
  do
  {
    v13 = 0;
    v14 = v11;
    do
    {
      if (*v54 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v53 + 1) + 8 * v13);
      date = [*(v12 + 2728) date];
      v67[0] = @"SSRVoiceRetrainingVoiceProfile";
      v67[1] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
      v68[0] = v15;
      v68[1] = MEMORY[0x277CBEC38];
      v67[2] = @"SSRVoiceRetrainingForce";
      v17 = [MEMORY[0x277CCABB0] numberWithBool:retrainCopy];
      v68[2] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];

      v19 = [SSRVoiceProfileRetrainingContext alloc];
      v52 = v14;
      v20 = [(SSRVoiceProfileRetrainingContext *)v19 initWithVoiceRetrainingContext:v18 error:&v52];
      v11 = v52;

      if (!v11)
      {
        v28 = v50;
        goto LABEL_21;
      }

      v21 = v12;
      v22 = MEMORY[0x277CCACA8];
      profileID = [v15 profileID];
      v49 = [v22 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", profileID, v11];

      v24 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v58 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
        v59 = 2112;
        v60 = v49;
        _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      }

      if (v44)
      {
        v25 = MEMORY[0x277CCA9B8];
        v65 = @"reason";
        v66 = v49;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v27 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v26];
        (v44)[2](v44, v27);
      }

      v28 = [(SSRVoiceProfileStore *)selfCopy _retrainVoiceProfile:v15 withContext:v20];

      date2 = [*(v12 + 2728) date];
      [date2 timeIntervalSinceDate:date];
      v31 = v30 * 1000.0;
      v32 = *MEMORY[0x277D01970];
      v33 = *MEMORY[0x277D01970];
      if (v28)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = v32;
          profileID2 = [v15 profileID];
          *buf = 136315906;
          v58 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
          v59 = 2114;
          v60 = profileID2;
          v61 = 2114;
          v62 = *&v28;
          v63 = 2050;
          v64 = v31;
          _os_log_error_impl(&dword_225E12000, v34, OS_LOG_TYPE_ERROR, "%s ERR: Retraining failed for %{public}@ with error %{public}@ in %{public}fms", buf, 0x2Au);
LABEL_19:
        }
      }

      else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v32;
        profileID2 = [v15 profileID];
        *buf = 136315650;
        v58 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
        v59 = 2114;
        v60 = profileID2;
        v61 = 2050;
        v62 = v31;
        _os_log_impl(&dword_225E12000, v34, OS_LOG_TYPE_DEFAULT, "%s Retraining successfully finished for %{public}@ in %{public}fms", buf, 0x20u);
        goto LABEL_19;
      }

      v12 = v21;
LABEL_21:
      v50 = [(SSRVoiceProfileStore *)selfCopy _retrainVoiceProfile:v15 withContext:v20];

      date3 = [*(v12 + 2728) date];
      [date3 timeIntervalSinceDate:date];
      v37 = v36;
      v38 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
        profileID3 = [v15 profileID];
        *buf = 136315906;
        v58 = "[SSRVoiceProfileStore _retrainLiveOnOnboardedProfilesForLanguage:withForceRetrain:withCompletion:]";
        v59 = 2112;
        v60 = profileID3;
        v61 = 2112;
        v62 = *&v50;
        v63 = 2048;
        v64 = v37 * 1000.0;
        _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s Retraining finished for %@ with error %@ in %fms", buf, 0x2Au);
      }

      ++v13;
      v14 = v11;
    }

    while (v47 != v13);
    v47 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
  }

  while (v47);
LABEL_27:

  if (v44)
  {
    (v44)[2](v44, v50);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)updateVoiceProfile:(id)profile withUserName:(id)name withBasePathExclave:(id)exclave
{
  v32[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  nameCopy = name;
  exclaveCopy = exclave;
  profileID = [profileCopy profileID];
  v12 = [(SSRVoiceProfileStore *)self userVoiceProfileForVoiceProfileID:profileID];

  if (v12)
  {
    if (exclaveCopy)
    {
      [v12 setUserName:nameCopy];
      [v12 updateVoiceProfilePathExclave:exclaveCopy];
      v13 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        profileID2 = [profileCopy profileID];
        *buf = 136315650;
        v26 = "[SSRVoiceProfileStore updateVoiceProfile:withUserName:withBasePathExclave:]";
        v27 = 2114;
        v28 = profileID2;
        v29 = 2114;
        v30 = exclaveCopy;
        _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Updating profile %{public}@ with basePath %{public}@", buf, 0x20u);
      }

      [(SSRVoiceProfileStore *)self _updateTrainedUsersWithAction:2 UserVoiceProfile:v12];
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:758 userInfo:&unk_283933838];
    }
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    profileID3 = [profileCopy profileID];
    v19 = [v17 stringWithFormat:@"Voice Profile not found for profileId: %@ - Bailing out", profileID3];

    v20 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[SSRVoiceProfileStore updateVoiceProfile:withUserName:withBasePathExclave:]";
      v27 = 2114;
      v28 = v19;
      _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v31 = @"reason";
    v32[0] = v19;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v16 = [v21 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v22];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)updateVoiceProfile:(id)profile withUserName:(id)name
{
  v29[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  nameCopy = name;
  profileID = [profileCopy profileID];
  v9 = [(SSRVoiceProfileStore *)self userVoiceProfileForVoiceProfileID:profileID];

  if (v9)
  {
    [v9 setUserName:nameCopy];
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      profileID2 = [profileCopy profileID];
      *buf = 136315650;
      v23 = "[SSRVoiceProfileStore updateVoiceProfile:withUserName:]";
      v24 = 2114;
      v25 = profileID2;
      v26 = 2114;
      v27 = nameCopy;
      _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Updating profile %{public}@ with userName %{public}@", buf, 0x20u);
    }

    [(SSRVoiceProfileStore *)self _updateTrainedUsersWithAction:2 UserVoiceProfile:v9];
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    profileID3 = [profileCopy profileID];
    v16 = [v14 stringWithFormat:@"Voice Profile not found for profileId: %@ - Bailing out", profileID3];

    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SSRVoiceProfileStore updateVoiceProfile:withUserName:]";
      v24 = 2114;
      v25 = v16;
      _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v28 = @"reason";
    v29[0] = v16;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v13 = [v18 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v19];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_saveTrainedUsers:(id)users
{
  v18 = *MEMORY[0x277D85DE8];
  usersCopy = users;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(usersCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = usersCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dictionaryRepresentation = [*(*(&v13 + 1) + 8 * v10) dictionaryRepresentation];
        [v5 addObject:dictionaryRepresentation];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(SSRVoiceProfileStorePrefs *)self->_storePrefs setVoiceProfileStoreVersion:1];
  [(SSRVoiceProfileStorePrefs *)self->_storePrefs saveKnownUserVoiceProfiles:v5];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateTrainedUsersWithAction:(unint64_t)action UserVoiceProfile:(id)profile
{
  v36 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__SSRVoiceProfileStore__updateTrainedUsersWithAction_UserVoiceProfile___block_invoke;
  v18[3] = &unk_278579590;
  v8 = profileCopy;
  v19 = v8;
  v20 = &v26;
  v21 = &v22;
  [_enrolledVoiceProfiles enumerateObjectsUsingBlock:v18];
  if (action - 1 >= 2)
  {
    if (action)
    {
      v14 = *MEMORY[0x277D01970];
      if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      v31 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
      v32 = 2048;
      actionCopy = action;
      v15 = "%s ERR: UserVoiceProfile Action undefined %ld - Bailing out";
      v16 = v14;
    }

    else
    {
      v11 = *MEMORY[0x277D01970];
      v12 = *MEMORY[0x277D01970];
      if (*(v27 + 24) == 1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
          v32 = 2112;
          actionCopy = v8;
          _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Deleting User Voice Profile %@", buf, 0x16u);
        }

        [_enrolledVoiceProfiles removeObjectAtIndex:v23[3]];
        goto LABEL_14;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 136315394;
      v31 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
      v32 = 2112;
      actionCopy = v8;
      v15 = "%s User Voice Profile not found %@ - Bailing out";
      v16 = v11;
    }

    _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
    goto LABEL_18;
  }

  if (v27[3])
  {
    v9 = [_enrolledVoiceProfiles objectAtIndex:v23[3]];
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
      v32 = 2112;
      actionCopy = v8;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Updating User Voice Profile to %@ from %@", buf, 0x20u);
    }

    [_enrolledVoiceProfiles removeObjectAtIndex:v23[3]];
    [_enrolledVoiceProfiles addObject:v8];
  }

  else
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[SSRVoiceProfileStore _updateTrainedUsersWithAction:UserVoiceProfile:]";
      v32 = 2112;
      actionCopy = v8;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Adding User Voice Profile %@", buf, 0x16u);
    }

    [_enrolledVoiceProfiles addObject:v8];
  }

LABEL_14:
  [(SSRVoiceProfileStore *)self _saveTrainedUsers:_enrolledVoiceProfiles];
LABEL_18:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v17 = *MEMORY[0x277D85DE8];
}

void __71__SSRVoiceProfileStore__updateTrainedUsersWithAction_UserVoiceProfile___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 profileID];
  v8 = [*(a1 + 32) profileID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }
}

- (id)_enrolledVoiceProfiles
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  loadKnownUserVoiceProfiles = [(SSRVoiceProfileStorePrefs *)self->_storePrefs loadKnownUserVoiceProfiles];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [loadKnownUserVoiceProfiles countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MEMORY[0x277D01970];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(loadKnownUserVoiceProfiles);
        }

        v10 = [[SSRVoiceProfile alloc] initWithDictionary:*(*(&v14 + 1) + 8 * i)];
        if (v10)
        {
          [v3 addObject:v10];
        }

        else
        {
          v11 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v19 = "[SSRVoiceProfileStore _enrolledVoiceProfiles]";
            _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s voiceProfile is nil!", buf, 0xCu);
          }
        }
      }

      v6 = [loadKnownUserVoiceProfiles countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)retrainVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion
{
  profileCopy = profile;
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SSRVoiceProfileStore_retrainVoiceProfile_withContext_withCompletion___block_invoke;
  v15[3] = &unk_278579508;
  v16 = profileCopy;
  selfCopy = self;
  v18 = contextCopy;
  v19 = completionCopy;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = profileCopy;
  dispatch_async(queue, v15);
}

void __71__SSRVoiceProfileStore_retrainVoiceProfile_withContext_withCompletion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    [v4 profileID];
    v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v7 = [*(a1 + 32) locale];
    v44 = 136315650;
    v45 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
    v46 = 2114;
    v47 = v6;
    v48 = 2114;
    v49 = *&v7;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Retraining %{public}@ for locale %{public}@", &v44, 0x20u);
  }

  if (CSIsCommunalDevice())
  {
    v8 = [*(a1 + 32) appDomain];
    if ([v8 isEqualToString:@"com.apple.siri"])
    {
      v9 = [*(a1 + 32) profileLocallyAvailable];

      if ((v9 & 1) == 0)
      {
        v10 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = v10;
          [v11 profileID];
          v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v44 = 136315394;
          v45 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
          v46 = 2114;
          v47 = v13;
          _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s Needs retraining %{public}@ - Triggering voice profiles download", &v44, 0x16u);
        }

        v14 = [MEMORY[0x277CCA9A0] defaultCenter];
        [v14 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];

        v15 = *(a1 + 56);
        if (v15)
        {
          (*(v15 + 16))(v15, 0);
        }

        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [*(a1 + 40) _retrainVoiceProfile:*(a1 + 32) withContext:*(a1 + 48)];
  v18 = [MEMORY[0x277CBEAA8] date];
  [v18 timeIntervalSinceDate:v16];
  v20 = v19 * 1000.0;
  v21 = *v2;
  v22 = *v2;
  if (v17)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      v24 = v21;
      [v23 profileID];
      v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v44 = 136315906;
      v45 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
      v46 = 2114;
      v47 = v25;
      v48 = 2114;
      v49 = *&v17;
      v50 = 2050;
      v51 = v20;
      _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: Retraining failed for %{public}@ with error %{public}@ in %{public}fms", &v44, 0x2Au);
LABEL_16:
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 32);
    v24 = v21;
    [v26 profileID];
    v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v44 = 136315650;
    v45 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
    v46 = 2114;
    v47 = v25;
    v48 = 2050;
    v49 = v20;
    _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Retraining successfully finished for %{public}@ in %{public}fms", &v44, 0x20u);
    goto LABEL_16;
  }

  if ([MEMORY[0x277D018F8] isExclaveHardware])
  {
    v28 = *(a1 + 32);
    v27 = *(a1 + 40);
    v29 = [v28 userName];
    v30 = [*(a1 + 32) voiceProfilePathExclave];
    v31 = [v27 updateVoiceProfile:v28 withUserName:v29 withBasePathExclave:v30];
  }

  if (CSIsIOS())
  {
    v32 = [*(a1 + 32) profilePitch];
    if (!v32 || (v33 = v32, [*(a1 + 32) profilePitch], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, !v34))
    {
      v35 = [[SSRPitchExtractor alloc] initWithDefaultParameters];
      if (v35)
      {
        v36 = [*(a1 + 32) getExplicitEnrollmentUtterancesForType:{objc_msgSend(*(a1 + 48), "spIdType")}];
        [(SSRPitchExtractor *)v35 getPitchForUtteranceAudioFiles:v36];
        v38 = v37;
        v39 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          v44 = 136315394;
          v45 = "[SSRVoiceProfileStore retrainVoiceProfile:withContext:withCompletion:]_block_invoke";
          v46 = 2050;
          v47 = v38;
          _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s Detected mean pitch for explicit utterances = %{public}f Hz", &v44, 0x16u);
        }

        *&v40 = v38;
        v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
        [*(a1 + 32) setProfilePitch:v41];

        [*(a1 + 40) _updateTrainedUsersWithAction:2 UserVoiceProfile:*(a1 + 32)];
      }
    }
  }

  v42 = *(a1 + 56);
  if (v42)
  {
    (*(v42 + 16))(v42, v17);
  }

LABEL_30:
  v43 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkIfRetrainingRequiredForProfile:(id)profile
{
  profileCopy = profile;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SSRVoiceProfileStore__checkIfRetrainingRequiredForProfile___block_invoke;
  v8[3] = &unk_278579568;
  v9 = profileCopy;
  v4 = profileCopy;
  v5 = MEMORY[0x22AA71400](v8);
  if (v5[2](v5, 3))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5[2](v5, 4);
  }

  return v6;
}

uint64_t __61__SSRVoiceProfileStore__checkIfRetrainingRequiredForProfile___block_invoke(uint64_t a1, uint64_t a2)
{
  v47[2] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v46[0] = @"SSRVoiceRetrainingVoiceProfile";
  v46[1] = @"SSRVoiceRetrainingSpIdType";
  v47[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v47[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

  v38 = 0;
  v8 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v7 error:&v38];
  v9 = v38;
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [*(a1 + 32) profileID];
    v12 = [v10 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", v11, v9];

    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "[SSRVoiceProfileStore _checkIfRetrainingRequiredForProfile:]_block_invoke";
      v41 = 2112;
      v42 = v12;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v14 = 0;
    v15 = 1;
  }

  else
  {
    v12 = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
    v16 = [(SSRVoiceProfileRetrainerFactory *)v12 voiceRetrainersWithContext:v8];
    v17 = v16;
    if (v16 && [v16 count])
    {
      v33 = v4;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = v17;
      v19 = [(SSRVoiceProfileRetrainerFactory *)v18 countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v32 = v17;
        v21 = *v35;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            if ([*(*(&v34 + 1) + 8 * i) needsRetrainingWithAudioFiles:0])
            {
              v26 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                v27 = v26;
                v28 = [SSRUtils stringForCSSpIdType:a2];
                v29 = [*(a1 + 32) profileID];
                *buf = 136315650;
                v40 = "[SSRVoiceProfileStore _checkIfRetrainingRequiredForProfile:]_block_invoke";
                v41 = 2114;
                v42 = v28;
                v43 = 2114;
                v44 = v29;
                _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s Needs Retraining %{public}@ model update for profile %{public}@ ", buf, 0x20u);
              }

              v15 = 1;
              v14 = 1;
              goto LABEL_22;
            }
          }

          v20 = [(SSRVoiceProfileRetrainerFactory *)v18 countByEnumeratingWithState:&v34 objects:v45 count:16];
          v14 = 1;
          if (v20)
          {
            continue;
          }

          break;
        }

        v15 = 0;
LABEL_22:
        v17 = v32;
        v4 = v33;
      }

      else
      {
        v15 = 0;
        v14 = 1;
      }
    }

    else
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [*(a1 + 32) profileID];
      v18 = [v23 stringWithFormat:@"Failed to init retrainers for profileID %@ with ctxt %@", v24, v8];

      v25 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v40 = "[SSRVoiceProfileStore _checkIfRetrainingRequiredForProfile:]_block_invoke";
        v41 = 2112;
        v42 = v18;
        _os_log_error_impl(&dword_225E12000, v25, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
      }

      v14 = 0;
      v15 = 1;
    }
  }

  objc_autoreleasePoolPop(v4);
  v30 = *MEMORY[0x277D85DE8];
  return v15 & v14;
}

- (BOOL)checkIfVoiceProfile:(id)profile needsUpdatedWith:(id)with withCategory:(unint64_t)category
{
  v34 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  withCopy = with;
  voiceProfileIdentity = [profileCopy voiceProfileIdentity];
  v10 = [withCopy stringByAppendingPathComponent:@"enrollment_version.json"];

  v11 = [SSRUtils getVoiceProfileIdentityFromVersionFilePath:v10];
  v12 = MEMORY[0x277D01970];
  if (category == 5)
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v28 = 136316418;
      v29 = "[SSRVoiceProfileStore checkIfVoiceProfile:needsUpdatedWith:withCategory:]";
      v30 = 1024;
      *v31 = [profileCopy profileLocallyAvailable];
      *&v31[4] = 2048;
      *&v31[6] = 5;
      *&v31[14] = 2112;
      *&v31[16] = voiceProfileIdentity;
      *&v31[24] = 2112;
      *&v31[26] = v10;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s %d, %lu, %@,%@, %@", &v28, 0x3Au);
    }

    if (v11 && (!voiceProfileIdentity || ([v11 isEqualToString:voiceProfileIdentity] & 1) == 0))
    {
      v23 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        profileID = [profileCopy profileID];
        v28 = 136316162;
        v29 = "[SSRVoiceProfileStore checkIfVoiceProfile:needsUpdatedWith:withCategory:]";
        v30 = 2114;
        *v31 = profileID;
        *&v31[8] = 2114;
        *&v31[10] = voiceProfileIdentity;
        *&v31[18] = 2114;
        *&v31[20] = v11;
        *&v31[28] = 1026;
        *&v31[30] = 5;
        _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s Needs Retraining Profile %{public}@ - existing {%{public}@} downloaded {%{public}@, %{public}d}", &v28, 0x30u);
      }

      goto LABEL_15;
    }
  }

  profileLocallyAvailable = [profileCopy profileLocallyAvailable];
  v16 = *v12;
  v17 = os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT);
  if ((profileLocallyAvailable & 1) == 0)
  {
    if (v17)
    {
      v21 = v16;
      profileID2 = [profileCopy profileID];
      v28 = 136316162;
      v29 = "[SSRVoiceProfileStore checkIfVoiceProfile:needsUpdatedWith:withCategory:]";
      v30 = 2114;
      *v31 = profileID2;
      *&v31[8] = 2114;
      *&v31[10] = voiceProfileIdentity;
      *&v31[18] = 2114;
      *&v31[20] = v11;
      *&v31[28] = 1026;
      *&v31[30] = category;
      _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Needs Retraining storage for Profile %{public}@ - existing {%{public}@} downloaded {%{public}@, %{public}d}", &v28, 0x30u);
    }

LABEL_15:
    v20 = 1;
    goto LABEL_16;
  }

  if (v17)
  {
    v18 = v16;
    profileID3 = [profileCopy profileID];
    v28 = 136316162;
    v29 = "[SSRVoiceProfileStore checkIfVoiceProfile:needsUpdatedWith:withCategory:]";
    v30 = 2114;
    *v31 = profileID3;
    *&v31[8] = 2114;
    *&v31[10] = voiceProfileIdentity;
    *&v31[18] = 2114;
    *&v31[20] = v11;
    *&v31[28] = 1026;
    *&v31[30] = category;
    _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Skipping Profile %{public}@ - existing {%{public}@} downloaded {%{public}@, %{public}d}", &v28, 0x30u);
  }

  v20 = 0;
LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_deleteUserVoiceProfile:(id)profile
{
  v44 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (profileCopy)
  {
    v5 = MEMORY[0x277D01970];
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v41 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
      v42 = 2114;
      v43 = profileCopy;
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting VoiceProfile %{public}@", buf, 0x16u);
    }

    voiceProfileBasePath = [profileCopy voiceProfileBasePath];

    if (voiceProfileBasePath)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      voiceProfileBasePath2 = [profileCopy voiceProfileBasePath];
      v33 = 0;
      [defaultManager removeItemAtPath:voiceProfileBasePath2 error:&v33];
      v10 = v33;

      if (!v10)
      {
        v17 = 0;
        goto LABEL_17;
      }

      v11 = MEMORY[0x277CCACA8];
      voiceProfileBasePath3 = [profileCopy voiceProfileBasePath];
      v13 = [v11 stringWithFormat:@"Deleting profile data at %@ failed with error %@", voiceProfileBasePath3, v10];

      v14 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
        v42 = 2112;
        v43 = v13;
        _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s Err: %@", buf, 0x16u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v36 = @"reason";
      v37 = v13;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v17 = [v15 errorWithDomain:@"com.apple.speakerrecognition" code:706 userInfo:v16];
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Profile path is nil!"];
      v24 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
        v42 = 2114;
        v43 = v13;
        _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v34 = @"reason";
      v35 = v13;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v17 = [v25 errorWithDomain:@"com.apple.speakerrecognition" code:725 userInfo:v16];
    }

LABEL_17:
    [(SSRVoiceProfileStore *)self _updateTrainedUsersWithAction:0 UserVoiceProfile:profileCopy];
    appDomain = [profileCopy appDomain];
    if ([appDomain isEqualToString:@"com.apple.siri"])
    {
      profileID = [profileCopy profileID];
      v28 = [SSREnrollmentSamplingMetaDataHelper getEnrollmentMetaDataWithVoiceProfileId:profileID];

      if (v28)
      {
        defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter postNotificationName:@"com.apple.voiceprofile.rpicleanup" object:0];

        v30 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v41 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
          _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Send notification for RPI cleanup", buf, 0xCu);
        }
      }
    }

    else
    {
    }

    v23 = v17;
    goto LABEL_23;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Profile is nil!"];
  v19 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v41 = "[SSRVoiceProfileStore _deleteUserVoiceProfile:]";
    v42 = 2114;
    v43 = v18;
    _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
  }

  v20 = MEMORY[0x277CCA9B8];
  v38 = @"reason";
  v39 = v18;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:724 userInfo:v21];

  v23 = v22;
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)saveVoiceProfiles:(id)profiles completion:(id)completion
{
  profilesCopy = profiles;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__88;
  v20 = __Block_byref_object_dispose__89;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__SSRVoiceProfileStore_saveVoiceProfiles_completion___block_invoke;
  v14[3] = &unk_278579690;
  v8 = completionCopy;
  v15 = v8;
  v21 = MEMORY[0x22AA71400](v14);
  if (profilesCopy)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__SSRVoiceProfileStore_saveVoiceProfiles_completion___block_invoke_94;
    v11[3] = &unk_278579530;
    v11[4] = self;
    v12 = profilesCopy;
    v13 = &v16;
    dispatch_async(queue, v11);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.speakerrecognition" code:1251 userInfo:&unk_283933810];
    (*(v17[5] + 16))();
  }

  _Block_object_dispose(&v16, 8);
}

void __53__SSRVoiceProfileStore_saveVoiceProfiles_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 localizedDescription];
    v9 = 136315394;
    v10 = "[SSRVoiceProfileStore saveVoiceProfiles:completion:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s saveVoiceProfiles with error: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __53__SSRVoiceProfileStore_saveVoiceProfiles_completion___block_invoke_94(uint64_t a1)
{
  [*(a1 + 32) _saveTrainedUsers:*(a1 + 40)];
  v2 = *(*(*(*(a1 + 48) + 8) + 40) + 16);

  return v2();
}

- (id)loadCurrentVoiceProfiles
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7847;
  v10 = __Block_byref_object_dispose__7848;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SSRVoiceProfileStore_loadCurrentVoiceProfiles__block_invoke;
  v5[3] = &unk_2785797D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__SSRVoiceProfileStore_loadCurrentVoiceProfiles__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _enrolledVoiceProfiles];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)deleteUserVoiceProfile:(id)profile
{
  profileCopy = profile;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7847;
  v17 = __Block_byref_object_dispose__7848;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SSRVoiceProfileStore_deleteUserVoiceProfile___block_invoke;
  block[3] = &unk_278579530;
  selfCopy = self;
  v12 = &v13;
  v10 = profileCopy;
  v6 = profileCopy;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __47__SSRVoiceProfileStore_deleteUserVoiceProfile___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 profileID];
    v10 = 136315394;
    v11 = "[SSRVoiceProfileStore deleteUserVoiceProfile:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Deleting voice profile with voiceProfileId: %@", &v10, 0x16u);
  }

  v6 = [*(a1 + 40) _deleteUserVoiceProfile:*(a1 + 32)];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addUserVoiceProfile:(id)profile withContext:(id)context withCompletion:(id)completion
{
  profileCopy = profile;
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SSRVoiceProfileStore_addUserVoiceProfile_withContext_withCompletion___block_invoke;
  v15[3] = &unk_278579508;
  v16 = profileCopy;
  selfCopy = self;
  v18 = contextCopy;
  v19 = completionCopy;
  v12 = contextCopy;
  v13 = completionCopy;
  v14 = profileCopy;
  dispatch_async(queue, v15);
}

void __71__SSRVoiceProfileStore_addUserVoiceProfile_withContext_withCompletion___block_invoke(uint64_t a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Profile is nil!"];
    v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[SSRVoiceProfileStore addUserVoiceProfile:withContext:withCompletion:]_block_invoke";
      v34 = 2114;
      v35 = v8;
      _os_log_error_impl(&dword_225E12000, v9, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v38 = @"reason";
    *v39 = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v12 = [v10 errorWithDomain:@"com.apple.speakerrecognition" code:726 userInfo:v11];

    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v12);
    }

    goto LABEL_31;
  }

  [*(a1 + 40) _updateTrainedUsersWithAction:1 UserVoiceProfile:?];
  if (!*(a1 + 48))
  {
LABEL_22:
    v19 = *(a1 + 56);
    if (v19)
    {
      (*(v19 + 16))(v19, 1, 0);
    }

    if (!*(a1 + 48))
    {
      goto LABEL_32;
    }

    v20 = [*(a1 + 32) appDomain];
    v21 = [v20 isEqual:@"com.apple.siri"];

    if (!v21)
    {
      goto LABEL_32;
    }

    v22 = [SSRPitchExtractor alloc];
    v23 = [*(a1 + 48) asset];
    v8 = COERCE_DOUBLE([(SSRPitchExtractor *)v22 initWithAsset:v23]);

    if (v8 != 0.0)
    {
      v24 = [*(a1 + 32) getExplicitEnrollmentUtterancesForType:{objc_msgSend(*(a1 + 48), "spIdType")}];
      [*&v8 getPitchForUtteranceAudioFiles:v24];
      v26 = v25;
      v27 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "[SSRVoiceProfileStore addUserVoiceProfile:withContext:withCompletion:]_block_invoke";
        v34 = 2050;
        v35 = v26;
        _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s Detected mean pitch for explicit utterances = %{public}f Hz", buf, 0x16u);
      }

      *&v28 = v26;
      v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
      [*(a1 + 32) setProfilePitch:v29];

      [*(a1 + 40) _updateTrainedUsersWithAction:2 UserVoiceProfile:*(a1 + 32)];
    }

    [*(a1 + 40) _logVoiceProfileConfusionWithCleanup:CSIsCommunalDevice()];
LABEL_31:

LABEL_32:
    v30 = *MEMORY[0x277D85DE8];
    return;
  }

  v31 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  if (v31)
  {
    v2 = [*(a1 + 32) locale];
    v3 = [v31 isEqualToString:v2];

    if ((v3 & 1) == 0)
    {
      v14 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = v14;
        [v15 locale];
        v17 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 136315650;
        v33 = "[SSRVoiceProfileStore addUserVoiceProfile:withContext:withCompletion:]_block_invoke";
        v34 = 2114;
        v35 = v17;
        v36 = 2114;
        v37 = v31;
        _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Skipping retraining for language %{public}@, current %{public}@", buf, 0x20u);
      }

      v18 = *(a1 + 56);
      if (v18)
      {
        (*(v18 + 16))(v18, 1, 0);
      }

      goto LABEL_32;
    }
  }

  v4 = [*(a1 + 40) _retrainVoiceProfile:*(a1 + 32) withContext:*(a1 + 48)];
  if (!v4)
  {

    goto LABEL_22;
  }

  v5 = v4;
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_getTopScoringProfileIdFromScores:(id)scores
{
  scoresCopy = scores;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7847;
  v13 = __Block_byref_object_dispose__7848;
  v14 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__7847;
  v7[4] = __Block_byref_object_dispose__7848;
  v8 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SSRVoiceProfileStore__getTopScoringProfileIdFromScores___block_invoke;
  v6[3] = &unk_2785794E0;
  v6[4] = v7;
  v6[5] = &v9;
  [scoresCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v10[5];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __58__SSRVoiceProfileStore__getTopScoringProfileIdFromScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 32) + 8);
  if (*(v8 + 40))
  {
    if ([v6 compare:?] != 1)
    {
      goto LABEL_5;
    }

    v8 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v8 + 40), a3);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
LABEL_5:
}

- (BOOL)evaluateImplicitAdditionPolicyWithScores:(id)scores forProfile:(id)profile withImplicitThreshold:(float)threshold withDeltaThreshold:(float)deltaThreshold
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = COERCE_DOUBLE(scores);
  profileCopy = profile;
  v12 = MEMORY[0x277CBEB38];
  v13 = [*&v10 objectForKeyedSubscript:@"spIdKnownUserScores"];
  v14 = [v12 dictionaryWithDictionary:v13];

  v15 = [(SSRVoiceProfileStore *)self _getTopScoringProfileIdFromScores:v14];
  if (v15)
  {
    v16 = [v14 objectForKeyedSubscript:v15];
    [v16 floatValue];
    v18 = v17;

    [v14 removeObjectForKey:v15];
    [(SSRVoiceProfileStore *)self _getTopScoringProfileIdFromScores:v14];
    v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (v19 == 0.0)
    {
      v22 = 0.0;
    }

    else
    {
      v20 = [v14 objectForKeyedSubscript:*&v19];
      [v20 floatValue];
      v22 = v21;
    }

    profileID = [profileCopy profileID];
    v26 = [v15 isEqualToString:profileID];

    v27 = *MEMORY[0x277D01970];
    v28 = *MEMORY[0x277D01970];
    if ((v26 & 1) == 0)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v38 = v27;
        [profileCopy profileID];
        v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v40 = 136316418;
        v41 = "[SSRVoiceProfileStore evaluateImplicitAdditionPolicyWithScores:forProfile:withImplicitThreshold:withDeltaThreshold:]";
        v42 = 2050;
        v43 = v18;
        v44 = 2114;
        v45 = v15;
        v46 = 2050;
        thresholdCopy = v22;
        v48 = 2114;
        deltaThresholdCopy = v19;
        v50 = 2114;
        thresholdCopy2 = v39;
        _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s ERR: Utterance scored %{public}f (%{public}@) with next top score %{public}f (%{public}@) for profileId %{public}@", &v40, 0x3Eu);
      }

      v24 = 0;
      goto LABEL_24;
    }

    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v19 == 0.0)
    {
      if (v29)
      {
        v30 = v27;
        profileID2 = [profileCopy profileID];
        v40 = 136316162;
        v41 = "[SSRVoiceProfileStore evaluateImplicitAdditionPolicyWithScores:forProfile:withImplicitThreshold:withDeltaThreshold:]";
        v42 = 2050;
        v43 = v18;
        v44 = 2114;
        v45 = profileID2;
        v46 = 2050;
        thresholdCopy = threshold;
        v48 = 2050;
        deltaThresholdCopy = deltaThreshold;
        v32 = "%s Utterance scored %{public}f for %{public}@ and thresholds (%{public}f, %{public}f)";
        v33 = v30;
        v34 = 52;
        goto LABEL_17;
      }
    }

    else if (v29)
    {
      v30 = v27;
      profileID2 = [profileCopy profileID];
      v40 = 136316674;
      v41 = "[SSRVoiceProfileStore evaluateImplicitAdditionPolicyWithScores:forProfile:withImplicitThreshold:withDeltaThreshold:]";
      v42 = 2050;
      v43 = v18;
      v44 = 2114;
      v45 = profileID2;
      v46 = 2050;
      thresholdCopy = v22;
      v48 = 2114;
      deltaThresholdCopy = v19;
      v50 = 2050;
      thresholdCopy2 = threshold;
      v52 = 2050;
      deltaThresholdCopy2 = deltaThreshold;
      v32 = "%s Utterance scored %{public}f (%{public}@) with next top score %{public}f (%{public}@) and thresholds (%{public}f, %{public}f)";
      v33 = v30;
      v34 = 72;
LABEL_17:
      _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, v32, &v40, v34);
    }

    v24 = (v18 - v22) > deltaThreshold && v18 > threshold;
LABEL_24:

    goto LABEL_25;
  }

  v23 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    v40 = 136315394;
    v41 = "[SSRVoiceProfileStore evaluateImplicitAdditionPolicyWithScores:forProfile:withImplicitThreshold:withDeltaThreshold:]";
    v42 = 2114;
    v43 = v10;
    _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: Failed to get top scorer in %{public}@ - Bailing out", &v40, 0x16u);
  }

  v24 = 0;
LABEL_25:

  v36 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)_logVoiceProfileConfusionWithCleanup:(BOOL)cleanup
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  if (v4)
  {
    v5 = +[SSRAssetManager sharedManager];
    v6 = [v5 installedAssetOfType:3 forLanguage:v4];

    v7 = [(SSRVoiceProfileStore *)self userVoiceProfilesForAppDomain:@"com.apple.siri" forLocale:v4];
    v8 = v7;
    if (v6)
    {
      selfCopy = self;
      v25 = v7;
      v26 = v4;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v7;
      v30 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v30)
      {
        v27 = *v39;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(v9);
            }

            v11 = *(*(&v38 + 1) + 8 * i);
            v12 = objc_autoreleasePoolPush();
            CSIsIOS();
            v42[0] = @"SSRVoiceRetrainingVoiceProfile";
            v42[1] = @"SSRVoiceRetrainingCompareVoiceProfiles";
            v43[0] = v11;
            v43[1] = v9;
            v42[2] = @"SSRVoiceRetrainingCompareVoiceProfilesSpIdType";
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
            v43[2] = v13;
            v43[3] = v6;
            v42[3] = @"SSRVoiceRetrainingAsset";
            v42[4] = @"SSRVoiceRetrainingSpIdType";
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
            v43[4] = v14;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:5];

            v16 = [SSRVoiceProfileRetrainingContext alloc];
            v37 = 0;
            v17 = [(SSRVoiceProfileRetrainingContext *)v16 initWithVoiceRetrainingContext:v15 error:&v37];
            v18 = v37;
            v19 = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
            v20 = [(SSRVoiceProfileRetrainerFactory *)v19 voiceRetrainersWithContext:v17];
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __61__SSRVoiceProfileStore__logVoiceProfileConfusionWithCleanup___block_invoke;
            v31[3] = &unk_2785794B0;
            cleanupCopy = cleanup;
            v32 = v17;
            v33 = selfCopy;
            v34 = v11;
            v35 = v6;
            v21 = v17;
            [v20 enumerateObjectsUsingBlock:v31];

            objc_autoreleasePoolPop(v12);
          }

          v30 = [v9 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v30);
      }

      v8 = v25;
      v4 = v26;
    }

    else
    {
      v23 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v46 = "[SSRVoiceProfileStore _logVoiceProfileConfusionWithCleanup:]";
        _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s assetForLocale is nil - Bail out", buf, 0xCu);
      }
    }
  }

  else
  {
    v22 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "[SSRVoiceProfileStore _logVoiceProfileConfusionWithCleanup:]";
      _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s Locale is nil - Bail out", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __61__SSRVoiceProfileStore__logVoiceProfileConfusionWithCleanup___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __61__SSRVoiceProfileStore__logVoiceProfileConfusionWithCleanup___block_invoke_2;
  v15 = &unk_278579488;
  v4 = v3;
  v16 = v4;
  v17 = *(a1 + 32);
  v20 = *(a1 + 64);
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v5 = [v4 purgeConfusionInformationWithPolicy:&v12];
  v6 = v5;
  if (*(a1 + 64) == 1)
  {
    if (v5)
    {
      v7 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 48);
        v10 = v7;
        v11 = [v9 profileID];
        *buf = 136315650;
        v22 = "[SSRVoiceProfileStore _logVoiceProfileConfusionWithCleanup:]_block_invoke";
        v23 = 2114;
        v24 = v11;
        v25 = 2114;
        v26 = v6;
        _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Failed purging profile %{public}@ with error - %{public}@", buf, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __61__SSRVoiceProfileStore__logVoiceProfileConfusionWithCleanup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 retrainerType] == 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ([*(a1 + 32) retrainerType] == 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) combinationWeight];
  v7 = [SSRUtils combineScoreFromPSR:v5 fromSAT:v6 withCombinedWt:?];

  if (*(a1 + 72) == 1)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [*(a1 + 64) satImplicitProfileThreshold];
    v11 = v10;
    [*(a1 + 64) satImplicitProfileDeltaThreshold];
    LODWORD(v13) = v12;
    LODWORD(v14) = v11;
    v15 = [v8 evaluateImplicitAdditionPolicyWithScores:v7 forProfile:v9 withImplicitThreshold:v14 withDeltaThreshold:v13];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)logVoiceProfileConfusionWithCleanup:(BOOL)cleanup
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SSRVoiceProfileStore_logVoiceProfileConfusionWithCleanup___block_invoke;
  v4[3] = &unk_278579460;
  v4[4] = self;
  cleanupCopy = cleanup;
  dispatch_sync(queue, v4);
}

- (void)addImplicitUtterance:(id)utterance toVoiceProfile:(id)profile withAsset:(id)asset withTriggerSource:(id)source withAudioInput:(id)input withCompletion:(id)completion
{
  utteranceCopy = utterance;
  profileCopy = profile;
  assetCopy = asset;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke;
  block[3] = &unk_278579438;
  v22 = assetCopy;
  selfCopy = self;
  v25 = utteranceCopy;
  v26 = completionCopy;
  v24 = profileCopy;
  v17 = utteranceCopy;
  v18 = completionCopy;
  v19 = profileCopy;
  v20 = assetCopy;
  dispatch_async(queue, block);
}

void __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke(uint64_t a1)
{
  v158[6] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (CSIsCommunalDevice())
  {

    v91 = (a1 + 48);
LABEL_9:
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) appDomain];
    v9 = [*(a1 + 48) locale];
    v10 = [v7 userVoiceProfilesForAppDomain:v8 forLocale:v9];

    v11 = *(a1 + 48);
    v157[0] = @"SSRVoiceRetrainingVoiceProfile";
    v157[1] = @"SSRVoiceRetrainingCompareVoiceProfiles";
    v158[0] = v11;
    v158[1] = v10;
    v157[2] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
    v157[3] = @"SSRVoiceRetrainingAsset";
    v12 = *(a1 + 32);
    v158[2] = MEMORY[0x277CBEC38];
    v158[3] = v12;
    v157[4] = @"SSRVoiceRetrainingSpIdType";
    v157[5] = @"SSRVoiceRetrainingCompareVoiceProfilesSpIdType";
    v158[4] = &unk_283933990;
    v158[5] = &unk_2839339A8;
    v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:6];

    goto LABEL_12;
  }

  if (CSIsIOS() & 1) != 0 || (CSIsAppleSiliconMac())
  {
    [v2 psrCombinationWeight];
    v4 = v3;
    v5 = [v2 useTDTIEnrollment];

    v91 = (a1 + 48);
    if (v4 == 1.0 && v5 != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v91 = (a1 + 48);
  }

  v13 = *(a1 + 48);
  v155[0] = @"SSRVoiceRetrainingVoiceProfile";
  v155[1] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
  v156[0] = v13;
  v156[1] = MEMORY[0x277CBEC38];
  v14 = *(a1 + 32);
  v155[2] = @"SSRVoiceRetrainingAsset";
  v155[3] = @"SSRVoiceRetrainingSpIdType";
  v156[2] = v14;
  v156[3] = &unk_2839339C0;
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:4];
LABEL_12:
  v132 = 0;
  v94 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v98 error:&v132];
  v96 = v132;
  if (!v96)
  {
    v97 = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
    v21 = [(SSRVoiceProfileRetrainerFactory *)v97 voiceRetrainersWithContext:v94];
    v100 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v95 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v20 = v21;
    v22 = [v20 countByEnumeratingWithState:&v128 objects:v152 count:16];
    if (v22)
    {
      v23 = *v129;
      v24 = MEMORY[0x277D015D8];
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v129 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v128 + 1) + 8 * i);
          if ([v26 retrainerType] == 1 && (objc_msgSend(*(a1 + 32), "psrCombinationWeight"), fabsf(v27 + -1.0) <= 0.00000011921))
          {
            v28 = *v24;
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
              _os_log_impl(&dword_225E12000, v28, OS_LOG_TYPE_DEFAULT, "%s Skip SAT retrainer since combination weight is 1", buf, 0xCu);
            }
          }

          else if ([v26 implicitTrainingRequired])
          {
            [v100 addObject:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v128 objects:v152 count:16];
      }

      while (v22);
    }

    if ([v100 count])
    {
      v29 = objc_autoreleasePoolPush();
      v149 = *(a1 + 56);
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v149 count:1];
      v31 = [*(a1 + 48) locale];
      v32 = [SSRTriggerPhraseDetector filterVTAudioFiles:v30 withLocale:v31 withAsset:*(a1 + 32)];

      if (v32 && [v32 count])
      {

        objc_autoreleasePoolPop(v29);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v144 = __Block_byref_object_copy__7847;
        v145 = __Block_byref_object_dispose__7848;
        v146 = 0;
        v124[0] = MEMORY[0x277D85DD0];
        v124[1] = 3221225472;
        v124[2] = __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke_67;
        v124[3] = &unk_2785793E8;
        v125 = *(a1 + 56);
        v126 = *(a1 + 48);
        v127 = buf;
        v93 = MEMORY[0x22AA71400](v124);
        v118 = 0;
        v119 = &v118;
        v120 = 0x3032000000;
        v121 = __Block_byref_object_copy__7847;
        v122 = __Block_byref_object_dispose__7848;
        v123 = 0;
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke_72;
        v113[3] = &unk_278579410;
        v117 = &v118;
        v114 = *(a1 + 56);
        v115 = *(a1 + 48);
        v116 = 0;
        v99 = MEMORY[0x22AA71400](v113);
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v33 = v100;
        v34 = 0;
        v35 = [v33 countByEnumeratingWithState:&v109 objects:v142 count:16];
        if (v35)
        {
          v92 = 0;
          v36 = *v110;
LABEL_35:
          v37 = 0;
          while (1)
          {
            if (*v110 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v109 + 1) + 8 * v37);
            v141 = *(a1 + 56);
            v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
            [v38 addUtterances:v39 withPolicy:v93 withCompletion:v99];

            if (v119[5])
            {
              break;
            }

            [v95 addObject:v38];
            v40 = [v38 retrainerType];
            v41 = *(*&buf[8] + 40);
            if (v40 == 2)
            {
              v42 = [v41 copy];
              v43 = v92;
              v92 = v42;
            }

            else
            {
              v44 = [v41 copy];
              v43 = v34;
              v34 = v44;
            }

            if (v35 == ++v37)
            {
              v35 = [v33 countByEnumeratingWithState:&v109 objects:v142 count:16];
              if (v35)
              {
                goto LABEL_35;
              }

              break;
            }
          }
        }

        else
        {
          v92 = 0;
        }

        v62 = [v33 count];
        if (v62 == [v95 count])
        {
          [(SSRVoiceProfileRetrainingContext *)v94 combinationWeight];
          v63 = [SSRUtils combineScoreFromPSR:v92 fromSAT:v34 withCombinedWt:?];
          v65 = *(a1 + 40);
          v64 = *(a1 + 48);
          [*(a1 + 32) satImplicitProfileThreshold];
          v67 = v66;
          [*(a1 + 32) satImplicitProfileDeltaThreshold];
          LODWORD(v69) = v68;
          LODWORD(v70) = v67;
          if ([v65 evaluateImplicitAdditionPolicyWithScores:v63 forProfile:v64 withImplicitThreshold:v70 withDeltaThreshold:v69])
          {
            v71 = *(a1 + 64);
            if (v71)
            {
              (*(v71 + 16))(v71, 0);
            }
          }

          else
          {
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v77 = v33;
            v78 = [v77 countByEnumeratingWithState:&v101 objects:v139 count:16];
            if (v78)
            {
              v79 = *v102;
              do
              {
                for (j = 0; j != v78; ++j)
                {
                  if (*v102 != v79)
                  {
                    objc_enumerationMutation(v77);
                  }

                  [*(*(&v101 + 1) + 8 * j) purgeLastSpeakerEmbedding];
                }

                v78 = [v77 countByEnumeratingWithState:&v101 objects:v139 count:16];
              }

              while (v78);
            }

            v81 = MEMORY[0x277CCACA8];
            v82 = [*(a1 + 56) lastPathComponent];
            v83 = [*v91 profileID];
            v84 = [v81 stringWithFormat:@"Utterance %@ in profile %@ not satisfied the implicit policy", v82, v83];

            v85 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *v135 = 136315394;
              v136 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
              v137 = 2114;
              v138 = v84;
              _os_log_impl(&dword_225E12000, v85, OS_LOG_TYPE_DEFAULT, "%s %{public}@", v135, 0x16u);
            }

            v86 = *(a1 + 64);
            if (v86)
            {
              v87 = MEMORY[0x277CCA9B8];
              v133 = @"reason";
              v134 = v84;
              v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
              v89 = [v87 errorWithDomain:@"com.apple.speakerrecognition" code:735 userInfo:v88];
              (*(v86 + 16))(v86, v89);
            }
          }
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v72 = v95;
          v73 = [v72 countByEnumeratingWithState:&v105 objects:v140 count:16];
          if (v73)
          {
            v74 = *v106;
            do
            {
              for (k = 0; k != v73; ++k)
              {
                if (*v106 != v74)
                {
                  objc_enumerationMutation(v72);
                }

                [*(*(&v105 + 1) + 8 * k) purgeLastSpeakerEmbedding];
              }

              v73 = [v72 countByEnumeratingWithState:&v105 objects:v140 count:16];
            }

            while (v73);
          }

          v76 = *(a1 + 64);
          if (v76)
          {
            (*(v76 + 16))(v76, v119[5]);
          }
        }

        _Block_object_dispose(&v118, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v45 = MEMORY[0x277CCACA8];
        v46 = [*(a1 + 56) lastPathComponent];
        v47 = [*(a1 + 48) profileID];
        v48 = [v45 stringWithFormat:@"Utterance %@ in profile %@ not satisfied the implicit VT policy", v46, v47];

        v49 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v48;
          _os_log_impl(&dword_225E12000, v49, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        v50 = *(a1 + 64);
        if (v50)
        {
          v51 = MEMORY[0x277CCA9B8];
          v147 = @"reason";
          v148 = v48;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v53 = [v51 errorWithDomain:@"com.apple.speakerrecognition" code:750 userInfo:v52];
          (*(v50 + 16))(v50, v53);
        }

        objc_autoreleasePoolPop(v29);
      }
    }

    else
    {
      v54 = MEMORY[0x277CCACA8];
      v55 = [*v91 profileID];
      v56 = [v54 stringWithFormat:@"Profile %@ is full - Ignoring", v55];

      v57 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v56;
        _os_log_impl(&dword_225E12000, v57, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
      }

      v58 = *(a1 + 64);
      if (v58)
      {
        v59 = MEMORY[0x277CCA9B8];
        v150 = @"reason";
        v151 = v56;
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
        v61 = [v59 errorWithDomain:@"com.apple.speakerrecognition" code:757 userInfo:v60];
        (*(v58 + 16))(v58, v61);
      }
    }

    goto LABEL_84;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [*v91 profileID];
  v97 = [v15 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", v16, v96];

  v17 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v97;
    _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = MEMORY[0x277CCA9B8];
    v153 = @"reason";
    v154 = v97;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
    v100 = [v19 errorWithDomain:@"com.apple.speakerrecognition" code:756 userInfo:v20];
    (*(v18 + 16))(v18, v100);
LABEL_84:
  }

  v90 = *MEMORY[0x277D85DE8];
}

id __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke_67(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [*(a1 + 32) lastPathComponent];
    v9 = [*(a1 + 40) profileID];
    v10 = [v7 stringWithFormat:@"Rejecting Implicit utterance %@ for profile %@", v8, v9];

    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s ERR: %{public}@", buf, 0x16u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v16 = @"reason";
    v17 = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v6 = [v12 errorWithDomain:@"com.apple.speakerrecognition" code:735 userInfo:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

void __118__SSRVoiceProfileStore_addImplicitUtterance_toVoiceProfile_withAsset_withTriggerSource_withAudioInput_withCompletion___block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = v7;
      v11 = [v8 profileID];
      v12 = *(a1 + 48);
      *buf = 136315906;
      v29 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v11;
      v34 = 2114;
      v35 = v12;
      _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s ERR: Failed in adding %{public}@ to %{public}@ with error %{public}@", buf, 0x2Au);
LABEL_7:

LABEL_11:
    }
  }

  else
  {
    if (![a3 count])
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [*(a1 + 32) lastPathComponent];
      v18 = [*(a1 + 40) profileID];
      v10 = [v16 stringWithFormat:@"Utterance %@ rejected for profile %@", v17, v18];

      v19 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
        v30 = 2114;
        v31 = v10;
        _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v26 = @"reason";
      v27 = v10;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v22 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:735 userInfo:v21];
      v23 = *(*(a1 + 56) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      goto LABEL_11;
    }

    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v10 = v13;
      v11 = [v14 lastPathComponent];
      v15 = [*(a1 + 40) profileID];
      *buf = 136315650;
      v29 = "[SSRVoiceProfileStore addImplicitUtterance:toVoiceProfile:withAsset:withTriggerSource:withAudioInput:withCompletion:]_block_invoke";
      v30 = 2114;
      v31 = v11;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Added Implicit SAT vector from %{public}@ to profile %{public}@", buf, 0x20u);

      goto LABEL_7;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)isImplicitTrainingRequiredToVoiceProfile:(id)profile withAsset:(id)asset completion:(id)completion
{
  profileCopy = profile;
  assetCopy = asset;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SSRVoiceProfileStore_isImplicitTrainingRequiredToVoiceProfile_withAsset_completion___block_invoke;
  v15[3] = &unk_278579508;
  v16 = assetCopy;
  selfCopy = self;
  v18 = profileCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = profileCopy;
  v14 = assetCopy;
  dispatch_async(queue, v15);
}

void __86__SSRVoiceProfileStore_isImplicitTrainingRequiredToVoiceProfile_withAsset_completion___block_invoke(uint64_t a1)
{
  v45[6] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (CSIsCommunalDevice())
  {

    v3 = (a1 + 48);
LABEL_9:
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) appDomain];
    v10 = [*(a1 + 48) locale];
    v11 = [v8 userVoiceProfilesForAppDomain:v9 forLocale:v10];

    v12 = *(a1 + 48);
    v44[0] = @"SSRVoiceRetrainingVoiceProfile";
    v44[1] = @"SSRVoiceRetrainingCompareVoiceProfiles";
    v45[0] = v12;
    v45[1] = v11;
    v44[2] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
    v44[3] = @"SSRVoiceRetrainingAsset";
    v13 = *(a1 + 32);
    v45[2] = MEMORY[0x277CBEC38];
    v45[3] = v13;
    v44[4] = @"SSRVoiceRetrainingSpIdType";
    v44[5] = @"SSRVoiceRetrainingCompareVoiceProfilesSpIdType";
    v45[4] = &unk_283933990;
    v45[5] = &unk_2839339A8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:6];

    goto LABEL_12;
  }

  if (CSIsIOS() & 1) != 0 || (CSIsAppleSiliconMac())
  {
    [v2 psrCombinationWeight];
    v5 = v4;
    v6 = [v2 useTDTIEnrollment];

    v3 = (a1 + 48);
    if (v5 == 1.0 && v6 != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v3 = (a1 + 48);
  }

  v15 = *(a1 + 48);
  v42[0] = @"SSRVoiceRetrainingVoiceProfile";
  v42[1] = @"SSRVoiceRetrainingFilterToVoiceTriggerUtterances";
  v43[0] = v15;
  v43[1] = MEMORY[0x277CBEC38];
  v16 = *(a1 + 32);
  v42[2] = @"SSRVoiceRetrainingAsset";
  v42[3] = @"SSRVoiceRetrainingSpIdType";
  v43[2] = v16;
  v43[3] = &unk_2839339C0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
LABEL_12:
  v36 = 0;
  v17 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v14 error:&v36];
  v18 = v36;
  if (v18)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [*v3 profileID];
    v21 = [v19 stringWithFormat:@"Failed to init retrainCtxt for profileID %@ with error %@", v20, v18];

    v22 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[SSRVoiceProfileStore isImplicitTrainingRequiredToVoiceProfile:withAsset:completion:]_block_invoke";
      v40 = 2112;
      v41 = v21;
      _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s ERR: %@", buf, 0x16u);
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 16))(v23, 0, v18);
    }
  }

  else
  {
    v21 = objc_alloc_init(SSRVoiceProfileRetrainerFactory);
    [(SSRVoiceProfileRetrainerFactory *)v21 voiceRetrainersWithContext:v17];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v35 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          if ([*(*(&v32 + 1) + 8 * i) implicitTrainingRequired])
          {
            v30 = *(a1 + 56);
            if (v30)
            {
              (*(v30 + 16))(v30, 1, 0);
            }

            goto LABEL_30;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v29 = *(a1 + 56);
    if (v29)
    {
      (*(v29 + 16))(v29, 0, 0);
    }

LABEL_30:
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeSiriVoiceProfilesWithAssistant
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SSRVoiceProfileStore__synchronizeSiriVoiceProfilesWithAssistant__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __66__SSRVoiceProfileStore__synchronizeSiriVoiceProfilesWithAssistant__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[SSRVoiceProfileStore _synchronizeSiriVoiceProfilesWithAssistant]_block_invoke";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Synchronize voiceprofiles with Assistant...", buf, 0xCu);
  }

  v4 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v5 = [*(a1 + 32) _enrolledVoiceProfiles];
  v6 = [(SSRVoiceProfileStoreCleaner *)v4 filterInvalidSiriProfilesFrom:v5];

  if ([v6 count])
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__SSRVoiceProfileStore__synchronizeSiriVoiceProfilesWithAssistant__block_invoke_48;
    v24[3] = &unk_278579328;
    v24[4] = *(a1 + 32);
    [v6 enumerateObjectsUsingBlock:v24];
    v7 = [MEMORY[0x277D01708] sharedInstance];
    [v7 submitVoiceIdIssueReport:*MEMORY[0x277D01A78]];
  }

  notify_post("com.apple.siri.corespeech.voiceprofilelist.change");
  if ([v6 count])
  {
    v8 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[SSRVoiceProfileStore _synchronizeSiriVoiceProfilesWithAssistant]_block_invoke";
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Missing user models - Triggering voice profiles download", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v9 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [*(a1 + 32) _enrolledVoiceProfiles];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 appDomain];
          v16 = [v15 isEqualToString:@"com.apple.siri"];

          if (v16 && ([v14 profileLocallyAvailable] & 1) == 0)
          {
            v17 = *v2;
            if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v27 = "[SSRVoiceProfileStore _synchronizeSiriVoiceProfilesWithAssistant]_block_invoke";
              _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Needs retraining - Triggering voice profiles download", buf, 0xCu);
            }

            v18 = [MEMORY[0x277CCA9A0] defaultCenter];
            [v18 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];

            goto LABEL_22;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_22:

  v19 = *MEMORY[0x277D85DE8];
}

void __66__SSRVoiceProfileStore__synchronizeSiriVoiceProfilesWithAssistant__block_invoke_48(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SSRVoiceProfileStore _synchronizeSiriVoiceProfilesWithAssistant]_block_invoke";
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting stale voiceprofile(%lu): %@", &v9, 0x20u);
  }

  v7 = [*(a1 + 32) _deleteUserVoiceProfile:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAssets:(id)assets
{
  localeCopy = locale;
  assetsCopy = assets;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SSRVoiceProfileStore_cleanupVoiceProfileModelFilesForLocale_withAssets___block_invoke;
  block[3] = &unk_2785793A0;
  v12 = localeCopy;
  v13 = assetsCopy;
  selfCopy = self;
  v9 = assetsCopy;
  v10 = localeCopy;
  dispatch_sync(queue, block);
}

void __74__SSRVoiceProfileStore_cleanupVoiceProfileModelFilesForLocale_withAssets___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v3 = +[SSRAssetManager sharedManager];
  v4 = [v3 allInstalledAssetsOfType:3 forLanguage:*(a1 + 32)];

  v17 = v4;
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  v6 = *(a1 + 40);
  if (v6 && [v6 count] && v5)
  {
    [v5 addObjectsFromArray:*(a1 + 40)];
  }

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[SSRVoiceProfileStore cleanupVoiceProfileModelFilesForLocale:withAssets:]_block_invoke";
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Cleanup model files with assets %{public}@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [*(a1 + 48) _enrolledVoiceProfiles];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 locale];
        v15 = [v14 isEqualToString:*(a1 + 32)];

        if (v15)
        {
          [(SSRVoiceProfileStoreCleaner *)v2 cleanupInvalidModelsForProfile:v13 withAssetArray:v5];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cleanupVoiceProfileModelFilesForLocale:(id)locale withAsset:(id)asset
{
  localeCopy = locale;
  assetCopy = asset;
  array = [MEMORY[0x277CBEB18] array];
  v8 = array;
  if (assetCopy && array)
  {
    [array addObject:assetCopy];
  }

  [(SSRVoiceProfileStore *)self cleanupVoiceProfileModelFilesForLocale:localeCopy withAssets:v8];
}

- (void)cleanupVoiceProfileStore:(id)store
{
  storeCopy = store;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke;
  v7[3] = &unk_278579618;
  v7[4] = self;
  v8 = storeCopy;
  v6 = storeCopy;
  dispatch_sync(queue, v7);
}

void __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v3 = [(SSRVoiceProfileStoreCleaner *)v2 cleanupProfileStore];
  v4 = [*(a1 + 32) _enrolledVoiceProfiles];
  v5 = [(SSRVoiceProfileStoreCleaner *)v2 filterDuplicatedSiriProfilesFrom:v4];

  if ([v5 count])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_2;
    v19[3] = &unk_278579328;
    v19[4] = *(a1 + 32);
    [v5 enumerateObjectsUsingBlock:v19];
    v6 = [MEMORY[0x277D01708] sharedInstance];
    [v6 submitVoiceIdIssueReport:*MEMORY[0x277D01A78]];

    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[SSRVoiceProfileStore cleanupVoiceProfileStore:]_block_invoke";
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Triggering voice profiles download", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v8 postNotificationName:@"com.apple.voicetrigger.PHSProfileDownloadTrigger" object:0];
  }

  v9 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  v10 = [(SSRVoiceProfileStoreCleaner *)v2 deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:v9 appDomain:@"com.apple.siri"];

  if (CSIsCommunalDevice())
  {
    v11 = dispatch_time(0, 120000000000);
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_38;
    v18[3] = &unk_2785797A8;
    v18[4] = v12;
    dispatch_after(v11, v13, v18);
  }

  if ((CSIsCommunalDevice() & 1) != 0 || CSIsIOS() && ([MEMORY[0x277D01788] sharedPreferences], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "voiceTriggerEnabled"), v14, v15))
  {
    [*(a1 + 32) _logVoiceProfileConfusionWithCleanup:0];
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SSRVoiceProfileStore cleanupVoiceProfileStore:]_block_invoke_2";
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting duplicated voiceprofile(%lu): %@", &v9, 0x20u);
  }

  v7 = [*(a1 + 32) _deleteUserVoiceProfile:v5];

  v8 = *MEMORY[0x277D85DE8];
}

void __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_38(uint64_t a1)
{
  [*(a1 + 32) _synchronizeSiriVoiceProfilesWithAssistant];
  if (CSIsInternalBuild())
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:@"en-US"];
    [v2 _retrainLiveOnOnboardedProfilesForLanguage:v3 withForceRetrain:1 withCompletion:&__block_literal_global_45];
  }
}

void __49__SSRVoiceProfileStore_cleanupVoiceProfileStore___block_invoke_2_42(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D01970];
  if (v2)
  {
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[SSRVoiceProfileStore cleanupVoiceProfileStore:]_block_invoke_2";
      v7 = 2114;
      v8 = v2;
      _os_log_error_impl(&dword_225E12000, v3, OS_LOG_TYPE_ERROR, "%s ERR: Failed retraining LiveOn onboarded users with error %{public}@", &v5, 0x16u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVoiceProfileStore cleanupVoiceProfileStore:]_block_invoke";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Successfully retrained LiveOn onboarded users", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cleanupInvalidSiriProfilesFromPersonalDevicesForLanguage:(id)language appDomain:(id)domain
{
  v16 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v5 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v6 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:0];
  v7 = [(SSRVoiceProfileStoreCleaner *)v5 deleteInvalidSiriProfilesFromPersonalDevicesForLanguage:v6 appDomain:domainCopy];

  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    localizedDescription = [v7 localizedDescription];
    v12 = 136315394;
    v13 = "[SSRVoiceProfileStore cleanupInvalidSiriProfilesFromPersonalDevicesForLanguage:appDomain:]";
    v14 = 2114;
    v15 = localizedDescription;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Deleted invalid Siri profile with err: %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cleanupDuplicatesForProfile:(id)profile
{
  profileCopy = profile;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SSRVoiceProfileStore_cleanupDuplicatesForProfile___block_invoke;
  v7[3] = &unk_278579350;
  v8 = profileCopy;
  selfCopy = self;
  v6 = profileCopy;
  dispatch_sync(queue, v7);
}

void __52__SSRVoiceProfileStore_cleanupDuplicatesForProfile___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 personaID];
    *buf = 136315394;
    v62 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
    v63 = 2112;
    v64 = v8;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Cleaning up duplicated profiles for personaId: %@", buf, 0x16u);
  }

  v9 = [*(a1 + 40) _enrolledVoiceProfiles];
  v44 = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v9;
  v49 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v49)
  {
    v48 = *v56;
    *&v10 = 136315394;
    v43 = v10;
    v50 = a1;
    do
    {
      v11 = 0;
      do
      {
        if (*v56 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        v13 = [*(a1 + 32) personaID];
        if (v13 && ([*(a1 + 32) personaID], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "personaID"), v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isEqualToString:", v2) & 1) != 0))
        {
          v14 = v1;
          v15 = v2;
          v16 = v3;
          v17 = 0;
        }

        else
        {
          v18 = [*(a1 + 32) siriProfileId];
          if (!v18)
          {
            if (v13)
            {
            }

            v1 = 0;
            goto LABEL_30;
          }

          v1 = v18;
          v19 = [*(a1 + 32) siriProfileId];
          v46 = [v12 siriProfileId];
          v47 = v19;
          if (![v19 isEqualToString:?])
          {
            v22 = 0;
            goto LABEL_23;
          }

          v14 = v1;
          v15 = v2;
          v16 = v3;
          v17 = 1;
        }

        v20 = [*(v50 + 32) locale];
        v21 = [v12 locale];
        v22 = [v20 isEqualToString:v21];

        v3 = v16;
        v2 = v15;
        v1 = v14;
        if (!v17)
        {
          a1 = v50;
          if (!v13)
          {
            goto LABEL_17;
          }

          goto LABEL_24;
        }

        a1 = v50;
LABEL_23:

        if (!v13)
        {
LABEL_17:

          if (!v22)
          {
            goto LABEL_30;
          }

          goto LABEL_25;
        }

LABEL_24:

        if ((v22 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_25:
        v23 = [*(a1 + 32) profileID];
        v24 = [v12 profileID];
        v25 = [v23 isEqualToString:v24];

        if (v25)
        {
          v26 = *MEMORY[0x277D01970];
          if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
          {
            goto LABEL_30;
          }

          v27 = v26;
          v28 = [v12 profileID];
          *buf = v43;
          v62 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
          v63 = 2112;
          v64 = v28;
          _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_INFO, "%s Retaining the voice profile with profile id: %@", buf, 0x16u);
          goto LABEL_28;
        }

        [v44 addObject:v12];
        v29 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
        {
          v27 = v29;
          v28 = [v12 profileID];
          *buf = v43;
          v62 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
          v63 = 2112;
          v64 = v28;
          _os_log_debug_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEBUG, "%s Queueing the profile with profile ID %@ to be deleted", buf, 0x16u);
LABEL_28:
        }

LABEL_30:
        ++v11;
      }

      while (v49 != v11);
      v30 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      v49 = v30;
    }

    while (v30);
  }

  if ([v44 count])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v31 = v44;
    v32 = [v31 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v52;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v52 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v51 + 1) + 8 * i);
          v37 = *MEMORY[0x277D01970];
          if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v62 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
            v63 = 2112;
            v64 = v36;
            _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_INFO, "%s Deleting duplicated voice profile: %@", buf, 0x16u);
          }

          v38 = [*(a1 + 40) _deleteUserVoiceProfile:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v33);
    }
  }

  v39 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v40 = v39;
    v41 = [v44 count];
    *buf = 136315394;
    v62 = "[SSRVoiceProfileStore cleanupDuplicatesForProfile:]_block_invoke";
    v63 = 1024;
    LODWORD(v64) = v41;
    _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Found %d duplicated profiles", buf, 0x12u);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (BOOL)cleanupDuplicatedProfiles
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (CSIsIOS())
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__SSRVoiceProfileStore_cleanupDuplicatedProfiles__block_invoke;
    v6[3] = &unk_2785797D0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __49__SSRVoiceProfileStore_cleanupDuplicatedProfiles__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D01970];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[SSRVoiceProfileStore cleanupDuplicatedProfiles]_block_invoke";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Triggered cleanup duplicated profiles", buf, 0xCu);
  }

  v4 = objc_alloc_init(SSRVoiceProfileStoreCleaner);
  v5 = [*(a1 + 32) _enrolledVoiceProfiles];
  v6 = [(SSRVoiceProfileStoreCleaner *)v4 filterDuplicatedSiriProfilesFrom:v5];

  if ([v6 count])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__SSRVoiceProfileStore_cleanupDuplicatedProfiles__block_invoke_33;
    v12[3] = &unk_278579328;
    v12[4] = *(a1 + 32);
    [v6 enumerateObjectsUsingBlock:v12];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = [MEMORY[0x277D01708] sharedInstance];
    [v7 submitVoiceIdIssueReport:*MEMORY[0x277D01A78]];
  }

  v8 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 count];
    *buf = 136315394;
    v14 = "[SSRVoiceProfileStore cleanupDuplicatedProfiles]_block_invoke";
    v15 = 1026;
    v16 = v10;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Found %{public}d duplicated profiles", buf, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __49__SSRVoiceProfileStore_cleanupDuplicatedProfiles__block_invoke_33(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SSRVoiceProfileStore cleanupDuplicatedProfiles]_block_invoke";
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Deleting duplicated voiceprofile(%lu): %@", &v9, 0x20u);
  }

  v7 = [*(a1 + 32) _deleteUserVoiceProfile:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)migrateVoiceProfilesIfNeededWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SSRVoiceProfileStore_migrateVoiceProfilesIfNeededWithCompletionBlock___block_invoke;
  v7[3] = &unk_278579618;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

void __72__SSRVoiceProfileStore_migrateVoiceProfilesIfNeededWithCompletionBlock___block_invoke(uint64_t a1)
{
  v176[1] = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 16) getVoiceProfileStoreVersion];
  v2 = *MEMORY[0x277D01970];
  v3 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
  if (v1 == -1)
  {
    if (v3)
    {
      *buf = 136315138;
      v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
      _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Migration of voice profile is triggered...", buf, 0xCu);
    }

    v5 = 0x278577000uLL;
    v134 = +[SSRVoiceProfileManager sharedInstance];
    v6 = [v134 SSRSpeakerProfilesBasePath];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v7 fileExistsAtPath:v6] & 1) == 0)
    {
      v20 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v167 = 2112;
        v168 = v6;
        _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Sat directory doesnt exist %@", buf, 0x16u);
      }

      v21 = *(a1 + 40);
      if (v21)
      {
        (*(v21 + 16))(v21, 0);
      }

      v10 = 0;
      goto LABEL_119;
    }

    v160 = 0;
    v8 = [v7 contentsOfDirectoryAtPath:v6 error:&v160];
    v9 = v160;
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = MEMORY[0x277CCACA8];
      v13 = [v9 localizedDescription];
      v14 = [v12 stringWithFormat:@"Failed to get contents of %@ with error %@", v6, v13];

      v15 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v167 = 2114;
        v168 = v14;
        _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      v16 = *(a1 + 40);
      if (!v16)
      {
        v8 = v11;
LABEL_118:

LABEL_119:
        goto LABEL_120;
      }

      v139 = v10;
      v17 = MEMORY[0x277CCA9B8];
      v175 = @"reason";
      v176[0] = v14;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:&v175 count:1];
      v19 = [v17 errorWithDomain:@"com.apple.speakerrecognition" code:722 userInfo:v18];
      (*(v16 + 16))(v16, v19);

      goto LABEL_66;
    }

    v22 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
      v167 = 2114;
      v168 = v8;
      _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s Migrating voice profiles in languages - %{public}@", buf, 0x16u);
    }

    v132 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = AFPreferencesSupportedLanguages();
    v124 = v8;
    v125 = v7;
    if (v18)
    {
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v23 = v8;
      v24 = [(SSRVoiceProfile *)v23 countByEnumeratingWithState:&v156 objects:v174 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v157;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v157 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v156 + 1) + 8 * i);
            if (([(SSRVoiceProfile *)v18 containsObject:v28]& 1) != 0)
            {
              [(SSRVoiceProfile *)v132 addObject:v28];
            }

            else
            {
              v29 = v18;
              v30 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
                v167 = 2114;
                v168 = v28;
                v169 = 2114;
                v170 = v29;
                _os_log_impl(&dword_225E12000, v30, OS_LOG_TYPE_DEFAULT, "%s Language %{public}@ not supported in %{public}@ - Deleting", buf, 0x20u);
              }

              v31 = [(SSRVoiceProfile *)v6 stringByAppendingPathComponent:v28];
              v32 = [SSRUtils removeItemAtPath:v31];

              v18 = v29;
            }
          }

          v25 = [(SSRVoiceProfile *)v23 countByEnumeratingWithState:&v156 objects:v174 count:16];
        }

        while (v25);
      }

      v8 = v124;
      v7 = v125;
      v5 = 0x278577000uLL;
    }

    if (!v132)
    {
      v11 = v8;
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filtered languages is nil - %@", v8];
      v56 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v167 = 2114;
        v168 = v55;
        _os_log_error_impl(&dword_225E12000, v56, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      }

      v57 = *(a1 + 40);
      if (v57)
      {
        (*(v57 + 16))(v57, 0);
      }

      v14 = 0;
      v139 = 0;
LABEL_66:
      v8 = v11;
LABEL_117:

      v10 = v139;
      goto LABEL_118;
    }

    v33 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
      v167 = 2114;
      v168 = v132;
      _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s Migrating voice profiles in languages - %{public}@", buf, 0x16u);
    }

    if ((CSIsIOS() & 1) != 0 || CSIsMac())
    {
      v123 = v18;
      v133 = v6;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      obj = v132;
      v34 = [(SSRVoiceProfile *)obj countByEnumeratingWithState:&v152 objects:v173 count:16];
      if (v34)
      {
        v35 = v34;
        v139 = 0;
        v36 = *v153;
        v37 = 0x278577000uLL;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v153 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v152 + 1) + 8 * j);
            v40 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
              v167 = 2114;
              v168 = v39;
              _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s Voice profile migration for language - %{public}@", buf, 0x16u);
            }

            v41 = [(SSRVoiceProfile *)v133 stringByAppendingPathComponent:v39];
            v42 = [v134 newVoiceProfileWithLocale:v39 withAppDomain:@"com.apple.siri"];
            v43 = v42;
            if (v42)
            {
              v44 = *(v37 + 1160);
              v45 = [v42 voiceProfileBasePath];
              v46 = [v44 moveContentsOfSrcDirectory:v41 toDestDirectory:v45];

              if (v46)
              {
                v47 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
                {
                  v53 = v47;
                  v54 = [v43 voiceProfileBasePath];
                  *buf = 136315906;
                  v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
                  v167 = 2114;
                  v168 = v41;
                  v169 = 2114;
                  v170 = v54;
                  v171 = 2114;
                  v172 = v46;
                  _os_log_error_impl(&dword_225E12000, v53, OS_LOG_TYPE_ERROR, "%s Moving contents from %{public}@ to %{public}@ failed with error %{public}@", buf, 0x2Au);
                }

                v139 = v46;
                v37 = 0x278577000;
              }

              else
              {
                [*(a1 + 32) _updateTrainedUsersWithAction:1 UserVoiceProfile:v43];
                v49 = [*(v37 + 1160) removeItemAtPath:v41];
                v50 = *MEMORY[0x277D01970];
                if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
                {
                  v51 = v50;
                  v52 = [v43 profileID];
                  *buf = 136315650;
                  v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
                  v167 = 2114;
                  v168 = v52;
                  v169 = 2114;
                  v170 = v39;
                  _os_log_impl(&dword_225E12000, v51, OS_LOG_TYPE_DEFAULT, "%s Completed migrating voiceprofile for %{public}@ in language %{public}@", buf, 0x20u);

                  v37 = 0x278577000;
                }

                v139 = 0;
              }
            }

            else
            {
              v48 = *MEMORY[0x277D01970];
              if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
                v167 = 2114;
                v168 = v39;
                _os_log_error_impl(&dword_225E12000, v48, OS_LOG_TYPE_ERROR, "%s voice profile created is nil!!! - Skipping %{public}@", buf, 0x16u);
              }
            }
          }

          v35 = [(SSRVoiceProfile *)obj countByEnumeratingWithState:&v152 objects:v173 count:16];
        }

        while (v35);
        goto LABEL_113;
      }

LABEL_112:
      v139 = 0;
LABEL_113:

      v6 = v133;
      v8 = v124;
      v7 = v125;
      v18 = v123;
LABEL_114:
      v111 = *(a1 + 40);
      if (v111)
      {
        (*(v111 + 16))(v111, v139);
      }

      v14 = v132;
      goto LABEL_117;
    }

    if (!CSIsCommunalDevice())
    {
      v139 = 0;
      goto LABEL_114;
    }

    v123 = v18;
    v133 = v6;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v126 = v132;
    v128 = [(SSRVoiceProfile *)v126 countByEnumeratingWithState:&v148 objects:v164 count:16];
    if (!v128)
    {
      goto LABEL_112;
    }

    v139 = 0;
    v127 = *v149;
LABEL_70:
    v58 = 0;
    v59 = MEMORY[0x277D01970];
    while (1)
    {
      v60 = v59;
      if (*v149 != v127)
      {
        objc_enumerationMutation(v126);
      }

      v61 = *(*(&v148 + 1) + 8 * v58);
      v62 = [*(v5 + 1216) sharedInstance];
      v63 = [v62 SSRSpeakerProfilesBasePath];
      v138 = v61;
      v64 = [v63 stringByAppendingPathComponent:v61];

      v65 = [v64 stringByAppendingPathComponent:@"spid"];
      v66 = [v65 stringByAppendingPathComponent:@"trained_users.json"];

      v147 = 0;
      v67 = [MEMORY[0x277CCAA00] defaultManager];
      LODWORD(v63) = [v67 fileExistsAtPath:v66 isDirectory:&v147];

      v68 = [MEMORY[0x277CBEA60] array];
      v69 = v68;
      if (v63)
      {
        v59 = v60;
        if (v147)
        {
          v70 = v68;
        }

        else
        {
          v71 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v66];
          v146 = 0;
          v70 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v71 options:0 error:&v146];
          v72 = v146;

          if (v70)
          {
            v73 = v72 == 0;
          }

          else
          {
            v73 = 0;
          }

          if (!v73)
          {
            v113 = *v59;
            if (os_log_type_enabled(*v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
              v167 = 2112;
              v168 = v66;
              v169 = 2112;
              v170 = v72;
              _os_log_impl(&dword_225E12000, v113, OS_LOG_TYPE_DEFAULT, "%s Could not read existing %@ file: err: %@", buf, 0x20u);
            }

            v115 = MEMORY[0x277CCACA8];
            v116 = [(SSRVoiceProfile *)v72 localizedDescription];
            v117 = [v115 stringWithFormat:@"Could not read existing %@ file: err: %@", v66, v116];

            v118 = *MEMORY[0x277D01970];
            v14 = v126;
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
              v167 = 2114;
              v168 = v117;
              _os_log_error_impl(&dword_225E12000, v118, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
            }

            v119 = *(a1 + 40);
            if (v119)
            {
              v120 = MEMORY[0x277CCA9B8];
              v162 = @"reason";
              v163 = v117;
              v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
              v122 = [v120 errorWithDomain:@"com.apple.speakerrecognition" code:722 userInfo:v121];
              (*(v119 + 16))(v119, v122);

              v14 = v126;
            }

            v6 = v133;
            v8 = v124;
            v7 = v125;
            v18 = v123;
            goto LABEL_117;
          }
        }
      }

      else
      {
        v70 = v68;
        v59 = v60;
      }

      v129 = v58;
      v74 = *v59;
      if (os_log_type_enabled(*v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v167 = 2114;
        v168 = v138;
        _os_log_impl(&dword_225E12000, v74, OS_LOG_TYPE_DEFAULT, "%s Voice profile migration for language - %{public}@", buf, 0x16u);
      }

      v130 = v66;
      v131 = v64;
      v75 = [SSRUtils removeItemAtPath:v66];
      v76 = [*(v5 + 1216) sharedInstance];
      v77 = [v76 SSRBasePathForAppDomain:@"com.apple.siri"];

      v136 = v77;
      v78 = [SSRUtils createDirectoryIfDoesNotExist:v77];
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      obja = v70;
      v79 = [obja countByEnumeratingWithState:&v142 objects:v161 count:16];
      if (v79)
      {
        break;
      }

LABEL_109:

      v110 = [SSRUtils removeItemAtPath:v131];
      v58 = v129 + 1;
      v5 = 0x278577000;
      if (v129 + 1 == v128)
      {
        v128 = [(SSRVoiceProfile *)v126 countByEnumeratingWithState:&v148 objects:v164 count:16];
        if (!v128)
        {
          goto LABEL_113;
        }

        goto LABEL_70;
      }
    }

    v80 = v79;
    v81 = *v143;
LABEL_87:
    v82 = 0;
    v137 = v80;
    while (1)
    {
      if (*v143 != v81)
      {
        objc_enumerationMutation(obja);
      }

      v83 = *(*(&v142 + 1) + 8 * v82);
      v84 = [v83 objectForKeyedSubscript:@"UserVoiceProfileOnboardType"];
      if (v84)
      {
        v85 = v84;
        v86 = [v83 objectForKeyedSubscript:@"UserVoiceProfileOnboardType"];
        v87 = [v86 unsignedIntegerValue];

        if (v87 == 1)
        {
          break;
        }
      }

      v101 = *v59;
      if (os_log_type_enabled(*v59, OS_LOG_TYPE_DEFAULT))
      {
        v88 = v101;
        v96 = [v83 objectForKeyedSubscript:@"UserVoiceProfileID"];
        v102 = [v83 objectForKeyedSubscript:@"UserVoiceProfileOnboardType"];
        *buf = 136315650;
        v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v167 = 2114;
        v168 = v96;
        v169 = 2114;
        v170 = v102;
        _os_log_impl(&dword_225E12000, v88, OS_LOG_TYPE_DEFAULT, "%s Skipped migrating non-siri landed profile - %{public}@, %{public}@", buf, 0x20u);

LABEL_106:
      }

      if (v80 == ++v82)
      {
        v80 = [obja countByEnumeratingWithState:&v142 objects:v161 count:16];
        if (!v80)
        {
          goto LABEL_109;
        }

        goto LABEL_87;
      }
    }

    v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v89 = [v83 objectForKeyedSubscript:@"UserVoiceProfileID"];
    [v88 setObject:v89 forKeyedSubscript:@"UserVoiceProfileID"];

    v90 = [v83 objectForKeyedSubscript:@"UserSharedSiriID"];
    [v88 setObject:v90 forKeyedSubscript:@"UserSharedSiriID"];

    v91 = [v83 objectForKeyedSubscript:@"UserVoiceProfileDateTrained"];
    [v88 setObject:v91 forKeyedSubscript:@"UserVoiceProfileDateTrained"];

    v92 = [v83 objectForKeyedSubscript:@"UserVoiceProfileExpSatVecCount"];
    [v88 setObject:v92 forKeyedSubscript:@"UserVoiceProfileExpSatVecCount"];

    [v88 setObject:v138 forKeyedSubscript:@"UserVoiceProfileLocale"];
    [v88 setObject:@"com.apple.siri" forKeyedSubscript:@"UserVoiceProfileAppDomain"];
    v93 = [v136 stringByAppendingPathComponent:v138];
    v94 = [v83 objectForKeyedSubscript:@"UserVoiceProfileID"];
    v95 = [v93 stringByAppendingPathComponent:v94];
    [v88 setObject:v95 forKeyedSubscript:@"UserVoiceProfilePath"];

    v96 = [[SSRVoiceProfile alloc] initWithDictionary:v88];
    if (v96)
    {
      v97 = [v83 objectForKeyedSubscript:@"UserVoiceProfilePath"];
      v98 = [(SSRVoiceProfile *)v96 voiceProfileBasePath];
      v99 = [SSRUtils moveContentsOfSrcDirectory:v97 toDestDirectory:v98];

      if (v99)
      {
        v59 = MEMORY[0x277D01970];
        v100 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
        {
          v107 = v100;
          v108 = [v83 objectForKeyedSubscript:@"UserVoiceProfilePath"];
          v109 = [(SSRVoiceProfile *)v96 voiceProfileBasePath];
          *buf = 136315906;
          v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
          v167 = 2114;
          v168 = v108;
          v169 = 2114;
          v170 = v109;
          v171 = 2114;
          v172 = v99;
          _os_log_error_impl(&dword_225E12000, v107, OS_LOG_TYPE_ERROR, "%s Moving contents from %{public}@ to %{public}@ failed with error %{public}@", buf, 0x2Au);

          v59 = MEMORY[0x277D01970];
        }

        v139 = v99;
      }

      else
      {
        [*(a1 + 32) _updateTrainedUsersWithAction:1 UserVoiceProfile:v96];
        v59 = MEMORY[0x277D01970];
        v104 = *MEMORY[0x277D01970];
        if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
        {
          v105 = v104;
          v106 = [(SSRVoiceProfile *)v96 profileID];
          *buf = 136315650;
          v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
          v167 = 2114;
          v168 = v106;
          v169 = 2114;
          v170 = v138;
          _os_log_impl(&dword_225E12000, v105, OS_LOG_TYPE_DEFAULT, "%s Completed migrating voiceprofile for %{public}@ in language %{public}@", buf, 0x20u);

          v59 = MEMORY[0x277D01970];
        }

        v139 = 0;
      }
    }

    else
    {
      v103 = *v59;
      if (os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
        v167 = 2114;
        v168 = v88;
        _os_log_error_impl(&dword_225E12000, v103, OS_LOG_TYPE_ERROR, "%s voice profile created is nil!!! - Skipping %{public}@", buf, 0x16u);
      }
    }

    v80 = v137;
    goto LABEL_106;
  }

  if (v3)
  {
    *buf = 136315138;
    v166 = "[SSRVoiceProfileStore migrateVoiceProfilesIfNeededWithCompletionBlock:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Profiles already migrated - Bailing out", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

LABEL_120:
  v112 = *MEMORY[0x277D85DE8];
}

- (id)userVoiceProfileForVoiceProfileID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
    v6 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(_enrolledVoiceProfiles);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          profileID = [v9 profileID];
          v11 = [profileID isEqualToString:dCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)userVoiceProfilesForLocale:(id)locale
{
  v26 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  if (localeCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
    v7 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(_enrolledVoiceProfiles);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          locale = [v11 locale];
          v13 = [locale isEqualToString:localeCopy];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v16 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[SSRVoiceProfileStore userVoiceProfilesForLocale:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s ERR: locale passed as nil", buf, 0xCu);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)userVoiceProfilesForAppDomain:(id)domain forLocale:(id)locale
{
  v27 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  localeCopy = locale;
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
  v10 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v23;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(_enrolledVoiceProfiles);
      }

      v14 = *(*(&v22 + 1) + 8 * i);
      if (domainCopy)
      {
        appDomain = [*(*(&v22 + 1) + 8 * i) appDomain];
        if (([appDomain isEqualToString:domainCopy] & 1) == 0)
        {

          continue;
        }

        if (!localeCopy)
        {

LABEL_16:
          [v21 addObject:v14];
          continue;
        }
      }

      else if (!localeCopy)
      {
        goto LABEL_16;
      }

      locale = [v14 locale];
      v16 = [locale isEqualToString:localeCopy];

      if (!domainCopy)
      {
        if (!v16)
        {
          continue;
        }

        goto LABEL_16;
      }

      if (v16)
      {
        goto LABEL_16;
      }
    }

    v11 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v11);
LABEL_19:

  if ([v21 count])
  {
    v17 = v21;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)userVoiceProfilesForAppDomain:(id)domain
{
  v26 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  if (domainCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    _enrolledVoiceProfiles = [(SSRVoiceProfileStore *)self _enrolledVoiceProfiles];
    v7 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(_enrolledVoiceProfiles);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          appDomain = [v11 appDomain];
          v13 = [appDomain isEqualToString:domainCopy];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [_enrolledVoiceProfiles countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v16 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[SSRVoiceProfileStore userVoiceProfilesForAppDomain:]";
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s ERR: appDomain passed as nil", buf, 0xCu);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)initStore
{
  v8.receiver = self;
  v8.super_class = SSRVoiceProfileStore;
  v2 = [(SSRVoiceProfileStore *)&v8 init];
  if (v2)
  {
    v3 = +[SSRVoiceProfileStorePrefs sharedStorePrefs];
    storePrefs = v2->_storePrefs;
    v2->_storePrefs = v3;

    v5 = dispatch_queue_create("com.apple.corespeech.voiceprofilestore", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7998 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7998, &__block_literal_global_7999);
  }

  v3 = sharedInstance_userStore;

  return v3;
}

uint64_t __38__SSRVoiceProfileStore_sharedInstance__block_invoke()
{
  if (CSIsInternalBuild())
  {
    +[SSRUtils cleanupOrphanedVoiceIdGradingFiles];
  }

  sharedInstance_userStore = [[SSRVoiceProfileStore alloc] initStore];

  return MEMORY[0x2821F96F8]();
}

@end