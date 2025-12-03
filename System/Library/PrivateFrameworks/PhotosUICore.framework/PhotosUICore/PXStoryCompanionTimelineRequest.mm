@interface PXStoryCompanionTimelineRequest
+ (BOOL)_transformConfiguration:(id)configuration intoStoryConfiguration:(id *)storyConfiguration extendedTraitCollection:(id *)collection error:(id *)error;
+ (id)_createCompanionTimelineFromModel:(id)model;
+ (id)requestTimelineWithConfiguration:(id)configuration resultHandler:(id)handler;
+ (void)_waitForFinalTimelineWithProgress:(id)progress model:(id)model resultHandler:(id)handler;
- (PXStoryCompanionTimelineRequest)init;
@end

@implementation PXStoryCompanionTimelineRequest

+ (id)_createCompanionTimelineFromModel:(id)model
{
  modelCopy = model;
  v4 = [PXStoryConcreteCompanionTimeline alloc];
  timeline = [modelCopy timeline];
  colorGradeKind = [modelCopy colorGradeKind];
  colorGradingRepository = [modelCopy colorGradingRepository];

  v8 = [(PXStoryConcreteCompanionTimeline *)v4 initWithTimeline:timeline colorGradeKind:colorGradeKind colorGradingRepository:colorGradingRepository];

  return v8;
}

+ (void)_waitForFinalTimelineWithProgress:(id)progress model:(id)model resultHandler:(id)handler
{
  progressCopy = progress;
  modelCopy = model;
  handlerCopy = handler;
  [modelCopy performChanges:&__block_literal_global_82751];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PXStoryCompanionTimelineRequest__waitForFinalTimelineWithProgress_model_resultHandler___block_invoke_2;
  v14[3] = &unk_1E7735F28;
  v15 = progressCopy;
  v16 = modelCopy;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = modelCopy;
  v12 = progressCopy;
  v13 = [v11 pxStory_enumerateStatesByWatchingChanges:0x20000000 usingBlock:v14];
}

uint64_t __89__PXStoryCompanionTimelineRequest__waitForFinalTimelineWithProgress_model_resultHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  result = [*(a1 + 40) timelineAttributes];
  if ((result & 2) != 0)
  {
    *a4 = 1;
    v7 = *(*(a1 + 48) + 16);

    return v7();
  }

  return result;
}

+ (BOOL)_transformConfiguration:(id)configuration intoStoryConfiguration:(id *)storyConfiguration extendedTraitCollection:(id *)collection error:(id *)error
{
  configurationCopy = configuration;
  [configurationCopy viewportSize];
  v11 = v10;
  v13 = v12;
  v14 = fmin(v10, v12);
  v15 = v14 > 0.0;
  if (v14 <= 0.0)
  {
    PXSizeDescription();
  }

  v16 = [PXStoryConfiguration alloc];
  assetCollection = [configurationCopy assetCollection];
  v18 = [(PXStoryConfiguration *)v16 initWithAssetCollection:assetCollection];
  queue = [configurationCopy queue];
  v20 = [(PXStoryConfiguration *)v18 copyWithStoryQueue:queue];

  [v20 setSongsProducerKind:{objc_msgSend(configurationCopy, "songsProducerKind")}];
  v21 = [[PXStoryExtendedTraitCollection alloc] initWithLayoutReferenceSize:v11, v13];
  if (storyConfiguration)
  {
    v22 = v20;
    *storyConfiguration = v20;
  }

  if (collection)
  {
    v23 = v21;
    *collection = v21;
  }

  if (error)
  {
    v24 = 0;
    *error = 0;
  }

  return v15;
}

+ (id)requestTimelineWithConfiguration:(id)configuration resultHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (configurationCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryCompanionTimelineRequest.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryCompanionTimelineRequest.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"resultHandler != nil"}];

LABEL_3:
  queue = [configurationCopy queue];
  dispatch_assert_queue_V2(queue);

  v29 = 0;
  v27 = 0;
  v28 = 0;
  v11 = [self _transformConfiguration:configurationCopy intoStoryConfiguration:&v29 extendedTraitCollection:&v28 error:&v27];
  v12 = v29;
  v13 = v28;
  v14 = v27;
  if (v11)
  {
    if (v12)
    {
      if (v13)
      {
LABEL_6:
        v15 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
        v16 = [[PXStoryModel alloc] initWithConfiguration:v12 extendedTraitCollection:v13];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __82__PXStoryCompanionTimelineRequest_requestTimelineWithConfiguration_resultHandler___block_invoke;
        v23[3] = &unk_1E7735F00;
        selfCopy = self;
        v24 = v16;
        v25 = v9;
        v17 = v16;
        [self _waitForFinalTimelineWithProgress:v15 model:v17 resultHandler:v23];

        goto LABEL_8;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXStoryCompanionTimelineRequest.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"storyConfiguration != nil"}];

      if (v13)
      {
        goto LABEL_6;
      }
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXStoryCompanionTimelineRequest.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"extendedTraitCollection != nil"}];

    goto LABEL_6;
  }

  (v9)[2](v9, 0, v14);
  v15 = 0;
LABEL_8:

  return v15;
}

void __82__PXStoryCompanionTimelineRequest_requestTimelineWithConfiguration_resultHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 48) _createCompanionTimelineFromModel:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

- (PXStoryCompanionTimelineRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryCompanionTimelineRequest.m" lineNumber:104 description:{@"%s is not available as initializer", "-[PXStoryCompanionTimelineRequest init]"}];

  abort();
}

@end