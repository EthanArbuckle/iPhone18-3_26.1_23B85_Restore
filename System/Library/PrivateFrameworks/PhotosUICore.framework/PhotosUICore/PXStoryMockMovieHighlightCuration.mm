@interface PXStoryMockMovieHighlightCuration
- (PXStoryMockMovieHighlightCuration)initWithHighlights:(id)a3 fallback:(id)a4 summary:(id)a5 live:(id)a6 full:(id)a7;
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

- (PXStoryMockMovieHighlightCuration)initWithHighlights:(id)a3 fallback:(id)a4 summary:(id)a5 live:(id)a6 full:(id)a7
{
  v13 = a3;
  v22 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXStoryMovieHighlight.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"highlights != nil"}];
  }

  v23.receiver = self;
  v23.super_class = PXStoryMockMovieHighlightCuration;
  v17 = [(PXStoryMockMovieHighlightCuration *)&v23 init];
  if (v17)
  {
    v18 = [v13 copy];
    highlights = v17->_highlights;
    v17->_highlights = v18;

    objc_storeStrong(&v17->_fallback, a4);
    objc_storeStrong(&v17->_summary, a5);
    objc_storeStrong(&v17->_live, a6);
    objc_storeStrong(&v17->_movie, a7);
  }

  return v17;
}

@end