@interface MRRenderer
+ (double)textScaleForResolution:(CGSize)a3;
- (BOOL)_doActions;
- (BOOL)_r_prerenderWithPassParameters:(id)a3;
- (BOOL)beginTextEditingOfElement:(id)a3 inLayer:(id)a4 callDelegate:(BOOL)a5;
- (BOOL)beginTextEditingOfElement:(id)a3 inPlug:(id)a4 callDelegate:(BOOL)a5;
- (BOOL)canGoToMoreSlides:(BOOL)a3;
- (BOOL)getVerticesCoordinatesForCurrentlyEditedTextElement:(CGPoint *)(a3;
- (BOOL)isFlipped;
- (BOOL)isPlaying;
- (BOOL)prerenderWithPassParameters:(id)a3;
- (BOOL)requestRenderingWithin:(double)a3;
- (CGImage)currentFrameAsCGImage;
- (CGImage)snapshotAsCGImageForTime:(double)a3 andSize:(CGSize)a4;
- (CGPoint)_fixPointForUnprojectionForOrientation:(CGPoint)a3;
- (CGPoint)_fixProjectedPointForOrientation:(CGPoint)a3;
- (CGPoint)contextOffset;
- (CGSize)_maxSizeForCurrentEditingTextElement;
- (CGSize)size;
- (MRRenderer)initWithParameters:(id)a3;
- (NSString)currentFocusedSlideAsset;
- (double)_doAction:(id)a3;
- (double)_time;
- (double)_unalteredTime;
- (double)animateCurrentFocuserToSlideFocusModeWithDuration:(double)a3;
- (double)currentSlideshowTime;
- (double)defaultPauseResumeOnTap:(BOOL)a3;
- (double)enterSlideFocusModeWithState:(id)a3 animate:(BOOL)a4;
- (double)exitSlideFocusMode;
- (double)exitSlideZoomMode:(BOOL)a3;
- (double)focusedTransitionCancel:(id)a3;
- (double)focusedTransitionEnd:(id)a3;
- (double)focusedTransitionStart:(id)a3;
- (double)focusedTransitionUpdate:(id)a3;
- (double)masterClock;
- (double)slideZoomCancel:(id)a3;
- (double)slideZoomEnd:(id)a3;
- (double)slideZoomStart:(id)a3;
- (double)slideZoomUpdate:(id)a3;
- (double)slideshowTransitionCancel:(id)a3;
- (double)slideshowTransitionEnd:(id)a3;
- (double)slideshowTransitionStart:(id)a3;
- (double)time;
- (id)_computeMatrixChainForLayer:(id)a3;
- (id)_layerForPlugObjectID:(id)a3;
- (id)actionByEvaluatingConditionalAction:(id)a3 withStates:(id)a4;
- (id)chooseTransitionIDForRandomTransitionPresetID:(id)a3;
- (id)currentState;
- (id)currentStateForMontageSwap;
- (id)currentlyShowingAssetPaths;
- (id)defaultActionsWithHitLayer:(id)a3 atPoint:(CGPoint)a4;
- (id)layerAtPath:(id)a3 fromLayer:(id)a4;
- (id)layerHitAtPoint:(CGPoint)a3 onlyIfHitElement:(BOOL)a4 localPoint:(CGPoint *)a5;
- (id)plugForCurrentSublayerInNavigatorForPlug:(id)a3;
- (id)slideInfoForCurrentElement:(id)a3;
- (id)slideInfosForCurrentElements;
- (id)snapshotOfStates:(id)a3 atSize:(CGSize)a4;
- (int64_t)_maxLinesForCurrentEditingTextElement;
- (void)_adaptToPressureLevel:(int)a3;
- (void)_cleanupGestureRecognizers;
- (void)_createSlideFocusLayer;
- (void)_dimLayersExceptForPathTo:(id)a3;
- (void)_displayFPS:(double)a3 actuallyDisplay:(BOOL)a4;
- (void)_displayHitZonesVisualFeedback;
- (void)_displayIsPreloadingImages;
- (void)_displayPlayingIDs;
- (void)_displayTouchVisualFeedback;
- (void)_doLayerTrackingAtLocation:(CGPoint)a3;
- (void)_findAndHandleBestRecognizerInRecognizers:(id)a3;
- (void)_playbackIsOverWithTime:(double)a3 sendNotification:(BOOL)a4;
- (void)_r_beginMorphingToAspectRatio:(double)a3 andOrientation:(int)a4 withDuration:(double)a5;
- (void)_r_doSnapshot;
- (void)_r_endMorphing;
- (void)_r_pause;
- (void)_r_render;
- (void)_r_renderForScreenBurnTestAtTime:(double)a3;
- (void)_r_renderRotation;
- (void)_r_renderWithPassParameters:(id)a3;
- (void)_r_resume;
- (void)_r_setTime:(double)a3 isResyncing:(BOOL)a4;
- (void)_r_snapshotForRotation;
- (void)_r_startRenderTimer;
- (void)_r_stopRenderTimer;
- (void)_r_syncIsPlayingToOuter;
- (void)_r_syncTimeToOuter;
- (void)_r_updateTimeWithDisplayLinkTimestamp:(double)a3;
- (void)_renderOnDisplayLink:(id)a3;
- (void)_renderThreadMain;
- (void)_startDisplayLinkOnRunloop;
- (void)_startMonitoringThermalPressureLevelChanges;
- (void)_stopMonitoringThermalPressureLevelChanges;
- (void)_undimAllLayersInLayer:(id)a3;
- (void)addAudioObject:(id)a3;
- (void)addIDToDisplay:(id)a3 :(id)a4;
- (void)addNavigatorToBackHistory:(id)a3;
- (void)addNavigatorToForthHistory:(id)a3;
- (void)applyStateForMontageSwap:(id)a3;
- (void)beginMorphingToAspectRatio:(double)a3 andOrientation:(int)a4 withDuration:(double)a5;
- (void)cleanup;
- (void)dealloc;
- (void)deselectAllLayers;
- (void)deselectLayer:(id)a3;
- (void)didGoToPreviousOrNextFocusedSlide:(BOOL)a3 withAction:(id)a4;
- (void)dimLayersExceptForPathTo:(id)a3;
- (void)doAction:(id)a3;
- (void)dumpActiveHierarchy;
- (void)effect:(id)a3 requestedNumberOfSlides:(unint64_t)a4 firstSlideIndexStillNeeded:(unint64_t)a5;
- (void)endMorphing;
- (void)endTextEditing:(BOOL)a3;
- (void)goBack;
- (void)goForth;
- (void)gotoNextFocusedSlide:(BOOL)a3;
- (void)gotoNextInterestingTime:(BOOL)a3;
- (void)gotoPreviousFocusedSlide:(BOOL)a3;
- (void)gotoPreviousInterestingTime:(BOOL)a3;
- (void)gotoState:(id)a3;
- (void)imagePreloadingEnded;
- (void)jumpToNextMarker;
- (void)jumpToPreviousMarker;
- (void)moveNavigatorFromBackToForthHistory:(id)a3;
- (void)moveNavigatorFromForthToBackHistory:(id)a3;
- (void)nearingEndForSerializer:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)pauseSlideshow;
- (void)processAudioObjects;
- (void)removeAudioObject:(id)a3;
- (void)render;
- (void)requestRendering:(BOOL)a3;
- (void)resetFadeInAndOut;
- (void)resume;
- (void)resumeSlideshow;
- (void)selectLayer:(id)a3;
- (void)sendMCAction:(id)a3 fromSender:(id)a4;
- (void)sendMCAction:(id)a3 fromSender:(id)a4 toTarget:(id)a5;
- (void)sendNotification:(id)a3;
- (void)setAssetManagementDelegate:(id)a3;
- (void)setAsynchronousOperationsDelegate:(id)a3;
- (void)setContextOffset:(CGPoint)a3;
- (void)setCurrentLayoutIndex:(unsigned __int8)a3;
- (void)setDisplaysFPS:(BOOL)a3;
- (void)setEAGLContext:(id)a3;
- (void)setLiveSlideshowDelegate:(id)a3;
- (void)setMasterStartTime:(double)a3 andDuration:(double)a4 mode:(int)a5;
- (void)setMode:(int)a3;
- (void)setMontage:(id)a3;
- (void)setOrientation:(int)a3;
- (void)setScreenBurnTest:(BOOL)a3;
- (void)setSize:(CGSize)a3;
- (void)setSlideFocusModeBackgroundColor:(CGColor *)a3;
- (void)setSlideshowTime:(double)a3;
- (void)setTemporarySize:(CGSize)a3;
- (void)setTime:(double)a3;
- (void)setTimeQuantum:(double)a3;
- (void)stepBackward;
- (void)stepForward;
- (void)swapMontage:(id)a3;
- (void)touchesBegan:(id)a3;
- (void)touchesCancelled:(id)a3;
- (void)touchesEnded:(id)a3;
- (void)touchesMoved:(id)a3;
- (void)transitionToNextPlugInContainerOfPlug:(id)a3;
- (void)transitionToPreviousPlugInContainerOfPlug:(id)a3;
- (void)undimAllLayers;
- (void)updateTimeWithDisplayLinkTimestamp:(double)a3;
- (void)warmupVideo:(BOOL)a3;
- (void)willGoToPreviousOrNextFocusedSlide:(BOOL)a3 withAction:(id)a4 animate:(BOOL)a5;
@end

@implementation MRRenderer

- (void)doAction:(id)a3
{
  if (a3)
  {
    [a3 check];
    mActions = self->mInternal->mActions;
    objc_sync_enter(mActions);
    [(NSMutableArray *)self->mInternal->mActions addObject:a3];
    objc_sync_exit(mActions);
    if ([(MRRenderer *)self requestRenderingOnChanges])
    {

      [(MRRenderer *)self requestRendering:0];
    }
  }
}

- (void)sendMCAction:(id)a3 fromSender:(id)a4
{
  v6 = [[MRAction alloc] initWithAction:a3 inRenderer:self];
  [(MRAction *)v6 setSender:a4];
  [(MRRenderer *)self time];
  [(MRAction *)v6 setTime:?];
  mActions = self->mInternal->mActions;
  objc_sync_enter(mActions);
  [(NSMutableArray *)self->mInternal->mActions addObject:v6];
  objc_sync_exit(mActions);

  [(MRRenderer *)self requestRendering:0];
}

- (void)sendMCAction:(id)a3 fromSender:(id)a4 toTarget:(id)a5
{
  v7 = [[MRAction alloc] initWithAction:a3 andTarget:a5];
  [(MRAction *)v7 setSender:a4];
  [(MRRenderer *)self time];
  [(MRAction *)v7 setTime:?];
  mActions = self->mInternal->mActions;
  objc_sync_enter(mActions);
  [(NSMutableArray *)self->mInternal->mActions addObject:v7];
  objc_sync_exit(mActions);

  [(MRRenderer *)self requestRendering:0];
}

- (id)actionByEvaluatingConditionalAction:(id)a3 withStates:(id)a4
{
  v6 = [a3 predicate];
  v7 = qword_1EF278;
  if (!qword_1EF278)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    qword_1EF278 = v7;
  }

  v8 = [v7 objectForKey:v6];
  if (v8)
  {
    v9 = v8;
    [(MUMathExpressionFloatBased *)v8 resetAllVariables];
  }

  else
  {
    v9 = [[MUMathExpressionFloatBased alloc] initWithString:v6 error:0];
    if (v9)
    {
      [qword_1EF278 setObject:v9 forKey:v6];
    }
  }

  [(MUMathExpressionFloatBased *)v9 setVariableValues:a4];
  [(MUMathExpressionFloatBased *)v9 evaluate];
  if (v10 == 0.0)
  {

    return [a3 actionIfFalse];
  }

  else
  {

    return [a3 actionIfTrue];
  }
}

- (double)_doAction:(id)a3
{
  v5 = [a3 mcAction];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *([v6 block] + 2);

      v7();
      return result;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [a3 resolvedTarget];
      if (v9)
      {
        v10 = v9;
        v11 = [a3 mcAction];
        v12 = [a3 specificObject];

        [v10 doTransition:v11 backwards:0 pzr:v12];
        return result;
      }

      return 0.0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [a3 resolvedTarget];
      if (v13)
      {

        [v13 doAnimationTrigger:a3];
        return result;
      }

      return 0.0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [a3 resolvedTarget];
      if (!v14)
      {
        return 0.0;
      }

      [v14 doActionTrigger:a3];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [a3 resolvedTarget];
        if (!v15)
        {
          return 0.0;
        }

        [v15 doStateOperation:a3];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [a3 resolvedTarget];
          if (!v16)
          {
            return 0.0;
          }

          [v16 doMotionTrigger:a3];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = -[MRAction initWithAction:inRenderer:]([MRAction alloc], "initWithAction:inRenderer:", -[MRRenderer actionByEvaluatingConditionalAction:withStates:](self, "actionByEvaluatingConditionalAction:withStates:", [a3 mcAction], objc_msgSend(a3, "states")), self);
              -[MRAction setSender:](v23, "setSender:", [a3 sender]);
              -[MRAction setStates:](v23, "setStates:", [a3 states]);
              [a3 time];
              [(MRAction *)v23 setTime:?];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                v17 = 0.0;
                if (objc_opt_isKindOfClass())
                {
                  v47 = 0u;
                  v48 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  v30 = [objc_msgSend(a3 "mcAction")];
                  v31 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = *v48;
                    do
                    {
                      for (i = 0; i != v32; i = i + 1)
                      {
                        if (*v48 != v33)
                        {
                          objc_enumerationMutation(v30);
                        }

                        v35 = [[MRAction alloc] initWithAction:*(*(&v47 + 1) + 8 * i) inRenderer:self];
                        -[MRAction setSender:](v35, "setSender:", [a3 sender]);
                        -[MRAction setStates:](v35, "setStates:", [objc_msgSend(a3 "states")]);
                        [a3 time];
                        [(MRAction *)v35 setTime:?];
                        [(MRRenderer *)self _doAction:v35];
                        v37 = v36;

                        if (v37 > v17)
                        {
                          v17 = v37;
                        }
                      }

                      v32 = [v30 countByEnumeratingWithState:&v47 objects:v55 count:16];
                    }

                    while (v32);
                  }
                }

                return v17;
              }

              v24 = [a3 resolvedTarget];
              v25 = [v6 prefix];
              v26 = v25;
              if (v25)
              {
                v27 = [v25 length] + 1;
                v28 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [a3 states]);
              }

              else
              {
                v28 = [a3 states];
                v27 = 0;
              }

              v23 = -[MRAction initWithAction:inRenderer:]([MRAction alloc], "initWithAction:inRenderer:", [v6 action], self);
              -[MRAction setSender:](v23, "setSender:", [a3 sender]);
              [(MRAction *)v23 setStates:v28];
              [a3 time];
              [(MRAction *)v23 setTime:?];
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              v40 = [v24 sublayers];
              v41 = [v40 countByEnumeratingWithState:&v51 objects:v56 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v52;
                do
                {
                  for (j = 0; j != v42; j = j + 1)
                  {
                    if (*v52 != v43)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v45 = *(*(&v51 + 1) + 8 * j);
                    if (v26)
                    {
                      -[NSMutableDictionary setObject:forKey:](v28, "setObject:forKey:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [objc_msgSend(objc_msgSend(*(*(&v51 + 1) + 8 * j) "idInSupercontainer")]), @"_forEachPlugIndex");
                    }

                    [(MRAction *)v23 setResolvedTarget:v45];
                    [(MRRenderer *)self _doAction:v23];
                  }

                  v42 = [v40 countByEnumeratingWithState:&v51 objects:v56 count:16];
                }

                while (v42);
              }
            }

            [(MRRenderer *)self _doAction:v23];
            v17 = v46;

            return v17;
          }

          v18 = [a3 resolvedTarget];
          v17 = 0.0;
          if (!v18)
          {
            return v17;
          }

          v19 = v18;
          v20 = [objc_msgSend(a3 "mcAction")];
          v21 = [v20 objectForKey:@"type"];
          if ([v21 isEqualToString:@"phaseIn"])
          {
            v22 = [v20 objectForKey:@"plugID"];

            [v19 phaseInSublayerForKey:v22];
          }

          else if ([v21 isEqualToString:@"phaseOut"])
          {
            v29 = [v20 objectForKey:@"plugID"];

            [v19 phaseOutSublayerForKey:v29];
          }

          else
          {
            if ([v21 isEqualToString:@"startTracking"])
            {
              v38 = [[NSDictionary alloc] initWithObjectsAndKeys:{v19, @"layer", objc_msgSend(a3, "mcAction"), @"action", 0}];
              mLayerTrackings = self->mInternal->mLayerTrackings;
              if (!mLayerTrackings)
              {
                self->mInternal->mLayerTrackings = objc_alloc_init(NSMutableDictionary);
                mLayerTrackings = self->mInternal->mLayerTrackings;
              }

              -[NSMutableDictionary setObject:forKey:](mLayerTrackings, "setObject:forKey:", v38, [v19 uuid]);

              return v17;
            }

            if ([v21 isEqualToString:@"endTracking"])
            {
              -[NSMutableDictionary removeObjectForKey:](self->mInternal->mLayerTrackings, "removeObjectForKey:", [v19 uuid]);
              return v17;
            }

            [v19 doGenericAction:a3];
          }
        }
      }
    }
  }

  else
  {

    [a3 invoke];
  }

  return result;
}

- (BOOL)_doActions
{
  v3 = 0;
  v4 = 0.0;
  while (1)
  {
    mActions = self->mInternal->mActions;
    objc_sync_enter(mActions);
    if (![(NSMutableArray *)self->mInternal->mActions count])
    {
      break;
    }

    v6 = self->mInternal->mActions;
    self->mInternal->mActions = objc_alloc_init(NSMutableArray);
    objc_sync_exit(mActions);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          [(MRRenderer *)self _doAction:v10];
          v12 = v11;
          [v10 time];
          if (v12 > v4 && v13 > -100000.0)
          {
            v4 = v12;
          }
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
      v3 = 1;
    }
  }

  objc_sync_exit(mActions);
  [(MRRenderer *)self time];
  if (v4 > 0.0)
  {
    v16 = v15;
    if (![(MRRenderer *)self isPlaying]|| (mInternal = self->mInternal, mMasterDuration = mInternal->mMasterDuration, mMasterDuration > 0.0) && v4 + v16 >= mMasterDuration + mInternal->mMasterStartTime)
    {
      [(MRRenderer *)self time];
      v20 = v19;
      [(MRRenderer *)self timeQuantum];
      [(MRRenderer *)self setMasterStartTime:2 andDuration:v20 mode:v4 + v21];
      [(MRRenderer *)self resume];
    }
  }

  return v3;
}

- (double)defaultPauseResumeOnTap:(BOOL)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_395D0;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
  return 0.0;
}

- (void)resumeSlideshow
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_396A0;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
}

- (void)pauseSlideshow
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_398E0;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
}

- (double)currentSlideshowTime
{
  v2 = [(MRRenderer *)self _layerForPlugObjectID:self->mInternal->mTransitionLayerPlugObjectID];
  [v2 timeIn];
  v4 = v3;
  [v2 currentSlideshowTime];
  return v4 + v5;
}

- (void)setSlideshowTime:(double)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_39B84;
  v4[3] = &unk_1AA670;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(mRenderDispatchQueue, v4);
}

- (BOOL)canGoToMoreSlides:(BOOL)a3
{
  v3 = a3;
  v4 = [(MRRenderer *)self _layerForPlugObjectID:self->mInternal->mTransitionLayerPlugObjectID];

  return [v4 canTransitionToMoreSlides:v3];
}

- (void)jumpToNextMarker
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39DB0;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
}

- (void)jumpToPreviousMarker
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39EF8;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
}

- (void)gotoNextInterestingTime:(BOOL)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3A044;
  v4[3] = &unk_1AA728;
  v4[4] = self;
  v5 = a3;
  dispatch_async(mRenderDispatchQueue, v4);
}

- (void)gotoPreviousInterestingTime:(BOOL)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3A19C;
  v4[3] = &unk_1AA728;
  v4[4] = self;
  v5 = a3;
  dispatch_async(mRenderDispatchQueue, v4);
}

- (void)gotoNextFocusedSlide:(BOOL)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3A2F0;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
}

- (void)gotoPreviousFocusedSlide:(BOOL)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3A46C;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
}

- (id)defaultActionsWithHitLayer:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (![(MRRenderer *)self cameraCaptureSession])
  {
    mSlideFocusState = self->mInternal->mSlideFocusState;
    if (!mSlideFocusState)
    {
      v8 = +[NSMutableDictionary dictionary];
      if (a3)
      {
        v14 = [a3 elementHitAtPoint:0 localPoint:{x, y}];
      }

      else
      {
        v14 = 0;
      }

      v24[5] = _NSConcreteStackBlock;
      v24[6] = 3221225472;
      v24[7] = sub_3AF00;
      v24[8] = &unk_1AA778;
      v24[9] = a3;
      v24[10] = v14;
      v24[11] = self;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_3AF80;
      v24[3] = &unk_1AA7A0;
      v24[4] = self;
      [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v24), @"onDoubleHitEnd"}];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_3AF8C;
      v23[3] = &unk_1AA750;
      v23[4] = self;
      [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v23), @"onPanHorizontalStart"}];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_3AF98;
      v22[3] = &unk_1AA750;
      v22[4] = self;
      [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v22), @"onPanHorizontalUpdate"}];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_3AFA4;
      v21[3] = &unk_1AA750;
      v21[4] = self;
      [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v21), @"onPanHorizontalEnd"}];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_3AFB0;
      v20[3] = &unk_1AA750;
      v20[4] = self;
      [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v20), @"onPanHorizontalCancel"}];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_3AFBC;
      v19[3] = &unk_1AA750;
      v19[4] = self;
      [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v19), @"onPanHorizontalStart2"}];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_3AFC8;
      v18[3] = &unk_1AA750;
      v18[4] = self;
      [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v18), @"onPanHorizontalUpdate2"}];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_3AFD4;
      v17[3] = &unk_1AA750;
      v17[4] = self;
      [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v17), @"onPanHorizontalEnd2"}];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_3AFE0;
      v16[3] = &unk_1AA750;
      v16[4] = self;
      v12 = [MRMCBlockAction blockActionWithBlock:v16];
      v13 = @"onPanHorizontalCancel2";
      goto LABEL_17;
    }

    v10 = [(MRSlideFocusState *)mSlideFocusState isInZoomMode];
    v8 = +[NSMutableDictionary dictionary];
    if (a3)
    {
      v11 = [a3 elementHitAtPoint:0 localPoint:{x, y}];
      if (v10)
      {
        if (!v11)
        {
          return v8;
        }

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_3AE38;
        v36[3] = &unk_1AA750;
        v36[4] = self;
        [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v36), @"onPanZoomRotationStart"}];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_3AE44;
        v35[3] = &unk_1AA750;
        v35[4] = self;
        [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v35), @"onPanZoomRotationUpdate"}];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_3AE50;
        v34[3] = &unk_1AA750;
        v34[4] = self;
        [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v34), @"onPanZoomRotationEnd"}];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_3AE5C;
        v33[3] = &unk_1AA750;
        v33[4] = self;
        v12 = [MRMCBlockAction blockActionWithBlock:v33];
        v13 = @"onPanZoomRotationCancel";
LABEL_17:
        [v8 setObject:v12 forKey:v13];
        return v8;
      }

      if (v11)
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_3AE68;
        v32[3] = &unk_1AA750;
        v32[4] = self;
        [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v32), @"onZoomStart"}];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_3AEAC;
        v31[3] = &unk_1AA750;
        v31[4] = self;
        [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v31), @"onZoomUpdate"}];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_3AEB8;
        v30[3] = &unk_1AA750;
        v30[4] = self;
        [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v30), @"onZoomEnd"}];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_3AEC4;
        v29[3] = &unk_1AA750;
        v29[4] = self;
        [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v29), @"onZoomCancel"}];
      }
    }

    else if (v10)
    {
      return v8;
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_3AED0;
    v28[3] = &unk_1AA750;
    v28[4] = self;
    [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v28), @"onPanHorizontalStart"}];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_3AEDC;
    v27[3] = &unk_1AA750;
    v27[4] = self;
    [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v27), @"onPanHorizontalUpdate"}];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_3AEE8;
    v26[3] = &unk_1AA750;
    v26[4] = self;
    [v8 setObject:+[MRMCBlockAction blockActionWithBlock:](MRMCBlockAction forKey:{"blockActionWithBlock:", v26), @"onPanHorizontalEnd"}];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_3AEF4;
    v25[3] = &unk_1AA750;
    v25[4] = self;
    v12 = [MRMCBlockAction blockActionWithBlock:v25];
    v13 = @"onPanHorizontalCancel";
    goto LABEL_17;
  }

  return 0;
}

- (void)touchesBegan:(id)a3
{
  [(MRRenderer *)self _cleanupGestureRecognizers];
  if (self->_interactivityIsEnabled)
  {
    if ([self->mTopMRLayer isActivated])
    {
      v51 = self;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v43 = [a3 countByEnumeratingWithState:&v59 objects:v64 count:16];
      v4 = self;
      if (v43)
      {
        v42 = *v60;
        __asm { FMOV            V0.2D, #2.0 }

        v40 = _Q0;
        do
        {
          v10 = 0;
          do
          {
            if (*v60 != v42)
            {
              v11 = v10;
              objc_enumerationMutation(a3);
              v4 = v51;
              v10 = v11;
            }

            v44 = v10;
            v12 = *(*(&v59 + 1) + 8 * v10);
            if ([(MRRenderer *)v4 displaysTouchVisualFeedback])
            {
              mTouchesForVisualFeedback = v51->mInternal->mTouchesForVisualFeedback;
              objc_sync_enter(mTouchesForVisualFeedback);
              [(NSMutableArray *)v51->mInternal->mTouchesForVisualFeedback addObject:v12];
              objc_sync_exit(mTouchesForVisualFeedback);
            }

            v58 = CGPointZero;
            [v12 location];
            mTopMRLayer = [(MRRenderer *)v51 layerHitAtPoint:1 onlyIfHitElement:&v58 localPoint:?];
            v45 = mTopMRLayer;
            if (!mTopMRLayer)
            {
              [v12 location];
              v16.f64[1] = v15;
              v58 = vdivq_f64(vmlaq_f64(vnegq_f64(v51->mSize), v40, v16), v51->mSize);
              mTopMRLayer = v51->mTopMRLayer;
            }

            v4 = v51;
            if (v51->mInternal->mGestureRecognizers)
            {
              if (!mTopMRLayer)
              {
                goto LABEL_72;
              }
            }

            else
            {
              v17 = mTopMRLayer;
              v18 = objc_alloc_init(NSMutableDictionary);
              v4 = v51;
              v51->mInternal->mGestureRecognizers = v18;
              mTopMRLayer = v17;
              if (!v17)
              {
                goto LABEL_72;
              }
            }

            v52 = 0;
            do
            {
              v50 = mTopMRLayer;
              if (mTopMRLayer == v4->mTopMRLayer)
              {
                v53 = [(MRRenderer *)v4 defaultActionsWithHitLayer:v45 atPoint:v58];
              }

              else
              {
                v53 = [mTopMRLayer actions];
              }

              if (![v53 count])
              {
                goto LABEL_70;
              }

              v47 = [MURetainingKey retainingKeyWithObject:v50];
              v19 = [(NSMutableDictionary *)v51->mInternal->mGestureRecognizers objectForKey:v47];
              v20 = v19;
              if (v19)
              {
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                v21 = [v19 countByEnumeratingWithState:&v54 objects:v63 count:16];
                if (v21)
                {
                  v22 = *v55;
                  do
                  {
                    for (i = 0; i != v21; i = i + 1)
                    {
                      if (*v55 != v22)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v24 = *(*(&v54 + 1) + 8 * i);
                      if (([v24 state] & 0x24) == 0)
                      {
                        [v24 touchBegan:v12];
                      }
                    }

                    v21 = [v20 countByEnumeratingWithState:&v54 objects:v63 count:16];
                  }

                  while (v21);
                }

                goto LABEL_70;
              }

              v49 = objc_alloc_init(NSMutableArray);
              v46 = [(MRRenderer *)v51 _computeMatrixChainForLayer:v50];
              if ((v52 & 1) == 0)
              {
                v25 = [v53 objectForKey:@"onHitStart"];
                v26 = [v53 objectForKey:@"onHitEnd"];
                if (v25 | v26)
                {
                  v27 = [(MRGestureRecognizer *)[MRTapGestureRecognizer alloc] initWithRenderer:v51 startAction:v25 andSender:v50];
                  [(MRGestureRecognizer *)v27 setRequiredTouchCount:1];
                  -[MRGestureRecognizer setUpdateAction:](v27, "setUpdateAction:", [v53 objectForKey:@"onHitUpdate"]);
                  [(MRGestureRecognizer *)v27 setEndAction:v26];
                  -[MRGestureRecognizer setCancelAction:](v27, "setCancelAction:", [v53 objectForKey:@"onHitCancel"]);
                  [(MRGestureRecognizer *)v27 setMatrixChain:v46];
                  [(MRLayer *)v50 pixelSize];
                  [(MRGestureRecognizer *)v27 setReferenceSize:?];
                  [(MRTapGestureRecognizer *)v27 touchBegan:v12];
                  [v49 addObject:v27];

                  v52 |= 1uLL;
                }
              }

              if ((v52 & 2) == 0)
              {
                v28 = [v53 objectForKey:@"onDoubleHitStart"];
                v29 = [v53 objectForKey:@"onDoubleHitEnd"];
                if (v28 | v29)
                {
                  v30 = [(MRGestureRecognizer *)[MRTapGestureRecognizer alloc] initWithRenderer:v51 startAction:v28 andSender:v50];
                  [(MRGestureRecognizer *)v30 setRequiredTouchCount:2];
                  -[MRGestureRecognizer setUpdateAction:](v30, "setUpdateAction:", [v53 objectForKey:@"onDoubleHitUpdate"]);
                  [(MRGestureRecognizer *)v30 setEndAction:v29];
                  -[MRGestureRecognizer setCancelAction:](v30, "setCancelAction:", [v53 objectForKey:@"onDoubleHitCancel"]);
                  [(MRGestureRecognizer *)v30 setMatrixChain:v46];
                  [(MRLayer *)v50 pixelSize];
                  [(MRGestureRecognizer *)v30 setReferenceSize:?];
                  [(MRTapGestureRecognizer *)v30 touchBegan:v12];
                  [v49 addObject:v30];

                  v52 |= 2uLL;
                }
              }

              v31 = 0;
              v48 = 0;
              do
              {
                v32 = word_163478[v31];
                if ((v52 & (word_163478[v31] << ((v32 >> 5) & 0xF8 | 2))) != 0)
                {
                  goto LABEL_66;
                }

                v33 = off_1AA7C0[v31];
                v34 = [v53 objectForKey:v33];
                if (v34)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || (v34 = [(MRRenderer *)v51 actionByEvaluatingConditionalAction:v34 withStates:[(MRLayer *)v50 persistentState]]) != 0)
                  {
                    v35 = [[MRPanZoomRotationGestureRecognizer alloc] initWithRenderer:v51 masterAction:v34 direction:v32 andSender:v50];
                    v36 = off_1AA848[v31];
                    -[MRGestureRecognizer setStartAction:](v35, "setStartAction:", [v53 objectForKey:v36]);
                    v37 = 0;
                    v38 = 1;
                    if (!v35)
                    {
                      goto LABEL_66;
                    }

LABEL_54:
                    [(MRRenderer *)v51 interactiveTransitionTrackingBoxRadius];
                    [(MRPanZoomRotationGestureRecognizer *)v35 setTrackingBoxRadius:?];
                    [(MRRenderer *)v51 interactiveTransitionProgressThreshold];
                    [(MRPanZoomRotationGestureRecognizer *)v35 setProgressThreshold:?];
                    [(MRRenderer *)v51 interactiveTransitionVelocityThreshold];
                    [(MRPanZoomRotationGestureRecognizer *)v35 setVelocityThreshold:?];
                    if (v38)
                    {
                      -[MRGestureRecognizer setStartAction:](v35, "setStartAction:", [v53 objectForKey:v36]);
                    }

                    -[MRGestureRecognizer setEndAction:](v35, "setEndAction:", [v53 objectForKey:off_1AA958[v31]]);
                    if ((v37 & 1) == 0)
                    {
                      -[MRGestureRecognizer setUpdateAction:](v35, "setUpdateAction:", [v53 objectForKey:off_1AA8D0[v31]]);
                      -[MRGestureRecognizer setCancelAction:](v35, "setCancelAction:", [v53 objectForKey:off_1AA9E0[v31]]);
                    }

                    if ([v34 tracksInParent])
                    {
                      v39 = v48;
                      if (!v48)
                      {
                        v39 = [(MRRenderer *)v51 _computeMatrixChainForLayer:[(MRLayer *)v50 superlayer]];
                      }

                      v48 = v39;
                      [(MRGestureRecognizer *)v35 setMatrixChain:?];
                      [[(MRLayer *)v50 superlayer] pixelSize];
                    }

                    else
                    {
                      [(MRGestureRecognizer *)v35 setMatrixChain:v46];
                      [(MRLayer *)v50 pixelSize];
                    }

                    [(MRGestureRecognizer *)v35 setReferenceSize:?];
                    if ([(__CFString *)v33 hasSuffix:@"2"])
                    {
                      [(MRGestureRecognizer *)v35 setRequiredTouchCount:2];
                    }

                    [(MRGestureRecognizer *)v35 touchBegan:v12];
                    [v49 addObject:v35];

                    v52 |= 4 * v32;
                    goto LABEL_66;
                  }
                }

                v36 = off_1AA848[v31];
                v34 = [v53 objectForKey:v36];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = [(MRRenderer *)v51 actionByEvaluatingConditionalAction:v34 withStates:[(MRLayer *)v50 persistentState]];
                }

                if (v34)
                {
                  v35 = [[MRPanZoomRotationGestureRecognizer alloc] initWithRenderer:v51 startAction:v34 direction:v32 andSender:v50];
                  v38 = 0;
                  v37 = 0;
                  if (!v35)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_54;
                }

                v34 = [v53 objectForKey:off_1AA958[v31]];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = [(MRRenderer *)v51 actionByEvaluatingConditionalAction:v34 withStates:[(MRLayer *)v50 persistentState]];
                }

                if (v34)
                {
                  v35 = [[MRPanZoomRotationGestureRecognizer alloc] initWithRenderer:v51 endAction:v34 direction:v32 andSender:v50];
                  v38 = 0;
                  v37 = 1;
                  if (v35)
                  {
                    goto LABEL_54;
                  }
                }

LABEL_66:
                ++v31;
              }

              while (v31 != 17);
              if ([v49 count])
              {
                [(NSMutableDictionary *)v51->mInternal->mGestureRecognizers setObject:v49 forKey:v47];
              }

LABEL_70:
              mTopMRLayer = [(MRLayer *)v50 superlayer];
              v4 = v51;
            }

            while (mTopMRLayer && v52 != 1023);
LABEL_72:
            v10 = v44 + 1;
          }

          while ((v44 + 1) != v43);
          v43 = [a3 countByEnumeratingWithState:&v59 objects:v64 count:16];
          v4 = v51;
        }

        while (v43);
      }
    }
  }
}

- (void)touchesMoved:(id)a3
{
  [(MRRenderer *)self _cleanupGestureRecognizers];
  if (self->_interactivityIsEnabled && [self->mTopMRLayer isActivated])
  {
    v17 = self;
    v4 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = [v9 gestureRecognizers];
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v19 + 1) + 8 * j);
                [v15 touchMoved:v9];
                if (([v4 containsObject:v15] & 1) == 0)
                {
                  [v4 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    v16 = v17;
    [(MRRenderer *)v17 _findAndHandleBestRecognizerInRecognizers:v4, v17];

    [(MRRenderer *)v16 _cleanupGestureRecognizers];
  }
}

- (void)touchesEnded:(id)a3
{
  [(MRRenderer *)self _cleanupGestureRecognizers];
  if (self->_interactivityIsEnabled && [self->mTopMRLayer isActivated])
  {
    v17 = self;
    v4 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = [v9 gestureRecognizers];
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v19 + 1) + 8 * j);
                [v15 touchEnded:v9];
                if (([v4 containsObject:v15] & 1) == 0)
                {
                  [v4 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    v16 = v17;
    [(MRRenderer *)v17 _findAndHandleBestRecognizerInRecognizers:v4, v17];

    [(MRRenderer *)v16 _cleanupGestureRecognizers];
  }
}

- (void)touchesCancelled:(id)a3
{
  [(MRRenderer *)self _cleanupGestureRecognizers];
  if (self->_interactivityIsEnabled && [self->mTopMRLayer isActivated])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v19 + 1) + 8 * v8);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v10 = [v9 gestureRecognizers];
          v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v16;
            do
            {
              v14 = 0;
              do
              {
                if (*v16 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [*(*(&v15 + 1) + 8 * v14) abort];
                v14 = v14 + 1;
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v12);
          }

          v8 = v8 + 1;
        }

        while (v8 != v6);
        v6 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }

    [(MRRenderer *)self _cleanupGestureRecognizers];
  }
}

- (void)_findAndHandleBestRecognizerInRecognizers:(id)a3
{
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v46;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        if (([v11 state] & 8) != 0)
        {
          [v11 score];
          if (v12 > v9)
          {
            v7 = v11;
            v9 = v12;
          }
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v6);
    if (v7)
    {
      [v7 recognize];
      v13 = [v7 sender];
      if (v13)
      {
        v14 = v13;
        do
        {
          v15 = [(NSMutableDictionary *)self->mInternal->mGestureRecognizers objectForKey:[MURetainingKey retainingKeyWithObject:v14]];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v41 objects:v51 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v42;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v42 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v41 + 1) + 8 * j);
                if (v20 != v7)
                {
                  [v20 abort];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v41 objects:v51 count:16];
            }

            while (v17);
          }

          v14 = [v14 superlayer];
        }

        while (v14);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = [v7 touches];
      v22 = [v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        do
        {
          for (k = 0; k != v23; k = k + 1)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v37 + 1) + 8 * k);
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v27 = [v26 gestureRecognizers];
            v28 = [v27 countByEnumeratingWithState:&v33 objects:v49 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v34;
              do
              {
                for (m = 0; m != v29; m = m + 1)
                {
                  if (*v34 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v33 + 1) + 8 * m);
                  if (v32 != v7)
                  {
                    [v32 abort];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v33 objects:v49 count:16];
              }

              while (v29);
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v37 objects:v50 count:16];
        }

        while (v23);
      }
    }
  }
}

- (id)layerHitAtPoint:(CGPoint)a3 onlyIfHitElement:(BOOL)a4 localPoint:(CGPoint *)a5
{
  y = a3.y;
  x = a3.x;
  if (![self->mTopMRLayer isActivated])
  {
    return 0;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_3C490;
  v27 = sub_3C4A0;
  v28 = 0;
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C4AC;
  block[3] = &unk_1AAA70;
  block[4] = self;
  block[5] = &v23;
  v9.f64[0] = x;
  v9.f64[1] = y;
  __asm { FMOV            V2.2D, #2.0 }

  v20 = vdivq_f64(vmlaq_f64(vnegq_f64(self->mSize), _Q2, v9), self->mSize);
  v22 = a4;
  v21 = a5;
  dispatch_sync(mRenderDispatchQueue, block);
  v15 = v24[5];
  _Block_object_dispose(&v23, 8);
  return v15;
}

- (void)willGoToPreviousOrNextFocusedSlide:(BOOL)a3 withAction:(id)a4 animate:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate];
  mSlideFocusState = self->mInternal->mSlideFocusState;
  if (v7)
  {
    [(MRLayer *)v9 willFocusOnNextSlideWithState:mSlideFocusState animate:v5];
    [(MRLayerNavigator *)self->mInternal->mSlideFocusNavigator gotoNextSublayer:a4 animate:v5];
  }

  else
  {
    [(MRLayer *)v9 willFocusOnPreviousSlideWithState:mSlideFocusState animate:v5];
    [(MRLayerNavigator *)self->mInternal->mSlideFocusNavigator gotoPreviousSublayer:a4 animate:v5];
  }

  if ([(MRSlideFocusState *)self->mInternal->mSlideFocusState delegateIsTransitioningToo])
  {
    [(MRLayer *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate] setForcedTransitionProgress:0.0];
  }

  [(MRSlideFocusState *)self->mInternal->mSlideFocusState setIsTransitioning:1];
  v11 = self->mInternal->mSlideFocusState;

  [(MRSlideFocusState *)v11 setIsGoingToNext:v7];
}

- (void)didGoToPreviousOrNextFocusedSlide:(BOOL)a3 withAction:(id)a4
{
  v5 = a3;
  if ([(MRSlideFocusState *)self->mInternal->mSlideFocusState delegateIsTransitioningToo])
  {
    v7 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate];
    [(MRLayer *)v7 setForcedTransitionProgress:1.1];
    [(MRLayer *)v7 finishTransition:a4];
  }

  v8 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState slideInfo];
  mSlideFocusState = self->mInternal->mSlideFocusState;
  if (v5)
  {
    [(MRSlideFocusState *)mSlideFocusState setPreviousSlideInfo:v8];
    [(MRSlideFocusState *)self->mInternal->mSlideFocusState setPreviousSlideID:[(MRSlideFocusState *)self->mInternal->mSlideFocusState slideID]];
    [(MRSlideFocusState *)self->mInternal->mSlideFocusState setSlideInfo:[(MRSlideFocusState *)self->mInternal->mSlideFocusState nextSlideInfo]];
    [(MRSlideFocusState *)self->mInternal->mSlideFocusState setSlideID:[(MRSlideFocusState *)self->mInternal->mSlideFocusState nextSlideID]];
    [(MRLayer *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate] didFocusOnNextSlideWithState:self->mInternal->mSlideFocusState];
    v10 = 1;
  }

  else
  {
    [(MRSlideFocusState *)mSlideFocusState setNextSlideInfo:v8];
    [(MRSlideFocusState *)self->mInternal->mSlideFocusState setNextSlideID:[(MRSlideFocusState *)self->mInternal->mSlideFocusState slideID]];
    [(MRSlideFocusState *)self->mInternal->mSlideFocusState setSlideInfo:[(MRSlideFocusState *)self->mInternal->mSlideFocusState previousSlideInfo]];
    [(MRSlideFocusState *)self->mInternal->mSlideFocusState setSlideID:[(MRSlideFocusState *)self->mInternal->mSlideFocusState previousSlideID]];
    [(MRLayer *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate] didFocusOnPreviousSlideWithState:self->mInternal->mSlideFocusState];
    v10 = 2;
  }

  mInternal = self->mInternal;
  v12 = (mInternal->mCurrentSlideFocuserIndex + v10) % 3;
  mInternal->mCurrentSlideFocuserIndex = v12;
  v13 = v12 + v10;
  if (v13 >= 3)
  {
    v13 -= 3;
  }

  v14 = self->mInternal;
  v15 = v14->mSlideFocuser[v13];
  v16 = v14->mSlideFocusState;
  if (v5)
  {
    v17 = [(MRSlideFocusState *)v16 nextSlideInfo];
  }

  else
  {
    v17 = [(MRSlideFocusState *)v16 previousSlideInfo];
  }

  v18 = v17;
  [(MRLayerEffect *)v15 setAssetPath:[(MRSlideInfo *)v17 assetPath] ofSlide:@"image0"];
  [(MRLayerEffect *)v15 setCenter:@"image0" ofSlide:0.5, 0.5];
  [(MRSlideInfo *)v18 aspectRatio];
  v20 = v19 * self->mSize.height / self->mSize.width;
  if (v20 > 1.0)
  {
    v20 = 1.0;
  }

  [(MRLayerEffect *)v15 setScale:@"image0" ofSlide:v20];
  [(MRSlideInfo *)v18 aspectRatio];
  [(MRLayerEffect *)v15 setMaxScale:@"image0" ofSlide:fmax((v21 + v21) * self->mSize.height / self->mSize.width, 2.0)];
  [(MRLayerEffect *)v15 setRotation:@"image0" ofSlide:0.0];
  NSLog(@"didGoToPreviousOrNextFocusedSlide: %@ %@ %@", [(MRSlideFocusState *)self->mInternal->mSlideFocusState previousSlideID], [(MRSlideFocusState *)self->mInternal->mSlideFocusState slideID], [(MRSlideFocusState *)self->mInternal->mSlideFocusState nextSlideID]);
}

- (double)slideshowTransitionStart:(id)a3
{
  v5 = [a3 specificObject];
  v6 = [(MRLayerParallelizer *)self->mTopMRLayer sublayerForPlugObjectID:self->mInternal->mTransitionLayerPlugObjectID recursive:1];
  v7 = *(v5 + 96);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 != 3 || v5[8] >= 0.0;
  }

  v9 = fabs(v5[8]) < 1.0;

  [v6 gotoMoreSlidesWithAction:a3 backwards:v8 animate:1 canCatchCurrentTransition:v9];
  return result;
}

- (double)slideshowTransitionEnd:(id)a3
{
  v4 = [(MRLayerParallelizer *)self->mTopMRLayer sublayerForPlugObjectID:self->mInternal->mTransitionLayerPlugObjectID recursive:1];

  [v4 attemptToFinishTransition:a3 didTransition:0 gotReversed:0];
  return result;
}

- (double)slideshowTransitionCancel:(id)a3
{
  v4 = [(MRLayerParallelizer *)self->mTopMRLayer sublayerForPlugObjectID:self->mInternal->mTransitionLayerPlugObjectID recursive:1];

  [v4 abortTransition:a3];
  return result;
}

- (double)focusedTransitionStart:(id)a3
{
  if (self->mInternal->mSlideFocusState)
  {
    v5 = [a3 specificObject];
    v6 = *(v5 + 96) == 1 || v5[8] < 0.0;
    [(MRRenderer *)self willGoToPreviousOrNextFocusedSlide:v6 withAction:a3 animate:1];
  }

  return 0.0;
}

- (double)focusedTransitionUpdate:(id)a3
{
  mSlideFocusState = self->mInternal->mSlideFocusState;
  if (mSlideFocusState && [(MRSlideFocusState *)mSlideFocusState isTransitioning])
  {
    if ([(MRSlideFocusState *)self->mInternal->mSlideFocusState delegateIsTransitioningToo])
    {
      [(MRLayer *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate] updateTransition:a3];
    }

    [(MRLayerNavigator *)self->mInternal->mSlideFocusNavigator updateTransition:a3];
  }

  return 0.0;
}

- (double)focusedTransitionEnd:(id)a3
{
  mSlideFocusState = self->mInternal->mSlideFocusState;
  v5 = 0.0;
  if (mSlideFocusState && [(MRSlideFocusState *)mSlideFocusState isTransitioning])
  {
    v11 = 0;
    [(MRLayerNavigator *)self->mInternal->mSlideFocusNavigator attemptToFinishTransition:a3 didTransition:&v11 + 1 gotReversed:&v11];
    v5 = v7;
    v8 = self->mInternal->mSlideFocusState;
    if (HIBYTE(v11) == 1)
    {
      if ([(MRSlideFocusState *)v8 isInZoomMode])
      {
        [(MRRenderer *)self exitSlideZoomMode:0];
      }

      v9 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState isGoingToNext];
      [(MRRenderer *)self didGoToPreviousOrNextFocusedSlide:v11 != v9 withAction:a3];
    }

    else if ([(MRSlideFocusState *)v8 delegateIsTransitioningToo])
    {
      [(MRLayer *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate] abortTransition:a3];
    }

    [(MRSlideFocusState *)self->mInternal->mSlideFocusState setIsTransitioning:0];
  }

  return v5;
}

- (double)focusedTransitionCancel:(id)a3
{
  mSlideFocusState = self->mInternal->mSlideFocusState;
  if (mSlideFocusState && [(MRSlideFocusState *)mSlideFocusState isTransitioning])
  {
    if ([(MRSlideFocusState *)self->mInternal->mSlideFocusState delegateIsTransitioningToo])
    {
      [(MRLayer *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate] abortTransition:a3];
    }

    [(MRLayerNavigator *)self->mInternal->mSlideFocusNavigator abortTransition:a3];
    [(MRSlideFocusState *)self->mInternal->mSlideFocusState setIsTransitioning:0];
  }

  return 0.0;
}

- (double)slideZoomStart:(id)a3
{
  if (!self->mInternal->mSlideFocusState)
  {
    return 0.0;
  }

  v5 = [a3 specificObject];
  *(v5 + 99) = 1;
  *(v5 + 100) = [(MRSlideFocusState *)self->mInternal->mSlideFocusState isInZoomMode];
  if (![(MRSlideFocusState *)self->mInternal->mSlideFocusState isInZoomMode])
  {
    goto LABEL_10;
  }

  v6 = self->mInternal->mSlideFocuser[self->mInternal->mCurrentSlideFocuserIndex];
  if (v6)
  {
    v6 = [(MRLayerEffect *)v6 effect];
  }

  if (*(v5 + 97) == 1 && *(v5 + 6) == 1.0 && *(v5 + 7) == 0.0 && fabs(*(v5 + 8)) > fabs(*(v5 + 9)) && ![(MRLayerEffect *)v6 canMoveInDirection:3 withPZR:v5])
  {

    [(MRRenderer *)self focusedTransitionStart:a3];
  }

  else
  {
LABEL_10:
    v7 = self->mInternal->mSlideFocuser[self->mInternal->mCurrentSlideFocuserIndex];

    [(MRLayerEffect *)v7 pzrStart:a3];
  }

  return result;
}

- (double)slideZoomUpdate:(id)a3
{
  if (!self->mInternal->mSlideFocusState)
  {
    return 0.0;
  }

  v5 = [a3 specificObject];
  v5[99] = 1;
  v5[100] = [(MRSlideFocusState *)self->mInternal->mSlideFocusState isInZoomMode];
  if (![(MRSlideFocusState *)self->mInternal->mSlideFocusState isTransitioning])
  {
    v6 = self->mInternal->mSlideFocuser[self->mInternal->mCurrentSlideFocuserIndex];
    [(MRLayerEffect *)v6 pzrUpdate:a3];
    v7 = [(MRLayerEffect *)v6 currentSlideInfoForElement:@"image0"];
    [v7 aspectRatio];
    v9 = v8 * self->mSize.height / self->mSize.width;
    if (v9 <= 1.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1.0;
    }

    [v7 scale];
    v12 = v11 / v10;
    v13 = v11 <= 0.0;
    v14 = 0.001;
    if (!v13)
    {
      v14 = v12;
    }

    v15 = v14 * v14;
    if (v15 <= 1.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1.0;
    }

    mSlideFocusLayer = self->mInternal->mSlideFocusLayer;
    [(MRLayer *)mSlideFocusLayer opacity];
    [(MRLayer *)mSlideFocusLayer animateOpacityTo:v16 withDuration:1.0 - v18];
    return 0.0;
  }

  [(MRRenderer *)self focusedTransitionUpdate:a3];
  return result;
}

- (double)slideZoomEnd:(id)a3
{
  if (!self->mInternal->mSlideFocusState)
  {
    return 0.0;
  }

  v5 = [a3 specificObject];
  v5[99] = 1;
  v5[100] = [(MRSlideFocusState *)self->mInternal->mSlideFocusState isInZoomMode];
  if (![(MRSlideFocusState *)self->mInternal->mSlideFocusState isTransitioning])
  {
    v7 = self->mInternal->mSlideFocuser[self->mInternal->mCurrentSlideFocuserIndex];
    v8 = [(MRLayerEffect *)v7 currentSlideInfoForElement:@"image0"];
    [v8 aspectRatio];
    v10 = v9 * self->mSize.height / self->mSize.width;
    v5[98] = 0;
    if (v10 <= 1.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1.0;
    }

    [v8 scale];
    if (v12 >= v11 * 0.8)
    {
      if (-[MRSlideFocusState isInZoomMode](self->mInternal->mSlideFocusState, "isInZoomMode") && ([v8 scale], v14 < v11))
      {
        [(MRRenderer *)self exitSlideZoomMode:1];
      }

      else
      {
        if ([(MRSlideFocusState *)self->mInternal->mSlideFocusState isInZoomMode])
        {
          v5[98] = 1;
          v6 = 0.0;
LABEL_19:
          v5[100] = [(MRSlideFocusState *)self->mInternal->mSlideFocusState isInZoomMode];
          [(MRLayerEffect *)v7 pzrEnd:a3];
          return v6;
        }

        [(MRRenderer *)self animateCurrentFocuserToSlideFocusModeWithDuration:0.25];
      }
    }

    else
    {
      [(MRRenderer *)self exitSlideFocusMode];
    }

    v6 = v13;
    goto LABEL_19;
  }

  [(MRRenderer *)self focusedTransitionEnd:a3];
  return result;
}

- (double)slideZoomCancel:(id)a3
{
  if (!self->mInternal->mSlideFocusState)
  {
    return 0.0;
  }

  v5 = [a3 specificObject];
  v5[99] = 1;
  v5[100] = [(MRSlideFocusState *)self->mInternal->mSlideFocusState isInZoomMode];
  if (![(MRSlideFocusState *)self->mInternal->mSlideFocusState isTransitioning])
  {
    [(MRLayerEffect *)self->mInternal->mSlideFocuser[self->mInternal->mCurrentSlideFocuserIndex] pzrCancel:a3];
    return 0.0;
  }

  [(MRRenderer *)self focusedTransitionCancel:a3];
  return result;
}

- (void)_cleanupGestureRecognizers
{
  v2 = self;
  if ([(NSMutableDictionary *)self->mInternal->mGestureRecognizers count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v2->mInternal->mGestureRecognizers;
    v23 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v23)
    {
      v24 = 0;
      v21 = v2;
      v22 = *v34;
      while (1)
      {
        v3 = 0;
        do
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v33 + 1) + 8 * v3);
          if ([objc_msgSend(v4 "object")])
          {
            v5 = [(NSMutableDictionary *)v2->mInternal->mGestureRecognizers objectForKey:v4];
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v6 = [v5 countByEnumeratingWithState:&v25 objects:v37 count:16];
            if (!v6)
            {
              goto LABEL_34;
            }

            v7 = v6;
            v8 = 0;
            v9 = *v26;
            do
            {
              for (i = 0; i != v7; i = i + 1)
              {
                if (*v26 != v9)
                {
                  objc_enumerationMutation(v5);
                }

                v11 = *(*(&v25 + 1) + 8 * i);
                if (([v11 state] & 0x24) != 0)
                {
                  if (!v8)
                  {
                    v8 = objc_alloc_init(NSMutableArray);
                  }

                  [v8 addObject:v11];
                  [v11 cleanup];
                }
              }

              v7 = [v5 countByEnumeratingWithState:&v25 objects:v37 count:16];
            }

            while (v7);
            if (!v8)
            {
              v2 = v21;
              goto LABEL_34;
            }

            [v5 removeObjectsInArray:v8];

            if ([v5 count])
            {
              v2 = v21;
              goto LABEL_34;
            }

            v2 = v21;
          }

          else
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v12 = [(NSMutableDictionary *)v2->mInternal->mGestureRecognizers objectForKey:v4];
            v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v30;
              do
              {
                for (j = 0; j != v14; j = j + 1)
                {
                  if (*v30 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v29 + 1) + 8 * j);
                  [v17 abort];
                  [v17 cleanup];
                }

                v14 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
              }

              while (v14);
            }

            v2 = v21;
          }

          v18 = v24;
          if (!v24)
          {
            v18 = objc_alloc_init(NSMutableArray);
          }

          v24 = v18;
          [v18 addObject:v4];
LABEL_34:
          v3 = v3 + 1;
        }

        while (v3 != v23);
        v19 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        v23 = v19;
        if (!v19)
        {
          if (v24)
          {
            [(NSMutableDictionary *)v2->mInternal->mGestureRecognizers removeObjectsForKeys:v24];
          }

          return;
        }
      }
    }
  }
}

- (id)_computeMatrixChainForLayer:(id)a3
{
  v4 = [[NSMutableArray alloc] initWithObjects:{a3, 0}];
  v5 = [a3 superlayer];
  if (v5)
  {
    v6 = v5;
    do
    {
      if (*([v6 renderingState] + 242) == 1)
      {
        [v4 addObject:v6];
      }

      v6 = [v6 superlayer];
    }

    while (v6);
  }

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v4 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        memset(v21, 0, sizeof(v21));
        memset(v20, 0, sizeof(v20));
        MRMatrix_MultiplyWithMatrix([v13 renderingState] + 28, objc_msgSend(v13, "renderingState") + 44, v21);
        if (MRMatrix_Invert(v21, v20))
        {
          v14 = [[NSData alloc] initWithBytes:v20 length:64];
          [(NSMutableArray *)v7 addObject:v14];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_doLayerTrackingAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v66 = 0u;
  v67 = 0u;
  mInternal = self->mInternal;
  v68 = 0u;
  v69 = 0u;
  obj = [(NSMutableDictionary *)mInternal->mLayerTrackings objectEnumerator];
  v7 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  v57 = v5;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v67;
    v53 = *v67;
    do
    {
      v11 = 0;
      v54 = v8;
      do
      {
        if (*v67 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v66 + 1) + 8 * v11);
        v13 = [v12 objectForKey:@"layer"];
        if ([v13 isActivated])
        {
          v14 = -[MRAction initWithAction:andTarget:]([MRAction alloc], "initWithAction:andTarget:", +[MCActionTrigger actionTriggerForTargetPlugObjectID:withActionKey:](MCActionTrigger, "actionTriggerForTargetPlugObjectID:withActionKey:", 0, [objc_msgSend(objc_msgSend(v12 objectForKey:{@"action", "attributes"), "objectForKey:", @"actionKey"}]), v13);
          [(MRAction *)v14 setSender:v13];
          v15 = [NSMutableArray arrayWithObject:v13];
          v16 = [v13 superlayer];
          if (v16)
          {
            v17 = v16;
            do
            {
              if (*([v17 renderingState] + 242) == 1)
              {
                [(NSMutableArray *)v15 addObject:v17];
              }

              v17 = [v17 superlayer];
            }

            while (v17);
          }

          v18 = v9;
          height = v5->mSize.height;
          v20 = -(v5->mSize.width - x * 2.0) / v5->mSize.width;
          v62 = 0u;
          v63 = 0u;
          v21 = -(height - y * 2.0) / height;
          v64 = 0u;
          v65 = 0u;
          v22 = [(NSMutableArray *)v15 reverseObjectEnumerator];
          v23 = [v22 countByEnumeratingWithState:&v62 objects:v73 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v63;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v63 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v62 + 1) + 8 * i);
                memset(v72, 0, sizeof(v72));
                memset(v71, 0, sizeof(v71));
                MRMatrix_MultiplyWithMatrix([v27 renderingState] + 28, objc_msgSend(v27, "renderingState") + 44, v72);
                if (MRMatrix_Invert(v72, v71))
                {
                  v20 = MRMatrix_UnprojectPoint(v71, v20, v21);
                  v21 = v28;
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v62 objects:v73 count:16];
            }

            while (v24);
          }

          [v13 pixelSize];
          v30 = v29;
          [v13 pixelSize];
          v32 = v21 * (v30 / v31);
          v33 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [v13 persistentState]);
          *&v34 = v20;
          [(NSMutableDictionary *)v33 setObject:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v34], @"trackingX"];
          *&v35 = v32;
          [(NSMutableDictionary *)v33 setObject:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v35], @"trackingY"];
          [(MRAction *)v14 setStates:v33];
          v5 = v57;
          [(MRRenderer *)v57 time];
          [(MRAction *)v14 setTime:?];
          [(MRRenderer *)v57 doAction:v14];

          v9 = v18;
          v10 = v53;
          v8 = v54;
        }

        else
        {
          if (!v9)
          {
            v9 = objc_alloc_init(NSMutableArray);
          }

          [v9 addObject:{objc_msgSend(v13, "uuid")}];
        }

        v11 = v11 + 1;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v8);
    if (v9)
    {
      [(NSMutableDictionary *)v5->mInternal->mLayerTrackings removeObjectsForKeys:v9];
    }
  }

  v72[0] = CGPointZero;
  v36 = [(MRRenderer *)v5 layerHitAtPoint:1 onlyIfHitElement:v72 localPoint:x, y];
  if (v36)
  {
    while (1)
    {
      v37 = [objc_msgSend(v36 "plug")];
      if (v37)
      {
        break;
      }

      v36 = [v36 superlayer];
      if (!v36)
      {
        goto LABEL_32;
      }
    }

    obja = v37;
  }

  else
  {
LABEL_32:
    obja = 0;
  }

  v38 = [(NSMutableSet *)v5->mInternal->mLayersCurrentlyTrackedIn copy];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v39 = [v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v59;
    do
    {
      for (j = 0; j != v40; j = j + 1)
      {
        if (*v59 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v58 + 1) + 8 * j);
        if (![v43 isActivated])
        {
          goto LABEL_52;
        }

        v44 = v36 == v43 || v36 == 0;
        v45 = v36;
        if (!v44)
        {
          v45 = v36;
          do
          {
            v45 = [v45 superlayer];
          }

          while (v45 != v43 && v45);
        }

        if (!v45)
        {
          v46 = [objc_msgSend(v43 "plug")];
          if (v46)
          {
            v47 = [[MRAction alloc] initWithAction:v46 inRenderer:v57];
            [(MRAction *)v47 setSender:v43];
            v48 = [v43 persistentState];
            if (v48)
            {
              [(MRAction *)v47 setStates:[NSMutableDictionary dictionaryWithDictionary:v48]];
            }

            [(MRRenderer *)v57 time];
            [(MRAction *)v47 setTime:?];
            [(MRRenderer *)v57 doAction:v47];
          }

LABEL_52:
          [(NSMutableSet *)v57->mInternal->mLayersCurrentlyTrackedIn removeObject:v43];
          continue;
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v40);
  }

  v49 = obja;
  if (v36 && ([(NSMutableSet *)v57->mInternal->mLayersCurrentlyTrackedIn containsObject:v36]& 1) == 0)
  {
    do
    {
      if (v49)
      {
        [(NSMutableSet *)v57->mInternal->mLayersCurrentlyTrackedIn addObject:v36];
        v50 = [[MRAction alloc] initWithAction:v49 inRenderer:v57];
        [(MRAction *)v50 setSender:v36];
        v51 = [v36 persistentState];
        if (v51)
        {
          [(MRAction *)v50 setStates:[NSMutableDictionary dictionaryWithDictionary:v51]];
        }

        [(MRRenderer *)v57 time];
        [(MRAction *)v50 setTime:?];
        [(MRRenderer *)v57 doAction:v50];
      }

      v52 = [v36 superlayer];
      if (!v52)
      {
        break;
      }

      v36 = v52;
      v49 = [objc_msgSend(v52 "plug")];
    }

    while (![(NSMutableSet *)v57->mInternal->mLayersCurrentlyTrackedIn containsObject:v36]);
  }
}

+ (double)textScaleForResolution:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    a3.width = a3.height;
  }

  return a3.width / 800.0;
}

- (BOOL)getVerticesCoordinatesForCurrentlyEditedTextElement:(CGPoint *)(a3
{
  mInternal = self->mInternal;
  if (mInternal->mCurrentlyEditedTextElement)
  {
    v6 = [MRLayerEffect getVerticesCoordinates:"getVerticesCoordinates:forElement:" forElement:?];
    if (v6)
    {
      v7 = 0;
      mSize = self->mSize;
      __asm
      {
        FMOV            V1.2D, #1.0
        FMOV            V2.2D, #0.5
      }

      do
      {
        v15 = &(*a3)[v7];
        v16 = vmulq_f64(vmulq_f64(vaddq_f64((*a3)[v7 + 1], _Q1), mSize), _Q2);
        *v15 = vmulq_f64(vmulq_f64(vaddq_f64((*a3)[v7], _Q1), mSize), _Q2);
        v15[1] = v16;
        v7 += 2;
      }

      while (v7 != 4);
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (CGSize)_maxSizeForCurrentEditingTextElement
{
  mInternal = self->mInternal;
  mLayerCurrentlyTextEditing = mInternal->mLayerCurrentlyTextEditing;
  if (mLayerCurrentlyTextEditing)
  {
    [(MRLayerEffect *)mLayerCurrentlyTextEditing _maxSizeForTextElement:[(MRLayerEffect *)mInternal->mLayerCurrentlyTextEditing editedElement]];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)_maxLinesForCurrentEditingTextElement
{
  mInternal = self->mInternal;
  mLayerCurrentlyTextEditing = mInternal->mLayerCurrentlyTextEditing;
  if (!mLayerCurrentlyTextEditing)
  {
    return 0;
  }

  v4 = [(MRLayerEffect *)mInternal->mLayerCurrentlyTextEditing editedElement];

  return [(MRLayerEffect *)mLayerCurrentlyTextEditing _maxLinesForTextElement:v4];
}

- (BOOL)beginTextEditingOfElement:(id)a3 inLayer:(id)a4 callDelegate:(BOOL)a5
{
  v5 = a5;
  if (![a3 hasPrefix:@"text"])
  {
    return 0;
  }

  mInternal = self->mInternal;
  if (mInternal->mLayerCurrentlyTextEditing == a4)
  {
    if (mInternal->mCurrentlyEditedTextElement == a3 || ([a3 isEqualToString:?] & 1) != 0)
    {
      return 1;
    }

    mInternal = self->mInternal;
  }

  if (mInternal->mCurrentlyEditedTextElement)
  {
    [(MRRenderer *)self endTextEditing:v5];
  }

  self->mInternal->mLayerCurrentlyTextEditing = a4;
  [(MRLayerEffect *)self->mInternal->mLayerCurrentlyTextEditing setEditedElement:a3];
  self->mInternal->mCurrentlyEditedTextElement = [a3 copy];
  v10 = [(MRRenderer *)self editingDelegate];
  v11 = 1;
  if (v5)
  {
    v12 = v10;
    if (v10)
    {
      memset(v21, 0, sizeof(v21));
      v19 = 0;
      v20 = 0u;
      if (([a4 getVerticesCoordinates:&v19 forElement:a3] & 1) == 0)
      {
        v19 = CGPointZero;
        *&v21[0] = 0;
        v20 = 0x3FF0000000000000uLL;
        __asm { FMOV            V0.2D, #1.0 }

        *(v21 + 8) = _Q0;
        *(&v21[1] + 1) = 0x3FF0000000000000;
      }

      v11 = -[MREditingDelegate beginEditingTextElement:inContainer:clickAt:vertices:](v12, "beginEditingTextElement:inContainer:clickAt:vertices:", a3, [objc_msgSend(a4 plug], &v19, CGPointZero.x, CGPointZero.y);
      if (v11)
      {
        [(MRRenderer *)self requestRendering:0];
      }

      else
      {
        [(MRLayerEffect *)self->mInternal->mLayerCurrentlyTextEditing setEditedElement:0];

        self->mInternal->mLayerCurrentlyTextEditing = 0;
        self->mInternal->mCurrentlyEditedTextElement = 0;
      }
    }
  }

  return v11;
}

- (BOOL)beginTextEditingOfElement:(id)a3 inPlug:(id)a4 callDelegate:(BOOL)a5
{
  v5 = a5;
  v9 = [a4 montage];
  if (v9 != [(MRRenderer *)self montage])
  {
    return 0;
  }

  [a4 container];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v10 = -[MRLayerParallelizer sublayerForPlugObjectID:recursive:](self->mTopMRLayer, "sublayerForPlugObjectID:recursive:", [a4 objectID], 1);
  if (![v10 isActivated])
  {
    return 0;
  }

  return [(MRRenderer *)self beginTextEditingOfElement:a3 inLayer:v10 callDelegate:v5];
}

- (void)endTextEditing:(BOOL)a3
{
  if (self->mInternal->mCurrentlyEditedTextElement)
  {
    v3 = a3;
    v5 = [(MRRenderer *)self editingDelegate];
    if (v3 && v5)
    {
      [(MREditingDelegate *)v5 endEditingTextElement:self->mInternal->mCurrentlyEditedTextElement inContainer:[(MCPlug *)[(MRLayer *)self->mInternal->mLayerCurrentlyTextEditing plug] container]];
    }

    [(MRLayerEffect *)self->mInternal->mLayerCurrentlyTextEditing setEditedElement:0];

    self->mInternal->mCurrentlyEditedTextElement = 0;
    self->mInternal->mLayerCurrentlyTextEditing = 0;

    [(MRRenderer *)self requestRendering:0];
  }
}

- (MRRenderer)initWithParameters:(id)a3
{
  v10.receiver = self;
  v10.super_class = MRRenderer;
  v4 = [(MRRenderer *)&v10 init];
  if (v4)
  {
    v4->mInternal = objc_alloc_init(MRRendererInternal);
    v4->mMode = 0;
    v4->mPushRendering = 1;
    v4->mVolume = 1.0;
    v4->mTimeQuantum = 0.0166666667;
    v4->mInternal->mSelectedLayers = objc_alloc_init(NSMutableArray);
    v4->mInternal->mMasterClock = -1.0;
    v4->mDisplayLinkTimestamp = -1.0;
    v4->mInternal->mRenderDispatchQueue = dispatch_queue_create([[NSString UTF8String:@"MRRenderer %p"] stringWithFormat:?];
    mRenderDispatchQueue = v4->mInternal->mRenderDispatchQueue;
    global_queue = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(mRenderDispatchQueue, global_queue);
    dispatch_queue_set_specific(v4->mInternal->mRenderDispatchQueue, sRenderDispatchQueueSpecificKey, v4, 0);
    v4->mInternal->mRenderThread = [[NSThread alloc] initWithTarget:v4 selector:"_renderThreadMain" object:0];
    v4->mInternal->mRenderDispatchQueueCopyForRenderThread = v4->mInternal->mRenderDispatchQueue;
    dispatch_retain(v4->mInternal->mRenderDispatchQueueCopyForRenderThread);
    [(NSThread *)v4->mInternal->mRenderThread start];
    v4->mInternal->mFrameLock = [[NSConditionLock alloc] initWithCondition:0];
    [(NSConditionLock *)v4->mInternal->mFrameLock setName:@"MRRenderer.frameLock"];
    v4->mInternal->mSnapshotAsCGImageLock = [[NSConditionLock alloc] initWithCondition:0];
    [(NSConditionLock *)v4->mInternal->mSnapshotAsCGImageLock setName:@"MRRenderer.snapshotAsCGImageLock"];
    v4->mDisplaysFPS = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"MRDisplaysFPS"];
    v4->mDisplaysPlayingIDs = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"MRDisplaysPlayingIDs"];
    v4->mDisplaysIsPreloadingImages = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"MRDisplaysIsPreloadingImages"];
    v7 = objc_alloc_init(NSOperationQueue);
    [v7 setMaxConcurrentOperationCount:{+[MRUtilities operationQueueConcurrentOperationCount](MRUtilities, "operationQueueConcurrentOperationCount")}];
    [v7 setSuspended:0];
    v4->mInternal->mRenderArguments = [[MRRenderArguments alloc] initWithRenderer:v4];
    [(MRRenderArguments *)v4->mInternal->mRenderArguments setPreloadQueue:v7];

    v8 = objc_alloc_init(NSMutableDictionary);
    [(NSDictionary *)v8 addEntriesFromDictionary:a3];
    [(NSDictionary *)v8 setObject:v4 forKey:@"renderer"];
    v4->mParameters = v8;
    v4->mOrientation = 0;
    v4->mInternal->mMorphingStartTime = -1.0;
    v4->mInternal->mActions = objc_alloc_init(NSMutableArray);
    v4->mInternal->mLayersCurrentlyTrackedIn = objc_alloc_init(NSMutableSet);
    v4->mInternal->mHideTextWhileEditing = 1;
    v4->mInternal->mTouchesForVisualFeedback = objc_alloc_init(NSMutableArray);
    v4->mInternal->mHitZonesForVisualFeedback = objc_alloc_init(NSMutableArray);
    v4->_allowsThumbnails = 1;
    v4->_interactivityIsEnabled = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"MarimbaInteractivityIsEnabled"];
    [(MRRenderer *)v4 _startMonitoringThermalPressureLevelChanges];
  }

  return v4;
}

- (void)dealloc
{
  [(MRRenderer *)self cleanup];
  [(MRRenderer *)self _stopMonitoringThermalPressureLevelChanges];

  self->mInternal->mFrameLock = 0;
  self->mInternal->mSnapshotAsCGImageLock = 0;
  dispatch_release(self->mInternal->mRenderDispatchQueue);
  self->mInternal->mRenderDispatchQueue = 0;

  self->_renderingLogFilePath = 0;
  self->mInternal = 0;
  v3.receiver = self;
  v3.super_class = MRRenderer;
  [(MRRenderer *)&v3 dealloc];
}

- (void)cleanup
{
  if (!self->mIsCleanedUp)
  {
    self->mIsCleanedUp = 1;
    [(MRRenderer *)self endTextEditing:0];
    mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_48FA8;
    v14[3] = &unk_1AA700;
    v14[4] = self;
    PerformSynchronouslyOnRenderQueue(mRenderDispatchQueue, v14);
    [(NSOperationQueue *)[(MRRenderArguments *)self->mInternal->mRenderArguments preloadQueue] setSuspended:0];
    [(MRAsynchronousOperationsDelegate *)self->mInternal->mAsynchronousOperationsDelegate setSuspended:0];
    mInternal = self->mInternal;
    mRenderThread = mInternal->mRenderThread;
    mInternal->mRenderThread = 0;
    [NSNull performSelector:"null" onThread:mRenderThread withObject:0 waitUntilDone:0];

    self->mInternal->mSelectedLayers = 0;
    objc_storeWeak(&self->_assetManagementDelegate, 0);
    objc_storeWeak(&self->_renderingDelegate, 0);
    objc_storeWeak(&self->_editingDelegate, 0);

    self->mDescriptionsForRandomTransitionPresetIDs = 0;
    objc_storeWeak(&self->_featureDelegate, 0);
    [(MRRenderArguments *)self->mInternal->mRenderArguments cleanup];

    self->mInternal->mRenderArguments = 0;
    v6 = self->mInternal;
    mScreenBurnTestAccumulationImage1 = v6->mScreenBurnTestAccumulationImage1;
    if (mScreenBurnTestAccumulationImage1)
    {
      [(MRImage *)mScreenBurnTestAccumulationImage1 cleanup];
      [(MRImage *)self->mInternal->mScreenBurnTestAccumulationImage1 releaseByUser];
      self->mInternal->mScreenBurnTestAccumulationImage1 = 0;
      v6 = self->mInternal;
    }

    mScreenBurnTestAccumulationImage2 = v6->mScreenBurnTestAccumulationImage2;
    if (mScreenBurnTestAccumulationImage2)
    {
      [(MRImage *)mScreenBurnTestAccumulationImage2 cleanup];
      [(MRImage *)self->mInternal->mScreenBurnTestAccumulationImage2 releaseByUser];
      self->mInternal->mScreenBurnTestAccumulationImage2 = 0;
    }

    self->mParameters = 0;
    self->mInternal->mActions = 0;

    self->mInternal->mDefaultActions = 0;
    [(NSMutableSet *)self->mInternal->mLayersCurrentlyTrackedIn removeAllObjects];

    self->mInternal->mLayersCurrentlyTrackedIn = 0;
    [(NSMutableDictionary *)self->mInternal->mLayerTrackings removeAllObjects];

    self->mInternal->mLayerTrackings = 0;
    [(NSMutableDictionary *)self->mInternal->mGestureRecognizers removeAllObjects];

    self->mInternal->mGestureRecognizers = 0;
    v9 = self->mInternal;
    mAudioPlayerBuckets = v9->mAudioPlayerBuckets;
    if (mAudioPlayerBuckets)
    {

      self->mInternal->mAudioPlayerBuckets = 0;
      v9 = self->mInternal;
    }

    mAudioPlayerSortedBuckets = v9->mAudioPlayerSortedBuckets;
    if (mAudioPlayerSortedBuckets)
    {

      self->mInternal->mAudioPlayerSortedBuckets = 0;
      v9 = self->mInternal;
    }

    self->mInternal->mTouchesForVisualFeedback = 0;
    self->mInternal->mHitZonesForVisualFeedback = 0;

    self->_cameraCaptureSession = 0;
    [(NSConditionLock *)self->mInternal->mSnapshotAsCGImageLock lock];
    v12 = self->mInternal;
    mSnapshotAsCGImage = v12->mSnapshotAsCGImage;
    if (mSnapshotAsCGImage)
    {
      CGImageRelease(mSnapshotAsCGImage);
      self->mInternal->mSnapshotAsCGImage = 0;
      v12 = self->mInternal;
    }

    [(NSConditionLock *)v12->mSnapshotAsCGImageLock unlock];

    self->mInternal->mNavigatorHistoryBack = 0;
    self->mInternal->mNavigatorHistoryForth = 0;

    self->mInternal->mCurrentIDs = 0;
    self->mInternal->mPreviousCurrentIDs = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (NSStringIsEqual(a3, "rootPlug.fullDuration") || NSStringHasPrefix(a3, "fadeInDuration") || NSStringHasPrefix(a3, "fadeOutDuration"))
  {

    [(MRRenderer *)self resetFadeInAndOut];
  }
}

- (void)setEAGLContext:(id)a3
{
  objc_opt_class();
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_492B8;
  v6[3] = &unk_1AAB08;
  v6[4] = self;
  v6[5] = a3;
  PerformSynchronouslyOnRenderQueue(mRenderDispatchQueue, v6);
}

- (void)setMontage:(id)a3
{
  if (self->mMontage != a3)
  {
    v6[6] = v3;
    v6[7] = v4;
    mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_49578;
    v6[3] = &unk_1AAB08;
    v6[4] = self;
    v6[5] = a3;
    PerformSynchronouslyOnRenderQueue(mRenderDispatchQueue, v6);
  }
}

- (BOOL)isPlaying
{
  mInternal = self->mInternal;
  v3 = 1040;
  if (mInternal->mIsPlayingSyncRequestCount <= 0)
  {
    v3 = 1041;
  }

  return *(&mInternal->super.isa + v3);
}

- (void)pause
{
  self->mInternal->mOuterIsPlaying = 0;
  atomic_fetch_add(&self->mInternal->mIsPlayingSyncRequestCount, 1u);
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_49960;
  v3[3] = &unk_1AA700;
  v3[4] = self;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v3);
}

- (void)resume
{
  self->mInternal->mOuterIsPlaying = 1;
  atomic_fetch_add(&self->mInternal->mIsPlayingSyncRequestCount, 1u);
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_499F8;
  v3[3] = &unk_1AA700;
  v3[4] = self;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v3);
}

- (void)_r_syncIsPlayingToOuter
{
  if (!self->mIsCleanedUp)
  {
    if (self->mInternal->mOuterIsPlaying)
    {
      [(MRRenderer *)self _r_resume];
    }

    else
    {
      [(MRRenderer *)self _r_pause];
    }

    atomic_fetch_add(&self->mInternal->mIsPlayingSyncRequestCount, 0xFFFFFFFF);
  }
}

- (void)_r_pause
{
  if (!self->mIsCleanedUp)
  {
    self->mInternal->mShouldPauseWhenStill = 0;
    if (self->mInternal->mInnerIsPlaying)
    {
      [(MRRenderer *)self _time];
      self->mInternal->mTimeOffset = v3;
      [(MRRenderer *)self _unalteredTime];
      self->mInternal->mUnalteredTimeOffset = v4;
      self->mInternal->mInnerIsPlaying = 0;
      self->mDisplayLinkTimestamp = -1.0;
      self->mInternal->mIsStalled = 0;
      v5 = [NSString stringWithFormat:@"Rendering ended at time %f\n", MRGetCurrentTime()];
      mInternal = self->mInternal;
      if (mInternal->mRespondsToLogDelegateMethod)
      {
        [(MRRenderingDelegate *)[(MRRenderer *)self renderingDelegate] renderer:self renderingTimeLogMessage:v5 withTimestamp:CFAbsoluteTimeGetCurrent()];
        self->mInternal->mRespondsToLogDelegateMethod = 0;
      }

      else
      {
        mRenderingLogFile = mInternal->mRenderingLogFile;
        if (mRenderingLogFile)
        {
          fputs([(NSString *)v5 UTF8String], mRenderingLogFile);
          fclose(self->mInternal->mRenderingLogFile);
          self->mInternal->mRenderingLogFile = 0;
        }
      }

      self->mInternal->mNeedsToResumeOrPauseLayers = 1;
      self->mInternal->mRenderingRequested = 0;
      v8 = self->mInternal;
      if (!v8->mSlaveFrameMode)
      {
        [(MRRenderer *)self _r_stopRenderTimer];
        v8 = self->mInternal;
      }

      if (v8->mMasterMode == 2)
      {
        [(MRRenderer *)self setMasterStartTime:0 andDuration:0.0 mode:0.0];
      }

      [(MRRenderer *)self _r_prerenderWithPassParameters:0];
    }
  }
}

- (void)_r_resume
{
  if (!self->mIsCleanedUp)
  {
    self->mInternal->mShouldPauseWhenStill = 0;
    if (!self->mInternal->mInnerIsPlaying)
    {
      if ([+[NSUserDefaults BOOLForKey:"BOOLForKey:"]
      {
        v3 = [NSString stringWithFormat:@"Rendering starting at time %f\n", MRGetCurrentTime()];
        v4 = [(MRRenderer *)self renderingDelegate];
        self->mInternal->mRespondsToLogDelegateMethod = objc_opt_respondsToSelector() & 1;
        if (self->mInternal->mRespondsToLogDelegateMethod)
        {
          [(MRRenderingDelegate *)v4 renderer:self renderingTimeLogMessage:v3 withTimestamp:CFAbsoluteTimeGetCurrent()];
        }

        else
        {
          v10 = 0;
          time(&v10);
          v5 = ctime(&v10);
          v6 = 0;
          if (strlen(v5) != 1)
          {
            v6 = 0;
            do
            {
              if (v5[v6] == 32)
              {
                v5[v6] = 95;
              }

              ++v6;
            }

            while (strlen(v5) - 1 > v6);
          }

          v5[v6] = 0;
          v7 = NSTemporaryDirectory();
          [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v7 attributes:1 error:0, 0];
          v8 = [(NSString *)v7 stringByAppendingPathComponent:[NSString stringWithFormat:@"RenderingTimes-%s.log", v5]];
          self->_renderingLogFilePath = &v8->_p;
          if (v8)
          {
            v8 = fopen([(FILE *)v8 UTF8String], "wc");
          }

          self->mInternal->mRenderingLogFile = v8;
          if (self->mInternal->mRenderingLogFile)
          {
            NSLog(@"Logging rendering times to '%@'", self->_renderingLogFilePath);
            fputs([(NSString *)v3 UTF8String], self->mInternal->mRenderingLogFile);
          }

          else
          {
            NSLog(@"Failed creating rendering times log file at '%@'", self->_renderingLogFilePath);
          }
        }
      }

      self->mInternal->mInnerIsPlaying = 1;
      self->mInternal->mIsStalled = 0;
      mTimeOffset = self->mInternal->mTimeOffset;
      [(MRRenderer *)self _r_setTime:1 isResyncing:mTimeOffset];
      self->mInternal->mUnalteredTimeOffset = mTimeOffset + self->mInternal->mTimeOffset - self->mInternal->mUnalteredTimeOffset;
      self->mInternal->mNeedsToResumeOrPauseLayers = 1;
      if (!self->mInternal->mSlaveFrameMode)
      {
        [(MRRenderer *)self _r_startRenderTimer];
      }
    }
  }
}

- (void)requestRendering:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    mInternal = self->mInternal;
  }

  else
  {
    if ([(MRRenderer *)self isPlaying]&& self->mPushRendering)
    {
      return;
    }

    mInternal = self->mInternal;
    if (mInternal->mRenderingRequested)
    {
      return;
    }
  }

  mInternal->mRenderingRequested = 1;
  v6 = self->mInternal->mFrameLock;
  if (v3)
  {
    [(NSConditionLock *)v6 lockBeforeDate:[NSDate dateWithTimeIntervalSinceNow:5.0]];
    [(NSConditionLock *)v6 unlockWithCondition:1];
  }

  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_49F90;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
  if (v3 && !self->mIsCleanedUp)
  {
    if ([(NSConditionLock *)v6 lockWhenCondition:0 beforeDate:[NSDate dateWithTimeIntervalSinceNow:5.0]])
    {
      [(NSConditionLock *)v6 unlock];
    }
  }
}

- (BOOL)requestRenderingWithin:(double)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4A01C;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
  return 1;
}

- (void)warmupVideo:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    p_mInternal = &self->mInternal;
    self->mInternal->mRenderingRequested = 1;
    v6 = dispatch_semaphore_create(0);
  }

  else
  {
    if ([(MRRenderer *)self isPlaying]&& self->mPushRendering)
    {
      return;
    }

    p_mInternal = &self->mInternal;
    mInternal = self->mInternal;
    if (mInternal->mRenderingRequested)
    {
      return;
    }

    v6 = 0;
    mInternal->mRenderingRequested = 1;
  }

  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4A16C;
  block[3] = &unk_1AAB30;
  v11 = v3;
  block[4] = self;
  block[5] = v6;
  dispatch_async(mRenderDispatchQueue, block);
  if (v3)
  {
    v9 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v6, v9);
    if (!self->mIsCleanedUp)
    {
      [(NSOperationQueue *)[(MRRenderArguments *)(*p_mInternal)->mRenderArguments preloadQueue] setSuspended:0];
      [(NSOperationQueue *)[(MRRenderArguments *)(*p_mInternal)->mRenderArguments preloadQueue] waitUntilAllOperationsAreFinished];
    }

    dispatch_release(v6);
  }
}

- (void)_renderThreadMain
{
  v3 = objc_autoreleasePoolPush();
  [NSThread setThreadPriority:1.0];
  [NSTimer scheduledTimerWithTimeInterval:objc_opt_class() target:"null" selector:0 userInfo:1 repeats:1000000000.0];
  while (1)
  {
    mInternal = self->mInternal;
    if (!mInternal->mRenderThread)
    {
      break;
    }

    if (CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1000000000.0, 1u) != kCFRunLoopRunHandledSource)
    {
      mInternal = self->mInternal;
      break;
    }
  }

  if (!self->mIsCleanedUp)
  {
    mRenderDispatchQueueCopyForRenderThread = mInternal->mRenderDispatchQueueCopyForRenderThread;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4A368;
    block[3] = &unk_1AA700;
    block[4] = self;
    dispatch_sync(mRenderDispatchQueueCopyForRenderThread, block);
    mInternal = self->mInternal;
  }

  dispatch_release(mInternal->mRenderDispatchQueueCopyForRenderThread);
  self->mInternal->mRenderDispatchQueueCopyForRenderThread = 0;
  objc_autoreleasePoolPop(v3);
}

- (void)_r_updateTimeWithDisplayLinkTimestamp:(double)a3
{
  if (!self->mIsCleanedUp)
  {
    [(MRRenderer *)self _time];
    mDisplayLinkTimestamp = self->mDisplayLinkTimestamp;
    mInternal = self->mInternal;
    if (mDisplayLinkTimestamp < 0.0)
    {
      if (mInternal->mInnerIsPlaying)
      {
        self->mDisplayLinkTimestamp = a3;
      }

      mTimeOffset = mInternal->mTimeOffset;
      [(MRRenderer *)self _r_setTime:1 isResyncing:?];
      self->mInternal->mUnalteredTimeOffset = self->mInternal->mUnalteredTimeOffset + self->mInternal->mTimeOffset - mTimeOffset;
      goto LABEL_13;
    }

    if (mInternal->mInnerIsPlaying)
    {
      if (mInternal->mIsStalled)
      {
        self->mDisplayLinkTimestamp = a3;
      }

      else
      {
        v8 = self->mTimeQuantum * 12.0;
        self->mDisplayLinkTimestamp = a3;
        if (a3 - mDisplayLinkTimestamp < v8)
        {
          return;
        }
      }

      goto LABEL_12;
    }

    if (mInternal->mIsStalled)
    {
LABEL_12:
      [(MRRenderer *)self _r_setTime:1 isResyncing:?];
LABEL_13:
      self->mInternal->mIsStalled = 0;
    }
  }
}

- (void)updateTimeWithDisplayLinkTimestamp:(double)a3
{
  mRenderDispatchQueueCopyForRenderThread = self->mInternal->mRenderDispatchQueueCopyForRenderThread;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4A4BC;
  v4[3] = &unk_1AA670;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_sync(mRenderDispatchQueueCopyForRenderThread, v4);
}

- (void)_renderOnDisplayLink:(id)a3
{
  mRenderDispatchQueueCopyForRenderThread = self->mInternal->mRenderDispatchQueueCopyForRenderThread;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4A544;
  v4[3] = &unk_1AAB08;
  v4[4] = a3;
  v4[5] = self;
  dispatch_sync(mRenderDispatchQueueCopyForRenderThread, v4);
}

- (void)_startDisplayLinkOnRunloop
{
  mDisplayLink = self->mDisplayLink;
  v3 = +[NSRunLoop currentRunLoop];

  [(CADisplayLink *)mDisplayLink addToRunLoop:v3 forMode:NSDefaultRunLoopMode];
}

- (void)_r_startRenderTimer
{
  if (!self->mIsCleanedUp)
  {
    if (self->mDisplayLink)
    {
      NSLog(@"there already is a display link!!!", a2);
    }

    else if (!self->mInternal->mUsesExternalDisplayLink)
    {
      v3 = [CADisplayLink displayLinkWithTarget:self selector:"_renderOnDisplayLink:"];
      self->mDisplayLink = v3;
      [(CADisplayLink *)v3 setPreferredFramesPerSecond:llround(1.0 / self->mTimeQuantum)];
      mRenderThread = self->mInternal->mRenderThread;

      [(MRRenderer *)self performSelector:"_startDisplayLinkOnRunloop" onThread:mRenderThread withObject:0 waitUntilDone:0];
    }
  }
}

- (void)_r_stopRenderTimer
{
  if (!self->mIsCleanedUp)
  {
    mDisplayLink = self->mDisplayLink;
    self->mDisplayLink = 0;
    self->mDisplayLinkTimestamp = -1.0;
    [(CADisplayLink *)mDisplayLink performSelector:"invalidate" onThread:self->mInternal->mRenderThread withObject:0 waitUntilDone:0];
  }
}

- (BOOL)prerenderWithPassParameters:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4A7E8;
  v6[3] = &unk_1AAB58;
  v6[5] = a3;
  v6[6] = &v7;
  v6[4] = self;
  PerformSynchronouslyOnRenderQueue(mRenderDispatchQueue, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)_r_prerenderWithPassParameters:(id)a3
{
  if (self->mIsCleanedUp)
  {
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  mInternal = self->mInternal;
  if (!mInternal->mContext || (self->mSize.width == CGSizeZero.width ? (v7 = self->mSize.height == CGSizeZero.height) : (v7 = 0), v7 || !self->mTopMRLayer))
  {
    if ([(NSConditionLock *)mInternal->mFrameLock condition]== &dword_0 + 1)
    {
      width = self->mSize.width;
      height = self->mSize.height;
      v20 = width == CGSizeZero.width && height == CGSizeZero.height;
      if (v20 || !self->mTopMRLayer)
      {
        NSLog(@"Attempting a framelock with context %p, size %f,%f, topLayer %p, aborting", self->mInternal->mContext, *&width, *&height, self->mTopMRLayer);
        [(NSConditionLock *)self->mInternal->mFrameLock lock];
        [(NSConditionLock *)self->mInternal->mFrameLock unlockWithCondition:0];
      }
    }

    goto LABEL_23;
  }

  mInternal->mRenderingRequested = 0;
  v8 = self->mInternal;
  if (v8->mRenderingLogFile || v8->mRespondsToLogDelegateMethod)
  {
    v9 = MRGetCurrentTime();
    v10 = self->mInternal;
    v11 = v9 - v10->mPreviousLogTime;
    mTimeQuantum = self->mTimeQuantum;
    if (v11 < 5.0 && v11 > mTimeQuantum + mTimeQuantum)
    {
      v14 = llround(v11 / mTimeQuantum) - 1;
      [(MRRenderer *)self _time];
      v16 = [NSString stringWithFormat:@"\t%d frames dropped at time %f, slideshow time %f\n", v14, *&v9, v15];
      v17 = self->mInternal;
      if (v17->mRespondsToLogDelegateMethod)
      {
        [(MRRenderingDelegate *)[(MRRenderer *)self renderingDelegate] renderer:self renderingTimeLogMessage:v16 withTimestamp:CFAbsoluteTimeGetCurrent()];
      }

      else
      {
        mRenderingLogFile = v17->mRenderingLogFile;
        if (mRenderingLogFile)
        {
          fputs([(NSString *)v16 UTF8String], mRenderingLogFile);
        }
      }

      v10 = self->mInternal;
      if (v9 - v10->mLastSavedLogTime >= 1.0)
      {
        fflush(v10->mRenderingLogFile);
        self->mInternal->mLastSavedLogTime = v9;
        v10 = self->mInternal;
      }
    }

    v10->mPreviousLogTime = v9;
  }

  if (a3)
  {
    v24 = [objc_msgSend(a3 objectForKey:{@"forceRendering", "BOOLValue"}];
  }

  else
  {
    v24 = 0;
  }

  v25 = self->mInternal;
  if (v25->mScreenBurnTest)
  {
    v26 = v25->mScreenBurnTestCurrentPass / 60.0;
    if (v24)
    {
      goto LABEL_40;
    }
  }

  else
  {
    [(MRRenderer *)self _time];
    v26 = v27 + 1.0e-10;
    v25 = self->mInternal;
    if (v24)
    {
      goto LABEL_40;
    }
  }

  if (v25->mInnerIsPlaying && v26 == self->_lastRenderedTime)
  {
LABEL_23:
    objc_autoreleasePoolPop(v5);
    return 0;
  }

LABEL_40:
  if (v25->mNeedsToResize)
  {
    if (!v25->mMorphingHandlesRotation)
    {
      if ([(MRContext *)v25->mContext orientation])
      {
LABEL_48:
        [(MRContext *)self->mInternal->mContext setPixelOffset:self->mInternal->mContextOffset.x, self->mInternal->mContextOffset.y];
        [(MRContext *)self->mInternal->mContext setPixelSize:self->mSize.width, self->mSize.height];
        [self->mTopMRLayer updateGeometry];
        goto LABEL_51;
      }

      v25 = self->mInternal;
    }

    mOrientation = self->mOrientation;
    if (mOrientation)
    {
      v29 = mOrientation;
    }

    else
    {
      v29 = 4;
    }

    [(MRContext *)v25->mContext setOrientation:v29];
    goto LABEL_48;
  }

  if (!v25->mNeedsToTemporaryResize)
  {
    goto LABEL_52;
  }

  [(MRContext *)v25->mContext setPixelSize:v25->mTemporarySize.width, v25->mTemporarySize.height];
LABEL_51:
  v24 = 1;
LABEL_52:
  v30 = self->mInternal;
  if (v30->mMorphingDuration <= 0.0)
  {
    v30->mMorphingProgress = 1.0;
  }

  else
  {
    v31 = 0.0;
    if (v30->mMorphingStartTime > 0.0)
    {
      v32 = MRGetCurrentTime();
      v30 = self->mInternal;
      v31 = (v32 - v30->mMorphingStartTime) / v30->mMorphingDuration;
    }

    v30->mMorphingProgress = v31;
    v33 = self->mInternal;
    mMorphingProgress = v33->mMorphingProgress;
    if (mMorphingProgress <= 1.0)
    {
      v33->mMorphingProgress = mMorphingProgress * (mMorphingProgress * (mMorphingProgress * -2.0 + 3.0));
    }

    else
    {
      [(MRRenderer *)self _r_endMorphing];
      self->mInternal->mMorphingProgress = 1.0;
    }

    v24 = 1;
  }

  v35 = self->mInternal;
  if (v35->mNeedsToSynchronizeTimeInLayers)
  {
    v24 = 1;
    [self->mTopMRLayer setNeedsToSynchronizeTime:1];
    self->mInternal->mNeedsToSynchronizeTimeInLayers = 0;
    v35 = self->mInternal;
  }

  if (v35->mNeedsToResumeOrPauseLayers)
  {
    v24 = 1;
    [(MRLayerClock *)[self->mTopMRLayer clock] setParentIsPaused:!self->mInternal->mInnerIsPlaying];
    self->mInternal->mNeedsToResumeOrPauseLayers = 0;
  }

  if ([a3 objectForKey:@"thumbnailPolicy"])
  {
    v36 = [objc_msgSend(a3 objectForKey:{@"thumbnailPolicy", "intValue"}];
  }

  else if (self->_allowsThumbnails)
  {
    v36 = 0;
  }

  else
  {
    v36 = &dword_0 + 2;
  }

  [(MRRenderArguments *)self->mInternal->mRenderArguments setThumbnailPolicy:v36];
  [(MRRenderArguments *)self->mInternal->mRenderArguments setSkipsAnimations:[(MRRenderArguments *)self->mInternal->mRenderArguments forcedState]!= 0];
  [(MRRenderer *)self _unalteredTime];
  [(MRRenderArguments *)self->mInternal->mRenderArguments setUnalteredTime:?];
  v37 = self->mInternal;
  v38 = 0.0;
  if (v37->mMorphingDuration > 0.0)
  {
    v38 = v37->mMorphingProgress;
  }

  [(MRRenderArguments *)v37->mRenderArguments setMorphingProgress:v38];
  asynchronousOperationsAreSuspended = self->_asynchronousOperationsAreSuspended;
  self->_asynchronousOperationsAreSuspended = 0;
  [(MCMontage *)self->mMontage lock];
  [(MCPlug *)[self->mTopMRLayer plug] fullDuration];
  if (v26 >= v40)
  {
    [(MCPlug *)[self->mTopMRLayer plug] fullDuration];
    v26 = v44 - self->mTimeQuantum + 0.00001;
    v41 = self->mInternal;
  }

  else
  {
    v41 = self->mInternal;
    mMasterDuration = v41->mMasterDuration;
    if (mMasterDuration > 0.0)
    {
      v43 = mMasterDuration + v41->mMasterStartTime;
      if (v26 >= v43)
      {
        v26 = v43 - self->mTimeQuantum + 0.00001;
      }
    }
  }

  if (v26 < 0.0)
  {
    v26 = 0.0;
  }

  [(MRRenderArguments *)v41->mRenderArguments setDisplayLinkTimestamp:self->mDisplayLinkTimestamp];
  do
  {
    v45 = [(MRLayerParallelizer *)self->mTopMRLayer prerenderForTime:self->mInternal->mContext inContext:self->mInternal->mRenderArguments withArguments:v26];
    v24 |= MRIsAppleTV() | v45;
  }

  while ([(MRRenderer *)self _doActions]);
  [(MCMontage *)self->mMontage unlock];
  v46 = self->mInternal;
  if (!v46->mInnerIsPlaying || [(MRRenderArguments *)v46->mRenderArguments thumbnailPolicy]|| (v47 = self->mInternal, v47->mSlideFocusState) || [(NSMutableDictionary *)v47->mGestureRecognizers count])
  {
    self->_asynchronousOperationsAreSuspended = 0;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v48 = [(NSOperationQueue *)[(MRRenderArguments *)self->mInternal->mRenderArguments preloadQueue] operations];
  v49 = [(NSArray *)v48 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v63;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v63 != v51)
        {
          objc_enumerationMutation(v48);
        }

        if ([*(*(&v62 + 1) + 8 * i) queuePriority] == &dword_8)
        {
          self->_asynchronousOperationsAreSuspended = 0;
        }
      }

      v50 = [(NSArray *)v48 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v50);
  }

  if (asynchronousOperationsAreSuspended != self->_asynchronousOperationsAreSuspended)
  {
    [(NSOperationQueue *)[(MRRenderArguments *)self->mInternal->mRenderArguments preloadQueue] setSuspended:self->_asynchronousOperationsAreSuspended];
    [(MRAsynchronousOperationsDelegate *)self->mInternal->mAsynchronousOperationsDelegate setSuspended:self->_asynchronousOperationsAreSuspended];
  }

  [(MRRenderArguments *)self->mInternal->mRenderArguments setForcedState:0];
  [(MRRenderArguments *)self->mInternal->mRenderArguments setTimeWasSet:0];
  v53 = [(NSConditionLock *)self->mInternal->mSnapshotAsCGImageLock condition];
  v54 = self->mInternal;
  if (v53 == 1 || v54->mScreenBurnTest)
  {
    LOBYTE(v24) = 1;
  }

  if (self->mDisplaysTouchVisualFeedback)
  {
    LOBYTE(v24) = ([(NSMutableArray *)v54->mTouchesForVisualFeedback count]!= 0) | v24;
    v54 = self->mInternal;
  }

  if (self->mDisplaysHitZonesVisualFeedback)
  {
    LOBYTE(v24) = ([(NSMutableArray *)v54->mHitZonesForVisualFeedback count]!= 0) | v24;
    v54 = self->mInternal;
  }

  if (v54->mInnerIsPlaying)
  {
    [(MRRenderer *)self processAudioObjects];
  }

  if (v26 < self->_fadeInStartTime + self->_fadeInDuration || (v26 > self->_fadeOutStartTime) | v24 & 1)
  {
    v55 = 1;
  }

  else
  {
    if (self->mInternal->mInnerIsPlaying && self->mDisplaysFPS)
    {
      [(MRRenderer *)self _displayFPS:0 actuallyDisplay:MRGetCurrentTime()];
    }

    v55 = 0;
  }

  v56 = self->mInternal;
  if (v56->mMorphingDuration > 0.0)
  {
    [(MRRenderer *)self requestRendering:0];
    v56 = self->mInternal;
  }

  if (v56->mInnerIsPlaying && self->mPushRendering)
  {
    [(MCPlug *)[self->mTopMRLayer plug] fullDuration];
    v58 = self->mInternal;
    v59 = v58->mMasterDuration;
    if (v59 > 0.0)
    {
      v60 = v59 + v58->mMasterStartTime;
      if (v60 < v57)
      {
        v57 = v60;
      }
    }

    v61 = self->mTimeQuantum;
    if (v26 + v61 < v57)
    {
      if (v55)
      {
        objc_autoreleasePoolPop(v5);
        return !self->_isFrozen;
      }

      if (v58->mShouldPauseWhenStill)
      {
        [(MRRenderer *)self _r_pause];
      }

      goto LABEL_23;
    }

    [(MRRenderer *)self _playbackIsOverWithTime:v58->mMasterMode != 2 sendNotification:v57 + v61];
  }

  objc_autoreleasePoolPop(v5);
  if (v55)
  {
    return !self->_isFrozen;
  }

  return 0;
}

- (void)render
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4B100;
  v3[3] = &unk_1AA700;
  v3[4] = self;
  PerformSynchronouslyOnRenderQueue(mRenderDispatchQueue, v3);
}

- (void)_r_render
{
  if (self->mIsCleanedUp)
  {
    return;
  }

  v3 = objc_autoreleasePoolPush();
  mInternal = self->mInternal;
  if (mInternal->mScreenBurnTest)
  {
    v5 = mInternal->mScreenBurnTestCurrentPass / 60.0;
  }

  else
  {
    [(MRRenderer *)self _time];
    v5 = v6 + 1.0e-10;
  }

  v7 = [(MRRenderer *)self renderingDelegate];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [(MRRenderingDelegate *)v7 renderer:self willRenderAtTime:v5];
    }

    if (self->mInternal->mMorphingDuration > 0.0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      mMorphingProgress = self->mInternal->mMorphingProgress;
      *&mMorphingProgress = mMorphingProgress;
      [(MRRenderingDelegate *)v7 isMorphingWithProgress:mMorphingProgress];
    }
  }

  [(MRContext *)self->mInternal->mContext lock];
  v9 = +[EAGLContext currentContext];
  v10 = v9;
  if (v9 != [(MRContext *)self->mInternal->mContext glContext])
  {
    [EAGLContext setCurrentContext:[(MRContext *)self->mInternal->mContext glContext]];
  }

  v11 = self->mInternal;
  if (v11->mNeedsToResize)
  {
    pthread_setname_np([[NSString stringWithFormat:?];
    v11 = self->mInternal;
  }

  else if (!v11->mNeedsToTemporaryResize)
  {
    goto LABEL_17;
  }

  v11->mNeedsToTemporaryResize = 0;
  self->mInternal->mNeedsToResize = 0;
  [(MRContext *)self->mInternal->mContext updateGeometry];
  v11 = self->mInternal;
LABEL_17:
  [(MRContext *)v11->mContext startFrame];
  [(MRContext *)self->mInternal->mContext pixelSize];
  v13 = v12;
  [(MRContext *)self->mInternal->mContext pixelSize];
  v15 = v13 / v14;
  *&v15 = v13 / v14;
  [(MRContext *)self->mInternal->mContext setLocalAspectRatio:v15];
  v16 = self->mInternal;
  if (!v16->mScreenBurnTest)
  {
    [self->mTopMRLayer renderAtTime:v16->mContext inContext:v16->mRenderArguments withArguments:v5];
    if (self->mInternal->mMorphingDuration > 0.0)
    {
      [(MRRenderer *)self _r_renderRotation];
    }

    fadeInDuration = self->_fadeInDuration;
    v18 = self->_fadeInStartTime + fadeInDuration;
    fadeOutStartTime = self->_fadeOutStartTime;
    if (v5 >= v18 && v5 <= fadeOutStartTime)
    {
      goto LABEL_30;
    }

    if (v5 <= fadeOutStartTime)
    {
      v20 = 1.0;
      if (fadeInDuration > 0.0)
      {
        v21 = v18 - v5;
        goto LABEL_28;
      }
    }

    else
    {
      fadeInDuration = self->_fadeOutDuration;
      v20 = 1.0;
      if (fadeInDuration > 0.0)
      {
        v21 = v5 - fadeOutStartTime;
LABEL_28:
        v20 = v21 / fadeInDuration;
      }
    }

    [(MRContext *)self->mInternal->mContext setShader:@"PlainColor"];
    *&v22 = v20;
    [(MRContext *)self->mInternal->mContext setForeColorRed:v24 green:0.0 blue:0.0 alpha:0.0 saveTo:v22];
    [(MRContext *)self->mInternal->mContext blend:3];
    [MRCroppingSprite renderDumbImage:0 inContext:self->mInternal->mContext atPosition:CGPointZero.x andSize:CGPointZero.y, 2.0, 2.0];
    [(MRContext *)self->mInternal->mContext blend:0];
    [(MRContext *)self->mInternal->mContext restoreForeColor:v24];
    [(MRContext *)self->mInternal->mContext unsetShader];
    goto LABEL_30;
  }

  [(MRRenderer *)self _r_renderForScreenBurnTestAtTime:v5];
LABEL_30:
  if ([(NSConditionLock *)self->mInternal->mSnapshotAsCGImageLock tryLockWhenCondition:1])
  {
    [(MRRenderer *)self _r_doSnapshot];
    [(NSConditionLock *)self->mInternal->mSnapshotAsCGImageLock unlockWithCondition:0];
  }

  if (self->mDisplaysTouchVisualFeedback)
  {
    [(MRRenderer *)self _displayTouchVisualFeedback];
  }

  if (self->mDisplaysHitZonesVisualFeedback)
  {
    [(MRRenderer *)self _displayHitZonesVisualFeedback];
  }

  if (self->mInternal->mInnerIsPlaying && self->mDisplaysFPS)
  {
    [(MRRenderer *)self _displayFPS:1 actuallyDisplay:MRGetCurrentTime()];
  }

  if (self->mDisplaysPlayingIDs)
  {
    [(MRRenderer *)self _displayPlayingIDs];
  }

  v23 = self->mInternal;
  if (self->mDisplaysIsPreloadingImages)
  {
    if (v23->mCountOfPreloadingImages || [(NSOperationQueue *)[(MRRenderArguments *)v23->mRenderArguments preloadQueue] isSuspended]|| (v23 = self->mInternal, v23->mIsStalled))
    {
      [(MRRenderer *)self _displayIsPreloadingImages];
      v23 = self->mInternal;
    }
  }

  [(MRContext *)v23->mContext flush];
  self->_timestampOfLastRenderPass = MRGetCurrentTime();
  if (+[EAGLContext currentContext]!= v9)
  {
    [EAGLContext setCurrentContext:v9];
  }

  [(MRContext *)self->mInternal->mContext unlock];
  [(MRContext *)self->mInternal->mContext purgeResources:0];
  if ([(NSConditionLock *)self->mInternal->mFrameLock condition]== &dword_0 + 1)
  {
    [(NSConditionLock *)self->mInternal->mFrameLock lock];
    [(NSConditionLock *)self->mInternal->mFrameLock unlockWithCondition:0];
  }

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [(MRRenderingDelegate *)v7 renderer:self didRenderAtTime:v5];
    }
  }

  self->_lastRenderedTime = v5;
  objc_autoreleasePoolPop(v3);
}

- (void)_r_renderWithPassParameters:(id)a3
{
  if ([(MRRenderer *)self _r_prerenderWithPassParameters:a3])
  {

    [(MRRenderer *)self _r_render];
  }

  else
  {
    v4 = [(MRRenderer *)self renderingDelegate];
    if (v4)
    {
      v5 = v4;
      [(MRRenderer *)self _time];
      v7 = v6 + 1.0e-10;
      if (objc_opt_respondsToSelector())
      {
        [(MRRenderingDelegate *)v5 renderer:self willRenderAtTime:v7];
      }

      if (objc_opt_respondsToSelector())
      {

        [(MRRenderingDelegate *)v5 renderer:self didRenderAtTime:v7];
      }
    }
  }
}

- (void)_r_renderRotation
{
  mInternal = self->mInternal;
  mSnapshotForMorphing = mInternal->mSnapshotForMorphing;
  if (mSnapshotForMorphing)
  {
    mMorphingStartTime = mInternal->mMorphingStartTime;
    if (mInternal->mMorphingHandlesRotation)
    {
      if (mMorphingStartTime < 0.0)
      {
        self->mInternal->mMorphingStartTime = MRGetCurrentTime();
        mSnapshotForMorphing = self->mInternal->mSnapshotForMorphing;
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v54 = 0;
      v56 = 0;
      v55 = xmmword_1635A0;
      v57 = 0x400921FB54442D18;
      v6 = *(&v54 + self->mOrientation);
      [(MRImage *)mSnapshotForMorphing rotationAngle];
      v8 = v6 - v7;
      MRMatrix_SetRotationFromAnglesXYZRad(&v62, 0.0, 0.0, v8);
      *(&v62 + (self->mOrientation < 3u)) = vnegq_f32(*(&v62 + (self->mOrientation < 3u)));
      [(MRContext *)self->mInternal->mContext composeModelViewMatrix:&v62 saveTo:&v58];
      v9 = self->mInternal;
      v10 = 1.0 - v9->mMorphingProgress;
      *&v11 = v10;
      LODWORD(v10) = 1.0;
      LODWORD(v12) = 1.0;
      LODWORD(v13) = 1.0;
      [(MRContext *)v9->mContext setForeColorRed:v53 green:v10 blue:v12 alpha:v13 saveTo:v11];
      [(MRContext *)self->mInternal->mContext blend:3];
      [(MRContext *)self->mInternal->mContext setShader:@"PlainTexture"];
      y = CGPointZero.y;
      [(MRImage *)self->mInternal->mSnapshotForMorphing scale];
      v15 = self->mInternal->mSnapshotForMorphing;
      if (v16 == 1.0)
      {
        [(MRImage *)v15 width];
        v18 = (v51 + v51) / self->mSize.width;
        [(MRImage *)self->mInternal->mSnapshotForMorphing height];
      }

      else
      {
        [(MRImage *)v15 height];
        v18 = (v17 + v17) / self->mSize.width;
        [(MRImage *)self->mInternal->mSnapshotForMorphing width];
      }

      [MRCroppingSprite renderImage:self->mInternal->mSnapshotForMorphing inContext:self->mInternal->mContext atPosition:CGPointZero.x andSize:y, v18, (v19 + v19) / self->mSize.height];
      [(MRContext *)self->mInternal->mContext unsetShader];
      [(MRContext *)self->mInternal->mContext blend:0];
      mContext = self->mInternal->mContext;
      v50 = v53;
    }

    else
    {
      if (mMorphingStartTime < 0.0)
      {
        self->mInternal->mMorphingStartTime = MRGetCurrentTime();
        mSnapshotForMorphing = self->mInternal->mSnapshotForMorphing;
      }

      width = self->mSize.width;
      [(MRImage *)mSnapshotForMorphing width];
      if (width >= v32)
      {
        v33 = width;
      }

      else
      {
        v33 = v32;
      }

      height = self->mSize.height;
      [(MRImage *)self->mInternal->mSnapshotForMorphing height];
      v64 = 0u;
      v65 = 0u;
      if (height >= v35)
      {
        v36 = height;
      }

      else
      {
        v36 = v35;
      }

      v62 = 0uLL;
      v63 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      MRMatrix_SetDiagonal(&v62, 1.0, -1.0, 1.0);
      [(MRContext *)self->mInternal->mContext composeModelViewMatrix:&v62 saveTo:&v58];
      v37 = self->mInternal;
      v38 = 1.0;
      v39 = 1.0 - v37->mMorphingProgress;
      *&v40 = v39;
      LODWORD(v39) = 1.0;
      LODWORD(v38) = 1.0;
      LODWORD(v41) = 1.0;
      [(MRContext *)v37->mContext setForeColorRed:&v54 green:v39 blue:v38 alpha:v41 saveTo:v40];
      [(MRContext *)self->mInternal->mContext blend:3];
      [(MRContext *)self->mInternal->mContext setShader:@"PlainTexture"];
      [(MRImage *)self->mInternal->mSnapshotForMorphing width];
      v43 = (v42 - v33) / v33;
      [(MRImage *)self->mInternal->mSnapshotForMorphing height];
      v45 = (v44 - v36) / v36;
      [(MRImage *)self->mInternal->mSnapshotForMorphing width];
      v47 = (v46 + v46) / v33;
      [(MRImage *)self->mInternal->mSnapshotForMorphing height];
      [MRCroppingSprite renderImage:self->mInternal->mSnapshotForMorphing inContext:self->mInternal->mContext atPosition:v43 andSize:v45, v47, (v48 + v48) / v36];
      [(MRContext *)self->mInternal->mContext unsetShader];
      [(MRContext *)self->mInternal->mContext blend:0];
      mContext = self->mInternal->mContext;
      v50 = &v54;
    }

    [(MRContext *)mContext restoreForeColor:v50];
    [(MRContext *)self->mInternal->mContext restoreModelViewMatrix:&v58];
  }

  else
  {
    v20 = 104;
    v21 = 32;
    if ((self->mOrientation - 3) >= 2)
    {
      v22 = 32;
    }

    else
    {
      v22 = 24;
    }

    if ((self->mOrientation - 3) < 2)
    {
      v23 = 112;
    }

    else
    {
      v21 = 24;
      v23 = 104;
    }

    v24 = *(&self->super.isa + v21);
    v25 = *(&self->super.isa + v22);
    if ((self->mOrientation - 3) >= 2)
    {
      v20 = 112;
    }

    v26 = *(&mInternal->super.isa + v20);
    v27 = *(&mInternal->super.isa + v23);
    self->mInternal->mSnapshotForMorphing = [(MRImageManager *)[(MRContext *)mInternal->mContext imageManager] retainedByUserImageWithSize:0 andColor:v25, v24];
    [(MRImage *)self->mInternal->mSnapshotForMorphing setLabel:@"Marimba SnapshotForMorphing"];
    [(MRContext *)self->mInternal->mContext snapshotWithTextureName:[(MRTexture *)[(MRImage *)self->mInternal->mSnapshotForMorphing texture] textureName] offset:v26 size:v27, v25, v24];
    v28 = self->mInternal;
    if (v28->mMorphingHandlesRotation)
    {
      mOrientation = self->mOrientation;
      if ((mOrientation - 1) >= 2)
      {
        if (mOrientation == 3)
        {
          v52 = v28->mSnapshotForMorphing;

          [(MRImage *)v52 setRotationAngle:3.14159265];
        }
      }

      else
      {
        [(MRImage *)v28->mSnapshotForMorphing setRotationAngle:*(&xmmword_1635B0 + (mOrientation == 1))];
        v30 = self->mInternal->mSnapshotForMorphing;

        [(MRImage *)v30 setScale:v25 / v24];
      }
    }
  }
}

- (void)_r_snapshotForRotation
{
  mInternal = self->mInternal;
  v4 = 104;
  v5 = 32;
  if ((self->mOrientation - 3) >= 2)
  {
    v6 = 32;
  }

  else
  {
    v6 = 24;
  }

  if ((self->mOrientation - 3) < 2)
  {
    v7 = 112;
  }

  else
  {
    v5 = 24;
    v7 = 104;
  }

  v8 = *(&self->super.isa + v5);
  v9 = *(&self->super.isa + v6);
  if ((self->mOrientation - 3) >= 2)
  {
    v4 = 112;
  }

  v10 = *(&mInternal->super.isa + v4);
  v11 = *(&mInternal->super.isa + v7);
  self->mInternal->mSnapshotForMorphing = [(MRImageManager *)[(MRContext *)mInternal->mContext imageManager] retainedByUserImageWithSize:0 andColor:v9, v8];
  [(MRImage *)self->mInternal->mSnapshotForMorphing setLabel:@"Marimba SnapshotForMorphing"];
  [(MRContext *)self->mInternal->mContext snapshotWithTextureName:[(MRTexture *)[(MRImage *)self->mInternal->mSnapshotForMorphing texture] textureName] offset:v10 size:v11, v9, v8];
  v12 = self->mInternal;
  if (v12->mMorphingHandlesRotation)
  {
    mOrientation = self->mOrientation;
    if ((mOrientation - 1) >= 2)
    {
      if (mOrientation == 3)
      {
        mSnapshotForMorphing = v12->mSnapshotForMorphing;

        [(MRImage *)mSnapshotForMorphing setRotationAngle:3.14159265];
      }
    }

    else
    {
      [(MRImage *)v12->mSnapshotForMorphing setRotationAngle:*(&xmmword_1635B0 + (mOrientation == 1))];
      v14 = self->mInternal->mSnapshotForMorphing;

      [(MRImage *)v14 setScale:v9 / v8];
    }
  }
}

- (void)_r_renderForScreenBurnTestAtTime:(double)a3
{
  if (!self->mIsCleanedUp)
  {
    v4 = [self->mTopMRLayer retainedByUserRenderedImageAtTime:self->mInternal->mContext inContext:self->mInternal->mRenderArguments withArguments:a3];
    mInternal = self->mInternal;
    if (__ROR8__(0x8F5C28F5C28F5C29 * mInternal->mScreenBurnTestCurrentPass, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      NSLog(@"Pass %lld", mInternal->mScreenBurnTestCurrentPass);
      mInternal = self->mInternal;
    }

    v32[0] = 0;
    v32[1] = 0;
    if (!mInternal->mScreenBurnTestAccumulationImage1)
    {
      self->mInternal->mScreenBurnTestAccumulationImage1 = [(MRImageManager *)[(MRContext *)mInternal->mContext imageManager] retainedByUserImageWithSize:v32 andColor:self->mSize.width, self->mSize.height];
      mInternal = self->mInternal;
    }

    if (!mInternal->mScreenBurnTestAccumulationImage2)
    {
      self->mInternal->mScreenBurnTestAccumulationImage2 = [(MRImageManager *)[(MRContext *)mInternal->mContext imageManager] retainedByUserImageWithSize:v32 andColor:self->mSize.width, self->mSize.height];
      mInternal = self->mInternal;
    }

    v6 = 416;
    if (mInternal->mScreenBurnTestCurrentPass)
    {
      v7 = 416;
    }

    else
    {
      v7 = 408;
    }

    v8 = *(&mInternal->super.isa + v7);
    if (mInternal->mScreenBurnTestCurrentPass)
    {
      v6 = 408;
    }

    v9 = *(&mInternal->super.isa + v6);
    v10 = -[MRContext initLocalWithContext:glContext:andSize:]([MRContext alloc], "initLocalWithContext:glContext:andSize:", self->mInternal->mContext, [v8 updateGLContext], self->mSize.width, self->mSize.height);
    v11 = +[EAGLContext currentContext];
    v12 = v11;
    if (v11 != [v10 glContext])
    {
      +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [v10 glContext]);
    }

    v26 = 0;
    [v10 aspectRatio];
    [v10 setImage:v4 onTextureUnit:0 withReferenceAspectRatio:&v26 + 1 state:?];
    [v9 setFiltersNearest:1];
    [v10 aspectRatio];
    [v10 setImage:v9 onTextureUnit:1 withReferenceAspectRatio:&v26 state:?];
    [v10 setShader:@"ScreenBurnTest"];
    v27 = xmmword_163600;
    v28 = unk_163610;
    [v10 setTextureCoordinatesPointer:&v27 onTextureUnit:0];
    [v10 setTextureCoordinatesPointer:&v27 onTextureUnit:1];
    [v10 aspectRatio];
    v31[0] = -1082130432;
    v14 = 1.0 / v13;
    *&v31[1] = -v14;
    v31[2] = -1082130432;
    *&v31[3] = v14;
    v31[4] = 1065353216;
    *&v31[5] = -v14;
    v31[6] = 1065353216;
    *&v31[7] = v14;
    [v10 setVertex2DPointer:v31];
    [v10 drawTriangleStripFromOffset:0 count:4];
    [v10 unsetVertexPointer];
    [v10 unsetTextureCoordinatesPointerOnTextureUnit:1];
    [v10 unsetTextureCoordinatesPointerOnTextureUnit:0];
    [v10 unsetShader];
    [v10 unsetImage:v9 onTextureUnit:1 state:&v26];
    [v10 unsetImage:v4 onTextureUnit:0 state:&v26 + 1];
    [v10 flush];
    [v10 cleanup];
    if (+[EAGLContext currentContext]!= v11)
    {
      [EAGLContext setCurrentContext:v11];
    }

    [v4 releaseByUser];
    v15 = +[EAGLContext currentContext];
    v16 = v15;
    if (v15 != [(MRContext *)self->mInternal->mContext glContext])
    {
      [EAGLContext setCurrentContext:[(MRContext *)self->mInternal->mContext glContext]];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    [(MRContext *)self->mInternal->mContext setModelViewMatrix:MRMatrix_Identity() saveTo:&v27];
    LODWORD(v17) = 1.0;
    LODWORD(v18) = 1.0;
    LODWORD(v19) = 1.0;
    LODWORD(v20) = 1.0;
    [(MRContext *)self->mInternal->mContext setForeColorRed:0 green:v17 blue:v18 alpha:v19 saveTo:v20];
    LODWORD(v21) = 1.0;
    [(MRContext *)self->mInternal->mContext setBackColorRed:0 green:0.0 blue:0.0 alpha:0.0 saveTo:v21];
    [(MRContext *)self->mInternal->mContext clear:1];
    [(MRContext *)self->mInternal->mContext setShader:@"ScreenBurnTest2"];
    v22 = self->mInternal;
    mContext = v22->mContext;
    v24 = v22->mScreenBurnTestCurrentPass + 1;
    v22->mScreenBurnTestCurrentPass = v24;
    v25 = 1.0 / v24;
    *&v25 = v25;
    [(MRContext *)mContext setShaderUniformFloat:@"factor" forKey:v25];
    [v8 setFiltersNearest:1];
    [MRCroppingSprite renderDumbImage:v8 inContext:self->mInternal->mContext atPosition:CGPointZero.x andSize:CGPointZero.y, 2.0, 2.0];
    [(MRContext *)self->mInternal->mContext unsetShader];
    [(MRContext *)self->mInternal->mContext restoreModelViewMatrix:&v27];
    if (+[EAGLContext currentContext]!= v15)
    {
      [EAGLContext setCurrentContext:v15];
    }
  }
}

- (void)_r_doSnapshot
{
  if (!self->mIsCleanedUp)
  {
    v4 = (self->mSize.width * 4.0 * self->mSize.height);
    v5 = malloc_type_malloc(v4, 0x4EA18053uLL);
    glPixelStorei(0xD05u, 4);
    glReadPixels(0, 0, self->mSize.width, self->mSize.height, 0x1908u, 0x1401u, v5);
    glFinish();
    v6 = CGDataProviderCreateWithData(0, v5, v4, MyCGImageBufferReleaseCallback);
    self->mInternal->mSnapshotAsCGImage = CGImageCreate(self->mSize.width, self->mSize.height, 8uLL, 0x20uLL, vcvtd_n_u64_f64(self->mSize.width, 2uLL), [(MRContext *)self->mInternal->mContext colorSpace], 1u, v6, 0, 0, kCGRenderingIntentDefault);

    CGDataProviderRelease(v6);
  }
}

- (void)stepForward
{
  [(MRRenderer *)self time];
  v4 = v3 + self->mTimeQuantum;

  [(MRRenderer *)self setTime:v4];
}

- (void)stepBackward
{
  [(MRRenderer *)self time];
  v4 = v3 - self->mTimeQuantum;

  [(MRRenderer *)self setTime:v4];
}

- (void)goBack
{
  if ([(NSMutableArray *)self->mInternal->mNavigatorHistoryBack count])
  {
    do
    {
      v3 = [(NSMutableArray *)self->mInternal->mNavigatorHistoryBack lastObject];
      if ([v3 isActivated])
      {
        break;
      }

      [(NSMutableArray *)self->mInternal->mNavigatorHistoryBack removeLastObject];
    }

    while ([(NSMutableArray *)self->mInternal->mNavigatorHistoryBack count]);
    if (v3)
    {
      v4 = [MCGenericAction genericActionForTargetPlugObjectID:0 withAttributes:[NSDictionary dictionaryWithObject:@"goBack" forKey:@"type"]];

      [(MRRenderer *)self sendMCAction:v4 fromSender:self];
    }
  }
}

- (void)goForth
{
  if ([(NSMutableArray *)self->mInternal->mNavigatorHistoryForth count])
  {
    do
    {
      v3 = [(NSMutableArray *)self->mInternal->mNavigatorHistoryForth lastObject];
      if ([v3 isActivated])
      {
        break;
      }

      [(NSMutableArray *)self->mInternal->mNavigatorHistoryForth removeLastObject];
    }

    while ([(NSMutableArray *)self->mInternal->mNavigatorHistoryForth count]);
    if (v3)
    {
      v4 = [MCGenericAction genericActionForTargetPlugObjectID:0 withAttributes:[NSDictionary dictionaryWithObject:@"goForth" forKey:@"type"]];

      [(MRRenderer *)self sendMCAction:v4 fromSender:self];
    }
  }
}

- (void)addNavigatorToBackHistory:(id)a3
{
  mNavigatorHistoryBack = self->mInternal->mNavigatorHistoryBack;
  if (!mNavigatorHistoryBack)
  {
    self->mInternal->mNavigatorHistoryBack = objc_alloc_init(NSMutableArray);
    mNavigatorHistoryBack = self->mInternal->mNavigatorHistoryBack;
  }

  [(NSMutableArray *)mNavigatorHistoryBack addObject:a3];
}

- (void)addNavigatorToForthHistory:(id)a3
{
  mNavigatorHistoryForth = self->mInternal->mNavigatorHistoryForth;
  if (!mNavigatorHistoryForth)
  {
    self->mInternal->mNavigatorHistoryForth = objc_alloc_init(NSMutableArray);
    mNavigatorHistoryForth = self->mInternal->mNavigatorHistoryForth;
  }

  [(NSMutableArray *)mNavigatorHistoryForth addObject:a3];
}

- (void)moveNavigatorFromBackToForthHistory:(id)a3
{
  mNavigatorHistoryForth = self->mInternal->mNavigatorHistoryForth;
  if (!mNavigatorHistoryForth)
  {
    self->mInternal->mNavigatorHistoryForth = objc_alloc_init(NSMutableArray);
    mNavigatorHistoryForth = self->mInternal->mNavigatorHistoryForth;
  }

  [(NSMutableArray *)mNavigatorHistoryForth addObject:a3];
  v6 = [(NSMutableArray *)self->mInternal->mNavigatorHistoryBack count];
  do
  {
    if (--v6 < 0)
    {
      NSLog(@"Consistency error: can't move '%@' from back history", a3);
      return;
    }
  }

  while ([(NSMutableArray *)self->mInternal->mNavigatorHistoryBack objectAtIndex:v6]!= a3);
  mNavigatorHistoryBack = self->mInternal->mNavigatorHistoryBack;

  [(NSMutableArray *)mNavigatorHistoryBack removeObjectAtIndex:v6];
}

- (void)moveNavigatorFromForthToBackHistory:(id)a3
{
  mNavigatorHistoryBack = self->mInternal->mNavigatorHistoryBack;
  if (!mNavigatorHistoryBack)
  {
    self->mInternal->mNavigatorHistoryBack = objc_alloc_init(NSMutableArray);
    mNavigatorHistoryBack = self->mInternal->mNavigatorHistoryBack;
  }

  [(NSMutableArray *)mNavigatorHistoryBack addObject:a3];
  v6 = [(NSMutableArray *)self->mInternal->mNavigatorHistoryForth count];
  do
  {
    if (--v6 < 0)
    {
      NSLog(@"Consistency error: can't move '%@' from forth history", a3);
      return;
    }
  }

  while ([(NSMutableArray *)self->mInternal->mNavigatorHistoryForth objectAtIndex:v6]!= a3);
  mNavigatorHistoryForth = self->mInternal->mNavigatorHistoryForth;

  [(NSMutableArray *)mNavigatorHistoryForth removeObjectAtIndex:v6];
}

- (double)time
{
  mInternal = self->mInternal;
  if (mInternal->mTimeSyncRequestCount >= 1)
  {
    return mInternal->mOuterTime;
  }

  [(MRRenderer *)self _time];
  return result;
}

- (void)setTime:(double)a3
{
  self->mInternal->mOuterTime = a3;
  atomic_fetch_add(&self->mInternal->mTimeSyncRequestCount, 1u);
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4C8E0;
  v4[3] = &unk_1AA700;
  v4[4] = self;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v4);
}

- (double)_time
{
  mInternal = self->mInternal;
  if (mInternal->mInnerIsPlaying)
  {
    [(MRRenderer *)self masterClock];
    v4 = self->mInternal;
    result = vabdd_f64(v5, v4->mTimeOffset);
    if (self->mDisplayLinkTimestamp >= 0.0)
    {
      mTimeQuantum = self->mTimeQuantum;
      if (mTimeQuantum > 0.0)
      {
        result = mTimeQuantum * floor((result + mTimeQuantum * 0.1) / mTimeQuantum);
      }
    }

    mMasterDuration = v4->mMasterDuration;
    if (mMasterDuration > 0.0)
    {
      mMasterStartTime = v4->mMasterStartTime;
      if (result > mMasterStartTime)
      {
        if (v4->mMasterMode == 1)
        {
          return mMasterStartTime + fmod(result - mMasterStartTime, mMasterDuration);
        }

        else
        {
          v11 = mMasterDuration + mMasterStartTime;
          if (result >= v11)
          {
            return v11;
          }
        }
      }
    }
  }

  else
  {
    v10 = self->mTimeQuantum;
    result = mInternal->mTimeOffset;
    if (v10 > 0.0)
    {
      return v10 * floor((result + 0.0000001) / v10);
    }
  }

  return result;
}

- (void)_r_syncTimeToOuter
{
  if (!self->mIsCleanedUp)
  {
    [(MRRenderer *)self _r_setTime:0 isResyncing:self->mInternal->mOuterTime];
    atomic_fetch_add_explicit(&self->mInternal->mTimeSyncRequestCount, 0xFFFFFFFF, memory_order_relaxed);
    if (self->mRequestRenderingOnChanges)
    {

      [(MRRenderer *)self requestRendering:0];
    }
  }
}

- (void)_r_setTime:(double)a3 isResyncing:(BOOL)a4
{
  if (!self->mIsCleanedUp)
  {
    mInternal = self->mInternal;
    if (mInternal->mInnerIsPlaying)
    {
      [(MRRenderer *)self masterClock];
      a3 = v8 - a3;
      mInternal = self->mInternal;
    }

    mInternal->mTimeOffset = a3;
    v9 = self->mInternal;
    if (v9->mTimeOffset < 0.0)
    {
      v9->mTimeOffset = 0.0;
    }

    if (!a4)
    {
      self->mInternal->mUnalteredTimeOffset = self->mInternal->mTimeOffset;
      self->mInternal->mNeedsToSynchronizeTimeInAudioMovies = 1;
      self->mInternal->mNeedsToSynchronizeTimeInLayers = 1;
      mRenderArguments = self->mInternal->mRenderArguments;

      [(MRRenderArguments *)mRenderArguments setTimeWasSet:1];
    }
  }
}

- (double)_unalteredTime
{
  mInternal = self->mInternal;
  if (mInternal->mInnerIsPlaying)
  {
    [(MRRenderer *)self masterClock];
    v4 = self->mInternal;
    result = vabdd_f64(v5, v4->mUnalteredTimeOffset);
    if (self->mDisplayLinkTimestamp >= 0.0)
    {
      mTimeQuantum = self->mTimeQuantum;
      if (mTimeQuantum > 0.0)
      {
        result = mTimeQuantum * floor((result + mTimeQuantum * 0.1) / mTimeQuantum);
      }
    }

    mMasterDuration = v4->mMasterDuration;
    if (mMasterDuration > 0.0)
    {
      mMasterStartTime = v4->mMasterStartTime;
      if (result > mMasterStartTime)
      {
        if (v4->mMasterMode == 1)
        {
          return mMasterStartTime + fmod(result - mMasterStartTime, mMasterDuration);
        }

        else
        {
          v11 = mMasterDuration + mMasterStartTime;
          if (result >= v11)
          {
            return v11;
          }
        }
      }
    }
  }

  else
  {
    v10 = self->mTimeQuantum;
    result = mInternal->mUnalteredTimeOffset;
    if (v10 > 0.0)
    {
      return v10 * floor((result + 0.0000001) / v10);
    }
  }

  return result;
}

- (void)setTimeQuantum:(double)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4CC6C;
  v4[3] = &unk_1AA670;
  v4[4] = self;
  *&v4[5] = a3;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v4);
}

- (void)setSize:(CGSize)a3
{
  v5 = ceil(a3.width);
  v6 = ceil(a3.height);
  if (v5 != self->mSize.width || v6 != self->mSize.height)
  {
    v10[9] = v3;
    v10[10] = v4;
    mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_4CD58;
    v10[3] = &unk_1AABA8;
    v10[4] = self;
    *&v10[5] = v5;
    *&v10[6] = v6;
    PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v10);
    if (self->mRequestRenderingOnChanges)
    {
      [(MRRenderer *)self requestRendering:0];
    }
  }
}

- (void)setTemporarySize:(CGSize)a3
{
  v3 = ceil(a3.width);
  v4 = ceil(a3.height);
  mInternal = self->mInternal;
  if (v3 != mInternal->mTemporarySize.width || v4 != mInternal->mTemporarySize.height)
  {
    mRenderDispatchQueue = mInternal->mRenderDispatchQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4D078;
    v9[3] = &unk_1AABA8;
    v9[4] = self;
    *&v9[5] = v3;
    *&v9[6] = v4;
    PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v9);
    if (self->mRequestRenderingOnChanges)
    {
      [(MRRenderer *)self requestRendering:0];
    }
  }
}

- (CGPoint)contextOffset
{
  mInternal = self->mInternal;
  x = mInternal->mContextOffset.x;
  y = mInternal->mContextOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setContextOffset:(CGPoint)a3
{
  mInternal = self->mInternal;
  v4 = a3.x == mInternal->mContextOffset.x && a3.y == mInternal->mContextOffset.y;
  if (!v4 && mInternal->mContext)
  {
    mRenderDispatchQueue = mInternal->mRenderDispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4D164;
    v7[3] = &unk_1AABA8;
    v7[4] = self;
    v8 = a3;
    PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v7);
    if (self->mRequestRenderingOnChanges)
    {
      [(MRRenderer *)self requestRendering:0];
    }
  }
}

- (void)setOrientation:(int)a3
{
  if (self->mOrientation != a3)
  {
    v9 = v3;
    v10 = v4;
    mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4D244;
    v7[3] = &unk_1AABD0;
    v7[4] = self;
    v8 = a3;
    PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v7);
    if (self->mRequestRenderingOnChanges)
    {
      [(MRRenderer *)self requestRendering:0];
    }
  }
}

- (void)resetFadeInAndOut
{
  self->_fadeInStartTime = 0.0;
  [(MCMontage *)self->mMontage fadeInDuration];
  self->_fadeInDuration = v3;
  [(MCMontage *)self->mMontage fadeOutDuration];
  self->_fadeOutDuration = v4;
  [(MCPlug *)[(MCMontage *)self->mMontage rootPlug] fullDuration];
  self->_fadeOutStartTime = v5 - self->_fadeOutDuration;
}

- (CGPoint)_fixProjectedPointForOrientation:(CGPoint)a3
{
  x = a3.x;
  mOrientation = self->mOrientation;
  v5 = -a3.y;
  if (mOrientation != 1)
  {
    v6 = -x;
    if (mOrientation == 3)
    {
      x = -x;
      y = -a3.y;
    }

    else
    {
      y = a3.y;
    }

    if (mOrientation == 2)
    {
      v5 = a3.y;
    }

    else
    {
      v5 = x;
    }

    if (mOrientation == 2)
    {
      x = v6;
    }

    else
    {
      x = y;
    }
  }

  v8 = x;
  result.y = v8;
  result.x = v5;
  return result;
}

- (CGPoint)_fixPointForUnprojectionForOrientation:(CGPoint)a3
{
  y = a3.y;
  mOrientation = self->mOrientation;
  x = -a3.x;
  if (mOrientation != 1)
  {
    if (mOrientation == 3)
    {
      v6 = -y;
    }

    else
    {
      x = a3.x;
      v6 = y;
    }

    if (mOrientation == 2)
    {
      y = -y;
    }

    else
    {
      y = x;
    }

    if (mOrientation == 2)
    {
      x = a3.x;
    }

    else
    {
      x = v6;
    }
  }

  v7 = y;
  result.y = x;
  result.x = v7;
  return result;
}

- (void)setCurrentLayoutIndex:(unsigned __int8)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4D40C;
  v5[3] = &unk_1AA728;
  v5[4] = self;
  v6 = a3;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v5);
  if (self->mRequestRenderingOnChanges)
  {
    [(MRRenderer *)self requestRendering:0];
  }
}

- (void)setMode:(int)a3
{
  if (self->mMode != a3)
  {
    v10 = v3;
    v11 = v4;
    mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4D4E8;
    v8[3] = &unk_1AABD0;
    v8[4] = self;
    v9 = a3;
    PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v8);
    v7 = self->mMode != 1 && self->mRequestRenderingOnChanges;
    self->mRequestRenderingOnChanges = v7;
    if (v7)
    {
      [(MRRenderer *)self requestRendering:0];
    }
  }
}

- (void)setAssetManagementDelegate:(id)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4D650;
  v4[3] = &unk_1AAB08;
  v4[4] = self;
  v4[5] = a3;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v4);
}

- (void)setDisplaysFPS:(BOOL)a3
{
  self->mDisplaysFPS = a3;
  if (self->mRequestRenderingOnChanges)
  {
    [(MRRenderer *)self requestRendering:0];
  }
}

- (void)transitionToNextPlugInContainerOfPlug:(id)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4D778;
  v4[3] = &unk_1AAB08;
  v4[4] = self;
  v4[5] = a3;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v4);
}

- (void)transitionToPreviousPlugInContainerOfPlug:(id)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4D880;
  v4[3] = &unk_1AAB08;
  v4[4] = self;
  v4[5] = a3;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v4);
}

- (id)_layerForPlugObjectID:(id)a3
{
  if (self->mIsCleanedUp)
  {
    return 0;
  }

  else
  {
    return [(MRLayerParallelizer *)self->mTopMRLayer sublayerForPlugObjectID:a3 recursive:1];
  }
}

- (id)plugForCurrentSublayerInNavigatorForPlug:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_4DA24;
  v11 = sub_4DA34;
  v12 = 0;
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4DA40;
  block[3] = &unk_1AABF8;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(mRenderDispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)currentState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_4DA24;
  v10 = sub_4DA34;
  v11 = 0;
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4DBBC;
  v5[3] = &unk_1AAC20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mRenderDispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)gotoState:(id)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4DCD4;
  v4[3] = &unk_1AAB08;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(mRenderDispatchQueue, v4);
}

- (id)snapshotOfStates:(id)a3 atSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = +[NSMutableArray array];
  v8 = objc_autoreleasePoolPush();
  v9 = [[MRSnapshotter alloc] initWithMontage:self->mMontage andAssetManagementDelegate:[(MRRenderer *)self assetManagementDelegate] isReadOnly:1];
  [(MRSnapshotter *)v9 setSize:width, height];

  objc_autoreleasePoolPop(v8);
  return v7;
}

- (void)dumpActiveHierarchy
{
  v3 = [(MRLayerParallelizer *)self->mTopMRLayer _dumpLayerWithOptions:0];
  width = self->mSize.width;
  height = self->mSize.height;
  [(MRRenderer *)self _time];
  NSLog(@"%dx%d: %f\n%@", width, height, v6, v3);
}

- (void)nearingEndForSerializer:(id)a3
{
  if (self->mInternal->mLiveSlideshowDelegate)
  {
    v5 = [objc_msgSend(a3 "referencingPlug")];
    mInternal = self->mInternal;
    if (v5 == mInternal->mTransitionLayerPlugObjectID)
    {
      mRenderDispatchQueue = mInternal->mRenderDispatchQueue;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_4DF1C;
      v8[3] = &unk_1AAB08;
      v8[4] = self;
      v8[5] = a3;
      PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v8);
    }
  }
}

- (void)effect:(id)a3 requestedNumberOfSlides:(unint64_t)a4 firstSlideIndexStillNeeded:(unint64_t)a5
{
  mInternal = self->mInternal;
  if (mInternal->mLiveSlideshowDelegate)
  {
    mRenderDispatchQueue = mInternal->mRenderDispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4E004;
    v7[3] = &unk_1AAC48;
    v7[4] = self;
    v7[5] = a3;
    v7[6] = a4;
    v7[7] = a5;
    PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v7);
  }
}

- (void)imagePreloadingEnded
{
  mInternal = self->mInternal;
  mCountOfPreloadingImages = mInternal->mCountOfPreloadingImages;
  if (mCountOfPreloadingImages)
  {
    mInternal->mCountOfPreloadingImages = mCountOfPreloadingImages - 1;
  }
}

- (void)addIDToDisplay:(id)a3 :(id)a4
{
  if (self->mDisplaysPlayingIDs)
  {
    mInternal = self->mInternal;
    if (mInternal->mCurrentIDs)
    {
      mCurrentIDs = mInternal->mCurrentIDs;
      if (a4 && ![a4 isEqualToString:@"Default"])
      {
        v8 = [[NSString alloc] initWithFormat:@"%@, %@/%@", mCurrentIDs, a3, a4];
      }

      else
      {
        v8 = [[NSString alloc] initWithFormat:@"%@, %@", mCurrentIDs, a3, v10];
      }

      self->mInternal->mCurrentIDs = v8;
    }

    else
    {
      if (a4 && ![a4 isEqualToString:@"Default"])
      {
        v9 = [[NSString alloc] initWithFormat:@"%@/%@", a3, a4];
      }

      else
      {
        v9 = a3;
      }

      self->mInternal->mCurrentIDs = v9;
    }
  }
}

- (void)beginMorphingToAspectRatio:(double)a3 andOrientation:(int)a4 withDuration:(double)a5
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4E23C;
  v6[3] = &unk_1AAC70;
  v6[4] = self;
  v7 = a4;
  *&v6[5] = a3;
  *&v6[6] = a5;
  PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v6);
}

- (void)endMorphing
{
  mInternal = self->mInternal;
  if (mInternal->mMorphingDuration == 0.0)
  {
    v7[7] = v2;
    v7[8] = v3;
    mRenderDispatchQueue = mInternal->mRenderDispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4E2EC;
    v7[3] = &unk_1AA700;
    v7[4] = self;
    PerformAsynchronouslyOnRenderQueueIfNotOnRenderQueue(mRenderDispatchQueue, v7);
    [(MRRenderer *)self requestRendering:0];
  }
}

- (void)_r_beginMorphingToAspectRatio:(double)a3 andOrientation:(int)a4 withDuration:(double)a5
{
  if (!self->mIsCleanedUp)
  {
    mInternal = self->mInternal;
    if (mInternal->mMorphingStartTime >= 0.0 && mInternal->mMorphingDuration > 0.0)
    {
      [(MRRenderer *)self _r_endMorphing];
      mInternal = self->mInternal;
    }

    if (a5 > 0.0)
    {
      mInternal->mMorphingDuration = a5;
      [(MRRenderer *)self _r_snapshotForRotation];
      mInternal = self->mInternal;
    }

    mInternal->mMorphingHandlesRotation = (a4 - 1) < 4;
    v9 = self->mInternal;
    if (v9->mMorphingHandlesRotation)
    {
      mOrientation_low = LOBYTE(self->mOrientation);
      v9->mMorphingRotationAngle = 0.0;
      if (mOrientation_low != a4)
      {
        if (a4 > 2)
        {
          if (a4 == 3)
          {
            v11 = dbl_1635D0[mOrientation_low == 2];
            v12 = mOrientation_low == 4;
            goto LABEL_18;
          }

          if (a4 == 4)
          {
            v11 = *(&xmmword_1635C0 + (mOrientation_low == 2));
            v12 = mOrientation_low == 3;
            goto LABEL_18;
          }
        }

        else
        {
          if (a4 == 1)
          {
            v11 = dbl_1635D0[mOrientation_low == 3];
            v12 = mOrientation_low == 2;
            goto LABEL_18;
          }

          if (a4 == 2)
          {
            v11 = *(&xmmword_1635C0 + (mOrientation_low == 3));
            v12 = mOrientation_low == 1;
LABEL_18:
            if (v12)
            {
              v11 = 180.0;
            }

            self->mInternal->mMorphingRotationAngle = v11;
          }
        }
      }

      self->mOrientation = a4;
      self->mInternal->mNeedsToResize = 1;
    }
  }
}

- (void)_r_endMorphing
{
  if (!self->mIsCleanedUp)
  {
    self->mInternal->mMorphingStartTime = -1.0;
    self->mInternal->mMorphingDuration = 0.0;
    mSnapshotForMorphing = self->mInternal->mSnapshotForMorphing;
    if (mSnapshotForMorphing)
    {
      [(MRImage *)mSnapshotForMorphing releaseByUser];
      self->mInternal->mSnapshotForMorphing = 0;
    }
  }
}

- (void)_playbackIsOverWithTime:(double)a3 sendNotification:(BOOL)a4
{
  v4 = a4;
  [(MRRenderer *)self _r_pause];
  if (a3 < 0.0)
  {
    [(MRRenderer *)self time];
    a3 = v7;
  }

  self->mInternal->mTimeOffset = a3;
  self->mInternal->mNeedsToResumeOrPauseLayers = 1;
  self->mInternal->mInnerIsPlaying = 0;
  self->mInternal->mShouldPauseWhenStill = 0;
  if (v4)
  {
    v8 = kMRNotificationPlaybackOver;

    [(MRRenderer *)self sendNotification:v8];
  }
}

- (NSString)currentFocusedSlideAsset
{
  v2 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState slideInfo];

  return [(MRSlideInfo *)v2 assetPath];
}

- (void)setSlideFocusModeBackgroundColor:(CGColor *)a3
{
  if (a3)
  {
    NumberOfComponents = CGColorGetNumberOfComponents(a3);
    if (NumberOfComponents == 4)
    {
      Components = CGColorGetComponents(a3);
      v9 = Components[2];
      *self->_slideFocusModeBackgroundColor = *Components;
      self->_slideFocusModeBackgroundColor[2] = v9;
    }

    else if (NumberOfComponents == 2)
    {
      v6 = CGColorGetComponents(a3);
      v7 = *v6;
      self->_slideFocusModeBackgroundColor[1] = *v6;
      self->_slideFocusModeBackgroundColor[2] = v7;
      self->_slideFocusModeBackgroundColor[0] = v7;
    }

    else
    {
      NSLog(@"Background color is in an unsupported color space (not generic gray or RGB)\n");
    }
  }

  else
  {
    self->_slideFocusModeBackgroundColor[0] = 0.0;
    self->_slideFocusModeBackgroundColor[1] = 0.0;
    self->_slideFocusModeBackgroundColor[2] = 0.0;
  }

  self->_slideFocusModeBackgroundColor[3] = 1.0;
}

- (id)currentlyShowingAssetPaths
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [-[MRRenderer slideInfosForCurrentElements](self "slideInfosForCurrentElements")];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 assetPath])
        {
          [v3 addObject:{objc_msgSend(v9, "assetPath")}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)currentStateForMontageSwap
{
  if (self->mIsCleanedUp)
  {
    return 0;
  }

  v2 = +[NSMutableDictionary dictionary];
  v4 = [(MRRenderer *)self slideInfosForCurrentElements];
  if (v4)
  {
    [v2 setObject:v4 forKey:@"slideInfosForCurrentElements"];
  }

  [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", -[MRRenderer isPlaying](self, "isPlaying")), @"isPlaying"}];
  [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", -[MRRenderer slideshowIsPlaying](self, "slideshowIsPlaying")), @"slideshowIsPlaying"}];
  return v2;
}

- (void)swapMontage:(id)a3
{
  if (a3 && !self->mIsCleanedUp && self->mMontage != a3)
  {
    if (self->mInternal->mSlideFocusLayer)
    {
      [(MRLayerParallelizer *)self->mTopMRLayer removeSublayer:?];
    }

    if ([self->mTopMRLayer isActivated])
    {
      [(MRLayerParallelizer *)self->mTopMRLayer deactivate];
    }

    if ([self->mTopMRLayer isPreactivated])
    {
      [(MRLayerParallelizer *)self->mTopMRLayer depreactivate:0];
    }

    [(MRLayerParallelizer *)self->mTopMRLayer cleanup];

    self->mTopMRLayer = 0;
    [(MRRenderer *)self willChangeValueForKey:@"montage"];
    mMontage = self->mMontage;
    if (mMontage)
    {
      [(MCMontage *)mMontage removeObserver:self forKeyPath:@"rootPlug.fullDuration"];
      [(MCMontage *)self->mMontage removeObserver:self forKeyPath:@"fadeInDuration"];
      [(MCMontage *)self->mMontage removeObserver:self forKeyPath:@"fadeOutDuration"];

      self->mMontage = 0;
    }

    self->mMontage = a3;
    [(MRRenderer *)self didChangeValueForKey:@"montage"];
    [(MCMontage *)self->mMontage addObserver:self forKeyPath:@"rootPlug.fullDuration" options:0 context:0];
    [(MCMontage *)self->mMontage addObserver:self forKeyPath:@"fadeInDuration" options:0 context:0];
    [(MCMontage *)self->mMontage addObserver:self forKeyPath:@"fadeOutDuration" options:0 context:0];
    v6 = [[MRLayerParallelizer alloc] initWithPlug:[(MCMontage *)self->mMontage rootPlug] andParameters:self->mParameters inSuperlayer:0];
    self->mTopMRLayer = v6;
    mSlideFocusLayer = self->mInternal->mSlideFocusLayer;
    if (mSlideFocusLayer)
    {
      [(MRLayerParallelizer *)v6 setSublayer:mSlideFocusLayer forKey:@"SlideFocusLayer"];
      [(MRLayer *)self->mInternal->mSlideFocusLayer setZIndex:32000];
      [(MRLayer *)self->mInternal->mSlideFocusLayer setPhaseInDuration:0.5];
      [(MRLayer *)self->mInternal->mSlideFocusLayer setPhaseOutDuration:0.5];
    }

    [(MRRenderer *)self _r_setTime:0 isResyncing:0.0];
    [self->mTopMRLayer updateGeometry];
    [(MRLayerParallelizer *)self->mTopMRLayer preactivate];
    [self->mTopMRLayer activate];
    self->mInternal->mNeedsToResumeOrPauseLayers = 1;
  }
}

- (void)applyStateForMontageSwap:(id)a3
{
  if (self->mIsCleanedUp)
  {
    return;
  }

  v4 = self;
  [(MRRenderer *)self _r_prerenderWithPassParameters:&off_1BBCB0];
  v5 = [(MRRenderer *)v4 _layerForPlugObjectID:v4->mInternal->mTransitionLayerPlugObjectID];
  mSlideFocusState = v4->mInternal->mSlideFocusState;
  if (mSlideFocusState)
  {
    v7 = [(MRSlideFocusState *)mSlideFocusState slideInfo];
    v8 = 0;
  }

  else
  {
    v9 = [objc_msgSend(a3 objectForKey:{@"slideInfosForCurrentElements", "allValues"}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (!v10)
    {
LABEL_43:
      v31 = 0;
      goto LABEL_51;
    }

    v11 = v10;
    v7 = 0;
    v12 = *v53;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        if ([(MRSlideInfo *)v14 isMain])
        {
          if (([(MZMediaManagement *)[(MRRenderer *)v4 assetManagementDelegate] isSupportedMovieForAssetAtPath:[(MRSlideInfo *)v14 assetPath]]& 1) != 0)
          {
            v8 = 1;
            v7 = v14;
            goto LABEL_17;
          }

          if (!v7)
          {
            v7 = v14;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v52 objects:v58 count:16];
      v8 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  if (!v7)
  {
    goto LABEL_43;
  }

  v15 = [(MRSlideInfo *)v7 assetPath];
  if (!v15)
  {
    goto LABEL_43;
  }

  v16 = v15;
  v40 = a3;
  v41 = v4;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = v5;
  obj = [v5 sublayers];
  v17 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (!v17)
  {
    v21 = 0;
    v31 = 0;
    goto LABEL_48;
  }

  v18 = v17;
  v38 = v8;
  v19 = *v49;
LABEL_21:
  v20 = 0;
  v42 = v18;
  while (1)
  {
    if (*v49 != v19)
    {
      objc_enumerationMutation(obj);
    }

    v21 = *(*(&v48 + 1) + 8 * v20);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_40;
    }

    if ([objc_msgSend(objc_msgSend(v21 "container")])
    {
      break;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = [objc_msgSend(v21 "container")];
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v45;
LABEL_32:
      v26 = v7;
      v27 = v19;
      v28 = 0;
      while (1)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v44 + 1) + 8 * v28);
        if ([objc_msgSend(objc_msgSend(v29 "asset")])
        {
          break;
        }

        if (v24 == ++v28)
        {
          v24 = [v22 countByEnumeratingWithState:&v44 objects:v56 count:16];
          v19 = v27;
          v7 = v26;
          v18 = v42;
          if (v24)
          {
            goto LABEL_32;
          }

          goto LABEL_40;
        }
      }

      v30 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"image%d", [v29 index]);
      v19 = v27;
      v7 = v26;
      v18 = v42;
      if (!v30)
      {
        goto LABEL_40;
      }

      v31 = v30;
      goto LABEL_46;
    }

LABEL_40:
    if (++v20 == v18)
    {
      v18 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v18)
      {
        goto LABEL_21;
      }

      v21 = 0;
      v31 = 0;
      goto LABEL_46;
    }
  }

  if ([objc_msgSend(v21 "container")] == &dword_4 + 2 || (objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v21, "container"), "orderedSlides"), "objectAtIndex:", 1), "asset"), "path"), "isEqualToString:", v16) & 1) == 0)
  {
    if ([objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v21 "container")])
    {
      v31 = @"image0";
LABEL_46:
      v8 = v38;
      goto LABEL_48;
    }

    goto LABEL_40;
  }

  v8 = v38;
  v31 = @"image1";
LABEL_48:
  v32 = 0.0;
  v5 = v39;
  [v39 jumpToSublayer:v21 atTime:0.0];
  v4 = v41;
  [(MRRenderer *)v41 _r_prerenderWithPassParameters:&off_1BBCD8];
  [v21 interestingTimeForElement:v31];
  v34 = v33;
  if (v8)
  {
    [(MRSlideInfo *)v7 time];
    v32 = v35;
  }

  [v39 jumpToSublayer:v21 atTime:v34 + v32];
  a3 = v40;
LABEL_51:
  v36 = v4->mInternal->mSlideFocusState;
  if (v36)
  {
    [(MRSlideFocusState *)v36 setDelegate:v5];
    [(MRSlideFocusState *)v4->mInternal->mSlideFocusState setSlideID:v31];
    [v5 enterSlideFocusModeWithState:v4->mInternal->mSlideFocusState];
  }

  v37 = [objc_msgSend(a3 objectForKey:{@"slideshowIsPlaying", "BOOLValue"}];
  v4->_slideshowIsPaused = v37;
  if (v37)
  {
    [(MRRenderer *)v4 resumeSlideshow];
  }

  else
  {
    [(MRRenderer *)v4 pauseSlideshow];
  }

  if ([objc_msgSend(a3 objectForKey:{@"isPlaying", "BOOLValue"}])
  {
    [(MRRenderer *)v4 resume];
  }

  else
  {
    [(MRRenderer *)v4 pause];
  }

  [(MRRenderer *)v4 _r_render];
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_displayFPS:(double)a3 actuallyDisplay:(BOOL)a4
{
  if (a4)
  {
    v6 = +[EAGLContext currentContext];
    v7 = v6;
    if (v6 != [(MRContext *)self->mInternal->mContext glContext])
    {
      [EAGLContext setCurrentContext:[(MRContext *)self->mInternal->mContext glContext]];
    }

    width = self->mSize.width;
    v9 = self->mSize.height / width;
    v10 = round(64.0 / (a3 - self->mInternal->mFrameTime[self->mInternal->mFrameTimeIndex]));
    v11 = -v9;
    v12 = v11 * 0.95;
    *&width = 4.0 / width + v12;
    v13 = v10 / 30.0;
    v53[0] = -1082130432;
    *&v53[1] = v12;
    v53[2] = -1082130432;
    v14 = (v10 / 30.0);
    v15 = fmin(v14, 1.33333333) + -1.0;
    v53[3] = LODWORD(width);
    *&v53[4] = v15;
    *&v53[5] = v12;
    *&v53[6] = v15;
    v53[7] = LODWORD(width);
    *&v53[8] = v13 + -1.0;
    *&v53[9] = v12;
    *&v53[10] = v13 + -1.0;
    v53[11] = LODWORD(width);
    v40[0] = xmmword_1635E0;
    v40[1] = xmmword_1635E0;
    v41 = 1065353216;
    *&width = fmin(v14 * 0.75, 1.0);
    v42 = LODWORD(width);
    v43 = 0x3F80000000000000;
    v44 = 1065353216;
    v45 = LODWORD(width);
    v46 = 0x3F80000000000000;
    v16 = 2.0 - v14 * 0.75;
    v47 = v16;
    v48 = 1065353216;
    v49 = 0x3F80000000000000;
    v50 = v16;
    v51 = 1065353216;
    v52 = 1065353216;
    v24 = 0;
    v25 = 0;
    getMem(&v25, &v24);
    v17 = (v24 + v24) / v25;
    v18 = 4.0 / self->mSize.width;
    v19 = v18 + v11;
    *&v18 = v18 + v19;
    v39[0] = -1082130432;
    *&v39[1] = v19;
    v39[2] = -1082130432;
    v20 = fmin(v17, 1.0);
    v21 = v20 + -1.0;
    v39[3] = LODWORD(v18);
    *&v39[4] = v21;
    *&v39[5] = v19;
    *&v39[6] = v21;
    v39[7] = LODWORD(v18);
    *&v39[8] = v17 + -1.0;
    *&v39[9] = v19;
    *&v39[10] = v17 + -1.0;
    v39[11] = LODWORD(v18);
    v26[0] = xmmword_1635E0;
    v26[1] = xmmword_1635E0;
    v27 = 1065353216;
    *&v18 = v20;
    v28 = LODWORD(v18);
    v29 = 0x3F80000000000000;
    v30 = 1065353216;
    v31 = LODWORD(v18);
    v32 = 0x3F80000000000000;
    v33 = 2.0 - v17;
    v34 = 1065353216;
    v35 = 1065353216;
    v36 = 2.0 - v17;
    v37 = 1065353216;
    v38 = 1065353216;
    [(MRContext *)self->mInternal->mContext setShader:@"PerVertexColor"];
    [(MRContext *)self->mInternal->mContext setColorsPointer:v40];
    [(MRContext *)self->mInternal->mContext setVertex2DPointer:v53];
    if (v13 <= 1.0)
    {
      v22 = 4;
    }

    else
    {
      v22 = 6;
    }

    [(MRContext *)self->mInternal->mContext drawTriangleStripFromOffset:0 count:v22, 1065353216, 0x3F80000000000000];
    [(MRContext *)self->mInternal->mContext setColorsPointer:v26];
    [(MRContext *)self->mInternal->mContext setVertex2DPointer:v39];
    if (v17 <= 1.0)
    {
      v23 = 4;
    }

    else
    {
      v23 = 6;
    }

    [(MRContext *)self->mInternal->mContext drawTriangleStripFromOffset:0 count:v23];
    [(MRContext *)self->mInternal->mContext unsetVertexPointer];
    [(MRContext *)self->mInternal->mContext unsetColorsPointer];
    [(MRContext *)self->mInternal->mContext unsetShader];
    if (+[EAGLContext currentContext]!= v6)
    {
      [EAGLContext setCurrentContext:v6];
    }
  }

  self->mInternal->mFrameTime[self->mInternal->mFrameTimeIndex] = a3;
  self->mInternal->mFrameTimeIndex = (self->mInternal->mFrameTimeIndex + 1) & 0x3F;
}

- (void)_displayPlayingIDs
{
  mInternal = self->mInternal;
  mCurrentIDs = mInternal->mCurrentIDs;
  if (mCurrentIDs != mInternal->mPreviousCurrentIDs)
  {
    v5 = [(NSString *)mCurrentIDs isEqualToString:?];
    mInternal = self->mInternal;
    if ((v5 & 1) == 0)
    {
      [(MRImage *)mInternal->mCurrentIDsImage releaseByUser];
      self->mInternal->mCurrentIDsImage = 0;
      v6 = self->mInternal;
      if (v6->mCurrentIDs)
      {
        v7 = +[MRUtilities newColorSpaceForDevice];
        *components = xmmword_163620;
        v21 = unk_163630;
        v8 = CGColorCreate(v7, components);
        CGColorSpaceRelease(v7);
        v9 = [[NSAttributedString alloc] initWithString:self->mInternal->mCurrentIDs attributes:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v8, kCTForegroundColorAttributeName, 0)}];
        CGColorRelease(v8);
        v10 = [[MRTextRenderer alloc] initWithText:v9 resolution:self->mSize.width, self->mSize.height * 0.0799999982];
        v11 = [(MRTextRenderer *)v10 retainedContext];
        if (v11)
        {
          v12 = v11;
          self->mInternal->mCurrentIDsImage = [(MRImageManager *)[(MRContext *)self->mInternal->mContext imageManager] retainedByUserImageWithCGContext:v11];
          [(MRImage *)self->mInternal->mCurrentIDsImage setLabel:@"Marimba DisplayedIDs"];
          CGContextRelease(v12);
        }

        v6 = self->mInternal;
      }

      self->mInternal->mPreviousCurrentIDs = self->mInternal->mCurrentIDs;
      mInternal = self->mInternal;
    }
  }

  self->mInternal->mCurrentIDs = 0;
  v13 = self->mInternal;
  if (v13->mCurrentIDsImage)
  {
    [(MRContext *)v13->mContext setShader:@"PlainTexture"];
    [(MRImage *)self->mInternal->mCurrentIDsImage width];
    v14 = 0.0799999982;
    v16 = v15 * 0.0799999982;
    [(MRImage *)self->mInternal->mCurrentIDsImage height];
    v18 = v16 / v17 * self->mSize.height / self->mSize.width;
    v19 = 2.0;
    if (v18 <= 2.0)
    {
      v19 = v18;
    }

    else
    {
      v14 = 2.0 / v18 * 0.0799999982;
    }

    [MRCroppingSprite renderImage:self->mInternal->mCurrentIDsImage inContext:self->mInternal->mContext atPosition:v19 * 0.5 + -1.0 andSize:v14 * 0.5 + -1.0, v19, v14];
    [(MRContext *)self->mInternal->mContext unsetShader];
  }
}

- (void)_displayIsPreloadingImages
{
  v3 = +[EAGLContext currentContext];
  v4 = v3;
  if (v3 != [(MRContext *)self->mInternal->mContext glContext])
  {
    [EAGLContext setCurrentContext:[(MRContext *)self->mInternal->mContext glContext]];
  }

  [(MRContext *)self->mInternal->mContext setShader:@"PlainColor"];
  [(MRContext *)self->mInternal->mContext aspectRatio];
  v29[0] = 1064849900;
  v6 = (1.0 / v5);
  v7 = v6 * -0.96;
  *&v29[1] = v7;
  v29[2] = 1064849900;
  *&v6 = v6 * -0.99;
  v29[3] = LODWORD(v6);
  v29[4] = 1065185444;
  *&v29[5] = v7;
  v29[6] = 1065185444;
  v29[7] = LODWORD(v6);
  [(MRContext *)self->mInternal->mContext setVertex2DPointer:v29];
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  LODWORD(v10) = 1.0;
  [(MRContext *)self->mInternal->mContext setForeColorRed:v28 green:0.0 blue:v8 alpha:v9 saveTo:v10];
  *v27 = 0u;
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  [(MRContext *)self->mInternal->mContext setModelViewMatrix:v26 saveTo:&v22, MRMatrix_Clear(v26)];
  mInternal = self->mInternal;
  if (mInternal->mIsStalled)
  {
    [(MRContext *)mInternal->mContext drawTriangleStripFromOffset:0 count:4, v22, v23, v24, v25];
    mInternal = self->mInternal;
  }

  v12 = v27[0] + -0.03;
  v27[0] = v12;
  [(MRContext *)mInternal->mContext setModelViewMatrix:v26 saveTo:&v22];
  if ([(NSOperationQueue *)[(MRRenderArguments *)self->mInternal->mRenderArguments preloadQueue] isSuspended])
  {
    LODWORD(v13) = 1.0;
    LODWORD(v14) = 1.0;
    LODWORD(v16) = 1.0;
    [(MRContext *)self->mInternal->mContext setForeColorRed:0 green:v13 blue:v14 alpha:0.0 saveTo:v16];
    [(MRContext *)self->mInternal->mContext drawTriangleStripFromOffset:0 count:4];
  }

  v17 = v27[0] + -0.03;
  *&v17 = v17;
  v27[0] = *&v17;
  LODWORD(v17) = 1.0;
  LODWORD(v15) = 1.0;
  LODWORD(v16) = 1.0;
  [(MRContext *)self->mInternal->mContext setForeColorRed:0 green:v17 blue:0.0 alpha:v15 saveTo:v16, v22, v23, v24, v25];
  v18 = self->mInternal;
  if (v18->mCountOfPreloadingImages)
  {
    v19 = 0;
    do
    {
      [(MRContext *)v18->mContext setModelViewMatrix:v26 saveTo:0];
      [(MRContext *)self->mInternal->mContext drawTriangleStripFromOffset:0 count:4];
      v20 = v27[0] + -0.03;
      v27[0] = v20;
      ++v19;
      v18 = self->mInternal;
      mCountOfPreloadingImages = v18->mCountOfPreloadingImages;
      if (mCountOfPreloadingImages >= 0xA)
      {
        mCountOfPreloadingImages = 10;
      }
    }

    while (v19 < mCountOfPreloadingImages);
  }

  [(MRContext *)v18->mContext restoreModelViewMatrix:&v22];
  [(MRContext *)self->mInternal->mContext restoreForeColor:v28];
  [(MRContext *)self->mInternal->mContext unsetVertexPointer];
  [(MRContext *)self->mInternal->mContext unsetShader];
  if (+[EAGLContext currentContext]!= v3)
  {
    [EAGLContext setCurrentContext:v3];
  }
}

- (void)_displayTouchVisualFeedback
{
  if ([(NSMutableArray *)self->mInternal->mTouchesForVisualFeedback count])
  {
    v46 = MRGetCurrentTime();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    mTouchesForVisualFeedback = self->mInternal->mTouchesForVisualFeedback;
    v4 = 0;
    v5 = [(NSMutableArray *)mTouchesForVisualFeedback countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v5)
    {
      v6 = *v52;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v52 != v6)
          {
            objc_enumerationMutation(mTouchesForVisualFeedback);
          }

          v8 = *(*(&v51 + 1) + 8 * i);
          if ([v8 phase] >= 3)
          {
            [v8 timestamp];
            if (v9 <= v46 + -0.5)
            {
              if (!v4)
              {
                v4 = objc_alloc_init(NSMutableArray);
              }

              [v4 addObject:v8];
            }
          }
        }

        v5 = [(NSMutableArray *)mTouchesForVisualFeedback countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v5);
    }

    v10 = self->mInternal->mTouchesForVisualFeedback;
    objc_sync_enter(v10);
    [(NSMutableArray *)self->mInternal->mTouchesForVisualFeedback removeObjectsInArray:v4];

    if (self->mInternal->mTouchesForVisualFeedback)
    {
      v11 = +[EAGLContext currentContext];
      v12 = v11;
      if (v11 != [(MRContext *)self->mInternal->mContext glContext])
      {
        [EAGLContext setCurrentContext:[(MRContext *)self->mInternal->mContext glContext]];
      }

      [(MRContext *)self->mInternal->mContext setShader:@"PlainColor"];
      LODWORD(v13) = 0.75;
      LODWORD(v14) = 1.0;
      LODWORD(v15) = 1.0;
      LODWORD(v16) = 1055286886;
      [(MRContext *)self->mInternal->mContext setForeColorRed:v59 green:v16 blue:v13 alpha:v14 saveTo:v15];
      memset(v58, 0, sizeof(v58));
      memset(v57, 0, sizeof(v57));
      [(MRContext *)self->mInternal->mContext setModelViewMatrix:v58 saveTo:v57, MRMatrix_Clear(v58)];
      [(MRContext *)self->mInternal->mContext blend:3];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v17 = self->mInternal->mTouchesForVisualFeedback;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v18)
      {
        v19 = *v48;
        do
        {
          for (j = 0; j != v18; j = j + 1)
          {
            if (*v48 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v47 + 1) + 8 * j);
            v22 = [v21 phase];
            mInternal = self->mInternal;
            mContext = mInternal->mContext;
            if (v22 > 2)
            {
              [v21 timestamp];
              v30 = v29 + 0.5 - v46;
              *&v31 = v30;
              LODWORD(v32) = 1.0;
              LODWORD(v30) = 1055286886;
              [(MRContext *)mContext setForeColorRed:0 green:v30 blue:COERCE_DOUBLE(__PAIR64__(HIDWORD(v46) alpha:0.75)) saveTo:v32, v31];
            }

            else
            {
              LODWORD(v24) = 0.75;
              LODWORD(v25) = 1.0;
              LODWORD(v26) = 1.0;
              LODWORD(v23) = 1055286886;
              [(MRContext *)mInternal->mContext setForeColorRed:v59 green:v23 blue:v24 alpha:v25 saveTo:v26];
            }

            [v21 location];
            v34 = v33;
            width = self->mSize.width;
            [v21 location];
            v36 = -(width - v34 * 2.0) / width;
            v38 = -(self->mSize.height - v37 * 2.0) / self->mSize.width;
            v39 = v36;
            v40 = v38;
            *v55 = v39;
            *&v55[1] = v40;
            v41 = v36 + -0.05;
            *&v55[2] = v41;
            *&v55[3] = v40;
            v42 = v36 + -0.033;
            v43 = v38 + 0.033;
            *&v55[4] = v42;
            *&v55[5] = v43;
            v44 = v38 + 0.05;
            *&v55[6] = v39;
            *&v55[7] = v44;
            v45 = v36 + 0.033;
            *&v55[8] = v45;
            *&v55[9] = v43;
            *&v36 = v36 + 0.05;
            v55[10] = LODWORD(v36);
            *&v55[11] = v40;
            *&v36 = v38 + -0.033;
            *&v55[12] = v45;
            v55[13] = LODWORD(v36);
            *&v38 = v38 + -0.05;
            *&v55[14] = v39;
            v55[15] = LODWORD(v38);
            *&v55[16] = v42;
            v55[17] = LODWORD(v36);
            *&v55[18] = v41;
            *&v55[19] = v40;
            [(MRContext *)self->mInternal->mContext setVertex2DPointer:v55];
            [(MRContext *)self->mInternal->mContext drawTriangleFanFromOffset:0 count:10];
            [(MRContext *)self->mInternal->mContext unsetVertexPointer];
          }

          v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v18);
      }

      [(MRContext *)self->mInternal->mContext blend:0];
      [(MRContext *)self->mInternal->mContext restoreModelViewMatrix:v57];
      [(MRContext *)self->mInternal->mContext restoreForeColor:v59];
      [(MRContext *)self->mInternal->mContext unsetShader];
      if (+[EAGLContext currentContext]!= v11)
      {
        [EAGLContext setCurrentContext:v11];
      }
    }

    objc_sync_exit(v10);
  }
}

- (void)_displayHitZonesVisualFeedback
{
  if ([(NSMutableArray *)self->mInternal->mHitZonesForVisualFeedback count])
  {
    v3 = MRGetCurrentTime();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    mHitZonesForVisualFeedback = self->mInternal->mHitZonesForVisualFeedback;
    v5 = 0;
    v6 = [(NSMutableArray *)mHitZonesForVisualFeedback countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v6)
    {
      v7 = *v40;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v40 != v7)
          {
            objc_enumerationMutation(mHitZonesForVisualFeedback);
          }

          v9 = *(*(&v39 + 1) + 8 * i);
          if ([v9 hasEnded])
          {
            [v9 timestamp];
            if (v10 <= v3 + -0.5)
            {
              if (!v5)
              {
                v5 = objc_alloc_init(NSMutableArray);
              }

              [v5 addObject:v9];
            }
          }
        }

        v6 = [(NSMutableArray *)mHitZonesForVisualFeedback countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v6);
    }

    v11 = self->mInternal->mHitZonesForVisualFeedback;
    objc_sync_enter(v11);
    [(NSMutableArray *)self->mInternal->mHitZonesForVisualFeedback removeObjectsInArray:v5];

    if ([(NSMutableArray *)self->mInternal->mHitZonesForVisualFeedback count])
    {
      v12 = +[EAGLContext currentContext];
      v13 = v12;
      if (v12 != [(MRContext *)self->mInternal->mContext glContext])
      {
        [EAGLContext setCurrentContext:[(MRContext *)self->mInternal->mContext glContext]];
      }

      [(MRContext *)self->mInternal->mContext setShader:@"PlainColor"];
      LODWORD(v14) = 0.75;
      LODWORD(v15) = 1.0;
      LODWORD(v16) = 1.0;
      LODWORD(v17) = 1055286886;
      [(MRContext *)self->mInternal->mContext setForeColorRed:v46 green:v17 blue:v14 alpha:v15 saveTo:v16];
      memset(v45, 0, sizeof(v45));
      memset(v44, 0, sizeof(v44));
      [(MRContext *)self->mInternal->mContext setModelViewMatrix:v45 saveTo:v44, MRMatrix_Clear(v45)];
      [(MRContext *)self->mInternal->mContext blend:3];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = self->mInternal->mHitZonesForVisualFeedback;
      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v19)
      {
        v20 = *v36;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v35 + 1) + 8 * j);
            v23 = [v22 hasEnded];
            mInternal = self->mInternal;
            mContext = mInternal->mContext;
            if (v23)
            {
              [v22 timestamp];
              v31 = v30 + 0.5 - v3;
              *&v32 = v31;
              LODWORD(v33) = 0.75;
              LODWORD(v34) = 1.0;
              LODWORD(v31) = 1055286886;
              [(MRContext *)mContext setForeColorRed:0 green:v31 blue:v33 alpha:v34 saveTo:v32];
            }

            else
            {
              LODWORD(v25) = 0.75;
              LODWORD(v26) = 1.0;
              LODWORD(v27) = 1.0;
              LODWORD(v24) = 1055286886;
              [(MRContext *)mInternal->mContext setForeColorRed:v46 green:v24 blue:v25 alpha:v26 saveTo:v27];
            }

            -[MRContext setVertex2DPointer:](self->mInternal->mContext, "setVertex2DPointer:", [v22 vertices]);
            -[MRContext drawTriangleStripFromOffset:count:](self->mInternal->mContext, "drawTriangleStripFromOffset:count:", 0, [v22 countOfVertices]);
            [(MRContext *)self->mInternal->mContext unsetVertexPointer];
          }

          v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v19);
      }

      [(MRContext *)self->mInternal->mContext blend:0];
      [(MRContext *)self->mInternal->mContext restoreModelViewMatrix:v44];
      [(MRContext *)self->mInternal->mContext restoreForeColor:v46];
      [(MRContext *)self->mInternal->mContext unsetShader];
      if (+[EAGLContext currentContext]!= v12)
      {
        [EAGLContext setCurrentContext:v12];
      }
    }

    objc_sync_exit(v11);
  }
}

- (double)masterClock
{
  result = self->mInternal->mMasterClock;
  if (result < 0.0)
  {
    result = self->mDisplayLinkTimestamp;
    if (result < 0.0)
    {
      return MRGetCurrentTime();
    }
  }

  return result;
}

- (BOOL)isFlipped
{
  v2 = [(NSDictionary *)self->mParameters objectForKey:@"flipped"];

  return [v2 BOOLValue];
}

- (void)selectLayer:(id)a3
{
  [(NSMutableArray *)self->mInternal->mSelectedLayers addObject:?];
  [a3 setIsSelected:1];

  [(MRRenderer *)self _updateSelectionLayer];
}

- (void)deselectLayer:(id)a3
{
  [(NSMutableArray *)self->mInternal->mSelectedLayers removeObject:?];
  [a3 setIsSelected:0];
  if (self->mInternal->mLayerCurrentlyTextEditing == a3)
  {
    [(MRRenderer *)self endTextEditing:1];
  }

  [(MRRenderer *)self _updateSelectionLayer];
}

- (void)deselectAllLayers
{
  [(MRRenderer *)self endTextEditing:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  mSelectedLayers = self->mInternal->mSelectedLayers;
  v4 = [(NSMutableArray *)mSelectedLayers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mSelectedLayers);
        }

        [*(*(&v8 + 1) + 8 * i) setIsSelected:0];
      }

      v5 = [(NSMutableArray *)mSelectedLayers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->mInternal->mSelectedLayers removeAllObjects];
  [(MRRenderer *)self _updateSelectionLayer];
}

- (void)_dimLayersExceptForPathTo:(id)a3
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3052000000;
  v4[3] = sub_50714;
  v4[4] = sub_50724;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_50730;
  v3[3] = &unk_1AAC98;
  v3[4] = a3;
  v3[5] = self;
  v3[6] = v4;
  v4[5] = v3;
  sub_50730(v3, self->mTopMRLayer);
  _Block_object_dispose(v4, 8);
}

- (void)_undimAllLayersInLayer:(id)a3
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3052000000;
  v4[3] = sub_50714;
  v4[4] = sub_50724;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_50994;
  v3[3] = &unk_1AACC0;
  v3[4] = v4;
  v4[5] = v3;
  sub_50994(v3, a3);
  _Block_object_dispose(v4, 8);
}

- (void)dimLayersExceptForPathTo:(id)a3
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_50B4C;
  v5[3] = &unk_1AAB08;
  v5[4] = self;
  v5[5] = a3;
  dispatch_async(mRenderDispatchQueue, v5);
  [(MRRenderer *)self requestRendering:0];
}

- (void)undimAllLayers
{
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_50BF4;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_async(mRenderDispatchQueue, block);
  [(MRRenderer *)self requestRendering:0];
}

- (id)layerAtPath:(id)a3 fromLayer:(id)a4
{
  v5 = [a3 componentsSeparatedByString:@"."];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }

      a4 = [a4 sublayerForKey:v10];
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        return a4;
      }
    }
  }

  return a4;
}

- (CGImage)snapshotAsCGImageForTime:(double)a3 andSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = objc_autoreleasePoolPush();
  v9 = [[EAGLContext alloc] initWithAPI:2];
  if (!v9)
  {
    objc_autoreleasePoolPop(v8);
    return 0;
  }

  v10 = v9;
  v11 = [[MRTexture alloc] initFBOWithSize:width | (height << 32) inGLContext:v9 options:0];
  [v11 setLabel:@"Marimba Snapshot"];
  v12 = [[MRRenderer alloc] initWithParameters:[NSDictionary dictionaryWithObjectsAndKeys:@"readonly", &__kCFBooleanTrue, @"noAudio", 0]];
  [(MRRenderer *)v12 setAssetManagementDelegate:[(MRRenderer *)self assetManagementDelegate]];
  -[MRRenderer setEAGLContext:](v12, "setEAGLContext:", [v11 glContext]);
  [(MRContext *)[(MRRenderer *)v12 context] setIsFlipped:1];
  [(MRRenderer *)v12 setTimeQuantum:self->mTimeQuantum];
  [(MRRenderer *)v12 setMode:1];
  [(MRRenderer *)v12 setMontage:self->mMontage];
  [(MRRenderer *)v12 setTime:a3];
  [(MRRenderer *)v12 setSize:width, height];
  [(MRRenderer *)v12 requestRendering:1];
  [(MRRenderer *)v12 cleanup];

  v13 = +[EAGLContext currentContext];
  v14 = v13;
  if (v13 != [v11 glContext])
  {
    +[EAGLContext setCurrentContext:](EAGLContext, "setCurrentContext:", [v11 glContext]);
  }

  v15 = malloc_type_malloc((height * (width * 4.0)), 0x9EF625EBuLL);
  glPixelStorei(0xD05u, 1);
  glReadPixels(0, 0, width, height, 0x1908u, 0x1401u, v15);
  glFinish();
  if (+[EAGLContext currentContext]!= v13)
  {
    [EAGLContext setCurrentContext:v13];
  }

  v16 = CGDataProviderCreateWithData(0, v15, (height * (width * 4.0)), MyCGImageBufferReleaseCallback);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = CGImageCreate(width, height, 8uLL, 0x20uLL, (width * 4.0), DeviceRGB, 1u, v16, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v16);
  CGColorSpaceRelease(DeviceRGB);

  objc_autoreleasePoolPop(v8);
  if (!v18)
  {
    return 0;
  }

  return v18;
}

- (CGImage)currentFrameAsCGImage
{
  v3 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  if (![(NSConditionLock *)self->mInternal->mSnapshotAsCGImageLock lockBeforeDate:v3])
  {
    return 0;
  }

  [(NSConditionLock *)self->mInternal->mSnapshotAsCGImageLock unlockWithCondition:1];
  [(MRRenderer *)self requestRendering:1];
  if (![(NSConditionLock *)self->mInternal->mSnapshotAsCGImageLock lockWhenCondition:0 beforeDate:v3])
  {
    return 0;
  }

  mSnapshotAsCGImage = self->mInternal->mSnapshotAsCGImage;
  v5 = mSnapshotAsCGImage;
  self->mInternal->mSnapshotAsCGImage = 0;
  [(NSConditionLock *)self->mInternal->mSnapshotAsCGImageLock unlock];
  return mSnapshotAsCGImage;
}

- (void)setMasterStartTime:(double)a3 andDuration:(double)a4 mode:(int)a5
{
  self->mInternal->mMasterStartTime = a3;
  self->mInternal->mMasterDuration = a4;
  self->mInternal->mMasterMode = a5;
}

- (void)setLiveSlideshowDelegate:(id)a3
{
  mInternal = self->mInternal;
  if (mInternal->mLiveSlideshowDelegate != a3)
  {
    mInternal->mLiveSlideshowDelegate = a3;
  }
}

- (void)setAsynchronousOperationsDelegate:(id)a3
{
  mInternal = self->mInternal;
  if (mInternal->mAsynchronousOperationsDelegate != a3)
  {
    mInternal->mAsynchronousOperationsDelegate = a3;
  }
}

- (void)setScreenBurnTest:(BOOL)a3
{
  mInternal = self->mInternal;
  if (mInternal->mScreenBurnTest != a3)
  {
    v9 = v3;
    v10 = v4;
    mRenderDispatchQueue = mInternal->mRenderDispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_51208;
    v7[3] = &unk_1AA728;
    v7[4] = self;
    v8 = a3;
    dispatch_async(mRenderDispatchQueue, v7);
  }
}

- (void)_createSlideFocusLayer
{
  v3 = [[MRLayerParallelizer alloc] initWithParameters:self->mParameters];
  self->mInternal->mSlideFocusLayer = v3;
  v4 = self->_slideFocusModeBackgroundColor[0];
  *&v4 = v4;
  [(MRLayerParallelizer *)v3 setBackgroundColorRed:v4 green:self->_slideFocusModeBackgroundColor[1] blue:self->_slideFocusModeBackgroundColor[2] alpha:self->_slideFocusModeBackgroundColor[3]];
  [(MRLayerParallelizer *)self->mTopMRLayer setSublayer:v3 forKey:@"SlideFocusLayer"];
  [(MRLayer *)v3 setZIndex:32000];
  [(MRLayer *)v3 setPhaseInDuration:0.5];
  [(MRLayer *)v3 setPhaseOutDuration:0.5];
  v5 = [[MRLayerNavigator alloc] initWithParameters:self->mParameters];
  self->mInternal->mSlideFocusNavigator = v5;
  [(MRLayerParallelizer *)v3 setSublayer:v5 forKey:@"SlideFocusNavigator"];
  v6 = [[MRLayerEffect alloc] initWithEffectID:@"JustASlide" andParameters:self->mParameters];
  [(MREffect *)[(MRLayerEffect *)v6 effect] setIsFocuser:1];
  self->mInternal->mSlideFocuser[0] = v6;
  [(MRLayerEffect *)v6 setKenBurnsType:0 ofSlide:@"image0"];
  [(MRLayerNavigator *)v5 setSublayer:v6 forKey:@"SlideFocuser0"];
  v7 = [MCTransitionTrigger transitionForTargetPlugObjectID:0 withTransitionID:@"Push"];
  [v7 setTransitionDestinationPlugID:@"SlideFocuser0"];
  [v7 setTransitionDuration:0.5];
  [v7 setTransitionAttributes:&off_1BBD00];
  v8 = [[MRLayerEffect alloc] initWithEffectID:@"JustASlide" andParameters:self->mParameters];
  [(MREffect *)[(MRLayerEffect *)v8 effect] setIsFocuser:1];
  self->mInternal->mSlideFocuser[1] = v8;
  [(MRLayerEffect *)v8 setKenBurnsType:0 ofSlide:@"image0"];
  [(MRLayerNavigator *)v5 setSublayer:v8 forKey:@"SlideFocuser1"];
  v9 = [MCTransitionTrigger transitionForTargetPlugObjectID:0 withTransitionID:@"Push"];
  [v9 setTransitionDestinationPlugID:@"SlideFocuser1"];
  [v9 setTransitionDuration:0.5];
  [v9 setTransitionAttributes:&off_1BBD28];
  v10 = [[MRLayerEffect alloc] initWithEffectID:@"JustASlide" andParameters:self->mParameters];
  [(MREffect *)[(MRLayerEffect *)v10 effect] setIsFocuser:1];
  self->mInternal->mSlideFocuser[2] = v10;
  [(MRLayerEffect *)v10 setKenBurnsType:0 ofSlide:@"image0"];
  [(MRLayerNavigator *)v5 setSublayer:v10 forKey:@"SlideFocuser2"];
  v11 = [MCTransitionTrigger transitionForTargetPlugObjectID:0 withTransitionID:@"Push"];
  [v11 setTransitionDestinationPlugID:@"SlideFocuser2"];
  [v11 setTransitionDuration:0.5];
  [v11 setTransitionAttributes:&off_1BBD50];
  [(MRLayer *)v8 setNextTransition:v11];
  [(MRLayer *)v6 setPreviousTransition:v11];
  [(MRLayer *)v10 setNextTransition:v7];
  [(MRLayer *)v8 setPreviousTransition:v7];
  [(MRLayer *)v6 setNextTransition:v9];

  [(MRLayer *)v10 setPreviousTransition:v9];
}

- (double)enterSlideFocusModeWithState:(id)a3 animate:(BOOL)a4
{
  v4 = 0.0;
  if (!self->mInternal->mSlideFocusState)
  {
    v5 = a4;
    if ([objc_msgSend(a3 "delegate")])
    {
      self->mInternal->mSlideFocusState = a3;
      mSlideFocusLayer = self->mInternal->mSlideFocusLayer;
      if (!mSlideFocusLayer)
      {
        [(MRRenderer *)self _createSlideFocusLayer];
        mSlideFocusLayer = self->mInternal->mSlideFocusLayer;
      }

      [(MRLayer *)mSlideFocusLayer setIsTriggered:1];
      v9 = self->mSize.height / self->mSize.width;
      v10 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState slideInfo];
      v11 = [(MRSlideInfo *)v10 assetPath];
      v12 = self->mSize.width / self->mSize.height;
      [(MRSlideInfo *)v10 aspectRatio];
      v14 = v13;
      [(MRSlideInfo *)v10 center];
      v16 = v15;
      v18 = v17;
      [(MRSlideInfo *)v10 scale];
      v20 = v19;
      v21 = (1.0 - v16 / v19) * 0.5;
      v22 = (1.0 - v14 / v12 * v18 / v19) * 0.5;
      [(MRSlideInfo *)v10 rotation];
      v24 = v23;
      v25 = self->mInternal->mSlideFocuser[self->mInternal->mCurrentSlideFocuserIndex];
      [(MRLayerEffect *)v25 setPixelSize:self->mSize.width, self->mSize.height];
      [(MRLayerEffect *)v25 setAssetPath:v11 ofSlide:@"image0"];
      if ([(MZMediaManagement *)[(MRRenderer *)self assetManagementDelegate] isSupportedMovieForAssetAtPath:v11])
      {
        [(MRLayerEffect *)v25 setPlayerHint:[(MRSlideInfo *)v10 player] ofSlide:@"image0"];
      }

      [(MRLayerEffect *)v25 setCenter:@"image0" ofSlide:v21, v22];
      [(MRLayerEffect *)v25 setScale:@"image0" ofSlide:v20];
      [(MRSlideInfo *)v10 aspectRatio];
      [(MRLayerEffect *)v25 setMaxScale:@"image0" ofSlide:fmax(v9 * (v26 + v26), 2.0)];
      [(MRLayerEffect *)v25 setRotation:@"image0" ofSlide:v24];
      v27 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState previousSlideInfo];
      v28 = self->mInternal->mSlideFocuser[(self->mInternal->mCurrentSlideFocuserIndex + 2) % 3];
      [(MRLayerEffect *)v28 setPixelSize:self->mSize.width, self->mSize.height];
      [(MRLayerEffect *)v28 setAssetPath:[(MRSlideInfo *)v27 assetPath] ofSlide:@"image0"];
      if ([(MZMediaManagement *)[(MRRenderer *)self assetManagementDelegate] isSupportedMovieForAssetAtPath:[(MRSlideInfo *)v27 assetPath]])
      {
        [(MRLayerEffect *)v28 setPlayerHint:[(MRSlideInfo *)v27 player] ofSlide:@"image0"];
      }

      [(MRLayerEffect *)v28 setCenter:@"image0" ofSlide:0.5, 0.5];
      [(MRSlideInfo *)v27 aspectRatio];
      v30 = v29 / v12;
      if (v30 > 1.0)
      {
        v30 = 1.0;
      }

      [(MRLayerEffect *)v28 setScale:@"image0" ofSlide:v30];
      [(MRSlideInfo *)v27 aspectRatio];
      [(MRLayerEffect *)v28 setMaxScale:@"image0" ofSlide:fmax(v9 * (v31 + v31), 2.0)];
      [(MRLayerEffect *)v28 setRotation:@"image0" ofSlide:0.0];
      v32 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState nextSlideInfo];
      v33 = self->mInternal->mSlideFocuser[(self->mInternal->mCurrentSlideFocuserIndex + 1) % 3];
      [(MRLayerEffect *)v33 setPixelSize:self->mSize.width, self->mSize.height];
      [(MRLayerEffect *)v33 setAssetPath:[(MRSlideInfo *)v32 assetPath] ofSlide:@"image0"];
      if ([(MZMediaManagement *)[(MRRenderer *)self assetManagementDelegate] isSupportedMovieForAssetAtPath:[(MRSlideInfo *)v32 assetPath]])
      {
        [(MRLayerEffect *)v33 setPlayerHint:[(MRSlideInfo *)v32 player] ofSlide:@"image0"];
      }

      v4 = 0.5;
      [(MRLayerEffect *)v33 setCenter:@"image0" ofSlide:0.5, 0.5];
      [(MRSlideInfo *)v32 aspectRatio];
      v35 = v34 / v12;
      if (v35 > 1.0)
      {
        v35 = 1.0;
      }

      [(MRLayerEffect *)v33 setScale:@"image0" ofSlide:v35];
      [(MRSlideInfo *)v32 aspectRatio];
      [(MRLayerEffect *)v33 setMaxScale:@"image0" ofSlide:fmax(v9 * (v36 + v36), 2.0)];
      [(MRLayerEffect *)v33 setRotation:@"image0" ofSlide:0.0];
      [(MRLayerParallelizer *)self->mTopMRLayer phaseInSublayerForKey:@"SlideFocusLayer"];
      [(MRLayer *)self->mInternal->mSlideFocusLayer setOpacity:0.001];
      if (v5)
      {
        [(MRRenderer *)self animateCurrentFocuserToSlideFocusModeWithDuration:0.5];
      }

      [(MRRenderer *)self sendNotification:kMRNotificationEnteredSlideFocusMode];
    }
  }

  return v4;
}

- (double)exitSlideFocusMode
{
  v3 = self->mInternal->mSlideFocuser[self->mInternal->mCurrentSlideFocuserIndex];
  v4 = [(MRLayerEffect *)v3 currentSlideInfoForElement:@"image0"];
  v5 = [v4 player];
  if (v5 == [(MRSlideInfo *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState slideInfo] player])
  {
    [v4 time];
    v7 = v6;
    [(MRSlideInfo *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState slideInfo] time];
    [(MRSlideInfo *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState slideInfo] setTime:v7 - v8];
  }

  [(MRLayer *)[(MRSlideFocusState *)self->mInternal->mSlideFocusState delegate] exitSlideFocusModeWithState:self->mInternal->mSlideFocusState];
  v9 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState slideInfo];
  v10 = self->mSize.width / self->mSize.height;
  [(MRSlideInfo *)v9 aspectRatio];
  v12 = v11;
  [(MRSlideInfo *)v9 center];
  v14 = v13;
  v16 = v15;
  [(MRSlideInfo *)v9 scale];
  v18 = v17;
  v19 = v12 / v10 * v16;
  v20 = (1.0 - v14 / v18) * 0.5;
  v21 = (1.0 - v19 / v18) * 0.5;
  [(MRSlideInfo *)v9 rotation];
  v23 = v22;
  [(MRLayerEffect *)v3 animateCenterOfSlide:@"image0" to:v20 withDuration:v21, 0.5];
  [(MRLayerEffect *)v3 animateScaleOfSlide:@"image0" to:v18 withDuration:0.5];
  [(MRLayerEffect *)v3 animateRotationOfSlide:@"image0" to:v23 withDuration:0.5];
  [(MRLayer *)self->mInternal->mSlideFocusLayer animateOpacityTo:0.0 withDuration:0.5];
  [(MRLayerParallelizer *)self->mTopMRLayer phaseOutSublayerForKey:@"SlideFocusLayer"];
  v24 = dispatch_time(0, 550000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_51C7C;
  block[3] = &unk_1AA700;
  block[4] = self;
  dispatch_after(v24, &_dispatch_main_q, block);
  [(MRRenderer *)self sendNotification:kMRNotificationExitedSlideFocusMode];

  self->mInternal->mSlideFocusState = 0;
  return 0.5;
}

- (double)exitSlideZoomMode:(BOOL)a3
{
  v3 = a3;
  [(MRSlideFocusState *)self->mInternal->mSlideFocusState setIsInZoomMode:0];
  v5 = 0.0;
  if (v3)
  {
    v5 = 0.5;
  }

  [(MRRenderer *)self animateCurrentFocuserToSlideFocusModeWithDuration:v5];
  return result;
}

- (double)animateCurrentFocuserToSlideFocusModeWithDuration:(double)a3
{
  v5 = [(MRSlideFocusState *)self->mInternal->mSlideFocusState slideInfo];
  v6 = self->mSize.width / self->mSize.height;
  [(MRSlideInfo *)v5 aspectRatio];
  v7 = &self->mInternal->super.isa + self->mInternal->mCurrentSlideFocuserIndex;
  v8 = v7[40];
  v10 = v9 / v6;
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = v7[40];
  if (a3 <= 0.0)
  {
    [(objc_class *)v12 setCenter:@"image0" ofSlide:0.5, 0.5];
    [(objc_class *)v8 setScale:@"image0" ofSlide:v11];
    a3 = 0.0;
    [(objc_class *)v8 setRotation:@"image0" ofSlide:0.0];
    [(MRLayer *)self->mInternal->mSlideFocusLayer setOpacity:1.0];
  }

  else
  {
    [(objc_class *)v12 animateCenterOfSlide:@"image0" to:0.5 withDuration:0.5, a3];
    [(objc_class *)v8 animateScaleOfSlide:@"image0" to:v11 withDuration:a3];
    [(objc_class *)v8 animateRotationOfSlide:@"image0" to:0.0 withDuration:a3];
    [(MRLayer *)self->mInternal->mSlideFocusLayer animateOpacityTo:1.0 withDuration:a3];
  }

  return a3;
}

- (id)slideInfoForCurrentElement:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_4DA24;
  v11 = sub_4DA34;
  v12 = 0;
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_51F54;
  v6[3] = &unk_1AACE8;
  v6[5] = a3;
  v6[6] = &v7;
  v6[4] = self;
  PerformSynchronouslyOnRenderQueue(mRenderDispatchQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)slideInfosForCurrentElements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_4DA24;
  v10 = sub_4DA34;
  v11 = 0;
  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_52088;
  v5[3] = &unk_1AAC20;
  v5[4] = self;
  v5[5] = &v6;
  PerformSynchronouslyOnRenderQueue(mRenderDispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)sendNotification:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_52140;
  v3[3] = &unk_1AAB08;
  v3[4] = a3;
  v3[5] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (id)chooseTransitionIDForRandomTransitionPresetID:(id)a3
{
  v5 = [(MRFeatureDelegate *)[(MRRenderer *)self featureDelegate] descriptionForRandomTransitionPresetID:a3];
  if (!v5)
  {
    mDescriptionsForRandomTransitionPresetIDs = self->mDescriptionsForRandomTransitionPresetIDs;
    if (!mDescriptionsForRandomTransitionPresetIDs)
    {
      mDescriptionsForRandomTransitionPresetIDs = [[NSDictionary alloc] initWithContentsOfFile:{-[NSBundle pathForResource:ofType:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"TemporaryRandomTransitionDescriptions", @"plist"}];
      self->mDescriptionsForRandomTransitionPresetIDs = mDescriptionsForRandomTransitionPresetIDs;
    }

    v5 = [(NSDictionary *)mDescriptionsForRandomTransitionPresetIDs objectForKey:a3];
    if (!v5)
    {
      return 0;
    }
  }

  v7 = [v5 objectForKey:@"transitionPresetIDs"];
  v8 = [v7 objectAtIndex:{arc4random() % objc_msgSend(v7, "count")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v8;
  }

  v9 = arc4random();
  v10 = v9 % [v8 count];

  return [v8 objectAtIndex:v10];
}

- (void)_adaptToPressureLevel:(int)a3
{
  if (a3 <= 29)
  {
    if (a3)
    {
      if (a3 != 20)
      {
        return;
      }

      v3 = 0.0333333333;
    }

    else
    {
      v3 = 0.0166666667;
    }

    goto LABEL_10;
  }

  if (a3 == 30 || a3 == 40 || a3 == 50)
  {
    v3 = 0.05;
LABEL_10:
    self->mTimeQuantum = v3;
  }
}

- (void)_startMonitoringThermalPressureLevelChanges
{
  out_token = 0;
  if (!notify_register_check(kOSThermalNotificationPressureLevelName, &out_token))
  {
    state64 = 0;
    notify_get_state(out_token, &state64);
    NSLog(@"Initial thermal pressure level is %llu", state64);
    [(MRRenderer *)self _adaptToPressureLevel:state64];
    notify_cancel(out_token);
  }

  mRenderDispatchQueue = self->mInternal->mRenderDispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_523FC;
  handler[3] = &unk_1AAD10;
  handler[4] = self;
  v4 = notify_register_dispatch(kOSThermalNotificationPressureLevelName, &self->_thermalNotificationToken, mRenderDispatchQueue, handler);
  if (v4)
  {
    NSLog(@"notify_register_dispatch failed (%u) for kOSThermalNotificationPressureLevelName", v4);
  }
}

- (void)_stopMonitoringThermalPressureLevelChanges
{
  thermalNotificationToken = self->_thermalNotificationToken;
  if (thermalNotificationToken)
  {
    notify_cancel(thermalNotificationToken);
    self->_thermalNotificationToken = 0;
  }
}

- (void)processAudioObjects
{
  [(MRRenderer *)self time];
  v4 = v3;
  [(MCMontage *)self->mMontage audioFadeOutDuration];
  v6 = v5;
  [(MRRenderer *)self volume];
  v8 = v7;
  if (v6 > 0.0)
  {
    [(MCPlug *)[(MCMontage *)self->mMontage rootPlug] fullDuration];
    v10 = (v9 - v4) / v6;
    if (v10 > 1.0)
    {
      v10 = 1.0;
    }

    v8 = v10 * v8;
  }

  v38 = 0u;
  v39 = 0u;
  mInternal = self->mInternal;
  v36 = 0u;
  v37 = 0u;
  obj = [(NSArray *)mInternal->mAudioPlayerSortedBuckets reverseObjectEnumerator];
  v31 = [(NSEnumerator *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v31)
  {
    v30 = *v37;
    v12 = 1.0;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v33;
          v18 = 1.0;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v32 + 1) + 8 * j);
              [v20 currentDuckLevel];
              v22 = v21;
              if (v18 > v22)
              {
                v18 = v22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v20 shouldBePlaying])
                {
                  [v20 processWithDuckLevel:v8 * v12];
                  v23 = [v20 avPlayer];
                  if (self->mInternal->mInnerIsPlaying)
                  {
                    v24 = v23;
                    [v23 rate];
                    if (v25 == 0.0)
                    {
                      [v24 play];
                    }
                  }
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v16);
        }

        else
        {
          v18 = 1.0;
        }

        if (v18 < v12)
        {
          v12 = v18;
        }
      }

      v31 = [(NSEnumerator *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v31);
  }

  else
  {
    v12 = 1.0;
  }

  v26 = [(MRRenderer *)self renderingDelegate];
  if (objc_opt_respondsToSelector())
  {
    *&v27 = v8;
    *&v28 = v12;
    [(MRRenderingDelegate *)v26 setAudioFadingLevel:v27 andDuckingLevel:v28];
  }
}

- (void)addAudioObject:(id)a3
{
  if (![(MRRenderer *)self ignoresBackgroundAudio]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 priority]);
    v6 = [(NSMutableDictionary *)self->mInternal->mAudioPlayerBuckets objectForKey:v5];
    if (!v6)
    {
      v6 = objc_alloc_init(NSMutableSet);
      mAudioPlayerBuckets = self->mInternal->mAudioPlayerBuckets;
      if (!mAudioPlayerBuckets)
      {
        self->mInternal->mAudioPlayerBuckets = objc_alloc_init(NSMutableDictionary);
        mAudioPlayerBuckets = self->mInternal->mAudioPlayerBuckets;
      }

      [(NSMutableDictionary *)mAudioPlayerBuckets setObject:v6 forKey:v5];

      self->mInternal->mAudioPlayerSortedBuckets = -[NSMutableDictionary objectsForKeys:notFoundMarker:](self->mInternal->mAudioPlayerBuckets, "objectsForKeys:notFoundMarker:", [-[NSMutableDictionary allKeys](self->mInternal->mAudioPlayerBuckets "allKeys")], +[NSNull null](NSNull, "null"));
    }

    [v6 addObject:a3];
  }
}

- (void)removeAudioObject:(id)a3
{
  v4 = -[NSMutableDictionary objectForKey:](self->mInternal->mAudioPlayerBuckets, "objectForKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 priority]));
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(a3 "avPlayer")];
    }

    [v5 removeObject:a3];
  }
}

@end