@interface SHLocalDataFetcher
- (void)clusterDataAtURL:(id)a3 forLocation:(id)a4 date:(id)a5 completionHandler:(id)a6;
@end

@implementation SHLocalDataFetcher

- (void)clusterDataAtURL:(id)a3 forLocation:(id)a4 date:(id)a5 completionHandler:(id)a6
{
  v16 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CBEA90];
  v10 = a6;
  v11 = [v9 dataWithContentsOfURL:v16];
  if (v11)
  {
    v12 = [SHDataFetcherFileInfo alloc];
    v13 = [v16 lastPathComponent];
    v14 = [(SHDataFetcherFileInfo *)v12 initWithData:v11 suggestedFileName:v13];

    [(SHDataFetcherFileInfo *)v14 setCreationDate:v8];
    v15 = 0;
  }

  else
  {
    v15 = [SHInsightsError errorWithCode:200 underlyingError:0];
    v14 = 0;
  }

  v10[2](v10, v14, v15);
}

@end