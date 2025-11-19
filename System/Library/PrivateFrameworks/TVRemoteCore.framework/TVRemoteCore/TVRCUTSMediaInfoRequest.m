@interface TVRCUTSMediaInfoRequest
- (void)requestForCanonicalID:(id)a3 includeRoles:(BOOL)a4 completion:(id)a5;
@end

@implementation TVRCUTSMediaInfoRequest

- (void)requestForCanonicalID:(id)a3 includeRoles:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v46[8] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([v8 length])
  {
    v37 = self;
    v10 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    v11 = [v10 ams_activeiTunesAccount];
    v12 = [v11 ams_storefront];
    v13 = [v12 componentsSeparatedByString:@"-"];
    v14 = [v13 firstObject];
    v15 = v14;
    v16 = @"143441";
    if (v14)
    {
      v16 = v14;
    }

    v38 = v16;

    v17 = &unk_287E669E8;
    if (v6)
    {
      v17 = &unk_287E669D0;
    }

    v18 = v17;
    if (v6)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"view/product/%@", v8];
      v20 = &unk_287E66C28;
    }

    else
    {
      v20 = MEMORY[0x277CBEC10];
      v19 = @"contents";
    }

    v22 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v23 = [v22 firstObject];
    v24 = v23;
    v25 = @"en-US";
    if (v23)
    {
      v25 = v23;
    }

    v26 = v25;

    v27 = [MEMORY[0x277CBEAF8] currentLocale];
    v28 = [v27 countryCode];
    v29 = v28;
    v30 = @"US";
    if (v28)
    {
      v30 = v28;
    }

    v31 = v30;

    if (v6)
    {
      v32 = &unk_287E66C50;
    }

    else
    {
      v45[0] = @"ids";
      v45[1] = @"profile";
      v46[0] = v8;
      v46[1] = @"Full";
      v45[2] = @"caller";
      v45[3] = @"locale";
      v46[2] = @"tv-remote";
      v46[3] = v26;
      v45[4] = @"country";
      v45[5] = @"sf";
      v46[4] = v31;
      v46[5] = v38;
      v45[6] = @"pfm";
      v45[7] = @"v";
      v46[6] = @"AppleTV";
      v46[7] = @"82";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:8];
    }

    v33 = [(TVRCUTSMediaInfoRequest *)v37 _requestPropertiesForEndPoint:v19 apiVersion:v18 headersDict:v20 queryParamsDict:v32];

    v34 = [objc_alloc(MEMORY[0x277D7A980]) initWithRequestProperties:v33];
    objc_initWeak(&location, v34);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __73__TVRCUTSMediaInfoRequest_requestForCanonicalID_includeRoles_completion___block_invoke;
    v39[3] = &unk_279D82370;
    objc_copyWeak(&v42, &location);
    v43 = v6;
    v40 = v8;
    v41 = v9;
    [v34 setCompletionBlock:v39];
    v35 = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
    [v35 addOperation:v34];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  else
  {
    v21 = [TVRCMediaInfo mediaInfoWithDictionary:MEMORY[0x277CBEC10]];
    (*(v9 + 2))(v9, v21, 0);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __73__TVRCUTSMediaInfoRequest_requestForCanonicalID_includeRoles_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 responseDictionary];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__TVRCUTSMediaInfoRequest_requestForCanonicalID_includeRoles_completion___block_invoke_2;
  block[3] = &unk_279D82348;
  v10 = v5;
  v14 = *(a1 + 56);
  v11 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__TVRCUTSMediaInfoRequest_requestForCanonicalID_includeRoles_completion___block_invoke_2(uint64_t a1)
{
  v7 = *(a1 + 32);
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:@"content"];
    v3 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

      v7 = v4;
    }
  }

  v5 = *(a1 + 56);
  v6 = [TVRCMediaInfo mediaInfoWithDictionary:v7];
  (*(v5 + 16))(v5, v6, *(a1 + 48));
}

@end