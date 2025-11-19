@interface VUIDocumentPreFetchedDataPlaybackUpNext
- (id)jsonData;
@end

@implementation VUIDocumentPreFetchedDataPlaybackUpNext

- (id)jsonData
{
  v3 = objc_opt_new();
  v4 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self host];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self host];
    [v3 setObject:v6 forKeyedSubscript:@"host"];
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

  v11 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self showID];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self showID];
    [v3 setObject:v13 forKeyedSubscript:@"showId"];
  }

  v14 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self productID];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self productID];
    [v3 setObject:v16 forKeyedSubscript:@"id"];
  }

  v17 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self adamID];

  if (v17)
  {
    v18 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self adamID];
    [v3 setObject:v18 forKeyedSubscript:@"adamId"];
  }

  v19 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self seasonNumber];

  if (v19)
  {
    v20 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self seasonNumber];
    [v3 setObject:v20 forKeyedSubscript:@"seasonNumber"];
  }

  v21 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self excludedCanonicals];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(VUIDocumentPreFetchedDataPlaybackUpNext *)self excludedCanonicals];
    [v3 setObject:v23 forKeyedSubscript:@"excludedCanonicals"];
  }

  v24 = [v3 copy];

  return v24;
}

@end