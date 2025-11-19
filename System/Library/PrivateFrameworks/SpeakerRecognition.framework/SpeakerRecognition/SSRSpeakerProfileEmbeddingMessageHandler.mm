@interface SSRSpeakerProfileEmbeddingMessageHandler
- (SSRSpeakerProfileEmbeddingMessageHandler)initWithConnection:(id)a3;
- (void)refreshEmbeddingsforLanguageCode:(id)a3 withCompletion:(id)a4;
- (void)setupListenerDelegate:(id)a3;
- (void)speakerProfileUpdated:(id)a3;
@end

@implementation SSRSpeakerProfileEmbeddingMessageHandler

- (void)refreshEmbeddingsforLanguageCode:(id)a3 withCompletion:(id)a4
{
  v82[3] = *MEMORY[0x277D85DE8];
  v51 = a3;
  v49 = a4;
  if (!v49)
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[SSRSpeakerProfileEmbeddingMessageHandler refreshEmbeddingsforLanguageCode:withCompletion:]";
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s completion block is nil", buf, 0xCu);
    }

    goto LABEL_56;
  }

  v50 = [MEMORY[0x277CBEB18] array];
  v6 = [(SSRVoiceProfileManager *)self->_voiceProfileManager provisionedVoiceProfilesForAppDomain:@"com.apple.siri" withLocale:v51];
  v48 = v6;
  if (!v6)
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "[SSRSpeakerProfileEmbeddingMessageHandler refreshEmbeddingsforLanguageCode:withCompletion:]";
      _os_log_debug_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEBUG, "%s voice profiles are nil", buf, 0xCu);
    }

    goto LABEL_51;
  }

  v81[0] = @"SSRSpeakerRecognitionLocale";
  v81[1] = @"SSRSpeakerRecognitionProfileArray";
  v82[0] = v51;
  v82[1] = v6;
  v81[2] = @"SSRSpeakerRecognitionUsePayloadProfile";
  v82[2] = MEMORY[0x277CBEC38];
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];
  if ([MEMORY[0x277D018F8] supportsVoiceProfileIDInUserProfile])
  {
    v53 = 0;
    goto LABEL_26;
  }

  v53 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB58] set];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v10 = v48;
  v11 = [v10 countByEnumeratingWithState:&v71 objects:v80 count:16];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = *v72;
  v13 = MEMORY[0x277D01970];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v72 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v71 + 1) + 8 * i);
      v16 = [v15 siriProfileId];
      v17 = [v15 profileID];
      if (!v16 || [v16 isEqual:&stru_283923FC0])
      {
        v18 = *v13;
        if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        *buf = 136315394;
        *&buf[4] = "[SSRSpeakerProfileEmbeddingMessageHandler refreshEmbeddingsforLanguageCode:withCompletion:]";
        *&buf[12] = 2112;
        *&buf[14] = v17;
        v19 = v18;
        v20 = "%s Voice Profile %@ with nil or empty siriSharedUserID found";
        v21 = 22;
        goto LABEL_18;
      }

      if ([v9 containsObject:v16])
      {
        v22 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "[SSRSpeakerProfileEmbeddingMessageHandler refreshEmbeddingsforLanguageCode:withCompletion:]";
          *&buf[12] = 2112;
          *&buf[14] = v17;
          *&buf[22] = 2112;
          v76 = v16;
          v19 = v22;
          v20 = "%s Duplicate Voice Profile %@ found with siriSharedUserID: %@";
          v21 = 32;
LABEL_18:
          _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
        }
      }

      else
      {
        v23 = [v15 profileID];
        [v53 setValue:v16 forKey:v23];

        [v9 addObject:v16];
      }

LABEL_23:
    }

    v11 = [v10 countByEnumeratingWithState:&v71 objects:v80 count:16];
  }

  while (v11);
LABEL_25:

LABEL_26:
  v46 = [[SSRSpeakerRecognitionContext alloc] initWithVoiceRecognitionContext:v47 error:0];
  v24 = [(SSRSpeakerRecognitionContext *)v46 modelsContext];
  v25 = [SSRUtils stringForSpeakerRecognizerType:1];
  v45 = [v24 objectForKeyedSubscript:v25];

  if ([MEMORY[0x277D018F8] supportsSecureAssetForSpeakerRecognition])
  {
    [v45 voiceProfilesModelFilePathsExclave];
  }

  else
  {
    [v45 voiceProfilesModelFilePaths];
  }
  v54 = ;
  if (v54 && [v54 count])
  {
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    v67 = 0u;
    obj = [v54 allKeys];
    v26 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v26)
    {
      v28 = *v68;
      *&v27 = 136315394;
      v44 = v27;
      do
      {
        v29 = 0;
        do
        {
          if (*v68 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v67 + 1) + 8 * v29);
          if (v30 && (([MEMORY[0x277D018F8] supportsVoiceProfileIDInUserProfile] & 1) != 0 || (objc_msgSend(v53, "objectForKey:", v30), v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 == 0, v31, !v32)))
          {
            v33 = [v54 objectForKeyedSubscript:{v30, v44}];
            v34 = MEMORY[0x277CBEBC0];
            v35 = [v33 path];
            v36 = [v34 fileURLWithPath:v35];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v76 = __Block_byref_object_copy__3699;
            v77 = __Block_byref_object_dispose__3700;
            v78 = 0;
            v61 = 0;
            v62 = &v61;
            v63 = 0x3032000000;
            v64 = __Block_byref_object_copy__3699;
            v65 = __Block_byref_object_dispose__3700;
            v66 = 0;
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __92__SSRSpeakerProfileEmbeddingMessageHandler_refreshEmbeddingsforLanguageCode_withCompletion___block_invoke;
            v55[3] = &unk_278578488;
            v37 = v36;
            v59 = buf;
            v56 = v37;
            v57 = v30;
            v58 = v53;
            v60 = &v61;
            [SSRSpeakerProfileEmbeddingExtractor extractProfileData:v37 completion:v55];
            v38 = v62[5];
            if (!v38)
            {
              [v50 addObject:*(*&buf[8] + 40)];
            }

            _Block_object_dispose(&v61, 8);
            _Block_object_dispose(buf, 8);

            if (v38)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v39 = *MEMORY[0x277D01970];
            if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
            {
              *buf = v44;
              v40 = @"nil";
              if (v30)
              {
                v40 = v30;
              }

              *&buf[4] = "[SSRSpeakerProfileEmbeddingMessageHandler refreshEmbeddingsforLanguageCode:withCompletion:]";
              *&buf[12] = 2112;
              *&buf[14] = v40;
              _os_log_debug_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEBUG, "%s Ignoring the voice profile %@", buf, 0x16u);
            }
          }

          ++v29;
        }

        while (v26 != v29);
        v41 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
        v26 = v41;
      }

      while (v41);
    }

LABEL_50:

LABEL_51:
    v49[2](v49, v50);
  }

  else
  {
    v42 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[SSRSpeakerProfileEmbeddingMessageHandler refreshEmbeddingsforLanguageCode:withCompletion:]";
      _os_log_error_impl(&dword_225E12000, v42, OS_LOG_TYPE_ERROR, "%s model context is nil", buf, 0xCu);
    }

    v49[2](v49, 0);
  }

LABEL_56:
  v43 = *MEMORY[0x277D85DE8];
}

void __92__SSRSpeakerProfileEmbeddingMessageHandler_refreshEmbeddingsforLanguageCode_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v26 = 136315394;
    v27 = "[SSRSpeakerProfileEmbeddingMessageHandler refreshEmbeddingsforLanguageCode:withCompletion:]_block_invoke";
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s Extracting profile embeddings from: %@", &v26, 0x16u);
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v9 length:{"bytes"), 4 * a3 * a4}];
  v14 = [MEMORY[0x277D018F8] supportsVoiceProfileIDInUserProfile];
  v15 = [SSRSpeakerProfileEmbedding alloc];
  v16 = v15;
  if (v14)
  {
    v17 = [(SSRSpeakerProfileEmbedding *)v15 initWithVoiceProfileId:*(a1 + 40) embeddings:v13 numEmbedding:a3 dimension:a4 speakerRecognizerType:1];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  else
  {
    v19 = [*(a1 + 48) valueForKey:*(a1 + 40)];
    v20 = [(SSRSpeakerProfileEmbedding *)v16 initWithSiriSharedUserId:v19 embeddings:v13 numEmbedding:a3 dimension:a4 speakerRecognizerType:1];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  v23 = *(*(a1 + 64) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v10;

  v25 = *MEMORY[0x277D85DE8];
}

- (void)speakerProfileUpdated:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SSRSpeakerProfileEmbeddingMessageHandler_speakerProfileUpdated___block_invoke;
  v7[3] = &unk_278579350;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __66__SSRSpeakerProfileEmbeddingMessageHandler_speakerProfileUpdated___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SSRSpeakerProfileEmbeddingMessageHandler speakerProfileUpdated:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_INFO, "%s Profile embeddings updated for languageCode: %@", &v6, 0x16u);
  }

  result = [*(*(a1 + 40) + 32) speakerProfileEmbeddingsUpdated:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setupListenerDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SSRSpeakerProfileEmbeddingMessageHandler_setupListenerDelegate___block_invoke;
  v7[3] = &unk_278579350;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __66__SSRSpeakerProfileEmbeddingMessageHandler_setupListenerDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 32);
    v5 = 136315394;
    v6 = "[SSRSpeakerProfileEmbeddingMessageHandler setupListenerDelegate:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s _listenerDelegate = %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerProfileEmbeddingMessageHandler)initWithConnection:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SSRSpeakerProfileEmbeddingMessageHandler;
  v6 = [(SSRSpeakerProfileEmbeddingMessageHandler *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = +[SSRVoiceProfileManager sharedInstance];
    voiceProfileManager = v7->_voiceProfileManager;
    v7->_voiceProfileManager = v8;

    [(SSRVoiceProfileManager *)v7->_voiceProfileManager setDelegate:v7];
    v10 = dispatch_queue_create("SSRSpeakerProfileEmbeddingMessageHandler", 0);
    queue = v7->_queue;
    v7->_queue = v10;

    v12 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[SSRSpeakerProfileEmbeddingMessageHandler initWithConnection:]";
      _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

@end