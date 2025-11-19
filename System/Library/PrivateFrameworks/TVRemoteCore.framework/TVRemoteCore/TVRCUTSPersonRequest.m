@interface TVRCUTSPersonRequest
- (void)requestForPersonID:(id)a3 completion:(id)a4;
@end

@implementation TVRCUTSPersonRequest

- (void)requestForPersonID:(id)a3 completion:(id)a4
{
  v37[7] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    v9 = [v8 ams_activeiTunesAccount];
    v10 = [v9 ams_storefront];
    v11 = [v10 componentsSeparatedByString:@"-"];
    v12 = [v11 firstObject];
    v13 = v12;
    v14 = @"143441";
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"canvases/Persons/%@", v6];
    v17 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v18 = [v17 firstObject];
    v19 = v18;
    v20 = @"en-US";
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v22 = [MEMORY[0x277CBEAF8] currentLocale];
    v23 = [v22 countryCode];
    v24 = v23;
    v25 = @"US";
    if (v23)
    {
      v25 = v23;
    }

    v26 = v25;

    v36[0] = @"profile";
    v36[1] = @"caller";
    v37[0] = @"Full";
    v37[1] = @"tv-remote";
    v36[2] = @"locale";
    v36[3] = @"country";
    v37[2] = v21;
    v37[3] = v26;
    v36[4] = @"sf";
    v36[5] = @"pfm";
    v37[4] = v15;
    v37[5] = @"AppleTV";
    v36[6] = @"v";
    v37[6] = @"82";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:7];

    v28 = [(TVRCUTSPersonRequest *)self _requestPropertiesForEndPoint:v16 apiVersion:&unk_287E66B20 headersDict:MEMORY[0x277CBEC10] queryParamsDict:v27];

    v29 = [objc_alloc(MEMORY[0x277D7A980]) initWithRequestProperties:v28];
    objc_initWeak(&location, v29);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__TVRCUTSPersonRequest_requestForPersonID_completion___block_invoke;
    v32[3] = &unk_279D82F58;
    objc_copyWeak(&v34, &location);
    v33 = v7;
    [v29 setCompletionBlock:v32];
    v30 = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
    [v30 addOperation:v29];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __54__TVRCUTSPersonRequest_requestForPersonID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 responseDictionary];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TVRCUTSPersonRequest_requestForPersonID_completion___block_invoke_2;
  block[3] = &unk_279D82F30;
  v10 = v5;
  v6 = *(a1 + 32);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __54__TVRCUTSPersonRequest_requestForPersonID_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"person"];
  v7 = [TVRCPerson personWithDictionary:v2];

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"canvas"];
  v4 = [v3 objectForKeyedSubscript:@"shelves"];

  v5 = [TVRCFilmography filmographyWithDictionaries:v4];
  v6 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

@end