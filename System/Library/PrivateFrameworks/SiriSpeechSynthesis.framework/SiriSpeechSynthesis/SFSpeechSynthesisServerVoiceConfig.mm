@interface SFSpeechSynthesisServerVoiceConfig
+ (id)getTtsServerEndpointByCluster:(id)a3 withServiceType:(id)a4;
- (SFSpeechSynthesisServerVoiceConfig)initWithUrl:(id)a3 useBlazar:(BOOL)a4 enableAuthentication:(BOOL)a5;
@end

@implementation SFSpeechSynthesisServerVoiceConfig

- (SFSpeechSynthesisServerVoiceConfig)initWithUrl:(id)a3 useBlazar:(BOOL)a4 enableAuthentication:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SFSpeechSynthesisServerVoiceConfig;
  v10 = [(SFSpeechSynthesisServerVoiceConfig *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_ospreyEndpointUrl, a3);
    v11->_useBlazar = a4;
    v11->_enableAuthentication = a5;
  }

  return v11;
}

+ (id)getTtsServerEndpointByCluster:(id)a3 withServiceType:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v36 = a4;
  v5 = SFSSGetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v35;
    *&buf[12] = 2112;
    *&buf[14] = v36;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "GetTtsServerEndpoint, cluster=%@, serverType=%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v49 = __Block_byref_object_copy__493;
  v50 = __Block_byref_object_dispose__494;
  v51 = 0;
  v6 = dispatch_semaphore_create(0);
  v37 = objc_alloc_init(MEMORY[0x277CCAB70]);
  v7 = MEMORY[0x277CBEBC0];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"https://tts-service-tts-tts-proxy-server-dev.usmsc04.app.apple.com/proxy/get_all_tts_service?cluster=%@&service=%@", v35, v36];
  v9 = [v7 URLWithString:v8];
  [v37 setURL:v9];

  [v37 setHTTPMethod:@"GET"];
  v10 = MEMORY[0x277CCAD30];
  v11 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v34 = [v10 sessionWithConfiguration:v11];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __84__SFSpeechSynthesisServerVoiceConfig_getTtsServerEndpointByCluster_withServiceType___block_invoke;
  v42[3] = &unk_279C4C298;
  v44 = buf;
  dsema = v6;
  v43 = dsema;
  v12 = [v34 dataTaskWithRequest:v37 completionHandler:v42];
  [v12 resume];

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (*(*&buf[8] + 40))
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = *(*&buf[8] + 40);
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v14)
    {
      v15 = *v39;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [*(*&buf[8] + 40) objectForKey:v17];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v20 = [*(*&buf[8] + 40) objectForKey:v17];
            v21 = arc4random_uniform([v20 count]);

            v22 = [*(*&buf[8] + 40) objectForKey:v17];
            v23 = [v22 objectAtIndexedSubscript:v21];

            v24 = SFSSGetLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *v45 = 138412290;
              v46 = v23;
              _os_log_impl(&dword_269079000, v24, OS_LOG_TYPE_INFO, "Selected endpoint=%@", v45, 0xCu);
            }

            v25 = [v23 componentsSeparatedByString:@":"];
            if ([v25 count] > 1)
            {
              v26 = MEMORY[0x277CCACA8];
              v27 = [v25 objectAtIndexedSubscript:0];
              v28 = [v25 objectAtIndexedSubscript:1];
              v29 = [v26 stringWithFormat:@"http://%@:%@", v27, v28];

              v30 = SFSSGetLogObject();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *v45 = 138412290;
                v46 = v29;
                _os_log_impl(&dword_269079000, v30, OS_LOG_TYPE_INFO, "Selected URL=%@", v45, 0xCu);
              }

              v14 = v29;
              v13 = v14;
              goto LABEL_21;
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(buf, 8);
  v31 = *MEMORY[0x277D85DE8];

  return v14;
}

void __84__SFSpeechSynthesisServerVoiceConfig_getTtsServerEndpointByCluster_withServiceType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = SFSSGetLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_error_impl(&dword_269079000, v7, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:&v17];
    v7 = v17;
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = SFSSGetLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_269079000, v11, OS_LOG_TYPE_INFO, "jsonResponse: %@", buf, 0xCu);
    }

    if (v7)
    {
      v13 = SFSSGetLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v7;
        _os_log_error_impl(&dword_269079000, v13, OS_LOG_TYPE_ERROR, "jsonError: %@", buf, 0xCu);
      }

      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v16 = *MEMORY[0x277D85DE8];
}

@end