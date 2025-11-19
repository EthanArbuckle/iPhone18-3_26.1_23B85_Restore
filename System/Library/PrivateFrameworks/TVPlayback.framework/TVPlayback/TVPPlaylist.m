@interface TVPPlaylist
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (BOOL)_isMediaItemExplicit:(id)a3;
- (BOOL)changeToActiveListIndex:(unint64_t)a3 withContext:(id)a4;
- (BOOL)isEqualToPlaylist:(id)a3;
- (BOOL)moreItemsAvailable:(int64_t)a3;
- (NSArray)upcomingItems;
- (TVPPlaylist)initWithMediaItems:(id)a3 index:(int64_t)a4 isCollection:(BOOL)a5;
- (unint64_t)_nextActiveListIndex;
- (unint64_t)_previousActiveListIndex;
- (void)_shuffle:(BOOL)a3;
- (void)_updateCurrent:(BOOL)a3 andNextItems:(BOOL)a4 withContext:(id)a5;
- (void)addItem:(id)a3;
- (void)addItems:(id)a3;
- (void)addItemsToUpNext:(id)a3;
- (void)changeMedia:(int64_t)a3 withContext:(id)a4;
- (void)insertItem:(id)a3 atIndex:(unint64_t)a4;
- (void)insertItems:(id)a3 atIndexes:(id)a4;
- (void)removeItemAtIndex:(unint64_t)a3;
- (void)removeItemsAtIndexes:(id)a3;
- (void)setEndAction:(int64_t)a3;
- (void)setRepeatMode:(int64_t)a3;
- (void)setSkipExplicit:(BOOL)a3;
- (void)setUpcomingItemsLimit:(unint64_t)a3;
- (void)setWindowed:(BOOL)a3;
@end

@implementation TVPPlaylist

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"shuffleEnabled"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"endAction"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___TVPPlaylist;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v5;
}

- (TVPPlaylist)initWithMediaItems:(id)a3 index:(int64_t)a4 isCollection:(BOOL)a5
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = TVPPlaylist;
  v8 = [(TVPPlaylist *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_upcomingItemsLimit = 20;
    v8->_endAction = 0;
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v7];
    trackList = v9->_trackList;
    v9->_trackList = v10;

    objc_storeStrong(&v9->_activeList, v9->_trackList);
    shuffledItems = v9->_shuffledItems;
    v9->_shuffledItems = 0;
    v9->_activeListIndex = a4;

    [(TVPPlaylist *)v9 _updateCurrent:0 andNextItems:0 withContext:0];
  }

  return v9;
}

- (BOOL)isEqualToPlaylist:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v14 = 1;
      goto LABEL_10;
    }

    v6 = [(TVPPlaylist *)self trackList];
    v7 = [v6 count];
    v8 = [(TVPPlaylist *)v5 trackList];
    v9 = [v8 count];

    if (v7 == v9)
    {
      v10 = [(TVPPlaylist *)self repeatMode];
      if (v10 == [(TVPPlaylist *)v5 repeatMode])
      {
        v11 = [(TVPPlaylist *)self shuffleEnabled];
        if (v11 == [(TVPPlaylist *)v5 shuffleEnabled])
        {
          v12 = [(TVPPlaylist *)self endAction];
          if (v12 == [(TVPPlaylist *)v5 endAction])
          {
            v13 = [(TVPPlaylist *)self skipExplicit];
            if (v13 == [(TVPPlaylist *)v5 skipExplicit])
            {
              v20 = 0;
              v21 = &v20;
              v22 = 0x2020000000;
              v23 = 1;
              v16 = [(TVPPlaylist *)self trackList];
              v17[0] = MEMORY[0x277D85DD0];
              v17[1] = 3221225472;
              v17[2] = __33__TVPPlaylist_isEqualToPlaylist___block_invoke;
              v17[3] = &unk_279D7B938;
              v18 = v5;
              v19 = &v20;
              [v16 enumerateObjectsUsingBlock:v17];

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

- (void)changeMedia:(int64_t)a3 withContext:(id)a4
{
  v6 = MEMORY[0x277CCAB98];
  v7 = a4;
  v8 = [v6 defaultCenter];
  [v8 postNotificationName:@"TVPPlaylistMediaChangeRequestedNotification" object:self userInfo:v7];

  v20 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];

  if (self->_windowed)
  {
    if (a3 == 1)
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

  if (a3 != 1)
  {
    if (a3)
    {
      goto LABEL_28;
    }

    repeatMode = self->_repeatMode;
    if (repeatMode != 2)
    {
      if (repeatMode == 1)
      {
        v11 = [(TVPPlaylist *)self _nextActiveListIndex];
        self->_activeListIndex = v11 % [(NSMutableArray *)self->_trackList count];
      }

      else
      {
        activeListIndex = self->_activeListIndex;
        if (activeListIndex < [(NSArray *)self->_activeList count])
        {
          v19 = [(TVPPlaylist *)self _nextActiveListIndex];
          self->_activeListIndex = v19;
          if (v19 == [(NSArray *)self->_activeList count])
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

- (BOOL)changeToActiveListIndex:(unint64_t)a3 withContext:(id)a4
{
  v6 = a4;
  if ([(NSArray *)self->_activeList count]<= a3 || [(TVPPlaylist *)self skipExplicit]&& ([(NSArray *)self->_activeList objectAtIndex:a3], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(TVPPlaylist *)self _isMediaItemExplicit:v7], v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
    v11 = v10;
    if (self->_windowed)
    {
      [v10 setObject:&unk_287E59678 forKey:@"direction"];
      [(NSMutableArray *)self->_trackList removeObjectsInRange:0, a3 - 1];
      self->_activeListIndex = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_activeListIndex >= a3];
      [v11 setObject:v12 forKey:@"direction"];

      self->_activeListIndex = a3;
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

- (BOOL)_isMediaItemExplicit:(id)a3
{
  v3 = a3;
  v4 = [v3 mediaItemMetadataForProperty:@"TVPMediaItemMetadataContentRatingDomain"];
  v5 = [v3 mediaItemMetadataForProperty:@"TVPMediaItemMetadataContentRatingIsExplicitMusic"];

  if ([v4 isEqualToString:@"music"])
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setSkipExplicit:(BOOL)a3
{
  if (self->_skipExplicit != a3)
  {
    self->_skipExplicit = a3;
    [(TVPPlaylist *)self _updateCurrent:1 andNextItems:1 withContext:0];
  }
}

- (BOOL)moreItemsAvailable:(int64_t)a3
{
  windowed = self->_windowed;
  result = a3 == 0;
  if (!windowed)
  {
    if (a3)
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

- (void)_updateCurrent:(BOOL)a3 andNextItems:(BOOL)a4 withContext:(id)a5
{
  v6 = a4;
  v7 = a3;
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (v9)
  {
    objc_storeStrong(&self->_changeContext, a5);
  }

  upcomingItems = self->_upcomingItems;
  self->_upcomingItems = 0;

  [(TVPPlaylist *)self willChangeValueForKey:@"upcomingItems"];
  v11 = [(TVPPlaylist *)self upcomingItems];
  activeListIndex = self->_activeListIndex;
  v13 = 0;
  if (activeListIndex < [(NSArray *)self->_activeList count])
  {
    v13 = [(NSArray *)self->_activeList objectAtIndexedSubscript:self->_activeListIndex];
  }

  if (v7 && v13 == self->_currentMediaItem)
  {
    v27 = 0;
  }

  else
  {
    if (!v9)
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

  if ([v11 count])
  {
    v15 = [v11 objectAtIndexedSubscript:0];
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    if (!v6)
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

- (void)setWindowed:(BOOL)a3
{
  if (a3 && self->_endAction != 2)
  {
    [(TVPPlaylist *)self setEndAction:2];
  }

  self->_windowed = a3;

  [(TVPPlaylist *)self _updateCurrent:1 andNextItems:1 withContext:0];
}

- (void)setEndAction:(int64_t)a3
{
  if (!self->_windowed && self->_endAction != a3)
  {
    [(TVPPlaylist *)self willChangeValueForKey:@"endAction"];
    self->_endAction = a3;

    [(TVPPlaylist *)self didChangeValueForKey:@"endAction"];
  }
}

- (void)_shuffle:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSMutableArray *)self->_trackList mutableCopy];
  shuffledItems = self->_shuffledItems;
  self->_shuffledItems = v5;

  [(NSMutableArray *)self->_shuffledItems tvp_shuffle];
  if (v3 && self->_currentMediaItem)
  {
    [(NSMutableArray *)self->_shuffledItems removeObject:?];
    [(NSMutableArray *)self->_shuffledItems insertObject:self->_currentMediaItem atIndex:0];
  }

  self->_activeListIndex = 0;
  v7 = self->_shuffledItems;

  objc_storeStrong(&self->_activeList, v7);
}

- (void)setRepeatMode:(int64_t)a3
{
  if (self->_repeatMode != a3 && [(TVPPlaylist *)self supportsRepeat])
  {
    self->_repeatMode = a3;

    [(TVPPlaylist *)self _updateCurrent:1 andNextItems:1 withContext:0];
  }
}

- (void)addItem:(id)a3
{
  trackList = self->_trackList;
  v5 = a3;
  [(TVPPlaylist *)self insertItem:v5 atIndex:[(NSMutableArray *)trackList count]];
}

- (void)addItems:(id)a3
{
  v4 = MEMORY[0x277CCAA78];
  v5 = a3;
  v6 = [[v4 alloc] initWithIndexesInRange:{-[NSMutableArray count](self->_trackList, "count"), objc_msgSend(v5, "count")}];
  [(TVPPlaylist *)self insertItems:v5 atIndexes:v6];
}

- (void)insertItem:(id)a3 atIndex:(unint64_t)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NSMutableArray *)self->_trackList count]< a4)
  {
    a4 = [(NSMutableArray *)self->_trackList count];
  }

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:a4];
  [(TVPPlaylist *)self insertItems:v7 atIndexes:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)insertItems:(id)a3 atIndexes:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    [v7 enumerateRangesUsingBlock:v10];
    self->_activeListIndex += v16[3];
    self->_upNextIndex += v12[3];
    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
  }

  if (self->_shuffleEnabled)
  {
    [(NSMutableArray *)self->_shuffledItems insertObjects:v6 atIndexes:v7];
    [(NSMutableArray *)self->_trackList addObjectsFromArray:v6];
  }

  else
  {
    [(NSMutableArray *)self->_trackList insertObjects:v6 atIndexes:v7];
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

- (void)removeItemAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:a3];
  [(TVPPlaylist *)self removeItemsAtIndexes:v4];
}

- (void)removeItemsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [v4 containsIndex:self->_activeListIndex];
  if (self->_shuffleEnabled)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __36__TVPPlaylist_removeItemsAtIndexes___block_invoke;
    v18 = &unk_279D7B988;
    v19 = self;
    v20 = v6;
    v7 = v6;
    [v4 enumerateIndexesUsingBlock:&v15];
    [(NSMutableArray *)self->_trackList removeObjectsAtIndexes:v7, v15, v16, v17, v18, v19];
    [(NSMutableArray *)self->_shuffledItems removeObjectsAtIndexes:v4];
  }

  else
  {
    [(NSMutableArray *)self->_trackList removeObjectsAtIndexes:v4];
  }

  v8 = [v4 countOfIndexesInRange:{0, self->_activeListIndex}];
  activeListIndex = self->_activeListIndex;
  v10 = activeListIndex >= v8;
  v11 = activeListIndex - v8;
  if (!v10)
  {
    v11 = 0;
  }

  self->_activeListIndex = v11;
  v12 = [v4 countOfIndexesInRange:{0, self->_upNextIndex}];
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

- (void)setUpcomingItemsLimit:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  self->_upcomingItemsLimit = v3;
}

- (void)addItemsToUpNext:(id)a3
{
  v4 = a3;
  v5 = [(TVPPlaylist *)self upNextIndex];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v5, objc_msgSend(v4, "count")}];
  [(TVPPlaylist *)self insertItems:v4 atIndexes:v6];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___TVPPlaylist;
  v5 = objc_msgSendSuper2(&v8, sel_keyPathsForValuesAffectingValueForKey_, v4);
  if (([v4 isEqualToString:@"supportsShuffle"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"supportsRepeat"))
  {
    v6 = [v5 setByAddingObject:@"windowed"];

    v5 = v6;
  }

  return v5;
}

@end