@interface PKLibraryPreview
+ (id)_readFromPodcastsContainerWithDataSource:(id)source;
+ (id)readFromPodcastsContainer;
+ (id)readPlistWithPath:(id)path;
- (PKLibraryPreview)initWithShows:(id)shows stations:(id)stations;
@end

@implementation PKLibraryPreview

- (PKLibraryPreview)initWithShows:(id)shows stations:(id)stations
{
  showsCopy = shows;
  stationsCopy = stations;
  v11.receiver = self;
  v11.super_class = PKLibraryPreview;
  v8 = [(PKLibraryPreview *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PKLibraryPreview *)v8 setShows:showsCopy];
    [(PKLibraryPreview *)v9 setStations:stationsCopy];
  }

  return v9;
}

+ (id)readPlistWithPath:(id)path
{
  pathCopy = path;
  v5 = [[PODataSource alloc] initWithPlistPath:pathCopy];

  v6 = [self _readFromPodcastsContainerWithDataSource:v5];

  return v6;
}

+ (id)readFromPodcastsContainer
{
  v3 = objc_alloc_init(PODataSource);
  v4 = [self _readFromPodcastsContainerWithDataSource:v3];

  return v4;
}

+ (id)_readFromPodcastsContainerWithDataSource:(id)source
{
  v77 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = sourceCopy;
  podcastCollections = [sourceCopy podcastCollections];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v5 = [podcastCollections countByEnumeratingWithState:&v67 objects:v76 count:16];
  v60 = podcastCollections;
  if (v5)
  {
    v6 = v5;
    v7 = *v68;
    v8 = &dword_25E9F0000;
    v59 = *v68;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v68 != v7)
        {
          objc_enumerationMutation(podcastCollections);
        }

        v10 = *(*(&v67 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          uuid = [v11 uuid];
          if (uuid && (v13 = uuid, -[NSObject uuid](v11, "uuid"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v13, v15))
          {
            v16 = MEMORY[0x277CCACA8];
            uriScheme = [objc_opt_class() uriScheme];
            uuid2 = [v11 uuid];
            v19 = [v16 stringWithFormat:@"%@://device/%@", uriScheme, uuid2];

            v20 = [PKShowPreview alloc];
            title = [v11 title];
            storeId = [v11 storeId];
            [v11 feedUrl];
            v24 = v23 = v8;
            v25 = [(PKShowPreview *)v20 initWithTitle:title storeId:storeId feedUrl:v24 uuid:v19];

            v8 = v23;
            [v61 addObject:v25];
            v26 = _MTLogCategorySiri();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              feedUrl = [v11 feedUrl];
              *buf = 138412546;
              v73 = v19;
              v74 = 2112;
              v75 = feedUrl;
              _os_log_impl(v23, v26, OS_LOG_TYPE_DEFAULT, "Created library preview for podcast %@ - %@", buf, 0x16u);
            }

            v7 = v59;
            podcastCollections = v60;
          }

          else
          {
            v19 = _MTLogCategorySiri();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              feedUrl2 = [v11 feedUrl];
              storeId2 = [v11 storeId];
              *buf = 138412546;
              v73 = feedUrl2;
              v74 = 2112;
              v75 = storeId2;
              _os_log_impl(v8, v19, OS_LOG_TYPE_ERROR, "Library Preview: Cannot create show preview because found nil uuid for podcast: %@ - %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v11 = _MTLogCategorySiri();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v28 = objc_opt_class();
            *buf = 138412290;
            v73 = v28;
            v29 = v28;
            _os_log_impl(v8, v11, OS_LOG_TYPE_ERROR, "Library Preview: Expected podcast to be of type POPodcastCollection but got type of %@", buf, 0xCu);
          }
        }
      }

      v6 = [podcastCollections countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v6);
  }

  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  podcastStations = [v58 podcastStations];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v33 = [podcastStations countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v64;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v64 != v35)
        {
          objc_enumerationMutation(podcastStations);
        }

        v37 = *(*(&v63 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
          uuid3 = [v38 uuid];
          if (uuid3 && (v40 = uuid3, -[NSObject uuid](v38, "uuid"), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 length], v41, v40, v42))
          {
            v43 = MEMORY[0x277CCACA8];
            uriScheme2 = [objc_opt_class() uriScheme];
            uuid4 = [v38 uuid];
            v46 = [v43 stringWithFormat:@"%@://device/%@", uriScheme2, uuid4];

            v47 = [PKStationPreview alloc];
            title2 = [v38 title];
            title3 = [(PKStationPreview *)v47 initWithTitle:title2 uuid:v46];

            [v62 addObject:title3];
            v50 = _MTLogCategorySiri();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v73 = v46;
              _os_log_impl(&dword_25E9F0000, v50, OS_LOG_TYPE_DEFAULT, "Created library preview for station %@", buf, 0xCu);
            }

LABEL_34:
          }

          else
          {
            v46 = _MTLogCategorySiri();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              title3 = [v38 title];
              *buf = 138412290;
              v73 = title3;
              _os_log_impl(&dword_25E9F0000, v46, OS_LOG_TYPE_ERROR, "Library Preview: Cannot create station preview because found nil uuid for station: %@", buf, 0xCu);
              goto LABEL_34;
            }
          }

          goto LABEL_36;
        }

        v38 = _MTLogCategorySiri();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v51 = objc_opt_class();
          *buf = 138412290;
          v73 = v51;
          v52 = v51;
          _os_log_impl(&dword_25E9F0000, v38, OS_LOG_TYPE_ERROR, "Library Preview: Expected station to be of type POPodcastStation but got type of %@", buf, 0xCu);
        }

LABEL_36:
      }

      v34 = [podcastStations countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v34);
  }

  if ([v61 count] || objc_msgSend(v62, "count"))
  {
    v53 = [[PKLibraryPreview alloc] initWithShows:v61 stations:v62];
    v54 = v60;
  }

  else
  {
    v57 = _MTLogCategorySiri();
    v54 = v60;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E9F0000, v57, OS_LOG_TYPE_DEFAULT, "Library Preview: Not creating Library Preview because there are no podcasts and no stations.", buf, 2u);
    }

    v53 = 0;
  }

  v55 = *MEMORY[0x277D85DE8];

  return v53;
}

@end