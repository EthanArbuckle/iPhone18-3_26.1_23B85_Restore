@interface _UIPageIndicatorStore
- (CGSize)_contentSizeForIndicatorsInRange:(_NSRange)range hasExpandedActiveIndicator:(BOOL)indicator;
- (CGSize)_indicatorSizeForObject:(id)object;
- (CGSize)_sizeForMaximumContentSizeFittingLength:(double)length hasExpandedActiveIndicator:(BOOL)indicator;
- (CGSize)contentSizeForNumberOfPages:(int64_t)pages hasExpandedActiveIndicator:(BOOL)indicator;
- (CGSize)defaultIndicatorSize;
- (CGSize)indicatorSizeForPage:(int64_t)page;
- (CGSize)minimumContentSizeForIndicatorsInRange:(_NSRange)range hasExpandedActiveIndicator:(BOOL)indicator;
- (CGSize)resolvedIndicatorLayoutSizeForPage:(int64_t)page;
- (CGSize)sizeForMaximumContentSizeFittingLength:(double)length hasExpandedActiveIndicator:(BOOL)indicator;
- (UIImage)indicatorImage;
- (_UIPageIndicatorStore)init;
- (_UIPageIndicatorStoreDelegate)delegate;
- (double)indicatorPositionForContinuousPage:(double)page expandedIndicatorPage:(int64_t)indicatorPage;
- (id)_defaultIndicatorImage;
- (id)activeIndicatorImageForPage:(int64_t)page;
- (id)customActiveIndicatorImageForPage:(int64_t)page;
- (id)customIndicatorImageForPage:(int64_t)page;
- (id)indicatorImageForPage:(int64_t)page;
- (int64_t)_objectIndexForPage:(int64_t)page lower:(int64_t)lower upper:(int64_t)upper;
- (int64_t)numberOfPages;
- (int64_t)numberOfVisibleIndicatorsForStartIndex:(int64_t)index fittingLength:(double)length hasExpandedActiveIndicator:(BOOL)indicator;
- (int64_t)objectIndexForPage:(int64_t)page;
- (void)_insertImage:(id)image forPage:(int64_t)page active:(BOOL)active;
- (void)_removeImageForPage:(int64_t)page active:(BOOL)active;
- (void)_resetStore;
- (void)_updateImage:(id)image forPage:(int64_t)page active:(BOOL)active;
- (void)invalidateLayoutCache;
- (void)setDirection:(int64_t)direction;
- (void)setIndicatorSpacing:(double)spacing;
- (void)updateStoreForNumberOfPages:(int64_t)pages;
@end

@implementation _UIPageIndicatorStore

- (int64_t)numberOfPages
{
  store = [(_UIPageIndicatorStore *)self store];
  lastObject = [store lastObject];
  endIndex = [lastObject endIndex];

  return endIndex;
}

- (UIImage)indicatorImage
{
  preferredImage = [(_UIPageIndicatorStore *)self preferredImage];
  v4 = preferredImage;
  if (preferredImage)
  {
    _defaultIndicatorImage = preferredImage;
  }

  else
  {
    _defaultIndicatorImage = [(_UIPageIndicatorStore *)self _defaultIndicatorImage];
  }

  v6 = _defaultIndicatorImage;

  return v6;
}

- (CGSize)defaultIndicatorSize
{
  v29 = *MEMORY[0x1E69E9840];
  store = [(_UIPageIndicatorStore *)self store];
  v4 = [store count];
  numberOfPages = [(_UIPageIndicatorStore *)self numberOfPages];

  if (v4 >= numberOfPages)
  {
    v7 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    store2 = [(_UIPageIndicatorStore *)self store];
    v11 = [store2 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(store2);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v15];
          v17 = v16;
          v19 = v18;
          customImage = [v15 customImage];

          if (!customImage)
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

        v12 = [store2 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  store = [(_UIPageIndicatorStore *)self store];
  v4 = [store countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(store);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateLayoutInfo];
      }

      while (v5 != v7);
      v5 = [store countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  store = [(_UIPageIndicatorStore *)self store];

  if (store)
  {
    store2 = [(_UIPageIndicatorStore *)self store];
    [store2 removeAllObjects];
  }

  else
  {
    store2 = objc_opt_new();
    [(_UIPageIndicatorStore *)self setStore:store2];
  }

  store3 = [(_UIPageIndicatorStore *)self store];
  v6 = [[_UIPageIndicatorStoreObject alloc] initWithStartIndex:0 endIndex:[(_UIPageIndicatorStore *)self numberOfPages]];
  [store3 addObject:v6];

  [(_UIPageIndicatorStore *)self invalidateLayoutCache];
}

- (id)customIndicatorImageForPage:(int64_t)page
{
  v4 = [(_UIPageIndicatorStore *)self objectIndexForPage:page];
  store = [(_UIPageIndicatorStore *)self store];
  v6 = [store objectAtIndex:v4];

  customImage = [v6 customImage];

  return customImage;
}

- (id)indicatorImageForPage:(int64_t)page
{
  v4 = [(_UIPageIndicatorStore *)self customIndicatorImageForPage:page];
  v5 = v4;
  if (v4)
  {
    indicatorImage = v4;
  }

  else
  {
    indicatorImage = [(_UIPageIndicatorStore *)self indicatorImage];
  }

  v7 = indicatorImage;

  return v7;
}

- (id)customActiveIndicatorImageForPage:(int64_t)page
{
  v4 = [(_UIPageIndicatorStore *)self objectIndexForPage:page];
  store = [(_UIPageIndicatorStore *)self store];
  v6 = [store objectAtIndex:v4];

  activeImage = [v6 activeImage];

  return activeImage;
}

- (id)activeIndicatorImageForPage:(int64_t)page
{
  v5 = [(_UIPageIndicatorStore *)self customActiveIndicatorImageForPage:?];
  if (v5 || ([(_UIPageIndicatorStore *)self customIndicatorImageForPage:page], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    preferredActiveImage = [(_UIPageIndicatorStore *)self preferredActiveImage];
    v9 = preferredActiveImage;
    if (preferredActiveImage)
    {
      indicatorImage = preferredActiveImage;
    }

    else
    {
      indicatorImage = [(_UIPageIndicatorStore *)self indicatorImage];
    }

    v6 = indicatorImage;
  }

  return v6;
}

- (CGSize)resolvedIndicatorLayoutSizeForPage:(int64_t)page
{
  store = [(_UIPageIndicatorStore *)self store];
  v6 = [store objectAtIndex:{-[_UIPageIndicatorStore objectIndexForPage:](self, "objectIndexForPage:", page)}];

  [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setDirection:(int64_t)direction
{
  if (self->_direction != direction)
  {
    self->_direction = direction;
    [(_UIPageIndicatorStore *)self invalidateLayoutCache];
  }
}

- (void)setIndicatorSpacing:(double)spacing
{
  if (self->_indicatorSpacing != spacing)
  {
    self->_indicatorSpacing = spacing;
    [(_UIPageIndicatorStore *)self invalidateLayoutCache];
  }
}

- (CGSize)indicatorSizeForPage:(int64_t)page
{
  v4 = [(_UIPageIndicatorStore *)self objectIndexForPage:page];
  store = [(_UIPageIndicatorStore *)self store];
  v6 = [store objectAtIndex:v4];

  [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_indicatorSizeForObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (!objectCopy || ![(_UIPageIndicatorStoreObject *)objectCopy hasImage])
  {
    v7 = self->_defaultObject;

    v6 = v7;
  }

  [(_UIPageIndicatorStoreObject *)v6 indicatorSize];
  if (v9 == -1.0 && v8 == -1.0)
  {
    delegate = [(_UIPageIndicatorStore *)self delegate];
    customImage = [(_UIPageIndicatorStoreObject *)v6 customImage];
    indicatorImage = customImage;
    if (!customImage)
    {
      indicatorImage = [(_UIPageIndicatorStore *)self indicatorImage];
    }

    [delegate indicatorSizeForImage:indicatorImage];
    [(_UIPageIndicatorStoreObject *)v6 setIndicatorSize:?];
    if (!customImage)
    {
    }
  }

  [(_UIPageIndicatorStoreObject *)v6 activeIndicatorSize];
  if (v14 == -1.0 && v13 == -1.0)
  {
    delegate2 = [(_UIPageIndicatorStore *)self delegate];
    activeImage = [(_UIPageIndicatorStoreObject *)v6 activeImage];
    v17 = activeImage;
    if (activeImage)
    {
      v18 = 0;
      indicatorImage2 = activeImage;
    }

    else
    {
      preferredActiveImage = [(_UIPageIndicatorStore *)self preferredActiveImage];
      indicatorImage = preferredActiveImage;
      if (preferredActiveImage)
      {
        v18 = 0;
        indicatorImage2 = preferredActiveImage;
      }

      else
      {
        indicatorImage2 = [(_UIPageIndicatorStore *)self indicatorImage];
        v18 = 1;
      }
    }

    [delegate2 indicatorSizeForImage:indicatorImage2];
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

- (int64_t)numberOfVisibleIndicatorsForStartIndex:(int64_t)index fittingLength:(double)length hasExpandedActiveIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v9 = 40;
  if (indicator)
  {
    v9 = 176;
  }

  v10 = self + v9;
  if ((*(&self->super.isa + v9) & 1) == 0 && *(v10 + 1) == length && *(v10 + 2) == index)
  {
    return *(v10 + 3);
  }

  [(_UIPageIndicatorStore *)self indicatorSpacing];
  v13 = v12;
  v14 = v12 + length;
  v30 = v12 + length;
  v15 = [(_UIPageIndicatorStore *)self objectIndexForPage:index];
  v29 = 0x10000000000000;
  if (indicatorCopy)
  {
    v16 = &v29;
  }

  else
  {
    v16 = 0;
  }

  store = [(_UIPageIndicatorStore *)self store];
  v18 = [store count];

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
      store2 = [(_UIPageIndicatorStore *)self store];
      v22 = [store2 count];
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
  *(v10 + 1) = length;
  *(v10 + 2) = index;
  *(v10 + 3) = v11;
  return v11;
}

- (CGSize)sizeForMaximumContentSizeFittingLength:(double)length hasExpandedActiveIndicator:(BOOL)indicator
{
  v5 = 8;
  if (indicator)
  {
    v5 = 144;
  }

  v6 = (self + v5);
  if ((*(&self->super.isa + v5) & 1) != 0 || v6[1] != length)
  {
    [(_UIPageIndicatorStore *)self _sizeForMaximumContentSizeFittingLength:length hasExpandedActiveIndicator:?];
    *v6 &= ~1u;
    v6[1] = length;
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

- (CGSize)_sizeForMaximumContentSizeFittingLength:(double)length hasExpandedActiveIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  delegate = [(_UIPageIndicatorStore *)self delegate];
  maxVisibleIndicators = [delegate maxVisibleIndicators];

  numberOfPages = [(_UIPageIndicatorStore *)self numberOfPages];
  [(_UIPageIndicatorStore *)self indicatorSpacing];
  j = -v9;
  v11 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  if ([(_UIPageIndicatorStore *)self direction]< 2)
  {
    v11 = j;
    j = v12;
  }

  store = [(_UIPageIndicatorStore *)self store];
  v14 = [store count];

  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      store2 = [(_UIPageIndicatorStore *)self store];
      v48 = v16;
      v19 = [store2 objectAtIndex:v16];

      [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v19];
      v21 = v20;
      v23 = v22;
      for (i = [v19 startIndex]; i < objc_msgSend(v19, "endIndex") && v17 < numberOfPages; ++i)
      {
        v50 = j;
        [(_UIPageIndicatorStore *)self indicatorSpacing];
        v26 = -v25;
        v27 = 0.0;
        if (i >= numberOfPages || maxVisibleIndicators < 1)
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
                store3 = [(_UIPageIndicatorStore *)self store];
                v33 = [store3 objectAtIndex:{-[_UIPageIndicatorStore objectIndexForPage:](self, "objectIndexForPage:", v17)}];

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
            if (v26 + v27 > length)
            {
              break;
            }

            if (++v17 < numberOfPages)
            {
              v26 = v26 + v27;
              if (v29++ < maxVisibleIndicators)
              {
                continue;
              }
            }

            goto LABEL_24;
          }

          v37 = v26;
        }

LABEL_24:
        if (indicatorCopy)
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

        if (v37 <= length && v39 < v37)
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

      direction = [(_UIPageIndicatorStore *)self direction];
      v42 = fmax(j, v23);
      v43 = fmax(v11, v21);
      if (direction < 2)
      {
        j = v42;
      }

      else
      {
        v11 = v43;
      }

      v16 = v48 + 1;
      store4 = [(_UIPageIndicatorStore *)self store];
      v45 = [store4 count];
    }

    while (v48 + 1 < v45);
  }

  v46 = v11;
  v47 = j;
  result.height = v47;
  result.width = v46;
  return result;
}

- (void)updateStoreForNumberOfPages:(int64_t)pages
{
  numberOfPages = [(_UIPageIndicatorStore *)self numberOfPages];
  if (numberOfPages != pages)
  {
    v6 = numberOfPages;
    store = [(_UIPageIndicatorStore *)self store];
    lastObject = [store lastObject];

    if (v6 >= pages)
    {
      if (v6 > pages)
      {
        v11 = [(_UIPageIndicatorStore *)self objectIndexForPage:pages];
        store2 = [(_UIPageIndicatorStore *)self store];
        v13 = [store2 objectAtIndex:v11];

        [v13 setEndIndex:pages];
        store3 = [(_UIPageIndicatorStore *)self store];
        v15 = [store3 count] - 1;

        if (v11 < v15)
        {
          store4 = [(_UIPageIndicatorStore *)self store];
          store5 = [(_UIPageIndicatorStore *)self store];
          [store4 removeObjectsInRange:{v11 + 1, objc_msgSend(store5, "count") + ~v11}];
        }

        startIndex = [v13 startIndex];
        if (startIndex >= [v13 endIndex])
        {
          store6 = [(_UIPageIndicatorStore *)self store];
          [store6 removeObject:v13];
        }
      }
    }

    else
    {
      customImage = [lastObject customImage];

      if (customImage)
      {
        store7 = [(_UIPageIndicatorStore *)self store];
        v10 = [[_UIPageIndicatorStoreObject alloc] initWithStartIndex:v6 endIndex:pages];
        [store7 addObject:v10];
      }

      else
      {
        [lastObject setEndIndex:pages];
      }
    }

    store8 = [(_UIPageIndicatorStore *)self store];
    v21 = [store8 count];

    if (!v21)
    {
      [(_UIPageIndicatorStore *)self _resetStore];
    }

    [(_UIPageIndicatorStore *)self invalidateLayoutCache];
  }
}

- (void)_updateImage:(id)image forPage:(int64_t)page active:(BOOL)active
{
  if (image)
  {
    [(_UIPageIndicatorStore *)self _insertImage:image forPage:page active:active];
  }

  else
  {
    [(_UIPageIndicatorStore *)self _removeImageForPage:page active:active];
  }

  [(_UIPageIndicatorStore *)self validateDataStore];

  [(_UIPageIndicatorStore *)self invalidateLayoutCache];
}

- (CGSize)contentSizeForNumberOfPages:(int64_t)pages hasExpandedActiveIndicator:(BOOL)indicator
{
  v4 = 72;
  if (indicator)
  {
    v4 = 208;
  }

  v5 = (self + v4);
  if (*(&self->super.isa + v4))
  {
    pagesCopy2 = pages;
    goto LABEL_7;
  }

  pagesCopy2 = pages;
  if (v5[1] != pages)
  {
LABEL_7:
    [(_UIPageIndicatorStore *)self _contentSizeForIndicatorsInRange:0 hasExpandedActiveIndicator:pages];
    *v5 &= ~1u;
    v5[1] = pagesCopy2;
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

- (CGSize)minimumContentSizeForIndicatorsInRange:(_NSRange)range hasExpandedActiveIndicator:(BOOL)indicator
{
  length = range.length;
  location = range.location;
  v6 = 104;
  if (indicator)
  {
    v6 = 240;
  }

  v7 = (self + v6);
  if ((*(&self->super.isa + v6) & 1) == 0 && (*(v7 + 1) == range.location ? (v8 = *(v7 + 2) == range.length) : (v8 = 0), v8))
  {
    v9 = v7[3];
    v10 = v7[4];
  }

  else
  {
    [(_UIPageIndicatorStore *)self _contentSizeForIndicatorsInRange:range.location hasExpandedActiveIndicator:range.length];
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

- (CGSize)_contentSizeForIndicatorsInRange:(_NSRange)range hasExpandedActiveIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  length = range.length;
  location = range.location;
  v53 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  direction = [(_UIPageIndicatorStore *)self direction];
  [(_UIPageIndicatorStore *)self indicatorSpacing];
  v12 = v11 * (length - 1);
  if (direction < 2)
  {
    v8 = v12;
  }

  v48 = 0u;
  v49 = 0u;
  if (direction >= 2)
  {
    v9 = v12;
  }

  v13 = location + length;
  v50 = 0uLL;
  v51 = 0uLL;
  store = [(_UIPageIndicatorStore *)self store];
  v15 = [store countByEnumeratingWithState:&v48 objects:v52 count:16];
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
        objc_enumerationMutation(store);
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
        startIndex = [v20 startIndex];
        if (location <= startIndex)
        {
          v26 = startIndex;
        }

        else
        {
          v26 = location;
        }

        endIndex = [v20 endIndex];
        if (v13 >= endIndex)
        {
          v28 = endIndex;
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

        direction2 = [(_UIPageIndicatorStore *)self direction];
        if (direction2 >= 2)
        {
          v31 = v9;
        }

        else
        {
          v31 = v8;
        }

        if (direction2 >= 2)
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
        v16 = [store countByEnumeratingWithState:&v48 objects:v52 count:16];
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
    direction3 = [(_UIPageIndicatorStore *)self direction];
    v34 = v32;
    direction4 = [(_UIPageIndicatorStore *)self direction];
    [(_UIPageIndicatorStore *)self defaultIndicatorSize];
    if (direction4 >= 2)
    {
      v36 = v37;
    }

    v38 = v36 * v34;
    if (direction3 >= 2)
    {
      v39 = v9;
    }

    else
    {
      v39 = v8;
    }

    v40 = v39 + v38;
    if (direction3 >= 2)
    {
      v9 = v40;
    }

    else
    {
      v8 = v40;
    }
  }

  if (indicatorCopy)
  {
    direction5 = [(_UIPageIndicatorStore *)self direction];
    [(_UIPageIndicatorStore *)self indicatorSpacing];
    v43 = v18 + v42;
    if (direction5 >= 2)
    {
      v44 = v9;
    }

    else
    {
      v44 = v8;
    }

    v45 = v44 + v43;
    if (direction5 >= 2)
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

- (double)indicatorPositionForContinuousPage:(double)page expandedIndicatorPage:(int64_t)indicatorPage
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  store = [(_UIPageIndicatorStore *)self store];
  v8 = [store countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v12 = indicatorPage >= 0 && page > indicatorPage;
    v13 = 0.0;
LABEL_9:
    v14 = 0;
    while (1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(store);
      }

      v15 = *(*(&v32 + 1) + 8 * v14);
      startIndex = [v15 startIndex];
      if (startIndex >= page)
      {
        break;
      }

      direction = [(_UIPageIndicatorStore *)self direction];
      [(_UIPageIndicatorStore *)self _indicatorSizeForObject:v15];
      if (direction >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      v21 = fmin(page, [v15 endIndex]);
      v22 = v21 - [v15 startIndex];
      [(_UIPageIndicatorStore *)self indicatorSpacing];
      v13 = v13 + (v20 + v23) * v22;
      if (v12 && [v15 validPageWithinBound:indicatorPage])
      {
        if (([v15 validPageWithinBound:indicatorPage + 1] & 1) != 0 || indicatorPage + 1 == -[_UIPageIndicatorStore numberOfPages](self, "numberOfPages"))
        {
          [(_UIPageIndicatorStore *)self indicatorSpacing];
          v25 = v20 + v24;
        }

        else
        {
          direction2 = [(_UIPageIndicatorStore *)self direction];
          [(_UIPageIndicatorStore *)self indicatorSizeForPage:indicatorPage + 1];
          if (direction2 >= 2)
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
        v9 = [store countByEnumeratingWithState:&v32 objects:v36 count:16];
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

- (void)_insertImage:(id)image forPage:(int64_t)page active:(BOOL)active
{
  activeCopy = active;
  imageCopy = image;
  v9 = [(_UIPageIndicatorStore *)self objectIndexForPage:page];
  store = [(_UIPageIndicatorStore *)self store];
  v13 = [store objectAtIndex:v9];

  store2 = [(_UIPageIndicatorStore *)self store];
  v12 = [v13 splitAtIndex:page withImage:imageCopy active:activeCopy];

  [store2 replaceObjectsInRange:v9 withObjectsFromArray:{1, v12}];
}

- (void)_removeImageForPage:(int64_t)page active:(BOOL)active
{
  v6 = [(_UIPageIndicatorStore *)self objectIndexForPage:page];
  store = [(_UIPageIndicatorStore *)self store];
  v18 = [store objectAtIndex:v6];

  if (active)
  {
    [v18 setActiveImage:0];
  }

  else
  {
    [v18 setCustomImage:0];
  }

  if (([v18 hasImage] & 1) == 0)
  {
    store2 = [(_UIPageIndicatorStore *)self store];
    if (v6 >= ([store2 count] - 1))
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
      store3 = [(_UIPageIndicatorStore *)self store];
      v10 = [store3 objectAtIndex:v6 + 1];

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

    store4 = [(_UIPageIndicatorStore *)self store];
    v11 = [store4 objectAtIndex:v6 - 1];

    if (v10)
    {
      hasImage = [v10 hasImage];
      v14 = hasImage;
      if (v11)
      {
        hasImage2 = [v11 hasImage];
        if (((v14 | hasImage2) & 1) == 0)
        {
          [v11 setEndIndex:{objc_msgSend(v10, "endIndex")}];
          store5 = [(_UIPageIndicatorStore *)self store];
          [store5 removeObjectAtIndex:v6 + 1];

          goto LABEL_24;
        }

        if (v14)
        {
          if (hasImage2)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }

LABEL_21:
        [v10 setStartIndex:{objc_msgSend(v18, "startIndex")}];
LABEL_24:
        store6 = [(_UIPageIndicatorStore *)self store];
        [store6 removeObjectAtIndex:v6];

        goto LABEL_25;
      }

      if ((hasImage & 1) == 0)
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

- (int64_t)objectIndexForPage:(int64_t)page
{
  if (page < 0 || [(_UIPageIndicatorStore *)self numberOfPages]<= page)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPageIndicatorStore.m" lineNumber:693 description:{@"[UIPageControl] Page out-of-bounds. Requested %ld but the page control only has %ld pages.", page, -[_UIPageIndicatorStore numberOfPages](self, "numberOfPages")}];
  }

  store = [(_UIPageIndicatorStore *)self store];
  v7 = -[_UIPageIndicatorStore _objectIndexForPage:lower:upper:](self, "_objectIndexForPage:lower:upper:", page, 0, [store count]);

  return v7;
}

- (int64_t)_objectIndexForPage:(int64_t)page lower:(int64_t)lower upper:(int64_t)upper
{
  v10 = upper - lower;
  if (upper < lower)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPageIndicatorStore.m" lineNumber:699 description:{@"[UIPageControl] Failed to find page index. Tried to look for %ld.", page}];
  }

  v11 = lower + v10 / 2;
  store = [(_UIPageIndicatorStore *)self store];
  v13 = [store objectAtIndex:v11];

  if (([v13 validPageWithinBound:page] & 1) == 0)
  {
    if ([v13 startIndex] > page)
    {
      upperCopy = v11 - 1;
      selfCopy2 = self;
      pageCopy2 = page;
      lowerCopy = lower;
LABEL_9:
      v11 = [(_UIPageIndicatorStore *)selfCopy2 _objectIndexForPage:pageCopy2 lower:lowerCopy upper:upperCopy];
      goto LABEL_10;
    }

    if ([v13 endIndex] <= page)
    {
      lowerCopy = v11 + 1;
      selfCopy2 = self;
      pageCopy2 = page;
      upperCopy = upper;
      goto LABEL_9;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPageIndicatorStore.m" lineNumber:709 description:{@"Uhm, this shouldn't be possible?"}];

    v11 = -1;
  }

LABEL_10:

  return v11;
}

@end