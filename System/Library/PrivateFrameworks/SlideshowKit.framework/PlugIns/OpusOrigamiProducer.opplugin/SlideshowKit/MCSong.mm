@interface MCSong
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (MCAssetAudio)asset;
- (MCSong)init;
- (MCSong)initWithImprint:(id)a3 andMontage:(id)a4;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
- (void)setAsset:(id)a3;
@end

@implementation MCSong

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"builtVolume"])
  {
    return [NSSet setWithObjects:@"volume", @"fadeInDuration", @"fadeOutDuration", 0, v7];
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
      v8.receiver = a1;
      v8.super_class = &OBJC_METACLASS___MCSong;
      return objc_msgSendSuper2(&v8, "keyPathsForValuesAffectingValueForKey:", a3);
    }

    v6 = 0;
  }

  return [NSSet setWithObjects:@"asset", @"startTime", @"duration", v6, v7];
}

- (MCSong)init
{
  v3.receiver = self;
  v3.super_class = MCSong;
  result = [(MCSong *)&v3 init];
  if (result)
  {
    result->mVolume = 1.0;
  }

  return result;
}

- (MCSong)initWithImprint:(id)a3 andMontage:(id)a4
{
  v23.receiver = self;
  v23.super_class = MCSong;
  v6 = [MCObject initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  v7 = v6;
  if (v6)
  {
    if ([(MCObject *)v6 isSnapshot])
    {
      v8 = +[MCObject objectWithImprint:andMontage:](MCObject, "objectWithImprint:andMontage:", [a3 objectForKey:@"asset"], a4);
    }

    else
    {
      v8 = -[MCMontage audioAssetForObjectID:](v7->super.mMontage, "audioAssetForObjectID:", [a3 objectForKey:@"assetID"]);
    }

    v9 = v8;
    v7->mAsset = v9;
    [(MCObject *)v9 addSong:v7];
    v10 = [a3 objectForKey:@"volume"];
    if (v10)
    {
      [v10 floatValue];
    }

    else
    {
      v11 = 1.0;
    }

    v7->mVolume = v11;
    v12 = [a3 objectForKey:@"fadeInDuration"];
    v13 = 0.0;
    v14 = 0.0;
    if (v12)
    {
      [v12 doubleValue];
    }

    v7->mFadeInDuration = v14;
    v15 = [a3 objectForKey:@"fadeOutDuration"];
    if (v15)
    {
      [v15 doubleValue];
      v13 = v16;
    }

    v7->mFadeOutDuration = v13;
    v17 = [a3 objectForKey:@"index"];
    if (v17)
    {
      v17 = [v17 unsignedIntegerValue];
    }

    v7->mIndex = v17;
    v18 = [a3 objectForKey:@"startTime"];
    v7->mStartTimeIsDefined = v18 != 0;
    if (v18)
    {
      [v18 doubleValue];
      v7->mStartTime = v19;
    }

    v20 = [a3 objectForKey:@"duration"];
    v7->mDurationIsDefined = v20 != 0;
    if (v20)
    {
      [v20 doubleValue];
      v7->mDuration = v21;
    }
  }

  return v7;
}

- (void)demolish
{
  if (self->mAsset)
  {
    objc_sync_enter(self);
    if (![(MCObject *)self isSnapshot])
    {
      [(MCAssetAudio *)self->mAsset removeSong:self];
    }

    self->mAsset = 0;
    objc_sync_exit(self);
  }

  self->mAudioPlaylistIfAudioPlaylistSong = 0;
  self->mSlideIfSlideSong = 0;
  v3.receiver = self;
  v3.super_class = MCSong;
  [(MCObject *)&v3 demolish];
}

- (id)imprint
{
  v11.receiver = self;
  v11.super_class = MCSong;
  v3 = [(MCObject *)&v11 imprint];
  mAsset = self->mAsset;
  if (mAsset)
  {
    v5 = [(MCObject *)mAsset objectID];
    v6 = self->mAsset;
    if (v5)
    {
      v7 = [(MCAsset *)v6 imprint];
      v8 = @"asset";
    }

    else
    {
      v7 = [(MCObject *)v6 objectID];
      v8 = @"assetID";
    }

    [v3 setObject:v7 forKey:v8];
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

  if (self->mIndex)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:"), @"index"}];
  }

  if (self->mStartTimeIsDefined)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->mStartTime), @"startTime"}];
  }

  if (self->mDurationIsDefined)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->mDuration), @"duration"}];
  }

  return v3;
}

- (MCAssetAudio)asset
{
  if ([(MCObject *)self isSnapshot])
  {
    return self->mAsset;
  }

  objc_sync_enter(self);
  v3 = self->mAsset;
  objc_sync_exit(self);
  return v3;
}

- (void)setAsset:(id)a3
{
  if (self->mAsset != a3)
  {
    objc_sync_enter(self);
    mAsset = self->mAsset;
    if (mAsset)
    {
      [(MCAssetAudio *)mAsset removeSong:self];
    }

    if (a3)
    {
      v6 = a3;
      self->mAsset = v6;
      [(MCAssetAudio *)v6 addSong:self];
    }

    objc_sync_exit(self);
  }
}

- (void)_copySelfToSnapshot:(id)a3
{
  objc_sync_enter(self);
  *(a3 + 4) = [(MCObject *)self->mAsset snapshot];
  *(a3 + 7) = LODWORD(self->mVolume);
  *(a3 + 5) = *&self->mFadeInDuration;
  *(a3 + 6) = *&self->mFadeOutDuration;
  *(a3 + 7) = self->mIndex;
  *(a3 + 8) = *&self->mStartTime;
  *(a3 + 24) = self->mStartTimeIsDefined;
  *(a3 + 9) = *&self->mDuration;
  *(a3 + 25) = self->mDurationIsDefined;

  objc_sync_exit(self);
}

@end