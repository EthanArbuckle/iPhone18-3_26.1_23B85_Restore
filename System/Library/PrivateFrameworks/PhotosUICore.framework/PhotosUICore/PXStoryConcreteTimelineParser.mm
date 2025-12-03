@interface PXStoryConcreteTimelineParser
- (BOOL)isAtEnd;
- (PXStoryConcreteTimelineParser)init;
- (PXStoryConcreteTimelineParser)initWithConfiguration:(id)configuration;
- (id)parseNextBestTimeline;
- (void)_adjustTimeline:(id)timeline andAppendTimeline:(id)appendTimeline;
@end

@implementation PXStoryConcreteTimelineParser

- (void)_adjustTimeline:(id)timeline andAppendTimeline:(id)appendTimeline
{
  timelineCopy = timeline;
  appendTimelineCopy = appendTimeline;
  if ([timelineCopy numberOfSegments] >= 1 && objc_msgSend(appendTimelineCopy, "numberOfSegments") >= 1)
  {
    standardConfiguration = [MEMORY[0x1E69C08A0] standardConfiguration];
    [(PXStoryMutableConcreteTimeline *)self->_candidateAccumulatedTimelineWithNextBestTimeline setTimeline:timelineCopy];
    lastSegmentIdentifier = [(PXStoryBaseTimeline *)self->_candidateAccumulatedTimelineWithNextBestTimeline lastSegmentIdentifier];
    [(PXStoryMutableConcreteTimeline *)self->_candidateAccumulatedTimelineWithNextBestTimeline appendTimeline:appendTimelineCopy];
    v10 = -[PXStoryConcreteTimeline identifierForSegmentAtIndex:](self->_candidateAccumulatedTimelineWithNextBestTimeline, "identifierForSegmentAtIndex:", [timelineCopy numberOfSegments]);
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
      [(PXStoryConcreteTimeline *)candidateAccumulatedTimelineWithNextBestTimeline infoForSegmentWithIdentifier:lastSegmentIdentifier];
      v12 = v26;
    }

    else
    {
      v12 = 0;
    }

    allowedTransitionKinds = [(PXStoryConcreteTimelineParser *)self allowedTransitionKinds];
    if ([allowedTransitionKinds count] && !objc_msgSend(allowedTransitionKinds, "containsIndex:", v12) || !+[PXStoryTransitionProducer isSupportedTransitionWithKind:fromSegmentIdentifier:toSegmentIdentifier:inTimeline:](PXStoryTransitionProducer, "isSupportedTransitionWithKind:fromSegmentIdentifier:toSegmentIdentifier:inTimeline:", v12, lastSegmentIdentifier, v10, self->_candidateAccumulatedTimelineWithNextBestTimeline))
    {
      v14 = [timelineCopy numberOfSegments] - 1;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __67__PXStoryConcreteTimelineParser__adjustTimeline_andAppendTimeline___block_invoke;
      v18 = &unk_1E773D3A0;
      selfCopy = self;
      v20 = allowedTransitionKinds;
      v21 = standardConfiguration;
      v22 = v12;
      [timelineCopy modifyInfoForSegmentAtIndex:v14 usingBlock:&v15];
    }
  }

  [timelineCopy appendTimeline:{appendTimelineCopy, v15, v16, v17, v18, selfCopy}];
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
  scanner = [(PXStoryConcreteTimelineParser *)self scanner];
  isAtEnd = [scanner isAtEnd];

  return isAtEnd;
}

- (id)parseNextBestTimeline
{
  scanner = [(PXStoryConcreteTimelineParser *)self scanner];
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

  parseCountLimit = [(PXStoryConcreteTimelineParser *)self parseCountLimit];
  v11 = parseCountLimit;
  if (parseCountLimit >= 1)
  {
    v12 = parseCountLimit;
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  preferredInitialDisplayAssetResourceIndex = [(PXStoryConcreteTimelineParser *)self preferredInitialDisplayAssetResourceIndex];
  v14 = 0;
  if (v11 > 0 || v6 > 0.0)
  {
    v16 = preferredInitialDisplayAssetResourceIndex;
    v36 = preferredInitialDisplayAssetResourceIndex - 1;
    if ((preferredInitialDisplayAssetResourceIndex - 1) <= 0x7FFFFFFFFFFFFFFDLL)
    {
      if ([scanner isAtBeginning] && (objc_msgSend(scanner, "isAtEnd") & 1) == 0)
      {
        v51 = 0u;
        v52 = 0u;
        *buf = 0u;
        if (scanner)
        {
          [scanner scanState];
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke;
        aBlock[3] = &unk_1E773D330;
        v34 = scanner;
        v35 = a2;
        v47 = v34;
        selfCopy = self;
        v49 = a2;
        v17 = _Block_copy(aBlock);
        v17[2](v17, v16);
        v18 = 1;
        do
        {
          v19 = v18;
          accumulatedBestTimeline = self->_accumulatedBestTimeline;
          resourcesDataSource = [(PXStoryConcreteTimelineParser *)self resourcesDataSource];
          v22 = [(PXStoryConcreteTimeline *)accumulatedBestTimeline indexesOfResourcesWithKind:1 inResourcesDataSource:resourcesDataSource forClipsInSegmentWithIdentifier:[(PXStoryBaseTimeline *)self->_accumulatedBestTimeline lastSegmentIdentifier]];
          lastIndex = [v22 lastIndex];

          if (lastIndex == v36)
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
        selfCopy2 = self;
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
    if ([scanner isAtEnd])
    {
      break;
    }

    v26 = self->_accumulatedBestTimeline;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke_4;
    v39[3] = &unk_1E773D308;
    v39[4] = self;
    if (([scanner scanBestSubtimelineFollowingTimeline:v26 loggingOptions:0 resultHandler:v39] & 1) == 0)
    {
      v32 = PLStoryGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v32, OS_LOG_TYPE_ERROR, "failed to scan next subtimeline", buf, 2u);
      }

      [scanner scanBestSubtimelineFollowingTimeline:self->_accumulatedBestTimeline loggingOptions:1 resultHandler:&__block_literal_global_144217];
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineParser.m" lineNumber:112 description:@"couldn't scan next subtimeline"];

      abort();
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  }

  while (v27 < v9 && v25++ < v12);
  if ([scanner isAtEnd])
  {
    nextBestTimeline = self->_accumulatedBestTimeline;
  }

  else
  {
    [(PXStoryMutableConcreteTimeline *)self->_nextBestTimeline setTimeline:self->_accumulatedBestTimeline];
    v51 = 0u;
    v52 = 0u;
    *buf = 0u;
    if (scanner)
    {
      [scanner scanState];
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __54__PXStoryConcreteTimelineParser_parseNextBestTimeline__block_invoke_2_19;
    v38[3] = &unk_1E773D308;
    v38[4] = self;
    [scanner scanFastestSubtimelineWithRemainingClipsResultHandler:v38];
    v37[0] = *buf;
    v37[1] = v51;
    v37[2] = v52;
    [scanner setScanState:v37];
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

- (PXStoryConcreteTimelineParser)initWithConfiguration:(id)configuration
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = PXStoryConcreteTimelineParser;
  v5 = [(PXStoryConcreteTimelineParser *)&v18 init];
  if (v5)
  {
    v6 = [[PXStoryConcreteSubtimelineScanner alloc] initWithConfiguration:configurationCopy];
    scanner = v5->_scanner;
    v5->_scanner = v6;

    resourcesDataSource = [configurationCopy resourcesDataSource];
    resourcesDataSource = v5->_resourcesDataSource;
    v5->_resourcesDataSource = resourcesDataSource;

    v5->_preferredInitialDisplayAssetResourceIndex = 0x7FFFFFFFFFFFFFFFLL;
    spec = [configurationCopy spec];
    allowedTransitionKinds = [spec allowedTransitionKinds];
    allowedTransitionKinds = v5->_allowedTransitionKinds;
    v5->_allowedTransitionKinds = allowedTransitionKinds;

    spec2 = [configurationCopy spec];
    v5->_fallbackTransitionKind = [spec2 fallbackTransitionKind];

    v14 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:0];
    randomNumberGenerator = v5->_randomNumberGenerator;
    v5->_randomNumberGenerator = v14;

    spec3 = [configurationCopy spec];
    [spec3 viewportSize];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteTimelineParser.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryConcreteTimelineParser init]"}];

  abort();
}

@end