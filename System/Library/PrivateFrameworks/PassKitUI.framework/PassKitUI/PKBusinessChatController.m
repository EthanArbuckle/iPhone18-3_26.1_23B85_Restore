@interface PKBusinessChatController
- (PKBusinessChatController)init;
- (void)_generateAuthBagWithCompletion:(id)a3;
- (void)openBusinessChatWithContext:(id)a3 completion:(id)a4;
@end

@implementation PKBusinessChatController

- (PKBusinessChatController)init
{
  v8.receiver = self;
  v8.super_class = PKBusinessChatController;
  v2 = [(PKBusinessChatController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = objc_alloc_init(MEMORY[0x1E698DCB0]);
    provisioningController = v2->_provisioningController;
    v2->_provisioningController = v5;
  }

  return v2;
}

- (void)openBusinessChatWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 businessIdentifier];
  if (v8)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKBusinessChatController_openBusinessChatWithContext_completion___block_invoke;
    aBlock[3] = &unk_1E80132D8;
    v9 = v6;
    v17 = v9;
    v18 = v8;
    v10 = v7;
    v19 = v10;
    v11 = _Block_copy(aBlock);
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 requiresAuthorization])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __67__PKBusinessChatController_openBusinessChatWithContext_completion___block_invoke_627;
      v13[3] = &unk_1E8013300;
      v14 = v11;
      v15 = v10;
      [(PKBusinessChatController *)self _generateAuthBagWithCompletion:v13];
    }

    else
    {
      (*(v11 + 2))(v11, 0);
    }

    v12 = v17;
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "No business identifier for business chat", buf, 2u);
    }
  }
}

void __67__PKBusinessChatController_openBusinessChatWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 32) intentParameters];
    [v5 addEntriesFromDictionary:v6];
  }

  if (v3)
  {
    [v5 setObject:v3 forKeyedSubscript:@"authBag"];
  }

  v24 = v3;
  v23 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:0];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v23 encoding:4];
  v8 = _MergedGlobals_615();
  [v4 setObject:v7 forKey:v8];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (objc_opt_respondsToSelector())
  {
    v10 = [*(a1 + 32) groupParameters];
    [v9 addEntriesFromDictionary:v10];
  }

  v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:0];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
  v13 = off_1EE98A620();
  [v4 setObject:v12 forKey:v13];

  if (objc_opt_respondsToSelector())
  {
    v14 = [*(a1 + 32) bodyText];
    if (v14)
    {
      v15 = off_1EE98A628();
      [v4 setObject:v14 forKey:v15];
    }
  }

  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v18 = [v4 description];
    *buf = 138412546;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "Opening business chat, businessIdentifier: %@, parameters: %@", buf, 0x16u);
  }

  v19 = off_1EE98A630();
  v20 = *(a1 + 40);
  v21 = [v4 copy];
  [(objc_class *)v19 openTranscript:v20 intentParameters:v21];

  v22 = *(a1 + 48);
  if (v22)
  {
    (*(v22 + 16))(v22, 0);
  }
}

void __67__PKBusinessChatController_openBusinessChatWithContext_completion___block_invoke_627(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_6;
    }

    v6 = *(v7 + 16);
  }

  v6();
LABEL_6:
}

- (void)_generateAuthBagWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E698DC80] sharedInstance];
    v6 = [v5 primaryAuthKitAccount];
    v7 = [v5 altDSIDForAccount:v6];
    v8 = [MEMORY[0x1E6959A48] defaultStore];
    v9 = [v8 aida_accountForPrimaryiCloudAccount];
    v10 = [v9 aida_tokenForService:@"com.apple.gs.global.auth"];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AppleToken %@:%@", v7, v10];
    }

    else
    {
      v11 = 0;
    }

    provisioningController = self->_provisioningController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__PKBusinessChatController__generateAuthBagWithCompletion___block_invoke;
    v14[3] = &unk_1E8013328;
    v15 = v11;
    v16 = v4;
    v13 = v11;
    [(AKAnisetteProvisioningController *)provisioningController anisetteDataWithCompletion:v14];
  }
}

void __59__PKBusinessChatController__generateAuthBagWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v15 = objc_alloc_init(v3);
  v5 = [v4 oneTimePassword];
  [v15 setObject:v5 forKeyedSubscript:@"X-Apple-I-MD"];

  v6 = [v4 machineID];
  [v15 setObject:v6 forKeyedSubscript:@"X-Apple-I-MD-M"];

  v7 = MEMORY[0x1E696AD98];
  v8 = [v4 routingInfo];

  v9 = [v7 numberWithUnsignedLongLong:v8];
  v10 = [v9 stringValue];
  [v15 setObject:v10 forKeyedSubscript:@"X-Apple-I-MD-RINFO"];

  v11 = [MEMORY[0x1E69B8BE0] clientInfoHTTPHeader];
  [v15 setObject:v11 forKeyedSubscript:@"X-Apple-Client-Info"];

  [v15 setObject:*(a1 + 32) forKeyedSubscript:@"Authorization"];
  v12 = PKSerialNumber();
  [v15 setObject:v12 forKeyedSubscript:@"X-Apple-Serial-Number"];

  v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v15 options:0 error:0];
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
  (*(*(a1 + 40) + 16))();
}

@end