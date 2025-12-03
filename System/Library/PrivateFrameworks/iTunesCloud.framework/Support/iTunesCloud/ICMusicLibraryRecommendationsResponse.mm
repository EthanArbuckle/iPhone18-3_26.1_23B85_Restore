@interface ICMusicLibraryRecommendationsResponse
- (ICMusicLibraryRecommendationsResponse)initWithNewArtistContentResponseModel:(id)model andMLModel:(id)lModel;
@end

@implementation ICMusicLibraryRecommendationsResponse

- (ICMusicLibraryRecommendationsResponse)initWithNewArtistContentResponseModel:(id)model andMLModel:(id)lModel
{
  modelCopy = model;
  lModelCopy = lModel;
  v12.receiver = self;
  v12.super_class = ICMusicLibraryRecommendationsResponse;
  v9 = [(ICMusicLibraryRecommendationsResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_responseModel, model);
    objc_storeStrong(&v10->_mlModel, lModel);
  }

  return v10;
}

@end