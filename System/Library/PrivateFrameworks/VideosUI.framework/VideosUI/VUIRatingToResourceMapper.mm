@interface VUIRatingToResourceMapper
- (VUIRatingToResourceMapper)init;
- (id)_cleanRatingName:(id)a3;
- (id)resourceForRating:(id)a3 ratingSystem:(id)a4;
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

- (id)resourceForRating:(id)a3 ratingSystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(VUIRatingToResourceMapper *)self _cleanRatingName:v6];
    v9 = [(VUIRatingToResourceMapper *)self mappingDictionary];
    v10 = [v9 objectForKeyedSubscript:v8];
    v11 = [v10 objectForKeyedSubscript:@"resource"];

    if (![v11 length])
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [v7 uppercaseString];
      v14 = [v12 stringWithFormat:@"%@_", v13];

      v15 = [v6 stringByReplacingOccurrencesOfString:v14 withString:&stru_1F5DB25C0];

      v16 = [v15 stringByReplacingOccurrencesOfString:@"/_/g" withString:@"-"];

      v17 = [v16 stringByReplacingOccurrencesOfString:@"/Plus/gi" withString:@"+"];

      v6 = v17;
      v11 = v6;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_cleanRatingName:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AE70];
    v4 = a3;
    v5 = [v3 regularExpressionWithPattern:@"([^0-9A-Z])+" options:1 error:0];
    v6 = [v5 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), &stru_1F5DB25C0}];

    v7 = [v6 lowercaseString];

    v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"brmovies_|brtv_|brmovie" options:1 error:0];

    v9 = [v8 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), @"bars"}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end