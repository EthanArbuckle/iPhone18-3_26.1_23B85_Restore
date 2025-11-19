@interface STRegionRatings
+ (STRegionRatings)sharedRatings;
+ (void)loadRegionRatingsWithOptions:(id)a3 completionHandler:(id)a4;
+ (void)loadRegionRatingsWithOptions:(id)a3 storefrontClient:(id)a4 managementState:(id)a5 completionHandler:(id)a6;
- (NSString)preferredRegion;
- (STRegionRatings)initWithStorefrontClient:(id)a3;
- (id)_localizedLabelForRegion:(id)a3 rating:(id)a4;
- (id)_localizedRatingsForRegion:(id)a3 type:(id)a4 includeAllContentKey:(BOOL)a5;
- (id)_overrideValueForString:(id)a3;
- (id)getClosestRestrictionMatch:(id)a3 within:(id)a4 forPayloadKey:(id)a5;
- (id)getRatingSystemTypeFrom:(id)a3;
- (id)localizedStringForAppRatingLabel:(id)a3;
- (id)ratingValuesByRatingSystemType;
- (void)_loadRegionRatingsDataWithOptions:(id)a3 managementState:(id)a4 completionHandler:(id)a5;
@end

@implementation STRegionRatings

+ (void)loadRegionRatingsWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_opt_new();
  v8 = objc_opt_new();
  [a1 loadRegionRatingsWithOptions:v7 storefrontClient:v9 managementState:v8 completionHandler:v6];
}

+ (void)loadRegionRatingsWithOptions:(id)a3 storefrontClient:(id)a4 managementState:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[STRegionRatings alloc] initWithStorefrontClient:v11];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__STRegionRatings_loadRegionRatingsWithOptions_storefrontClient_managementState_completionHandler___block_invoke;
  v16[3] = &unk_1E7CE7760;
  v17 = v13;
  v18 = v9;
  v14 = v13;
  v15 = v9;
  [(STRegionRatings *)v14 _loadRegionRatingsDataWithOptions:v12 managementState:v10 completionHandler:v16];
}

uint64_t __99__STRegionRatings_loadRegionRatingsWithOptions_storefrontClient_managementState_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32));
  }
}

+ (STRegionRatings)sharedRatings
{
  if (sharedRatings_onceToken != -1)
  {
    +[STRegionRatings sharedRatings];
  }

  v3 = sharedRatings_sharedRatings;

  return v3;
}

void __32__STRegionRatings_sharedRatings__block_invoke()
{
  v0 = [STRegionRatings alloc];
  v3 = objc_opt_new();
  v1 = [(STRegionRatings *)v0 initWithStorefrontClient:v3];
  v2 = sharedRatings_sharedRatings;
  sharedRatings_sharedRatings = v1;
}

- (STRegionRatings)initWithStorefrontClient:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STRegionRatings;
  v5 = [(STRegionRatings *)&v8 init];
  storefrontClient = v5->_storefrontClient;
  v5->_storefrontClient = v4;

  return v5;
}

- (void)_loadRegionRatingsDataWithOptions:(id)a3 managementState:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_os_feature_enabled_impl())
  {
    v11 = [(STRegionRatings *)self storefrontClient];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke;
    v13[3] = &unk_1E7CE8160;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    [v11 fetchStorefrontWithOptions:v14 completionHandler:v13];
  }

  else
  {
    v12 = [(STRegionRatings *)self preferredRegion];
    -[STRegionRatings _loadRegionRatingsDataForStorefront:includeUnrated:managementState:completionHandler:](self, "_loadRegionRatingsDataForStorefront:includeUnrated:managementState:completionHandler:", v12, [v8 unrated], v9, v10);
  }
}

void __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) unrated];
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7CE8138;
    v11[4] = *(a1 + 32);
    v12 = v5;
    v13 = *(a1 + 56);
    [v7 _loadRegionRatingsDataForStorefront:v12 includeUnrated:v8 managementState:v9 completionHandler:v11];
  }

  else
  {
    v10 = +[STLog regionRating];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke_cold_1(v6, v10);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) setStorefront:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7CE6A40;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

uint64_t __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = +[STLog regionRating];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1B831F000, v4, OS_LOG_TYPE_DEFAULT, "STRegionRatings loadRegionRatingsDataWithCompletionHandler received ratings data: %@", &v9, 0xCu);
    }

    [*(a1 + 40) setRegionRatingsData:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke_2_cold_1(a1, v4);
    }
  }

  v6 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)preferredRegion
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 countryCode];
  v4 = [v3 lowercaseString];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = +[STLog regionRating];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(STRegionRatings *)v6 preferredRegion];
    }

    v5 = @"us";
  }

  return v5;
}

- (id)ratingValuesByRatingSystemType
{
  v2 = [(STRegionRatings *)self regionRatingsData];
  v3 = [v2 allValues];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_overrideValueForString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:@"xx" table:@"RatingProviders"];

  if (v5 == @"xx")
  {
    v13 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(\\d+)" options:0 error:0];
    v7 = [v6 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 range];
      v11 = [v3 substringWithRange:{v9, v10}];
      v12 = [v11 integerValue];
    }

    else
    {
      v12 = 0;
    }

    v13 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%ld" error:0, v12];
  }

  return v13;
}

- (id)_localizedLabelForRegion:(id)a3 rating:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [v6 stringWithFormat:@"%@_%@", a3, v7];
  v9 = [(STRegionRatings *)self _overrideValueForString:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

- (id)_localizedRatingsForRegion:(id)a3 type:(id)a4 includeAllContentKey:(BOOL)a5
{
  v5 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (_os_feature_enabled_impl())
  {
    v10 = [(STRegionRatings *)self ratingValuesByRatingSystemType];
    v11 = [v10 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = [(STRegionRatings *)self regionRatingsData];
    v12 = [v10 objectForKeyedSubscript:v8];
    v11 = [v12 objectForKeyedSubscript:v9];
  }

  if (v11)
  {
    v13 = [v11 valueForKey:@"rank"];
    if (_os_feature_enabled_impl())
    {
      v14 = [v11 valueForKey:@"rating"];
    }

    else
    {
      v33 = v5;
      v34 = v9;
      v32 = v13;
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = v11;
      v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v36;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v35 + 1) + 8 * i) objectForKeyedSubscript:@"rating"];
            v22 = [(STRegionRatings *)self _localizedLabelForRegion:v8 rating:v21];
            [v14 addObject:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v18);
      }

      v9 = v34;
      v5 = v33;
      v13 = v32;
    }

    v15 = [MEMORY[0x1E695DF90] dictionaryWithObjects:v14 forKeys:v13];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  }

  v23 = [v15 objectForKeyedSubscript:&unk_1F3059BE8];

  if (v23)
  {
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"DontAllow" value:@"xx" table:@"RatingProviders"];
    [v15 setObject:v25 forKeyedSubscript:&unk_1F3059BE8];

    if (!v5)
    {
      goto LABEL_23;
    }
  }

  v26 = [v15 objectForKeyedSubscript:&unk_1F3059C00];

  if (!v26)
  {
    v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"AllowAll" value:@"xx" table:@"RatingProviders"];
    [v15 setObject:v28 forKeyedSubscript:&unk_1F3059C00];
  }

LABEL_23:
  v29 = [v15 copy];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)localizedStringForAppRatingLabel:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = v4;
  }

  else
  {
    v5 = [(STRegionRatings *)self _localizedLabelForRegion:@"us" rating:v4];
  }

  v6 = v5;

  return v6;
}

- (id)getRatingSystemTypeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (getRatingSystemTypeFrom__onceToken[0] != -1)
  {
    [STRegionRatings getRatingSystemTypeFrom:];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [getRatingSystemTypeFrom__typeValues objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v9)
        {
          v10 = v9;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __43__STRegionRatings_getRatingSystemTypeFrom___block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"movies";
  v3[1] = @"movie-bundles";
  v4[0] = @"ratingMovies";
  v4[1] = @"ratingMovies";
  v3[2] = @"tv-seasons";
  v3[3] = @"tv-episodes";
  v4[2] = @"ratingTVShows";
  v4[3] = @"ratingTVShows";
  v3[4] = @"apps";
  v3[5] = @"in-apps";
  v4[4] = @"ratingApps";
  v4[5] = @"ratingApps";
  v3[6] = @"app-bundles";
  v4[6] = @"ratingApps";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = getRatingSystemTypeFrom__typeValues;
  getRatingSystemTypeFrom__typeValues = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)getClosestRestrictionMatch:(id)a3 within:(id)a4 forPayloadKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 integerValue];
  v11 = [v9 componentsSeparatedByString:@"."];

  v12 = [v11 lastObject];

  v13 = [v12 isEqualToString:@"ratingApps"];
  v14 = _os_feature_enabled_impl();
  if (v13)
  {
    if (v13 & v14)
    {
      goto LABEL_7;
    }

    v15 = &unk_1F3059BD0;
  }

  else
  {
    v15 = &unk_1F3059C00;
  }

  if ([v7 isEqual:v15])
  {
    v16 = v7;
    v17 = v8;
    goto LABEL_12;
  }

LABEL_7:
  v17 = [v8 sortedArrayUsingComparator:&__block_literal_global_89];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__STRegionRatings_getClosestRestrictionMatch_within_forPayloadKey___block_invoke_2;
  v22[3] = &__block_descriptor_40_e25_B32__0__NSNumber_8Q16_B24l;
  v22[4] = v10;
  v18 = [v17 indexOfObjectPassingTest:v22];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = +[STLog regionRating];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1B831F000, v19, OS_LOG_TYPE_DEFAULT, "No matching restriction value was found, so conservatively returning Don't Allow", v21, 2u);
    }

    v16 = &unk_1F3059BE8;
  }

  else
  {
    v16 = [v17 objectAtIndexedSubscript:v18];
  }

LABEL_12:

  return v16;
}

uint64_t __67__STRegionRatings_getClosestRestrictionMatch_within_forPayloadKey___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if ([a2 integerValue] <= *(a1 + 32))
  {
    v5 = 1;
    *a4 = 1;
  }

  else
  {
    v5 = *a4;
  }

  return v5 & 1;
}

void __87__STRegionRatings__loadRegionRatingsDataWithOptions_managementState_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "When loading region ratings, failed to fetch storefront: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __104__STRegionRatings__loadRegionRatingsDataForStorefront_includeUnrated_managementState_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "STRegionRatings loadRegionRatingsDataWithCompletionHandler received error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end