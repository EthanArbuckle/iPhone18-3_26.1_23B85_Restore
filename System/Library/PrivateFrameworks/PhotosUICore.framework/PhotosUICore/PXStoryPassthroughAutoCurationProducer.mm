@interface PXStoryPassthroughAutoCurationProducer
- (PXStoryPassthroughAutoCurationProducer)init;
- (id)requestCuratedAssetsWithOptions:(unint64_t)options targetOverallDurationInfo:(id *)info resultHandler:(id)handler;
- (id)requestCurationLengthsWithOptions:(unint64_t)options allAssets:(id)assets curatedAssets:(id)curatedAssets resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughAutoCurationProducer

- (id)requestCuratedAssetsWithOptions:(unint64_t)options targetOverallDurationInfo:(id *)info resultHandler:(id)handler
{
  handlerCopy = handler;
  assets = [(PXStoryPassthroughAutoCurationProducer *)self assets];

  if (assets)
  {
    v8 = [PXStoryProducerResult alloc];
    assets2 = [(PXStoryPassthroughAutoCurationProducer *)self assets];
    v10 = [(PXStoryProducerResult *)v8 initWithObject:assets2];
    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "requestCuratedAssetsWithOptions is not supported.", &v20, 2u);
    }

    assets2 = PXStoryErrorCreateWithCodeDebugFormat(16, @"Target Duration Curation Not Supported", v12, v13, v14, v15, v16, v17, v20);
    v10 = [[PXStoryProducerResult alloc] initWithObject:0];
    v18 = [(PXStoryProducerResult *)v10 error:assets2];
    handlerCopy[2](handlerCopy, v18);
  }

  return 0;
}

- (id)requestCurationLengthsWithOptions:(unint64_t)options allAssets:(id)assets curatedAssets:(id)curatedAssets resultHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [[PXStoryCurationLengthInfo alloc] initWithAvailableLengths:[(PXStoryPassthroughAutoCurationProducer *)self availableLengths] defaultLength:0];
  v9 = [[PXStoryProducerResult alloc] initWithObject:v8];
  handlerCopy[2](handlerCopy, v9);

  return 0;
}

- (PXStoryPassthroughAutoCurationProducer)init
{
  v3.receiver = self;
  v3.super_class = PXStoryPassthroughAutoCurationProducer;
  result = [(PXStoryPassthroughAutoCurationProducer *)&v3 init];
  if (result)
  {
    result->_availableLengths = 0;
  }

  return result;
}

@end