@interface SHAMPConfigurationRequester
- (SHStorefront)storefront;
- (id)endpointURLWithHost:(id)a3 path:(id)a4 storefront:(id)a5;
- (void)configurationEndpoint:(id)a3;
- (void)fetchOffersAtURL:(id)a3 completionHandler:(id)a4;
- (void)fetchShazamAMPConfiguration:(id)a3 completionHandler:(id)a4;
- (void)fetchStreamingProvidersAtURL:(id)a3 completionHandler:(id)a4;
- (void)offersWithCompletion:(id)a3;
- (void)streamingProvidersWithCompletion:(id)a3;
@end

@implementation SHAMPConfigurationRequester

- (void)configurationEndpoint:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[SHRemoteConfiguration sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SHAMPConfigurationRequester_configurationEndpoint___block_invoke;
  v7[3] = &unk_2788FB158;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 shazamAMPConfigurationAPIHostWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__SHAMPConfigurationRequester_configurationEndpoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[SHRemoteConfiguration sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SHAMPConfigurationRequester_configurationEndpoint___block_invoke_2;
  v9[3] = &unk_2788FB130;
  objc_copyWeak(&v12, (a1 + 48));
  v9[4] = *(a1 + 32);
  v8 = v5;
  v10 = v8;
  v11 = *(a1 + 40);
  [v7 shazamOfferAPIURLPathWithCompletion:v9];

  objc_destroyWeak(&v12);
}

void __53__SHAMPConfigurationRequester_configurationEndpoint___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained storefront];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SHAMPConfigurationRequester_configurationEndpoint___block_invoke_3;
  v13[3] = &unk_2788FB108;
  v9 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v9;
  v15 = v5;
  v10 = *(a1 + 48);
  v16 = v6;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  [v8 storefrontCountryCode:v13];
}

void __53__SHAMPConfigurationRequester_configurationEndpoint___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) endpointURLWithHost:*(a1 + 40) path:*(a1 + 48) storefront:a2];
  v8 = v4;
  if (*(a1 + 40) && a2 && *(a1 + 48) && v4)
  {
    v5 = *(a1 + 56);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = *(a1 + 64);
    v7 = [SHCoreError errorWithCode:401 underlyingError:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (void)offersWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SHAMPConfigurationRequester_offersWithCompletion___block_invoke;
  v6[3] = &unk_2788FB180;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(SHAMPConfigurationRequester *)self configurationEndpoint:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__SHAMPConfigurationRequester_offersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained fetchOffersAtURL:v3 completionHandler:*(a1 + 32)];
}

- (void)streamingProvidersWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SHAMPConfigurationRequester_streamingProvidersWithCompletion___block_invoke;
  v6[3] = &unk_2788FB180;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(SHAMPConfigurationRequester *)self configurationEndpoint:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __64__SHAMPConfigurationRequester_streamingProvidersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained fetchStreamingProvidersAtURL:v3 completionHandler:*(a1 + 32)];
}

- (id)endpointURLWithHost:(id)a3 path:(id)a4 storefront:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [SHTokenizedURL alloc];
  v11 = [v9 name];

  v12 = [(SHTokenizedURL *)v10 initWithHost:v11 URLPath:v8];
  [(SHTokenizedURL *)v12 updateToken:3 withValue:v7];

  v13 = [(SHTokenizedURL *)v12 URLRepresentation];

  return v13;
}

- (void)fetchOffersAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SHAMPConfigurationRequester_fetchOffersAtURL_completionHandler___block_invoke;
  v8[3] = &unk_2788FB1A8;
  v9 = v6;
  v7 = v6;
  [(SHAMPConfigurationRequester *)self fetchShazamAMPConfiguration:a3 completionHandler:v8];
}

void __66__SHAMPConfigurationRequester_fetchOffersAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 offers];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchStreamingProvidersAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SHAMPConfigurationRequester_fetchStreamingProvidersAtURL_completionHandler___block_invoke;
  v8[3] = &unk_2788FB1A8;
  v9 = v6;
  v7 = v6;
  [(SHAMPConfigurationRequester *)self fetchShazamAMPConfiguration:a3 completionHandler:v8];
}

void __78__SHAMPConfigurationRequester_fetchStreamingProvidersAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 streamingProviders];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchShazamAMPConfiguration:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CCAB70];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:v7];

  [v8 setHTTPMethod:@"POST"];
  v9 = [MEMORY[0x277CCAD30] sharedSession];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__SHAMPConfigurationRequester_fetchShazamAMPConfiguration_completionHandler___block_invoke;
  v12[3] = &unk_2788FB1D0;
  v13 = v5;
  v10 = v5;
  v11 = [v9 dataTaskWithRequest:v8 completionHandler:v12];

  [v11 resume];
}

void __77__SHAMPConfigurationRequester_fetchShazamAMPConfiguration_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v11 = 0;
    v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:&v11];
    v4 = v11;
    if (v3)
    {
      v5 = [[SHAMPConfiguration alloc] initWithResponse:v3];
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v9 = shcore_log_object();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_231025000, v9, OS_LOG_TYPE_ERROR, "Failed to parse the offer response %@", buf, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);
    v8 = *MEMORY[0x277D85DE8];

    v7();
  }
}

- (SHStorefront)storefront
{
  storefront = self->_storefront;
  if (!storefront)
  {
    v4 = objc_alloc_init(SHStorefront);
    v5 = self->_storefront;
    self->_storefront = v4;

    storefront = self->_storefront;
  }

  return storefront;
}

@end