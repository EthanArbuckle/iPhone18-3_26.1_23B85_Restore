@interface VUIMediaEntitiesDataSourceFactory
+ (id)_dataSourceForShelfType:(int64_t)type withLibrary:(id)library withOwnerIdentifier:(id)identifier;
+ (id)_fetchRequestForGenre:(id)genre;
+ (id)dataSourceForCategoryType:(int64_t)type;
+ (id)dataSourceForCategoryType:(int64_t)type withFamilyMember:(id)member;
+ (id)dataSourceForCategoryType:(int64_t)type withLibrary:(id)library withOwnerIdentifier:(id)identifier;
+ (id)dataSourceForFetchRequest:(id)request withLibrary:(id)library;
+ (id)dataSourceForGenre:(id)genre withFamilyMember:(id)member;
+ (id)dataSourceForGenre:(id)genre withLibrary:(id)library;
+ (id)dataSourceForShelf:(int64_t)shelf withFamilyMember:(id)member;
+ (id)episodesDataSourceForSeasonIdentifier:(id)identifier showIdentifier:(id)showIdentifier withFamilyMember:(id)member;
+ (id)episodesDataSourceForShowIdentifier:(id)identifier withFamilyMember:(id)member;
+ (id)seasonsDataSourceForSeasonIdentifier:(id)identifier showIdentifier:(id)showIdentifier withFamilyMember:(id)member;
+ (id)seasonsDataSourceForShowIdentifier:(id)identifier withFamilyMember:(id)member;
@end

@implementation VUIMediaEntitiesDataSourceFactory

+ (id)dataSourceForCategoryType:(int64_t)type
{
  v5 = +[VUIMediaLibraryManager defaultManager];
  deviceMediaLibrary = [v5 deviceMediaLibrary];
  v7 = [self dataSourceForCategoryType:type withLibrary:deviceMediaLibrary withOwnerIdentifier:0];

  return v7;
}

+ (id)dataSourceForFetchRequest:(id)request withLibrary:(id)library
{
  libraryCopy = library;
  requestCopy = request;
  v7 = [[VUIMPMediaEntitiesDataSource alloc] initWithMediaLibrary:libraryCopy fetchRequest:requestCopy];

  return v7;
}

+ (id)seasonsDataSourceForShowIdentifier:(id)identifier withFamilyMember:(id)member
{
  identifierCopy = identifier;
  memberIdentifier = [member memberIdentifier];
  stringValue = [memberIdentifier stringValue];

  v8 = [VUIMediaAPIRequestFactory seasonsRequestWithShowIdentifier:identifierCopy withOwnerIdentifier:stringValue];

  v9 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v8];
  [(VUIFamilySharingMediaEntitiesDataSource *)v9 setShouldCoalesceEpisodesToSeasons:1];

  return v9;
}

+ (id)episodesDataSourceForShowIdentifier:(id)identifier withFamilyMember:(id)member
{
  identifierCopy = identifier;
  memberIdentifier = [member memberIdentifier];
  stringValue = [memberIdentifier stringValue];

  v8 = [VUIMediaAPIRequestFactory episodesRequestWithShowIdentifier:identifierCopy withOwnerIdentifier:stringValue];

  v9 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v8];
  [(VUIFamilySharingMediaEntitiesDataSource *)v9 setShouldGroupBySeason:1];
  [(VUIFamilySharingMediaEntitiesDataSource *)v9 setOrderEpisodesByEpisodeNumber:1];

  return v9;
}

+ (id)seasonsDataSourceForSeasonIdentifier:(id)identifier showIdentifier:(id)showIdentifier withFamilyMember:(id)member
{
  showIdentifierCopy = showIdentifier;
  identifierCopy = identifier;
  memberIdentifier = [member memberIdentifier];
  stringValue = [memberIdentifier stringValue];

  v11 = [VUIMediaAPIRequestFactory seasonsRequestWithShowIdentifier:showIdentifierCopy withOwnerIdentifier:stringValue];

  v12 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v11];
  [(VUIFamilySharingMediaEntitiesDataSource *)v12 setShouldCoalesceEpisodesToSeasons:1];
  [(VUIFamilySharingMediaEntitiesDataSource *)v12 setSeasonIdentifierFilter:identifierCopy];

  return v12;
}

+ (id)episodesDataSourceForSeasonIdentifier:(id)identifier showIdentifier:(id)showIdentifier withFamilyMember:(id)member
{
  showIdentifierCopy = showIdentifier;
  identifierCopy = identifier;
  memberIdentifier = [member memberIdentifier];
  stringValue = [memberIdentifier stringValue];

  v11 = [VUIMediaAPIRequestFactory episodesRequestWithShowIdentifier:showIdentifierCopy withOwnerIdentifier:stringValue];

  v12 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v11];
  [(VUIFamilySharingMediaEntitiesDataSource *)v12 setShouldGroupBySeason:1];
  [(VUIFamilySharingMediaEntitiesDataSource *)v12 setOrderEpisodesByEpisodeNumber:1];
  [(VUIFamilySharingMediaEntitiesDataSource *)v12 setSeasonIdentifierFilter:identifierCopy];

  return v12;
}

+ (id)dataSourceForCategoryType:(int64_t)type withFamilyMember:(id)member
{
  if (member)
  {
    memberIdentifier = [member memberIdentifier];
    stringValue = [memberIdentifier stringValue];

    v7 = [VUIMediaEntitiesDataSourceFactory dataSourceForCategoryType:type withLibrary:0 withOwnerIdentifier:stringValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)dataSourceForCategoryType:(int64_t)type withLibrary:(id)library withOwnerIdentifier:(id)identifier
{
  v49[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  identifierCopy = identifier;
  if (!libraryCopy)
  {
    v9 = +[VUIMediaLibraryManager defaultManager];
    libraryCopy = [v9 deviceMediaLibrary];
  }

  v10 = 0;
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        v11 = +[VUIMediaEntityFetchRequest movieRentalsFetchRequest];
        v28 = objc_alloc(MEMORY[0x1E695DEC8]);
        v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rentalExpirationDate" ascending:1];
        v30 = [v28 initWithObjects:{v29, 0}];

        [(VUIMediaEntityFetchRequest *)v11 setSortDescriptors:v30];
        v10 = [[VUIMPMediaEntitiesDataSource alloc] initWithMediaLibrary:libraryCopy fetchRequest:v11];

        goto LABEL_34;
      }

      if (type != 8)
      {
        goto LABEL_35;
      }

      v15 = [VUIMediaEntityFetchRequest alloc];
      v16 = MEMORY[0x1E695DFD8];
      v17 = +[VUIMediaEntityType movieRental];
      v18 = +[VUIMediaEntityType movie];
      v19 = +[VUIMediaEntityType episode];
      v20 = +[VUIMediaEntityType homeVideo];
      v21 = [v16 setWithObjects:{v17, v18, v19, v20, 0}];
      v11 = [(VUIMediaEntityFetchRequest *)v15 initWithMediaEntityTypes:v21];

      v22 = VUIMediaEntityFetchRequestAllPropertiesSet();
      [(VUIMediaEntityFetchRequest *)v11 setProperties:v22];

      [(VUIMediaEntityFetchRequest *)v11 setGroupingKeyPath:@"showTitle"];
      v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1];
      v48 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      [(VUIMediaEntityFetchRequest *)v11 setSortDescriptors:v24];

      [(VUIMediaEntityFetchRequest *)v11 addIsLocalOrHasExpiredDownloadPredicate];
      v25 = VUIDownloadDataSource;
      goto LABEL_32;
    }

    if (type == 4)
    {
      v11 = +[VUIMediaEntityFetchRequest moviesFetchRequest];
      [(VUIMediaEntityFetchRequest *)v11 addHDRColorCapabilityOr4KResolutionPredicate];
    }

    else
    {
      v11 = +[VUIMediaEntityFetchRequest homeVideosFetchRequest];
    }

LABEL_31:
    v25 = VUIMPMediaEntitiesDataSource;
LABEL_32:
    v27 = [[v25 alloc] initWithMediaLibrary:libraryCopy fetchRequest:v11];
    goto LABEL_33;
  }

  if (type <= 1)
  {
    if (!type)
    {
      if (!identifierCopy)
      {
        v31 = [VUIMediaEntityFetchRequest alloc];
        v32 = objc_alloc_init(MEMORY[0x1E695DFD8]);
        v33 = [(VUIMediaEntityFetchRequest *)v31 initWithMediaEntityTypes:v32];

        v34 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
        [(VUIMediaEntityFetchRequest *)v33 setProperties:v34];

        [(VUIMediaEntityFetchRequest *)v33 addRecentlyAddedSortDescriptorWithLimit:0];
        v10 = [[VUIMPMediaEntitiesDataSource alloc] initWithMediaLibrary:libraryCopy fetchRequest:v33];

        goto LABEL_35;
      }

      v11 = [VUIMediaAPIRequestFactory recentPurchasesRequestWithOwnerIdentifier:identifierCopy];
      v10 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v11];
      v12 = MEMORY[0x1E696AD98];
      v13 = 0;
      goto LABEL_20;
    }

    if (type != 1)
    {
      goto LABEL_35;
    }

    if (identifierCopy)
    {
      v11 = [VUIMediaAPIRequestFactory recentPurchasesRequestWithOwnerIdentifier:identifierCopy];
      v10 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v11];
      v12 = MEMORY[0x1E696AD98];
      v13 = 25;
LABEL_20:
      v26 = [v12 numberWithInt:v13];
      [(VUIMPMediaEntitiesDataSource *)v10 setResultLimit:v26];

      v14 = v10;
      goto LABEL_21;
    }

    v36 = [VUIMediaEntityFetchRequest alloc];
    v37 = MEMORY[0x1E695DFD8];
    v38 = +[VUIMediaEntityType movie];
    v39 = +[VUIMediaEntityType show];
    v40 = [v37 setWithObjects:{v38, v39, 0}];
    v11 = [(VUIMediaEntityFetchRequest *)v36 initWithMediaEntityTypes:v40];

    v41 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
    [(VUIMediaEntityFetchRequest *)v11 setProperties:v41];

    v42 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
    v49[0] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
    [(VUIMediaEntityFetchRequest *)v11 setSortDescriptors:v43];

    [(VUIMediaEntityFetchRequest *)v11 addRecentlyAddedSortDescriptorWithLimit:25];
    v44 = MEMORY[0x1E696AE18];
    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = [v44 vui_predicateWithSubpredicates:v45 type:1];
    [(VUIMediaEntityFetchRequest *)v11 setPredicate:v46];

    goto LABEL_31;
  }

  if (type == 2)
  {
    if (identifierCopy)
    {
      v11 = [VUIMediaAPIRequestFactory moviesPurchasesRequestWithOwnerIdentifier:identifierCopy sortType:0];
      v27 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v11];
LABEL_33:
      v10 = v27;
      goto LABEL_34;
    }

    v35 = +[VUIMediaEntityFetchRequest moviesFetchRequest];
    goto LABEL_30;
  }

  if (!identifierCopy)
  {
    v35 = +[VUIMediaEntityFetchRequest showsFetchRequest];
LABEL_30:
    v11 = v35;
    [(VUIMediaEntityFetchRequest *)v35 setGroupingKeyPath:@"genreTitle"];
    goto LABEL_31;
  }

  v11 = [VUIMediaAPIRequestFactory showsPurchasesRequestWithOwnerIdentifier:identifierCopy sortType:0];
  v14 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v11];
  v10 = v14;
LABEL_21:
  [(VUIFamilySharingMediaEntitiesDataSource *)v14 setShouldCoalesceEpisodesToShows:1];
LABEL_34:

LABEL_35:

  return v10;
}

+ (id)dataSourceForGenre:(id)genre withFamilyMember:(id)member
{
  genreCopy = genre;
  memberIdentifier = [member memberIdentifier];
  stringValue = [memberIdentifier stringValue];

  v8 = [VUIMediaAPIRequestFactory genresRequestForVUIFamilySharingGenre:genreCopy withOwnerIdentifier:stringValue];

  v9 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v8];
  [(VUIFamilySharingMediaEntitiesDataSource *)v9 setShouldCoalesceEpisodesToShows:1];

  return v9;
}

+ (id)dataSourceForGenre:(id)genre withLibrary:(id)library
{
  libraryCopy = library;
  v6 = [VUIMediaEntitiesDataSourceFactory _fetchRequestForGenre:genre];
  v7 = [[VUIMPMediaEntitiesDataSource alloc] initWithMediaLibrary:libraryCopy fetchRequest:v6];

  return v7;
}

+ (id)_fetchRequestForGenre:(id)genre
{
  v15[1] = *MEMORY[0x1E69E9840];
  genreCopy = genre;
  v4 = [VUIMediaEntityFetchRequest alloc];
  v5 = MEMORY[0x1E695DFD8];
  v6 = +[VUIMediaEntityType movie];
  v7 = +[VUIMediaEntityType show];
  v8 = [v5 setWithObjects:{v6, v7, 0}];
  v9 = [(VUIMediaEntityFetchRequest *)v4 initWithMediaEntityTypes:v8];

  v10 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v9 setProperties:v10];

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(VUIMediaEntityFetchRequest *)v9 setSortDescriptors:v12];

  v13 = [MEMORY[0x1E696AE18] vui_equalPredicateWithKeyPath:@"genreTitle" value:genreCopy];

  [(VUIMediaEntityFetchRequest *)v9 setPredicate:v13];

  return v9;
}

+ (id)dataSourceForShelf:(int64_t)shelf withFamilyMember:(id)member
{
  memberIdentifier = [member memberIdentifier];
  stringValue = [memberIdentifier stringValue];

  v7 = [VUIMediaEntitiesDataSourceFactory _dataSourceForShelfType:shelf withLibrary:0 withOwnerIdentifier:stringValue];

  return v7;
}

+ (id)_dataSourceForShelfType:(int64_t)type withLibrary:(id)library withOwnerIdentifier:(id)identifier
{
  libraryCopy = library;
  identifierCopy = identifier;
  if (!libraryCopy)
  {
    v9 = +[VUIMediaLibraryManager defaultManager];
    libraryCopy = [v9 deviceMediaLibrary];
  }

  v10 = 0;
  if (type > 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_20;
      }

      v11 = +[VUIMediaEntityFetchRequest moviesFetchRequest];
      [v11 addHDRColorCapabilityOr4KResolutionPredicate];
      goto LABEL_17;
    }

    if (identifierCopy)
    {
      v11 = [VUIMediaAPIRequestFactory moviesPurchasesRequestWithOwnerIdentifier:identifierCopy sortType:3];
      v15 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v11];
LABEL_18:
      v10 = v15;
      goto LABEL_19;
    }

    v16 = +[VUIMediaEntityFetchRequest moviesFetchRequest];
LABEL_16:
    v11 = v16;
    [v16 addRecentlyAddedSortDescriptorWithLimit:25];
    [v11 setGroupingKeyPath:@"genreTitle"];
LABEL_17:
    v15 = [[VUIMPMediaEntitiesDataSource alloc] initWithMediaLibrary:libraryCopy fetchRequest:v11];
    goto LABEL_18;
  }

  if (!type)
  {
    v11 = +[VUIMediaEntityFetchRequest movieRentalsFetchRequest];
    v12 = objc_alloc(MEMORY[0x1E695DEC8]);
    v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rentalExpirationDate" ascending:1];
    v14 = [v12 initWithObjects:{v13, 0}];

    [v11 setSortDescriptors:v14];
    v10 = [[VUIMPMediaEntitiesDataSource alloc] initWithMediaLibrary:libraryCopy fetchRequest:v11];

    goto LABEL_19;
  }

  if (type != 1)
  {
    goto LABEL_20;
  }

  if (!identifierCopy)
  {
    v16 = +[VUIMediaEntityFetchRequest showsFetchRequest];
    goto LABEL_16;
  }

  v11 = [VUIMediaAPIRequestFactory showsPurchasesRequestWithOwnerIdentifier:identifierCopy sortType:3];
  v10 = [[VUIFamilySharingMediaEntitiesDataSource alloc] initWithNSURLRequest:v11];
  [(VUIMPMediaEntitiesDataSource *)v10 setShouldCoalesceEpisodesToShows:1];
LABEL_19:

LABEL_20:

  return v10;
}

@end