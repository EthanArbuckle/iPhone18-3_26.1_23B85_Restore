@interface VUIDocumentPreFetchedDataPlaybackUpNext
- (id)jsonData;
@end

@implementation VUIDocumentPreFetchedDataPlaybackUpNext

- (id)jsonData
{
  v3 = objc_opt_new();
  host = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self host];
  v5 = [host length];

  if (v5)
  {
    host2 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self host];
    [v3 setObject:host2 forKeyedSubscript:@"host"];
  }

  if ([(VUIDocumentPreFetchedDataPlaybackUpNext *)self updateEvent])
  {
    [v3 setObject:@"upNext" forKeyedSubscript:@"updateComponentType"];
  }

  if ([(VUIDocumentPreFetchedDataPlaybackUpNext *)self canAutoPlay])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlaybackUpNext canAutoPlay](self, "canAutoPlay")}];
    [v3 setObject:v7 forKeyedSubscript:@"canAutoPlay"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlaybackUpNext isPostPlay](self, "isPostPlay")}];
  [v3 setObject:v8 forKeyedSubscript:@"isPostPlay"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlaybackUpNext isLiveStream](self, "isLiveStream")}];
  [v3 setObject:v9 forKeyedSubscript:@"isLiveStream"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIDocumentPreFetchedDataPlaybackUpNext refetchUpNextData](self, "refetchUpNextData")}];
  [v3 setObject:v10 forKeyedSubscript:@"refetchUpNextData"];

  showID = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self showID];
  v12 = [showID length];

  if (v12)
  {
    showID2 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self showID];
    [v3 setObject:showID2 forKeyedSubscript:@"showId"];
  }

  productID = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self productID];
  v15 = [productID length];

  if (v15)
  {
    productID2 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self productID];
    [v3 setObject:productID2 forKeyedSubscript:@"id"];
  }

  adamID = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self adamID];

  if (adamID)
  {
    adamID2 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self adamID];
    [v3 setObject:adamID2 forKeyedSubscript:@"adamId"];
  }

  seasonNumber = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self seasonNumber];

  if (seasonNumber)
  {
    seasonNumber2 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self seasonNumber];
    [v3 setObject:seasonNumber2 forKeyedSubscript:@"seasonNumber"];
  }

  excludedCanonicals = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self excludedCanonicals];
  v22 = [excludedCanonicals count];

  if (v22)
  {
    excludedCanonicals2 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self excludedCanonicals];
    [v3 setObject:excludedCanonicals2 forKeyedSubscript:@"excludedCanonicals"];
  }

  v24 = [v3 copy];

  return v24;
}

@end