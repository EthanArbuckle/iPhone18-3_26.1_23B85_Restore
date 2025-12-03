@interface WLKBasicContentMetadata
+ (Class)_classForContentType:(unint64_t)type;
+ (unint64_t)contentTypeForString:(id)string;
- (WLKBasicContentMetadata)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation WLKBasicContentMetadata

+ (unint64_t)contentTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqual:@"Movie"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqual:@"Show"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqual:@"Season"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqual:@"Episode"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqual:@"SportingEvent"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)_classForContentType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_279E5E680[type - 1];
    v5 = objc_opt_class();
  }

  return v5;
}

- (WLKBasicContentMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy wlk_stringForKey:@"type"];
    v7 = [objc_opt_class() contentTypeForString:v6];
    v8 = [objc_opt_class() _classForContentType:v7];
    if (v8 && (v9 = v8, (objc_opt_isKindOfClass() & 1) == 0))
    {
      v53 = [[v9 alloc] initWithDictionary:v5];
    }

    else
    {
      v56.receiver = self;
      v56.super_class = WLKBasicContentMetadata;
      v10 = [(WLKBasicContentMetadata *)&v56 init];
      v11 = v10;
      if (v10)
      {
        v10->_contentType = v7;
        v12 = [v6 copy];
        contentTypeString = v11->_contentTypeString;
        v11->_contentTypeString = v12;

        v14 = [v5 wlk_stringForKey:@"id"];
        v15 = [v14 copy];
        canonicalID = v11->_canonicalID;
        v11->_canonicalID = v15;

        v17 = [v5 wlk_stringForKey:@"title"];
        v18 = [v17 copy];
        title = v11->_title;
        v11->_title = v18;

        v20 = [v5 wlk_stringForKey:@"shortTitle"];
        v21 = [v20 copy];
        shortTitle = v11->_shortTitle;
        v11->_shortTitle = v21;

        v23 = [v5 wlk_stringForKey:@"description"];
        v24 = [v23 copy];
        descriptiveText = v11->_descriptiveText;
        v11->_descriptiveText = v24;

        v26 = [v5 wlk_artworkVariantListingForKey:@"images"];
        images = v11->_images;
        v11->_images = v26;

        v28 = [v5 wlk_numberForKey:@"commonSenseRecommendedAge"];
        commonSenseRecommendedAge = v11->_commonSenseRecommendedAge;
        v11->_commonSenseRecommendedAge = v28;

        v30 = [v5 wlk_arrayForKey:@"categories"];
        categories = v11->_categories;
        v11->_categories = v30;

        v11->_isEvod = [v5 wlk_BOOLForKey:@"isEVOD" defaultValue:0];
        v11->_appleOriginal = [v5 wlk_BOOLForKey:@"isAppleOriginal" defaultValue:0];
        v32 = [v5 wlk_arrayForKey:@"genres"];
        v33 = [WLKGenre genresWithDictionaries:v32];
        v34 = [v33 copy];
        genres = v11->_genres;
        v11->_genres = v34;

        v36 = [v5 wlk_stringForKey:@"shareUrl"];
        if (v36 || ([v5 wlk_stringForKey:@"url"], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v37 = v36;
          v38 = [MEMORY[0x277CBEBC0] URLWithString:v36];
          tvAppDeeplinkURL = v11->_tvAppDeeplinkURL;
          v11->_tvAppDeeplinkURL = v38;
        }

        v40 = [WLKVideo alloc];
        v41 = [v5 wlk_dictionaryForKey:@"backgroundVideo"];
        v42 = [(WLKVideo *)v40 initWithDictionary:v41];
        backgroundVideo = v11->_backgroundVideo;
        v11->_backgroundVideo = v42;

        v44 = [v5 wlk_arrayForKey:@"trailers"];
        v45 = [WLKVideo videosWithDictionaries:v44];
        v46 = [v45 copy];
        trailers = v11->_trailers;
        v11->_trailers = v46;

        v48 = [v5 wlk_dictionaryForKey:@"rolesSummary"];
        rolesSummary = v11->_rolesSummary;
        v11->_rolesSummary = v48;

        v50 = [v5 wlk_dictionaryForKey:@"rating"];
        if (v50)
        {
          v51 = [[WLKContentRating alloc] initWithDictionary:v50];
          contentRating = v11->_contentRating;
          v11->_contentRating = v51;
        }
      }

      v53 = v11;
      self = v53;
    }

    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = WLKBasicContentMetadata;
  v4 = [(WLKBasicContentMetadata *)&v9 description];
  v5 = v4;
  title = self->_title;
  if (!title)
  {
    title = self->_shortTitle;
  }

  title = [v3 stringWithFormat:@"%@ contentType:%@ canonical:%@ title:%@", v4, self->_contentTypeString, self->_canonicalID, title];

  return title;
}

@end