@interface PXStoryMockMovieHighlightCuration
- (PXStoryMockMovieHighlightCuration)initWithHighlights:(id)highlights fallback:(id)fallback summary:(id)summary live:(id)live full:(id)full;
- (PXStoryMovieHighlight)bestHighlight;
@end

@implementation PXStoryMockMovieHighlightCuration

- (PXStoryMovieHighlight)bestHighlight
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_highlights;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (v5)
        {
          [*(*(&v14 + 1) + 8 * i) qualityScore];
          v10 = v9;
          [v5 qualityScore];
          if (v10 <= v11)
          {
            continue;
          }
        }

        v12 = v8;

        v5 = v12;
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXStoryMockMovieHighlightCuration)initWithHighlights:(id)highlights fallback:(id)fallback summary:(id)summary live:(id)live full:(id)full
{
  highlightsCopy = highlights;
  fallbackCopy = fallback;
  summaryCopy = summary;
  liveCopy = live;
  fullCopy = full;
  if (!highlightsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMovieHighlight.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"highlights != nil"}];
  }

  v23.receiver = self;
  v23.super_class = PXStoryMockMovieHighlightCuration;
  v17 = [(PXStoryMockMovieHighlightCuration *)&v23 init];
  if (v17)
  {
    v18 = [highlightsCopy copy];
    highlights = v17->_highlights;
    v17->_highlights = v18;

    objc_storeStrong(&v17->_fallback, fallback);
    objc_storeStrong(&v17->_summary, summary);
    objc_storeStrong(&v17->_live, live);
    objc_storeStrong(&v17->_movie, full);
  }

  return v17;
}

@end