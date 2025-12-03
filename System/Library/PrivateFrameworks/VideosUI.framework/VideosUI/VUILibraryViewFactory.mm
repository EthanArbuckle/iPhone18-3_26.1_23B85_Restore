@interface VUILibraryViewFactory
+ (id)moviePlaceholderImage;
+ (id)tvPlaceholderImage;
+ (id)viewControllerForMediaEntity:(id)entity withFamilyMember:(id)member;
@end

@implementation VUILibraryViewFactory

+ (id)viewControllerForMediaEntity:(id)entity withFamilyMember:(id)member
{
  entityCopy = entity;
  memberCopy = member;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = entityCopy;
    type = [v7 type];
    v9 = +[VUIMediaEntityType episode];

    v10 = off_1E8728348;
    if (type != v9)
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

  v12 = entityCopy;
  type = [v12 type];
  v13 = +[VUIMediaEntityType show];

  if (type == v13)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    seasonCount = [v12 seasonCount];
    intValue = [seasonCount intValue];

    if (userInterfaceIdiom || intValue < 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        amsShowIdentifier = [v12 amsShowIdentifier];
        title2 = [VUIMediaEntitiesDataSourceFactory seasonsDataSourceForShowIdentifier:amsShowIdentifier withFamilyMember:memberCopy];
        v25 = [VUIMediaEntitiesDataSourceFactory episodesDataSourceForShowIdentifier:amsShowIdentifier withFamilyMember:memberCopy];
        title = [v12 title];
      }

      else
      {
        type2 = [v12 type];
        v34 = +[VUIMediaEntityType season];

        identifier = [v12 identifier];
        v36 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithShowIdentifier:identifier];
        mediaLibrary = [v12 mediaLibrary];
        title2 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v36 withLibrary:mediaLibrary];

        if (type2 == v34)
        {
          identifier2 = [v12 identifier];
          v41 = [VUIMediaEntityFetchRequest episodesFetchRequestWithSeasonIdentifier:identifier2];
          mediaLibrary2 = [v12 mediaLibrary];
          v25 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v41 withLibrary:mediaLibrary2];

          [v12 showTitle];
        }

        else
        {
          showIdentifier = [v12 showIdentifier];
          v39 = [VUIMediaEntityFetchRequest episodesGroupedBySeasonIdentifierFetchRequestWithShowIdentifier:showIdentifier];
          mediaLibrary3 = [v12 mediaLibrary];
          v25 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v39 withLibrary:mediaLibrary3];

          [v12 title];
        }
        title = ;
      }

      v43 = userInterfaceIdiom != 0;
      v11 = [[VUILibraryMediaCollectionViewController alloc] initWithTitle:title withSeasonsDataSource:title2 withEpisodesDataSource:v25];
      [(VUILibraryMediaCollectionViewController *)v11 setCanShowMultipleSeasons:v43];
      [(VUILibraryMediaCollectionViewController *)v11 setMediaCollection:v12];
    }

    else
    {
      if (memberCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        amsShowIdentifier2 = [v12 amsShowIdentifier];
        title = [VUIMediaEntitiesDataSourceFactory seasonsDataSourceForShowIdentifier:amsShowIdentifier2 withFamilyMember:memberCopy];
      }

      else
      {
        identifier3 = [v12 identifier];
        amsShowIdentifier2 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithShowIdentifier:identifier3];

        mediaLibrary4 = [v12 mediaLibrary];
        title = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:amsShowIdentifier2 withLibrary:mediaLibrary4];
      }

      v11 = [[VUISeasonPickerViewController alloc] initWithDataSource:title];
      title2 = [v12 title];
      [(VUILibraryMediaCollectionViewController *)v11 setTitle:title2];
    }

    goto LABEL_28;
  }

  v14 = +[VUIMediaEntityType season];

  if (type == v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      amsShowIdentifier3 = [v12 amsShowIdentifier];
      amsSeasonIdentifier = [v12 amsSeasonIdentifier];
      title = [VUIMediaEntitiesDataSourceFactory seasonsDataSourceForSeasonIdentifier:amsSeasonIdentifier showIdentifier:amsShowIdentifier3 withFamilyMember:memberCopy];
      title2 = [VUIMediaEntitiesDataSourceFactory episodesDataSourceForSeasonIdentifier:amsSeasonIdentifier showIdentifier:amsShowIdentifier3 withFamilyMember:memberCopy];
    }

    else
    {
      identifier4 = [v12 identifier];
      v29 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithSeasonIdentifier:identifier4];
      mediaLibrary5 = [v12 mediaLibrary];
      title = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v29 withLibrary:mediaLibrary5];

      amsShowIdentifier3 = [v12 identifier];
      amsSeasonIdentifier = [VUIMediaEntityFetchRequest episodesFetchRequestWithSeasonIdentifier:amsShowIdentifier3];
      mediaLibrary6 = [v12 mediaLibrary];
      title2 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:amsSeasonIdentifier withLibrary:mediaLibrary6];
    }

    v32 = [VUILibraryMediaCollectionViewController alloc];
    showTitle = [v12 showTitle];
    v11 = [(VUILibraryMediaCollectionViewController *)v32 initWithTitle:showTitle withSeasonsDataSource:title withEpisodesDataSource:title2];

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