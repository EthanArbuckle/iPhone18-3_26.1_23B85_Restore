@interface TSDMovieInfo
- (BOOL)containsProperty:(int)property;
- (CGSize)rawDataSize;
- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieData:(id)data loadedAsset:(id)asset;
- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieRemoteURL:(id)l loadedAsset:(id)asset;
- (double)doubleValueForProperty:(int)property;
- (float)floatValueForProperty:(int)property;
- (id)animationFilters;
- (id)copyWithContext:(id)context stylesheet:(id)stylesheet;
- (id)generateEmptyPosterImageForContext:(id)context;
- (id)makeAVAssetWithOptions:(id)options;
- (id)makePosterImageGeneratorWithAVAsset:(id)asset;
- (id)mediaDisplayName;
- (id)mediaFileType;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (id)presetKind;
- (id)synchronouslyGenerateDefaultPosterImageForContext:(id)context;
- (int)intValueForProperty:(int)property;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)dealloc;
- (void)p_setPropertiesFromLoadedAsset:(id)asset;
- (void)setAudioOnlyImageData:(id)data;
- (void)setImportedAuxiliaryMovieData:(id)data;
- (void)setMovieData:(id)data;
- (void)setMovieRemoteURL:(id)l;
- (void)setPosterImageData:(id)data;
- (void)setStreaming:(BOOL)streaming;
- (void)setStyle:(id)style;
- (void)setUrlForMPMPC:(id)c;
@end

@implementation TSDMovieInfo

- (void)setMovieData:(id)data
{
  [(TSPObject *)self willModify];
  dataCopy = data;

  self->mMovieData = data;
}

- (void)setMovieRemoteURL:(id)l
{
  [(TSPObject *)self willModify];
  v5 = [l copy];

  self->mMovieRemoteURL = v5;
}

- (void)setImportedAuxiliaryMovieData:(id)data
{
  [(TSPObject *)self willModify];
  dataCopy = data;

  self->mImportedAuxiliaryMovieData = data;
}

- (void)setAudioOnlyImageData:(id)data
{
  [(TSPObject *)self willModify];
  dataCopy = data;

  self->mAudioOnlyImageData = data;
}

- (void)setUrlForMPMPC:(id)c
{
  [(TSPObject *)self willModify];
  cCopy = c;

  self->mURLForMPMPC = c;
}

- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo initWithContext:geometry:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 81, @"please call the other init methods"}];
  return 0;
}

- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  v9.receiver = self;
  v9.super_class = TSDMovieInfo;
  v6 = [(TSDMediaInfo *)&v9 initWithContext:context geometry:geometry];
  v7 = v6;
  if (v6)
  {
    [(TSDMovieInfo *)v6 setStyle:style];
    v7->mVolume = 1.0;
  }

  return v7;
}

- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieData:(id)data loadedAsset:(id)asset
{
  v9 = [(TSDMovieInfo *)self initWithContext:context geometry:geometry style:style];
  if (v9)
  {
    v9->mMovieData = data;
    [(TSDMovieInfo *)v9 p_setPropertiesFromLoadedAsset:asset];
  }

  return v9;
}

- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieRemoteURL:(id)l loadedAsset:(id)asset
{
  v9 = [(TSDMovieInfo *)self initWithContext:context geometry:geometry style:style];
  if (v9)
  {
    v9->mMovieRemoteURL = [l copy];
    [(TSDMovieInfo *)v9 p_setPropertiesFromLoadedAsset:asset];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMovieInfo;
  [(TSDDrawableInfo *)&v3 dealloc];
}

- (id)copyWithContext:(id)context stylesheet:(id)stylesheet
{
  v14.receiver = self;
  v14.super_class = TSDMovieInfo;
  v7 = [(TSDMediaInfo *)&v14 copyWithContext:?];
  if (v7)
  {
    *(v7 + 21) = [(TSPData *)self->mMovieData copyWithContext:context];
    *(v7 + 22) = [(NSURL *)self->mMovieRemoteURL copy];
    *(v7 + 25) = *&self->mStartTime;
    *(v7 + 26) = *&self->mEndTime;
    *(v7 + 27) = *&self->mPosterTime;
    *(v7 + 31) = self->mLoopOption;
    *(v7 + 64) = LODWORD(self->mVolume);
    v7[288] = self->mAudioOnly;
    v7[260] = self->mStreaming;
    *(v7 + 24) = [(TSPData *)self->mAudioOnlyImageData copyWithContext:context];
    *(v7 + 28) = [(TSPData *)self->mPosterImageData copyWithContext:context];
    *(v7 + 232) = self->mNaturalSize;
    v7[268] = self->mAllowsAirPlayVideo;
    v7[269] = self->mUsesAirPlayVideoWhileAirPlayScreenIsActive;
    *(v7 + 66) = self->mControlStyle;
    *(v7 + 34) = [(NSURL *)self->mURLForMPMPC copy];
    if (stylesheet)
    {
LABEL_11:
      v12 = [[TSSStyleMapper alloc] initWithTargetStylesheet:stylesheet newStyleDOLCContext:0];
      objc_opt_class();
      [(TSSStyleMapper *)v12 mappedStyleForStyle:self->mStyle];
      *(v7 + 35) = TSUDynamicCast();

      return v7;
    }

    [context documentObject];
    if (objc_opt_respondsToSelector())
    {
      contextCopy = context;
    }

    else
    {
      [(TSPObjectContext *)[(TSPObject *)self context] documentObject];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        stylesheet = [(TSSStyle *)self->mStyle stylesheet];
LABEL_9:
        stylesheet = stylesheet;
        if (!stylesheet)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo copyWithContext:stylesheet:]"];
          [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 188, @"invalid nil value for '%s'", "stylesheet"}];
          stylesheet = 0;
        }

        goto LABEL_11;
      }

      contextCopy = [(TSPObject *)self context];
    }

    stylesheet = [[(TSPObjectContext *)contextCopy documentObject] performSelector:sel_stylesheet];
    goto LABEL_9;
  }

  return v7;
}

- (id)mediaDisplayName
{
  if ([(TSDMovieInfo *)self movieData])
  {
    movieData = [(TSDMovieInfo *)self movieData];

    return [(TSPData *)movieData filename];
  }

  else
  {
    movieRemoteURL = [(TSDMovieInfo *)self movieRemoteURL];

    return [(NSURL *)movieRemoteURL lastPathComponent];
  }
}

- (id)mediaFileType
{
  if ([(TSDMovieInfo *)self movieData])
  {
    movieData = [(TSDMovieInfo *)self movieData];

    return [(TSPData *)movieData type];
  }

  else
  {
    v6 = 0;
    movieRemoteURL = [(TSDMovieInfo *)self movieRemoteURL];
    [(NSURL *)movieRemoteURL getResourceValue:&v6 forKey:*MEMORY[0x277CBE918] error:0];
    return v6;
  }
}

- (void)setStyle:(id)style
{
  if (self->mStyle != style)
  {
    [(TSDDrawableInfo *)self willChangeProperties:+[TSDMediaStyle properties]];
    [(TSPObject *)self willModify];
    styleCopy = style;

    self->mStyle = style;
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

- (void)setPosterImageData:(id)data
{
  if (self->mPosterImageData != data)
  {
    [(TSPObject *)self willModify];
    dataCopy = data;

    self->mPosterImageData = data;
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

- (void)p_setPropertiesFromLoadedAsset:(id)asset
{
  v27 = *MEMORY[0x277D85DE8];
  if (!asset)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo p_setPropertiesFromLoadedAsset:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 276, @"invalid nil value for '%s'", "asset"}];
  }

  if ([asset statusOfValueForKey:@"duration" error:0] != 2)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo p_setPropertiesFromLoadedAsset:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 277, @"Invalid parameter not satisfying: %s", "[asset statusOfValueForKey:@duration error:NULL] == AVKeyValueStatusLoaded"}];
  }

  if ([asset statusOfValueForKey:@"tracks" error:0] != 2)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo p_setPropertiesFromLoadedAsset:]"];
    [currentHandler3 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 278, @"Invalid parameter not satisfying: %s", "[asset statusOfValueForKey:@tracks error:NULL] == AVKeyValueStatusLoaded"}];
  }

  memset(&v25, 0, sizeof(v25));
  if (asset)
  {
    [asset duration];
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
  tracks = [asset tracks];
  v13 = [tracks countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(tracks);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        if ([v18 isEnabled] && (objc_msgSend(v18, "hasMediaCharacteristic:", v16) & 1) != 0)
        {
          v19 = 0;
          goto LABEL_21;
        }
      }

      v14 = [tracks countByEnumeratingWithState:&v20 objects:v26 count:16];
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

- (void)setStreaming:(BOOL)streaming
{
  if (self->mStreaming != streaming)
  {
    streamingCopy = streaming;
    [(TSPObject *)self willModify];
    self->mStreaming = streamingCopy;
    if (streamingCopy)
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
    isStreaming = [(TSDMovieInfo *)self isStreaming];
    v3 = MEMORY[0x277CBEB98];
    if (!isStreaming)
    {
      return [MEMORY[0x277CBEB98] setWithObjects:{kTSDAnimationFilterStandard, kTSDAnimationFilterMovie, 0}];
    }

    v4 = &kTSDAnimationFilterMovie;
  }

  v6 = *v4;

  return [v3 setWithObject:v6];
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TSDMovieInfo_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSDMovieInfo_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  *&v5[6] = fraction;
  v5[4] = self;
  v5[5] = object;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
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

- (id)makeAVAssetWithOptions:(id)options
{
  v11[1] = *MEMORY[0x277D85DE8];
  movieData = [(TSDMovieInfo *)self movieData];
  if (movieData)
  {

    return [(TSPData *)movieData AVAssetWithOptions:options];
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
      if (options)
      {
        [v8 addEntriesFromDictionary:options];
      }

      return [MEMORY[0x277CE6650] URLAssetWithURL:v7 options:v9];
    }
  }

  return result;
}

- (id)makePosterImageGeneratorWithAVAsset:(id)asset
{
  v3 = [objc_alloc(MEMORY[0x277CE6408]) initWithAsset:asset];
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

- (id)generateEmptyPosterImageForContext:(id)context
{
  [(TSDMediaInfo *)self originalSize];
  if (v4 <= 0.0 || v5 <= 0.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieInfo generateEmptyPosterImageForContext:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieInfo.m"), 474, @"Movie's oriignal size should be nonzero."}];
    return 0;
  }

  else
  {
    v6 = TSDBitmapContextCreate(3, v4);
    CGContextSetFillColorWithColor(v6, [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")]);
    v12.origin.x = TSDRectWithSize();
    CGContextFillRect(v6, v12);
    Image = CGBitmapContextCreateImage(v6);
    v8 = [TSPData dataFromNSData:MEMORY[0x26D6A91F0]() filename:@"posterImage.png" context:context];
    CGImageRelease(Image);
    CGContextRelease(v6);
    return v8;
  }
}

- (id)synchronouslyGenerateDefaultPosterImageForContext:(id)context
{
  makeAVAsset = [(TSDMovieInfo *)self makeAVAsset];
  v6 = [(TSDMovieInfo *)self makePosterImageGeneratorWithAVAsset:makeAVAsset];
  v16 = 0;
  CMTimeMakeWithSeconds(&time, self->mPosterTime, 90000);
  if (makeAVAsset)
  {
    [makeAVAsset duration];
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
    v9 = [TSPData dataFromNSData:MEMORY[0x26D6A91F0]() filename:@"posterImage.png" context:context];
    CGImageRelease(v8);
  }

  else if (v16 && [v16 code] == -11832 && (v10 = objc_msgSend(v16, "domain"), objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277CE5DC0])))
  {
    return [(TSDMovieInfo *)self generateEmptyPosterImageForContext:context];
  }

  else
  {
    return 0;
  }

  return v9;
}

- (BOOL)containsProperty:(int)property
{
  if ((property - 532) < 7)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TSDMovieInfo;
  return [(TSDDrawableInfo *)&v6 containsProperty:?];
}

- (id)objectForProperty:(int)property
{
  if (property == 533)
  {

    return [(TSDMovieInfo *)self posterImageData];
  }

  else if (property == 532)
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

- (double)doubleValueForProperty:(int)property
{
  switch(property)
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

- (float)floatValueForProperty:(int)property
{
  if (property == 538)
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

- (int)intValueForProperty:(int)property
{
  if (property == 537)
  {
    return [(TSDMovieInfo *)self loopOption];
  }

  v4.receiver = self;
  v4.super_class = TSDMovieInfo;
  return [(TSDDrawableInfo *)&v4 intValueForProperty:?];
}

@end