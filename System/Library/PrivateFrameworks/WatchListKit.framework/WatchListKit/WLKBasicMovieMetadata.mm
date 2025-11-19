@interface WLKBasicMovieMetadata
- (WLKBasicMovieMetadata)initWithDictionary:(id)a3;
@end

@implementation WLKBasicMovieMetadata

- (WLKBasicMovieMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WLKBasicMovieMetadata;
  v5 = [(WLKBasicContentMetadata *)&v18 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 wlk_stringForKey:@"studio"];
    v7 = [v6 copy];
    studio = v5->_studio;
    v5->_studio = v7;

    v9 = [v4 wlk_stringForKey:@"tomatometerFreshness"];
    v10 = [v4 wlk_numberForKey:@"tomatometerPercentage"];
    v11 = [[WLKRottenTomatoesRating alloc] initWithFreshness:[WLKRottenTomatoesRating freshnessPercentage:"freshnessForString:" freshnessForString:v9], v10];
    rottenTomatoesRating = v5->_rottenTomatoesRating;
    v5->_rottenTomatoesRating = v11;

    v13 = [v4 wlk_numberForKey:@"duration"];
    [v13 doubleValue];
    v5->_duration = v14;

    v15 = [v4 wlk_dateFromMillisecondsSince1970ForKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v15;
  }

  return v5;
}

@end