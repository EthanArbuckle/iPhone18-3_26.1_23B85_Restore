@interface WLKBasicMovieMetadata
- (WLKBasicMovieMetadata)initWithDictionary:(id)dictionary;
@end

@implementation WLKBasicMovieMetadata

- (WLKBasicMovieMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = WLKBasicMovieMetadata;
  v5 = [(WLKBasicContentMetadata *)&v18 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_stringForKey:@"studio"];
    v7 = [v6 copy];
    studio = v5->_studio;
    v5->_studio = v7;

    v9 = [dictionaryCopy wlk_stringForKey:@"tomatometerFreshness"];
    v10 = [dictionaryCopy wlk_numberForKey:@"tomatometerPercentage"];
    v11 = [[WLKRottenTomatoesRating alloc] initWithFreshness:[WLKRottenTomatoesRating freshnessPercentage:"freshnessForString:" freshnessForString:v9], v10];
    rottenTomatoesRating = v5->_rottenTomatoesRating;
    v5->_rottenTomatoesRating = v11;

    v13 = [dictionaryCopy wlk_numberForKey:@"duration"];
    [v13 doubleValue];
    v5->_duration = v14;

    v15 = [dictionaryCopy wlk_dateFromMillisecondsSince1970ForKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v15;
  }

  return v5;
}

@end