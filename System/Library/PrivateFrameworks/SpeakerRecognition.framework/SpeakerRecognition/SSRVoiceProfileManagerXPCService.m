@interface SSRVoiceProfileManagerXPCService
- (SSRVoiceProfileManagerXPCService)init;
- (void)importVoiceProfile:(id)a3 appDomain:(id)a4 withSharedUserId:(id)a5 withPersonaId:(id)a6 withLocale:(id)a7 withAsset:(id)a8 trainWithPayload:(BOOL)a9 withCompletion:(id)a10;
- (void)markSATEnrollmentSuccessForVoiceProfile:(id)a3 completion:(id)a4;
@end

@implementation SSRVoiceProfileManagerXPCService

- (void)importVoiceProfile:(id)a3 appDomain:(id)a4 withSharedUserId:(id)a5 withPersonaId:(id)a6 withLocale:(id)a7 withAsset:(id)a8 trainWithPayload:(BOOL)a9 withCompletion:(id)a10
{
  v74[2] = *MEMORY[0x277D85DE8];
  v54 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v21 = MEMORY[0x277D01970];
  v22 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v66 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
    _os_log_impl(&dword_225E12000, v22, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke;
  v63[3] = &unk_278579690;
  v23 = v20;
  v64 = v23;
  v24 = MEMORY[0x22AA71400](v63);
  v53 = v15;
  v25 = [[SSRVoiceProfile alloc] initNewVoiceProfileWithLocale:v18 withAppDomain:v15];
  v52 = v16;
  [v25 setSharedSiriProfileId:v16];
  [v25 setPersonaId:v17];
  if (v19)
  {
    v73[0] = @"SSRVoiceRetrainingVoiceProfile";
    v73[1] = @"SSRVoiceRetrainingAsset";
    v74[0] = v25;
    v74[1] = v19;
    v26 = MEMORY[0x277CBEAC0];
    v27 = v74;
    v28 = v73;
    v29 = 2;
  }

  else
  {
    v71 = @"SSRVoiceRetrainingVoiceProfile";
    v72 = v25;
    v26 = MEMORY[0x277CBEAC0];
    v27 = &v72;
    v28 = &v71;
    v29 = 1;
  }

  v30 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:v29];
  v31 = v30;
  if (a9)
  {
    v32 = [v30 mutableCopy];
    [v32 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SSRVoiceRetrainingPayloadProfile"];
    v33 = [v32 copy];

    v31 = v33;
  }

  v62 = 0;
  v34 = [[SSRVoiceProfileRetrainingContext alloc] initWithVoiceRetrainingContext:v31 error:&v62];
  v35 = v62;
  if (v35)
  {
    v36 = v35;
    v37 = *v21;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v66 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
      v67 = 2112;
      v68 = v36;
      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s ERR: Retraining context failed to init with error: %@", buf, 0x16u);
    }

    (v24)[2](v24, v36);
  }

  else
  {
    v50 = v17;
    v49 = +[SSRVoiceProfileManager sharedInstance];
    [MEMORY[0x277CCAA00] defaultManager];
    v39 = v38 = v21;
    v61 = 0;
    v51 = [v39 subpathsOfDirectoryAtPath:v54 error:&v61];
    v36 = v61;

    v40 = *v38;
    if (os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v66 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
      v67 = 2112;
      v68 = v51;
      _os_log_impl(&dword_225E12000, v40, OS_LOG_TYPE_DEFAULT, "%s fileList - %@", buf, 0x16u);
    }

    v48 = v18;
    if (v36)
    {
      v41 = *MEMORY[0x277D01970];
      v17 = v50;
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v66 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
        v67 = 2112;
        v68 = v54;
        v69 = 2112;
        v70 = v36;
        _os_log_impl(&dword_225E12000, v41, OS_LOG_TYPE_DEFAULT, "%s ERR: Fetching contents of %@ failed with error - %@", buf, 0x20u);
      }

      (v24)[2](v24, v36);
      v42 = v49;
    }

    else
    {
      v47 = v23;
      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_10;
      v58[3] = &unk_2785796D0;
      v59 = v54;
      v44 = v43;
      v60 = v44;
      [v51 enumerateObjectsUsingBlock:v58];
      v45 = *MEMORY[0x277D01970];
      v17 = v50;
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v66 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]";
        v67 = 2112;
        v68 = v44;
        _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s wavList - %@", buf, 0x16u);
      }

      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_25;
      v55[3] = &unk_2785796F8;
      v56 = v25;
      v57 = v24;
      v42 = v49;
      [v49 addUtterances:v44 toProfile:v56 withContext:v34 doUtteranceDonation:0 withCompletion:v55];

      v23 = v47;
    }

    v18 = v48;
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Completion called with error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v15 = v3;
    if ([v3 hasSuffix:@".wav"])
    {
      if ([*(a1 + 32) isAbsolutePath])
      {
        v4 = *(a1 + 32);
      }

      else
      {
        v5 = MEMORY[0x277CCACA8];
        v6 = [MEMORY[0x277CCAA00] defaultManager];
        v7 = [v6 currentDirectoryPath];
        v4 = [v5 stringWithFormat:@"%@/%@", v7, *(a1 + 32)];
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"file://%@/%@", v4, v15];
      v9 = v8;
      v10 = &stru_283923FC0;
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      v12 = *(a1 + 40);
      v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];

      [v12 addObject:v13];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __149__SSRVoiceProfileManagerXPCService_importVoiceProfile_appDomain_withSharedUserId_withPersonaId_withLocale_withAsset_trainWithPayload_withCompletion___block_invoke_25(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 profileID];
    v9 = 136315650;
    v10 = "[SSRVoiceProfileManagerXPCService importVoiceProfile:appDomain:withSharedUserId:withPersonaId:withLocale:withAsset:trainWithPayload:withCompletion:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Adding utterances to profileID: %@ finished with err: %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)markSATEnrollmentSuccessForVoiceProfile:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SSRVoiceProfileManagerXPCService markSATEnrollmentSuccessForVoiceProfile:completion:]";
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__SSRVoiceProfileManagerXPCService_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke;
  v15[3] = &unk_278579668;
  v8 = v6;
  v16 = v8;
  v9 = MEMORY[0x22AA71400](v15);
  if (!v5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Voice Profile sent as nil - Bailing out"];
    v11 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18 = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.speakerrecognition" code:731 userInfo:v12];

    (v9)[2](v9, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __87__SSRVoiceProfileManagerXPCService_markSATEnrollmentSuccessForVoiceProfile_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SSRVoiceProfileManagerXPCService markSATEnrollmentSuccessForVoiceProfile:completion:]_block_invoke";
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Completion called with result: %i, error: %@", &v9, 0x1Cu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (SSRVoiceProfileManagerXPCService)init
{
  v4.receiver = self;
  v4.super_class = SSRVoiceProfileManagerXPCService;
  v2 = [(SSRVoiceProfileManagerXPCService *)&v4 init];
  if (v2)
  {
    SSRLogInitIfNeeded();
  }

  return v2;
}

@end