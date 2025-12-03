@interface PKDataReleaseEntityResolver
- (PKDataReleaseEntityResolver)init;
- (void)_merchantForIdentifier:(id)identifier withCurrentMerchant:(id)merchant fromMobileAssetLocalOnly:(BOOL)only completion:(id)completion;
- (void)_merchantFromMapsWithIdentifier:(id)identifier completion:(id)completion;
- (void)resolveEntityForRequest:(id)request completion:(id)completion;
- (void)resolveEntityForRpIdentifier:(id)identifier completion:(id)completion;
@end

@implementation PKDataReleaseEntityResolver

- (PKDataReleaseEntityResolver)init
{
  v6.receiver = self;
  v6.super_class = PKDataReleaseEntityResolver;
  v2 = [(PKDataReleaseEntityResolver *)&v6 init];
  if (v2)
  {
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v2->_paymentService;
    v2->_paymentService = paymentService;
  }

  return v2;
}

- (void)resolveEntityForRpIdentifier:(id)identifier completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)resolveEntityForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  objc_initWeak(location, self);
  if (completionCopy)
  {
    rpIdentifier = [requestCopy rpIdentifier];
    organizationName = [requestCopy organizationName];
    iconURL = [requestCopy iconURL];
    industryCode = [requestCopy industryCode];
    if (requestCopy && [rpIdentifier length])
    {
      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x3032000000;
      v53[3] = __Block_byref_object_copy__36;
      v53[4] = __Block_byref_object_dispose__36;
      v54 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke;
      aBlock[3] = &unk_1E801C518;
      v27 = organizationName;
      v12 = organizationName;
      v47 = v12;
      v48 = industryCode;
      v49 = iconURL;
      v13 = rpIdentifier;
      v50 = v13;
      v52 = v53;
      v51 = completionCopy;
      v14 = _Block_copy(aBlock);
      v15 = objc_alloc_init(MEMORY[0x1E69B8658]);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_2;
      v43[3] = &unk_1E801C540;
      v16 = v12;
      v44 = v16;
      v17 = v14;
      v45 = v17;
      [v15 addOperation:v43];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_3;
      v39[3] = &unk_1E8014FB8;
      objc_copyWeak(&v42, location);
      v18 = v13;
      v40 = v18;
      v19 = v17;
      v41 = v19;
      [v15 addOperation:v39];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_2_105;
      v34[3] = &unk_1E801C5B8;
      objc_copyWeak(&v38, location);
      v20 = v18;
      v35 = v20;
      v36 = v16;
      v21 = v19;
      v37 = v21;
      [v15 addOperation:v34];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_4;
      v28[3] = &unk_1E801C630;
      v22 = v15;
      v29 = v22;
      objc_copyWeak(&v33, location);
      v30 = v20;
      v32 = v53;
      v23 = v21;
      v31 = v23;
      v24 = _Block_copy(v28);
      v24[2](v24, 1);
      v24[2](v24, 0);
      null = [MEMORY[0x1E695DFB0] null];
      v26 = [v22 evaluateWithInput:null completion:&__block_literal_global_151];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&v38);

      objc_destroyWeak(&v42);
      _Block_object_dispose(v53, 8);

      organizationName = v27;
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  objc_destroyWeak(location);
}

void __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v4 = [v6 name];
    v5 = [v4 length];

    if (!v5)
    {
      [v6 setName:*(a1 + 32)];
    }

    if (![v6 industryCode])
    {
      [v6 setIndustryCode:{objc_msgSend(*(a1 + 40), "integerValue")}];
    }

    [v6 setFallbackLogoImageURL:*(a1 + 48)];
    [v6 setMerchantIdentifier:*(a1 + 56)];
    if ([v6 isValid])
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
      (*(*(a1 + 64) + 16))();
    }
  }
}

void __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = MEMORY[0x1E69B8998];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setName:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
  v7[2](v7, v8, 0);
}

void __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = MEMORY[0x1E696AE18];
    v17[0] = *(a1 + 32);
    v17[1] = &unk_1F3CC7958;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v11 = [v9 predicateWithFormat:@"t == %@ AND transaction_type == %lu AND (maps_merchant_pid != nil OR u != nil)" argumentArray:v10];

    v12 = WeakRetained[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_103;
    v13[3] = &unk_1E801C568;
    v15 = *(a1 + 40);
    v16 = v7;
    v14 = v6;
    [v12 transactionsForPredicate:v11 limit:1 completion:v13];
  }
}

void __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = [v3 merchant];

  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
}

void __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_2_105(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_3_106;
    v10[3] = &unk_1E801C590;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = v7;
    v12 = v6;
    [WeakRetained _merchantFromMapsWithIdentifier:v9 completion:v10];
  }
}

uint64_t __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_3_106(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a2;
    [v4 setName:v3];
    (*(a1[6] + 16))();
  }

  v5 = *(a1[7] + 16);

  return v5();
}

void __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_4(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_5;
  v7[3] = &unk_1E801C608;
  objc_copyWeak(&v10, (a1 + 64));
  v8 = *(a1 + 40);
  v11 = a2;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  [v4 addOperation:v7];

  objc_destroyWeak(&v10);
}

void __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(a1 + 64);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_6;
    v12[3] = &unk_1E801C5E0;
    v11 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = v7;
    v13 = v6;
    [WeakRetained _merchantForIdentifier:v11 withCurrentMerchant:v9 fromMobileAssetLocalOnly:v10 completion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

uint64_t __66__PKDataReleaseEntityResolver_resolveEntityForRequest_completion___block_invoke_6(uint64_t a1, uint64_t a2, int a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (a3)
  {
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }

  return result;
}

- (void)_merchantFromMapsWithIdentifier:(id)identifier completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = [[PKDataReleaseEntityLookupSource alloc] initWithEntityIdentifier:identifierCopy];
  v8 = [objc_alloc(MEMORY[0x1E69B89B0]) initWithSource:v7];
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = identifierCopy;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Processing identity request for %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PKDataReleaseEntityResolver__merchantFromMapsWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E801C678;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 startLookupWithCompletion:v11];
}

void __74__PKDataReleaseEntityResolver__merchantFromMapsWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 result];
    v6 = @"NO";
    if (v5 == 2)
    {
      v6 = @"YES";
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Maps identity response success: %@", &v10, 0xCu);
  }

  v7 = [v3 merchant];
  v8 = [v3 brand];
  if (([v8 isValid] & 1) != 0 || objc_msgSend(v7, "isValid"))
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Maps identity response found valid merchant", &v10, 2u);
    }

    v9 = objc_alloc_init(MEMORY[0x1E69B8998]);
    [v9 setMapsBrand:v8];
    [v9 setMapsMerchant:v7];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_merchantForIdentifier:(id)identifier withCurrentMerchant:(id)merchant fromMobileAssetLocalOnly:(BOOL)only completion:(id)completion
{
  onlyCopy = only;
  identifierCopy = identifier;
  merchantCopy = merchant;
  completionCopy = completion;
  objc_initWeak(&location, self);
  mEMORY[0x1E69B89C0] = [MEMORY[0x1E69B89C0] sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __110__PKDataReleaseEntityResolver__merchantForIdentifier_withCurrentMerchant_fromMobileAssetLocalOnly_completion___block_invoke;
  v17[3] = &unk_1E801C6C8;
  objc_copyWeak(&v21, &location);
  v14 = completionCopy;
  v20 = v14;
  v15 = identifierCopy;
  v18 = v15;
  v16 = merchantCopy;
  v19 = v16;
  [mEMORY[0x1E69B89C0] fetchRPIdentifierMappingDiscretionary:0 localOnly:onlyCopy completionHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __110__PKDataReleaseEntityResolver__merchantForIdentifier_withCurrentMerchant_fromMobileAssetLocalOnly_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v6;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Error fetching mapping %@", buf, 0xCu);
    }

    if (v5)
    {
LABEL_6:
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v5];
      if (v9)
      {
        v41 = 0;
        v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v41];
        v11 = v41;
        if (!v11 && v10)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a1 + 32);
              *buf = 138412290;
              v43 = v26;
              _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Mapping couldn't be parsed for %@", buf, 0xCu);
            }

            goto LABEL_41;
          }

          v12 = [v10 objectForKey:*(a1 + 32)];
          if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v27 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a1 + 32);
              *buf = 138412290;
              v43 = v28;
              _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "No mapped merchant for %@", buf, 0xCu);
            }

            goto LABEL_41;
          }

          v13 = [v12 objectForKey:@"name"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v13 = 0;
          }

          v37 = v13;
          v14 = [*(a1 + 40) mapsBrand];
          if ([v14 isValid])
          {
            goto LABEL_22;
          }

          v15 = [*(a1 + 40) mapsMerchant];
          v16 = [v15 isValid];

          if (v16)
          {
LABEL_23:
            v19 = [v12 objectForKey:@"identifier"];
            v20 = [v12 objectForKey:@"resultProviderIdentifier"];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v21 = [v19 unsignedLongLongValue];
              v22 = v20;
              v23 = v21;
              v36 = v22;
              v34 = [v22 intValue];
              v24 = [*(a1 + 40) mapsBrand];
              v35 = v23;
              if ([v24 identifier]!= v23)
              {
                v30 = [*(a1 + 40) mapsMerchant];
                v32 = [v30 identifier];

                v20 = v36;
                if (v32 != v35)
                {
                  v33 = WeakRetained[1];
                  v38[0] = MEMORY[0x1E69E9820];
                  v38[1] = 3221225472;
                  v38[2] = __110__PKDataReleaseEntityResolver__merchantForIdentifier_withCurrentMerchant_fromMobileAssetLocalOnly_completion___block_invoke_126;
                  v38[3] = &unk_1E801C6A0;
                  v39 = v37;
                  v40 = *(a1 + 48);
                  v31 = v37;
                  [v33 mapsMerchantWithIdentifier:v35 resultProviderIdentifier:v34 completion:v38];

                  goto LABEL_42;
                }

                goto LABEL_40;
              }

              v20 = v36;
            }

            else
            {
              v24 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(a1 + 32);
                *buf = 138412546;
                v43 = v29;
                v44 = 2112;
                v45 = v12;
                _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "No valid identifier and result provider identifier for %@. %@", buf, 0x16u);
              }
            }

LABEL_40:
LABEL_41:

            (*(*(a1 + 48) + 16))();
LABEL_42:
            v11 = 0;
LABEL_43:

            goto LABEL_44;
          }

          v14 = [v12 objectForKey:@"category"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v14 length] || (v17 = PKMerchantCategoryFromString()) == 0)
          {
            if (![v37 length])
            {
LABEL_22:

              goto LABEL_23;
            }

            v17 = 0;
          }

          v18 = objc_alloc_init(MEMORY[0x1E69B8998]);
          [v18 setFallbackcategory:v17];
          [v18 setName:v37];
          (*(*(a1 + 48) + 16))();

          goto LABEL_22;
        }
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v11;
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, "Could not read mapping with error %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_43;
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_44:
}

void __110__PKDataReleaseEntityResolver__merchantForIdentifier_withCurrentMerchant_fromMobileAssetLocalOnly_completion___block_invoke_126(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 mapsBrand];
  if ([v3 isValid])
  {
  }

  else
  {
    v4 = [v6 mapsMerchant];
    v5 = [v4 isValid];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  [v6 setName:*(a1 + 32)];
LABEL_5:
  (*(*(a1 + 40) + 16))();
}

@end