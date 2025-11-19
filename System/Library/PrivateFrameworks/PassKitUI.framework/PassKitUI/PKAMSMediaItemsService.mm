@interface PKAMSMediaItemsService
- (PKAMSMediaItemsService)init;
- (id)fetchItemsWithRequest:(id)a3 completion:(id)a4;
@end

@implementation PKAMSMediaItemsService

- (PKAMSMediaItemsService)init
{
  v9.receiver = self;
  v9.super_class = PKAMSMediaItemsService;
  v2 = [(PKAMSMediaItemsService *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x1E698C7D8];
    v4 = [MEMORY[0x1E698C9E0] bagSubProfile];
    v5 = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
    v6 = [v3 bagForProfile:v4 profileVersion:v5];
    bag = v2->_bag;
    v2->_bag = v6;
  }

  return v2;
}

- (id)fetchItemsWithRequest:(id)a3 completion:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v20 = 0;
    goto LABEL_21;
  }

  v32 = v7;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 description];
    *buf = 138412290;
    v44 = v10;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKAMSMediaItemsService: Looking up item(s) from AppleMediaServices with request: %@.", buf, 0xCu);
  }

  v11 = [v6 type];
  if (v11 == 1)
  {
    v12 = 202;
  }

  else
  {
    v12 = 200;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [v6 artworkConfiguration];
  v15 = v14 != 0;
  v16 = [v14 animatedArtworkType];
  v33 = v16 != 0;
  if (v11 == 2)
  {
    v17 = 205;
  }

  else
  {
    v17 = v12;
  }

  if (v11 < 2)
  {
    goto LABEL_13;
  }

  if (v11 == 2)
  {
    [v13 addObject:@"artistBio"];
LABEL_13:
    v18 = [v6 musicRequest];
    v19 = [v18 musicIDs];

    if (v16)
    {
      [v13 addObject:@"editorialVideo"];
    }

    v15 = v14 != 0;
    goto LABEL_18;
  }

  v19 = 0;
LABEL_18:
  v21 = [objc_alloc(MEMORY[0x1E698C9E0]) initWithType:v17 clientIdentifier:@"com.apple.Passbook" clientVersion:@"1" bag:self->_bag];
  v22 = v21;
  if (v19)
  {
    [v21 setItemIdentifiers:v19];
  }

  v41[0] = @"extend";
  v23 = v13;
  v24 = [v13 componentsJoinedByString:{@", "}];
  v41[1] = @"with";
  v42[0] = v24;
  v42[1] = @"unlistedApps";
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [v22 setAdditionalQueryParams:v25];

  v26 = [v22 perform];
  v27 = [[PKAMSPromiseWrapper alloc] initWithAMSPromise:v26];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke;
  v34[3] = &unk_1E8026CF0;
  v28 = v27;
  v39 = v15;
  v35 = v28;
  v36 = v14;
  v40 = v33;
  v38 = v11;
  v8 = v32;
  v37 = v32;
  v29 = v14;
  [v26 addFinishBlock:v34];
  v30 = v37;
  v20 = v28;

LABEL_21:

  return v20;
}

void __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  v39 = v6;
  v41 = v5;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 localizedDescription];
      *buf = 138412290;
      v63 = v8;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKAMSMediaItemsService: Received error: %@.", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [v5 responseDataItems];
    v10 = [v9 count];
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v63 = v10;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKAMSMediaItemsService: Received %ld results from AppleMediaServices", buf, 0xCu);
    }
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v9;
  v44 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v44)
  {
    v13 = *v58;
    v42 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v57 + 1) + 8 * v14);
        if (!v15)
        {
          v30 = 0;
          goto LABEL_26;
        }

        v16 = v15;
        v17 = PKIsPad();
        v18 = @"ios";
        if (v17)
        {
          v18 = @"ipados";
        }

        v19 = v18;
        v20 = [v16 PKDictionaryForKey:@"attributes"];

        v21 = objc_opt_class();
        v22 = [v20 PKDictionaryOfKeyClass:v21 valueClass:objc_opt_class() ForKey:@"platformAttributes"];
        v23 = v22;
        if (!v22)
        {
          if (v20)
          {
            v30 = [objc_alloc(MEMORY[0x1E698C978]) initWithLookupDictionary:v20];
          }

          else
          {
            v30 = 0;
          }

          goto LABEL_25;
        }

        v24 = v13;
        v25 = [v22 objectForKeyedSubscript:v19];
        v26 = [v25 mutableCopy];

        if (!v26)
        {
          v27 = v12;
          v28 = [v23 allValues];
          v29 = [v28 firstObject];
          v26 = [v29 mutableCopy];

          if (!v26)
          {
            v30 = 0;
            v12 = v27;
            v11 = v42;
            goto LABEL_20;
          }

          v12 = v27;
          v11 = v42;
        }

        [v26 addEntriesFromDictionary:{v20, v39}];
        v30 = [objc_alloc(MEMORY[0x1E698C978]) initWithLookupDictionary:v26];

LABEL_20:
        v13 = v24;
LABEL_25:

LABEL_26:
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke_110;
        v50[3] = &unk_1E8026CA0;
        v51 = v30;
        v55 = *(a1 + 64);
        v31 = *(a1 + 40);
        v56 = *(a1 + 65);
        v32 = *(a1 + 56);
        v52 = v31;
        v54 = v32;
        v53 = v11;
        v33 = v30;
        [v12 addOperation:v50];

        ++v14;
      }

      while (v44 != v14);
      v34 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
      v44 = v34;
    }

    while (v34);
  }

  if (*(a1 + 64) == 1)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke_2;
    v48[3] = &unk_1E8019220;
    v49 = v11;
    [v12 addOperation:v48];
  }

  v35 = [MEMORY[0x1E695DFB0] null];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke_4;
  v45[3] = &unk_1E8026CC8;
  v36 = *(a1 + 48);
  v46 = v11;
  v47 = v36;
  v37 = v11;
  v38 = [v12 evaluateWithInput:v35 completion:v45];
}

void __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke_110(uint64_t a1, void *a2, void *a3, void *a4)
{
  v64[2] = *MEMORY[0x1E69E9840];
  v62 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    if (*(a1 + 64) == 1)
    {
      v11 = [v10 artwork];
      v12 = [v11 firstObject];
    }

    else
    {
      v12 = 0;
    }

    [*(a1 + 40) artworkSize];
    v14 = v13;
    v16 = v15;
    v17 = [*(a1 + 40) cropType];
    if (v17 <= 7)
    {
      v4 = **(&unk_1E8026D38 + v17);
    }

    v18 = [v12 URLWithHeight:v14 width:v16 cropStyle:v4 format:*MEMORY[0x1E698C610]];

    if (*(a1 + 65) == 1)
    {
      v19 = [*(a1 + 32) itemDictionary];
      v20 = [v19 objectForKeyedSubscript:@"editorialVideo"];
      v21 = [*(a1 + 40) animatedArtworkType] - 1;
      if (v21 > 3)
      {
        v22 = 0;
      }

      else
      {
        v22 = off_1E8026D78[v21];
      }

      v24 = [v20 objectForKeyedSubscript:v22];
      v25 = [v24 objectForKeyedSubscript:@"video"];

      if (v25)
      {
        v23 = [MEMORY[0x1E695DFF8] URLWithString:v25];
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    if (*(a1 + 56) > 2uLL)
    {
      v31 = 0;
    }

    else
    {
      v26 = [*(a1 + 32) itemDictionary];
      v27 = [v26 objectForKeyedSubscript:@"curatorName"];

      v28 = [*(a1 + 32) itemDictionary];
      v29 = [v28 objectForKeyedSubscript:@"playlistType"];

      v60 = v29;
      if ([v29 isEqualToString:@"editorial"])
      {
        v30 = [v27 containsString:@"Apple Music"];
      }

      else
      {
        v30 = 0;
      }

      v61 = v18;
      v32 = [PKAMSMediaLookupItemMusic alloc];
      v58 = *(a1 + 56);
      v59 = [*(a1 + 32) displayName];
      v33 = *(a1 + 32);
      if (v33)
      {
        v54 = v32;
        v56 = v27;
        v34 = *(a1 + 56);
        v35 = [v33 itemDictionary];
        v36 = [v35 objectForKeyedSubscript:*MEMORY[0x1E698C628]];
        v37 = [v36 objectForKeyedSubscript:*MEMORY[0x1E698C630]];

        v57 = v12;
        v55 = v30;
        v53 = v35;
        if (!v37)
        {
          if (v34 == 2 && ([v35 objectForKeyedSubscript:@"artistBio"], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v37 = v38;
          }

          else
          {
            v40 = [v35 objectForKeyedSubscript:@"editorialNotes"];
            v41 = [v40 objectForKeyedSubscript:@"short"];
            v42 = v41;
            if (v41)
            {
              v43 = v41;
            }

            else
            {
              v43 = [v40 objectForKeyedSubscript:@"standardNote"];
            }

            v37 = v43;
          }
        }

        v44 = objc_alloc(MEMORY[0x1E696AAB0]);
        v45 = [v37 dataUsingEncoding:4];
        v46 = *MEMORY[0x1E69DB658];
        v47 = *MEMORY[0x1E69DB618];
        v63[0] = *MEMORY[0x1E69DB628];
        v63[1] = v47;
        v64[0] = v46;
        v48 = [MEMORY[0x1E696AD98] numberWithInt:4];
        v64[1] = v48;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
        v50 = [v44 initWithData:v45 options:v49 documentAttributes:0 error:0];
        v39 = [v50 string];

        v33 = *(a1 + 32);
        v27 = v56;
        v12 = v57;
        v30 = v55;
        v32 = v54;
      }

      else
      {
        v39 = 0;
      }

      v51 = [v33 productPageURL];
      LOBYTE(v52) = v30;
      v31 = [(PKAMSMediaLookupItemMusic *)v32 initWithType:v58 artwork:0 animatedArtworkURL:v23 displayName:v59 itemDescription:v39 musicURL:v51 appleCurated:v52];

      v18 = v61;
      [(PKAMSMediaLookupItemMusic *)v31 setArtworkURL:v61];
    }

    [*(a1 + 48) safelyAddObject:v31];
  }

  v9[2](v9, v8, 0);
}

void __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke_3;
  v28 = &unk_1E8010E20;
  v24 = v7;
  v30 = v24;
  v23 = v6;
  v29 = v23;
  v9 = v8;
  v22 = &v25;
  v10 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        if ([v16 type] > 2)
        {
          v19 = 0;
          v18 = 0;
        }

        else
        {
          v17 = [v16 musicItem];
          v18 = [v17 artworkURL];
          v19 = [v17 animatedArtworkURL];

          if (v18)
          {
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = ___PopulateArtworkForItems_block_invoke;
            v33[3] = &unk_1E80145B0;
            v18 = v18;
            v34 = v18;
            v35 = v16;
            [v10 addOperation:v33];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  v20 = [MEMORY[0x1E695DFB0] null];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___PopulateArtworkForItems_block_invoke_2_182;
  v31[3] = &unk_1E8014A58;
  v32 = v22;
  v21 = [v10 evaluateWithInput:v20 completion:v31];
}

uint64_t __59__PKAMSMediaItemsService_fetchItemsWithRequest_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [a4 isCanceled];
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

@end