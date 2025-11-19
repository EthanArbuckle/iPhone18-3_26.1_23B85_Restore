@interface _UIPageIndicatorStore
- (CGSize)_contentSizeForIndicatorsInRange:(_NSRange)a3 hasExpandedActiveIndicator:(BOOL)a4;
- (CGSize)_indicatorSizeForObject:(id)a3;
- (CGSize)_sizeForMaximumContentSizeFittingLength:(double)a3 hasExpandedActiveIndicator:(BOOL)a4;
- (CGSize)contentSizeForNumberOfPages:(int64_t)a3 hasExpandedActiveIndicator:(BOOL)a4;
- (CGSize)defaultIndicatorSize;
- (CGSize)indicatorSizeForPage:(int64_t)a3;
- (CGSize)minimumContentSizeForIndicatorsInRange:(_NSRange)a3 hasExpandedActiveIndicator:(BOOL)a4;
- (CGSize)resolvedIndicatorLayoutSizeForPage:(int64_t)a3;
- (CGSize)sizeForMaximumContentSizeFittingLength:(double)a3 hasExpandedActiveIndicator:(BOOL)a4;
- (UIImage)indicatorImage;
- (_UIPageIndicatorStore)init;
- (_UIPageIndicatorStoreDelegate)delegate;
- (double)indicatorPositionForContinuousPage:(double)a3 expandedIndicatorPage:(int64_t)a4;
- (id)_defaultIndicatorImage;
- (id)activeIndicatorImageForPage:(int64_t)a3;
- (id)customActiveIndicatorImageForPage:(int64_t)a3;
- (id)customIndicatorImageForPage:(int64_t)a3;
- (id)indicatorImageForPage:(int64_t)a3;
- (int64_t)_objectIndexForPage:(int64_t)a3 lower:(int64_t)a4 upper:(int64_t)a5;
- (int64_t)numberOfPages;
- (int64_t)numberOfVisibleIndicatorsForStartIndex:(int64_t)a3 fittingLength:(double)a4 hasExpandedActiveIndicator:(BOOL)a5;
- (int64_t)objectIndexForPage:(int64_t)a3;
- (void)_insertImage:(id)a3 forPage:(int64_t)a4 active:(BOOL)a5;
- (void)_removeImageForPage:(int64_t)a3 active:(BOOL)a4;
- (void)_resetStore;
- (void)_updateImage:(id)a3 forPage:(int64_t)a4 active:(BOOL)a5;
- (void)invalidateLayoutCache;
- (void)setDirection:(int64_t)a3;
- (void)setIndicatorSpacing:(double)a3;
- (void)updateStoreForNumberOfPages:(int64_t)a3;
@end

@implementation _UIPageIndicatorStore

- (int64_t)numberOfPages
{
  v2 = [(_UIPageIndicatorStore *)self store];
  v3 = [v2 lastObject];
  v4 = [v3 endIndex];

  return v4;
}

- (UIImage)indicatorImage
{
  v3 = [(_UIPageIndicatorStore *)self preferredImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIPageIndicatorStore *)self _defaultIndicatorImage];
  }

  v6 = v5;

  return v6;
}

- (CGSize)defaultIndicatorSize
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(_UIPageIndicatorStore *)self store];
  v4 = [v3 count];
  v5 = [(_UIPageIndicatorStore *)self numberOfPages];

  if (v4 >= v5)
  {
    v7 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(_UIPageIndicatorStore *)self store];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v15];
          v17 = v16;
          v19 = v18;
          v20 = [v15 customImage];

          if (!v20)
          {
            v9 = v19;
            v7 = v17;
            goto LABEL_18;
          }

          if ([(_UIPageIndicatorStore *)self direction]<= 1)
          {
            v21 = v17 <= v7;
          }

          else
          {
            v21 = v19 <= v9;
          }

          if (!v21)
          {
            v9 = v19;
            v7 = v17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    [(_UIPageIndicatorStore *)self _indicatorSizeForObject:0];
    v7 = v6;
    v9 = v8;
  }

  v22 = v7;
  v23 = v9;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)invalidateLayoutCache
{
  v13 = *MEMORY[0x1E69E9840];
  *&self->_cache.fittingSize |= 1u;
  *&self->_cache.indicatorCount |= 1u;
  *&self->_cache.contentSize |= 1u;
  *&self->_cache.contentSizeInRange |= 1u;
  *&self->_expandedCache.fittingSize |= 1u;
  *&self->_expandedCache.indicatorCount |= 1u;
  *&self->_expandedCache.contentSize |= 1u;
  *&self->_expandedCache.contentSizeInRange |= 1u;
  [(_UIPageIndicatorStoreObject *)self->_defaultObject invalidateLayoutInfo];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(_UIPageIndicatorStore *)self store];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateLayoutInfo];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (_UIPageIndicatorStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_defaultIndicatorImage
{
  defaultImage = self->_defaultImage;
  if (!defaultImage)
  {
    v4 = [UIImage systemImageNamed:@"circlebadge.fill"];
    v5 = self->_defaultImage;
    self->_defaultImage = v4;

    defaultImage = self->_defaultImage;
  }

  return defaultImage;
}

- (_UIPageIndicatorStore)init
{
  v6.receiver = self;
  v6.super_class = _UIPageIndicatorStore;
  v2 = [(_UIPageIndicatorStore *)&v6 init];
  if (v2)
  {
    v3 = [[_UIPageIndicatorStoreObject alloc] initWithStartIndex:0 endIndex:0];
    defaultObject = v2->_defaultObject;
    v2->_defaultObject = v3;

    [(_UIPageIndicatorStore *)v2 _resetStore];
    [(_UIPageIndicatorStore *)v2 invalidateLayoutCache];
  }

  return v2;
}

- (void)_resetStore
{
  v3 = [(_UIPageIndicatorStore *)self store];

  if (v3)
  {
    v4 = [(_UIPageIndicatorStore *)self store];
    [v4 removeAllObjects];
  }

  else
  {
    v4 = objc_opt_new();
    [(_UIPageIndicatorStore *)self setStore:v4];
  }

  v5 = [(_UIPageIndicatorStore *)self store];
  v6 = [[_UIPageIndicatorStoreObject alloc] initWithStartIndex:0 endIndex:[(_UIPageIndicatorStore *)self numberOfPages]];
  [v5 addObject:v6];

  [(_UIPageIndicatorStore *)self invalidateLayoutCache];
}

- (id)customIndicatorImageForPage:(int64_t)a3
{
  v4 = [(_UIPageIndicatorStore *)self objectIndexForPage:a3];
  v5 = [(_UIPageIndicatorStore *)self store];
  v6 = [v5 objectAtIndex:v4];

  v7 = [v6 customImage];

  return v7;
}

- (id)indicatorImageForPage:(int64_t)a3
{
  v4 = [(_UIPageIndicatorStore *)self customIndicatorImageForPage:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(_UIPageIndicatorStore *)self indicatorImage];
  }

  v7 = v6;

  return v7;
}

- (id)customActiveIndicatorImageForPage:(int64_t)a3
{
  v4 = [(_UIPageIndicatorStore *)self objectIndexForPage:a3];
  v5 = [(_UIPageIndicatorStore *)self store];
  v6 = [v5 objectAtIndex:v4];

  v7 = [v6 activeImage];

  return v7;
}

- (id)activeIndicatorImageForPage:(int64_t)a3
{
  v5 = [(_UIPageIndicatorStore *)self customActiveIndicatorImageForPage:?];
  if (v5 || ([(_UIPageIndicatorStore *)self customIndicatorImageForPage:a3], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v8 = [(_UIPageIndicatorStore *)self preferredActiveImage];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(_UIPageIndicatorStore *)self indicatorImage];
    }

    v6 = v10;
  }

  return v6;
}

- (CGSize)resolvedIndicatorLayoutSizeForPage:(int64_t)a3
{
  v5 = [(_UIPageIndicatorStore *)self store];
  v6 = [v5 objectAtIndex:{-[_UIPageIndicatorStore objectIndexForPage:](self, "objectIndexForPage:", a3)}];

  [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setDirection:(int64_t)a3
{
  if (self->_direction != a3)
  {
    self->_direction = a3;
    [(_UIPageIndicatorStore *)self invalidateLayoutCache];
  }
}

- (void)setIndicatorSpacing:(double)a3
{
  if (self->_indicatorSpacing != a3)
  {
    self->_indicatorSpacing = a3;
    [(_UIPageIndicatorStore *)self invalidateLayoutCache];
  }
}

- (CGSize)indicatorSizeForPage:(int64_t)a3
{
  v4 = [(_UIPageIndicatorStore *)self objectIndexForPage:a3];
  v5 = [(_UIPageIndicatorStore *)self store];
  v6 = [v5 objectAtIndex:v4];

  [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_indicatorSizeForObject:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5 || ![(_UIPageIndicatorStoreObject *)v5 hasImage])
  {
    v7 = self->_defaultObject;

    v6 = v7;
  }

  [(_UIPageIndicatorStoreObject *)v6 indicatorSize];
  if (v9 == -1.0 && v8 == -1.0)
  {
    v11 = [(_UIPageIndicatorStore *)self delegate];
    v12 = [(_UIPageIndicatorStoreObject *)v6 customImage];
    v3 = v12;
    if (!v12)
    {
      v3 = [(_UIPageIndicatorStore *)self indicatorImage];
    }

    [v11 indicatorSizeForImage:v3];
    [(_UIPageIndicatorStoreObject *)v6 setIndicatorSize:?];
    if (!v12)
    {
    }
  }

  [(_UIPageIndicatorStoreObject *)v6 activeIndicatorSize];
  if (v14 == -1.0 && v13 == -1.0)
  {
    v15 = [(_UIPageIndicatorStore *)self delegate];
    v16 = [(_UIPageIndicatorStoreObject *)v6 activeImage];
    v17 = v16;
    if (v16)
    {
      v18 = 0;
      v19 = v16;
    }

    else
    {
      v20 = [(_UIPageIndicatorStore *)self preferredActiveImage];
      v3 = v20;
      if (v20)
      {
        v18 = 0;
        v19 = v20;
      }

      else
      {
        v19 = [(_UIPageIndicatorStore *)self indicatorImage];
        v18 = 1;
      }
    }

    [v15 indicatorSizeForImage:v19];
    [(_UIPageIndicatorStoreObject *)v6 setActiveIndicatorSize:?];
    if (v18)
    {
    }

    if (!v17)
    {
    }
  }

  [(_UIPageIndicatorStoreObject *)v6 resolvedSize];
  v22 = v21;
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (int64_t)numberOfVisibleIndicatorsForStartIndex:(int64_t)a3 fittingLength:(double)a4 hasExpandedActiveIndicator:(BOOL)a5
{
  v5 = a5;
  v9 = 40;
  if (a5)
  {
    v9 = 176;
  }

  v10 = self + v9;
  if ((*(&self->super.isa + v9) & 1) == 0 && *(v10 + 1) == a4 && *(v10 + 2) == a3)
  {
    return *(v10 + 3);
  }

  [(_UIPageIndicatorStore *)self indicatorSpacing];
  v13 = v12;
  v14 = v12 + a4;
  v30 = v12 + a4;
  v15 = [(_UIPageIndicatorStore *)self objectIndexForPage:a3];
  v29 = 0x10000000000000;
  if (v5)
  {
    v16 = &v29;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(_UIPageIndicatorStore *)self store];
  v18 = [v17 count];

  v11 = 0;
  if (v15 < v18)
  {
    v11 = 0;
    v19 = v15;
    do
    {
      v20 = _calculateVisibleIndicators(self, v19, v16, &v30, v13);
      v11 += v20;
      ++v19;
      v21 = [(_UIPageIndicatorStore *)self store];
      v22 = [v21 count];
    }

    while (v19 < v22 && v20);
    v14 = v30;
  }

  if (v14 > 0.0 && v15 >= 1)
  {
    v24 = [(_UIPageIndicatorStore *)self objectIndexForPage:v15 - 1];
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = v24;
      do
      {
        v26 = _calculateVisibleIndicators(self, v25, v16, &v30, v13);
        v11 += v26;
        v27 = v25-- != 0;
      }

      while (v27 && v26);
    }
  }

  *v10 &= ~1u;
  *(v10 + 1) = a4;
  *(v10 + 2) = a3;
  *(v10 + 3) = v11;
  return v11;
}

- (CGSize)sizeForMaximumContentSizeFittingLength:(double)a3 hasExpandedActiveIndicator:(BOOL)a4
{
  v5 = 8;
  if (a4)
  {
    v5 = 144;
  }

  v6 = (self + v5);
  if ((*(&self->super.isa + v5) & 1) != 0 || v6[1] != a3)
  {
    [(_UIPageIndicatorStore *)self _sizeForMaximumContentSizeFittingLength:a3 hasExpandedActiveIndicator:?];
    *v6 &= ~1u;
    v6[1] = a3;
    v6[2] = v7;
    v6[3] = v8;
  }

  else
  {
    v7 = v6[2];
    v8 = v6[3];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_sizeForMaximumContentSizeFittingLength:(double)a3 hasExpandedActiveIndicator:(BOOL)a4
{
  v49 = a4;
  v6 = [(_UIPageIndicatorStore *)self delegate];
  v7 = [v6 maxVisibleIndicators];

  v8 = [(_UIPageIndicatorStore *)self numberOfPages];
  [(_UIPageIndicatorStore *)self indicatorSpacing];
  j = -v9;
  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  if ([(_UIPageIndicatorStore *)self direction]< 2)
  {
    v11 = j;
    j = v12;
  }

  v13 = [(_UIPageIndicatorStore *)self store];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = [(_UIPageIndicatorStore *)self store];
      v48 = v16;
      v19 = [v18 objectAtIndex:v16];

      [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v19];
      v21 = v20;
      v23 = v22;
      for (i = [v19 startIndex]; i < objc_msgSend(v19, "endIndex") && v17 < v8; ++i)
      {
        v50 = j;
        [(_UIPageIndicatorStore *)self indicatorSpacing];
        v26 = -v25;
        v27 = 0.0;
        if (i >= v8 || v7 < 1)
        {
          v17 = i;
          v37 = v26;
          v28 = 0.0;
        }

        else
        {
          v28 = 0.0;
          v29 = 1;
          v17 = i;
          while (1)
          {
            if ([v19 validPageWithinBound:{v17, v27}])
            {
              v30 = v21;
              v31 = v23;
            }

            else
            {
              if (([v15 validPageWithinBound:v17] & 1) == 0)
              {
                v32 = [(_UIPageIndicatorStore *)self store];
                v33 = [v32 objectAtIndex:{-[_UIPageIndicatorStore objectIndexForPage:](self, "objectIndexForPage:", v17)}];

                v15 = v33;
              }

              [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v15];
              v30 = v34;
              v31 = v35;
            }

            if ([(_UIPageIndicatorStore *)self direction]>= 2)
            {
              v30 = v31;
            }

            [(_UIPageIndicatorStore *)self indicatorSpacing];
            v27 = v36 + v30;
            v28 = fmax(v28, v27);
            v37 = v26 + v27;
            if (v26 + v27 > a3)
            {
              break;
            }

            if (++v17 < v8)
            {
              v26 = v26 + v27;
              if (v29++ < v7)
              {
                continue;
              }
            }

            goto LABEL_24;
          }

          v37 = v26;
        }

LABEL_24:
        if (v49)
        {
          v37 = v37 + v28;
            ;
          }
        }

        else
        {
          j = v50;
        }

        if ([(_UIPageIndicatorStore *)self direction]>= 2)
        {
          v39 = j;
        }

        else
        {
          v39 = v11;
        }

        if (v37 <= a3 && v39 < v37)
        {
          if ([(_UIPageIndicatorStore *)self direction]>= 2)
          {
            j = v37;
          }

          else
          {
            v11 = v37;
          }
        }

        if (v17 < [v19 endIndex])
        {
          i = i - v17 + [v19 endIndex];
        }
      }

      v41 = [(_UIPageIndicatorStore *)self direction];
      v42 = fmax(j, v23);
      v43 = fmax(v11, v21);
      if (v41 < 2)
      {
        j = v42;
      }

      else
      {
        v11 = v43;
      }

      v16 = v48 + 1;
      v44 = [(_UIPageIndicatorStore *)self store];
      v45 = [v44 count];
    }

    while (v48 + 1 < v45);
  }

  v46 = v11;
  v47 = j;
  result.height = v47;
  result.width = v46;
  return result;
}

- (void)updateStoreForNumberOfPages:(int64_t)a3
{
  v5 = [(_UIPageIndicatorStore *)self numberOfPages];
  if (v5 != a3)
  {
    v6 = v5;
    v7 = [(_UIPageIndicatorStore *)self store];
    v22 = [v7 lastObject];

    if (v6 >= a3)
    {
      if (v6 > a3)
      {
        v11 = [(_UIPageIndicatorStore *)self objectIndexForPage:a3];
        v12 = [(_UIPageIndicatorStore *)self store];
        v13 = [v12 objectAtIndex:v11];

        [v13 setEndIndex:a3];
        v14 = [(_UIPageIndicatorStore *)self store];
        v15 = [v14 count] - 1;

        if (v11 < v15)
        {
          v16 = [(_UIPageIndicatorStore *)self store];
          v17 = [(_UIPageIndicatorStore *)self store];
          [v16 removeObjectsInRange:{v11 + 1, objc_msgSend(v17, "count") + ~v11}];
        }

        v18 = [v13 startIndex];
        if (v18 >= [v13 endIndex])
        {
          v19 = [(_UIPageIndicatorStore *)self store];
          [v19 removeObject:v13];
        }
      }
    }

    else
    {
      v8 = [v22 customImage];

      if (v8)
      {
        v9 = [(_UIPageIndicatorStore *)self store];
        v10 = [[_UIPageIndicatorStoreObject alloc] initWithStartIndex:v6 endIndex:a3];
        [v9 addObject:v10];
      }

      else
      {
        [v22 setEndIndex:a3];
      }
    }

    v20 = [(_UIPageIndicatorStore *)self store];
    v21 = [v20 count];

    if (!v21)
    {
      [(_UIPageIndicatorStore *)self _resetStore];
    }

    [(_UIPageIndicatorStore *)self invalidateLayoutCache];
  }
}

- (void)_updateImage:(id)a3 forPage:(int64_t)a4 active:(BOOL)a5
{
  if (a3)
  {
    [(_UIPageIndicatorStore *)self _insertImage:a3 forPage:a4 active:a5];
  }

  else
  {
    [(_UIPageIndicatorStore *)self _removeImageForPage:a4 active:a5];
  }

  [(_UIPageIndicatorStore *)self validateDataStore];

  [(_UIPageIndicatorStore *)self invalidateLayoutCache];
}

- (CGSize)contentSizeForNumberOfPages:(int64_t)a3 hasExpandedActiveIndicator:(BOOL)a4
{
  v4 = 72;
  if (a4)
  {
    v4 = 208;
  }

  v5 = (self + v4);
  if (*(&self->super.isa + v4))
  {
    v6 = a3;
    goto LABEL_7;
  }

  v6 = a3;
  if (v5[1] != a3)
  {
LABEL_7:
    [(_UIPageIndicatorStore *)self _contentSizeForIndicatorsInRange:0 hasExpandedActiveIndicator:a3];
    *v5 &= ~1u;
    v5[1] = v6;
    v5[2] = v7;
    v5[3] = v8;
    goto LABEL_8;
  }

  v7 = v5[2];
  v8 = v5[3];
LABEL_8:
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)minimumContentSizeForIndicatorsInRange:(_NSRange)a3 hasExpandedActiveIndicator:(BOOL)a4
{
  length = a3.length;
  location = a3.location;
  v6 = 104;
  if (a4)
  {
    v6 = 240;
  }

  v7 = (self + v6);
  if ((*(&self->super.isa + v6) & 1) == 0 && (*(v7 + 1) == a3.location ? (v8 = *(v7 + 2) == a3.length) : (v8 = 0), v8))
  {
    v9 = v7[3];
    v10 = v7[4];
  }

  else
  {
    [(_UIPageIndicatorStore *)self _contentSizeForIndicatorsInRange:a3.location hasExpandedActiveIndicator:a3.length];
    *v7 &= ~1u;
    *(v7 + 1) = location;
    *(v7 + 2) = length;
    v7[3] = v9;
    v7[4] = v10;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)_contentSizeForIndicatorsInRange:(_NSRange)a3 hasExpandedActiveIndicator:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v53 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  v10 = [(_UIPageIndicatorStore *)self direction];
  [(_UIPageIndicatorStore *)self indicatorSpacing];
  v12 = v11 * (length - 1);
  if (v10 < 2)
  {
    v8 = v12;
  }

  v48 = 0u;
  v49 = 0u;
  if (v10 >= 2)
  {
    v9 = v12;
  }

  v13 = location + length;
  v50 = 0uLL;
  v51 = 0uLL;
  v14 = [(_UIPageIndicatorStore *)self store];
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    v18 = 0.0;
LABEL_7:
    v19 = 0;
    while (1)
    {
      if (*v49 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v48 + 1) + 8 * v19);
      if ([v20 startIndex] >= v13)
      {
        break;
      }

      if ([v20 endIndex] >= location)
      {
        [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v20];
        v22 = v21;
        v24 = v23;
        v25 = [v20 startIndex];
        if (location <= v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = location;
        }

        v27 = [v20 endIndex];
        if (v13 >= v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = v13;
        }

        if ([(_UIPageIndicatorStore *)self direction]>= 2)
        {
          v29 = v24;
        }

        else
        {
          v29 = v22;
        }

        v30 = [(_UIPageIndicatorStore *)self direction];
        if (v30 >= 2)
        {
          v31 = v9;
        }

        else
        {
          v31 = v8;
        }

        if (v30 >= 2)
        {
          v9 = v31 + v29 * (v28 - v26);
        }

        else
        {
          v8 = v31 + v29 * (v28 - v26);
        }

        v18 = fmax(v18, v29);
        if ([(_UIPageIndicatorStore *)self direction]> 1)
        {
          v8 = fmax(v8, v22);
        }

        else
        {
          v9 = fmax(v9, v24);
        }
      }

      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v16)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  else
  {
    v18 = 0.0;
  }

  v32 = v13 - [(_UIPageIndicatorStore *)self numberOfPages];
  if (v32 >= 1)
  {
    v33 = [(_UIPageIndicatorStore *)self direction];
    v34 = v32;
    v35 = [(_UIPageIndicatorStore *)self direction];
    [(_UIPageIndicatorStore *)self defaultIndicatorSize];
    if (v35 >= 2)
    {
      v36 = v37;
    }

    v38 = v36 * v34;
    if (v33 >= 2)
    {
      v39 = v9;
    }

    else
    {
      v39 = v8;
    }

    v40 = v39 + v38;
    if (v33 >= 2)
    {
      v9 = v40;
    }

    else
    {
      v8 = v40;
    }
  }

  if (v4)
  {
    v41 = [(_UIPageIndicatorStore *)self direction];
    [(_UIPageIndicatorStore *)self indicatorSpacing];
    v43 = v18 + v42;
    if (v41 >= 2)
    {
      v44 = v9;
    }

    else
    {
      v44 = v8;
    }

    v45 = v44 + v43;
    if (v41 >= 2)
    {
      v9 = v45;
    }

    else
    {
      v8 = v45;
    }
  }

  v46 = v8;
  v47 = v9;
  result.height = v47;
  result.width = v46;
  return result;
}

- (double)indicatorPositionForContinuousPage:(double)a3 expandedIndicatorPage:(int64_t)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [(_UIPageIndicatorStore *)self store];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v12 = a4 >= 0 && a3 > a4;
    v13 = 0.0;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v32 + 1) + 8 * v14);
      v16 = [v15 startIndex];
      if (v16 >= a3)
      {
        break;
      }

      v17 = [(_UIPageIndicatorStore *)self direction];
      [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v15];
      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      v21 = fmin(a3, [v15 endIndex]);
      v22 = v21 - [v15 startIndex];
      [(_UIPageIndicatorStore *)self indicatorSpacing];
      v13 = v13 + (v20 + v23) * v22;
      if (v12 && [v15 validPageWithinBound:a4])
      {
        if (([v15 validPageWithinBound:a4 + 1] & 1) != 0 || a4 + 1 == -[_UIPageIndicatorStore numberOfPages](self, "numberOfPages"))
        {
          [(_UIPageIndicatorStore *)self indicatorSpacing];
          v25 = v20 + v24;
        }

        else
        {
          v26 = [(_UIPageIndicatorStore *)self direction];
          [(_UIPageIndicatorStore *)self indicatorSizeForPage:a4 + 1];
          if (v26 >= 2)
          {
            v29 = v28;
          }

          else
          {
            v29 = v27;
          }

          [(_UIPageIndicatorStore *)self indicatorSpacing];
          v25 = v30 + v29;
        }

        v13 = v13 + v25;
      }

      if (v9 == ++v14)
      {
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v9)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)_insertImage:(id)a3 forPage:(int64_t)a4 active:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(_UIPageIndicatorStore *)self objectIndexForPage:a4];
  v10 = [(_UIPageIndicatorStore *)self store];
  v13 = [v10 objectAtIndex:v9];

  v11 = [(_UIPageIndicatorStore *)self store];
  v12 = [v13 splitAtIndex:a4 withImage:v8 active:v5];

  [v11 replaceObjectsInRange:v9 withObjectsFromArray:{1, v12}];
}

- (void)_removeImageForPage:(int64_t)a3 active:(BOOL)a4
{
  v6 = [(_UIPageIndicatorStore *)self objectIndexForPage:a3];
  v7 = [(_UIPageIndicatorStore *)self store];
  v18 = [v7 objectAtIndex:v6];

  if (a4)
  {
    [v18 setActiveImage:0];
  }

  else
  {
    [v18 setCustomImage:0];
  }

  if (([v18 hasImage] & 1) == 0)
  {
    v8 = [(_UIPageIndicatorStore *)self store];
    if (v6 >= ([v8 count] - 1))
    {

      v10 = 0;
      v11 = 0;
      if (v6 < 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = [(_UIPageIndicatorStore *)self store];
      v10 = [v9 objectAtIndex:v6 + 1];

      if (v6 <= 0)
      {
        if (!v10)
        {
          v11 = 0;
          goto LABEL_25;
        }

        v11 = 0;
        if ([v10 hasImage])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    v12 = [(_UIPageIndicatorStore *)self store];
    v11 = [v12 objectAtIndex:v6 - 1];

    if (v10)
    {
      v13 = [v10 hasImage];
      v14 = v13;
      if (v11)
      {
        v15 = [v11 hasImage];
        if (((v14 | v15) & 1) == 0)
        {
          [v11 setEndIndex:{objc_msgSend(v10, "endIndex")}];
          v16 = [(_UIPageIndicatorStore *)self store];
          [v16 removeObjectAtIndex:v6 + 1];

          goto LABEL_24;
        }

        if (v14)
        {
          if (v15)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }

LABEL_21:
        [v10 setStartIndex:{objc_msgSend(v18, "startIndex")}];
LABEL_24:
        v17 = [(_UIPageIndicatorStore *)self store];
        [v17 removeObjectAtIndex:v6];

        goto LABEL_25;
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v11 && ([v11 hasImage] & 1) == 0)
      {
LABEL_23:
        [v11 setEndIndex:{objc_msgSend(v18, "endIndex")}];
        goto LABEL_24;
      }

      v10 = 0;
    }

LABEL_25:
  }
}

- (int64_t)objectIndexForPage:(int64_t)a3
{
  if (a3 < 0 || [(_UIPageIndicatorStore *)self numberOfPages]<= a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIPageIndicatorStore.m" lineNumber:693 description:{@"[UIPageControl] Page out-of-bounds. Requested %ld but the page control only has %ld pages.", a3, -[_UIPageIndicatorStore numberOfPages](self, "numberOfPages")}];
  }

  v6 = [(_UIPageIndicatorStore *)self store];
  v7 = -[_UIPageIndicatorStore _objectIndexForPage:lower:upper:](self, "_objectIndexForPage:lower:upper:", a3, 0, [v6 count]);

  return v7;
}

- (int64_t)_objectIndexForPage:(int64_t)a3 lower:(int64_t)a4 upper:(int64_t)a5
{
  v10 = a5 - a4;
  if (a5 < a4)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIPageIndicatorStore.m" lineNumber:699 description:{@"[UIPageControl] Failed to find page index. Tried to look for %ld.", a3}];
  }

  v11 = a4 + v10 / 2;
  v12 = [(_UIPageIndicatorStore *)self store];
  v13 = [v12 objectAtIndex:v11];

  if (([v13 validPageWithinBound:a3] & 1) == 0)
  {
    if ([v13 startIndex] > a3)
    {
      v14 = v11 - 1;
      v15 = self;
      v16 = a3;
      v17 = a4;
LABEL_9:
      v11 = [(_UIPageIndicatorStore *)v15 _objectIndexForPage:v16 lower:v17 upper:v14];
      goto LABEL_10;
    }

    if ([v13 endIndex] <= a3)
    {
      v17 = v11 + 1;
      v15 = self;
      v16 = a3;
      v14 = a5;
      goto LABEL_9;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UIPageIndicatorStore.m" lineNumber:709 description:{@"Uhm, this shouldn't be possible?"}];

    v11 = -1;
  }

LABEL_10:

  return v11;
}

@end