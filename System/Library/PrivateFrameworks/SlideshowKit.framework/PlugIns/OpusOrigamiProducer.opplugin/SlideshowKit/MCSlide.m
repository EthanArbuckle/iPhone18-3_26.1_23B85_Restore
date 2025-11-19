@interface MCSlide
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (CGPoint)center;
- (MCAssetVideo)asset;
- (MCPlugSlide)plug;
- (MCSlide)init;
- (MCSlide)initWithImprint:(id)a3 andMontage:(id)a4;
- (MCSong)song;
- (NSArray)orderedFilters;
- (NSDictionary)frameAttributes;
- (NSSet)animationPaths;
- (NSSet)filters;
- (NSString)kenBurnsType;
- (double)rotation;
- (double)scale;
- (id)addFilterWithFilterID:(id)a3;
- (id)animationPathForKey:(id)a3;
- (id)filterAtIndex:(unint64_t)a3;
- (id)frameAttributeForKey:(id)a3;
- (id)imprint;
- (id)imprintsForAnimationPaths;
- (id)imprintsForFilters;
- (id)insertFilterWithFilterID:(id)a3 atIndex:(unint64_t)a4;
- (unint64_t)countOfAnimationPaths;
- (unint64_t)countOfFilters;
- (unsigned)countOfLayouts;
- (void)_copySelfToSnapshot:(id)a3;
- (void)addAnimationPath:(id)a3;
- (void)demolish;
- (void)demolishAnimationPaths;
- (void)demolishFilters;
- (void)initAnimationPathsWithImprints:(id)a3;
- (void)initFiltersWithImprints:(id)a3;
- (void)moveFiltersAtIndices:(id)a3 toIndex:(unint64_t)a4;
- (void)observeFilter:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAllAnimationPaths;
- (void)removeAllFilters;
- (void)removeAnimationPathForKey:(id)a3;
- (void)removeFiltersAtIndices:(id)a3;
- (void)setAsset:(id)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setCurrentLayoutIndex:(unsigned __int8)a3;
- (void)setFrameAttribute:(id)a3 forKey:(id)a4;
- (void)setFrameAttributes:(id)a3;
- (void)setKenBurnsType:(id)a3;
- (void)setPlug:(id)a3;
- (void)setRotation:(double)a3;
- (void)setScale:(double)a3;
- (void)setSongForAsset:(id)a3;
- (void)unobserveFilter:(id)a3;
@end

@implementation MCSlide

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"builtVolume"])
  {
    return [NSSet setWithObjects:@"audioVolume", @"fadeInDuration", @"fadeOutDuration", @"audioDuckLevel", @"duckInDuration", @"duckOutDuration", 0];
  }

  if ([a3 isEqualToString:@"builtAudio"])
  {
    v8 = @"builtVolume";
    v9 = 0;
    return [NSSet setWithObjects:@"song", @"startTime", @"duration", v8, v9, v10, v11];
  }

  if ([a3 isEqualToString:@"audioNoVolume"])
  {
    v8 = 0;
    return [NSSet setWithObjects:@"song", @"startTime", @"duration", v8, v9, v10, v11];
  }

  if ([a3 isEqualToString:@"orderedFilters"])
  {
    return [NSSet setWithObjects:@"filters", 0, v6, v7, v9, v10, v11];
  }

  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___MCSlide;
  return objc_msgSendSuper2(&v12, "keyPathsForValuesAffectingValueForKey:", a3);
}

- (MCSlide)init
{
  v3.receiver = self;
  v3.super_class = MCSlide;
  result = [(MCSlide *)&v3 init];
  if (result)
  {
    result->mAudioVolume = 1.0;
    result->mAudioDuckLevel = 1.0;
  }

  return result;
}

- (MCSlide)initWithImprint:(id)a3 andMontage:(id)a4
{
  v35.receiver = self;
  v35.super_class = MCSlide;
  v6 = [MCObject initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v7 = [a3 objectForKey:@"flags"];
    if (v7)
    {
      v7 = [v7 unsignedIntegerValue];
    }

    v6->mFlags = v7;
    v8 = [a3 objectForKey:@"slideAssets"];
    if (v8)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_126CFC;
      v34[3] = &unk_1AB968;
      v34[4] = v6;
      v34[5] = a4;
      [v8 enumerateObjectsUsingBlock:v34];
    }

    v9 = [a3 objectForKey:@"plug"];
    if (v9)
    {
      v6->mPlug = [MCObject objectWithImprint:v9 andMontage:a4];
    }

    v10 = [a3 objectForKey:@"song"];
    if (v10)
    {
      v11 = [MCObject objectWithImprint:v10 andMontage:a4];
      v6->mSong = v11;
      [(MCObject *)v11 setSlideIfSlideSong:v6];
      if (![(MCObject *)v6 isSnapshot])
      {
        [(MCSong *)v6->mSong addObserver:v6 forKeyPath:@"builtVolume" options:0 context:0];
        [(MCSong *)v6->mSong addObserver:v6 forKeyPath:@"builtAudio" options:0 context:0];
      }
    }

    v12 = [a3 objectForKey:@"index"];
    if (v12)
    {
      v12 = [v12 unsignedIntegerValue];
    }

    v6->mIndex = v12;
    v13 = [a3 objectForKey:@"audioVolume"];
    if (v13)
    {
      [v13 floatValue];
    }

    else
    {
      v14 = 1.0;
    }

    v6->mAudioVolume = v14;
    v15 = [a3 objectForKey:@"audioFadeInDuration"];
    v16 = 0.0;
    v17 = 0.0;
    if (v15)
    {
      [v15 doubleValue];
    }

    v6->mAudioFadeInDuration = v17;
    v18 = [a3 objectForKey:@"audioFadeOutDuration"];
    if (v18)
    {
      [v18 doubleValue];
      v16 = v19;
    }

    v6->mAudioFadeOutDuration = v16;
    v20 = [a3 objectForKey:@"audioDuckLevel"];
    if (v20)
    {
      [v20 floatValue];
    }

    else
    {
      v21 = 1.0;
    }

    v6->mAudioDuckLevel = v21;
    v22 = [a3 objectForKey:@"audioDuckInDuration"];
    v23 = 0.0;
    v24 = 0.0;
    if (v22)
    {
      [v22 doubleValue];
    }

    v6->mAudioDuckInDuration = v24;
    v25 = [a3 objectForKey:@"audioDuckOutDuration"];
    if (v25)
    {
      [v25 doubleValue];
      v23 = v26;
    }

    v6->mAudioDuckOutDuration = v23;
    v27 = [a3 objectForKey:@"startTime"];
    if (v27)
    {
      v6->mFlags |= 1uLL;
      [v27 doubleValue];
      v6->mStartTime = v28;
    }

    v29 = [a3 objectForKey:@"duration"];
    if (v29)
    {
      v6->mFlags |= 2uLL;
      [v29 doubleValue];
      v6->mDuration = v30;
    }

    v6->mFrameID = [a3 objectForKey:@"frameID"];
    v6->mFrameAttributes = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(a3, "objectForKey:", @"frameAttributes"}];
    v31 = [a3 objectForKey:@"filters"];
    if (v31)
    {
      [(MCSlide *)v6 initFiltersWithImprints:v31];
    }

    v32 = [a3 objectForKey:@"animationPaths"];
    if (v32)
    {
      [(MCSlide *)v6 initAnimationPathsWithImprints:v32];
    }
  }

  return v6;
}

- (void)demolish
{
  objc_sync_enter(self);
  if (self->mSlideAsset)
  {
    [(MCSlide *)self willChangeValueForKey:@"asset"];
    for (i = 0; ; ++i)
    {
      mSlideAsset = self->mSlideAsset;
      v5 = mSlideAsset ? ((self->mFlags >> 24) & 0xF) + 1 : 0;
      if (i >= v5)
      {
        break;
      }

      if (![(MCObject *)self isSnapshot])
      {
        [objc_msgSend(self->mSlideAsset[i] "asset")];
      }

      self->mSlideAsset[i] = 0;
    }

    free(mSlideAsset);
    self->mSlideAsset = 0;
    [(MCSlide *)self didChangeValueForKey:@"asset"];
  }

  [(MCSlide *)self setPlug:0];
  mSong = self->mSong;
  if (mSong)
  {
    [(MCSlide *)self willChangeValueForKey:@"song"];
    [(MCSong *)self->mSong removeObserver:self forKeyPath:@"builtVolume"];
    [(MCSong *)self->mSong removeObserver:self forKeyPath:@"builtAudio"];
    self->mSong = 0;
    [(MCSlide *)self didChangeValueForKey:@"song"];
    [(MCSong *)mSong demolish];
  }

  self->mFrameID = 0;
  self->mFrameAttributes = 0;
  self->mContainer = 0;
  [(MCSlide *)self demolishAnimationPaths];
  [(MCSlide *)self demolishFilters];
  objc_sync_exit(self);
  v7.receiver = self;
  v7.super_class = MCSlide;
  [(MCObject *)&v7 demolish];
}

- (id)imprint
{
  v29.receiver = self;
  v29.super_class = MCSlide;
  v3 = [(MCObject *)&v29 imprint];
  if (self->mFlags)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", self->mFlags), @"flags"}];
  }

  if (self->mSlideAsset)
  {
    v4 = [NSMutableArray alloc];
    v28 = v3;
    if (self->mSlideAsset)
    {
      v5 = ((self->mFlags >> 24) & 0xF) + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v4 initWithCapacity:v5];
    v7 = 0;
    v8 = 0;
    while (1)
    {
      mSlideAsset = self->mSlideAsset;
      if (mSlideAsset)
      {
        mSlideAsset = (((self->mFlags >> 24) & 0xF) + 1);
      }

      if (v7 >= mSlideAsset)
      {
        break;
      }

      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = self->mSlideAsset[v7];
      v12 = [v11 asset];
      if (v12)
      {
        v13 = v12;
        if ([v12 isSnapshot])
        {
          v14 = [v13 imprint];
          v15 = v10;
          v16 = @"asset";
        }

        else
        {
          v14 = [v13 objectID];
          v15 = v10;
          v16 = @"assetID";
        }

        [v15 setObject:v14 forKey:v16];
      }

      v17 = [v11 kenBurnsType];
      if (v17)
      {
        [v10 setObject:v17 forKey:@"kenBurnsType"];
      }

      v18 = v11[3];
      if (v18 != 0.5)
      {
        *&v18 = v18;
        [v10 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v18), @"centerX"}];
      }

      v19 = v11[4];
      if (v19 != 0.5)
      {
        *&v19 = v19;
        [v10 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v19), @"centerY"}];
      }

      v20 = v11[5];
      if (v20 != 1.0)
      {
        *&v20 = v20;
        [v10 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v20), @"scale"}];
      }

      v21 = v11[6];
      if (v21 != 0.0)
      {
        *&v21 = v21;
        [v10 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v21), @"rotation"}];
      }

      [v6 addObject:v10];
      v8 |= [v10 count] != 0;

      ++v7;
    }

    v3 = v28;
    if (v8)
    {
      [v28 setObject:v6 forKey:@"slideAssets"];
    }
  }

  mPlug = self->mPlug;
  if (mPlug)
  {
    [v3 setObject:-[MCPlug imprint](mPlug forKey:{"imprint"), @"plug"}];
  }

  mSong = self->mSong;
  if (mSong)
  {
    [v3 setObject:-[MCSong imprint](mSong forKey:{"imprint"), @"song"}];
  }

  if (self->mIndex)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:"), @"index"}];
  }

  if (self->mAudioVolume != 1.0)
  {
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"audioVolume"}];
  }

  if (self->mAudioFadeInDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"audioFadeInDuration"}];
  }

  if (self->mAudioFadeOutDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"audioFadeOutDuration"}];
  }

  if (self->mAudioDuckLevel != 1.0)
  {
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"audioDuckLevel"}];
  }

  if (self->mAudioDuckInDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"audioDuckInDuration"}];
  }

  if (self->mAudioDuckOutDuration > 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"audioDuckOutDuration"}];
  }

  mFlags = self->mFlags;
  if (mFlags)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->mStartTime), @"startTime"}];
    mFlags = self->mFlags;
  }

  if ((mFlags & 2) != 0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->mDuration), @"duration"}];
  }

  mFrameID = self->mFrameID;
  if (mFrameID)
  {
    [v3 setObject:mFrameID forKey:@"frameID"];
  }

  mFrameAttributes = self->mFrameAttributes;
  if (mFrameAttributes)
  {
    [v3 setObject:mFrameAttributes forKey:@"frameAttributes"];
  }

  if ([(NSMutableSet *)self->mAnimationPaths count])
  {
    [v3 setObject:-[MCSlide imprintsForAnimationPaths](self forKey:{"imprintsForAnimationPaths"), @"animationPaths"}];
  }

  if ([(NSMutableSet *)self->mFilters count])
  {
    [v3 setObject:-[MCSlide imprintsForFilters](self forKey:{"imprintsForFilters"), @"filters"}];
  }

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->mSong == a4)
  {
    [(MCSlide *)self willChangeValueForKey:a3];
    [(MCSlide *)self didChangeValueForKey:a3];
  }

  if ([a3 isEqualToString:@"keyframes"])
  {
    v8 = @"animationPaths";
  }

  else
  {
    v8 = @"filters";
  }

  [(MCSlide *)self willChangeValueForKey:v8];

  [(MCSlide *)self didChangeValueForKey:v8];
}

- (MCAssetVideo)asset
{
  if (![(MCObject *)self isSnapshot])
  {
    objc_sync_enter(self);
    mSlideAsset = self->mSlideAsset;
    if (mSlideAsset)
    {
      mFlags = self->mFlags;
      if (mFlags >> 28 <= ((mFlags >> 24) & 0xF))
      {
        v9 = mFlags >> 28;
      }

      else
      {
        v9 = 0;
      }

      v10 = [mSlideAsset[v9] asset];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    objc_sync_exit(self);
    return v11;
  }

  v3 = self->mSlideAsset;
  if (!v3)
  {
    return 0;
  }

  v4 = self->mFlags;
  v5 = v4 >> 28;
  if (v5 <= ((v4 >> 24) & 0xF))
  {
    v6 = v3[v5];
  }

  else
  {
    v6 = *v3;
  }

  return [v6 asset];
}

- (void)setAsset:(id)a3
{
  if (!(a3 | self->mSlideAsset))
  {
    return;
  }

  objc_sync_enter(self);
  mSlideAsset = self->mSlideAsset;
  mFlags = self->mFlags;
  v7 = mFlags >> 28;
  if (mSlideAsset)
  {
    if (v7 <= ((mFlags >> 24) & 0xF))
    {
      v9 = self->mSlideAsset;
LABEL_17:
      if (mFlags >> 28 <= ((mFlags >> 24) & 0xF))
      {
        v22 = mFlags >> 28;
      }

      else
      {
        v22 = 0;
      }

      v9 = [v9[v22] asset];
      goto LABEL_21;
    }

    LODWORD(v8) = (BYTE3(mFlags) & 0xF) + 1;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v9 = malloc_type_calloc(v7 + 1, 8uLL, 0x80040B8603338uLL);
  self->mSlideAsset = v9;
  self->mFlags = self->mFlags & 0xFFFFFFFFF0FFFFFFLL | ((self->mFlags >> 28) << 24);
  if (mSlideAsset)
  {
    memcpy(v9, mSlideAsset, 8 * v8);
    free(mSlideAsset);
    v9 = self->mSlideAsset;
  }

  if (v8)
  {
    v10 = v9[v8 - 1];
    v27 = *(v10 + 24);
    v11 = *(v10 + 5);
    v12 = *(v10 + 6);
    v13 = [v10 asset];
    v14 = [self->mSlideAsset[(v8 - 1)] kenBurnsType];
    v9 = self->mSlideAsset;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v13 = 0;
  v14 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  v27 = _Q0;
  v12 = 0;
  v11 = 1.0;
  if (v9)
  {
LABEL_13:
    mFlags = self->mFlags;
    if (((mFlags >> 24) & 0xF) >= v8)
    {
      v20 = v8;
      while (1)
      {
        self->mSlideAsset[v20] = objc_alloc_init(MCSlideAsset);
        v21 = self->mSlideAsset;
        *(v21[v20] + 24) = v27;
        *(v21[v20] + 5) = v11;
        *(v21[v20] + 6) = v12;
        [v21[v20] setAsset:v13];
        [v13 addSlide:self];
        [self->mSlideAsset[v20] setKenBurnsType:v14];
        v9 = self->mSlideAsset;
        if (!v9)
        {
          goto LABEL_21;
        }

        v8 = (v8 + 1);
        mFlags = self->mFlags;
        ++v20;
        if (((mFlags >> 24) & 0xF) < v8)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_21:
  if (v9 != a3)
  {
    [v9 removeSlide:self];
    v23 = self->mSlideAsset;
    if (v23)
    {
      v24 = self->mFlags;
      if (v24 >> 28 <= ((v24 >> 24) & 0xF))
      {
        v25 = v24 >> 28;
      }

      else
      {
        v25 = 0;
      }

      v26 = v23[v25];
    }

    else
    {
      v26 = 0;
    }

    [v26 setAsset:{a3, v27}];
    [a3 addSlide:self];
  }

  objc_sync_exit(self);
}

- (NSString)kenBurnsType
{
  if (![(MCObject *)self isSnapshot])
  {
    objc_sync_enter(self);
    mSlideAsset = self->mSlideAsset;
    if (mSlideAsset)
    {
      mFlags = self->mFlags;
      if (mFlags >> 28 <= ((mFlags >> 24) & 0xF))
      {
        v9 = mFlags >> 28;
      }

      else
      {
        v9 = 0;
      }

      v10 = [mSlideAsset[v9] kenBurnsType];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    objc_sync_exit(self);
    return v11;
  }

  v3 = self->mSlideAsset;
  if (!v3)
  {
    return 0;
  }

  v4 = self->mFlags;
  v5 = v4 >> 28;
  if (v5 <= ((v4 >> 24) & 0xF))
  {
    v6 = v3[v5];
  }

  else
  {
    v6 = *v3;
  }

  return [v6 kenBurnsType];
}

- (void)setKenBurnsType:(id)a3
{
  if (!(a3 | self->mSlideAsset))
  {
    return;
  }

  objc_sync_enter(self);
  mSlideAsset = self->mSlideAsset;
  mFlags = self->mFlags;
  v7 = mFlags >> 28;
  if (mSlideAsset)
  {
    if (v7 <= ((mFlags >> 24) & 0xF))
    {
      v9 = self->mSlideAsset;
LABEL_17:
      if (mFlags >> 28 <= ((mFlags >> 24) & 0xF))
      {
        v22 = mFlags >> 28;
      }

      else
      {
        v22 = 0;
      }

      v9 = [v9[v22] kenBurnsType];
      goto LABEL_21;
    }

    LODWORD(v8) = (BYTE3(mFlags) & 0xF) + 1;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v9 = malloc_type_calloc(v7 + 1, 8uLL, 0x80040B8603338uLL);
  self->mSlideAsset = v9;
  self->mFlags = self->mFlags & 0xFFFFFFFFF0FFFFFFLL | ((self->mFlags >> 28) << 24);
  if (mSlideAsset)
  {
    memcpy(v9, mSlideAsset, 8 * v8);
    free(mSlideAsset);
    v9 = self->mSlideAsset;
  }

  if (v8)
  {
    v10 = v9[v8 - 1];
    v27 = *(v10 + 24);
    v11 = *(v10 + 5);
    v12 = *(v10 + 6);
    v13 = [v10 asset];
    v14 = [self->mSlideAsset[(v8 - 1)] kenBurnsType];
    v9 = self->mSlideAsset;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v13 = 0;
  v14 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  v27 = _Q0;
  v12 = 0;
  v11 = 1.0;
  if (v9)
  {
LABEL_13:
    mFlags = self->mFlags;
    if (((mFlags >> 24) & 0xF) >= v8)
    {
      v20 = v8;
      while (1)
      {
        self->mSlideAsset[v20] = objc_alloc_init(MCSlideAsset);
        v21 = self->mSlideAsset;
        *(v21[v20] + 24) = v27;
        *(v21[v20] + 5) = v11;
        *(v21[v20] + 6) = v12;
        [v21[v20] setAsset:v13];
        [v13 addSlide:self];
        [self->mSlideAsset[v20] setKenBurnsType:v14];
        v9 = self->mSlideAsset;
        if (!v9)
        {
          goto LABEL_21;
        }

        v8 = (v8 + 1);
        mFlags = self->mFlags;
        ++v20;
        if (((mFlags >> 24) & 0xF) < v8)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_21:
  if (v9 != a3)
  {
    v23 = self->mSlideAsset;
    if (v23)
    {
      v24 = self->mFlags;
      if (v24 >> 28 <= ((v24 >> 24) & 0xF))
      {
        v25 = v24 >> 28;
      }

      else
      {
        v25 = 0;
      }

      v26 = v23[v25];
    }

    else
    {
      v26 = 0;
    }

    [v26 setKenBurnsType:{a3, v27}];
  }

  objc_sync_exit(self);
}

- (CGPoint)center
{
  mSlideAsset = self->mSlideAsset;
  if (mSlideAsset)
  {
    mFlags = self->mFlags;
    if (mFlags >> 28 <= ((mFlags >> 24) & 0xF))
    {
      v4 = mFlags >> 28;
    }

    else
    {
      v4 = 0;
    }

    v5 = mSlideAsset[v4];
    v6 = (v5 + 24);
    p_y = (v5 + 32);
  }

  else
  {
    v6 = &CGPointZero;
    p_y = &CGPointZero.y;
  }

  v8 = *p_y;
  x = v6->x;
  result.y = v8;
  result.x = x;
  return result;
}

- (void)setCenter:(CGPoint)a3
{
  x = a3.x;
  mSlideAsset = self->mSlideAsset;
  if (mSlideAsset)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3.x == 0.5;
  }

  if (!v5 || a3.y != 0.5)
  {
    y = a3.y;
    mFlags = self->mFlags;
    v10 = mFlags >> 28;
    if (mSlideAsset)
    {
      if (v10 <= ((mFlags >> 24) & 0xF))
      {
LABEL_21:
        v23 = mSlideAsset[self->mFlags >> 28];
        v23[3] = x;
        v23[4] = y;
        return;
      }

      LODWORD(v11) = (BYTE3(mFlags) & 0xF) + 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v12 = malloc_type_calloc(v10 + 1, 8uLL, 0x80040B8603338uLL);
    self->mSlideAsset = v12;
    self->mFlags = self->mFlags & 0xFFFFFFFFF0FFFFFFLL | ((self->mFlags >> 28) << 24);
    if (mSlideAsset)
    {
      memcpy(v12, mSlideAsset, 8 * v11);
      free(mSlideAsset);
      v12 = self->mSlideAsset;
    }

    if (v11)
    {
      v13 = v12[v11 - 1];
      v15 = v13[3];
      v14 = v13[4];
      v17 = v13[5];
      v16 = *(v13 + 6);
      v18 = [v13 asset];
      v19 = [self->mSlideAsset[(v11 - 1)] kenBurnsType];
      v12 = self->mSlideAsset;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v16 = 0;
      v14 = 0.5;
      v17 = 1.0;
      v15 = 0.5;
    }

    mSlideAsset = v12;
    if (((self->mFlags >> 24) & 0xF) >= v11)
    {
      v20 = v11;
      do
      {
        self->mSlideAsset[v20] = objc_alloc_init(MCSlideAsset);
        v21 = self->mSlideAsset;
        v22 = v21[v20];
        v22[3] = v15;
        v22[4] = v14;
        *(v21[v20] + 5) = v17;
        *(v21[v20] + 6) = v16;
        [v21[v20] setAsset:v18];
        [v18 addSlide:self];
        [self->mSlideAsset[v20] setKenBurnsType:v19];
        v11 = (v11 + 1);
        ++v20;
      }

      while (((self->mFlags >> 24) & 0xF) >= v11);
      mSlideAsset = self->mSlideAsset;
    }

    goto LABEL_21;
  }
}

- (double)scale
{
  mSlideAsset = self->mSlideAsset;
  if (!mSlideAsset)
  {
    return 0.0;
  }

  mFlags = self->mFlags;
  if (mFlags >> 28 <= ((mFlags >> 24) & 0xF))
  {
    v4 = mFlags >> 28;
  }

  else
  {
    v4 = 0;
  }

  return *(mSlideAsset[v4] + 5);
}

- (void)setScale:(double)a3
{
  mSlideAsset = self->mSlideAsset;
  if (a3 != 1.0 || mSlideAsset != 0)
  {
    mFlags = self->mFlags;
    v8 = mFlags >> 28;
    if (mSlideAsset)
    {
      if (v8 <= ((mFlags >> 24) & 0xF))
      {
LABEL_18:
        *(mSlideAsset[self->mFlags >> 28] + 5) = a3;
        return;
      }

      LODWORD(v9) = (BYTE3(mFlags) & 0xF) + 1;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v10 = malloc_type_calloc(v8 + 1, 8uLL, 0x80040B8603338uLL);
    self->mSlideAsset = v10;
    self->mFlags = self->mFlags & 0xFFFFFFFFF0FFFFFFLL | ((self->mFlags >> 28) << 24);
    if (mSlideAsset)
    {
      memcpy(v10, mSlideAsset, 8 * v9);
      free(mSlideAsset);
      v10 = self->mSlideAsset;
    }

    if (v9)
    {
      v11 = v10[v9 - 1];
      v13 = v11[3];
      v12 = v11[4];
      v15 = v11[5];
      v14 = *(v11 + 6);
      v16 = [v11 asset];
      v17 = [self->mSlideAsset[(v9 - 1)] kenBurnsType];
      v10 = self->mSlideAsset;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v12 = 0.5;
      v15 = 1.0;
      v13 = 0.5;
    }

    mSlideAsset = v10;
    if (((self->mFlags >> 24) & 0xF) >= v9)
    {
      v18 = v9;
      do
      {
        self->mSlideAsset[v18] = objc_alloc_init(MCSlideAsset);
        v19 = self->mSlideAsset;
        v20 = v19[v18];
        v20[3] = v13;
        v20[4] = v12;
        *(v19[v18] + 5) = v15;
        *(v19[v18] + 6) = v14;
        [v19[v18] setAsset:v16];
        [v16 addSlide:self];
        [self->mSlideAsset[v18] setKenBurnsType:v17];
        v9 = (v9 + 1);
        ++v18;
      }

      while (((self->mFlags >> 24) & 0xF) >= v9);
      mSlideAsset = self->mSlideAsset;
    }

    goto LABEL_18;
  }
}

- (double)rotation
{
  mSlideAsset = self->mSlideAsset;
  if (!mSlideAsset)
  {
    return 0.0;
  }

  mFlags = self->mFlags;
  if (mFlags >> 28 <= ((mFlags >> 24) & 0xF))
  {
    v4 = mFlags >> 28;
  }

  else
  {
    v4 = 0;
  }

  return *(mSlideAsset[v4] + 6);
}

- (void)setRotation:(double)a3
{
  mSlideAsset = self->mSlideAsset;
  if (a3 != 1.0 || mSlideAsset != 0)
  {
    mFlags = self->mFlags;
    v8 = mFlags >> 28;
    if (mSlideAsset)
    {
      if (v8 <= ((mFlags >> 24) & 0xF))
      {
LABEL_18:
        *(mSlideAsset[self->mFlags >> 28] + 6) = a3;
        return;
      }

      LODWORD(v9) = (BYTE3(mFlags) & 0xF) + 1;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v10 = malloc_type_calloc(v8 + 1, 8uLL, 0x80040B8603338uLL);
    self->mSlideAsset = v10;
    self->mFlags = self->mFlags & 0xFFFFFFFFF0FFFFFFLL | ((self->mFlags >> 28) << 24);
    if (mSlideAsset)
    {
      memcpy(v10, mSlideAsset, 8 * v9);
      free(mSlideAsset);
      v10 = self->mSlideAsset;
    }

    if (v9)
    {
      v11 = v10[v9 - 1];
      v13 = v11[3];
      v12 = v11[4];
      v15 = v11[5];
      v14 = *(v11 + 6);
      v16 = [v11 asset];
      v17 = [self->mSlideAsset[(v9 - 1)] kenBurnsType];
      v10 = self->mSlideAsset;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v12 = 0.5;
      v15 = 1.0;
      v13 = 0.5;
    }

    mSlideAsset = v10;
    if (((self->mFlags >> 24) & 0xF) >= v9)
    {
      v18 = v9;
      do
      {
        self->mSlideAsset[v18] = objc_alloc_init(MCSlideAsset);
        v19 = self->mSlideAsset;
        v20 = v19[v18];
        v20[3] = v13;
        v20[4] = v12;
        *(v19[v18] + 5) = v15;
        *(v19[v18] + 6) = v14;
        [v19[v18] setAsset:v16];
        [v16 addSlide:self];
        [self->mSlideAsset[v18] setKenBurnsType:v17];
        v9 = (v9 + 1);
        ++v18;
      }

      while (((self->mFlags >> 24) & 0xF) >= v9);
      mSlideAsset = self->mSlideAsset;
    }

    goto LABEL_18;
  }
}

- (MCSong)song
{
  if ([(MCObject *)self isSnapshot])
  {
    return self->mSong;
  }

  objc_sync_enter(self);
  v3 = self->mSong;
  objc_sync_exit(self);
  return v3;
}

- (void)setSongForAsset:(id)a3
{
  if ([(MCSong *)self->mSong asset]!= a3)
  {
    objc_sync_enter(self);
    [(MCSlide *)self willChangeValueForKey:@"song"];
    mSong = self->mSong;
    if (mSong)
    {
      [(MCSong *)mSong removeObserver:self forKeyPath:@"builtVolume"];
      [(MCSong *)self->mSong removeObserver:self forKeyPath:@"builtAudio"];
      [(MCSong *)self->mSong setSlideIfSlideSong:0];

      self->mSong = 0;
    }

    if (a3)
    {
      v6 = [(MCObject *)[MCSong alloc] initFromScratchWithMontage:self->super.mMontage];
      [(MCSong *)v6 setAsset:a3];
      [(MCSong *)v6 setSlideIfSlideSong:self];
      [(MCSong *)v6 addObserver:self forKeyPath:@"builtVolume" options:0 context:0];
      [(MCSong *)v6 addObserver:self forKeyPath:@"builtAudio" options:0 context:0];
      self->mSong = v6;
    }

    [(MCSlide *)self didChangeValueForKey:@"song"];

    objc_sync_exit(self);
  }
}

- (MCPlugSlide)plug
{
  if ([(MCObject *)self isSnapshot])
  {
    return self->mPlug;
  }

  objc_sync_enter(self);
  v3 = self->mPlug;
  objc_sync_exit(self);
  return v3;
}

- (void)setPlug:(id)a3
{
  if (self->mPlug != a3)
  {
    objc_sync_enter(self);
    [(MCPlugSlide *)self->mPlug setParentSlide:0];

    v5 = a3;
    self->mPlug = v5;
    [(MCPlugSlide *)v5 setParentSlide:self];

    objc_sync_exit(self);
  }
}

- (id)frameAttributeForKey:(id)a3
{
  if ([(MCObject *)self isSnapshot])
  {
    mFrameAttributes = self->mFrameAttributes;

    return [(NSMutableDictionary *)mFrameAttributes objectForKey:a3];
  }

  else
  {
    objc_sync_enter(self);
    v7 = [(NSMutableDictionary *)self->mFrameAttributes objectForKey:a3];
    objc_sync_exit(self);
    return v7;
  }
}

- (void)setFrameAttribute:(id)a3 forKey:(id)a4
{
  [(MCSlide *)self willChangeValueForKey:@"frameAttributes"];
  objc_sync_enter(self);
  mFrameAttributes = self->mFrameAttributes;
  if (a3)
  {
    if (mFrameAttributes)
    {
      [(NSMutableDictionary *)mFrameAttributes setObject:a3 forKey:a4];
    }

    else
    {
      self->mFrameAttributes = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{a3, a4, 0}];
    }
  }

  else if (mFrameAttributes)
  {
    [(NSMutableDictionary *)mFrameAttributes removeObjectForKey:a4];
  }

  objc_sync_exit(self);

  [(MCSlide *)self didChangeValueForKey:@"frameAttributes"];
}

- (NSDictionary)frameAttributes
{
  if ([(MCObject *)self isSnapshot])
  {
    return &self->mFrameAttributes->super;
  }

  objc_sync_enter(self);
  v3 = [NSDictionary dictionaryWithDictionary:self->mFrameAttributes];
  objc_sync_exit(self);
  return v3;
}

- (void)setFrameAttributes:(id)a3
{
  if (self->mFrameAttributes != a3)
  {
    objc_sync_enter(self);

    self->mFrameAttributes = 0;
    if (a3)
    {
      self->mFrameAttributes = [[NSMutableDictionary alloc] initWithDictionary:a3];
    }

    objc_sync_exit(self);
  }
}

- (unsigned)countOfLayouts
{
  if (self->mSlideAsset)
  {
    return (BYTE3(self->mFlags) & 0xF) + 1;
  }

  else
  {
    return 0;
  }
}

- (void)setCurrentLayoutIndex:(unsigned __int8)a3
{
  v3 = a3;
  if (self->mSlideAsset)
  {
    v5 = (self->mFlags & 0xF000000) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    self->mFlags = (a3 << 28) & 0xFFFFFFFFF0000000 | self->mFlags & 0xFFFFFFF;
  }

  else
  {
    [(MCSlide *)self willChangeValueForKey:@"asset"];
    self->mFlags = (v3 << 28) & 0xFFFFFFFFF0000000 | self->mFlags & 0xFFFFFFF;

    [(MCSlide *)self didChangeValueForKey:@"asset"];
  }
}

- (void)_copySelfToSnapshot:(id)a3
{
  objc_sync_enter(self);
  mFlags = self->mFlags;
  *(a3 + 8) = mFlags;
  if (self->mSlideAsset)
  {
    v6 = 0;
    *(a3 + 3) = malloc_type_malloc(((mFlags >> 21) & 0x78) + 8, 0x9B5DCC9EuLL);
    mSlideAsset = self->mSlideAsset;
    if (!mSlideAsset)
    {
      goto LABEL_4;
    }

LABEL_3:
    mSlideAsset = (((self->mFlags >> 24) & 0xF) + 1);
LABEL_4:
    while (v6 < mSlideAsset)
    {
      *(*(a3 + 3) + 8 * v6) = objc_alloc_init(MCSlideAsset);
      [*(*(a3 + 3) + 8 * v6) setAsset:{objc_msgSend(objc_msgSend(self->mSlideAsset[v6], "asset"), "snapshot")}];
      [*(*(a3 + 3) + 8 * v6) setKenBurnsType:{objc_msgSend(self->mSlideAsset[v6], "kenBurnsType")}];
      *(*(*(a3 + 3) + 8 * v6) + 24) = *(self->mSlideAsset[v6] + 24);
      mSlideAsset = self->mSlideAsset;
      v8 = *(a3 + 3);
      *(*(v8 + 8 * v6) + 40) = *(mSlideAsset[v6] + 5);
      *(*(v8 + 8 * v6) + 48) = *(mSlideAsset[v6] + 6);
      ++v6;
      if (mSlideAsset)
      {
        goto LABEL_3;
      }
    }
  }

  *(a3 + 11) = [(MCObject *)self->mSong snapshot];
  *(a3 + 12) = self->mIndex;
  *(a3 + 18) = LODWORD(self->mAudioVolume);
  *(a3 + 13) = *&self->mAudioFadeInDuration;
  *(a3 + 14) = *&self->mAudioFadeOutDuration;
  *(a3 + 19) = LODWORD(self->mAudioDuckLevel);
  *(a3 + 15) = *&self->mAudioDuckInDuration;
  *(a3 + 16) = *&self->mAudioDuckOutDuration;
  *(a3 + 17) = *&self->mStartTime;
  *(a3 + 18) = *&self->mDuration;
  mFrameID = self->mFrameID;
  if (mFrameID)
  {
    *(a3 + 19) = [(NSString *)mFrameID copy];
  }

  mFrameAttributes = self->mFrameAttributes;
  if (mFrameAttributes)
  {
    *(a3 + 4) = [(NSMutableDictionary *)mFrameAttributes copy];
  }

  if (self->mAnimationPaths)
  {
    v11 = [(MCSlide *)self animationPaths];
    if ([(NSSet *)v11 count])
    {
      *(a3 + 5) = [[NSMutableSet alloc] initWithCapacity:{-[NSSet count](v11, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = [(NSSet *)v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v11);
            }

            [*(a3 + 5) addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * v14), "snapshot")}];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [(NSSet *)v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v12);
      }
    }
  }

  if (self->mFilters)
  {
    v15 = [(MCSlide *)self filters];
    if ([(NSSet *)v15 count])
    {
      *(a3 + 6) = [[NSMutableSet alloc] initWithCapacity:{-[NSSet count](v15, "count")}];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v16 = [(NSSet *)v15 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v16)
      {
        v17 = *v20;
        do
        {
          v18 = 0;
          do
          {
            if (*v20 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [*(a3 + 6) addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v18), "snapshot")}];
            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [(NSSet *)v15 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v16);
      }
    }
  }

  objc_sync_exit(self);
}

- (void)initAnimationPathsWithImprints:(id)a3
{
  if (a3)
  {
    if ([a3 count])
    {
      self->mAnimationPaths = objc_alloc_init(NSMutableSet);
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(a3);
            }

            v9 = [MCObjectLight objectWithImprint:*(*(&v12 + 1) + 8 * v8)];
            [(NSMutableSet *)self->mAnimationPaths addObject:v9];
            if (![(MCObject *)self isSnapshot])
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v11 = @"keyframes";
              if ((isKindOfClass & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_13;
                }

                [v9 addObserver:self forKeyPath:@"combineOperation" options:0 context:0];
                v11 = @"animationPaths";
              }

              [v9 addObserver:self forKeyPath:v11 options:0 context:0];
            }

LABEL_13:
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)demolishAnimationPaths
{
  mAnimationPaths = self->mAnimationPaths;
  if (mAnimationPaths)
  {
    obj = mAnimationPaths;
    objc_sync_enter(mAnimationPaths);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->mAnimationPaths;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = *v14;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![(MCObject *)self isSnapshot])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v10 = @"keyframes";
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_12;
            }

            [v8 removeObserver:self forKeyPath:@"combineOperation"];
            v10 = @"animationPaths";
          }

          [v8 removeObserver:self forKeyPath:v10];
        }

LABEL_12:
        [v8 demolish];
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v5)
      {
LABEL_14:
        objc_sync_enter(self);
        v11 = self->mAnimationPaths;
        self->mAnimationPaths = 0;
        objc_sync_exit(self);
        objc_sync_exit(obj);
        return;
      }
    }
  }
}

- (id)imprintsForAnimationPaths
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(MCSlide *)self animationPaths];
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8), "imprint")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)animationPaths
{
  v3 = sEmptySet;
  v4 = [(MCObject *)self isSnapshot];
  mAnimationPaths = self->mAnimationPaths;
  if ((v4 & 1) == 0)
  {
    if (mAnimationPaths)
    {
      objc_sync_enter(self->mAnimationPaths);
      if ([(NSMutableSet *)self->mAnimationPaths count])
      {
        v3 = [[NSSet alloc] initWithSet:self->mAnimationPaths];
      }

      objc_sync_exit(mAnimationPaths);
    }

    return v3;
  }

  return &mAnimationPaths->super;
}

- (unint64_t)countOfAnimationPaths
{
  v3 = [(MCObject *)self isSnapshot];
  mAnimationPaths = self->mAnimationPaths;
  if (v3)
  {
    v5 = self->mAnimationPaths;

    return [(NSMutableSet *)v5 count];
  }

  else
  {
    if (!mAnimationPaths)
    {
      return 0;
    }

    objc_sync_enter(self->mAnimationPaths);
    v7 = [(NSMutableSet *)self->mAnimationPaths count];
    objc_sync_exit(mAnimationPaths);
    return v7;
  }
}

- (id)animationPathForKey:(id)a3
{
  if ([(MCObject *)self isSnapshot])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    mAnimationPaths = self->mAnimationPaths;
    v6 = [(NSMutableSet *)mAnimationPaths countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = *v22;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(mAnimationPaths);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        if ([objc_msgSend(v9 "key")])
        {
          return v9;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSMutableSet *)mAnimationPaths countByEnumeratingWithState:&v21 objects:v26 count:16];
          v9 = 0;
          if (v6)
          {
            goto LABEL_4;
          }

          return v9;
        }
      }
    }

    return 0;
  }

  v10 = self->mAnimationPaths;
  if (!v10)
  {
    return 0;
  }

  objc_sync_enter(self->mAnimationPaths);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->mAnimationPaths;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([objc_msgSend(v9 "key")])
        {
          if (v9)
          {
            v15 = v9;
          }

          goto LABEL_24;
        }
      }

      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_24:
  objc_sync_exit(v10);
  return v9;
}

- (void)addAnimationPath:(id)a3
{
  -[MCSlide removeAnimationPathForKey:](self, "removeAnimationPathForKey:", [a3 key]);
  if (!self->mAnimationPaths)
  {
    objc_sync_enter(self);
    self->mAnimationPaths = objc_alloc_init(NSMutableSet);
    objc_sync_exit(self);
  }

  v7 = [[NSSet alloc] initWithObjects:{a3, 0}];
  [(MCSlide *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:?];
  mAnimationPaths = self->mAnimationPaths;
  objc_sync_enter(mAnimationPaths);
  [(NSMutableSet *)self->mAnimationPaths addObject:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = @"keyframes";
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    [a3 addObserver:self forKeyPath:@"combineOperation" options:0 context:0];
    v6 = @"animationPaths";
  }

  [a3 addObserver:self forKeyPath:v6 options:0 context:0];
LABEL_8:
  objc_sync_exit(mAnimationPaths);
  [(MCSlide *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v7];
}

- (void)removeAnimationPathForKey:(id)a3
{
  mAnimationPaths = self->mAnimationPaths;
  if (!mAnimationPaths)
  {
    return;
  }

  objc_sync_enter(self->mAnimationPaths);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->mAnimationPaths;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = *v15;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v14 + 1) + 8 * i);
      if ([objc_msgSend(v10 "key")])
      {
        if (!v10)
        {
          goto LABEL_14;
        }

        v11 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = @"keyframes";
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_18:
            v13 = [[NSSet alloc] initWithObjects:{v10, 0}];
            [(MCSlide *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v13];
            [(NSMutableSet *)self->mAnimationPaths removeObject:v10];
            objc_sync_exit(mAnimationPaths);
            [(MCSlide *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v13];

            return;
          }

          [v10 removeObserver:self forKeyPath:@"combineOperation"];
          v12 = @"animationPaths";
        }

        [v10 removeObserver:self forKeyPath:v12];
        goto LABEL_18;
      }
    }

    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_14:
  objc_sync_exit(mAnimationPaths);
}

- (void)removeAllAnimationPaths
{
  if ([(NSMutableSet *)self->mAnimationPaths count])
  {
    obj = self->mAnimationPaths;
    objc_sync_enter(obj);
    v3 = [[NSSet alloc] initWithArray:{-[NSMutableSet allObjects](self->mAnimationPaths, "allObjects")}];
    [(MCSlide *)self willChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v3];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    mAnimationPaths = self->mAnimationPaths;
    v5 = [(NSMutableSet *)mAnimationPaths countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = *v13;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(mAnimationPaths);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = @"keyframes";
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          [v8 removeObserver:self forKeyPath:@"combineOperation"];
          v10 = @"animationPaths";
        }

        [v8 removeObserver:self forKeyPath:v10];
      }

      v5 = [(NSMutableSet *)mAnimationPaths countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v5)
      {
LABEL_13:
        [(NSMutableSet *)self->mAnimationPaths removeAllObjects];
        objc_sync_exit(obj);
        [(MCSlide *)self didChangeValueForKey:@"animationPaths" withSetMutation:1 usingObjects:v3];

        return;
      }
    }
  }
}

- (void)initFiltersWithImprints:(id)a3
{
  if (a3)
  {
    if ([a3 count])
    {
      self->mFilters = objc_alloc_init(NSMutableSet);
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(a3);
            }

            v9 = [MCObject objectWithImprint:*(*(&v10 + 1) + 8 * v8) andMontage:self->super.mMontage];
            [(NSMutableSet *)self->mFilters addObject:v9];
            if (![(MCObject *)self isSnapshot])
            {
              [(MCSlide *)self observeFilter:v9];
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)demolishFilters
{
  mFilters = self->mFilters;
  if (mFilters)
  {
    objc_sync_enter(self->mFilters);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->mFilters;
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
            [(MCSlide *)self unobserveFilter:v8];
          }

          [v8 demolish];
        }

        v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    if (self->mFilters)
    {
      objc_sync_enter(self);
      v9 = self->mFilters;
      self->mFilters = 0;
      objc_sync_exit(self);
    }

    objc_sync_exit(mFilters);
  }
}

- (id)imprintsForFilters
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(MCSlide *)self filters];
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8), "imprint")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)orderedFilters
{
  if ([(MCObject *)self isSnapshot])
  {
    mCachedOrderedFilters = self->mCachedOrderedFilters;
    if (!mCachedOrderedFilters)
    {
      v4 = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:1];
      self->mCachedOrderedFilters = [-[NSMutableSet allObjects](self->mFilters "allObjects")];

      return self->mCachedOrderedFilters;
    }
  }

  else
  {
    mFilters = self->mFilters;
    if (mFilters)
    {
      objc_sync_enter(self->mFilters);
      v6 = self->mCachedOrderedFilters;
      if (!v6)
      {
        v7 = [[NSSortDescriptor alloc] initWithKey:@"index" ascending:1];
        self->mCachedOrderedFilters = [-[NSMutableSet allObjects](self->mFilters "allObjects")];

        v6 = self->mCachedOrderedFilters;
      }

      mCachedOrderedFilters = v6;
      objc_sync_exit(mFilters);
    }

    else
    {
      return 0;
    }
  }

  return mCachedOrderedFilters;
}

- (NSSet)filters
{
  v3 = sEmptySet;
  v4 = [(MCObject *)self isSnapshot];
  mFilters = self->mFilters;
  if ((v4 & 1) == 0)
  {
    if (mFilters)
    {
      objc_sync_enter(self->mFilters);
      if ([(NSMutableSet *)self->mFilters count])
      {
        v3 = [[NSSet alloc] initWithSet:self->mFilters];
      }

      objc_sync_exit(mFilters);
    }

    return v3;
  }

  return &mFilters->super;
}

- (unint64_t)countOfFilters
{
  v3 = [(MCObject *)self isSnapshot];
  mFilters = self->mFilters;
  if (v3)
  {
    v5 = self->mFilters;

    return [(NSMutableSet *)v5 count];
  }

  else
  {
    if (!mFilters)
    {
      return 0;
    }

    objc_sync_enter(self->mFilters);
    v7 = [(NSMutableSet *)self->mFilters count];
    objc_sync_exit(mFilters);
    return v7;
  }
}

- (id)filterAtIndex:(unint64_t)a3
{
  if (![(MCObject *)self isSnapshot])
  {
    mFilters = self->mFilters;
    if (mFilters)
    {
      objc_sync_enter(self->mFilters);
      mCachedOrderedFilters = self->mCachedOrderedFilters;
      if (mCachedOrderedFilters)
      {
        v9 = [(NSArray *)mCachedOrderedFilters objectAtIndex:a3];
LABEL_29:
        v14 = v9;
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v15 = self->mFilters;
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v16)
        {
          v17 = *v21;
          while (2)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v21 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v20 + 1) + 8 * i);
              if ([v19 index] == a3)
              {
                v9 = v19;
                goto LABEL_29;
              }
            }

            v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
            v14 = 0;
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      objc_sync_exit(mFilters);
      return v14;
    }

    return 0;
  }

  v5 = self->mCachedOrderedFilters;
  if (!v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = self->mFilters;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = *v25;
LABEL_11:
      v13 = 0;
      while (1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        if ([v14 index] == a3)
        {
          return v14;
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
          v14 = 0;
          if (v11)
          {
            goto LABEL_11;
          }

          return v14;
        }
      }
    }

    return 0;
  }

  return [(NSArray *)v5 objectAtIndex:a3];
}

- (id)addFilterWithFilterID:(id)a3
{
  v5 = [(MCSlide *)self countOfFilters];

  return [(MCSlide *)self insertFilterWithFilterID:a3 atIndex:v5];
}

- (id)insertFilterWithFilterID:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [(MCObject *)[MCFilter alloc] initFromScratchWithMontage:self->super.mMontage];
  [v7 setFilterID:a3];
  [v7 setIndex:a4];
  if (!self->mFilters)
  {
    objc_sync_enter(self);
    self->mFilters = objc_alloc_init(NSMutableSet);
    objc_sync_exit(self);
  }

  v8 = [[NSSet alloc] initWithObjects:{v7, 0}];
  [(MCSlide *)self willChangeValueForKey:@"filters" withSetMutation:1 usingObjects:v8];
  obj = self->mFilters;
  objc_sync_enter(obj);

  self->mCachedOrderedFilters = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mFilters = self->mFilters;
  v10 = [(NSMutableSet *)mFilters countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(mFilters);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 index] >= a4)
        {
          [v13 setIndex:{objc_msgSend(v13, "index") + 1}];
        }
      }

      v10 = [(NSMutableSet *)mFilters countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(NSMutableSet *)self->mFilters addObject:v7];
  [(MCSlide *)self observeFilter:v7];
  objc_sync_exit(obj);
  [(MCSlide *)self didChangeValueForKey:@"filters" withSetMutation:1 usingObjects:v8];

  return v7;
}

- (void)removeFiltersAtIndices:(id)a3
{
  mFilters = self->mFilters;
  if (mFilters)
  {
    obj = mFilters;
    objc_sync_enter(mFilters);
    v6 = objc_alloc_init(NSMutableSet);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->mFilters;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([a3 containsIndex:{objc_msgSend(v11, "index")}])
          {
            [(MCSlide *)self unobserveFilter:v11];
            [v6 addObject:v11];
          }

          else
          {
            [v11 setIndex:{objc_msgSend(v11, "index") - objc_msgSend(a3, "countOfIndexesInRange:", 0, objc_msgSend(v11, "index"))}];
          }
        }

        v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(MCSlide *)self willChangeValueForKey:@"filters" withSetMutation:2 usingObjects:v6];

    self->mCachedOrderedFilters = 0;
    [(NSMutableSet *)self->mFilters minusSet:v6];
    objc_sync_exit(obj);
    [(MCSlide *)self didChangeValueForKey:@"filters" withSetMutation:2 usingObjects:v6];
  }
}

- (void)removeAllFilters
{
  v3 = [NSIndexSet indexSetWithIndexesInRange:0, [(MCSlide *)self countOfFilters]];

  [(MCSlide *)self removeFiltersAtIndices:v3];
}

- (void)moveFiltersAtIndices:(id)a3 toIndex:(unint64_t)a4
{
  if (self->mFilters)
  {
    [(MCSlide *)self willChangeValueForKey:@"orderedFilters"];
    mFilters = self->mFilters;
    objc_sync_enter(mFilters);

    self->mCachedOrderedFilters = 0;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->mFilters;
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

    objc_sync_exit(mFilters);
    [(MCSlide *)self didChangeValueForKey:@"orderedFilters"];
  }
}

- (void)observeFilter:(id)a3
{
  [a3 addObserver:self forKeyPath:@"index" options:0 context:0];
  [a3 addObserver:self forKeyPath:@"filterID" options:0 context:0];
  [a3 addObserver:self forKeyPath:@"attributes" options:0 context:0];

  [a3 addObserver:self forKeyPath:@"animationPaths" options:0 context:0];
}

- (void)unobserveFilter:(id)a3
{
  [a3 removeObserver:self forKeyPath:@"index"];
  [a3 removeObserver:self forKeyPath:@"filterID"];
  [a3 removeObserver:self forKeyPath:@"attributes"];

  [a3 removeObserver:self forKeyPath:@"animationPaths"];
}

@end