@interface SHAMPConfigurationRequester
- (SHStorefront)storefront;
- (id)endpointURLWithHost:(id)host path:(id)path storefront:(id)storefront;
- (void)configurationEndpoint:(id)endpoint;
- (void)fetchOffersAtURL:(id)l completionHandler:(id)handler;
- (void)fetchShazamAMPConfiguration:(id)configuration completionHandler:(id)handler;
- (void)fetchStreamingProvidersAtURL:(id)l completionHandler:(id)handler;
- (void)offersWithCompletion:(id)completion;
- (void)streamingProvidersWithCompletion:(id)completion;
@end

@implementation SHAMPConfigurationRequester

- (void)configurationEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  objc_initWeak(&location, self);
  v5 = +[SHRemoteConfiguration sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SHAMPConfigurationRequester_configurationEndpoint___block_invoke;
  v7[3] = &unk_2788FB158;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v6 = endpointCopy;
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

- (void)offersWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SHAMPConfigurationRequester_offersWithCompletion___block_invoke;
  v6[3] = &unk_2788FB180;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
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

- (void)streamingProvidersWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SHAMPConfigurationRequester_streamingProvidersWithCompletion___block_invoke;
  v6[3] = &unk_2788FB180;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
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

- (id)endpointURLWithHost:(id)host path:(id)path storefront:(id)storefront
{
  storefrontCopy = storefront;
  pathCopy = path;
  hostCopy = host;
  v10 = [SHTokenizedURL alloc];
  name = [hostCopy name];

  v12 = [(SHTokenizedURL *)v10 initWithHost:name URLPath:pathCopy];
  [(SHTokenizedURL *)v12 updateToken:3 withValue:storefrontCopy];

  uRLRepresentation = [(SHTokenizedURL *)v12 URLRepresentation];

  return uRLRepresentation;
}

- (void)fetchOffersAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SHAMPConfigurationRequester_fetchOffersAtURL_completionHandler___block_invoke;
  v8[3] = &unk_2788FB1A8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(SHAMPConfigurationRequester *)self fetchShazamAMPConfiguration:l completionHandler:v8];
}

void __66__SHAMPConfigurationRequester_fetchOffersAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 offers];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchStreamingProvidersAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__SHAMPConfigurationRequester_fetchStreamingProvidersAtURL_completionHandler___block_invoke;
  v8[3] = &unk_2788FB1A8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(SHAMPConfigurationRequester *)self fetchShazamAMPConfiguration:l completionHandler:v8];
}

void __78__SHAMPConfigurationRequester_fetchStreamingProvidersAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 streamingProviders];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchShazamAMPConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x277CCAB70];
  configurationCopy = configuration;
  v8 = [[v6 alloc] initWithURL:configurationCopy];

  [v8 setHTTPMethod:@"POST"];
  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__SHAMPConfigurationRequester_fetchShazamAMPConfiguration_completionHandler___block_invoke;
  v12[3] = &unk_2788FB1D0;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [mEMORY[0x277CCAD30] dataTaskWithRequest:v8 completionHandler:v12];

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