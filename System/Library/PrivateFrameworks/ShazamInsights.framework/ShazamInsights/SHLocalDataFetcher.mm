@interface SHLocalDataFetcher
- (void)clusterDataAtURL:(id)l forLocation:(id)location date:(id)date completionHandler:(id)handler;
@end

@implementation SHLocalDataFetcher

- (void)clusterDataAtURL:(id)l forLocation:(id)location date:(id)date completionHandler:(id)handler
{
  lCopy = l;
  dateCopy = date;
  v9 = MEMORY[0x277CBEA90];
  handlerCopy = handler;
  v11 = [v9 dataWithContentsOfURL:lCopy];
  if (v11)
  {
    v12 = [SHDataFetcherFileInfo alloc];
    lastPathComponent = [lCopy lastPathComponent];
    v14 = [(SHDataFetcherFileInfo *)v12 initWithData:v11 suggestedFileName:lastPathComponent];

    [(SHDataFetcherFileInfo *)v14 setCreationDate:dateCopy];
    v15 = 0;
  }

  else
  {
    v15 = [SHInsightsError errorWithCode:200 underlyingError:0];
    v14 = 0;
  }

  handlerCopy[2](handlerCopy, v14, v15);
}

@end