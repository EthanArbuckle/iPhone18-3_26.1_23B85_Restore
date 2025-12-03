@interface VUIRatingToResourceMapper
- (VUIRatingToResourceMapper)init;
- (id)_cleanRatingName:(id)name;
- (id)resourceForRating:(id)rating ratingSystem:(id)system;
@end

@implementation VUIRatingToResourceMapper

- (VUIRatingToResourceMapper)init
{
  v6.receiver = self;
  v6.super_class = VUIRatingToResourceMapper;
  v2 = [(VUIRatingToResourceMapper *)&v6 init];
  v3 = v2;
  if (v2)
  {
    mappingDictionary = v2->_mappingDictionary;
    v2->_mappingDictionary = &unk_1F5E5F358;
  }

  return v3;
}

- (id)resourceForRating:(id)rating ratingSystem:(id)system
{
  ratingCopy = rating;
  systemCopy = system;
  if (ratingCopy)
  {
    v8 = [(VUIRatingToResourceMapper *)self _cleanRatingName:ratingCopy];
    mappingDictionary = [(VUIRatingToResourceMapper *)self mappingDictionary];
    v10 = [mappingDictionary objectForKeyedSubscript:v8];
    v11 = [v10 objectForKeyedSubscript:@"resource"];

    if (![v11 length])
    {
      v12 = MEMORY[0x1E696AEC0];
      uppercaseString = [systemCopy uppercaseString];
      v14 = [v12 stringWithFormat:@"%@_", uppercaseString];

      v15 = [ratingCopy stringByReplacingOccurrencesOfString:v14 withString:&stru_1F5DB25C0];

      v16 = [v15 stringByReplacingOccurrencesOfString:@"/_/g" withString:@"-"];

      v17 = [v16 stringByReplacingOccurrencesOfString:@"/Plus/gi" withString:@"+"];

      ratingCopy = v17;
      v11 = ratingCopy;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_cleanRatingName:(id)name
{
  if (name)
  {
    v3 = MEMORY[0x1E696AE70];
    nameCopy = name;
    v5 = [v3 regularExpressionWithPattern:@"([^0-9A-Z])+" options:1 error:0];
    v6 = [v5 stringByReplacingMatchesInString:nameCopy options:0 range:0 withTemplate:{objc_msgSend(nameCopy, "length"), &stru_1F5DB25C0}];

    lowercaseString = [v6 lowercaseString];

    v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"brmovies_|brtv_|brmovie" options:1 error:0];

    v9 = [v8 stringByReplacingMatchesInString:lowercaseString options:0 range:0 withTemplate:{objc_msgSend(lowercaseString, "length"), @"bars"}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end