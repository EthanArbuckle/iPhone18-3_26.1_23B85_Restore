@interface _WTTextEffectView
- (BOOL)_shouldApplyRemainderEffectForEffect:(id)effect;
- (BOOL)hasActiveEffect:(id)effect;
- (BOOL)hasActiveEffects;
- (CGRect)cachedBounds;
- (CGRect)cachedFrame;
- (CGRect)cachedVisibleRect;
- (_WTTextEffectView)initWithAsyncSource:(id)source;
- (_WTTextEffectView)initWithSource:(id)source;
- (_WTTextPreviewAsyncSource)asyncSource;
- (_WTTextPreviewSource)source;
- (id)addEffect:(id)effect;
- (id)removeEffect:(id)effect animated:(BOOL)animated;
- (void)_cacheHeightOfPreviews:(id)previews forEffect:(id)effect;
- (void)_commonLayoutSubviews;
- (void)_handleAddEffect:(id)effect forAsyncSource:(id)source;
- (void)_handleAddEffect:(id)effect forSource:(id)source;
- (void)dealloc;
- (void)removeAllEffectsAnimated:(BOOL)animated;
- (void)updateSnapshotForEffect:(id)effect;
- (void)updateSnapshotForEffectID:(id)d;
- (void)updateSnapshots;
@end

@implementation _WTTextEffectView

- (_WTTextEffectView)initWithSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = _WTTextEffectView;
  v5 = [(_WTView *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(_WTTextEffectView *)v5 setTextEffects:v6];

    [(_WTTextEffectView *)v5 setSourceIsAsync:0];
    [(_WTTextEffectView *)v5 setSource:sourceCopy];
    v7 = v5;
  }

  return v5;
}

- (_WTTextEffectView)initWithAsyncSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = _WTTextEffectView;
  v5 = [(_WTView *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(_WTTextEffectView *)v5 setTextEffects:v6];

    [(_WTTextEffectView *)v5 setSourceIsAsync:1];
    [(_WTTextEffectView *)v5 setAsyncSource:sourceCopy];
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
  textEffects = [(_WTTextEffectView *)self textEffects];
  allValues = [textEffects allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v8++) invalidate:0];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = _WTTextEffectView;
  [(_WTTextEffectView *)&v9 dealloc];
}

- (id)addEffect:(id)effect
{
  effectCopy = effect;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  textEffects = [(_WTTextEffectView *)self textEffects];
  [textEffects setObject:effectCopy forKey:uUID];

  [effectCopy setIdentifier:uUID];
  if ([(_WTTextEffectView *)self sourceIsAsync])
  {
    asyncSource = [(_WTTextEffectView *)self asyncSource];
    [(_WTTextEffectView *)self _handleAddEffect:effectCopy forAsyncSource:asyncSource];
  }

  else
  {
    asyncSource = [(_WTTextEffectView *)self source];
    [(_WTTextEffectView *)self _handleAddEffect:effectCopy forSource:asyncSource];
  }

  return uUID;
}

- (void)_handleAddEffect:(id)effect forSource:(id)source
{
  v45[1] = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  sourceCopy = source;
  chunk = [effectCopy chunk];
  v9 = [sourceCopy textPreviewsForChunk:chunk];

  [effectCopy updateEffectWith:v9];
  if ([effectCopy hidesOriginal])
  {
    chunk2 = [effectCopy chunk];
    [sourceCopy updateIsTextVisible:0 forChunk:chunk2];
  }

  [(_WTTextEffectView *)self _cacheHeightOfPreviews:v9 forEffect:effectCopy];
  if ([(_WTTextEffectView *)self _shouldApplyRemainderEffectForEffect:effectCopy])
  {
    v11 = [[_WTTextRangeChunk alloc] initWithRange:0, 0];
    v12 = [(_WTReplaceTextEffect *)[_WTReplaceRemainderTextEffect alloc] initWithChunk:v11 effectView:self];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    textEffects = [(_WTTextEffectView *)self textEffects];
    [textEffects setObject:v12 forKey:uUID];

    [(_WTTextEffect *)v12 setIdentifier:uUID];
    [(_WTTextEffectView *)self replaceSourceDuration];
    v16 = v15;
    [(_WTTextEffectView *)self replaceDestinationDuration];
    if (v16 >= v17)
    {
      v17 = v16;
    }

    [(_WTReplaceRemainderTextEffect *)v12 setDurationOverride:v17];
    replaceSourceRect = [(_WTTextEffectView *)self replaceSourceRect];
    [replaceSourceRect platformCGRectValue];
    v20 = v19;

    replaceDestinationRect = [(_WTTextEffectView *)self replaceDestinationRect];
    [replaceDestinationRect platformCGRectValue];
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
      v41 = [sourceCopy textPreviewForRect:{v31, MaxY + v33, v35, v39}];
      v42 = v41;
      if (v41)
      {
        v45[0] = v41;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
        [(_WTReplaceRemainderTextEffect *)v12 updateEffectWith:v43];

        if ([(_WTTextEffect *)v12 hidesOriginal])
        {
          chunk3 = [(_WTTextEffect *)v12 chunk];
          [sourceCopy updateIsTextVisible:0 forChunk:chunk3];
        }
      }
    }
  }
}

- (void)_handleAddEffect:(id)effect forAsyncSource:(id)source
{
  effectCopy = effect;
  sourceCopy = source;
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
  chunk = [effectCopy chunk];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53___WTTextEffectView__handleAddEffect_forAsyncSource___block_invoke;
  v15[3] = &unk_1E8481110;
  v13 = effectCopy;
  v16 = v13;
  selfCopy = self;
  v19 = v20;
  v14 = sourceCopy;
  v18 = v14;
  [v14 textPreviewsForChunk:chunk completion:v15];

  _Block_object_dispose(v20, 8);
}

- (BOOL)_shouldApplyRemainderEffectForEffect:(id)effect
{
  effectCopy = effect;
  replaceSourceRect = [(_WTTextEffectView *)self replaceSourceRect];
  if (replaceSourceRect)
  {
    replaceDestinationRect = [(_WTTextEffectView *)self replaceDestinationRect];
    v7 = replaceDestinationRect != 0;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isDestination = [effectCopy isDestination];
  }

  else
  {
    isDestination = 0;
  }

  return v7 & isDestination;
}

- (void)_cacheHeightOfPreviews:(id)previews forEffect:(id)effect
{
  v33 = *MEMORY[0x1E69E9840];
  previewsCopy = previews;
  effectCopy = effect;
  firstObject = [previewsCopy firstObject];
  [firstObject presentationFrame];
  x = v9;
  y = v11;
  width = v13;
  height = v15;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = previewsCopy;
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
    isDestination = [effectCopy isDestination];
    v27 = [MEMORY[0x1E696B098] valueWithPlatformCGRect:{x, y, width, height}];
    if (isDestination)
    {
      [(_WTTextEffectView *)self setReplaceDestinationRect:v27];

      [effectCopy sweepDuration];
      [(_WTTextEffectView *)self setReplaceDestinationDuration:?];
    }

    else
    {
      [(_WTTextEffectView *)self setReplaceSourceRect:v27];

      [effectCopy sweepDuration];
      [(_WTTextEffectView *)self setReplaceSourceDuration:?];
    }
  }
}

- (void)removeAllEffectsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  textEffects = [(_WTTextEffectView *)self textEffects];
  allKeys = [textEffects allKeys];
  v7 = [allKeys copy];

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

        v12 = [(_WTTextEffectView *)self removeEffect:*(*(&v13 + 1) + 8 * v11++) animated:animatedCopy];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)removeEffect:(id)effect animated:(BOOL)animated
{
  animatedCopy = animated;
  effectCopy = effect;
  textEffects = [(_WTTextEffectView *)self textEffects];
  v8 = [textEffects objectForKeyedSubscript:effectCopy];

  chunk = [v8 chunk];
  v10 = [chunk copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isDestination = [v8 isDestination];
  }

  else
  {
    isDestination = 1;
  }

  v12 = [v8 hidesOriginal] & isDestination;
  if ([(_WTTextEffectView *)self sourceIsAsync])
  {
    if (v12)
    {
      asyncSource = [(_WTTextEffectView *)self asyncSource];
      chunk2 = [v8 chunk];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __43___WTTextEffectView_removeEffect_animated___block_invoke;
      v19[3] = &unk_1E8481138;
      v23 = animatedCopy;
      v20 = v8;
      selfCopy = self;
      v22 = effectCopy;
      [asyncSource updateIsTextVisible:1 forChunk:chunk2 completion:v19];

      goto LABEL_10;
    }
  }

  else if (v12)
  {
    source = [(_WTTextEffectView *)self source];
    chunk3 = [v8 chunk];
    [source updateIsTextVisible:1 forChunk:chunk3];
  }

  [v8 invalidate:animatedCopy];
  textEffects2 = [(_WTTextEffectView *)self textEffects];
  [textEffects2 removeObjectForKey:effectCopy];

LABEL_10:

  return v10;
}

- (BOOL)hasActiveEffects
{
  textEffects = [(_WTTextEffectView *)self textEffects];
  v3 = [textEffects count] != 0;

  return v3;
}

- (BOOL)hasActiveEffect:(id)effect
{
  effectCopy = effect;
  textEffects = [(_WTTextEffectView *)self textEffects];
  v6 = [textEffects objectForKeyedSubscript:effectCopy];

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
    textEffects = [(_WTTextEffectView *)self textEffects];
    allValues = [textEffects allValues];

    v41 = [allValues countByEnumeratingWithState:&v46 objects:v51 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v45 = *(*(&v46 + 1) + 8 * i);
          if ([v45 updatesOnGeometryChange])
          {
            [(_WTTextEffectView *)self updateSnapshotForEffect:v45];
          }
        }

        v42 = [allValues countByEnumeratingWithState:&v46 objects:v51 count:16];
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
  textEffects = [(_WTTextEffectView *)self textEffects];
  allKeys = [textEffects allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(_WTTextEffectView *)self updateSnapshotForEffectID:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)updateSnapshotForEffectID:(id)d
{
  dCopy = d;
  textEffects = [(_WTTextEffectView *)self textEffects];
  v5 = [textEffects objectForKeyedSubscript:dCopy];

  [(_WTTextEffectView *)self updateSnapshotForEffect:v5];
}

- (void)updateSnapshotForEffect:(id)effect
{
  effectCopy = effect;
  if ([(_WTTextEffectView *)self sourceIsAsync])
  {
    asyncSource = [(_WTTextEffectView *)self asyncSource];
    chunk = [effectCopy chunk];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45___WTTextEffectView_updateSnapshotForEffect___block_invoke;
    v12[3] = &unk_1E8481160;
    v13 = effectCopy;
    selfCopy = self;
    [asyncSource textPreviewsForChunk:chunk completion:v12];
  }

  else
  {
    source = [(_WTTextEffectView *)self source];
    chunk2 = [effectCopy chunk];
    v9 = [source textPreviewsForChunk:chunk2];
    [effectCopy updateEffectWith:v9];

    if ([effectCopy hidesOriginal])
    {
      source2 = [(_WTTextEffectView *)self source];
      chunk3 = [effectCopy chunk];
      [source2 updateIsTextVisible:0 forChunk:chunk3];
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