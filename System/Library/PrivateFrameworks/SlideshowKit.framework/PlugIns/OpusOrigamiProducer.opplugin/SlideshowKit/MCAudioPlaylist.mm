@interface MCAudioPlaylist
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (MCAudioPlaylist)init;
- (MCAudioPlaylist)initWithImprint:(id)a3 andMontage:(id)a4;
- (NSArray)orderedSongs;
- (NSSet)songs;
- (id)addSongForAsset:(id)a3;
- (id)addSongsForAssets:(id)a3;
- (id)imprint;
- (id)insertSongForAsset:(id)a3 atIndex:(unint64_t)a4;
- (id)insertSongsForAssets:(id)a3 atIndex:(unint64_t)a4;
- (id)songAtIndex:(unint64_t)a3;
- (unint64_t)countOfSongs;
- (void)demolish;
- (void)moveSongsAtIndices:(id)a3 toIndex:(unint64_t)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAllSongs;
- (void)removeSongsAtIndices:(id)a3;
@end

@implementation MCAudioPlaylist

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"orderedSongs"])
  {
    return [NSSet setWithObjects:@"songs", 0, v7, v8, v9, v10, v11];
  }

  if ([a3 isEqualToString:@"builtVolume"])
  {
    return [NSSet setWithObjects:@"volume", @"fadeInDuration", @"fadeOutDuration", @"duckLevel", @"duckInDuration", @"duckOutDuration", 0];
  }

  if ([a3 isEqualToString:@"builtAudio"])
  {
    v6 = @"builtVolume";
    v7 = 0;
  }

  else
  {
    if (![a3 isEqualToString:@"audioNoVolume"])
    {
      v12.receiver = a1;
      v12.super_class = &OBJC_METACLASS___MCAudioPlaylist;
      return objc_msgSendSuper2(&v12, "keyPathsForValuesAffectingValueForKey:", a3);
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

- (MCAudioPlaylist)initWithImprint:(id)a3 andMontage:(id)a4
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
    obj = [a3 objectForKey:@"songs"];
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

          v11 = [MCObject objectWithImprint:*(*(&v22 + 1) + 8 * i) andMontage:a4];
          [(NSMutableSet *)v6->mSongs addObject:v11];
          [(MCObject *)v11 setAudioPlaylistIfAudioPlaylistSong:v6];
          if (![(MCObject *)v6 isSnapshot])
          {
            [(MCObject *)v11 addObserver:v6 forKeyPath:@"builtVolume" options:0 context:0];
            [(MCObject *)v11 addObserver:v6 forKeyPath:@"builtAudio" options:0 context:0];
          }

          v12 = [a3 objectForKey:@"volume"];
          v13 = 1.0;
          LODWORD(v14) = 1.0;
          if (v12)
          {
            [objc_msgSend(a3 objectForKey:{@"volume", v14), "floatValue"}];
          }

          v6->mVolume = *&v14;
          [objc_msgSend(a3 objectForKey:{@"fadeInDuration", "doubleValue"}];
          v6->mFadeInDuration = v15;
          [objc_msgSend(a3 objectForKey:{@"fadeOutDuration", "doubleValue"}];
          v6->mFadeOutDuration = v16;
          if ([a3 objectForKey:@"duckLevel"])
          {
            [objc_msgSend(a3 objectForKey:{@"duckLevel", "floatValue"}];
            v13 = v17;
          }

          v6->mDuckLevel = v13;
          [objc_msgSend(a3 objectForKey:{@"duckInDuration", "doubleValue"}];
          v6->mDuckInDuration = v18;
          [objc_msgSend(a3 objectForKey:{@"duckOutDuration", "doubleValue"}];
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
  v3 = [(MCObject *)&v18 imprint];
  v4 = objc_autoreleasePoolPush();
  v5 = [(MCAudioPlaylist *)self songs];
  if ([(NSSet *)v5 count])
  {
    v6 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "imprint")}];
        }

        v8 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    [v3 setObject:v6 forKey:@"songs"];
  }

  mVolume = self->mVolume;
  if (mVolume != 1.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", mVolume), @"volume"}];
  }

  if (self->mFadeInDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"fadeInDuration"}];
  }

  if (self->mFadeOutDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"fadeOutDuration"}];
  }

  mDuckLevel = self->mDuckLevel;
  if (mDuckLevel != 1.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", mDuckLevel), @"duckLevel"}];
  }

  if (self->mDuckInDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duckInDuration"}];
  }

  if (self->mDuckOutDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"duckOutDuration"}];
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MCAudioPlaylist *)self willChangeValueForKey:a3];

    [(MCAudioPlaylist *)self didChangeValueForKey:a3];
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

- (id)songAtIndex:(unint64_t)a3
{
  mSongs = self->mSongs;
  objc_sync_enter(mSongs);
  mCachedOrderedSongs = self->mCachedOrderedSongs;
  if (mCachedOrderedSongs)
  {
    v7 = [(NSArray *)mCachedOrderedSongs objectAtIndex:a3];
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
          if ([v12 index] == a3)
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

- (id)addSongForAsset:(id)a3
{
  v3 = [(MCAudioPlaylist *)self insertSongsForAssets:[NSArray atIndex:"arrayWithObject:" arrayWithObject:a3], [(MCAudioPlaylist *)self countOfSongs]];

  return [v3 objectAtIndex:0];
}

- (id)addSongsForAssets:(id)a3
{
  v5 = [(MCAudioPlaylist *)self countOfSongs];

  return [(MCAudioPlaylist *)self insertSongsForAssets:a3 atIndex:v5];
}

- (id)insertSongForAsset:(id)a3 atIndex:(unint64_t)a4
{
  v4 = [(MCAudioPlaylist *)self insertSongsForAssets:[NSArray atIndex:"arrayWithObject:" arrayWithObject:a3], a4];

  return [v4 objectAtIndex:0];
}

- (id)insertSongsForAssets:(id)a3 atIndex:(unint64_t)a4
{
  v7 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
  v8 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
        [v12 setIndex:{objc_msgSend(v7, "count") + a4}];
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
          if ([v19 index] >= a4)
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

- (void)removeSongsAtIndices:(id)a3
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
        if ([a3 containsIndex:{objc_msgSend(v10, "index")}])
        {
          [v5 addObject:v10];
          [v10 removeObserver:self forKeyPath:@"builtVolume"];
          [v10 removeObserver:self forKeyPath:@"builtAudio"];
        }

        else
        {
          [v10 setIndex:{objc_msgSend(v10, "index") - objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v10, "index"))}];
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

- (void)moveSongsAtIndices:(id)a3 toIndex:(unint64_t)a4
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
        if ([a3 containsIndex:{objc_msgSend(v12, "index")}])
        {
          [v12 setIndex:{objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v12, "index")) + a4}];
        }

        else
        {
          v13 = [v12 index];
          v14 = v13 - [a3 countOfIndexesInRange:{0, objc_msgSend(v12, "index")}];
          if (v14 >= a4)
          {
            v14 += [a3 count];
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