@interface _UILumaTrackingGroup
- ($F24F406B2B787EFB06265DBA3D28CBD5)transitionBoundaries;
- (_UILumaTrackingGroup)initWithTransitionBoundaries:(id)boundaries minimumDifference:(double)difference delegate:(id)delegate views:(id)views;
- (void)_updateLumaValue;
- (void)backgroundLumaView:(id)view didChangeLuma:(double)luma;
- (void)setPaused:(BOOL)paused;
- (void)unpauseAfterSeedingWithLumaLevel:(unint64_t)level;
@end

@implementation _UILumaTrackingGroup

- (void)_updateLumaValue
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = self->_lumaValues;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v4)
  {
LABEL_37:

    return;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v34;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 floatValue];
        v8 = v8 + v11;
        ++v6;
      }
    }

    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v5);

  if (v6 >= 1)
  {
    backgroundLuminanceLevel = self->_backgroundLuminanceLevel;
    v13 = v8 / v6;
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      v14 = 1;
    }

    else if (BSFloatLessThanOrEqualToFloat())
    {
      v14 = 2;
    }

    else
    {
      if (self->_backgroundLuminanceLevel)
      {
        goto LABEL_19;
      }

      v15 = BSFloatGreaterThanOrEqualToFloat();
      v14 = 1;
      if (!v15)
      {
        v14 = 2;
      }
    }

    self->_backgroundLuminanceLevel = v14;
LABEL_19:
    v3 = self->_outliers;
    v16 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0x10000 capacity:1];
    outliers = self->_outliers;
    self->_outliers = v16;

    if (v6 != 1 && [(NSArray *)self->_lumaViews count])
    {
      v18 = 0;
      v19 = v13 * v6;
      v20 = (v6 - 1);
      do
      {
        v21 = [(NSArray *)self->_lumaViews objectAtIndexedSubscript:v18, v33];
        backgroundLuminanceLevel = [v21 backgroundLuminanceLevel];
        if (!backgroundLuminanceLevel)
        {
          goto LABEL_32;
        }

        v23 = backgroundLuminanceLevel;
        if (backgroundLuminanceLevel == self->_backgroundLuminanceLevel)
        {
          goto LABEL_32;
        }

        v24 = [(NSMutableArray *)self->_lumaValues objectAtIndexedSubscript:v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v24 floatValue];
          v26 = v25;
          v27 = (v19 - v26) / v20;
          if (v23 == 1)
          {
            v28 = v26 - v27;
LABEL_29:
            if (v28 > self->_minimumDifference)
            {
              v29 = self->_outliers;
              v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23];
              [(NSMapTable *)v29 setObject:v30 forKey:v21];
            }

            goto LABEL_31;
          }

          if (v23 == 2)
          {
            v28 = v27 - v26;
            goto LABEL_29;
          }
        }

LABEL_31:

LABEL_32:
        ++v18;
      }

      while (v18 < [(NSArray *)self->_lumaViews count]);
    }

    if (self->_backgroundLuminanceLevel != backgroundLuminanceLevel || ([(NSMapTable *)self->_outliers isEqual:v3]& 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        v32 = objc_loadWeakRetained(&self->_delegate);
        [v32 backgroundLumaGroup:self didTransitionToLevel:self->_backgroundLuminanceLevel viewsWithDifferentLevels:self->_outliers];
      }
    }

    goto LABEL_37;
  }
}

- (_UILumaTrackingGroup)initWithTransitionBoundaries:(id)boundaries minimumDifference:(double)difference delegate:(id)delegate views:(id)views
{
  var1 = boundaries.var1;
  var0 = boundaries.var0;
  delegateCopy = delegate;
  viewsCopy = views;
  v22.receiver = self;
  v22.super_class = _UILumaTrackingGroup;
  v12 = [(_UILumaTrackingGroup *)&v22 init];
  v13 = v12;
  if (v12)
  {
    v12->_backgroundLuminanceLevel = 0;
    v12->_transitionBoundaries.minimum = var0;
    v12->_transitionBoundaries.maximum = var1;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v13->_paused = 1;
    v14 = [viewsCopy copy];
    lumaViews = v13->_lumaViews;
    v13->_lumaViews = v14;

    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v13->_lumaViews, "count")}];
    lumaValues = v13->_lumaValues;
    v13->_lumaValues = v16;

    if ([(NSArray *)v13->_lumaViews count])
    {
      v18 = 0;
      do
      {
        v19 = [(NSArray *)v13->_lumaViews objectAtIndexedSubscript:v18];
        null = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v13->_lumaValues setObject:null atIndexedSubscript:v18];

        [v19 setPaused:1];
        [v19 setTransitionBoundaries:{var0, var1}];
        if (v19)
        {
          objc_storeWeak(v19 + 52, v13);
        }

        ++v18;
      }

      while (v18 < [(NSArray *)v13->_lumaViews count]);
    }
  }

  return v13;
}

- (void)backgroundLumaView:(id)view didChangeLuma:(double)luma
{
  v6 = [(NSArray *)self->_lumaViews indexOfObject:view];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:luma];
    [(NSMutableArray *)self->_lumaValues setObject:v8 atIndexedSubscript:v7];

    if ((*&self->_lumaTrackingGroupFlags & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57___UILumaTrackingGroup_backgroundLumaView_didChangeLuma___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      *&self->_lumaTrackingGroupFlags |= 1u;
    }
  }
}

- (void)setPaused:(BOOL)paused
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_paused != paused)
  {
    pausedCopy = paused;
    self->_paused = paused;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_lumaViews;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [*(*(&v9 + 1) + 8 * v8++) setPaused:{pausedCopy, v9}];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)unpauseAfterSeedingWithLumaLevel:(unint64_t)level
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_paused)
  {
    if (level)
    {
      self->_backgroundLuminanceLevel = level;
      v5 = objc_opt_new();
      outliers = self->_outliers;
      self->_outliers = v5;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 backgroundLumaGroup:self didTransitionToLevel:self->_backgroundLuminanceLevel viewsWithDifferentLevels:self->_outliers];
      }
    }

    self->_paused = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_lumaViews;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) unpauseAfterSeedingWithLumaLevel:{level, v14}];
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)transitionBoundaries
{
  minimum = self->_transitionBoundaries.minimum;
  maximum = self->_transitionBoundaries.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end