@interface PXStoryViewChromeTitleInfo
- (BOOL)isEqual:(id)a3;
- (PXStoryViewChromeTitleInfo)initWithCollectionTitle:(id)a3 collectionSubtitle:(id)a4 locationName:(id)a5 dateName:(id)a6 songName:(id)a7 artistName:(id)a8 title:(id)a9 subtitle:(id)a10 subtitleSymbolName:(id)a11;
- (unint64_t)hash;
@end

@implementation PXStoryViewChromeTitleInfo

- (unint64_t)hash
{
  v3 = [(PXStoryViewChromeTitleInfo *)self collectionTitle];
  v4 = [v3 hash];
  v5 = [(PXStoryViewChromeTitleInfo *)self locationName];
  v6 = v4 ^ (2 * [v5 hash]);
  v7 = [(PXStoryViewChromeTitleInfo *)self subtitle];
  v8 = v6 ^ (4 * [v7 hash]);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXStoryViewChromeTitleInfo *)self collectionTitle];
    v7 = [v5 collectionTitle];
    if (v6 == v7 || [v6 isEqualToString:v7])
    {
      v8 = [(PXStoryViewChromeTitleInfo *)self collectionSubtitle];
      v9 = [v5 collectionSubtitle];
      if (v8 == v9 || [v8 isEqualToString:v9])
      {
        v10 = [(PXStoryViewChromeTitleInfo *)self locationName];
        v11 = [v5 locationName];
        if (v10 == v11 || [v10 isEqualToString:v11])
        {
          v38 = v10;
          v12 = [(PXStoryViewChromeTitleInfo *)self dateName];
          v13 = [v5 dateName];
          if (v12 == v13 || [v12 isEqualToString:v13])
          {
            v36 = v11;
            v37 = v13;
            v14 = [(PXStoryViewChromeTitleInfo *)self songName];
            v15 = [v5 songName];
            if (v14 == v15 || [v14 isEqualToString:v15])
            {
              v34 = v8;
              v35 = v15;
              v16 = [(PXStoryViewChromeTitleInfo *)self artistName];
              v17 = [v5 artistName];
              v33 = v16;
              if (v16 == v17 || [v16 isEqualToString:v17])
              {
                v32 = v17;
                v18 = [(PXStoryViewChromeTitleInfo *)self title];
                v19 = [v5 title];
                v31 = v18;
                if (v18 == v19 || [v18 isEqualToString:v19])
                {
                  v30 = v19;
                  v20 = [(PXStoryViewChromeTitleInfo *)self subtitle];
                  v21 = [v5 subtitle];
                  if (v20 == v21 || [v20 isEqualToString:v21])
                  {
                    v22 = [(PXStoryViewChromeTitleInfo *)self subtitleSymbolName];
                    v23 = [v5 subtitleSymbolName];
                    if (v22 == v23)
                    {
                      v26 = v22;
                      v27 = 1;
                    }

                    else
                    {
                      v24 = v23;
                      v25 = [v22 isEqualToString:v23];
                      v23 = v24;
                      v26 = v22;
                      v27 = v25;
                    }

                    v21 = v29;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  v19 = v30;
                }

                else
                {
                  v27 = 0;
                }

                v17 = v32;
              }

              else
              {
                v27 = 0;
              }

              v8 = v34;
              v15 = v35;
            }

            else
            {
              v27 = 0;
            }

            v11 = v36;
            v13 = v37;
          }

          else
          {
            v27 = 0;
          }

          v10 = v38;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (PXStoryViewChromeTitleInfo)initWithCollectionTitle:(id)a3 collectionSubtitle:(id)a4 locationName:(id)a5 dateName:(id)a6 songName:(id)a7 artistName:(id)a8 title:(id)a9 subtitle:(id)a10 subtitleSymbolName:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v46.receiver = self;
  v46.super_class = PXStoryViewChromeTitleInfo;
  v26 = [(PXStoryViewChromeTitleInfo *)&v46 init];
  if (v26)
  {
    v27 = [v17 copy];
    collectionTitle = v26->_collectionTitle;
    v26->_collectionTitle = v27;

    v29 = [v18 copy];
    collectionSubtitle = v26->_collectionSubtitle;
    v26->_collectionSubtitle = v29;

    v31 = [v19 copy];
    locationName = v26->_locationName;
    v26->_locationName = v31;

    v33 = [v20 copy];
    dateName = v26->_dateName;
    v26->_dateName = v33;

    v35 = [v21 copy];
    songName = v26->_songName;
    v26->_songName = v35;

    v37 = [v22 copy];
    artistName = v26->_artistName;
    v26->_artistName = v37;

    v39 = [v23 copy];
    title = v26->_title;
    v26->_title = v39;

    v41 = [v24 copy];
    subtitle = v26->_subtitle;
    v26->_subtitle = v41;

    v43 = [v25 copy];
    subtitleSymbolName = v26->_subtitleSymbolName;
    v26->_subtitleSymbolName = v43;
  }

  return v26;
}

@end