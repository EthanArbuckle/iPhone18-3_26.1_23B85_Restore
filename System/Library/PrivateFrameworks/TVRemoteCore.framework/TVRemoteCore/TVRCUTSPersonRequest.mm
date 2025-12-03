@interface TVRCUTSPersonRequest
- (void)requestForPersonID:(id)d completion:(id)completion;
@end

@implementation TVRCUTSPersonRequest

- (void)requestForPersonID:(id)d completion:(id)completion
{
  v37[7] = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if ([dCopy length])
  {
    ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
    ams_storefront = [ams_activeiTunesAccount ams_storefront];
    v11 = [ams_storefront componentsSeparatedByString:@"-"];
    firstObject = [v11 firstObject];
    v13 = firstObject;
    v14 = @"143441";
    if (firstObject)
    {
      v14 = firstObject;
    }

    v15 = v14;

    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"canvases/Persons/%@", dCopy];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject2 = [preferredLanguages firstObject];
    v19 = firstObject2;
    v20 = @"en-US";
    if (firstObject2)
    {
      v20 = firstObject2;
    }

    v21 = v20;

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    countryCode = [currentLocale countryCode];
    v24 = countryCode;
    v25 = @"US";
    if (countryCode)
    {
      v25 = countryCode;
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

    v28 = [(TVRCUTSPersonRequest *)self _requestPropertiesForEndPoint:dCopy apiVersion:&unk_287E66B20 headersDict:MEMORY[0x277CBEC10] queryParamsDict:v27];

    v29 = [objc_alloc(MEMORY[0x277D7A980]) initWithRequestProperties:v28];
    objc_initWeak(&location, v29);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__TVRCUTSPersonRequest_requestForPersonID_completion___block_invoke;
    v32[3] = &unk_279D82F58;
    objc_copyWeak(&v34, &location);
    v33 = completionCopy;
    [v29 setCompletionBlock:v32];
    wlkDefaultConcurrentQueue = [MEMORY[0x277CCABD8] wlkDefaultConcurrentQueue];
    [wlkDefaultConcurrentQueue addOperation:v29];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
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