@interface VUILibraryViewFactory
+ (id)moviePlaceholderImage;
+ (id)tvPlaceholderImage;
+ (id)viewControllerForMediaEntity:(id)a3 withFamilyMember:(id)a4;
@end

@implementation VUILibraryViewFactory

+ (id)viewControllerForMediaEntity:(id)a3 withFamilyMember:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v7 type];
    v9 = +[VUIMediaEntityType episode];

    v10 = off_1E8728348;
    if (v8 != v9)
    {
      v10 = off_1E87283B0;
    }

    v11 = [objc_alloc(*v10) initWithMediaItem:v7];
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_30;
  }

  v12 = v5;
  v8 = [v12 type];
  v13 = +[VUIMediaEntityType show];

  if (v8 == v13)
  {
    v15 = [MEMORY[0x1E69DC938] currentDevice];
    v16 = [v15 userInterfaceIdiom];

    v17 = [v12 seasonCount];
    v18 = [v17 intValue];

    if (v16 || v18 < 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v12 amsShowIdentifier];
        v23 = [VUIMediaEntitiesDataSourceFactory seasonsDataSourceForShowIdentifier:v24 withFamilyMember:v6];
        v25 = [VUIMediaEntitiesDataSourceFactory episodesDataSourceForShowIdentifier:v24 withFamilyMember:v6];
        v20 = [v12 title];
      }

      else
      {
        v45 = [v12 type];
        v34 = +[VUIMediaEntityType season];

        v35 = [v12 identifier];
        v36 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithShowIdentifier:v35];
        v37 = [v12 mediaLibrary];
        v23 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v36 withLibrary:v37];

        if (v45 == v34)
        {
          v46 = [v12 identifier];
          v41 = [VUIMediaEntityFetchRequest episodesFetchRequestWithSeasonIdentifier:v46];
          v42 = [v12 mediaLibrary];
          v25 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v41 withLibrary:v42];

          [v12 showTitle];
        }

        else
        {
          v38 = [v12 showIdentifier];
          v39 = [VUIMediaEntityFetchRequest episodesGroupedBySeasonIdentifierFetchRequestWithShowIdentifier:v38];
          v40 = [v12 mediaLibrary];
          v25 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v39 withLibrary:v40];

          [v12 title];
        }
        v20 = ;
      }

      v43 = v16 != 0;
      v11 = [[VUILibraryMediaCollectionViewController alloc] initWithTitle:v20 withSeasonsDataSource:v23 withEpisodesDataSource:v25];
      [(VUILibraryMediaCollectionViewController *)v11 setCanShowMultipleSeasons:v43];
      [(VUILibraryMediaCollectionViewController *)v11 setMediaCollection:v12];
    }

    else
    {
      if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = [v12 amsShowIdentifier];
        v20 = [VUIMediaEntitiesDataSourceFactory seasonsDataSourceForShowIdentifier:v19 withFamilyMember:v6];
      }

      else
      {
        v26 = [v12 identifier];
        v19 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithShowIdentifier:v26];

        v27 = [v12 mediaLibrary];
        v20 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v19 withLibrary:v27];
      }

      v11 = [[VUISeasonPickerViewController alloc] initWithDataSource:v20];
      v23 = [v12 title];
      [(VUILibraryMediaCollectionViewController *)v11 setTitle:v23];
    }

    goto LABEL_28;
  }

  v14 = +[VUIMediaEntityType season];

  if (v8 == v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v12 amsShowIdentifier];
      v22 = [v12 amsSeasonIdentifier];
      v20 = [VUIMediaEntitiesDataSourceFactory seasonsDataSourceForSeasonIdentifier:v22 showIdentifier:v21 withFamilyMember:v6];
      v23 = [VUIMediaEntitiesDataSourceFactory episodesDataSourceForSeasonIdentifier:v22 showIdentifier:v21 withFamilyMember:v6];
    }

    else
    {
      v28 = [v12 identifier];
      v29 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithSeasonIdentifier:v28];
      v30 = [v12 mediaLibrary];
      v20 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v29 withLibrary:v30];

      v21 = [v12 identifier];
      v22 = [VUIMediaEntityFetchRequest episodesFetchRequestWithSeasonIdentifier:v21];
      v31 = [v12 mediaLibrary];
      v23 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v22 withLibrary:v31];
    }

    v32 = [VUILibraryMediaCollectionViewController alloc];
    v33 = [v12 showTitle];
    v11 = [(VUILibraryMediaCollectionViewController *)v32 initWithTitle:v33 withSeasonsDataSource:v20 withEpisodesDataSource:v23];

    [(VUILibraryMediaCollectionViewController *)v11 setCanShowMultipleSeasons:0];
    [(VUILibraryMediaCollectionViewController *)v11 setMediaCollection:v12];
LABEL_28:

    goto LABEL_29;
  }

  v11 = 0;
LABEL_29:

LABEL_30:

  return v11;
}

+ (id)moviePlaceholderImage
{
  if (moviePlaceholderImage_onceToken != -1)
  {
    +[VUILibraryViewFactory moviePlaceholderImage];
  }

  v3 = moviePlaceholderImage_moviePlaceholder;

  return v3;
}

void __46__VUILibraryViewFactory_moviePlaceholderImage__block_invoke()
{
  v0 = [VUIImageResourceMap imageForResourceName:@"PreloadAsset-Movie"];
  v1 = moviePlaceholderImage_moviePlaceholder;
  moviePlaceholderImage_moviePlaceholder = v0;
}

+ (id)tvPlaceholderImage
{
  if (tvPlaceholderImage_onceToken != -1)
  {
    +[VUILibraryViewFactory tvPlaceholderImage];
  }

  v3 = tvPlaceholderImage_tvPlaceholder;

  return v3;
}

void __43__VUILibraryViewFactory_tvPlaceholderImage__block_invoke()
{
  v0 = [VUIImageResourceMap imageForResourceName:@"PreloadAsset-TV"];
  v1 = tvPlaceholderImage_tvPlaceholder;
  tvPlaceholderImage_tvPlaceholder = v0;
}

@end