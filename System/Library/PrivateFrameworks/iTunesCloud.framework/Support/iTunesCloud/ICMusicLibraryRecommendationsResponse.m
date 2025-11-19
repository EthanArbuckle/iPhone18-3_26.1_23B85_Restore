@interface ICMusicLibraryRecommendationsResponse
- (ICMusicLibraryRecommendationsResponse)initWithNewArtistContentResponseModel:(id)a3 andMLModel:(id)a4;
@end

@implementation ICMusicLibraryRecommendationsResponse

- (ICMusicLibraryRecommendationsResponse)initWithNewArtistContentResponseModel:(id)a3 andMLModel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICMusicLibraryRecommendationsResponse;
  v9 = [(ICMusicLibraryRecommendationsResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_responseModel, a3);
    objc_storeStrong(&v10->_mlModel, a4);
  }

  return v10;
}

@end