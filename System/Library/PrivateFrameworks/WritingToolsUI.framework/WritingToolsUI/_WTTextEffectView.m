@interface _WTTextEffectView
- (BOOL)_shouldApplyRemainderEffectForEffect:(id)a3;
- (BOOL)hasActiveEffect:(id)a3;
- (BOOL)hasActiveEffects;
- (CGRect)cachedBounds;
- (CGRect)cachedFrame;
- (CGRect)cachedVisibleRect;
- (_WTTextEffectView)initWithAsyncSource:(id)a3;
- (_WTTextEffectView)initWithSource:(id)a3;
- (_WTTextPreviewAsyncSource)asyncSource;
- (_WTTextPreviewSource)source;
- (id)addEffect:(id)a3;
- (id)removeEffect:(id)a3 animated:(BOOL)a4;
- (void)_cacheHeightOfPreviews:(id)a3 forEffect:(id)a4;
- (void)_commonLayoutSubviews;
- (void)_handleAddEffect:(id)a3 forAsyncSource:(id)a4;
- (void)_handleAddEffect:(id)a3 forSource:(id)a4;
- (void)dealloc;
- (void)removeAllEffectsAnimated:(BOOL)a3;
- (void)updateSnapshotForEffect:(id)a3;
- (void)updateSnapshotForEffectID:(id)a3;
- (void)updateSnapshots;
@end

@implementation _WTTextEffectView

- (_WTTextEffectView)initWithSource:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _WTTextEffectView;
  v5 = [(_WTView *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(_WTTextEffectView *)v5 setTextEffects:v6];

    [(_WTTextEffectView *)v5 setSourceIsAsync:0];
    [(_WTTextEffectView *)v5 setSource:v4];
    v7 = v5;
  }

  return v5;
}

- (_WTTextEffectView)initWithAsyncSource:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _WTTextEffectView;
  v5 = [(_WTView *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(_WTTextEffectView *)v5 setTextEffects:v6];

    [(_WTTextEffectView *)v5 setSourceIsAsync:1];
    [(_WTTextEffectView *)v5 setAsyncSource:v4];
    v7 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(_WTTextEffectView *)self textEffects];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) invalidate:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = _WTTextEffectView;
  [(_WTTextEffectView *)&v9 dealloc];
}

- (id)addEffect:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(_WTTextEffectView *)self textEffects];
  [v6 setObject:v4 forKey:v5];

  [v4 setIdentifier:v5];
  if ([(_WTTextEffectView *)self sourceIsAsync])
  {
    v7 = [(_WTTextEffectView *)self asyncSource];
    [(_WTTextEffectView *)self _handleAddEffect:v4 forAsyncSource:v7];
  }

  else
  {
    v7 = [(_WTTextEffectView *)self source];
    [(_WTTextEffectView *)self _handleAddEffect:v4 forSource:v7];
  }

  return v5;
}

- (void)_handleAddEffect:(id)a3 forSource:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 chunk];
  v9 = [v7 textPreviewsForChunk:v8];

  [v6 updateEffectWith:v9];
  if ([v6 hidesOriginal])
  {
    v10 = [v6 chunk];
    [v7 updateIsTextVisible:0 forChunk:v10];
  }

  [(_WTTextEffectView *)self _cacheHeightOfPreviews:v9 forEffect:v6];
  if ([(_WTTextEffectView *)self _shouldApplyRemainderEffectForEffect:v6])
  {
    v11 = [[_WTTextRangeChunk alloc] initWithRange:0, 0];
    v12 = [(_WTReplaceTextEffect *)[_WTReplaceRemainderTextEffect alloc] initWithChunk:v11 effectView:self];
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [(_WTTextEffectView *)self textEffects];
    [v14 setObject:v12 forKey:v13];

    [(_WTTextEffect *)v12 setIdentifier:v13];
    [(_WTTextEffectView *)self replaceSourceDuration];
    v16 = v15;
    [(_WTTextEffectView *)self replaceDestinationDuration];
    if (v16 >= v17)
    {
      v17 = v16;
    }

    [(_WTReplaceRemainderTextEffect *)v12 setDurationOverride:v17];
    v18 = [(_WTTextEffectView *)self replaceSourceRect];
    [v18 platformCGRectValue];
    v20 = v19;

    v21 = [(_WTTextEffectView *)self replaceDestinationRect];
    [v21 platformCGRectValue];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    [(_WTReplaceRemainderTextEffect *)v12 setOffset:v29 - v20];
    [(_WTTextEffectView *)self bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v46.origin.x = v23;
    v46.origin.y = v25;
    v46.size.width = v27;
    v46.size.height = v29;
    MaxY = CGRectGetMaxY(v46);
    v39 = v37 - MaxY;
    [(_WTView *)self platformGetVisibleRect];
    if (v37 - MaxY >= v40)
    {
      v39 = v40;
    }

    [(_WTTextEffectView *)self setReplaceSourceRect:0];
    [(_WTTextEffectView *)self setReplaceSourceDuration:0.0];
    [(_WTTextEffectView *)self setReplaceDestinationRect:0];
    [(_WTTextEffectView *)self setReplaceDestinationDuration:0.0];
    if (v39 > 0.0)
    {
      v41 = [v7 textPreviewForRect:{v31, MaxY + v33, v35, v39}];
      v42 = v41;
      if (v41)
      {
        v45[0] = v41;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
        [(_WTReplaceRemainderTextEffect *)v12 updateEffectWith:v43];

        if ([(_WTTextEffect *)v12 hidesOriginal])
        {
          v44 = [(_WTTextEffect *)v12 chunk];
          [v7 updateIsTextVisible:0 forChunk:v44];
        }
      }
    }
  }
}

- (void)_handleAddEffect:(id)a3 forAsyncSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x4010000000;
  v20[3] = &unk_1D4561D0F;
  v21 = 0u;
  v22 = 0u;
  [(_WTTextEffectView *)self bounds];
  *&v21 = v8;
  *(&v21 + 1) = v9;
  *&v22 = v10;
  *(&v22 + 1) = v11;
  v12 = [v6 chunk];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke;
  v15[3] = &unk_1E8481110;
  v13 = v6;
  v16 = v13;
  v17 = self;
  v19 = v20;
  v14 = v7;
  v18 = v14;
  [v14 textPreviewsForChunk:v12 completion:v15];

  _Block_object_dispose(v20, 8);
}

- (BOOL)_shouldApplyRemainderEffectForEffect:(id)a3
{
  v4 = a3;
  v5 = [(_WTTextEffectView *)self replaceSourceRect];
  if (v5)
  {
    v6 = [(_WTTextEffectView *)self replaceDestinationRect];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 isDestination];
  }

  else
  {
    v8 = 0;
  }

  return v7 & v8;
}

- (void)_cacheHeightOfPreviews:(id)a3 forEffect:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  [v8 presentationFrame];
  x = v9;
  y = v11;
  width = v13;
  height = v15;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v28 + 1) + 8 * i) presentationFrame];
        v36.origin.x = v22;
        v36.origin.y = v23;
        v36.size.width = v24;
        v36.size.height = v25;
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        v35 = CGRectUnion(v34, v36);
        x = v35.origin.x;
        y = v35.origin.y;
        width = v35.size.width;
        height = v35.size.height;
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v7 isDestination];
    v27 = [MEMORY[0x1E696B098] valueWithPlatformCGRect:{x, y, width, height}];
    if (v26)
    {
      [(_WTTextEffectView *)self setReplaceDestinationRect:v27];

      [v7 sweepDuration];
      [(_WTTextEffectView *)self setReplaceDestinationDuration:?];
    }

    else
    {
      [(_WTTextEffectView *)self setReplaceSourceRect:v27];

      [v7 sweepDuration];
      [(_WTTextEffectView *)self setReplaceSourceDuration:?];
    }
  }
}

- (void)removeAllEffectsAnimated:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(_WTTextEffectView *)self textEffects];
  v6 = [v5 allKeys];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(_WTTextEffectView *)self removeEffect:*(*(&v13 + 1) + 8 * v11++) animated:v3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)removeEffect:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_WTTextEffectView *)self textEffects];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 chunk];
  v10 = [v9 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 isDestination];
  }

  else
  {
    v11 = 1;
  }

  v12 = [v8 hidesOriginal] & v11;
  if ([(_WTTextEffectView *)self sourceIsAsync])
  {
    if (v12)
    {
      v13 = [(_WTTextEffectView *)self asyncSource];
      v14 = [v8 chunk];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __43___WTTextEffectView_removeEffect_animated___block_invoke;
      v19[3] = &unk_1E8481138;
      v23 = v4;
      v20 = v8;
      v21 = self;
      v22 = v6;
      [v13 updateIsTextVisible:1 forChunk:v14 completion:v19];

      goto LABEL_10;
    }
  }

  else if (v12)
  {
    v15 = [(_WTTextEffectView *)self source];
    v16 = [v8 chunk];
    [v15 updateIsTextVisible:1 forChunk:v16];
  }

  [v8 invalidate:v4];
  v17 = [(_WTTextEffectView *)self textEffects];
  [v17 removeObjectForKey:v6];

LABEL_10:

  return v10;
}

- (BOOL)hasActiveEffects
{
  v2 = [(_WTTextEffectView *)self textEffects];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)hasActiveEffect:(id)a3
{
  v4 = a3;
  v5 = [(_WTTextEffectView *)self textEffects];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (void)_commonLayoutSubviews
{
  v52 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = _WTTextEffectView;
  [(_WTView *)&v50 _commonLayoutSubviews];
  [(_WTTextEffectView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_WTTextEffectView *)self cachedBounds];
  v56.origin.x = v11;
  v56.origin.y = v12;
  v56.size.width = v13;
  v56.size.height = v14;
  v53.origin.x = v4;
  v53.origin.y = v6;
  v53.size.width = v8;
  v53.size.height = v10;
  if (!CGRectEqualToRect(v53, v56) || ([(_WTTextEffectView *)self frame], v16 = v15, v18 = v17, v20 = v19, v22 = v21, [(_WTTextEffectView *)self cachedFrame], v57.origin.x = v23, v57.origin.y = v24, v57.size.width = v25, v57.size.height = v26, v54.origin.x = v16, v54.origin.y = v18, v54.size.width = v20, v54.size.height = v22, !CGRectEqualToRect(v54, v57)) || ([(_WTView *)self platformGetVisibleRect], v28 = v27, v30 = v29, v32 = v31, v34 = v33, [(_WTTextEffectView *)self cachedVisibleRect], v58.origin.x = v35, v58.origin.y = v36, v58.size.width = v37, v58.size.height = v38, v55.origin.x = v28, v55.origin.y = v30, v55.size.width = v32, v55.size.height = v34, !CGRectEqualToRect(v55, v58)))
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v39 = [(_WTTextEffectView *)self textEffects];
    v40 = [v39 allValues];

    v41 = [v40 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v47;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v47 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v46 + 1) + 8 * i);
          if ([v45 updatesOnGeometryChange])
          {
            [(_WTTextEffectView *)self updateSnapshotForEffect:v45];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v42);
    }
  }

  [(_WTTextEffectView *)self bounds];
  [(_WTTextEffectView *)self setCachedBounds:?];
  [(_WTTextEffectView *)self frame];
  [(_WTTextEffectView *)self setCachedFrame:?];
  [(_WTView *)self platformGetVisibleRect];
  [(_WTTextEffectView *)self setCachedVisibleRect:?];
}

- (void)updateSnapshots
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_WTTextEffectView *)self textEffects];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_WTTextEffectView *)self updateSnapshotForEffectID:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)updateSnapshotForEffectID:(id)a3
{
  v4 = a3;
  v6 = [(_WTTextEffectView *)self textEffects];
  v5 = [v6 objectForKeyedSubscript:v4];

  [(_WTTextEffectView *)self updateSnapshotForEffect:v5];
}

- (void)updateSnapshotForEffect:(id)a3
{
  v4 = a3;
  if ([(_WTTextEffectView *)self sourceIsAsync])
  {
    v5 = [(_WTTextEffectView *)self asyncSource];
    v6 = [v4 chunk];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45___WTTextEffectView_updateSnapshotForEffect___block_invoke;
    v12[3] = &unk_1E8481160;
    v13 = v4;
    v14 = self;
    [v5 textPreviewsForChunk:v6 completion:v12];
  }

  else
  {
    v7 = [(_WTTextEffectView *)self source];
    v8 = [v4 chunk];
    v9 = [v7 textPreviewsForChunk:v8];
    [v4 updateEffectWith:v9];

    if ([v4 hidesOriginal])
    {
      v10 = [(_WTTextEffectView *)self source];
      v11 = [v4 chunk];
      [v10 updateIsTextVisible:0 forChunk:v11];
    }
  }
}

- (_WTTextPreviewSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (_WTTextPreviewAsyncSource)asyncSource
{
  WeakRetained = objc_loadWeakRetained(&self->_asyncSource);

  return WeakRetained;
}

- (CGRect)cachedBounds
{
  objc_copyStruct(v6, &self->_cachedBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)cachedFrame
{
  objc_copyStruct(v6, &self->_cachedFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)cachedVisibleRect
{
  objc_copyStruct(v6, &self->_cachedVisibleRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end