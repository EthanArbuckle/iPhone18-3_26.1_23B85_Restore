@interface PKLibraryPreview
+ (id)_readFromPodcastsContainerWithDataSource:(id)a3;
+ (id)readFromPodcastsContainer;
+ (id)readPlistWithPath:(id)a3;
- (PKLibraryPreview)initWithShows:(id)a3 stations:(id)a4;
@end

@implementation PKLibraryPreview

- (PKLibraryPreview)initWithShows:(id)a3 stations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKLibraryPreview;
  v8 = [(PKLibraryPreview *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PKLibraryPreview *)v8 setShows:v6];
    [(PKLibraryPreview *)v9 setStations:v7];
  }

  return v9;
}

+ (id)readPlistWithPath:(id)a3
{
  v4 = a3;
  v5 = [[PODataSource alloc] initWithPlistPath:v4];

  v6 = [a1 _readFromPodcastsContainerWithDataSource:v5];

  return v6;
}

+ (id)readFromPodcastsContainer
{
  v3 = objc_alloc_init(PODataSource);
  v4 = [a1 _readFromPodcastsContainerWithDataSource:v3];

  return v4;
}

+ (id)_readFromPodcastsContainerWithDataSource:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = v3;
  v4 = [v3 podcastCollections];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v67 objects:v76 count:16];
  v60 = v4;
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v67 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 uuid];
          if (v12 && (v13 = v12, -[NSObject uuid](v11, "uuid"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v13, v15))
          {
            v16 = MEMORY[0x277CCACA8];
            v17 = [objc_opt_class() uriScheme];
            v18 = [v11 uuid];
            v19 = [v16 stringWithFormat:@"%@://device/%@", v17, v18];

            v20 = [PKShowPreview alloc];
            v21 = [v11 title];
            v22 = [v11 storeId];
            [v11 feedUrl];
            v24 = v23 = v8;
            v25 = [(PKShowPreview *)v20 initWithTitle:v21 storeId:v22 feedUrl:v24 uuid:v19];

            v8 = v23;
            [v61 addObject:v25];
            v26 = _MTLogCategorySiri();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v11 feedUrl];
              *buf = 138412546;
              v73 = v19;
              v74 = 2112;
              v75 = v27;
              _os_log_impl(v23, v26, OS_LOG_TYPE_DEFAULT, "Created library preview for podcast %@ - %@", buf, 0x16u);
            }

            v7 = v59;
            v4 = v60;
          }

          else
          {
            v19 = _MTLogCategorySiri();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v30 = [v11 feedUrl];
              v31 = [v11 storeId];
              *buf = 138412546;
              v73 = v30;
              v74 = 2112;
              v75 = v31;
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

      v6 = [v4 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v6);
  }

  v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = [v58 podcastStations];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v33 = [v32 countByEnumeratingWithState:&v63 objects:v71 count:16];
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
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v63 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
          v39 = [v38 uuid];
          if (v39 && (v40 = v39, -[NSObject uuid](v38, "uuid"), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 length], v41, v40, v42))
          {
            v43 = MEMORY[0x277CCACA8];
            v44 = [objc_opt_class() uriScheme];
            v45 = [v38 uuid];
            v46 = [v43 stringWithFormat:@"%@://device/%@", v44, v45];

            v47 = [PKStationPreview alloc];
            v48 = [v38 title];
            v49 = [(PKStationPreview *)v47 initWithTitle:v48 uuid:v46];

            [v62 addObject:v49];
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
              v49 = [v38 title];
              *buf = 138412290;
              v73 = v49;
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

      v34 = [v32 countByEnumeratingWithState:&v63 objects:v71 count:16];
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