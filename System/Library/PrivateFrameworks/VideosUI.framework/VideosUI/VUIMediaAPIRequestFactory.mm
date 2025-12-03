@interface VUIMediaAPIRequestFactory
+ (id)_urlParameterForExtend:(id)extend;
+ (id)_urlParameterTypeFilterWithTypes:(id)types;
+ (id)_urlParameterWithGenreFilter:(id)filter;
+ (id)_urlRequestWithURLString:(id)string;
+ (id)episodesRequestWithShowIdentifier:(id)identifier withOwnerIdentifier:(id)ownerIdentifier;
+ (id)familyMembersRequest;
+ (id)genresRequestForVUIFamilySharingGenre:(id)genre withOwnerIdentifier:(id)identifier;
+ (id)genresRequestForVUIFamilySharingGenreIDsFilter:(id)filter withOwnerIdentifier:(id)identifier;
+ (id)genresRequestWithOwnerIdentifier:(id)identifier;
+ (id)moviesPurchasesRequestWithOwnerIdentifier:(id)identifier sortType:(unint64_t)type;
+ (id)recentPurchasesRequestWithOwnerIdentifier:(id)identifier;
+ (id)seasonsRequestWithShowIdentifier:(id)identifier withOwnerIdentifier:(id)ownerIdentifier;
+ (id)showsPurchasesRequestWithOwnerIdentifier:(id)identifier sortType:(unint64_t)type;
+ (void)_addTypeFilterToURL:(id *)l forRequest:(id)request;
@end

@implementation VUIMediaAPIRequestFactory

+ (id)familyMembersRequest
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"https://amp-api.videos.apple.com/v1/"];
  [v2 appendString:@"me/purchases/shared/members"];
  v3 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v2];

  return v3;
}

+ (id)recentPurchasesRequestWithOwnerIdentifier:(id)identifier
{
  v23[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"https://amp-api.videos.apple.com/v1/"];
  [v4 appendString:@"me/purchases"];
  v5 = +[VUIMediaAPIRequestFactory _urlParameterForAdditionalParameters];
  [v4 appendString:v5];

  v23[0] = @"movies";
  v23[1] = @"tv-episodes";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v7 = [VUIMediaAPIRequestFactory _urlParameterTypeFilterWithTypes:v6];
  [v4 appendString:v7];

  v8 = [VUIMediaAPIRequestFactory _urlParameterForSort:@"mostRecent"];
  v9 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v8];
  [v4 appendString:v9];

  v10 = +[VUIMediaAPIRequestFactory _urlParameterWithSharedPurchases];
  v11 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v10];
  [v4 appendString:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:25];
  v13 = [VUIMediaAPIRequestFactory _urlParameterForLimit:v12];
  v14 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v13];
  [v4 appendString:v14];

  if (identifierCopy)
  {
    v15 = [VUIMediaAPIRequestFactory _urlParameterWithOwnerIdentifier:identifierCopy];
    v16 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v15];
    [v4 appendString:v16];
  }

  v22[0] = @"personalizedOffers";
  v22[1] = @"iTunesExtrasUrl";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v18 = [VUIMediaAPIRequestFactory _urlParameterForExtend:v17];
  v19 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v18];
  [v4 appendString:v19];

  v20 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v4];

  return v20;
}

+ (id)moviesPurchasesRequestWithOwnerIdentifier:(id)identifier sortType:(unint64_t)type
{
  v29[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"https://amp-api.videos.apple.com/v1/"];
  [v6 appendString:@"me/purchases"];
  v7 = +[VUIMediaAPIRequestFactory _urlParameterForAdditionalParameters];
  [v6 appendString:v7];

  v29[0] = @"movies";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v9 = [VUIMediaAPIRequestFactory _urlParameterTypeFilterWithTypes:v8];
  [v6 appendString:v9];

  v10 = +[VUIMediaAPIRequestFactory _urlParameterWithSharedPurchases];
  v11 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v10];
  [v6 appendString:v11];

  v12 = @"name";
  if (type == 3)
  {
    v12 = @"mostRecent";
  }

  if (type == 1)
  {
    v13 = @"artistName";
  }

  else
  {
    v13 = v12;
  }

  v14 = [VUIMediaAPIRequestFactory _urlParameterForSort:v13];
  v15 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v14];
  [v6 appendString:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:25];
  v17 = [VUIMediaAPIRequestFactory _urlParameterForLimit:v16];
  v18 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v17];
  [v6 appendString:v18];

  if (identifierCopy)
  {
    v19 = [VUIMediaAPIRequestFactory _urlParameterWithOwnerIdentifier:identifierCopy];
    v20 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v19];
    [v6 appendString:v20];
  }

  v21 = [VUIMediaAPIRequestFactory _urlParameterForIncludeType:@"include[movies]" includeRelationship:@"playback-position"];
  v22 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v21];
  [v6 appendString:v22];

  v28[0] = @"personalizedOffers";
  v28[1] = @"iTunesExtrasUrl";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v24 = [VUIMediaAPIRequestFactory _urlParameterForExtend:v23];
  v25 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v24];
  [v6 appendString:v25];

  v26 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v6];

  return v26;
}

+ (id)seasonsRequestWithShowIdentifier:(id)identifier withOwnerIdentifier:(id)ownerIdentifier
{
  v26[2] = *MEMORY[0x1E69E9840];
  ownerIdentifierCopy = ownerIdentifier;
  v6 = MEMORY[0x1E696AD60];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithString:@"https://amp-api.videos.apple.com/v1/"];
  v9 = +[VUIMediaAPIRequestFactory _purchasesEpisodesEndpoint];
  [v8 appendString:v9];

  v10 = +[VUIMediaAPIRequestFactory _urlParameterForAdditionalParameters];
  [v8 appendString:v10];

  v11 = +[VUIMediaAPIRequestFactory _urlParameterWithSharedPurchases];
  [v8 appendString:v11];

  v12 = [VUIMediaAPIRequestFactory _urlParameterFilterWithShowIdentifier:identifierCopy];

  v13 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v12];
  [v8 appendString:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:25];
  v15 = [VUIMediaAPIRequestFactory _urlParameterForLimit:v14];
  v16 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v15];
  [v8 appendString:v16];

  if (ownerIdentifierCopy)
  {
    v17 = [VUIMediaAPIRequestFactory _urlParameterWithOwnerIdentifier:ownerIdentifierCopy];
    v18 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v17];
    [v8 appendString:v18];
  }

  v19 = [VUIMediaAPIRequestFactory _urlParameterForInclude:@"seasons"];
  v20 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v19];
  [v8 appendString:v20];

  v26[0] = @"personalizedOffers";
  v26[1] = @"iTunesExtrasUrl";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v22 = [VUIMediaAPIRequestFactory _urlParameterForExtend:v21];
  v23 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v22];
  [v8 appendString:v23];

  v24 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v8];

  return v24;
}

+ (id)episodesRequestWithShowIdentifier:(id)identifier withOwnerIdentifier:(id)ownerIdentifier
{
  v32[1] = *MEMORY[0x1E69E9840];
  ownerIdentifierCopy = ownerIdentifier;
  v6 = MEMORY[0x1E696AD60];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithString:@"https://amp-api.videos.apple.com/v1/"];
  v9 = +[VUIMediaAPIRequestFactory _purchasesEpisodesEndpoint];
  [v8 appendString:v9];

  v10 = +[VUIMediaAPIRequestFactory _urlParameterForAdditionalParameters];
  [v8 appendString:v10];

  v32[0] = @"tv-episodes";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v12 = [VUIMediaAPIRequestFactory _urlParameterTypeFilterWithTypes:v11];
  [v8 appendString:v12];

  v13 = +[VUIMediaAPIRequestFactory _urlParameterWithSharedPurchases];
  v14 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v13];
  [v8 appendString:v14];

  v15 = [VUIMediaAPIRequestFactory _urlParameterFilterWithShowIdentifier:identifierCopy];

  v16 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v15];
  [v8 appendString:v16];

  v17 = [MEMORY[0x1E696AD98] numberWithInt:25];
  v18 = [VUIMediaAPIRequestFactory _urlParameterForLimit:v17];
  v19 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v18];
  [v8 appendString:v19];

  if (ownerIdentifierCopy)
  {
    v20 = [VUIMediaAPIRequestFactory _urlParameterWithOwnerIdentifier:ownerIdentifierCopy];
    v21 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v20];
    [v8 appendString:v21];
  }

  v22 = [VUIMediaAPIRequestFactory _urlParameterForInclude:@"seasons"];
  v23 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v22];
  [v8 appendString:v23];

  v24 = [VUIMediaAPIRequestFactory _urlParameterForIncludeType:@"include[tv-episodes]" includeRelationship:@"playback-position"];
  v25 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v24];
  [v8 appendString:v25];

  v31[0] = @"personalizedOffers";
  v31[1] = @"iTunesExtrasUrl";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v27 = [VUIMediaAPIRequestFactory _urlParameterForExtend:v26];
  v28 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v27];
  [v8 appendString:v28];

  v29 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v8];

  return v29;
}

+ (id)showsPurchasesRequestWithOwnerIdentifier:(id)identifier sortType:(unint64_t)type
{
  v27[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"https://amp-api.videos.apple.com/v1/"];
  [v6 appendString:@"me/purchases"];
  v7 = +[VUIMediaAPIRequestFactory _urlParameterForAdditionalParameters];
  [v6 appendString:v7];

  v27[0] = @"tv-episodes";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v9 = [VUIMediaAPIRequestFactory _urlParameterTypeFilterWithTypes:v8];
  [v6 appendString:v9];

  v10 = +[VUIMediaAPIRequestFactory _urlParameterWithSharedPurchases];
  v11 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v10];
  [v6 appendString:v11];

  v12 = @"artistName";
  if (type == 3)
  {
    v12 = @"mostRecent";
  }

  if (type == 2)
  {
    v13 = @"name";
  }

  else
  {
    v13 = v12;
  }

  v14 = [VUIMediaAPIRequestFactory _urlParameterForSort:v13];
  v15 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v14];
  [v6 appendString:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:25];
  v17 = [VUIMediaAPIRequestFactory _urlParameterForLimit:v16];
  v18 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v17];
  [v6 appendString:v18];

  if (identifierCopy)
  {
    v19 = [VUIMediaAPIRequestFactory _urlParameterWithOwnerIdentifier:identifierCopy];
    v20 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v19];
    [v6 appendString:v20];
  }

  v26[0] = @"personalizedOffers";
  v26[1] = @"iTunesExtrasUrl";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v22 = [VUIMediaAPIRequestFactory _urlParameterForExtend:v21];
  v23 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v22];
  [v6 appendString:v23];

  v24 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v6];

  return v24;
}

+ (id)genresRequestForVUIFamilySharingGenre:(id)genre withOwnerIdentifier:(id)identifier
{
  v27[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = MEMORY[0x1E696AD60];
  genreCopy = genre;
  v8 = [[v6 alloc] initWithString:@"https://amp-api.videos.apple.com/v1/"];
  [v8 appendString:@"me/purchases"];
  v9 = +[VUIMediaAPIRequestFactory _urlParameterForAdditionalParameters];
  [v8 appendString:v9];

  v27[0] = @"movies";
  v27[1] = @"tv-episodes";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v11 = [VUIMediaAPIRequestFactory _urlParameterTypeFilterWithTypes:v10];
  [v8 appendString:v11];

  v12 = [VUIMediaAPIRequestFactory _urlParameterWithGenreFilter:genreCopy];

  v13 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v12];
  [v8 appendString:v13];

  v14 = +[VUIMediaAPIRequestFactory _urlParameterWithSharedPurchases];
  v15 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v14];
  [v8 appendString:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:25];
  v17 = [VUIMediaAPIRequestFactory _urlParameterForLimit:v16];
  v18 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v17];
  [v8 appendString:v18];

  if (identifierCopy)
  {
    v19 = [VUIMediaAPIRequestFactory _urlParameterWithOwnerIdentifier:identifierCopy];
    v20 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v19];
    [v8 appendString:v20];
  }

  v26[0] = @"personalizedOffers";
  v26[1] = @"iTunesExtrasUrl";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v22 = [VUIMediaAPIRequestFactory _urlParameterForExtend:v21];
  v23 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v22];
  [v8 appendString:v23];

  v24 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v8];

  return v24;
}

+ (id)genresRequestForVUIFamilySharingGenreIDsFilter:(id)filter withOwnerIdentifier:(id)identifier
{
  v27[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = MEMORY[0x1E696AD60];
  filterCopy = filter;
  v8 = [[v6 alloc] initWithString:@"https://amp-api.videos.apple.com/v1/"];
  [v8 appendString:@"me/purchases"];
  v9 = +[VUIMediaAPIRequestFactory _urlParameterForAdditionalParameters];
  [v8 appendString:v9];

  v27[0] = @"movies";
  v27[1] = @"tv-episodes";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v11 = [VUIMediaAPIRequestFactory _urlParameterTypeFilterWithTypes:v10];
  [v8 appendString:v11];

  v12 = [VUIMediaAPIRequestFactory _urlParameterWithGenreIDsFilter:filterCopy];

  v13 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v12];
  [v8 appendString:v13];

  v14 = +[VUIMediaAPIRequestFactory _urlParameterWithSharedPurchases];
  v15 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v14];
  [v8 appendString:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:25];
  v17 = [VUIMediaAPIRequestFactory _urlParameterForLimit:v16];
  v18 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v17];
  [v8 appendString:v18];

  if (identifierCopy)
  {
    v19 = [VUIMediaAPIRequestFactory _urlParameterWithOwnerIdentifier:identifierCopy];
    v20 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v19];
    [v8 appendString:v20];
  }

  v26[0] = @"personalizedOffers";
  v26[1] = @"iTunesExtrasUrl";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v22 = [VUIMediaAPIRequestFactory _urlParameterForExtend:v21];
  v23 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v22];
  [v8 appendString:v23];

  v24 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v8];

  return v24;
}

+ (id)genresRequestWithOwnerIdentifier:(id)identifier
{
  v20[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"https://amp-api.videos.apple.com/v1/"];
  [v4 appendString:@"me/purchases/genres"];
  v5 = +[VUIMediaAPIRequestFactory _urlParameterForAdditionalParameters];
  [v4 appendString:v5];

  v20[0] = @"movies";
  v20[1] = @"tv-episodes";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v7 = [VUIMediaAPIRequestFactory _urlParameterTypeFilterWithTypes:v6];
  [v4 appendString:v7];

  v8 = [VUIMediaAPIRequestFactory _urlParameterForSort:@"name"];
  v9 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v8];
  [v4 appendString:v9];

  if (identifierCopy)
  {
    v10 = [VUIMediaAPIRequestFactory _urlParameterWithOwnerIdentifier:identifierCopy];
    v11 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v10];
    [v4 appendString:v11];
  }

  v12 = +[VUIMediaAPIRequestFactory _urlParameterWithSharedPurchases];
  v13 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v12];
  [v4 appendString:v13];

  v19[0] = @"personalizedOffers";
  v19[1] = @"iTunesExtrasUrl";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [VUIMediaAPIRequestFactory _urlParameterForExtend:v14];
  v16 = [VUIMediaAPIRequestFactory _urlAddAdditionalParameter:v15];
  [v4 appendString:v16];

  v17 = [VUIMediaAPIRequestFactory _urlRequestWithURLString:v4];

  return v17;
}

+ (void)_addTypeFilterToURL:(id *)l forRequest:(id)request
{
  lCopy = l;
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = requestCopy;
  mediaEntityTypes = [requestCopy mediaEntityTypes];
  v7 = [mediaEntityTypes countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(mediaEntityTypes);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = +[VUIMediaEntityType movie];
        v13 = v12;
        if (v11 == v12)
        {

LABEL_12:
          v17 = @"movies";
          goto LABEL_13;
        }

        v14 = +[VUIMediaEntityType movieRental];

        if (v11 == v14)
        {
          goto LABEL_12;
        }

        v15 = +[VUIMediaEntityType season];

        if (v11 == v15)
        {
          v17 = @"tv-seasons";
        }

        else
        {
          v16 = +[VUIMediaEntityType episode];

          if (v11 != v16)
          {
            goto LABEL_14;
          }

          v17 = @"tv-episodes";
        }

LABEL_13:
        [v5 addObject:v17];
LABEL_14:
        ++v10;
      }

      while (v8 != v10);
      v18 = [mediaEntityTypes countByEnumeratingWithState:&v22 objects:v26 count:16];
      v8 = v18;
    }

    while (v18);
  }

  v19 = [VUIMediaAPIRequestFactory _urlParameterTypeFilterWithTypes:v5];
  [*lCopy appendString:v19];
}

+ (id)_urlRequestWithURLString:(id)string
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:string];
  v4 = [MEMORY[0x1E696AF68] requestWithURL:v3];

  return v4;
}

+ (id)_urlParameterTypeFilterWithTypes:(id)types
{
  v23 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = typesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        if ([v10 isEqualToString:@"movies"])
        {
          v11 = @"movies";
          if ([v4 length])
          {
            goto LABEL_8;
          }

          goto LABEL_9;
        }

        if ([v10 isEqualToString:@"tv-seasons"])
        {
          v11 = @"tv-seasons";
          if ([v4 length])
          {
            goto LABEL_8;
          }

          goto LABEL_9;
        }

        if ([v10 isEqualToString:@"tv-episodes"])
        {
          v11 = @"tv-episodes";
          if (![v4 length])
          {
            goto LABEL_9;
          }

LABEL_8:
          [v4 appendString:{@", "}];
LABEL_9:
          [v4 appendString:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v7 = v12;
    }

    while (v12);
  }

  v13 = objc_alloc(MEMORY[0x1E696AD60]);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", @"types", v4, v18];
  v15 = [v13 initWithString:v14];

  v16 = [v15 copy];

  return v16;
}

+ (id)_urlParameterWithGenreFilter:(id)filter
{
  v18 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  genreIdentifiers = [filterCopy genreIdentifiers];
  v6 = [genreIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(genreIdentifiers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v4 isEqualToString:&stru_1F5DB25C0] & 1) == 0)
        {
          [v4 appendString:{@", "}];
        }

        [v4 appendString:v10];
      }

      v7 = [genreIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [VUIMediaAPIRequestFactory _urlParameterWithGenreIDsFilter:v4];

  return v11;
}

+ (id)_urlParameterForExtend:(id)extend
{
  v3 = [extend componentsJoinedByString:{@", "}];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", @"extend", v3];

  return v4;
}

@end