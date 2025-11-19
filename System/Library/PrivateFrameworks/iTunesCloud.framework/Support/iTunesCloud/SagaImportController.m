@interface SagaImportController
- (BOOL)processDAAPFileAtURL:(id)a3;
- (NSDictionary)cloudIDToLyricsTokenMap;
- (SagaImportController)init;
@end

@implementation SagaImportController

- (BOOL)processDAAPFileAtURL:(id)a3
{
  v4 = [NSInputStream inputStreamWithURL:a3];
  v5 = [[DKDAAPParser alloc] initWithStream:v4];
  v6 = objc_alloc_init(SagaImportControllerParserDelegate);
  [(SagaImportControllerParserDelegate *)v6 setMutableCloudIDToLyricsTokenMap:self->_mutableCloudIDToLyricsTokenMap];
  [v5 setDelegate:v6];
  [v5 parse];
  self->_shouldRestart = [(SagaImportControllerParserDelegate *)v6 shouldRestart];
  self->_totalItemCount = [(SagaImportControllerParserDelegate *)v6 totalItemCount];
  v7 = [(SagaImportControllerParserDelegate *)v6 currentItemCount];
  v8 = self->_processedItemCount + v7;
  self->_currentItemCount = v7;
  self->_processedItemCount = v8;
  v9 = [(SagaImportControllerParserDelegate *)v6 currentPaginationToken];
  currentPaginationToken = self->_currentPaginationToken;
  self->_currentPaginationToken = v9;

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