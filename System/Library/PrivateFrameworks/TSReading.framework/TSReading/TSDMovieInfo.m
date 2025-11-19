@interface TSDMovieInfo
- (BOOL)containsProperty:(int)a3;
- (CGSize)rawDataSize;
- (TSDMovieInfo)initWithContext:(id)a3 geometry:(id)a4;
- (TSDMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5;
- (TSDMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 movieData:(id)a6 loadedAsset:(id)a7;
- (TSDMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 movieRemoteURL:(id)a6 loadedAsset:(id)a7;
- (double)doubleValueForProperty:(int)a3;
- (float)floatValueForProperty:(int)a3;
- (id)animationFilters;
- (id)copyWithContext:(id)a3 stylesheet:(id)a4;
- (id)generateEmptyPosterImageForContext:(id)a3;
- (id)makeAVAssetWithOptions:(id)a3;
- (id)makePosterImageGeneratorWithAVAsset:(id)a3;
- (id)mediaDisplayName;
- (id)mediaFileType;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)objectForProperty:(int)a3;
- (id)presetKind;
- (id)synchronouslyGenerateDefaultPosterImageForContext:(id)a3;
- (int)intValueForProperty:(int)a3;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)dealloc;
- (void)p_setPropertiesFromLoadedAsset:(id)a3;
- (void)setAudioOnlyImageData:(id)a3;
- (void)setImportedAuxiliaryMovieData:(id)a3;
- (void)setMovieData:(id)a3;
- (void)setMovieRemoteURL:(id)a3;
- (void)setPosterImageData:(id)a3;
- (void)setStreaming:(BOOL)a3;
- (void)setStyle:(id)a3;
- (void)setUrlForMPMPC:(id)a3;
@end

@implementation TSDMovieInfo

- (void)setMovieData:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mMovieData = a3;
}

- (void)setMovieRemoteURL:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = [a3 copy];

  self->mMovieRemoteURL = v5;
}

- (void)setImportedAuxiliaryMovieData:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mImportedAuxiliaryMovieData = a3;
}

- (void)setAudioOnlyImageData:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mAudioOnlyImageData = a3;
}

- (void)setUrlForMPMPC:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->mURLForMPMPC = a3;
}

- (TSDMovieInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo initWithContext:geometry:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 81, @"please call the other init methods"}];
  return 0;
}

- (TSDMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5
{
  v9.receiver = self;
  v9.super_class = TSDMovieInfo;
  v6 = [(TSDMediaInfo *)&v9 initWithContext:a3 geometry:a4];
  v7 = v6;
  if (v6)
  {
    [(TSDMovieInfo *)v6 setStyle:a5];
    v7->mVolume = 1.0;
  }

  return v7;
}

- (TSDMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 movieData:(id)a6 loadedAsset:(id)a7
{
  v9 = [(TSDMovieInfo *)self initWithContext:a3 geometry:a4 style:a5];
  if (v9)
  {
    v9->mMovieData = a6;
    [(TSDMovieInfo *)v9 p_setPropertiesFromLoadedAsset:a7];
  }

  return v9;
}

- (TSDMovieInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 movieRemoteURL:(id)a6 loadedAsset:(id)a7
{
  v9 = [(TSDMovieInfo *)self initWithContext:a3 geometry:a4 style:a5];
  if (v9)
  {
    v9->mMovieRemoteURL = [a6 copy];
    [(TSDMovieInfo *)v9 p_setPropertiesFromLoadedAsset:a7];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMovieInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

- (id)copyWithContext:(id)a3 stylesheet:(id)a4
{
  v14.receiver = self;
  v14.super_class = TSDMovieInfo;
  v7 = [(TSDMediaInfo *)&v14 copyWithContext:?];
  if (v7)
  {
    *(v7 + 21) = [(TSPData *)self->mMovieData copyWithContext:a3];
    *(v7 + 22) = [(NSURL *)self->mMovieRemoteURL copy];
    *(v7 + 25) = *&self->mStartTime;
    *(v7 + 26) = *&self->mEndTime;
    *(v7 + 27) = *&self->mPosterTime;
    *(v7 + 31) = self->mLoopOption;
    *(v7 + 64) = LODWORD(self->mVolume);
    v7[288] = self->mAudioOnly;
    v7[260] = self->mStreaming;
    *(v7 + 24) = [(TSPData *)self->mAudioOnlyImageData copyWithContext:a3];
    *(v7 + 28) = [(TSPData *)self->mPosterImageData copyWithContext:a3];
    *(v7 + 232) = self->mNaturalSize;
    v7[268] = self->mAllowsAirPlayVideo;
    v7[269] = self->mUsesAirPlayVideoWhileAirPlayScreenIsActive;
    *(v7 + 66) = self->mControlStyle;
    *(v7 + 34) = [(NSURL *)self->mURLForMPMPC copy];
    if (a4)
    {
LABEL_11:
      v12 = [[TSSStyleMapper alloc] initWithTargetStylesheet:a4 newStyleDOLCContext:0];
      objc_opt_class();
      [(TSSStyleMapper *)v12 mappedStyleForStyle:self->mStyle];
      *(v7 + 35) = TSUDynamicCast();

      return v7;
    }

    [a3 documentObject];
    if (objc_opt_respondsToSelector())
    {
      v8 = a3;
    }

    else
    {
      [(TSPObjectContext *)[(TSPObject *)self context] documentObject];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v9 = [(TSSStyle *)self->mStyle stylesheet];
LABEL_9:
        a4 = v9;
        if (!v9)
        {
          v10 = [MEMORY[0x277D6C290] currentHandler];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo copyWithContext:stylesheet:]"];
          [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 188, @"invalid nil value for '%s'", "stylesheet"}];
          a4 = 0;
        }

        goto LABEL_11;
      }

      v8 = [(TSPObject *)self context];
    }

    v9 = [[(TSPObjectContext *)v8 documentObject] performSelector:sel_stylesheet];
    goto LABEL_9;
  }

  return v7;
}

- (id)mediaDisplayName
{
  if ([(TSDMovieInfo *)self movieData])
  {
    v3 = [(TSDMovieInfo *)self movieData];

    return [(TSPData *)v3 filename];
  }

  else
  {
    v5 = [(TSDMovieInfo *)self movieRemoteURL];

    return [(NSURL *)v5 lastPathComponent];
  }
}

- (id)mediaFileType
{
  if ([(TSDMovieInfo *)self movieData])
  {
    v3 = [(TSDMovieInfo *)self movieData];

    return [(TSPData *)v3 type];
  }

  else
  {
    v6 = 0;
    v5 = [(TSDMovieInfo *)self movieRemoteURL];
    [(NSURL *)v5 getResourceValue:&v6 forKey:*MEMORY[0x277CBE918] error:0];
    return v6;
  }
}

- (void)setStyle:(id)a3
{
  if (self->mStyle != a3)
  {
    [(TSDDrawableInfo *)self willChangeProperties:+[TSDMediaStyle properties]];
    [(TSPObject *)self willModify];
    v5 = a3;

    self->mStyle = a3;
  }
}

- (id)presetKind
{
  v3 = String;
  objc_opt_class();
  [(TSDMovieInfo *)self style];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return v3;
  }

  return [v4 presetKind];
}

- (void)setPosterImageData:(id)a3
{
  if (self->mPosterImageData != a3)
  {
    [(TSPObject *)self willModify];
    v5 = a3;

    self->mPosterImageData = a3;
  }
}

- (CGSize)rawDataSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)p_setPropertiesFromLoadedAsset:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo p_setPropertiesFromLoadedAsset:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 276, @"invalid nil value for '%s'", "asset"}];
  }

  if ([a3 statusOfValueForKey:@"duration" error:0] != 2)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo p_setPropertiesFromLoadedAsset:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 277, @"Invalid parameter not satisfying: %s", "[asset statusOfValueForKey:@duration error:NULL] == AVKeyValueStatusLoaded"}];
  }

  if ([a3 statusOfValueForKey:@"tracks" error:0] != 2)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo p_setPropertiesFromLoadedAsset:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 278, @"Invalid parameter not satisfying: %s", "[asset statusOfValueForKey:@tracks error:NULL] == AVKeyValueStatusLoaded"}];
  }

  memset(&v25, 0, sizeof(v25));
  if (a3)
  {
    [a3 duration];
  }

  else
  {
    v25 = **&MEMORY[0x277CC08F0];
  }

  time = v25;
  Seconds = CMTimeGetSeconds(&time);
  [(TSDMovieInfo *)self setStartTime:0.0];
  [(TSDMovieInfo *)self setEndTime:Seconds];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [a3 tracks];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    v16 = *MEMORY[0x277CE5E40];
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if ([v18 isEnabled] && (objc_msgSend(v18, "hasMediaCharacteristic:", v16) & 1) != 0)
        {
          v19 = 0;
          goto LABEL_21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_21:
  [(TSDMovieInfo *)self setAudioOnly:v19];
}

- (void)setStreaming:(BOOL)a3
{
  if (self->mStreaming != a3)
  {
    v3 = a3;
    [(TSPObject *)self willModify];
    self->mStreaming = v3;
    if (v3)
    {

      [(TSDDrawableInfo *)self setAspectRatioLocked:0];
    }
  }
}

- (id)animationFilters
{
  if ([(TSDMovieInfo *)self isAudioOnly])
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = &kTSDAnimationFilterAudio;
  }

  else
  {
    v5 = [(TSDMovieInfo *)self isStreaming];
    v3 = MEMORY[0x277CBEB98];
    if (!v5)
    {
      return [MEMORY[0x277CBEB98] setWithObjects:{kTSDAnimationFilterStandard, kTSDAnimationFilterMovie, 0}];
    }

    v4 = &kTSDAnimationFilterMovie;
  }

  v6 = *v4;

  return [v3 setWithObject:v6];
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDMovieInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __37__TSDMovieInfo_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 370, @"nil object after cast"}];
  }

  if ([*(a1 + 40) movieData])
  {
    v5 = [v2 movieData];
    if (v5 == [*(a1 + 40) movieData])
    {
      v6 = 5;
    }

    else
    {
      v6 = 1;
    }
  }

  else if ([*(a1 + 40) movieRemoteURL])
  {
    if ([objc_msgSend(v2 "movieRemoteURL")])
    {
      v6 = 5;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  [*(a1 + 40) posterTime];
  v8 = v7;
  [v2 posterTime];
  if (v8 != v9)
  {
    v6 = TSDMixingTypeBestFromMixingTypes(v6, 2);
  }

  v10 = [objc_msgSend(*(a1 + 40) "geometry")];

  return TSDMixingTypeBestFromMixingTypes(v6, v10);
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDMovieInfo_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  *&v5[6] = a3;
  v5[4] = self;
  v5[5] = a4;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

id __49__TSDMovieInfo_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  v1 = 40;
  if (*(a1 + 48) < 1.0)
  {
    v1 = 32;
  }

  v2 = *(a1 + v1);

  return v2;
}

- (id)makeAVAssetWithOptions:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [(TSDMovieInfo *)self movieData];
  if (v5)
  {

    return [(TSPData *)v5 AVAssetWithOptions:a3];
  }

  else
  {
    result = [(TSDMovieInfo *)self movieRemoteURL];
    if (result)
    {
      v7 = result;
      v10 = *MEMORY[0x277CE6260];
      v11[0] = &unk_287DDD500;
      v8 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:{1), "mutableCopy"}];
      v9 = v8;
      if (a3)
      {
        [v8 addEntriesFromDictionary:a3];
      }

      return [MEMORY[0x277CE6650] URLAssetWithURL:v7 options:v9];
    }
  }

  return result;
}

- (id)makePosterImageGeneratorWithAVAsset:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:a3];
  v7 = *MEMORY[0x277CC08F0];
  v6 = v7;
  v8 = *(MEMORY[0x277CC08F0] + 16);
  v4 = v8;
  [v3 setRequestedTimeToleranceAfter:&v7];
  v7 = v6;
  v8 = v4;
  [v3 setRequestedTimeToleranceBefore:&v7];
  [v3 setAppliesPreferredTrackTransform:1];
  return v3;
}

- (id)generateEmptyPosterImageForContext:(id)a3
{
  [(TSDMediaInfo *)self originalSize];
  if (v4 <= 0.0 || v5 <= 0.0)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo generateEmptyPosterImageForContext:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 474, @"Movie's oriignal size should be nonzero."}];
    return 0;
  }

  else
  {
    v6 = TSDBitmapContextCreate(3, v4);
    CGContextSetFillColorWithColor(v6, [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")]);
    v12.origin.x = TSDRectWithSize();
    CGContextFillRect(v6, v12);
    Image = CGBitmapContextCreateImage(v6);
    v8 = [TSPData dataFromNSData:MEMORY[0x26D6A91F0]() filename:@"posterImage.png" context:a3];
    CGImageRelease(Image);
    CGContextRelease(v6);
    return v8;
  }
}

- (id)synchronouslyGenerateDefaultPosterImageForContext:(id)a3
{
  v5 = [(TSDMovieInfo *)self makeAVAsset];
  v6 = [(TSDMovieInfo *)self makePosterImageGeneratorWithAVAsset:v5];
  v16 = 0;
  CMTimeMakeWithSeconds(&time, self->mPosterTime, 90000);
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  v12 = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&range, &v12, &duration);
  CMTimeClampToRange(&duration, &time, &range);
  v7 = [v6 copyCGImageAtTime:&duration actualTime:0 error:&v16];
  if (v7)
  {
    v8 = v7;
    v9 = [TSPData dataFromNSData:MEMORY[0x26D6A91F0]() filename:@"posterImage.png" context:a3];
    CGImageRelease(v8);
  }

  else if (v16 && [v16 code] == -11832 && (v10 = objc_msgSend(v16, "domain"), objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CE5DC0])))
  {
    return [(TSDMovieInfo *)self generateEmptyPosterImageForContext:a3];
  }

  else
  {
    return 0;
  }

  return v9;
}

- (BOOL)containsProperty:(int)a3
{
  if ((a3 - 532) < 7)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TSDMovieInfo;
  return [(TSDDrawableInfo *)&v6 containsProperty:?];
}

- (id)objectForProperty:(int)a3
{
  if (a3 == 533)
  {

    return [(TSDMovieInfo *)self posterImageData];
  }

  else if (a3 == 532)
  {

    return [(TSDMovieInfo *)self movieData];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = TSDMovieInfo;
    return [(TSDStyledInfo *)&v6 objectForProperty:?];
  }
}

- (double)doubleValueForProperty:(int)a3
{
  switch(a3)
  {
    case 536:

      [(TSDMovieInfo *)self posterTime];
      break;
    case 535:

      [(TSDMovieInfo *)self endTime];
      break;
    case 534:

      [(TSDMovieInfo *)self startTime];
      break;
    default:
      v7 = v3;
      v8 = v4;
      v6.receiver = self;
      v6.super_class = TSDMovieInfo;
      [(TSDDrawableInfo *)&v6 doubleValueForProperty:?];
      break;
  }

  return result;
}

- (float)floatValueForProperty:(int)a3
{
  if (a3 == 538)
  {

    [(TSDMovieInfo *)self volume];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = TSDMovieInfo;
    [(TSDDrawableInfo *)&v6 floatValueForProperty:?];
  }

  return result;
}

- (int)intValueForProperty:(int)a3
{
  if (a3 == 537)
  {
    return [(TSDMovieInfo *)self loopOption];
  }

  v4.receiver = self;
  v4.super_class = TSDMovieInfo;
  return [(TSDDrawableInfo *)&v4 intValueForProperty:?];
}

@end