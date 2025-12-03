@interface MCAudioPlaylist
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (MCAudioPlaylist)init;
- (MCAudioPlaylist)initWithImprint:(id)imprint andMontage:(id)montage;
- (NSArray)orderedSongs;
- (NSSet)songs;
- (id)addSongForAsset:(id)asset;
- (id)addSongsForAssets:(id)assets;
- (id)imprint;
- (id)insertSongForAsset:(id)asset atIndex:(unint64_t)index;
- (id)insertSongsForAssets:(id)assets atIndex:(unint64_t)index;
- (id)songAtIndex:(unint64_t)index;
- (unint64_t)countOfSongs;
- (void)demolish;
- (void)moveSongsAtIndices:(id)indices toIndex:(unint64_t)index;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAllSongs;
- (void)removeSongsAtIndices:(id)indices;
@end

@implementation MCAudioPlaylist

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"orderedSongs"])
  {
    return [NSSet setWithObjects:@"songs", 0, v7, v8, v9, v10, v11];
  }

  if ([key isEqualToString:@"builtVolume"])
  {
    return [NSSet setWithObjects:@"volume", @"fadeInDuration", @"fadeOutDuration", @"duckLevel", @"duckInDuration", @"duckOutDuration", 0];
  }

  if ([key isEqualToString:@"builtAudio"])
  {
    v6 = @"builtVolume";
    v7 = 0;
  }

  else
  {
    if (![key isEqualToString:@"audioNoVolume"])
    {
      v12.receiver = self;
      v12.super_class = &OBJC_METACLASS___MCAudioPlaylist;
      return objc_msgSendSuper2(&v12, "keyPathsForValuesAffectingValueForKey:", key);
    }

    v6 = 0;
  }

  return [NSSet setWithObjects:@"orderedSongs", v6, v7, v8, v9, v10, v11];
}

- (MCAudioPlaylist)init
{
  v4.receiver = self;
  v4.super_class = MCAudioPlaylist;
  v2 = [(MCAudioPlaylist *)&v4 init];
  if (v2)
  {
    v2->mSongs = objc_alloc_init(NSMutableSet);
    v2->mVolume = 1.0;
    v2->mDuckLevel = 1.0;
  }

  return v2;
}

- (MCAudioPlaylist)initWithImprint:(id)imprint andMontage:(id)montage
{
  v26.receiver = self;
  v26.super_class = MCAudioPlaylist;
  v6 = [MCObject initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [imprint objectForKey:@"songs"];
    v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [MCObject objectWithImprint:*(*(&v22 + 1) + 8 * i) andMontage:montage];
          [(NSMutableSet *)v6->mSongs addObject:v11];
          [(MCObject *)v11 setAudioPlaylistIfAudioPlaylistSong:v6];
          if (![(MCObject *)v6 isSnapshot])
          {
            [(MCObject *)v11 addObserver:v6 forKeyPath:@"builtVolume" options:0 context:0];
            [(MCObject *)v11 addObserver:v6 forKeyPath:@"builtAudio" options:0 context:0];
          }

          v12 = [imprint objectForKey:@"volume"];
          v13 = 1.0;
          LODWORD(v14) = 1.0;
          if (v12)
          {
            [objc_msgSend(imprint objectForKey:{@"volume", v14), "floatValue"}];
          }

          v6->mVolume = *&v14;
          [objc_msgSend(imprint objectForKey:{@"fadeInDuration", "doubleValue"}];
          v6->mFadeInDuration = v15;
          [objc_msgSend(imprint objectForKey:{@"fadeOutDuration", "doubleValue"}];
          v6->mFadeOutDuration = v16;
          if ([imprint objectForKey:@"duckLevel"])
          {
            [objc_msgSend(imprint objectForKey:{@"duckLevel", "floatValue"}];
            v13 = v17;
          }

          v6->mDuckLevel = v13;
          [objc_msgSend(imprint objectForKey:{@"duckInDuration", "doubleValue"}];
          v6->mDuckInDuration = v18;
          [objc_msgSend(imprint objectForKey:{@"duckOutDuration", "doubleValue"}];
          v6->mDuckOutDuration = v19;
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }
  }

  return v6;
}

- (void)demolish
{
  mSongs = self->mSongs;
  objc_sync_enter(mSongs);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->mSongs;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (![(MCObject *)self isSnapshot])
        {
          [v8 removeObserver:self forKeyPath:@"builtVolume"];
          [v8 removeObserver:self forKeyPath:@"builtAudio"];
        }

        [v8 demolish];
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  self->mSongs = 0;
  self->mCachedOrderedSongs = 0;
  objc_sync_exit(mSongs);
  self->mContainer = 0;
  v9.receiver = self;
  v9.super_class = MCAudioPlaylist;
  [(MCObject *)&v9 demolish];
}

- (id)imprint
{
  v18.receiver = self;
  v18.super_class = MCAudioPlaylist;
  imprint = [(MCObject *)&v18 imprint];
  v4 = objc_autoreleasePoolPush();
  songs = [(MCAudioPlaylist *)self songs];
  if ([(NSSet *)songs count])
  {
    v6 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSSet *)songs countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(songs);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "imprint")}];
        }

        v8 = [(NSSet *)songs countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    [imprint setObject:v6 forKey:@"songs"];
  }

  mVolume = self->mVolume;
  if (mVolume != 1.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", mVolume), @"volume"}];
  }

  if (self->mFadeInDuration > 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"fadeInDuration"}];
  }

  if (self->mFadeOutDuration > 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"fadeOutDuration"}];
  }

  mDuckLevel = self->mDuckLevel;
  if (mDuckLevel != 1.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", mDuckLevel), @"duckLevel"}];
  }

  if (self->mDuckInDuration > 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duckInDuration"}];
  }

  if (self->mDuckOutDuration > 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duckOutDuration"}];
  }

  objc_autoreleasePoolPop(v4);
  return imprint;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MCAudioPlaylist *)self willChangeValueForKey:path];

    [(MCAudioPlaylist *)self didChangeValueForKey:path];
  }
}

- (NSSet)songs
{
  mSongs = self->mSongs;
  objc_sync_enter(mSongs);
  if ([(NSMutableSet *)self->mSongs count])
  {
    v4 = [[NSSet alloc] initWithSet:self->mSongs];
  }

  else
  {
    v4 = sEmptySet;
  }

  objc_sync_exit(mSongs);
  return v4;
}

- (unint64_t)countOfSongs
{
  mSongs = self->mSongs;
  objc_sync_enter(mSongs);
  v4 = [(NSMutableSet *)self->mSongs count];
  objc_sync_exit(mSongs);
  return v4;
}

- (id)songAtIndex:(unint64_t)index
{
  mSongs = self->mSongs;
  objc_sync_enter(mSongs);
  mCachedOrderedSongs = self->mCachedOrderedSongs;
  if (mCachedOrderedSongs)
  {
    v7 = [(NSArray *)mCachedOrderedSongs objectAtIndex:index];
LABEL_13:
    v13 = v7;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->mSongs;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 index] == index)
          {
            v7 = v12;
            goto LABEL_13;
          }
        }

        v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v13 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  objc_sync_exit(mSongs);
  return v13;
}

- (id)addSongForAsset:(id)asset
{
  v3 = [(MCAudioPlaylist *)self insertSongsForAssets:[NSArray atIndex:"arrayWithObject:" arrayWithObject:asset], [(MCAudioPlaylist *)self countOfSongs]];

  return [v3 objectAtIndex:0];
}

- (id)addSongsForAssets:(id)assets
{
  countOfSongs = [(MCAudioPlaylist *)self countOfSongs];

  return [(MCAudioPlaylist *)self insertSongsForAssets:assets atIndex:countOfSongs];
}

- (id)insertSongForAsset:(id)asset atIndex:(unint64_t)index
{
  index = [(MCAudioPlaylist *)self insertSongsForAssets:[NSArray atIndex:"arrayWithObject:" arrayWithObject:asset], index];

  return [index objectAtIndex:0];
}

- (id)insertSongsForAssets:(id)assets atIndex:(unint64_t)index
{
  v7 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = assets;
  v8 = [assets countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [(MCObject *)[MCSong alloc] initFromScratchWithMontage:self->super.mMontage];
        [v12 setAsset:v11];
        [v12 setIndex:{objc_msgSend(v7, "count") + index}];
        [v7 addObject:v12];
        [v12 setAudioPlaylistIfAudioPlaylistSong:self];
        [v12 addObserver:self forKeyPath:@"builtVolume" options:0 context:0];
        [v12 addObserver:self forKeyPath:@"builtAudio" options:0 context:0];
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  if ([v7 count])
  {
    v13 = [[NSSet alloc] initWithArray:v7];
    [(MCAudioPlaylist *)self willChangeValueForKey:@"songs" withSetMutation:1 usingObjects:v13];
    mSongs = self->mSongs;
    objc_sync_enter(mSongs);

    self->mCachedOrderedSongs = 0;
    v14 = [obj count];
    obja = v13;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->mSongs;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v16)
    {
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v25 + 1) + 8 * j);
          if ([v19 index] >= index)
          {
            [v19 setIndex:{&v14[objc_msgSend(v19, "index")]}];
          }
        }

        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [(NSMutableSet *)self->mSongs addObjectsFromArray:v7, mSongs];
    objc_sync_exit(v22);
    [(MCAudioPlaylist *)self didChangeValueForKey:@"songs" withSetMutation:1 usingObjects:obja];
  }

  return v7;
}

- (void)removeSongsAtIndices:(id)indices
{
  obj = self->mSongs;
  objc_sync_enter(obj);
  v5 = objc_alloc_init(NSMutableSet);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  mSongs = self->mSongs;
  v7 = [(NSMutableSet *)mSongs countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(mSongs);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([indices containsIndex:{objc_msgSend(v10, "index")}])
        {
          [v5 addObject:v10];
          [v10 removeObserver:self forKeyPath:@"builtVolume"];
          [v10 removeObserver:self forKeyPath:@"builtAudio"];
        }

        else
        {
          [v10 setIndex:{objc_msgSend(v10, "index") - objc_msgSend(indices, "countOfIndexesInRange:", 0, objc_msgSend(v10, "index"))}];
        }
      }

      v7 = [(NSMutableSet *)mSongs countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  [(MCAudioPlaylist *)self willChangeValueForKey:@"songs" withSetMutation:2 usingObjects:v5];

  self->mCachedOrderedSongs = 0;
  [(NSMutableSet *)self->mSongs minusSet:v5];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v16 + 1) + 8 * j);
        [v14 setAudioPlaylistIfAudioPlaylistSong:0];
        [v14 demolish];
      }

      v11 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  objc_sync_exit(obj);
  [(MCAudioPlaylist *)self didChangeValueForKey:@"songs" withSetMutation:2 usingObjects:v5];
}

- (void)removeAllSongs
{
  v3 = [NSIndexSet indexSetWithIndexesInRange:0, [(MCAudioPlaylist *)self countOfSongs]];

  [(MCAudioPlaylist *)self removeSongsAtIndices:v3];
}

- (void)moveSongsAtIndices:(id)indices toIndex:(unint64_t)index
{
  [(MCAudioPlaylist *)self willChangeValueForKey:@"orderedSongs"];
  mSongs = self->mSongs;
  objc_sync_enter(mSongs);

  self->mCachedOrderedSongs = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->mSongs;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([indices containsIndex:{objc_msgSend(v12, "index")}])
        {
          [v12 setIndex:{objc_msgSend(indices, "countOfIndexesInRange:", 0, objc_msgSend(v12, "index")) + index}];
        }

        else
        {
          index = [v12 index];
          v14 = index - [indices countOfIndexesInRange:{0, objc_msgSend(v12, "index")}];
          if (v14 >= index)
          {
            v14 += [indices count];
          }

          [v12 setIndex:v14];
        }
      }

      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  objc_sync_exit(mSongs);
  [(MCAudioPlaylist *)self didChangeValueForKey:@"orderedSongs"];
}

- (NSArray)orderedSongs
{
  mSongs = self->mSongs;
  objc_sync_enter(mSongs);
  mCachedOrderedSongs = self->mCachedOrderedSongs;
  if (!mCachedOrderedSongs)
  {
    v5 = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:1];
    self->mCachedOrderedSongs = [-[NSMutableSet allObjects](self->mSongs "allObjects")];

    mCachedOrderedSongs = self->mCachedOrderedSongs;
  }

  v6 = mCachedOrderedSongs;
  objc_sync_exit(mSongs);

  return v6;
}

@end