@interface PXStoryCompanionTimelineRequest
+ (BOOL)_transformConfiguration:(id)a3 intoStoryConfiguration:(id *)a4 extendedTraitCollection:(id *)a5 error:(id *)a6;
+ (id)_createCompanionTimelineFromModel:(id)a3;
+ (id)requestTimelineWithConfiguration:(id)a3 resultHandler:(id)a4;
+ (void)_waitForFinalTimelineWithProgress:(id)a3 model:(id)a4 resultHandler:(id)a5;
- (PXStoryCompanionTimelineRequest)init;
@end

@implementation PXStoryCompanionTimelineRequest

+ (id)_createCompanionTimelineFromModel:(id)a3
{
  v3 = a3;
  v4 = [PXStoryConcreteCompanionTimeline alloc];
  v5 = [v3 timeline];
  v6 = [v3 colorGradeKind];
  v7 = [v3 colorGradingRepository];

  v8 = [(PXStoryConcreteCompanionTimeline *)v4 initWithTimeline:v5 colorGradeKind:v6 colorGradingRepository:v7];

  return v8;
}

+ (void)_waitForFinalTimelineWithProgress:(id)a3 model:(id)a4 resultHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 performChanges:&__block_literal_global_82751];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__PXStoryCompanionTimelineRequest__waitForFinalTimelineWithProgress_model_resultHandler___block_invoke_2;
  v14[3] = &unk_1E7735F28;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
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

+ (BOOL)_transformConfiguration:(id)a3 intoStoryConfiguration:(id *)a4 extendedTraitCollection:(id *)a5 error:(id *)a6
{
  v9 = a3;
  [v9 viewportSize];
  v11 = v10;
  v13 = v12;
  v14 = fmin(v10, v12);
  v15 = v14 > 0.0;
  if (v14 <= 0.0)
  {
    PXSizeDescription();
  }

  v16 = [PXStoryConfiguration alloc];
  v17 = [v9 assetCollection];
  v18 = [(PXStoryConfiguration *)v16 initWithAssetCollection:v17];
  v19 = [v9 queue];
  v20 = [(PXStoryConfiguration *)v18 copyWithStoryQueue:v19];

  [v20 setSongsProducerKind:{objc_msgSend(v9, "songsProducerKind")}];
  v21 = [[PXStoryExtendedTraitCollection alloc] initWithLayoutReferenceSize:v11, v13];
  if (a4)
  {
    v22 = v20;
    *a4 = v20;
  }

  if (a5)
  {
    v23 = v21;
    *a5 = v21;
  }

  if (a6)
  {
    v24 = 0;
    *a6 = 0;
  }

  return v15;
}

+ (id)requestTimelineWithConfiguration:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PXStoryCompanionTimelineRequest.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"PXStoryCompanionTimelineRequest.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"resultHandler != nil"}];

LABEL_3:
  v10 = [v7 queue];
  dispatch_assert_queue_V2(v10);

  v29 = 0;
  v27 = 0;
  v28 = 0;
  v11 = [a1 _transformConfiguration:v7 intoStoryConfiguration:&v29 extendedTraitCollection:&v28 error:&v27];
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
        v26 = a1;
        v24 = v16;
        v25 = v9;
        v17 = v16;
        [a1 _waitForFinalTimelineWithProgress:v15 model:v17 resultHandler:v23];

        goto LABEL_8;
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:a1 file:@"PXStoryCompanionTimelineRequest.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"storyConfiguration != nil"}];

      if (v13)
      {
        goto LABEL_6;
      }
    }

    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PXStoryCompanionTimelineRequest.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"extendedTraitCollection != nil"}];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryCompanionTimelineRequest.m" lineNumber:104 description:{@"%s is not available as initializer", "-[PXStoryCompanionTimelineRequest init]"}];

  abort();
}

@end