@interface PXStoryConcreteTimelineParser
- (BOOL)isAtEnd;
- (PXStoryConcreteTimelineParser)init;
- (PXStoryConcreteTimelineParser)initWithConfiguration:(id)a3;
- (id)parseNextBestTimeline;
- (void)_adjustTimeline:(id)a3 andAppendTimeline:(id)a4;
@end

@implementation PXStoryConcreteTimelineParser

- (void)_adjustTimeline:(id)a3 andAppendTimeline:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 numberOfSegments] >= 1 && objc_msgSend(v7, "numberOfSegments") >= 1)
  {
    v8 = [MEMORY[0x1E69C08A0] standardConfiguration];
    [(PXStoryMutableConcreteTimeline *)self->_candidateAccumulatedTimelineWithNextBestTimeline setTimeline:v6];
    v9 = [(PXStoryBaseTimeline *)self->_candidateAccumulatedTimelineWithNextBestTimeline lastSegmentIdentifier];
    [(PXStoryMutableConcreteTimeline *)self->_candidateAccumulatedTimelineWithNextBestTimeline appendTimeline:v7];
    v10 = -[PXStoryConcreteTimeline identifierForSegmentAtIndex:](self->_candidateAccumulatedTimelineWithNextBestTimeline, "identifierForSegmentAtIndex:", [v6 numberOfSegments]);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    candidateAccumulatedTimelineWithNextBestTimeline = self->_candidateAccumulatedTimelineWithNextBestTimeline;
    if (candidateAccumulatedTimelineWithNextBestTimeline)
    {
      [(PXStoryConcreteTimeline *)candidateAccumulatedTimelineWithNextBestTimeline infoForSegmentWithIdentifier:v9];
      v12 = v26;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(PXStoryConcreteTimelineParser *)self allowedTransitionKinds];
    if ([v13 count] && !objc_msgSend(v13, "containsIndex:", v12) || !+[PXStoryTransitionProducer isSupportedTransitionWithKind:fromSegmentIdentifier:toSegmentIdentifier:inTimeline:](PXStoryTransitionProducer, "isSupportedTransitionWithKind:fromSegmentIdentifier:toSegmentIdentifier:inTimeline:", v12, v9, v10, self->_candidateAccumulatedTimelineWithNextBestTimeline))
    {
      v14 = [v6 numberOfSegments] - 1;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __67__PXStoryConcreteTimelineParser__adjustTimeline_andAppendTimeline___block_invoke;
      v18 = &unk_1E773D3A0;
      v19 = self;
      v20 = v13;
      v21 = v8;
      v22 = v12;
      [v6 modifyInfoForSegmentAtIndex:v14 usingBlock:&v15];
    }
  }

  [v6 appendTimeline:{v7, v15, v16, v17, v18, v19}];
}

double __67__PXStoryConcreteTimelineParser__adjustTimeline_andAppendTimeline___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *(a2 + 112);
  v4 = [*(a1 + 32) fallbackTransitionKind];
  if (([*(a1 + 40) containsIndex:v4] & 1) == 0)
  {
    v4 = [*(a1 + 40) px_indexAtPosition:{objc_msgSend(*(*(a1 + 32) + 32), "nextUnsignedIntegerLessThan:", objc_msgSend(*(a1 + 40), "count"))}];
  }

  if (((v4 - 1) & 0xF8) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = (v4 - 1) + 1;
  }

  [*(a1 + 48) durationForTransitionKind:v5 songPace:2];
  CMTimeMakeWithSeconds(&lhs, v6, 600);
  *(a2 + 52) = lhs;
  *(a2 + 48) = v4;
  *(a2 + 76) = *(a1 + 56);
  *&v8.value = *(a2 + 136);
  v8.epoch = *(a2 + 152);
  rhs = *(a2 + 52);
  lhs = v11;
  CMTimeAdd(&v9, &lhs, &rhs);
  lhs = v9;
  rhs = v8;
  CMTimeMinimum(&v10, &lhs, &rhs);
  result = *&v10.value;
  *(a2 + 112) = v10;
  return result;
}

- (BOOL)isAtEnd
{
  v2 = [(PXStoryConcreteTimelineParser *)self scanner];
  v3 = [v2 isAtEnd];

  return v3;
}

- (id)parseNextBestTimeline
{
  v4 = [(PXStoryConcreteTimelineParser *)self scanner];
  [(PXStoryConcreteTimelineParser *)self parseTimeLimit];
  v6 = v5;
  if (v5 <= 0.0)
  {
    [MEMORY[0x1E695DF00] distantFuture];
  }

  else
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v5];
  }
  v7 = ;
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [(PXStoryConcreteTimelineParser *)self parseCountLimit];
  v11 = v10;
  if (v10 >= 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = [(PXStoryConcreteTimelineParser *)self preferredInitialDisplayAssetResourceIndex];
  v14 = 0;
  if (v11 > 0 || v6 > 0.0)
  {
    v16 = v13;
    v36 = v13 - 1;
    if ((v13 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
    {
      if ([v4 isAtBeginning] && (objc_msgSend(v4, "isAtEnd") & 1) == 0)
      {
        v51 = 0u;
        v52 = 0u;
        *buf = 0u;
        if (v4)
        {
          [v4 scanState];
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke;
        aBlock[3] = &unk_1E773D330;
        v34 = v4;
        v35 = a2;
        v47 = v34;
        v48 = self;
        v49 = a2;
        v17 = _Block_copy(aBlock);
        v17[2](v17, v16);
        v18 = 1;
        do
        {
          v19 = v18;
          accumulatedBestTimeline = self->_accumulatedBestTimeline;
          v21 = [(PXStoryConcreteTimelineParser *)self resourcesDataSource];
          v22 = [(PXStoryConcreteTimeline *)accumulatedBestTimeline indexesOfResourcesWithKind:1 inResourcesDataSource:v21 forClipsInSegmentWithIdentifier:[(PXStoryBaseTimeline *)self->_accumulatedBestTimeline lastSegmentIdentifier]];
          v23 = [v22 lastIndex];

          if (v23 == v36)
          {
            break;
          }

          v17[2](v17, 1);
          v18 = 0;
        }

        while ((v19 & 1) != 0);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke_3;
        v40[3] = &unk_1E773D358;
        v24 = v34;
        v43 = *buf;
        v44 = v51;
        v45 = v52;
        v41 = v24;
        v42 = self;
        v14 = _Block_copy(v40);

        a2 = v35;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  v25 = 1;
  do
  {
    if ([v4 isAtEnd])
    {
      break;
    }

    v26 = self->_accumulatedBestTimeline;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke_4;
    v39[3] = &unk_1E773D308;
    v39[4] = self;
    if (([v4 scanBestSubtimelineFollowingTimeline:v26 loggingOptions:0 resultHandler:v39] & 1) == 0)
    {
      v32 = PLStoryGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v32, OS_LOG_TYPE_ERROR, "failed to scan next subtimeline", buf, 2u);
      }

      [v4 scanBestSubtimelineFollowingTimeline:self->_accumulatedBestTimeline loggingOptions:1 resultHandler:&__block_literal_global_144217];
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineParser.m" lineNumber:112 description:@"couldn't scan next subtimeline"];

      abort();
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  }

  while (v27 < v9 && v25++ < v12);
  if ([v4 isAtEnd])
  {
    nextBestTimeline = self->_accumulatedBestTimeline;
  }

  else
  {
    [(PXStoryMutableConcreteTimeline *)self->_nextBestTimeline setTimeline:self->_accumulatedBestTimeline];
    v51 = 0u;
    v52 = 0u;
    *buf = 0u;
    if (v4)
    {
      [v4 scanState];
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke_2_19;
    v38[3] = &unk_1E773D308;
    v38[4] = self;
    [v4 scanFastestSubtimelineWithRemainingClipsResultHandler:v38];
    v37[0] = *buf;
    v37[1] = v51;
    v37[2] = v52;
    [v4 setScanState:v37];
    nextBestTimeline = self->_nextBestTimeline;
  }

  v30 = [(PXStoryMutableConcreteTimeline *)nextBestTimeline copy];
  if (v14)
  {
    v14[2](v14);
  }

  return v30;
}

void __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke_2;
  v5[3] = &unk_1E773D308;
  v5[4] = a1[5];
  if (([v3 scanFastestSubtimelineWithDisplayAssetResourceCount:a2 resultHandler:v5] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a1[6] object:a1[5] file:@"PXStoryConcreteTimelineParser.m" lineNumber:86 description:@"failed to scan up to preferred initial position"];
  }
}

uint64_t __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v2;
  v4[2] = *(a1 + 80);
  [*(a1 + 32) setScanState:v4];
  [*(a1 + 40) setPreferredInitialDisplayAssetResourceIndex:0x7FFFFFFFFFFFFFFFLL];
  return [*(*(a1 + 40) + 8) removeAllClipsAndSegments];
}

- (PXStoryConcreteTimelineParser)initWithConfiguration:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PXStoryConcreteTimelineParser;
  v5 = [(PXStoryConcreteTimelineParser *)&v18 init];
  if (v5)
  {
    v6 = [[PXStoryConcreteSubtimelineScanner alloc] initWithConfiguration:v4];
    scanner = v5->_scanner;
    v5->_scanner = v6;

    v8 = [v4 resourcesDataSource];
    resourcesDataSource = v5->_resourcesDataSource;
    v5->_resourcesDataSource = v8;

    v5->_preferredInitialDisplayAssetResourceIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10 = [v4 spec];
    v11 = [v10 allowedTransitionKinds];
    allowedTransitionKinds = v5->_allowedTransitionKinds;
    v5->_allowedTransitionKinds = v11;

    v13 = [v4 spec];
    v5->_fallbackTransitionKind = [v13 fallbackTransitionKind];

    v14 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:0];
    randomNumberGenerator = v5->_randomNumberGenerator;
    v5->_randomNumberGenerator = v14;

    v16 = [v4 spec];
    [v16 viewportSize];

    PXSizeIsEmpty();
  }

  return 0;
}

PXStoryMutableConcreteTimeline *__55__PXStoryConcreteTimelineParser_initWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [PXStoryMutableConcreteTimeline alloc];
  v3 = [*(a1 + 32) resourcesDataSource];
  v4 = [(PXStoryConcreteTimeline *)v2 initWithSize:v3 resourcesDataSource:*(a1 + 40), *(a1 + 48)];

  return v4;
}

- (PXStoryConcreteTimelineParser)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineParser.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryConcreteTimelineParser init]"}];

  abort();
}

@end