@interface ICMusicLibraryRecommendationResult
- (ICMusicLibraryRecommendationResult)initWithAdamID:(id)d date:(id)date score:(id)score;
@end

@implementation ICMusicLibraryRecommendationResult

- (ICMusicLibraryRecommendationResult)initWithAdamID:(id)d date:(id)date score:(id)score
{
  dCopy = d;
  dateCopy = date;
  scoreCopy = score;
  v15.receiver = self;
  v15.super_class = ICMusicLibraryRecommendationResult;
  v12 = [(ICMusicLibraryRecommendationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_adamID, d);
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(&v13->_score, score);
  }

  return v13;
}

@end