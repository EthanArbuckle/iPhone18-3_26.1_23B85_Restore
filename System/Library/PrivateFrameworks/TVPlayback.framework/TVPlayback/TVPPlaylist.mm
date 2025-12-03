@interface TVPPlaylist
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)_isMediaItemExplicit:(id)explicit;
- (BOOL)changeToActiveListIndex:(unint64_t)index withContext:(id)context;
- (BOOL)isEqualToPlaylist:(id)playlist;
- (BOOL)moreItemsAvailable:(int64_t)available;
- (NSArray)upcomingItems;
- (TVPPlaylist)initWithMediaItems:(id)items index:(int64_t)index isCollection:(BOOL)collection;
- (unint64_t)_nextActiveListIndex;
- (unint64_t)_previousActiveListIndex;
- (void)_shuffle:(BOOL)_shuffle;
- (void)_updateCurrent:(BOOL)current andNextItems:(BOOL)items withContext:(id)context;
- (void)addItem:(id)item;
- (void)addItems:(id)items;
- (void)addItemsToUpNext:(id)next;
- (void)changeMedia:(int64_t)media withContext:(id)context;
- (void)insertItem:(id)item atIndex:(unint64_t)index;
- (void)insertItems:(id)items atIndexes:(id)indexes;
- (void)removeItemAtIndex:(unint64_t)index;
- (void)removeItemsAtIndexes:(id)indexes;
- (void)setEndAction:(int64_t)action;
- (void)setRepeatMode:(int64_t)mode;
- (void)setSkipExplicit:(BOOL)explicit;
- (void)setUpcomingItemsLimit:(unint64_t)limit;
- (void)setWindowed:(BOOL)windowed;
@end

@implementation TVPPlaylist

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"shuffleEnabled"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"endAction"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___TVPPlaylist;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (TVPPlaylist)initWithMediaItems:(id)items index:(int64_t)index isCollection:(BOOL)collection
{
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = TVPPlaylist;
  v8 = [(TVPPlaylist *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_upcomingItemsLimit = 20;
    v8->_endAction = 0;
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:itemsCopy];
    trackList = v9->_trackList;
    v9->_trackList = v10;

    objc_storeStrong(&v9->_activeList, v9->_trackList);
    shuffledItems = v9->_shuffledItems;
    v9->_shuffledItems = 0;
    v9->_activeListIndex = index;

    [(TVPPlaylist *)v9 _updateCurrent:0 andNextItems:0 withContext:0];
  }

  return v9;
}

- (BOOL)isEqualToPlaylist:(id)playlist
{
  playlistCopy = playlist;
  v5 = playlistCopy;
  if (playlistCopy)
  {
    if (self == playlistCopy)
    {
      v14 = 1;
      goto LABEL_10;
    }

    trackList = [(TVPPlaylist *)self trackList];
    v7 = [trackList count];
    trackList2 = [(TVPPlaylist *)v5 trackList];
    v9 = [trackList2 count];

    if (v7 == v9)
    {
      repeatMode = [(TVPPlaylist *)self repeatMode];
      if (repeatMode == [(TVPPlaylist *)v5 repeatMode])
      {
        shuffleEnabled = [(TVPPlaylist *)self shuffleEnabled];
        if (shuffleEnabled == [(TVPPlaylist *)v5 shuffleEnabled])
        {
          endAction = [(TVPPlaylist *)self endAction];
          if (endAction == [(TVPPlaylist *)v5 endAction])
          {
            skipExplicit = [(TVPPlaylist *)self skipExplicit];
            if (skipExplicit == [(TVPPlaylist *)v5 skipExplicit])
            {
              v20 = 0;
              v21 = &v20;
              v22 = 0x2020000000;
              v23 = 1;
              trackList3 = [(TVPPlaylist *)self trackList];
              v17[0] = MEMORY[0x277D85DD0];
              v17[1] = 3221225472;
              v17[2] = __33__TVPPlaylist_isEqualToPlaylist___block_invoke;
              v17[3] = &unk_279D7B938;
              v18 = v5;
              v19 = &v20;
              [trackList3 enumerateObjectsUsingBlock:v17];

              v14 = *(v21 + 24);
              _Block_object_dispose(&v20, 8);
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  v14 = 0;
LABEL_10:

  return v14 & 1;
}

void __33__TVPPlaylist_isEqualToPlaylist___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 trackList];
  v10 = [v9 objectAtIndex:a3];

  LOBYTE(a3) = [v8 isEqualToMediaItem:v10];
  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)changeMedia:(int64_t)media withContext:(id)context
{
  v6 = MEMORY[0x277CCAB98];
  contextCopy = context;
  defaultCenter = [v6 defaultCenter];
  [defaultCenter postNotificationName:@"TVPPlaylistMediaChangeRequestedNotification" object:self userInfo:contextCopy];

  v20 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:contextCopy];

  if (self->_windowed)
  {
    if (media == 1)
    {
      goto LABEL_28;
    }

    if ([(NSMutableArray *)self->_trackList count])
    {
      [(NSMutableArray *)self->_trackList removeObjectAtIndex:0];
    }

    self->_activeListIndex = 0;
    v9 = [v20 objectForKeyedSubscript:@"direction"];

    if (v9)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (media != 1)
  {
    if (media)
    {
      goto LABEL_28;
    }

    repeatMode = self->_repeatMode;
    if (repeatMode != 2)
    {
      if (repeatMode == 1)
      {
        _nextActiveListIndex = [(TVPPlaylist *)self _nextActiveListIndex];
        self->_activeListIndex = _nextActiveListIndex % [(NSMutableArray *)self->_trackList count];
      }

      else
      {
        activeListIndex = self->_activeListIndex;
        if (activeListIndex < [(NSArray *)self->_activeList count])
        {
          _nextActiveListIndex2 = [(TVPPlaylist *)self _nextActiveListIndex];
          self->_activeListIndex = _nextActiveListIndex2;
          if (_nextActiveListIndex2 == [(NSArray *)self->_activeList count])
          {
            [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TVPPlaylistDidHitEndKey"];
          }
        }
      }
    }

LABEL_24:
    v16 = &unk_287E59678;
    v17 = @"direction";
    goto LABEL_25;
  }

  if ([(TVPPlaylist *)self moreItemsAvailable:1])
  {
    v12 = self->_repeatMode;
    v13 = v20;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (!self->_activeListIndex)
        {
          v14 = [(NSArray *)self->_activeList count];
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          self->_activeListIndex = v15 - 1;
          goto LABEL_33;
        }

LABEL_32:
        self->_activeListIndex = [(TVPPlaylist *)self _previousActiveListIndex];
LABEL_33:
        v13 = v20;
        goto LABEL_34;
      }

      if (self->_activeListIndex)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v16 = &unk_287E59690;
    v17 = @"direction";
    goto LABEL_26;
  }

  [v20 setObject:&unk_287E59690 forKeyedSubscript:@"direction"];
  v16 = MEMORY[0x277CBEC38];
  v17 = @"TVPPlaylistDidHitBeginningKey";
LABEL_25:
  v13 = v20;
LABEL_26:
  [v13 setObject:v16 forKeyedSubscript:v17];
LABEL_27:
  [(TVPPlaylist *)self _updateCurrent:0 andNextItems:0 withContext:v20];
LABEL_28:
}

- (BOOL)changeToActiveListIndex:(unint64_t)index withContext:(id)context
{
  contextCopy = context;
  if ([(NSArray *)self->_activeList count]<= index || [(TVPPlaylist *)self skipExplicit]&& ([(NSArray *)self->_activeList objectAtIndex:index], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(TVPPlaylist *)self _isMediaItemExplicit:v7], v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:contextCopy];
    v11 = v10;
    if (self->_windowed)
    {
      [v10 setObject:&unk_287E59678 forKey:@"direction"];
      [(NSMutableArray *)self->_trackList removeObjectsInRange:0, index - 1];
      self->_activeListIndex = 0;
    }

    else
    {
      index = [MEMORY[0x277CCABB0] numberWithInteger:self->_activeListIndex >= index];
      [v11 setObject:index forKey:@"direction"];

      self->_activeListIndex = index;
    }

    [(TVPPlaylist *)self _updateCurrent:0 andNextItems:0 withContext:v11];

    v9 = 1;
  }

  return v9;
}

- (unint64_t)_nextActiveListIndex
{
  v3 = self->_activeListIndex + 1;
  if ([(TVPPlaylist *)self skipExplicit])
  {
    while (v3 < [(NSArray *)self->_activeList count])
    {
      v4 = [(NSArray *)self->_activeList objectAtIndex:v3];
      v5 = [(TVPPlaylist *)self _isMediaItemExplicit:v4];

      if (!v5)
      {
        break;
      }

      ++v3;
    }
  }

  return v3;
}

- (unint64_t)_previousActiveListIndex
{
  activeListIndex = self->_activeListIndex;
  if (activeListIndex)
  {
    v4 = activeListIndex - 1;
  }

  else
  {
    v4 = 0;
  }

  if ([(TVPPlaylist *)self skipExplicit]&& activeListIndex >= 2)
  {
    v4 = activeListIndex - 1;
    do
    {
      v5 = [(NSArray *)self->_activeList objectAtIndex:v4];
      v6 = [(TVPPlaylist *)self _isMediaItemExplicit:v5];

      if (!v6)
      {
        break;
      }

      --v4;
    }

    while (v4);
  }

  return v4;
}

- (BOOL)_isMediaItemExplicit:(id)explicit
{
  explicitCopy = explicit;
  v4 = [explicitCopy mediaItemMetadataForProperty:@"TVPMediaItemMetadataContentRatingDomain"];
  v5 = [explicitCopy mediaItemMetadataForProperty:@"TVPMediaItemMetadataContentRatingIsExplicitMusic"];

  if ([v4 isEqualToString:@"music"])
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setSkipExplicit:(BOOL)explicit
{
  if (self->_skipExplicit != explicit)
  {
    self->_skipExplicit = explicit;
    [(TVPPlaylist *)self _updateCurrent:1 andNextItems:1 withContext:0];
  }
}

- (BOOL)moreItemsAvailable:(int64_t)available
{
  windowed = self->_windowed;
  result = available == 0;
  if (!windowed)
  {
    if (available)
    {
      if ((self->_repeatMode - 1) < 2)
      {
        return 1;
      }

      activeListIndex = self->_activeListIndex;
    }

    else
    {
      activeListIndex = self->_nextMediaItem;
    }

    return activeListIndex != 0;
  }

  return result;
}

- (void)_updateCurrent:(BOOL)current andNextItems:(BOOL)items withContext:(id)context
{
  itemsCopy = items;
  currentCopy = current;
  v29[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    objc_storeStrong(&self->_changeContext, context);
  }

  upcomingItems = self->_upcomingItems;
  self->_upcomingItems = 0;

  [(TVPPlaylist *)self willChangeValueForKey:@"upcomingItems"];
  upcomingItems = [(TVPPlaylist *)self upcomingItems];
  activeListIndex = self->_activeListIndex;
  v13 = 0;
  if (activeListIndex < [(NSArray *)self->_activeList count])
  {
    v13 = [(NSArray *)self->_activeList objectAtIndexedSubscript:self->_activeListIndex];
  }

  if (currentCopy && v13 == self->_currentMediaItem)
  {
    v27 = 0;
  }

  else
  {
    if (!contextCopy)
    {
      v28 = @"direction";
      v29[0] = &unk_287E59678;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      [(TVPPlaylist *)self setChangeContext:v14];
    }

    [(TVPPlaylist *)self willChangeValueForKey:@"currentMediaItem"];
    objc_storeStrong(&self->_currentMediaItem, v13);
    v27 = 1;
  }

  if ([upcomingItems count])
  {
    v15 = [upcomingItems objectAtIndexedSubscript:0];
    if (!itemsCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    if (!itemsCopy)
    {
LABEL_15:
      [(TVPPlaylist *)self willChangeValueForKey:@"nextMediaItem"];
      objc_storeStrong(&self->_nextMediaItem, v15);
      v16 = 1;
      goto LABEL_16;
    }
  }

  if (v15 != self->_nextMediaItem)
  {
    goto LABEL_15;
  }

  v16 = 0;
LABEL_16:
  if ([(TVPPlaylist *)self moreItemsAvailable:1])
  {
    if (self->_repeatMode == 2)
    {
      v17 = self->_currentMediaItem;
    }

    else
    {
      v17 = 0;
    }

    v18 = self->_activeListIndex;
    if (v18 && v18 <= [(NSArray *)self->_activeList count])
    {
      v19 = [(NSArray *)self->_activeList objectAtIndexedSubscript:[(TVPPlaylist *)self _previousActiveListIndex]];

      v17 = v19;
    }
  }

  else
  {
    v17 = 0;
  }

  previousMediaItem = self->_previousMediaItem;
  if (previousMediaItem != v17)
  {
    [(TVPPlaylist *)self willChangeValueForKey:@"previousMediaItem"];
    objc_storeStrong(&self->_previousMediaItem, v17);
  }

  v21 = [(NSMutableArray *)self->_trackList count];
  if (v21 != self->_count)
  {
    [(TVPPlaylist *)self setCount:v21];
  }

  v22 = self->_activeListIndex;
  if (v22 + 1 < v21)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = v21;
  }

  if (v23 != self->_currentIndex)
  {
    [(TVPPlaylist *)self setCurrentIndex:?];
    v22 = self->_activeListIndex;
  }

  if (v22 >= self->_upNextIndex)
  {
    v24 = [(NSArray *)self->_activeList count];
    if (v22 + 1 < v24)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = v24;
    }

    self->_upNextIndex = v25;
  }

  if (v27)
  {
    [(TVPPlaylist *)self didChangeValueForKey:@"currentMediaItem"];
  }

  if (v16)
  {
    [(TVPPlaylist *)self didChangeValueForKey:@"nextMediaItem"];
  }

  if (previousMediaItem != v17)
  {
    [(TVPPlaylist *)self didChangeValueForKey:@"previousMediaItem"];
  }

  [(TVPPlaylist *)self didChangeValueForKey:@"upcomingItems"];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setWindowed:(BOOL)windowed
{
  if (windowed && self->_endAction != 2)
  {
    [(TVPPlaylist *)self setEndAction:2];
  }

  self->_windowed = windowed;

  [(TVPPlaylist *)self _updateCurrent:1 andNextItems:1 withContext:0];
}

- (void)setEndAction:(int64_t)action
{
  if (!self->_windowed && self->_endAction != action)
  {
    [(TVPPlaylist *)self willChangeValueForKey:@"endAction"];
    self->_endAction = action;

    [(TVPPlaylist *)self didChangeValueForKey:@"endAction"];
  }
}

- (void)_shuffle:(BOOL)_shuffle
{
  _shuffleCopy = _shuffle;
  v5 = [(NSMutableArray *)self->_trackList mutableCopy];
  shuffledItems = self->_shuffledItems;
  self->_shuffledItems = v5;

  [(NSMutableArray *)self->_shuffledItems tvp_shuffle];
  if (_shuffleCopy && self->_currentMediaItem)
  {
    [(NSMutableArray *)self->_shuffledItems removeObject:?];
    [(NSMutableArray *)self->_shuffledItems insertObject:self->_currentMediaItem atIndex:0];
  }

  self->_activeListIndex = 0;
  v7 = self->_shuffledItems;

  objc_storeStrong(&self->_activeList, v7);
}

- (void)setRepeatMode:(int64_t)mode
{
  if (self->_repeatMode != mode && [(TVPPlaylist *)self supportsRepeat])
  {
    self->_repeatMode = mode;

    [(TVPPlaylist *)self _updateCurrent:1 andNextItems:1 withContext:0];
  }
}

- (void)addItem:(id)item
{
  trackList = self->_trackList;
  itemCopy = item;
  [(TVPPlaylist *)self insertItem:itemCopy atIndex:[(NSMutableArray *)trackList count]];
}

- (void)addItems:(id)items
{
  v4 = MEMORY[0x277CCAA78];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIndexesInRange:{-[NSMutableArray count](self->_trackList, "count"), objc_msgSend(itemsCopy, "count")}];
  [(TVPPlaylist *)self insertItems:itemsCopy atIndexes:v6];
}

- (void)insertItem:(id)item atIndex:(unint64_t)index
{
  v10[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([(NSMutableArray *)self->_trackList count]< index)
  {
    index = [(NSMutableArray *)self->_trackList count];
  }

  v10[0] = itemCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  [(TVPPlaylist *)self insertItems:v7 atIndexes:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)insertItems:(id)items atIndexes:(id)indexes
{
  itemsCopy = items;
  indexesCopy = indexes;
  activeListIndex = self->_activeListIndex;
  if (activeListIndex < [(NSArray *)self->_activeList count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v9 = self->_activeListIndex;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__TVPPlaylist_insertItems_atIndexes___block_invoke;
    v10[3] = &unk_279D7B960;
    v10[4] = self;
    v10[5] = &v15;
    v10[6] = &v11;
    v10[7] = v9;
    [indexesCopy enumerateRangesUsingBlock:v10];
    self->_activeListIndex += v16[3];
    self->_upNextIndex += v12[3];
    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
  }

  if (self->_shuffleEnabled)
  {
    [(NSMutableArray *)self->_shuffledItems insertObjects:itemsCopy atIndexes:indexesCopy];
    [(NSMutableArray *)self->_trackList addObjectsFromArray:itemsCopy];
  }

  else
  {
    [(NSMutableArray *)self->_trackList insertObjects:itemsCopy atIndexes:indexesCopy];
  }

  [(TVPPlaylist *)self _updateCurrent:1 andNextItems:1 withContext:0];
}

void *__37__TVPPlaylist_insertItems_atIndexes___block_invoke(void *result, unint64_t a2, uint64_t a3)
{
  if (a2 <= result[7])
  {
    *(*(result[5] + 8) + 24) += a3;
  }

  if (a2 <= *(result[4] + 144))
  {
    *(*(result[6] + 8) + 24) += a3;
  }

  return result;
}

- (void)removeItemAtIndex:(unint64_t)index
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:index];
  [(TVPPlaylist *)self removeItemsAtIndexes:v4];
}

- (void)removeItemsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = [indexesCopy containsIndex:self->_activeListIndex];
  if (self->_shuffleEnabled)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __36__TVPPlaylist_removeItemsAtIndexes___block_invoke;
    v18 = &unk_279D7B988;
    selfCopy = self;
    v20 = v6;
    v7 = v6;
    [indexesCopy enumerateIndexesUsingBlock:&v15];
    [(NSMutableArray *)self->_trackList removeObjectsAtIndexes:v7, v15, v16, v17, v18, selfCopy];
    [(NSMutableArray *)self->_shuffledItems removeObjectsAtIndexes:indexesCopy];
  }

  else
  {
    [(NSMutableArray *)self->_trackList removeObjectsAtIndexes:indexesCopy];
  }

  v8 = [indexesCopy countOfIndexesInRange:{0, self->_activeListIndex}];
  activeListIndex = self->_activeListIndex;
  v10 = activeListIndex >= v8;
  v11 = activeListIndex - v8;
  if (!v10)
  {
    v11 = 0;
  }

  self->_activeListIndex = v11;
  v12 = [indexesCopy countOfIndexesInRange:{0, self->_upNextIndex}];
  upNextIndex = self->_upNextIndex;
  v10 = upNextIndex >= v12;
  v14 = upNextIndex - v12;
  if (!v10)
  {
    v14 = 0;
  }

  self->_upNextIndex = v14;
  [(TVPPlaylist *)self _updateCurrent:v5 ^ 1u andNextItems:1 withContext:0];
}

unint64_t __36__TVPPlaylist_removeItemsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5 = [*(v3 + 16) objectAtIndexedSubscript:a2];
  v6 = [v4 indexOfObject:v5];

  result = [*(*(a1 + 32) + 8) count];
  if (v6 < result)
  {
    v8 = *(a1 + 40);

    return [v8 addIndex:v6];
  }

  return result;
}

- (NSArray)upcomingItems
{
  if (!self->_upcomingItems)
  {
    repeatMode = self->_repeatMode;
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_upcomingItemsLimit];
    if (repeatMode == 1)
    {
      if ([(NSArray *)self->_activeList count])
      {
        activeListIndex = self->_activeListIndex;
        if ([(NSArray *)v4 count]< self->_upcomingItemsLimit)
        {
          v7 = activeListIndex + 1;
          do
          {
            v8 = [(NSArray *)self->_activeList objectAtIndex:v7 % [(NSArray *)self->_activeList count]];
            if (![(TVPPlaylist *)self skipExplicit]|| ![(TVPPlaylist *)self _isMediaItemExplicit:v8])
            {
              [(NSArray *)v4 addObject:v8];
            }

            ++v7;
          }

          while ([(NSArray *)v4 count]< self->_upcomingItemsLimit);
        }
      }
    }

    else if (repeatMode == 2)
    {
      if (self->_upcomingItemsLimit)
      {
        v5 = 0;
        do
        {
          if (!self->_currentMediaItem)
          {
            break;
          }

          [(NSArray *)v4 addObject:?];
          ++v5;
        }

        while (v5 < self->_upcomingItemsLimit);
      }
    }

    else
    {
      v9 = self->_activeListIndex;
      if (v9 < [(NSArray *)self->_activeList count])
      {
        activeList = self->_activeList;
        for (i = self->_activeListIndex + 1; i < [(NSArray *)activeList count]&& [(NSArray *)v4 count]< self->_upcomingItemsLimit; ++i)
        {
          if (![(TVPPlaylist *)self skipExplicit]|| ([(NSArray *)self->_activeList objectAtIndexedSubscript:i], v12 = objc_claimAutoreleasedReturnValue(), v13 = [(TVPPlaylist *)self _isMediaItemExplicit:v12], v12, !v13))
          {
            v14 = [(NSArray *)self->_activeList objectAtIndexedSubscript:i];
            [(NSArray *)v4 addObject:v14];
          }

          activeList = self->_activeList;
        }
      }
    }

    upcomingItems = self->_upcomingItems;
    self->_upcomingItems = v4;
  }

  v16 = self->_upcomingItems;

  return v16;
}

- (void)setUpcomingItemsLimit:(unint64_t)limit
{
  if (limit <= 1)
  {
    limitCopy = 1;
  }

  else
  {
    limitCopy = limit;
  }

  self->_upcomingItemsLimit = limitCopy;
}

- (void)addItemsToUpNext:(id)next
{
  nextCopy = next;
  upNextIndex = [(TVPPlaylist *)self upNextIndex];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{upNextIndex, objc_msgSend(nextCopy, "count")}];
  [(TVPPlaylist *)self insertItems:nextCopy atIndexes:v6];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  keyCopy = key;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___TVPPlaylist;
  v5 = objc_msgSendSuper2(&v8, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  if (([keyCopy isEqualToString:@"supportsShuffle"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"supportsRepeat"))
  {
    v6 = [v5 setByAddingObject:@"windowed"];

    v5 = v6;
  }

  return v5;
}

@end