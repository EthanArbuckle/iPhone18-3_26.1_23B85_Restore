@interface MCSong
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (MCAssetAudio)asset;
- (MCSong)init;
- (MCSong)initWithImprint:(id)imprint andMontage:(id)montage;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
- (void)setAsset:(id)asset;
@end

@implementation MCSong

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"builtVolume"])
  {
    return [NSSet setWithObjects:@"volume", @"fadeInDuration", @"fadeOutDuration", 0, v7];
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
      v8.receiver = self;
      v8.super_class = &OBJC_METACLASS___MCSong;
      return objc_msgSendSuper2(&v8, "keyPathsForValuesAffectingValueForKey:", key);
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

- (MCSong)initWithImprint:(id)imprint andMontage:(id)montage
{
  v23.receiver = self;
  v23.super_class = MCSong;
  v6 = [MCObject initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  v7 = v6;
  if (v6)
  {
    if ([(MCObject *)v6 isSnapshot])
    {
      v8 = +[MCObject objectWithImprint:andMontage:](MCObject, "objectWithImprint:andMontage:", [imprint objectForKey:@"asset"], montage);
    }

    else
    {
      v8 = -[MCMontage audioAssetForObjectID:](v7->super.mMontage, "audioAssetForObjectID:", [imprint objectForKey:@"assetID"]);
    }

    v9 = v8;
    v7->mAsset = v9;
    [(MCObject *)v9 addSong:v7];
    v10 = [imprint objectForKey:@"volume"];
    if (v10)
    {
      [v10 floatValue];
    }

    else
    {
      v11 = 1.0;
    }

    v7->mVolume = v11;
    v12 = [imprint objectForKey:@"fadeInDuration"];
    v13 = 0.0;
    v14 = 0.0;
    if (v12)
    {
      [v12 doubleValue];
    }

    v7->mFadeInDuration = v14;
    v15 = [imprint objectForKey:@"fadeOutDuration"];
    if (v15)
    {
      [v15 doubleValue];
      v13 = v16;
    }

    v7->mFadeOutDuration = v13;
    unsignedIntegerValue = [imprint objectForKey:@"index"];
    if (unsignedIntegerValue)
    {
      unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
    }

    v7->mIndex = unsignedIntegerValue;
    v18 = [imprint objectForKey:@"startTime"];
    v7->mStartTimeIsDefined = v18 != 0;
    if (v18)
    {
      [v18 doubleValue];
      v7->mStartTime = v19;
    }

    v20 = [imprint objectForKey:@"duration"];
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
  imprint = [(MCObject *)&v11 imprint];
  mAsset = self->mAsset;
  if (mAsset)
  {
    objectID = [(MCObject *)mAsset objectID];
    v6 = self->mAsset;
    if (objectID)
    {
      imprint2 = [(MCAsset *)v6 imprint];
      v8 = @"asset";
    }

    else
    {
      imprint2 = [(MCObject *)v6 objectID];
      v8 = @"assetID";
    }

    [imprint setObject:imprint2 forKey:v8];
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

  if (self->mIndex)
  {
    [imprint setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:"), @"index"}];
  }

  if (self->mStartTimeIsDefined)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->mStartTime), @"startTime"}];
  }

  if (self->mDurationIsDefined)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->mDuration), @"duration"}];
  }

  return imprint;
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

- (void)setAsset:(id)asset
{
  if (self->mAsset != asset)
  {
    objc_sync_enter(self);
    mAsset = self->mAsset;
    if (mAsset)
    {
      [(MCAssetAudio *)mAsset removeSong:self];
    }

    if (asset)
    {
      assetCopy = asset;
      self->mAsset = assetCopy;
      [(MCAssetAudio *)assetCopy addSong:self];
    }

    objc_sync_exit(self);
  }
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  objc_sync_enter(self);
  *(snapshot + 4) = [(MCObject *)self->mAsset snapshot];
  *(snapshot + 7) = LODWORD(self->mVolume);
  *(snapshot + 5) = *&self->mFadeInDuration;
  *(snapshot + 6) = *&self->mFadeOutDuration;
  *(snapshot + 7) = self->mIndex;
  *(snapshot + 8) = *&self->mStartTime;
  *(snapshot + 24) = self->mStartTimeIsDefined;
  *(snapshot + 9) = *&self->mDuration;
  *(snapshot + 25) = self->mDurationIsDefined;

  objc_sync_exit(self);
}

@end