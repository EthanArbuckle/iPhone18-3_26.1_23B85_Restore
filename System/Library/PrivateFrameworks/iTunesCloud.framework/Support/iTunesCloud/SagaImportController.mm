@interface SagaImportController
- (BOOL)processDAAPFileAtURL:(id)l;
- (NSDictionary)cloudIDToLyricsTokenMap;
- (SagaImportController)init;
@end

@implementation SagaImportController

- (BOOL)processDAAPFileAtURL:(id)l
{
  v4 = [NSInputStream inputStreamWithURL:l];
  v5 = [[DKDAAPParser alloc] initWithStream:v4];
  v6 = objc_alloc_init(SagaImportControllerParserDelegate);
  [(SagaImportControllerParserDelegate *)v6 setMutableCloudIDToLyricsTokenMap:self->_mutableCloudIDToLyricsTokenMap];
  [v5 setDelegate:v6];
  [v5 parse];
  self->_shouldRestart = [(SagaImportControllerParserDelegate *)v6 shouldRestart];
  self->_totalItemCount = [(SagaImportControllerParserDelegate *)v6 totalItemCount];
  currentItemCount = [(SagaImportControllerParserDelegate *)v6 currentItemCount];
  v8 = self->_processedItemCount + currentItemCount;
  self->_currentItemCount = currentItemCount;
  self->_processedItemCount = v8;
  currentPaginationToken = [(SagaImportControllerParserDelegate *)v6 currentPaginationToken];
  currentPaginationToken = self->_currentPaginationToken;
  self->_currentPaginationToken = currentPaginationToken;

  self->_includesBookmarkable = [(SagaImportControllerParserDelegate *)v6 includesBookmarkable];
  return 1;
}

- (NSDictionary)cloudIDToLyricsTokenMap
{
  v2 = [(NSMutableDictionary *)self->_mutableCloudIDToLyricsTokenMap copy];

  return v2;
}

- (SagaImportController)init
{
  v6.receiver = self;
  v6.super_class = SagaImportController;
  v2 = [(SagaImportController *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    mutableCloudIDToLyricsTokenMap = v2->_mutableCloudIDToLyricsTokenMap;
    v2->_mutableCloudIDToLyricsTokenMap = v3;
  }

  return v2;
}

@end