@interface PASUIMicaPlayer
+ (BOOL)BOOLFromDictionary:(id)a3 key:(id)a4 defaultValue:(BOOL)a5;
+ (id)rootDictForPath:(id)a3;
+ (id)updatePublishedObjects:(id)a3 toReferenceLayersInTree:(id)a4 ratherThanLayersInTree:(id)a5;
- (BOOL)isPlaybackAtEnd;
- (BOOL)isTimerNeeded;
- (PASUIMicaPlayer)initWithFileName:(id)a3 retinaScale:(double)a4;
- (PASUIMicaPlayer)initWithPath:(id)a3 retinaScale:(double)a4;
- (PASUIMicaPlayer)initWithPath:(id)a3 retinaScale:(double)a4 rootLayer:(id)a5 publishedObjects:(id)a6;
- (PASUIMicaPlayerDelegate)delegate;
- (double)playbackTime;
- (id)copyWithZone:(_NSZone *)a3;
- (id)publishedObjectWithKey:(id)a3 required:(BOOL)a4;
- (void)addToLayer:(id)a3 onTop:(BOOL)a4 gravity:(id)a5;
- (void)dealloc;
- (void)notifyDelegateDidChangePlaybackTime;
- (void)notifyDelegateDidStartPlaying;
- (void)notifyDelegateDidStopPlaying;
- (void)pause;
- (void)play;
- (void)removeFromSuperlayer;
- (void)runPlayTimer:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPlaybackTime:(double)a3;
- (void)setPreferredPlaybackSpeed:(float)a3;
- (void)startPlayTimerIfNeeded;
- (void)stopPlayTimer;
@end

@implementation PASUIMicaPlayer

- (PASUIMicaPlayer)initWithFileName:(id)a3 retinaScale:(double)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:v6 withExtension:@"caar"];

  if (v8)
  {
    v9 = [v8 path];
    v10 = [(PASUIMicaPlayer *)self initWithPath:v9 retinaScale:a4];
    self = v9;
  }

  else
  {
    NSLog(&cfstr_UnableToFindMi.isa, v6);
    v10 = 0;
  }

  return v10;
}

- (PASUIMicaPlayer)initWithPath:(id)a3 retinaScale:(double)a4
{
  v6 = a3;
  v7 = [PASUIMicaPlayer rootDictForPath:v6];
  v8 = v7;
  if (!v7 || ([v7 objectForKeyedSubscript:@"rootLayer"], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_6:
    NSLog(&cfstr_UnableToLoadMi.isa, v6);
    v12 = 0;
    goto LABEL_7;
  }

  v10 = v9;
  [v9 setGeometryFlipped:{+[PASUIMicaPlayer BOOLFromDictionary:key:defaultValue:](PASUIMicaPlayer, "BOOLFromDictionary:key:defaultValue:", v8, @"geometryFlipped", 0) ^ 1}];
  [v10 setMasksToBounds:1];
  [v10 setRepeatCount:0.0];
  v11 = [v8 objectForKeyedSubscript:@"publishedObjects"];
  v12 = [(PASUIMicaPlayer *)self initWithPath:v6 retinaScale:v10 rootLayer:v11 publishedObjects:a4];

  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

- (PASUIMicaPlayer)initWithPath:(id)a3 retinaScale:(double)a4 rootLayer:(id)a5 publishedObjects:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = PASUIMicaPlayer;
  v13 = [(PASUIMicaPlayer *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(PASUIMicaPlayer *)v13 setPath:v10];
    [(PASUIMicaPlayer *)v14 setRootLayer:v11];
    [(PASUIMicaPlayer *)v14 setPublishedObjects:v12];
    LODWORD(v15) = 1.0;
    [(PASUIMicaPlayer *)v14 setPreferredPlaybackSpeed:v15];
    [(PASUIMicaPlayer *)v14 setRetinaScale:a4];
    [v11 duration];
    [(PASUIMicaPlayer *)v14 setDocumentDuration:?];
    [(CALayer *)v14->_rootLayer setDuration:INFINITY];
  }

  return v14;
}

- (void)dealloc
{
  [(PASUIMicaPlayer *)self stopPlayTimer];
  v3.receiver = self;
  v3.super_class = PASUIMicaPlayer;
  [(PASUIMicaPlayer *)&v3 dealloc];
}

+ (id)rootDictForPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  if (v4)
  {
    v20 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:1 error:&v20];
    v6 = v20;
    v7 = v6;
    if (v5)
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
      v19 = v7;
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v13 fromData:v5 error:&v19];
      v15 = v19;

      if (v15)
      {
        v16 = [v3 lastPathComponent];
        NSLog(&cfstr_UnableToOpenMi.isa, v16);

        v17 = [v15 description];
        NSLog(&cfstr_Error.isa, v17);
      }
    }

    else
    {
      v14 = 0;
      v15 = v6;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)BOOLFromDictionary:(id)a3 key:(id)a4 defaultValue:(BOOL)a5
{
  v6 = [a3 objectForKeyedSubscript:a4];
  v7 = v6;
  if (v6)
  {
    a5 = [v6 BOOLValue];
  }

  return a5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(PASUIMicaPlayer *)self path];
  v6 = [v5 copy];

  v7 = [(PASUIMicaPlayer *)self rootLayer];
  v8 = [v7 mp_deepCopyLayer];

  v9 = [(PASUIMicaPlayer *)self publishedObjects];
  v10 = [(PASUIMicaPlayer *)self rootLayer];
  v11 = [PASUIMicaPlayer updatePublishedObjects:v9 toReferenceLayersInTree:v8 ratherThanLayersInTree:v10];

  v12 = [objc_opt_class() allocWithZone:a3];
  [(PASUIMicaPlayer *)self retinaScale];
  v13 = [v12 initWithPath:v6 retinaScale:v8 rootLayer:v11 publishedObjects:?];

  return v13;
}

+ (id)updatePublishedObjects:(id)a3 toReferenceLayersInTree:(id)a4 ratherThanLayersInTree:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v29 = [MEMORY[0x277CBEB38] dictionary];
  if (v7 && [v7 count])
  {
    v10 = [v9 mp_allLayersInTree];
    v25 = v9;
    v27 = [v9 mp_allAnimationsInTree];
    v11 = [v8 mp_allLayersInTree];
    v26 = [v8 mp_allAnimationsInTree];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v7 allKeys];
    v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v7 objectForKeyedSubscript:v16];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v19 = v10;
          v20 = v11;
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), v21 = objc_opt_isKindOfClass(), v20 = v26, v19 = v27, (v21))
          {
            v22 = [v20 objectAtIndexedSubscript:{objc_msgSend(v19, "indexOfObjectIdenticalTo:", v17)}];
            [v29 setObject:v22 forKeyedSubscript:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v9 = v25;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)addToLayer:(id)a3 onTop:(BOOL)a4 gravity:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = [(CALayer *)self->_rootLayer superlayer];

  if (!v9)
  {
    [(PASUIMicaPlayer *)self pause];
    [(PASUIMicaPlayer *)self setPlaybackTime:0.0];
    [(PASUIMicaPlayer *)self moveAndResizeWithinParentLayer:v11 usingGravity:v8 animate:0];
    rootLayer = self->_rootLayer;
    if (v6)
    {
      [v11 addSublayer:rootLayer];
    }

    else
    {
      [v11 insertSublayer:rootLayer atIndex:0];
    }
  }
}

- (void)removeFromSuperlayer
{
  v3 = [(CALayer *)self->_rootLayer superlayer];

  if (v3)
  {
    [(PASUIMicaPlayer *)self pause];
    rootLayer = self->_rootLayer;

    [(CALayer *)rootLayer removeFromSuperlayer];
  }
}

- (id)publishedObjectWithKey:(id)a3 required:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSDictionary *)self->_publishedObjects objectForKeyedSubscript:v6];
  v8 = v7;
  if (v4 && !v7)
  {
    v9 = [(NSString *)self->_path lastPathComponent];
    NSLog(&cfstr_MissingPublish.isa, v6, v9);
  }

  return v8;
}

- (void)play
{
  if (![(PASUIMicaPlayer *)self isPlaying])
  {
    v3 = CACurrentMediaTime();
    [(PASUIMicaPlayer *)self playbackTime];
    [(CALayer *)self->_rootLayer setBeginTime:v3 - v4 / self->_preferredPlaybackSpeed];
    [(CALayer *)self->_rootLayer setTimeOffset:0.0];
    *&v5 = self->_preferredPlaybackSpeed;
    [(CALayer *)self->_rootLayer setSpeed:v5];
    [(PASUIMicaPlayer *)self startPlayTimerIfNeeded];

    [(PASUIMicaPlayer *)self notifyDelegateDidStartPlaying];
  }
}

- (void)pause
{
  if ([(PASUIMicaPlayer *)self isPlaying])
  {
    [(PASUIMicaPlayer *)self playbackTime];
    [(CALayer *)self->_rootLayer setTimeOffset:?];
    [(CALayer *)self->_rootLayer setBeginTime:0.0];
    [(CALayer *)self->_rootLayer setSpeed:0.0];
    [(PASUIMicaPlayer *)self stopPlayTimer];

    [(PASUIMicaPlayer *)self notifyDelegateDidStopPlaying];
  }
}

- (void)setPreferredPlaybackSpeed:(float)a3
{
  if (a3 <= 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = a3;
  }

  self->_preferredPlaybackSpeed = v4;
  if ([(PASUIMicaPlayer *)self isPlaying])
  {
    rootLayer = self->_rootLayer;
    *&v5 = v4;

    [(CALayer *)rootLayer setSpeed:v5];
  }
}

- (double)playbackTime
{
  if ([(PASUIMicaPlayer *)self isPlaying])
  {
    v3 = CACurrentMediaTime();
    [(CALayer *)self->_rootLayer beginTime];
    v5 = v3 - v4;
    [(CALayer *)self->_rootLayer speed];
    return v5 * v6;
  }

  else
  {
    rootLayer = self->_rootLayer;

    [(CALayer *)rootLayer timeOffset];
  }

  return result;
}

- (void)setPlaybackTime:(double)a3
{
  v5 = [(PASUIMicaPlayer *)self isPlaying];
  v6 = 0.0;
  if (v5)
  {
    v6 = CACurrentMediaTime() - a3;
    a3 = 0.0;
  }

  [(CALayer *)self->_rootLayer setBeginTime:v6];
  [(CALayer *)self->_rootLayer setTimeOffset:a3];

  [(PASUIMicaPlayer *)self notifyDelegateDidChangePlaybackTime];
}

- (BOOL)isPlaybackAtEnd
{
  [(PASUIMicaPlayer *)self playbackTime];
  v4 = v3;
  [(PASUIMicaPlayer *)self documentDuration];
  return v4 >= v5 + -0.001;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  if ([(PASUIMicaPlayer *)self isTimerNeeded])
  {

    [(PASUIMicaPlayer *)self startPlayTimerIfNeeded];
  }

  else
  {

    [(PASUIMicaPlayer *)self stopPlayTimer];
  }
}

- (void)notifyDelegateDidStartPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 PASUIMicaPlayerDidStartPlaying:self];
    }
  }
}

- (void)notifyDelegateDidStopPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 PASUIMicaPlayerDidStopPlaying:self];
    }
  }
}

- (void)notifyDelegateDidChangePlaybackTime
{
  if (![(PASUIMicaPlayer *)self isNotifyingDelegate])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        [(PASUIMicaPlayer *)self setIsNotifyingDelegate:1];
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 PASUIMicaPlayerDidChangePlaybackTime:self];

        [(PASUIMicaPlayer *)self setIsNotifyingDelegate:0];
      }
    }
  }
}

- (BOOL)isTimerNeeded
{
  if ([(PASUIMicaPlayer *)self isPlaying])
  {
    [(PASUIMicaPlayer *)self documentDuration];
    if (v3 == INFINITY)
    {
      v5 = [(PASUIMicaPlayer *)self delegate];
      if (v5)
      {
        v6 = [(PASUIMicaPlayer *)self delegate];
        v4 = objc_opt_respondsToSelector();
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)startPlayTimerIfNeeded
{
  if (!self->_playTimer)
  {
    if ([(PASUIMicaPlayer *)self isTimerNeeded])
    {
      objc_initWeak(&location, self);
      v3 = MEMORY[0x277CBEBB8];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __41__PASUIMicaPlayer_startPlayTimerIfNeeded__block_invoke;
      v6[3] = &unk_279AD0690;
      objc_copyWeak(&v7, &location);
      v4 = [v3 scheduledTimerWithTimeInterval:1 repeats:v6 block:0.0333333333];
      playTimer = self->_playTimer;
      self->_playTimer = v4;

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __41__PASUIMicaPlayer_startPlayTimerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runPlayTimer:v3];
}

- (void)stopPlayTimer
{
  playTimer = self->_playTimer;
  if (playTimer)
  {
    [(NSTimer *)playTimer invalidate];
    v4 = self->_playTimer;
    self->_playTimer = 0;
  }
}

- (void)runPlayTimer:(id)a3
{
  if ([(PASUIMicaPlayer *)self isPlaybackAtEnd])
  {
    if (self->_loopDuringPlayback)
    {
      [(PASUIMicaPlayer *)self setPlaybackTime:0.0];
    }

    else
    {
      [(PASUIMicaPlayer *)self pause];
    }
  }

  [(PASUIMicaPlayer *)self notifyDelegateDidChangePlaybackTime];
}

- (PASUIMicaPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end