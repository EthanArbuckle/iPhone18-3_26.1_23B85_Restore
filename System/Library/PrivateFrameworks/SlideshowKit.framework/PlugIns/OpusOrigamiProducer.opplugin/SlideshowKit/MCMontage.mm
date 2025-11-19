@interface MCMontage
- (MCMontage)init;
- (MCMontage)initWithData:(id)a3 error:(id *)a4;
- (id)assetForObjectID:(id)a3;
- (id)assets;
- (id)audioAssetForFileAtPath:(id)a3;
- (id)audioAssets;
- (id)containerForObjectID:(id)a3;
- (id)createEffectContainer;
- (id)createNavigatorContainer;
- (id)createParallelizerContainer;
- (id)createSerializerContainer;
- (id)data;
- (id)imprint;
- (id)initFromScratch;
- (id)videoAssetForFileAtPath:(id)a3;
- (id)videoAssets;
- (unint64_t)uuidSeed;
- (void)dealloc;
- (void)demolish;
- (void)forgetAboutContainer:(id)a3;
- (void)registerContainer:(id)a3;
@end

@implementation MCMontage

- (MCMontage)init
{
  v5.receiver = self;
  v5.super_class = MCMontage;
  v2 = [(MCMontage *)&v5 init];
  if (v2)
  {
    v2->mVideoAssetsForFilePaths = objc_alloc_init(NSMutableDictionary);
    v2->mVideoAssetsForObjectIDs = objc_alloc_init(NSMutableDictionary);
    v2->mAudioAssetsForFilePaths = objc_alloc_init(NSMutableDictionary);
    v2->mAudioAssetsForObjectIDs = objc_alloc_init(NSMutableDictionary);
    v2->mContainersForObjectIDs = objc_alloc_init(NSMutableDictionary);
    v3 = objc_alloc_init(NSRecursiveLock);
    v2->mLock = v3;
    [(NSRecursiveLock *)v3 setName:@"MCMontage.lock"];
  }

  return v2;
}

- (id)initFromScratch
{
  v2 = [(MCMontage *)self init];
  if (v2)
  {
    v2->mRootPlug = [(MCObject *)[MCPlug alloc] initFromScratchWithMontage:v2];
    [(MCPlug *)v2->mRootPlug setContainer:[(MCMontage *)v2 createParallelizerContainer]];
  }

  return v2;
}

- (MCMontage)initWithData:(id)a3 error:(id *)a4
{
  v6 = [(MCMontage *)self init];
  if (v6)
  {
    v7 = v6;
    v8 = [NSPropertyListSerialization propertyListWithData:a3 options:0 format:0 error:a4];
    v7->mImprintWhileLoading = v8;
    if (v8)
    {
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = [(NSDictionary *)v8 objectForKey:@"videoAssets"];
      v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = [MCObject objectWithImprint:*(*(&v32 + 1) + 8 * i) andMontage:v7];
            v14 = [+[NSBundle mainBundle](NSBundle pathForResource:"pathForResource:ofType:" ofType:@"Assets", 0];
            if (dword_1EDDD8 <= 34)
            {
              v15 = (dword_1EDDD8 + 1);
            }

            else
            {
              v15 = 1;
            }

            dword_1EDDD8 = v15;
            if (v15 >= 10)
            {
              v16 = @"LARGE_PIC_%d.jpg";
            }

            else
            {
              v16 = @"LARGE_PIC_0%d.jpg";
            }

            [(MCObject *)v13 setPath:[(NSString *)v14 stringByAppendingPathComponent:[NSString stringWithFormat:v16, v15]]];
            [(NSMutableDictionary *)v7->mVideoAssetsForFilePaths setObject:v13 forKey:[(MCObject *)v13 path]];
            [(NSMutableDictionary *)v7->mVideoAssetsForObjectIDs setObject:v13 forKey:[(MCObject *)v13 objectID]];
          }

          v10 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v10);
      }

      v17 = [(NSDictionary *)v7->mImprintWhileLoading objectForKey:@"audioAssets"];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [MCObject objectWithImprint:*(*(&v28 + 1) + 8 * j) andMontage:v7];
            [(NSMutableDictionary *)v7->mAudioAssetsForFilePaths setObject:v22 forKey:[(MCObject *)v22 path]];
            [(NSMutableDictionary *)v7->mAudioAssetsForObjectIDs setObject:v22 forKey:[(MCObject *)v22 objectID]];
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v19);
      }

      v7->mRootPlug = [MCObject objectWithImprint:[(NSDictionary *)v7->mImprintWhileLoading objectForKey:@"rootPlug"] andMontage:v7];
      [-[NSDictionary objectForKey:](v7->mImprintWhileLoading objectForKey:{@"fadeInDuration", "doubleValue"}];
      v7->mFadeInDuration = v23;
      [-[NSDictionary objectForKey:](v7->mImprintWhileLoading objectForKey:{@"fadeOutDuration", "doubleValue"}];
      v7->mFadeOutDuration = v24;
      [-[NSDictionary objectForKey:](v7->mImprintWhileLoading objectForKey:{@"audioFadeOutDuration", "doubleValue"}];
      v7->mAudioFadeOutDuration = v25;
      v7->mUUIDSeed = [-[NSDictionary objectForKey:](v7->mImprintWhileLoading objectForKey:{@"uuidSeed", "unsignedIntegerValue"}];
      v7->_styleHint = [-[NSDictionary objectForKey:](v7->mImprintWhileLoading objectForKey:{@"styleHint", "intValue"}];
      v7->mImprintWhileLoading = 0;
    }

    if (!v7->mRootPlug)
    {
    }
  }

  return 0;
}

- (void)dealloc
{
  if (self->mRootPlug)
  {
    [(MCMontage *)self demolish];
  }

  self->mLock = 0;
  v3.receiver = self;
  v3.super_class = MCMontage;
  [(MCMontage *)&v3 dealloc];
}

- (void)demolish
{
  v3 = objc_autoreleasePoolPush();
  [(MCPlug *)self->mRootPlug demolish];
  [(MCMontage *)self willChangeValueForKey:@"rootPlug"];

  self->mRootPlug = 0;
  [(MCMontage *)self didChangeValueForKey:@"rootPlug"];

  self->mRootPlug = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  mVideoAssetsForObjectIDs = self->mVideoAssetsForObjectIDs;
  v5 = [(NSMutableDictionary *)mVideoAssetsForObjectIDs countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(mVideoAssetsForObjectIDs);
        }

        [-[NSMutableDictionary objectForKey:](self->mVideoAssetsForObjectIDs objectForKey:{*(*(&v25 + 1) + 8 * i)), "demolish"}];
      }

      v5 = [(NSMutableDictionary *)mVideoAssetsForObjectIDs countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  self->mVideoAssetsForFilePaths = 0;
  self->mVideoAssetsForObjectIDs = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  mAudioAssetsForObjectIDs = self->mAudioAssetsForObjectIDs;
  v9 = [(NSMutableDictionary *)mAudioAssetsForObjectIDs countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(mAudioAssetsForObjectIDs);
        }

        [-[NSMutableDictionary objectForKey:](self->mAudioAssetsForObjectIDs objectForKey:{*(*(&v21 + 1) + 8 * j)), "demolish"}];
      }

      v9 = [(NSMutableDictionary *)mAudioAssetsForObjectIDs countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v9);
  }

  self->mAudioAssetsForFilePaths = 0;
  self->mAudioAssetsForObjectIDs = 0;
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(NSMutableDictionary *)self->mContainersForObjectIDs allKeys];
  v14 = [v13 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      for (k = 0; k != v14; k = k + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [-[NSMutableDictionary objectForKey:](self->mContainersForObjectIDs objectForKey:{*(*(&v17 + 1) + 8 * k)), "demolish"}];
      }

      v14 = [v13 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v14);
  }

  self->mContainersForObjectIDs = 0;
  objc_sync_exit(mContainersForObjectIDs);
  objc_autoreleasePoolPop(v3);
}

- (id)imprint
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:-[MCPlug imprint](self->mRootPlug forKey:{"imprint"), @"rootPlug"}];
  v4 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [(NSMutableDictionary *)self->mVideoAssetsForObjectIDs objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        if ([v9 isInUse])
        {
          [v4 addObject:{objc_msgSend(v9, "imprint")}];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  [v3 setObject:v4 forKey:@"videoAssets"];
  v10 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [(NSMutableDictionary *)self->mAudioAssetsForObjectIDs objectEnumerator];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v28 + 1) + 8 * j);
        if ([v15 isInUse])
        {
          [v10 addObject:{objc_msgSend(v15, "imprint")}];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v12);
  }

  [v3 setObject:v10 forKey:@"audioAssets"];
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  v17 = +[NSMutableDictionary dictionary];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [(NSMutableDictionary *)self->mContainersForObjectIDs objectEnumerator];
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = *v25;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v24 + 1) + 8 * k);
        if ([v22 referencingPlug])
        {
          [v17 setObject:objc_msgSend(v22 forKey:{"imprint"), objc_msgSend(v22, "objectID")}];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  [v3 setObject:v17 forKey:@"containers"];
  objc_sync_exit(mContainersForObjectIDs);
  if (self->mFadeInDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"fadeInDuration"}];
  }

  if (self->mFadeOutDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"fadeOutDuration"}];
  }

  if (self->mAudioFadeOutDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"audioFadeOutDuration"}];
  }

  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->mUUIDSeed), @"uuidSeed"}];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_styleHint), @"styleHint"}];
  return v3;
}

- (id)data
{
  v4 = 0;
  v2 = [NSPropertyListSerialization dataWithPropertyList:[(MCMontage *)self imprint] format:200 options:0 error:&v4];
  if (!v2)
  {
    NSLog(@"Error converting MCMontage imprint to NSData, '%@'\n", v4);
  }

  return v2;
}

- (unint64_t)uuidSeed
{
  v2 = self->mUUIDSeed + 1;
  self->mUUIDSeed = v2;
  return v2;
}

- (id)createSerializerContainer
{
  v3 = [(MCObject *)[MCContainerSerializer alloc] initFromScratchWithMontage:self];
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  -[NSMutableDictionary setObject:forKey:](self->mContainersForObjectIDs, "setObject:forKey:", v3, [v3 objectID]);
  objc_sync_exit(mContainersForObjectIDs);

  return v3;
}

- (id)createParallelizerContainer
{
  v3 = [(MCObject *)[MCContainerParallelizer alloc] initFromScratchWithMontage:self];
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  -[NSMutableDictionary setObject:forKey:](self->mContainersForObjectIDs, "setObject:forKey:", v3, [v3 objectID]);
  objc_sync_exit(mContainersForObjectIDs);

  return v3;
}

- (id)createEffectContainer
{
  v3 = [(MCObject *)[MCContainerEffect alloc] initFromScratchWithMontage:self];
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  -[NSMutableDictionary setObject:forKey:](self->mContainersForObjectIDs, "setObject:forKey:", v3, [v3 objectID]);
  objc_sync_exit(mContainersForObjectIDs);

  return v3;
}

- (id)createNavigatorContainer
{
  v3 = [(MCObject *)[MCContainerNavigator alloc] initFromScratchWithMontage:self];
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  -[NSMutableDictionary setObject:forKey:](self->mContainersForObjectIDs, "setObject:forKey:", v3, [v3 objectID]);
  objc_sync_exit(mContainersForObjectIDs);

  return v3;
}

- (id)videoAssetForFileAtPath:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"DummyVideoAsset";
  }

  mVideoAssetsForFilePaths = self->mVideoAssetsForFilePaths;
  objc_sync_enter(mVideoAssetsForFilePaths);
  v7 = [(NSMutableDictionary *)self->mVideoAssetsForFilePaths objectForKey:v5];
  if (!v7)
  {
    v7 = [(MCObject *)[MCAssetVideo alloc] initFromScratchWithMontage:self];
    [v7 setPath:a3];
    [(NSMutableDictionary *)self->mVideoAssetsForFilePaths setObject:v7 forKey:v5];
    -[NSMutableDictionary setObject:forKey:](self->mVideoAssetsForObjectIDs, "setObject:forKey:", v7, [v7 objectID]);
  }

  objc_sync_exit(mVideoAssetsForFilePaths);
  return v7;
}

- (id)audioAssetForFileAtPath:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"DummyAudioAsset";
  }

  mAudioAssetsForFilePaths = self->mAudioAssetsForFilePaths;
  objc_sync_enter(mAudioAssetsForFilePaths);
  v7 = [(NSMutableDictionary *)self->mAudioAssetsForFilePaths objectForKey:v5];
  if (!v7)
  {
    v7 = [(MCObject *)[MCAssetAudio alloc] initFromScratchWithMontage:self];
    [v7 setPath:a3];
    [(NSMutableDictionary *)self->mAudioAssetsForFilePaths setObject:v7 forKey:v5];
    -[NSMutableDictionary setObject:forKey:](self->mAudioAssetsForObjectIDs, "setObject:forKey:", v7, [v7 objectID]);
  }

  objc_sync_exit(mAudioAssetsForFilePaths);
  return v7;
}

- (id)assetForObjectID:(id)a3
{
  result = [(MCMontage *)self videoAssetForObjectID:?];
  if (!result)
  {

    return [(MCMontage *)self audioAssetForObjectID:a3];
  }

  return result;
}

- (id)assets
{
  v3 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  mVideoAssetsForFilePaths = self->mVideoAssetsForFilePaths;
  v5 = [(NSMutableDictionary *)mVideoAssetsForFilePaths countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(mVideoAssetsForFilePaths);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->mVideoAssetsForFilePaths objectForKey:v9];
        if (([v9 isEqualToString:@"DummyVideoAsset"] & 1) == 0 && objc_msgSend(v10, "isInUse"))
        {
          [v3 addObject:v10];
        }
      }

      v6 = [(NSMutableDictionary *)mVideoAssetsForFilePaths countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  mAudioAssetsForFilePaths = self->mAudioAssetsForFilePaths;
  v12 = [(NSMutableDictionary *)mAudioAssetsForFilePaths countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(mAudioAssetsForFilePaths);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = [(NSMutableDictionary *)self->mAudioAssetsForFilePaths objectForKey:v16];
        if (([v16 isEqualToString:@"DummyVideoAsset"] & 1) == 0 && objc_msgSend(v17, "isInUse"))
        {
          [v3 addObject:v17];
        }
      }

      v13 = [(NSMutableDictionary *)mAudioAssetsForFilePaths countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  return v3;
}

- (id)videoAssets
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mVideoAssetsForFilePaths = self->mVideoAssetsForFilePaths;
  v5 = [(NSMutableDictionary *)mVideoAssetsForFilePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mVideoAssetsForFilePaths);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->mVideoAssetsForFilePaths objectForKey:v9];
        if (([v9 isEqualToString:@"DummyVideoAsset"] & 1) == 0 && objc_msgSend(v10, "isInUse"))
        {
          [v3 addObject:v10];
        }
      }

      v6 = [(NSMutableDictionary *)mVideoAssetsForFilePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)audioAssets
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mAudioAssetsForFilePaths = self->mAudioAssetsForFilePaths;
  v5 = [(NSMutableDictionary *)mAudioAssetsForFilePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(mAudioAssetsForFilePaths);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->mAudioAssetsForFilePaths objectForKey:v9];
        if (([v9 isEqualToString:@"DummyVideoAsset"] & 1) == 0 && objc_msgSend(v10, "isInUse"))
        {
          [v3 addObject:v10];
        }
      }

      v6 = [(NSMutableDictionary *)mAudioAssetsForFilePaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)containerForObjectID:(id)a3
{
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  v6 = [(NSMutableDictionary *)self->mContainersForObjectIDs objectForKey:a3];
  if (!v6)
  {
    mImprintWhileLoading = self->mImprintWhileLoading;
    if (mImprintWhileLoading && (v8 = [-[NSDictionary objectForKey:](mImprintWhileLoading objectForKey:{@"containers", "objectForKey:", a3}]) != 0)
    {
      v6 = [MCObject objectWithImprint:v8 andMontage:self];
      [(NSMutableDictionary *)self->mContainersForObjectIDs setObject:v6 forKey:[(MCObject *)v6 objectID]];
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = v6;
  objc_sync_exit(mContainersForObjectIDs);

  return v6;
}

- (void)registerContainer:(id)a3
{
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  -[NSMutableDictionary setObject:forKey:](self->mContainersForObjectIDs, "setObject:forKey:", a3, [a3 objectID]);

  objc_sync_exit(mContainersForObjectIDs);
}

- (void)forgetAboutContainer:(id)a3
{
  mContainersForObjectIDs = self->mContainersForObjectIDs;
  objc_sync_enter(mContainersForObjectIDs);
  -[NSMutableDictionary removeObjectForKey:](self->mContainersForObjectIDs, "removeObjectForKey:", [a3 objectID]);

  objc_sync_exit(mContainersForObjectIDs);
}

@end