@interface PXStoryMediaAnalysisMovieHighlightCuration
+ (id)movieHighlightCurationsFromMediaAnalysisResults:(id)results;
- (PXStoryMediaAnalysisMovieHighlightCuration)init;
- (PXStoryMediaAnalysisMovieHighlightCuration)initWithMediaAnalysis:(id)analysis;
- (PXStoryMovieHighlight)bestHighlight;
@end

@implementation PXStoryMediaAnalysisMovieHighlightCuration

- (PXStoryMovieHighlight)bestHighlight
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  highlights = [(PXStoryMediaAnalysisMovieHighlightCuration *)self highlights];
  v3 = [highlights countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(highlights);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v8 qualityScore];
        v10 = v9;
        [v5 qualityScore];
        if (v10 > v11)
        {
          v12 = v8;

          v5 = v12;
        }
      }

      v4 = [highlights countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXStoryMediaAnalysisMovieHighlightCuration)initWithMediaAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v11.receiver = self;
  v11.super_class = PXStoryMediaAnalysisMovieHighlightCuration;
  v5 = [(PXStoryMediaAnalysisMovieHighlightCuration *)&v11 init];
  if (v5)
  {
    v6 = [analysisCopy copy];
    analysis = v5->_analysis;
    v5->_analysis = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    timeRangeCache = v5->_timeRangeCache;
    v5->_timeRangeCache = v8;
  }

  return v5;
}

- (PXStoryMediaAnalysisMovieHighlightCuration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMovieHighlight.m" lineNumber:957 description:{@"%s is not available as initializer", "-[PXStoryMediaAnalysisMovieHighlightCuration init]"}];

  abort();
}

+ (id)movieHighlightCurationsFromMediaAnalysisResults:(id)results
{
  v19 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PXStoryMediaAnalysisMovieHighlightCuration alloc];
        v12 = [(PXStoryMediaAnalysisMovieHighlightCuration *)v11 initWithMediaAnalysis:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end