@interface PXStoryViewChromeTitleInfo
- (BOOL)isEqual:(id)equal;
- (PXStoryViewChromeTitleInfo)initWithCollectionTitle:(id)title collectionSubtitle:(id)subtitle locationName:(id)name dateName:(id)dateName songName:(id)songName artistName:(id)artistName title:(id)a9 subtitle:(id)self0 subtitleSymbolName:(id)self1;
- (unint64_t)hash;
@end

@implementation PXStoryViewChromeTitleInfo

- (unint64_t)hash
{
  collectionTitle = [(PXStoryViewChromeTitleInfo *)self collectionTitle];
  v4 = [collectionTitle hash];
  locationName = [(PXStoryViewChromeTitleInfo *)self locationName];
  v6 = v4 ^ (2 * [locationName hash]);
  subtitle = [(PXStoryViewChromeTitleInfo *)self subtitle];
  v8 = v6 ^ (4 * [subtitle hash]);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    collectionTitle = [(PXStoryViewChromeTitleInfo *)self collectionTitle];
    collectionTitle2 = [v5 collectionTitle];
    if (collectionTitle == collectionTitle2 || [collectionTitle isEqualToString:collectionTitle2])
    {
      collectionSubtitle = [(PXStoryViewChromeTitleInfo *)self collectionSubtitle];
      collectionSubtitle2 = [v5 collectionSubtitle];
      if (collectionSubtitle == collectionSubtitle2 || [collectionSubtitle isEqualToString:collectionSubtitle2])
      {
        locationName = [(PXStoryViewChromeTitleInfo *)self locationName];
        locationName2 = [v5 locationName];
        if (locationName == locationName2 || [locationName isEqualToString:locationName2])
        {
          v38 = locationName;
          dateName = [(PXStoryViewChromeTitleInfo *)self dateName];
          dateName2 = [v5 dateName];
          if (dateName == dateName2 || [dateName isEqualToString:dateName2])
          {
            v36 = locationName2;
            v37 = dateName2;
            songName = [(PXStoryViewChromeTitleInfo *)self songName];
            songName2 = [v5 songName];
            if (songName == songName2 || [songName isEqualToString:songName2])
            {
              v34 = collectionSubtitle;
              v35 = songName2;
              artistName = [(PXStoryViewChromeTitleInfo *)self artistName];
              artistName2 = [v5 artistName];
              v33 = artistName;
              if (artistName == artistName2 || [artistName isEqualToString:artistName2])
              {
                v32 = artistName2;
                title = [(PXStoryViewChromeTitleInfo *)self title];
                title2 = [v5 title];
                v31 = title;
                if (title == title2 || [title isEqualToString:title2])
                {
                  v30 = title2;
                  subtitle = [(PXStoryViewChromeTitleInfo *)self subtitle];
                  subtitle2 = [v5 subtitle];
                  if (subtitle == subtitle2 || [subtitle isEqualToString:subtitle2])
                  {
                    subtitleSymbolName = [(PXStoryViewChromeTitleInfo *)self subtitleSymbolName];
                    subtitleSymbolName2 = [v5 subtitleSymbolName];
                    if (subtitleSymbolName == subtitleSymbolName2)
                    {
                      v26 = subtitleSymbolName;
                      v27 = 1;
                    }

                    else
                    {
                      v24 = subtitleSymbolName2;
                      v25 = [subtitleSymbolName isEqualToString:subtitleSymbolName2];
                      subtitleSymbolName2 = v24;
                      v26 = subtitleSymbolName;
                      v27 = v25;
                    }

                    subtitle2 = v29;
                  }

                  else
                  {
                    v27 = 0;
                  }

                  title2 = v30;
                }

                else
                {
                  v27 = 0;
                }

                artistName2 = v32;
              }

              else
              {
                v27 = 0;
              }

              collectionSubtitle = v34;
              songName2 = v35;
            }

            else
            {
              v27 = 0;
            }

            locationName2 = v36;
            dateName2 = v37;
          }

          else
          {
            v27 = 0;
          }

          locationName = v38;
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

- (PXStoryViewChromeTitleInfo)initWithCollectionTitle:(id)title collectionSubtitle:(id)subtitle locationName:(id)name dateName:(id)dateName songName:(id)songName artistName:(id)artistName title:(id)a9 subtitle:(id)self0 subtitleSymbolName:(id)self1
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  dateNameCopy = dateName;
  songNameCopy = songName;
  artistNameCopy = artistName;
  v23 = a9;
  v24 = a10;
  symbolNameCopy = symbolName;
  v46.receiver = self;
  v46.super_class = PXStoryViewChromeTitleInfo;
  v26 = [(PXStoryViewChromeTitleInfo *)&v46 init];
  if (v26)
  {
    v27 = [titleCopy copy];
    collectionTitle = v26->_collectionTitle;
    v26->_collectionTitle = v27;

    v29 = [subtitleCopy copy];
    collectionSubtitle = v26->_collectionSubtitle;
    v26->_collectionSubtitle = v29;

    v31 = [nameCopy copy];
    locationName = v26->_locationName;
    v26->_locationName = v31;

    v33 = [dateNameCopy copy];
    dateName = v26->_dateName;
    v26->_dateName = v33;

    v35 = [songNameCopy copy];
    songName = v26->_songName;
    v26->_songName = v35;

    v37 = [artistNameCopy copy];
    artistName = v26->_artistName;
    v26->_artistName = v37;

    v39 = [v23 copy];
    title = v26->_title;
    v26->_title = v39;

    v41 = [v24 copy];
    subtitle = v26->_subtitle;
    v26->_subtitle = v41;

    v43 = [symbolNameCopy copy];
    subtitleSymbolName = v26->_subtitleSymbolName;
    v26->_subtitleSymbolName = v43;
  }

  return v26;
}

@end