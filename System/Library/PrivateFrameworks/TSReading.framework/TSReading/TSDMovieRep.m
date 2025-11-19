@interface TSDMovieRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4;
- (BOOL)canResetMediaSize;
- (BOOL)directlyManagesVisibilityOfKnob:(id)a3;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3;
- (BOOL)isPlaying;
- (BOOL)p_playButtonFitsInFrame;
- (CGRect)p_strokeFrameForLayerFrame:(CGRect)a3;
- (TSDButtonKnob)p_playButtonKnob;
- (TSDMovieInfo)movieInfo;
- (TSDMovieRep)initWithLayout:(id)a3 canvas:(id)a4;
- (double)visibleTime;
- (float)volume;
- (id)additionalLayersOverLayer;
- (id)additionalLayersUnderLayer;
- (id)movieLayout;
- (id)p_shapeLayerForPlayerStroke;
- (id)p_shapeLayerForReflectionStroke;
- (id)p_tilingLayerForPlayerStroke;
- (id)p_tilingLayerForReflectionStroke;
- (unint64_t)enabledKnobMask;
- (void)addKnobsToArray:(id)a3;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)createReflectionLayer;
- (void)dealloc;
- (void)didUpdateLayer:(id)a3;
- (void)disposeReflectionLayer;
- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)dynamicVisibleTimeChangeDidBegin;
- (void)dynamicVisibleTimeChangeDidEnd;
- (void)dynamicVisibleTimeUpdateToValue:(double)a3 withTolerance:(double)a4 completionHandler:(id)a5;
- (void)dynamicVolumeChangeDidBegin;
- (void)i_updateFrameRep;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_addPlayButtonToKnobs:(id)a3;
- (void)p_applyBasicStrokeToLayer:(id)a3 layer:(id)a4 bounds:(CGRect)a5;
- (void)p_arrangeLayerVisibility:(id)a3;
- (void)p_checkAndsyncTilingLayerState:(BOOL)a3;
- (void)p_commonDrawStrokeInContext:(CGContext *)a3;
- (void)p_createMaskLayerForLayer:(id)a3;
- (void)p_createReflectionPlayerStrokeMaskLayer;
- (void)p_disposeMaskLayer;
- (void)p_disposeReflectionStrokeLayers;
- (void)p_disposeStrokeLayer;
- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(double)a6 withMask:(BOOL)a7 forShadowOrHitTest:(BOOL)a8;
- (void)p_drawPosterImageInContext:(CGContext *)a3;
- (void)p_drawReflectionGradientIntoMovieReflectionLayer:(CGContext *)a3 reflectionSize:(CGSize)a4;
- (void)p_hideReflectionLayer;
- (void)p_placeReflectionPlayerLayer:(CGRect)a3 transform:(CGAffineTransform *)a4;
- (void)p_playForKnob;
- (void)p_setPositionAndBoundsIfDifferent:(id)a3 position:(CGPoint)a4 bounds:(CGRect)a5;
- (void)p_setupPlayerControllerIfNecessary;
- (void)p_setupPlayerLayerIfNecessary;
- (void)p_setupPlayerStrokeLayers:(BOOL)a3;
- (void)p_setupReflectionPlayerLayerIfNecessary;
- (void)p_setupShapePlayerStrokeLayer;
- (void)p_setupShapeReflectionPlayerStrokeLayer;
- (void)p_setupStrokeLayers:(BOOL)a3 needsMaskLayer:(BOOL)a4 isFrame:(BOOL)a5;
- (void)p_setupTilingPlayerStrokeLayer;
- (void)p_setupTilingReflectionPlayerStrokeLayer;
- (void)p_showReflectionLayer;
- (void)p_stopUpdatingUIStateForMoviePlayability;
- (void)p_teardownPlayerController;
- (void)p_teardownPlayerControllerIfNeeded;
- (void)p_togglePlaying;
- (void)p_updateEndTime;
- (void)p_updateMovieReflectionMaskLayer;
- (void)p_updatePlayButtonVisibility;
- (void)p_updateReflectionFrameRep;
- (void)p_updateRepeatMode;
- (void)p_updateStartTime;
- (void)p_updateStrokeLayerForStroke:(id)a3 repLayer:(id)a4;
- (void)p_updateUIStateForMoviePlayability;
- (void)p_updateVolume;
- (void)playbackDidStopForPlayerController:(id)a3;
- (void)playerController:(id)a3 playbackDidFailWithError:(id)a4;
- (void)processChangedProperty:(int)a3;
- (void)screenScaleDidChange;
- (void)setAlternatePosterImage:(CGImage *)a3;
- (void)updateFromLayout;
- (void)updateLayerGeometryFromLayout:(id)a3;
- (void)willBeRemoved;
- (void)willBeginReadMode;
- (void)willUpdateLayer:(id)a3;
@end

@implementation TSDMovieRep

- (TSDMovieRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSDMovieRep;
  v4 = [(TSDRep *)&v7 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (v4 && ![(TSDMovieRep *)v4 movieInfo])
  {

    return 0;
  }

  return v5;
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  [(TSDRep *)self info];

  return TSUDynamicCast();
}

- (id)movieLayout
{
  objc_opt_class();
  [(TSDRep *)self layout];

  return TSUDynamicCast();
}

- (void)dealloc
{
  [(TSDMovieRep *)self p_disposeStrokeLayer];
  [(TSDMovieRep *)self p_disposeMaskLayer];
  [(TSDMovieRep *)self p_disposeReflectionStrokeLayers];
  [(TSDMovieRep *)self disposeReflectionLayer];
  [(AVPlayerLayer *)self->mPlayerLayer setDelegate:0];
  [*&self->mCurrentlyObservingPlayerLayer setDelegate:0];

  CGImageRelease(*&self->mPlayButtonKnobVisible);
  v3.receiver = self;
  v3.super_class = TSDMovieRep;
  [(TSDMediaRep *)&v3 dealloc];
}

- (void)p_createMaskLayerForLayer:(id)a3
{
  if (!self->super.mTapToReplaceLayer)
  {
    v5 = objc_alloc_init(MEMORY[0x277CD9F90]);
    self->super.mTapToReplaceLayer = v5;
    [(CALayer *)v5 setDelegate:self];
    [(CALayer *)self->super.mTapToReplaceLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    mTapToReplaceLayer = self->super.mTapToReplaceLayer;

    [a3 setMask:mTapToReplaceLayer];
  }
}

- (void)p_createReflectionPlayerStrokeMaskLayer
{
  if (self->mMovieReflectionMaskLayer || self->mReflectionPlayerLayer && (v6 = [MEMORY[0x277D6C290] currentHandler], v7 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSDMovieRep p_createReflectionPlayerStrokeMaskLayer]"), objc_msgSend(v6, "handleFailureInFunction:file:lineNumber:description:", v7, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 293, @"layer lifetime messup"), self->mMovieReflectionMaskLayer))
  {
    if (!self->mReflectionPlayerLayer)
    {
      v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
      self->mReflectionPlayerLayer = v3;
      [(AVPlayerLayer *)v3 setDelegate:self];
      [(AVPlayerLayer *)self->mReflectionPlayerLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
      mReflectionPlayerLayer = self->mReflectionPlayerLayer;
      mMovieReflectionMaskLayer = self->mMovieReflectionMaskLayer;

      [(CALayer *)mMovieReflectionMaskLayer setMask:mReflectionPlayerLayer];
    }
  }
}

- (void)p_disposeStrokeLayer
{
  v3 = *&self->mPreventDisposeOfPlayerLayer;
  if (v3)
  {
    [v3 setDelegate:0];

    *&self->mPreventDisposeOfPlayerLayer = 0;
    v4 = *(MEMORY[0x277CBF3A0] + 16);
    *&self->super.mFrameRep = *MEMORY[0x277CBF3A0];
    *&self->super.mLastPictureFrameLayerRect.origin.y = v4;
  }
}

- (void)p_disposeMaskLayer
{
  mTapToReplaceLayer = self->super.mTapToReplaceLayer;
  if (mTapToReplaceLayer)
  {
    [(CALayer *)mTapToReplaceLayer removeFromSuperlayer];
    [(CALayer *)self->super.mTapToReplaceLayer setDelegate:0];

    self->super.mTapToReplaceLayer = 0;
    self->super.mStrokeLayer = 0;
  }
}

- (void)p_disposeReflectionStrokeLayers
{
  mPlayerStrokeLayer = self->mPlayerStrokeLayer;
  if (mPlayerStrokeLayer)
  {
    [(CALayer *)mPlayerStrokeLayer removeFromSuperlayer];
    [(CALayer *)self->mPlayerStrokeLayer setDelegate:0];

    self->mPlayerStrokeLayer = 0;
  }

  mReflectionPlayerLayer = self->mReflectionPlayerLayer;
  if (mReflectionPlayerLayer)
  {
    [(AVPlayerLayer *)mReflectionPlayerLayer removeFromSuperlayer];
    [(AVPlayerLayer *)self->mReflectionPlayerLayer setDelegate:0];

    self->mReflectionPlayerLayer = 0;
  }

  if (self->mReflectionFrameRep)
  {
    self->mReflectionFrameRep = 0;
  }

  mReflectionPlayerStrokeLayer = self->mReflectionPlayerStrokeLayer;
  if (mReflectionPlayerStrokeLayer)
  {

    self->mReflectionPlayerStrokeLayer = 0;
  }
}

- (void)p_hideReflectionLayer
{
  mReflectionLayer = self->super.super.mReflectionLayer;
  if (mReflectionLayer && (BYTE1(self->mPlayerController) & 1) == 0)
  {
    if ([(CALayer *)mReflectionLayer isHidden])
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep p_hideReflectionLayer]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 355, @"Hiding layer that is already hidden!"}];
    }

    [(CALayer *)self->super.super.mReflectionLayer setHidden:1];
  }

  mMovieReflectionMaskLayer = self->mMovieReflectionMaskLayer;
  if (mMovieReflectionMaskLayer)
  {
    if ([(CALayer *)mMovieReflectionMaskLayer isHidden])
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep p_hideReflectionLayer]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 359, @"Hiding layer that is already hidden!"}];
    }

    [(CALayer *)self->mMovieReflectionMaskLayer setHidden:1];
  }

  mLayerToStroke = self->mLayerToStroke;
  if (mLayerToStroke && BYTE1(self->mPlayerController) == 1)
  {
    if ([(CALayer *)mLayerToStroke isHidden])
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep p_hideReflectionLayer]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 363, @"Hiding layer that is already hidden!"}];
    }

    v12 = self->mLayerToStroke;

    [(CALayer *)v12 setHidden:1];
  }
}

- (void)p_showReflectionLayer
{
  mReflectionLayer = self->super.super.mReflectionLayer;
  if (mReflectionLayer && (BYTE1(self->mPlayerController) & 1) == 0)
  {
    [(CALayer *)mReflectionLayer setHidden:0];
  }

  mMovieReflectionMaskLayer = self->mMovieReflectionMaskLayer;
  if (mMovieReflectionMaskLayer)
  {
    [(CALayer *)mMovieReflectionMaskLayer setHidden:0];
  }

  mLayerToStroke = self->mLayerToStroke;
  if (mLayerToStroke && BYTE1(self->mPlayerController) == 1)
  {

    [(CALayer *)mLayerToStroke setHidden:0];
  }
}

- (void)disposeReflectionLayer
{
  if (LOBYTE(self->mReflectionPlayerStrokeMaskLayer) == 1)
  {
    v8 = self;
    v3 = &v8;
  }

  else
  {
    mMovieReflectionMaskLayer = self->mMovieReflectionMaskLayer;
    if (mMovieReflectionMaskLayer)
    {
      [(CALayer *)mMovieReflectionMaskLayer removeFromSuperlayer];
      [(CALayer *)self->mMovieReflectionMaskLayer setDelegate:0];

      self->mMovieReflectionMaskLayer = 0;
    }

    mLayerToStroke = self->mLayerToStroke;
    if (mLayerToStroke)
    {
      [(CALayer *)mLayerToStroke setDelegate:0];
      [(CALayer *)self->mLayerToStroke setMask:0];

      self->mLayerToStroke = 0;
    }

    mMovieReflectionLayer = self->mMovieReflectionLayer;
    if (mMovieReflectionLayer)
    {
      [(CALayer *)mMovieReflectionLayer removeFromSuperlayer];
      [(CALayer *)self->mMovieReflectionLayer setDelegate:0];

      self->mMovieReflectionLayer = 0;
    }

    [(TSDMovieRep *)self p_disposeReflectionStrokeLayers];
    v7 = self;
    v3 = &v7;
  }

  v3[1] = TSDMovieRep;
  objc_msgSendSuper2(v3, sel_disposeReflectionLayer, v7);
}

- (void)createReflectionLayer
{
  v5.receiver = self;
  v5.super_class = TSDMovieRep;
  [(TSDStyledRep *)&v5 createReflectionLayer];

  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  self->mLayerToStroke = v3;
  [(CALayer *)v3 setDelegate:self];
  [(CALayer *)self->mLayerToStroke setNeedsDisplay];
  [(CALayer *)self->mLayerToStroke setHidden:1];

  v4 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  self->mMovieReflectionLayer = v4;
  [(CALayer *)v4 setDelegate:self];
  [(CALayer *)self->mMovieReflectionLayer setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(CALayer *)self->mLayerToStroke addSublayer:self->mMovieReflectionLayer];
  if ([*&self->super.mLastPictureFrameLayerRect.size.height player])
  {
    [(TSDMovieRep *)self p_setupReflectionPlayerLayerIfNecessary];
  }
}

- (void)p_setupReflectionPlayerLayerIfNecessary
{
  if (*&self->super.mLastPictureFrameLayerRect.size.height && !self->mMovieReflectionMaskLayer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE65D8]);
    self->mMovieReflectionMaskLayer = v3;
    [(CALayer *)v3 setDelegate:self];
    v4 = [(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] isStreaming];
    v5 = MEMORY[0x277CE5DD0];
    if (!v4)
    {
      v5 = MEMORY[0x277CE5DC8];
    }

    [(CALayer *)self->mMovieReflectionMaskLayer setVideoGravity:*v5];
    [(CALayer *)self->mMovieReflectionMaskLayer setHidden:0];
    if (![*&self->super.mLastPictureFrameLayerRect.size.height player])
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep p_setupReflectionPlayerLayerIfNecessary]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 456, @"invalid nil value for '%s'", "mPlayerController.player"}];
    }

    -[CALayer setPlayer:](self->mMovieReflectionMaskLayer, "setPlayer:", [*&self->super.mLastPictureFrameLayerRect.size.height player]);
  }

  mLayerToStroke = self->mLayerToStroke;
  if (mLayerToStroke)
  {
    mMovieReflectionMaskLayer = self->mMovieReflectionMaskLayer;

    [(CALayer *)mLayerToStroke addSublayer:mMovieReflectionMaskLayer];
  }
}

- (void)p_setupPlayerLayerIfNecessary
{
  if (!*&self->mCurrentlyObservingPlayerLayer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE65D8]);
    *&self->mCurrentlyObservingPlayerLayer = v3;
    [v3 setDelegate:self];
    v4 = [(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] isStreaming];
    v5 = MEMORY[0x277CE5DD0];
    if (!v4)
    {
      v5 = MEMORY[0x277CE5DC8];
    }

    [*&self->mCurrentlyObservingPlayerLayer setVideoGravity:*v5];
    [*&self->mCurrentlyObservingPlayerLayer setHidden:1];
    BYTE1(self->mPlayerController) = 0;
    [*&self->mCurrentlyObservingPlayerLayer addObserver:self forKeyPath:@"readyForDisplay" options:5 context:TSDMovieRepPlayerLayerReadyForDisplayObserverContext];
    LOBYTE(self->mPlayerController) = 1;
    if (![*&self->super.mLastPictureFrameLayerRect.size.height player])
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep p_setupPlayerLayerIfNecessary]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 482, @"invalid nil value for '%s'", "mPlayerController.player"}];
    }

    [*&self->mCurrentlyObservingPlayerLayer setPlayer:{objc_msgSend(*&self->super.mLastPictureFrameLayerRect.size.height, "player")}];
    v8 = [-[TSDRep info](self "info")];
    if (v8)
    {
      [v8 transformBasedOnPoint:*MEMORY[0x277CBF348] centeredAtPoint:{*(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
    }

    v9 = *&self->mCurrentlyObservingPlayerLayer;
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    [v9 setAffineTransform:v17];
    mCanvas = self->super.super.super.mCanvas;
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] size];
    [(TSDCanvas *)mCanvas convertUnscaledToBoundsRect:TSDRectWithSize()];
    [*&self->mCurrentlyObservingPlayerLayer setBounds:?];
    v11 = self->super.super.super.mCanvas;
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] frame];
    [(TSDCanvas *)v11 convertUnscaledToBoundsPoint:TSDCenterOfRect(v12, v13, v14, v15)];
    [*&self->mCurrentlyObservingPlayerLayer setPosition:?];
    [(TSDStyledRep *)self opacity];
    *&v16 = v16;
    [*&self->mCurrentlyObservingPlayerLayer setOpacity:v16];
    if (self->super.super.mReflectionLayer)
    {
      [(TSDMovieRep *)self p_setupReflectionPlayerLayerIfNecessary];
    }

    [(TSDCanvas *)[(TSDRep *)self canvas] invalidateLayers];
  }
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  if (self->mPlayerStrokeLayer == a3)
  {

    [(TSDMovieRep *)self p_drawReflectionStrokeInContext:a4];
  }

  else if (*&self->mPreventDisposeOfPlayerLayer == a3)
  {

    [(TSDMovieRep *)self p_drawStrokeInContext:a4];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = TSDMovieRep;
    [TSDStyledRep drawLayer:sel_drawLayer_inContext_ inContext:?];
  }
}

- (id)p_shapeLayerForPlayerStroke
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (id)p_tilingLayerForPlayerStroke
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (void)p_setupTilingPlayerStrokeLayer
{
  if (!*&self->mPreventDisposeOfPlayerLayer)
  {
    v3 = objc_alloc_init(TSDTilingLayer);
    *&self->mPreventDisposeOfPlayerLayer = v3;
    [(TSDTilingLayer *)v3 setDelegate:self];
    [(TSDTilingLayer *)v3 setDrawsInBackground:1];

    [(TSDTilingLayer *)v3 setNeedsDisplay];
  }
}

- (void)p_setupShapePlayerStrokeLayer
{
  if (!*&self->mPreventDisposeOfPlayerLayer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
    *&self->mPreventDisposeOfPlayerLayer = v3;
    [v3 setDelegate:self];

    [v3 setFillColor:0];
  }
}

- (id)p_shapeLayerForReflectionStroke
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (id)p_tilingLayerForReflectionStroke
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (void)p_setupShapeReflectionPlayerStrokeLayer
{
  if (!self->mPlayerStrokeLayer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
    self->mPlayerStrokeLayer = v3;
    [(CALayer *)v3 setDelegate:self];

    [(CALayer *)v3 setFillColor:0];
  }
}

- (void)p_setupTilingReflectionPlayerStrokeLayer
{
  if (!self->mPlayerStrokeLayer)
  {
    v3 = objc_alloc_init(TSDTilingLayer);
    self->mPlayerStrokeLayer = &v3->super;
    [(TSDTilingLayer *)v3 setDelegate:self];
    [(TSDTilingLayer *)v3 setDrawsInBackground:1];

    [(TSDTilingLayer *)v3 setNeedsDisplay];
  }
}

- (void)p_setupPlayerStrokeLayers:(BOOL)a3
{
  if (a3)
  {
    [(TSDMovieRep *)self p_setupTilingPlayerStrokeLayer];

    [(TSDMovieRep *)self p_setupTilingReflectionPlayerStrokeLayer];
  }

  else
  {
    [(TSDMovieRep *)self p_setupShapePlayerStrokeLayer];

    [(TSDMovieRep *)self p_setupShapeReflectionPlayerStrokeLayer];
  }
}

- (void)p_checkAndsyncTilingLayerState:(BOOL)a3
{
  [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (!a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TSDMovieRep *)self p_disposeStrokeLayer];

      [(TSDMovieRep *)self p_disposeReflectionStrokeLayers];
    }
  }
}

- (void)p_setupStrokeLayers:(BOOL)a3 needsMaskLayer:(BOOL)a4 isFrame:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  if (a4)
  {
    [(TSDMovieRep *)self p_createMaskLayerForLayer:self->mPlayerLayer];
    if (self->super.super.mReflectionLayer)
    {
      [(TSDMovieRep *)self p_createReflectionPlayerStrokeMaskLayer];
    }
  }

  [(TSDMovieRep *)self p_checkAndsyncTilingLayerState:v6];
  [(TSDMovieRep *)self p_setupPlayerStrokeLayers:v6];
  if (v5)
  {
    [(TSDMovieRep *)self i_updateFrameRep];
    mStrokeLayer = self->super.mStrokeLayer;
    if (mStrokeLayer)
    {
      [(CAShapeLayer *)mStrokeLayer removeFromSuperlayer];
      self->super.mStrokeLayer = 0;
    }

    mReflectionFrameRep = self->mReflectionFrameRep;
    if (mReflectionFrameRep)
    {
      [(TSDFrameRep *)mReflectionFrameRep removeFromSuperlayer];
      self->mReflectionFrameRep = 0;
    }

    [(TSDMovieRep *)self i_updateFrameRep];
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    v11 = v10;
    mFrameMaskLayer = self->super.mFrameMaskLayer;
    v13 = [(TSDMovieRep *)self playerStrokeLayer];
    mPlayerLayer = self->mPlayerLayer;
    mTapToReplaceLayer = self->super.mTapToReplaceLayer;
    [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
    self->super.mStrokeLayer = [(CALayer *)mFrameMaskLayer applyToCALayer:v13 withRepLayer:mPlayerLayer maskLayer:mTapToReplaceLayer viewScale:v11 * v16];
    if (self->mMovieReflectionMaskLayer)
    {
      mReflectionPlayerStrokeLayer = self->mReflectionPlayerStrokeLayer;
      v18 = [(TSDMovieRep *)self reflectionPlayerStrokeLayer];
      mMovieReflectionMaskLayer = self->mMovieReflectionMaskLayer;
      mReflectionPlayerLayer = self->mReflectionPlayerLayer;
      [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
      self->mReflectionFrameRep = [(CALayer *)mReflectionPlayerStrokeLayer applyToCALayer:v18 withRepLayer:mMovieReflectionMaskLayer maskLayer:mReflectionPlayerLayer viewScale:v11 * v21];
    }

    v22 = *(MEMORY[0x277CBF3A0] + 16);
    *&self->super.mFrameRep = *MEMORY[0x277CBF3A0];
    *&self->super.mLastPictureFrameLayerRect.origin.y = v22;
  }
}

- (CGRect)p_strokeFrameForLayerFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v10 = v9;
  [v8 width];
  v12 = v10 * (v11 * -0.5);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGRectInset(v18, v12, v12);

  v13 = TSDRectWithSize();
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)p_arrangeLayerVisibility:(id)a3
{
  v3 = a3;
  if (BYTE1(self->mPlayerController) == 1 && (self->mIsChangingDynamicVisibleTimeCount & 0x10000000000) == 0)
  {
    [*&self->mCurrentlyObservingPlayerLayer setHidden:0];
    v7 = 1;
    [(AVPlayerLayer *)v3 setHidden:1];
    v3 = *&self->mCurrentlyObservingPlayerLayer;
    p_mReflectionLayer = &self->super.super.mReflectionLayer;
    if (!self->super.super.mReflectionLayer)
    {
      goto LABEL_8;
    }

    v5 = 0;
  }

  else
  {
    [a3 setHidden:0];
    v5 = 1;
    [*&self->mCurrentlyObservingPlayerLayer setHidden:1];
    p_mReflectionLayer = &self->super.super.mReflectionLayer;
    if (!self->super.super.mReflectionLayer)
    {
      goto LABEL_8;
    }

    v7 = 0;
  }

  [(CALayer *)self->mLayerToStroke setHidden:v5];
  [(CALayer *)*p_mReflectionLayer setHidden:v7];
LABEL_8:
  if (v3 != self->mPlayerLayer)
  {
    [(TSDMovieRep *)self p_disposeMaskLayer];
    [(TSDMovieRep *)self p_disposeStrokeLayer];
    [(TSDMovieRep *)self p_disposeReflectionStrokeLayers];
    v8 = v3;

    self->mPlayerLayer = v3;
  }
}

- (void)willUpdateLayer:(id)a3
{
  v12.receiver = self;
  v12.super_class = TSDMovieRep;
  [(TSDStyledRep *)&v12 willUpdateLayer:?];
  v5 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  [(TSDMovieRep *)self p_arrangeLayerVisibility:a3];
  v6 = [(TSDMediaRep *)self i_shouldRenderStroke:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [(TSDMovieRep *)self p_needsTilingLayerForStroke:v5];
    v9 = [v5 isFrame];
    if (v9 && ([v5 hasMask] & 1) != 0)
    {
      v10 = [(TSDMediaLayout *)[(TSDMediaRep *)self mediaLayout] shouldRenderFrameStroke];
      [(TSDMovieRep *)self p_setupStrokeLayers:v8 needsMaskLayer:v10 isFrame:1];
      if (v10)
      {
        return;
      }
    }

    else
    {
      [(TSDMovieRep *)self p_setupStrokeLayers:v8 needsMaskLayer:0 isFrame:v9];
    }
  }

  mStrokeLayer = self->super.mStrokeLayer;
  if (mStrokeLayer)
  {
    [(CAShapeLayer *)mStrokeLayer removeFromSuperlayer];
    self->super.mStrokeLayer = 0;
  }

  [(TSDMovieRep *)self p_disposeMaskLayer];
  if (!v7)
  {
    [(TSDMovieRep *)self p_disposeStrokeLayer];
    [(TSDMovieRep *)self p_disposeReflectionStrokeLayers];
  }
}

- (void)didUpdateLayer:(id)a3
{
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __30__TSDMovieRep_didUpdateLayer___block_invoke;
  v25[3] = &unk_279D46770;
  v25[4] = self;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] setCompletionBlock:v25];
  v24.receiver = self;
  v24.super_class = TSDMovieRep;
  [(TSDStyledRep *)&v24 didUpdateLayer:a3];
  if (self->mLayerToStroke && [(TSDStyledRep *)self shouldShowReflection])
  {
    [(CALayer *)self->super.super.mReflectionLayer position];
    [(CALayer *)self->mLayerToStroke setPosition:?];
    [(CALayer *)self->super.super.mReflectionLayer bounds];
    [(CALayer *)self->mLayerToStroke setBounds:?];
    [(CALayer *)self->super.super.mReflectionLayer opacity];
    [(CALayer *)self->mLayerToStroke setOpacity:?];
    mReflectionLayer = self->super.super.mReflectionLayer;
    if (mReflectionLayer)
    {
      [(CALayer *)mReflectionLayer affineTransform];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
    }

    mLayerToStroke = self->mLayerToStroke;
    v20[0] = v21;
    v20[1] = v22;
    v20[2] = v23;
    [(CALayer *)mLayerToStroke setAffineTransform:v20];
    [(TSDMovieRep *)self p_updateMovieReflectionMaskLayer];
  }

  [(TSDStyledRep *)self opacity];
  v8 = v7;
  [a3 opacity];
  v10 = v9;
  if (v8 != v10)
  {
    *&v10 = v8;
    [a3 setOpacity:v10];
  }

  v11 = *&self->mCurrentlyObservingPlayerLayer;
  if (v11)
  {
    [v11 opacity];
    v13 = v12;
    if (v8 != v13)
    {
      *&v13 = v8;
      [*&self->mCurrentlyObservingPlayerLayer setOpacity:v13];
    }
  }

  v14 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if ([(TSDMediaRep *)self i_shouldRenderStroke:v14])
  {
    v15 = a3;
    if (BYTE1(self->mPlayerController) == 1)
    {
      v15 = *&self->mCurrentlyObservingPlayerLayer;
    }

    [(TSDMovieRep *)self p_updateStrokeLayerForStroke:v14 repLayer:v15];
    if (self->mMovieReflectionMaskLayer)
    {
      v16 = [(TSDMovieRep *)self reflectionPlayerStrokeLayer];
      if (self->mPlayerStrokeLayer)
      {
        v17 = v16;
        if (![(NSArray *)[(CALayer *)self->mLayerToStroke sublayers] containsObject:v16])
        {
          [(CALayer *)self->mLayerToStroke addSublayer:v17];
        }
      }
    }
  }

  v18 = [(TSDMovieRep *)self alternatePosterImage];
  if (v18)
  {
    goto LABEL_22;
  }

  v19 = [(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] posterImageData];
  if (v19)
  {
    v18 = [TSDBitmapImageProvider CGImageForImageData:v19];
LABEL_22:
    [a3 setContents:v18];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)p_setPositionAndBoundsIfDifferent:(id)a3 position:(CGPoint)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.y;
  v10 = a4.x;
  [a3 position];
  if (v13 != v10 || v12 != v9)
  {
    [a3 setPosition:{v10, v9}];
  }

  [a3 bounds];
  v21.origin.x = v15;
  v21.origin.y = v16;
  v21.size.width = v17;
  v21.size.height = v18;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectEqualToRect(v20, v21))
  {

    [a3 setBounds:{x, y, width, height}];
  }
}

- (void)p_placeReflectionPlayerLayer:(CGRect)a3 transform:(CGAffineTransform *)a4
{
  mCanvas = self->super.super.super.mCanvas;
  [-[TSDMovieRep movieLayout](self movieLayout];
  [(TSDCanvas *)mCanvas convertUnscaledToBoundsRect:TSDRectWithSize()];
  v11 = TSDCenterOfRect(v7, v8, v9, v10);
  v13 = v12;
  v14 = TSDRectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(TSDMovieRep *)self p_setPositionAndBoundsIfDifferent:self->mMovieReflectionMaskLayer position:v11 bounds:v13, v14, v15, v17, v19];
  mPlayerStrokeLayer = self->mPlayerStrokeLayer;
  [(TSDMovieRep *)self p_strokeFrameForLayerFrame:v14, v16, v18, v20];
  [(TSDMovieRep *)self p_setPositionAndBoundsIfDifferent:mPlayerStrokeLayer position:v11 bounds:v13, v22, v23, v24, v25];
  v26 = *(MEMORY[0x277CBF2C0] + 16);
  *&v31.a = *MEMORY[0x277CBF2C0];
  *&v31.c = v26;
  *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v30.a = *&v31.a;
  *&v30.c = v26;
  *&v30.tx = *&v31.tx;
  CGAffineTransformScale(&v31, &v30, 1.0, -1.0);
  v27 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v27;
  t1.tx = 0.0;
  t1.ty = 0.0;
  v28 = v31;
  CGAffineTransformConcat(&v30, &t1, &v28);
  v31 = v30;
  [(CALayer *)self->mMovieReflectionMaskLayer setAffineTransform:&v30];
  v30 = v31;
  [(CALayer *)self->mPlayerStrokeLayer setAffineTransform:&v30];
}

- (void)updateLayerGeometryFromLayout:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  -[TSDRep computeDirectLayerFrame:andTransform:basedOnLayoutGeometry:](self, "computeDirectLayerFrame:andTransform:basedOnLayoutGeometry:", &v12, &v9, [-[TSDMovieRep movieLayout](self "movieLayout")]);
  [(TSDRep *)self antiAliasDefeatLayerTransform:&v9 forFrame:v12, v13];
  v6 = v9;
  v7 = v10;
  v8 = v11;
  [a3 setIfDifferentFrame:&v6 orTransform:{v12, v13}];
  if (*&self->mCurrentlyObservingPlayerLayer)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v5 = *&self->mCurrentlyObservingPlayerLayer;
    v6 = v9;
    v7 = v10;
    v8 = v11;
    [v5 setIfDifferentFrame:&v6 orTransform:{v12, v13}];
    if (self->mMovieReflectionMaskLayer)
    {
      v6 = v9;
      v7 = v10;
      v8 = v11;
      [(TSDMovieRep *)self p_placeReflectionPlayerLayer:&v6 transform:v12, v13];
    }

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)updateFromLayout
{
  v3.receiver = self;
  v3.super_class = TSDMovieRep;
  [(TSDRep *)&v3 updateFromLayout];
  [(TSDMovieRep *)self p_updatePlayButtonVisibility];
}

- (void)p_updateReflectionFrameRep
{
  v3 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
  if (-[TSDMediaRep i_shouldRenderStroke:](self, "i_shouldRenderStroke:", v3) && [v3 isFrame])
  {
    mReflectionPlayerStrokeLayer = self->mReflectionPlayerStrokeLayer;
    if (!mReflectionPlayerStrokeLayer)
    {
LABEL_6:
      self->mReflectionPlayerStrokeLayer = [[TSDFrameRep alloc] initWithTSDFrame:v3];
      return;
    }

    v5 = [(CALayer *)mReflectionPlayerStrokeLayer frame];
    v6 = self->mReflectionPlayerStrokeLayer;
    if (v5 != v3)
    {

      self->mReflectionPlayerStrokeLayer = 0;
      goto LABEL_6;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = self->mReflectionPlayerStrokeLayer;
    if (v7)
    {

      self->mReflectionPlayerStrokeLayer = 0;
    }
  }
}

- (void)i_updateFrameRep
{
  v3.receiver = self;
  v3.super_class = TSDMovieRep;
  [(TSDMediaRep *)&v3 i_updateFrameRep];
  if (self->super.super.mReflectionLayer || [(TSDStyledRep *)self shouldShowReflection])
  {
    [(TSDMovieRep *)self p_updateReflectionFrameRep];
  }
}

- (void)p_commonDrawStrokeInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  CGContextScaleCTM(a3, v5, v5);
  [(TSDMovieRep *)self p_drawInContext:a3 withContent:0 withStroke:1 withOpacity:0 withMask:0 forShadowOrHitTest:0.0];

  CGContextRestoreGState(a3);
}

- (void)p_applyBasicStrokeToLayer:(id)a3 layer:(id)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v12 = v11;
  [a4 setBounds:{x, y, width, height}];
  [a3 applyToRepRenderable:+[TSDRenderable renderableFromLayer:](TSDRenderable withScale:{"renderableFromLayer:", a4), v12}];
  Mutable = CGPathCreateMutable();
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGPathAddRect(Mutable, 0, v15);
  [a4 setHidden:0];
  [a4 setPath:Mutable];

  CGPathRelease(Mutable);
}

- (void)p_updateStrokeLayerForStroke:(id)a3 repLayer:(id)a4
{
  v7 = [(TSDMovieRep *)self playerStrokeLayer];
  v8 = [(TSDMovieRep *)self reflectionPlayerStrokeLayer];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v10 = v9;
  v11 = [(TSDMovieRep *)self p_needsTilingLayerForStroke:a3];
  v76 = 0u;
  memset(&v77, 0, sizeof(v77));
  v75 = 0u;
  [(TSDRep *)self computeDirectLayerFrame:&v75 andTransform:&v77 basedOnLayoutGeometry:[(TSDLayout *)[(TSDRep *)self layout] pureGeometry]];
  v12 = v76;
  v13 = TSDRectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = TSDCenterOfRect(*&v75, *(&v75 + 1), *&v12, *(&v12 + 1));
  v22 = v21;
  [v7 position];
  if (v24 != v20 || v23 != v22)
  {
    [v7 setPosition:{v20, v22}];
  }

  mMaskLayer = self->super.mMaskLayer;
  if (mMaskLayer)
  {
    [(CAShapeLayer *)mMaskLayer affineTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v77;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    t1 = v77;
    [v7 setAffineTransform:&t1];
  }

  [(TSDStyledRep *)self opacity];
  v27 = v26;
  [v7 opacity];
  v29 = v28;
  if (v27 != v29)
  {
    *&v29 = v27;
    [v7 setOpacity:v29];
  }

  if (self->super.super.mReflectionLayer)
  {
    mPlayerStrokeLayer = self->mPlayerStrokeLayer;
    if (mPlayerStrokeLayer)
    {
      [(CALayer *)mPlayerStrokeLayer opacity];
      v32 = v31;
      if (v27 != v32)
      {
        *&v32 = v27;
        [v8 setOpacity:v32];
      }
    }
  }

  if ([a3 isFrame])
  {
    v33 = TSDMultiplyRectScalar(*&v75, *(&v75 + 1), *&v76, *(&v76 + 1), 1.0 / v10);
    v35 = v34;
    v37 = v36;
    v72 = v38;
    [a3 coverageRectWithoutAdornment:?];
    x = v78.origin.x;
    y = v78.origin.y;
    width = v78.size.width;
    height = v78.size.height;
    if (!CGRectEqualToRect(v78, *&self->super.mFrameRep))
    {
      v68 = v35;
      v43 = TSDCenterOfRect(v33, v37, v35, v72);
      v69 = y;
      v45 = TSDSubtractPoints(v43, v44, x);
      [v7 setAnchorPoint:{v45 / width, v46 / height}];
      v70 = height;
      v71 = width;
      TSDMultiplySizeScalar(width, height, v10);
      v47 = TSDRectWithSize();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      [v7 bounds];
      v81.origin.x = v47;
      v81.origin.y = v49;
      v81.size.width = v51;
      v81.size.height = v53;
      if (!CGRectEqualToRect(v79, v81))
      {
        [v7 setBounds:{v47, v49, v51, v53}];
      }

      [(TSDMovieRep *)self i_updateFrameRep];
      mFrameMaskLayer = self->super.mFrameMaskLayer;
      mTapToReplaceLayer = self->super.mTapToReplaceLayer;
      v66 = *(MEMORY[0x277CBF2C0] + 16);
      v67 = *MEMORY[0x277CBF2C0];
      *&t1.a = *MEMORY[0x277CBF2C0];
      *&t1.c = v66;
      v65 = *(MEMORY[0x277CBF2C0] + 32);
      *&t1.tx = v65;
      [(CALayer *)mFrameMaskLayer updateCALayer:v7 toRect:a4 withRepLayer:mTapToReplaceLayer maskLayer:&t1 viewScale:v33 maskLayerTransform:v37, v68, v72, v10];
      v56 = v70;
      v57 = v71;
      if (self->super.super.mReflectionLayer && self->mMovieReflectionMaskLayer)
      {
        [v8 bounds];
        v82.origin.x = v47;
        v82.origin.y = v49;
        v82.size.width = v51;
        v82.size.height = v53;
        if (!CGRectEqualToRect(v80, v82))
        {
          [v8 setBounds:{v47, v49, v51, v53}];
        }

        mReflectionPlayerStrokeLayer = self->mReflectionPlayerStrokeLayer;
        mMovieReflectionMaskLayer = self->mMovieReflectionMaskLayer;
        mReflectionPlayerLayer = self->mReflectionPlayerLayer;
        *&t1.a = v67;
        *&t1.c = v66;
        *&t1.tx = v65;
        [(CALayer *)mReflectionPlayerStrokeLayer updateCALayer:v8 toRect:mMovieReflectionMaskLayer withRepLayer:mReflectionPlayerLayer maskLayer:&t1 viewScale:v33 maskLayerTransform:v37, v68, v72, v10];
        v56 = v70;
        v57 = v71;
      }

      *&self->super.mFrameRep = x;
      self->super.mLastPictureFrameLayerRect.origin.x = v69;
      self->super.mLastPictureFrameLayerRect.origin.y = v57;
      self->super.mLastPictureFrameLayerRect.size.width = v56;
    }
  }

  else
  {
    [(TSDMovieRep *)self p_strokeFrameForLayerFrame:v13, v15, v17, v19];
    [(TSDMovieRep *)self p_setPositionAndBoundsIfDifferent:v7 position:v20 bounds:v22, v61, v62, v63, v64];
    if (!v11)
    {
      [(TSDMovieRep *)self p_applyBasicStrokeToLayer:a3 layer:[(TSDMovieRep *)self p_shapeLayerForPlayerStroke] bounds:v13, v15, v17, v19];
      if (self->super.super.mReflectionLayer)
      {
        if (self->mMovieReflectionMaskLayer)
        {
          [(TSDMovieRep *)self p_applyBasicStrokeToLayer:a3 layer:[(TSDMovieRep *)self p_shapeLayerForReflectionStroke] bounds:v13, v15, v17, v19];
        }
      }
    }
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)p_drawReflectionGradientIntoMovieReflectionLayer:(CGContext *)a3 reflectionSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  CGContextSaveGState(a3);
  CGContextSetFillColorWithColor(a3, [objc_msgSend(MEMORY[0x277D6C2A8] "whiteColor")]);
  v9.origin.x = TSDRectWithSize();
  CGContextFillRect(a3, v9);
  [(TSDStyledRep *)self drawGradientWithAlphaOverReflection:a3 applyingOpacity:0 reflectionSize:width, height];

  CGContextRestoreGState(a3);
}

- (void)p_updateMovieReflectionMaskLayer
{
  [(CALayer *)self->mLayerToStroke bounds];
  v4 = v3;
  v6 = v5;
  [(CALayer *)self->mLayerToStroke bounds];
  [(CALayer *)self->mMovieReflectionLayer setBounds:?];
  v7 = TSDBitmapContextCreate(11, v4);
  [(TSDMovieRep *)self p_drawReflectionGradientIntoMovieReflectionLayer:v7 reflectionSize:v4, v6];
  Image = CGBitmapContextCreateImage(v7);
  [(CALayer *)self->mMovieReflectionLayer setContents:Image];
  [(CALayer *)self->mLayerToStroke setMask:self->mMovieReflectionLayer];
  CGContextRelease(v7);

  CGImageRelease(Image);
}

- (void)p_drawPosterImageInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  [(TSDMediaLayout *)[(TSDMediaRep *)self mediaLayout] boundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(TSDMovieRep *)self alternatePosterImage];
  if (v13)
  {
    v14 = v13;
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    MinY = CGRectGetMinY(v22);
    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    MaxY = CGRectGetMaxY(v23);
    CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
    CGContextScaleCTM(a3, 1.0, -1.0);
    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    CGContextDrawImage(a3, v24, v14);
  }

  else
  {
    v17 = +[TSDImageProviderPool sharedPool];
    v18 = [(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] posterImageData];
    if (v18)
    {
      v19 = v18;
      objc_opt_class();
      [v17 providerForData:v19 shouldValidate:1];
      v20 = TSUDynamicCast();
      if (v20)
      {
        [v20 drawImageInContext:a3 rect:{v6, v8, v10, v12}];
      }
    }
  }

  CGContextRestoreGState(a3);
}

- (void)p_drawInContext:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(double)a6 withMask:(BOOL)a7 forShadowOrHitTest:(BOOL)a8
{
  v8 = a7;
  v10 = a5;
  v11 = a4;
  if (([-[TSDStyledRep styledLayout](self styledLayout] & 1) == 0)
  {
    [(TSDMovieRep *)self i_updateFrameRep];
    v14 = [(TSDLayout *)[(TSDRep *)self layout] stroke];
    v15 = v14;
    if (v14)
    {
      if ([v14 shouldRender])
      {
        if (-[TSDCanvas shouldSuppressBackgrounds](-[TSDRep canvas](self, "canvas"), "shouldSuppressBackgrounds") && ([v15 isFrame] & 1) == 0)
        {
          v15 = [v15 mutableCopy];
          [v15 setColor:{objc_msgSend(MEMORY[0x277D6C2A8], "blackColor")}];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    v16 = a6 < 1.0 && v10;
    v17 = v16 && v11;
    if (v16 && v11 && (CGContextSaveGState(a3), CGContextSetAlpha(a3, a6), v15))
    {
      CGContextBeginTransparencyLayer(a3, 0);
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    CGContextSaveGState(a3);
    v19 = [(TSDMediaRep *)self mediaLayout];
    [(TSDMediaLayout *)v19 boundsForStandardKnobs];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    if (v11)
    {
      if (v8 && self->super.mFrameMaskLayer && [v15 hasMask])
      {
        [v15 coverageRect:{v21, v23, v25, v27}];
        [(CALayer *)self->super.mFrameMaskLayer applyMaskForRectWithCoverage:a3 toContext:?];
      }

      [(TSDMovieRep *)self p_drawPosterImageInContext:a3];
    }

    CGContextRestoreGState(a3);
    if (v10 && v15)
    {
      CGContextSaveGState(a3);
      if ([v15 isFrame])
      {
        if ([(TSDMediaLayout *)v19 shouldRenderFrameStroke])
        {
          mFrameMaskLayer = self->super.mFrameMaskLayer;
          CGContextGetCTM(&v29, a3);
          [(CALayer *)mFrameMaskLayer frameRect:a3 inContext:v21 withTotalScale:v23, v25, v27, TSDTransformScale(&v29.a)];
        }
      }

      else
      {
        [v15 paintRect:a3 inContext:{v21, v23, v25, v27}];
      }

      CGContextRestoreGState(a3);
    }

    if (v18)
    {
      CGContextEndTransparencyLayer(a3);
    }

    if (v17)
    {
      CGContextRestoreGState(a3);
    }
  }
}

- (void)drawInContextWithoutEffects:(CGContext *)a3 withContent:(BOOL)a4 withStroke:(BOOL)a5 withOpacity:(BOOL)a6 forAlphaOnly:(BOOL)a7 drawChildren:(BOOL)a8
{
  v8 = a7;
  v9 = a5;
  v10 = a4;
  v13 = 1.0;
  if (a6)
  {
    [(TSDStyledRep *)self opacity:a3];
  }

  [(TSDMovieRep *)self p_drawInContext:a3 withContent:v10 withStroke:v9 withOpacity:1 withMask:v8 forShadowOrHitTest:a8, v13];
}

- (void)processChangedProperty:(int)a3
{
  v5.receiver = self;
  v5.super_class = TSDMovieRep;
  [(TSDMediaRep *)&v5 processChangedProperty:?];
  if (a3 <= 532)
  {
    if ((a3 - 518) >= 3)
    {
      if (a3 != 517)
      {
        if (a3 == 532)
        {
          [(TSDMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateLayer];
          [(TSDCanvas *)[(TSDRep *)self canvas] invalidateLayers];
          [(TSDMovieRep *)self p_stopUpdatingUIStateForMoviePlayability];
          [(TSDMovieRep *)self p_updateUIStateForMoviePlayability];
        }

        return;
      }

      [(TSDMovieRep *)self i_updateFrameRep];
      [(TSDMovieRep *)self p_disposeStrokeLayer];
      [(TSDMovieRep *)self p_disposeMaskLayer];
      [(TSDMovieRep *)self p_disposeReflectionStrokeLayers];
    }

    [(TSDStyledRep *)self setNeedsDisplay];
    return;
  }

  if (a3 <= 534)
  {
    if (a3 == 533)
    {
      [(TSDStyledRep *)self setNeedsDisplay];
      [(TSDCanvas *)[(TSDRep *)self canvas] invalidateLayers];
    }

    else
    {
      [(TSDMovieRep *)self p_updateStartTime];
    }
  }

  else
  {
    switch(a3)
    {
      case 535:
        [(TSDMovieRep *)self p_updateEndTime];
        break;
      case 537:
        [(TSDMovieRep *)self p_updateRepeatMode];
        break;
      case 538:
        [(TSDMovieRep *)self p_updateVolume];
        break;
    }
  }
}

- (void)becameSelected
{
  v3.receiver = self;
  v3.super_class = TSDMovieRep;
  [(TSDRep *)&v3 becameSelected];
  if ([(TSDMovieRep *)self p_shouldPlayerControllerExistThroughoutSelection])
  {
    [(TSDMovieRep *)self p_setupPlayerControllerIfNecessary];
  }

  else
  {
    [(TSDMovieRep *)self p_updatePlayButtonVisibility];
  }
}

- (void)becameNotSelected
{
  [(TSDMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateLayer];
  [(TSDMovieRep *)self p_updatePlayButtonVisibility];
  v3.receiver = self;
  v3.super_class = TSDMovieRep;
  [(TSDRep *)&v3 becameNotSelected];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3
{
  v4 = [(TSDMovieRep *)self isPlaying:a3.x];
  if (v4 || (v5 = [(TSDRep *)self isSelectedIgnoringLocking]) && (v5 = [(TSDMovieRep *)self shouldSingleTapPlay]) && (v5 = [(TSDMovieRep *)self isPlayable]))
  {
    [-[TSDMovieRep playerController](self "playerController")];
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)p_updateRepeatMode
{
  if (![(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] isStreaming])
  {
    v3 = TSKPlayerRepeatModeForMovieLoopOption([(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] loopOption]);
    v4 = [(TSDMovieRep *)self playerController];

    [v4 setRepeatMode:v3];
  }
}

- (void)screenScaleDidChange
{
  *&self->mDidCheckPlayability = 0;
  v3.receiver = self;
  v3.super_class = TSDMovieRep;
  [(TSDRep *)&v3 screenScaleDidChange];
}

- (void)p_addPlayButtonToKnobs:(id)a3
{
  [a3 addObject:{-[TSDMovieRep p_playButtonKnob](self, "p_playButtonKnob")}];
  [(TSDMovieRep *)self p_updateUIStateForMoviePlayability];

  [(TSDMovieRep *)self p_updatePlayButtonVisibility];
}

- (void)addKnobsToArray:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSDMovieRep;
  [(TSDMediaRep *)&v5 addKnobsToArray:?];
  [(TSDMovieRep *)self p_addPlayButtonToKnobs:a3];
}

- (unint64_t)enabledKnobMask
{
  v5.receiver = self;
  v5.super_class = TSDMovieRep;
  v3 = [(TSDRep *)&v5 enabledKnobMask];
  if ([(TSDMediaRep *)self shouldCreateKnobs]&& [(TSDRep *)self isSelected]&& ![(TSDMovieRep *)self p_playButtonFitsInFrame])
  {
    return v3 & 0x28A;
  }

  return v3;
}

- (BOOL)directlyManagesVisibilityOfKnob:(id)a3
{
  if ([(TSDMovieRep *)self p_playButtonKnob]== a3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = TSDMovieRep;
  return [(TSDRep *)&v6 directlyManagesVisibilityOfKnob:a3];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = TSDMovieRep;
  [(TSDRep *)&v3 willBeRemoved];
  [(TSDMovieRep *)self p_cancelUpdatingUIStateForMoviePlayability];
  [(TSDMovieRep *)self p_teardownPlayerController];
}

- (void)willBeginReadMode
{
  BYTE2(self->mPlayButtonKnob) = 1;
  [(TSDMovieRep *)self p_updatePlayButtonVisibility];

  [(TSDMovieRep *)self p_teardownPlayerController];
}

- (TSDButtonKnob)p_playButtonKnob
{
  result = *&self->mDidCheckPlayability;
  if (!result)
  {
    *&self->mDidCheckPlayability = -[TSDButtonKnob initWithImage:tag:onRep:]([TSDMovieKnob alloc], "initWithImage:tag:onRep:", [MEMORY[0x277D6C2F8] imageNamed:@"TSDMoviePlay" inBundle:TSDBundle()], 5, self);
    LOBYTE(self->mPlayButtonKnob) = 1;
    [*&self->mDidCheckPlayability setWorksWhenRepLocked:1];
    [*&self->mDidCheckPlayability setWorksWhenInVersionBrowsingMode:1];
    return *&self->mDidCheckPlayability;
  }

  return result;
}

- (void)p_updateUIStateForMoviePlayability
{
  if ((self->mAssetForPlayability & 1) == 0 && !self->mReflectionFrameMaskLayer)
  {
    v3 = [(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] movieData];
    if (v3)
    {
      v4 = [(TSPData *)v3 AVAsset];
      self->mReflectionFrameMaskLayer = v4;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __49__TSDMovieRep_p_updateUIStateForMoviePlayability__block_invoke;
      v6[3] = &unk_279D47708;
      v6[4] = v4;
      v6[5] = self;
      [v4 loadValuesAsynchronouslyForKeys:&unk_287DDCB40 completionHandler:v6];
    }

    else
    {
      LOBYTE(self->mAssetForPlayability) = 1;
      BYTE1(self->mAssetForPlayability) = 1;
      v5 = [(TSDMovieRep *)self p_playButtonKnob];

      [(TSDButtonKnob *)v5 setEnabled:1];
    }
  }
}

void __49__TSDMovieRep_p_updateUIStateForMoviePlayability__block_invoke(uint64_t a1)
{
  Main = CFRunLoopGetMain();
  v3 = *MEMORY[0x277CBF048];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__TSDMovieRep_p_updateUIStateForMoviePlayability__block_invoke_2;
  v4[3] = &unk_279D47708;
  v5 = *(a1 + 32);
  CFRunLoopPerformBlock(Main, v3, v4);
  CFRunLoopWakeUp(Main);
}

void __49__TSDMovieRep_p_updateUIStateForMoviePlayability__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) statusOfValueForKey:@"playable" error:0];
  if (v2 != 4)
  {
    *(*(a1 + 40) + 528) = 1;
    if (v2 == 2)
    {
      v3 = [*(a1 + 32) isPlayable];
    }

    else
    {
      v3 = 0;
    }

    *(*(a1 + 40) + 529) = v3;
    [objc_msgSend(*(a1 + 40) "p_playButtonKnob")];
    [*(a1 + 40) p_updatePlayButtonVisibility];
  }

  v4 = *(*(a1 + 40) + 520);
  if (v4 == *(a1 + 32))
  {

    *(*(a1 + 40) + 520) = 0;
  }
}

- (void)p_stopUpdatingUIStateForMoviePlayability
{
  [(CALayer *)self->mReflectionFrameMaskLayer cancelLoading];

  self->mReflectionFrameMaskLayer = 0;
  LOBYTE(self->mAssetForPlayability) = 0;
}

- (BOOL)p_playButtonFitsInFrame
{
  v3 = [(TSDRep *)self interactiveCanvasController];
  [(CALayer *)[(TSDKnob *)[(TSDMovieRep *)self p_playButtonKnob] layer] frame];
  v5 = v4;
  v7 = v6;
  [(TSDRep *)self naturalBounds];
  [(TSDInteractiveCanvasController *)v3 convertUnscaledToBoundsRect:?];
  return v7 <= v9 && v5 <= v8;
}

- (void)p_updatePlayButtonVisibility
{
  if (![(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive]|| (BYTE1(self->mPlayButtonKnob) & 1) != 0)
  {
    return;
  }

  v3 = [(TSDCanvasSelection *)[(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor] canvasSelection] infos];
  v4 = [(TSDMovieRep *)self movieInfo];
  if ([(NSSet *)v3 count]== 1)
  {
    v5 = [(NSSet *)v3 anyObject];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(TSDMovieRep *)self p_playButtonFitsInFrame];
  if (LOBYTE(self->mAssetForPlayability) != 1 || v5 != v4)
  {
    goto LABEL_10;
  }

  v8 = 0;
  if (![(TSDMovieRep *)self isPlaying]&& v6)
  {
    if (BYTE2(self->mPlayButtonKnob))
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    v8 = self->mAlternatePosterImage == 0;
  }

LABEL_11:
  if (LOBYTE(self->mPlayButtonKnob) != v8)
  {
    LOBYTE(self->mPlayButtonKnob) = v8;
    v9 = [(TSDKnob *)[(TSDMovieRep *)self p_playButtonKnob] layer];
    v10 = v9;
    v11 = 0.0;
    if (v8)
    {
      *&v11 = 1.0;
    }

    [(CALayer *)v9 setOpacity:v11];
    if (LOBYTE(self->mPlayButtonKnob) == 1)
    {
      v12 = [(TSDRep *)self canvas];

      [(TSDCanvas *)v12 invalidateLayers];
    }

    else
    {
      if (v5 == v4)
      {
        v13 = 0;
      }

      else
      {
        v13 = [(objc_class *)[(TSDMovieInfo *)v5 repClass] isSubclassOfClass:objc_opt_class()];
      }

      if ((BYTE2(self->mPlayButtonKnob) & 1) == 0 && v6 && (v13 & 1) == 0 && [(CALayer *)v10 superlayer]&& LOBYTE(self->mAssetForPlayability) == 1)
      {
        v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        LODWORD(v15) = 1.0;
        [v14 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v15)}];
        [v14 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
        [v14 setDuration:0.4];

        [(CALayer *)v10 addAnimation:v14 forKey:@"opacity"];
      }
    }
  }
}

- (void)playerController:(id)a3 playbackDidFailWithError:(id)a4
{
  v5 = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v5 presentError:a4 completionHandler:0];
}

- (void)playbackDidStopForPlayerController:(id)a3
{
  [(TSDMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateLayer];
  v4 = [(TSDRep *)self canvas];

  [(TSDCanvas *)v4 invalidateLayers];
}

- (BOOL)isPlaying
{
  height = self->super.mLastPictureFrameLayerRect.size.height;
  if (height != 0.0)
  {
    LOBYTE(height) = [*&height isPlaying];
  }

  return LOBYTE(height);
}

- (void)p_playForKnob
{
  if ([(TSDMovieRep *)self isPlayable])
  {
    v3 = [(TSDMovieRep *)self playerController];

    [v3 setPlaying:1];
  }
}

- (void)p_togglePlaying
{
  if ([(TSDMovieRep *)self isPlayable])
  {
    v3 = [(TSDMovieRep *)self playerController];
    v4 = [-[TSDMovieRep playerController](self "playerController")] ^ 1;

    [v3 setPlaying:v4];
  }
}

- (void)p_setupPlayerControllerIfNecessary
{
  if (!*&self->super.mLastPictureFrameLayerRect.size.height)
  {
    v3 = objc_alloc(MEMORY[0x277CE6598]);
    v4 = [v3 initWithPlayerItem:{objc_msgSend(MEMORY[0x277CE65B0], "playerItemWithAsset:", -[TSDMovieInfo makeAVAsset](-[TSDMovieRep movieInfo](self, "movieInfo"), "makeAVAsset"))}];
    [(TSDMovieRep *)self willChangeValueForKey:@"playerController"];
    *&self->super.mLastPictureFrameLayerRect.size.height = [[TSKAVPlayerController alloc] initWithPlayer:v4 delegate:self];
    [(TSDMovieRep *)self didChangeValueForKey:@"playerController"];
    [(TSDMovieRep *)self p_updateStartTime];
    [(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] endTime];
    if (v5 != 0.0)
    {
      [(TSDMovieRep *)self p_updateEndTime];
    }

    [(TSDMovieRep *)self p_updateRepeatMode];
    [(TSDMovieRep *)self p_updateVolume];
    [*&self->super.mLastPictureFrameLayerRect.size.height addObserver:self forKeyPath:@"playing" options:4 context:TSDMovieRepPlayerControllerPlayingObserverContext];
    [(TSDMovieRep *)self p_setupPlayerLayerIfNecessary];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [(TSDRep *)self interactiveCanvasController];

    [v6 postNotificationName:@"TSDInteractiveCanvasControllerDidUpdateMoviePlayerControllerNotification" object:v7];
  }
}

- (void)p_teardownPlayerController
{
  [(TSDMovieRep *)self p_setNeedsTeardownPlayerControllerOnUpdateLayer];

  [(TSDMovieRep *)self p_teardownPlayerControllerIfNeeded];
}

- (void)p_teardownPlayerControllerIfNeeded
{
  height = self->super.mLastPictureFrameLayerRect.size.height;
  if (height != 0.0 && BYTE5(self->mIsChangingDynamicVisibleTimeCount) == 1)
  {
    if ([*&height isPlaying])
    {
      [*&self->super.mLastPictureFrameLayerRect.size.height setPlaying:0];
    }

    [*&self->super.mLastPictureFrameLayerRect.size.height removeObserver:self forKeyPath:@"playing"];
    if (LOBYTE(self->mPlayerController) == 1)
    {
      [*&self->mCurrentlyObservingPlayerLayer removeObserver:self forKeyPath:@"readyForDisplay" context:TSDMovieRepPlayerLayerReadyForDisplayObserverContext];
    }

    [(TSDMovieRep *)self willChangeValueForKey:@"playerController"];
    [*&self->super.mLastPictureFrameLayerRect.size.height teardown];

    self->super.mLastPictureFrameLayerRect.size.height = 0.0;
    [(TSDMovieRep *)self didChangeValueForKey:@"playerController"];
    BYTE1(self->mPlayerController) = 0;
    mPlayerLayer = self->mPlayerLayer;
    v5 = *&self->mCurrentlyObservingPlayerLayer;
    if (mPlayerLayer == v5)
    {

      self->mPlayerLayer = 0;
      v5 = *&self->mCurrentlyObservingPlayerLayer;
    }

    [(AVPlayerLayer *)v5 setDelegate:0];

    *&self->mCurrentlyObservingPlayerLayer = 0;
    mReflectionPlayerLayer = self->mReflectionPlayerLayer;
    if (mReflectionPlayerLayer)
    {
      [(AVPlayerLayer *)mReflectionPlayerLayer setDelegate:0];
      [(AVPlayerLayer *)self->mReflectionPlayerLayer removeFromSuperlayer];

      self->mReflectionPlayerLayer = 0;
    }

    mMovieReflectionMaskLayer = self->mMovieReflectionMaskLayer;
    if (mMovieReflectionMaskLayer)
    {
      [(CALayer *)mMovieReflectionMaskLayer setDelegate:0];
      [(CALayer *)self->mMovieReflectionMaskLayer removeFromSuperlayer];

      self->mMovieReflectionMaskLayer = 0;
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  BYTE5(self->mIsChangingDynamicVisibleTimeCount) = 0;
}

- (void)p_updateVolume
{
  [(TSDMovieRep *)self volume];
  v4 = v3;
  v5 = [(TSDMovieRep *)self playerController];
  LODWORD(v6) = v4;

  [v5 setVolume:v6];
}

- (void)p_updateStartTime
{
  if (![(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] isStreaming])
  {
    [(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] startTime];
    v4 = v3;
    v5 = [(TSDMovieRep *)self playerController];

    [v5 setStartTime:v4];
  }
}

- (void)p_updateEndTime
{
  if (![(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] isStreaming])
  {
    [(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] endTime];
    v4 = v3;
    v5 = [(TSDMovieRep *)self playerController];

    [v5 setEndTime:v4];
  }
}

- (id)additionalLayersUnderLayer
{
  v5.receiver = self;
  v5.super_class = TSDMovieRep;
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDStyledRep additionalLayersUnderLayer](&v5, sel_additionalLayersUnderLayer)}];
  if (self->mLayerToStroke && [(TSDStyledRep *)self shouldShowReflection])
  {
    [v3 addObject:self->mLayerToStroke];
  }

  return v3;
}

- (id)additionalLayersOverLayer
{
  v7.receiver = self;
  v7.super_class = TSDMovieRep;
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:{-[TSDMediaRep additionalLayersOverLayer](&v7, sel_additionalLayersOverLayer)}];
  v4 = v3;
  if (*&self->mCurrentlyObservingPlayerLayer)
  {
    [v3 addObject:?];
  }

  v5 = [(TSDMovieRep *)self playerStrokeLayer];
  if (v5)
  {
    [v4 addObject:v5];
  }

  return v4;
}

- (BOOL)canResetMediaSize
{
  v5.receiver = self;
  v5.super_class = TSDMovieRep;
  v3 = [(TSDMediaRep *)&v5 canResetMediaSize];
  if (v3)
  {
    if ([(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] isAudioOnly])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(TSDMovieInfo *)[(TSDMovieRep *)self movieInfo] isStreaming];
    }
  }

  return v3;
}

- (void)setAlternatePosterImage:(CGImage *)a3
{
  if (*&self->mPlayButtonKnobVisible != a3)
  {
    CGImageRetain(a3);
    CGImageRelease(*&self->mPlayButtonKnobVisible);
    *&self->mPlayButtonKnobVisible = a3;
    [(TSDStyledRep *)self setNeedsDisplay];
    v5 = [(TSDRep *)self canvas];

    [(TSDCanvas *)v5 invalidateLayers];
  }
}

- (double)visibleTime
{
  if (self->mAlternatePosterImage)
  {
    v2 = [(TSDMovieRep *)self playerController];

    [v2 absoluteCurrentTime];
  }

  else
  {
    v4 = [(TSDMovieRep *)self movieInfo];

    [(TSDMovieInfo *)v4 posterTime];
  }

  return result;
}

- (void)dynamicVisibleTimeChangeDidBegin
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep dynamicVisibleTimeChangeDidBegin]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 2125, @"Dynamic poster time changes can only be made on the main thread"}];
  }

  mAlternatePosterImage = self->mAlternatePosterImage;
  self->mAlternatePosterImage = (mAlternatePosterImage + 1);
  if (!mAlternatePosterImage)
  {
    [(TSDMovieRep *)self p_updatePlayButtonVisibility];
    v6 = [(TSDMovieRep *)self playerController];

    [v6 beginScrubbing];
  }
}

- (void)dynamicVisibleTimeUpdateToValue:(double)a3 withTolerance:(double)a4 completionHandler:(id)a5
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep dynamicVisibleTimeUpdateToValue:withTolerance:completionHandler:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 2136, @"Dynamic poster time changes can only be made on the main thread"}];
  }

  if (!self->mAlternatePosterImage)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep dynamicVisibleTimeUpdateToValue:withTolerance:completionHandler:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 2137, @"A dynamic poster time change must be in progress"}];
  }

  v13 = [(TSDMovieRep *)self playerController];

  [v13 scrubToTime:a5 withTolerance:a3 completionHandler:a4];
}

- (void)dynamicVisibleTimeChangeDidEnd
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep dynamicVisibleTimeChangeDidEnd]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 2144, @"Dynamic poster time changes can only be made on the main thread"}];
  }

  mAlternatePosterImage = self->mAlternatePosterImage;
  if (!mAlternatePosterImage)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieRep dynamicVisibleTimeChangeDidEnd]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieRep.m"), 2145, @"Mismatch between starting and ending dynamic visible poster time changes"}];
    mAlternatePosterImage = self->mAlternatePosterImage;
  }

  v8 = (mAlternatePosterImage - 1);
  self->mAlternatePosterImage = v8;
  if (!v8)
  {
    [objc_msgSend(objc_msgSend(-[TSDMovieRep playerController](self "playerController")];
    [-[TSDMovieRep playerController](self "playerController")];

    [(TSDMovieRep *)self p_updatePlayButtonVisibility];
  }
}

- (float)volume
{
  if (BYTE4(self->mIsChangingDynamicVisibleTimeCount) == 1)
  {
    return *&self->mIsChangingDynamicVisibleTimeCount;
  }

  v5 = [(TSDMovieRep *)self movieInfo];

  [(TSDMovieInfo *)v5 volume];
  return result;
}

- (void)dynamicVolumeChangeDidBegin
{
  [(TSDMovieRep *)self volume];
  LODWORD(self->mIsChangingDynamicVisibleTimeCount) = v3;
  BYTE4(self->mIsChangingDynamicVisibleTimeCount) = 1;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4
{
  v6 = [objc_msgSend(a3 "movieInfo")];
  result = 0.0;
  if (v6 != 1)
  {
    [objc_msgSend(a3 movieInfo];
    v9 = v8;
    [objc_msgSend(a4 "movieInfo")];
    if (v9 == v10)
    {
      v14 = 1.0;
    }

    else
    {
      [objc_msgSend(a3 "movieInfo")];
      v12 = v11;
      [objc_msgSend(a4 "movieInfo")];
      if (v12 == v13)
      {
        v14 = 0.9;
      }

      else
      {
        v14 = 0.5;
      }
    }

    [objc_msgSend(a3 "movieInfo")];
    v16 = v15;
    [objc_msgSend(a4 "movieInfo")];
    if (v16 != v17)
    {
      v14 = v14 * 0.5;
    }

    [objc_msgSend(a3 "movieInfo")];
    v19 = v18;
    [objc_msgSend(a4 "movieInfo")];
    if (v19 == v20)
    {
      return v14;
    }

    else
    {
      return v14 * 0.5;
    }
  }

  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (TSDMovieRepPlayerControllerPlayingObserverContext == a6)
  {
    [(TSDMovieRep *)self p_updatePlayButtonVisibility:a3];

    [(TSDRep *)self invalidateKnobs];
  }

  else if (TSDMovieRepPlayerLayerReadyForDisplayObserverContext == a6)
  {
    if ([objc_msgSend(a5 objectForKey:{*MEMORY[0x277CCA2F0], a4), "BOOLValue"}])
    {
      [*&self->mCurrentlyObservingPlayerLayer removeObserver:self forKeyPath:@"readyForDisplay" context:TSDMovieRepPlayerLayerReadyForDisplayObserverContext];
      LOBYTE(self->mPlayerController) = 0;
      BYTE1(self->mPlayerController) = 1;
      v7 = [(TSDRep *)self interactiveCanvasController];

      [(TSDInteractiveCanvasController *)v7 invalidateLayers];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSDMovieRep;
    [(TSDMovieRep *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end