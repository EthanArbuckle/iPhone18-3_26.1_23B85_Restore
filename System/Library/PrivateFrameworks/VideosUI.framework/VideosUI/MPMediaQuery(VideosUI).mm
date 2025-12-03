@interface MPMediaQuery(VideosUI)
+ (id)_vui_moviesQueryWithMediaLibrary:()VideosUI rentals:;
+ (id)vui_GenresQueryWithMediaLibrary:()VideosUI;
+ (id)vui_episodesQueryWithMediaLibrary:()VideosUI;
+ (id)vui_homeVideosQueryWithMediaLibrary:()VideosUI;
+ (id)vui_movieRentalsQueryWithMediaLibrary:()VideosUI;
+ (id)vui_tvShowsQueryWithMediaLibrary:()VideosUI;
+ (uint64_t)vui_hasEpisodesInSeasonsQueryWithMediaLibrary:()VideosUI seasonCanonicalIds:;
- (void)_vui_configureMediaQueryWithMediaLibrary:()VideosUI;
- (void)vui_excludePreorderContent;
@end

@implementation MPMediaQuery(VideosUI)

+ (id)vui_episodesQueryWithMediaLibrary:()VideosUI
{
  v4 = a3;
  tvShowsQuery = [self tvShowsQuery];
  [tvShowsQuery _vui_configureMediaQueryWithMediaLibrary:v4];
  v6 = MEMORY[0x1E6970608];
  v7 = +[VUIMediaEntityType episode];
  v8 = [v6 vui_restrictionsPredicateWithMediaEntityType:v7 mediaLibrary:v4];

  if (v8)
  {
    [tvShowsQuery addFilterPredicate:v8];
  }

  return tvShowsQuery;
}

+ (id)vui_tvShowsQueryWithMediaLibrary:()VideosUI
{
  v1 = [self vui_episodesQueryWithMediaLibrary:?];
  [v1 setGroupingType:8];

  return v1;
}

+ (uint64_t)vui_hasEpisodesInSeasonsQueryWithMediaLibrary:()VideosUI seasonCanonicalIds:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [self vui_episodesQueryWithMediaLibrary:v6];
  [v8 _vui_configureMediaQueryWithMediaLibrary:v6];
  [v8 setGroupingType:1];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  collections = [v8 collections];
  v11 = [collections countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    v14 = *MEMORY[0x1E696F8E0];
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(collections);
        }

        v16 = [*(*(&v19 + 1) + 8 * v15) valueForProperty:v14];
        if (v16 && ([v9 containsObject:v16] & 1) != 0)
        {

          v17 = 1;
          goto LABEL_12;
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [collections countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

+ (id)vui_movieRentalsQueryWithMediaLibrary:()VideosUI
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [self _vui_moviesQueryWithMediaLibrary:a3 rentals:1];
  v4 = MEMORY[0x1E6970610];
  v5 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = [v5 numberWithDouble:?];
  v7 = *MEMORY[0x1E696FAE8];
  v8 = [v4 predicateWithValue:v6 forProperty:*MEMORY[0x1E696FAE8] comparisonType:101];

  v9 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5D710 forProperty:v7 comparisonType:0];
  v10 = MEMORY[0x1E69705A0];
  v14[0] = v8;
  v14[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [v10 predicateMatchingPredicates:v11];

  [v3 addFilterPredicate:v12];

  return v3;
}

+ (id)vui_homeVideosQueryWithMediaLibrary:()VideosUI
{
  v4 = a3;
  homeVideosQuery = [self homeVideosQuery];
  [homeVideosQuery _vui_configureMediaQueryWithMediaLibrary:v4];

  return homeVideosQuery;
}

+ (id)vui_GenresQueryWithMediaLibrary:()VideosUI
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6970618];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setGroupingType:5];
  v28 = [MEMORY[0x1E6970608] vui_isLocalPredicate:1 comparison:0];
  v6 = *MEMORY[0x1E696FA88];
  v7 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5D728 forProperty:*MEMORY[0x1E696FA88]];
  v8 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5D740 forProperty:v6];
  mEMORY[0x1E69DF780] = [MEMORY[0x1E69DF780] sharedInstance];
  allowsShowingUndownloadedMovies = [mEMORY[0x1E69DF780] allowsShowingUndownloadedMovies];

  v11 = 0;
  if ((allowsShowingUndownloadedMovies & 1) == 0)
  {
    v12 = MEMORY[0x1E6970598];
    v34[0] = v28;
    v34[1] = v7;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v11 = [v12 predicateMatchingPredicates:v13];
  }

  mEMORY[0x1E69DF780]2 = [MEMORY[0x1E69DF780] sharedInstance];
  allowsShowingUndownloadedTVShows = [mEMORY[0x1E69DF780]2 allowsShowingUndownloadedTVShows];

  if (!allowsShowingUndownloadedTVShows)
  {
    v17 = MEMORY[0x1E6970598];
    v33[0] = v28;
    v33[1] = v8;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v16 = [v17 predicateMatchingPredicates:v18];

    if (v11 && v16)
    {
      v19 = MEMORY[0x1E69705A0];
      v32 = v11;
      v20 = &v32;
    }

    else
    {
      if (v11)
      {
        goto LABEL_11;
      }

      if (!v16)
      {
LABEL_14:
        v21 = 0;
        v19 = MEMORY[0x1E69705A0];
        v29 = v7;
        v20 = &v29;
        goto LABEL_15;
      }

      v19 = MEMORY[0x1E69705A0];
      v30 = v7;
      v20 = &v30;
    }

    v21 = v16;
    goto LABEL_16;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v16 = 0;
LABEL_11:
  v21 = v16;
  v19 = MEMORY[0x1E69705A0];
  v31 = v11;
  v20 = &v31;
LABEL_15:
  v16 = v8;
LABEL_16:
  v20[1] = v16;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v23 = [v19 predicateMatchingPredicates:v22];

  if (v23)
  {
    [v5 addFilterPredicate:v23];
  }

  v24 = MEMORY[0x1E695E110];
  v25 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E110] forProperty:*MEMORY[0x1E696FA58]];
  v26 = [MEMORY[0x1E6970610] predicateWithValue:v24 forProperty:*MEMORY[0x1E696FA30]];
  [v5 addFilterPredicate:v25];
  [v5 addFilterPredicate:v26];
  [v5 vui_excludePreorderContent];
  [v5 setMediaLibrary:v4];

  return v5;
}

- (void)vui_excludePreorderContent
{
  v2 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E118] forProperty:*MEMORY[0x1E696FA50] comparisonType:100];
  [self addFilterPredicate:v2];
}

+ (id)_vui_moviesQueryWithMediaLibrary:()VideosUI rentals:
{
  v6 = a3;
  if (a4)
  {
    movieRentalsQuery = [self movieRentalsQuery];
    +[VUIMediaEntityType movieRental];
  }

  else
  {
    movieRentalsQuery = [self moviesQuery];
    +[VUIMediaEntityType movie];
  }
  v8 = ;
  [movieRentalsQuery _vui_configureMediaQueryWithMediaLibrary:v6];
  v9 = [MEMORY[0x1E6970608] vui_restrictionsPredicateWithMediaEntityType:v8 mediaLibrary:v6];
  if (v9)
  {
    [movieRentalsQuery addFilterPredicate:v9];
  }

  [movieRentalsQuery vui_excludePreorderContent];

  return movieRentalsQuery;
}

- (void)_vui_configureMediaQueryWithMediaLibrary:()VideosUI
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  array = [v4 array];
  v6 = MEMORY[0x1E695E110];
  v7 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E110] forProperty:*MEMORY[0x1E696FA28]];
  [array vui_addObjectIfNotNil:v7];
  v8 = [MEMORY[0x1E6970610] predicateWithValue:v6 forProperty:*MEMORY[0x1E696FA40]];
  [array vui_addObjectIfNotNil:v8];
  v9 = [MEMORY[0x1E6970610] predicateWithValue:v6 forProperty:*MEMORY[0x1E696F9F8]];
  [array vui_addObjectIfNotNil:v9];
  v10 = [MEMORY[0x1E6970598] predicateMatchingPredicates:array];
  [self addFilterPredicate:v10];
  [self setMediaLibrary:v5];
}

@end