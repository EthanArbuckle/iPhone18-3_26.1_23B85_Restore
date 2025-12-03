@interface TSDAudioRep
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)hitPlayPauseButtonWithPoint:(CGPoint)point;
- (BOOL)p_isEditingAnimations;
- (BOOL)p_isPlaying;
- (BOOL)shouldShowSelectionHighlight;
- (CGRect)boundsForStandardKnobs;
- (TSDAudioRep)initWithLayout:(id)layout canvas:(id)canvas;
- (TSDMovieInfo)movieInfo;
- (float)volume;
- (id)hitRepChrome:(CGPoint)chrome;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)dealloc;
- (void)didEndZooming;
- (void)dynamicVolumeChangeDidBegin;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_setupPlayerControllerIfNecessary;
- (void)p_teardownPlayerController;
- (void)p_updateButtonForPlaying:(BOOL)playing pressed:(BOOL)pressed;
- (void)p_updateEndTime;
- (void)p_updateRepeatMode;
- (void)p_updateStartTime;
- (void)p_updateVolume;
- (void)playerController:(id)controller playbackDidFailWithError:(id)error;
- (void)processChangedProperty:(int)property;
- (void)updateLayerGeometryFromLayout:(id)layout;
- (void)updatePlayButtonForPoint:(CGPoint)point;
- (void)willBeRemoved;
- (void)willBeginReadMode;
- (void)willBeginZooming;
- (void)willUpdateLayer:(id)layer;
@end

@implementation TSDAudioRep

- (TSDAudioRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v7.receiver = self;
  v7.super_class = TSDAudioRep;
  v4 = [(TSDRep *)&v7 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (v4 && ![(TSDAudioRep *)v4 movieInfo])
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDAudioRep;
  [(TSDMediaRep *)&v3 dealloc];
}

- (void)willUpdateLayer:(id)layer
{
  if ([(TSDAudioRep *)self p_shouldShowPlayPauseLayers])
  {
    if (!self->mPlayerController)
    {
      layer = [MEMORY[0x277CD9ED0] layer];
      self->mPlayerController = layer;
      [(TSKAVPlayerController *)layer setBounds:TSDRectWithSize()];
      [layer contentsScale];
      [(TSKAVPlayerController *)self->mPlayerController setContentsScale:?];
      [layer addSublayer:self->mPlayerController];
    }

    if (!self->mPlayPauseButtonLayer)
    {
      layer2 = [MEMORY[0x277CD9ED0] layer];
      self->mPlayPauseButtonLayer = layer2;
      [(CALayer *)layer2 setBounds:TSDRectWithSize()];
      [layer position];
      [(CALayer *)self->mPlayPauseButtonLayer setPosition:?];
      [layer contentsScale];
      [(CALayer *)self->mPlayPauseButtonLayer setContentsScale:?];
      [layer addSublayer:self->mPlayPauseButtonLayer];
    }

    p_isPlaying = [(TSDAudioRep *)self p_isPlaying];

    [(TSDAudioRep *)self p_updateButtonForPlaying:p_isPlaying pressed:0];
  }
}

- (void)becameSelected
{
  [*&self->mDynamicVolume setSelected:1];
  if ([(TSDAudioRep *)self p_shouldPlayerControllerExistThroughoutSelection])
  {

    [(TSDAudioRep *)self p_setupPlayerControllerIfNecessary];
  }
}

- (void)becameNotSelected
{
  [*&self->mDynamicVolume setSelected:0];
  [(TSDAudioRep *)self p_teardownPlayerController];
  v3.receiver = self;
  v3.super_class = TSDAudioRep;
  [(TSDRep *)&v3 becameNotSelected];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = TSDAudioRep;
  [(TSDRep *)&v3 willBeRemoved];
  [*&self->mDynamicVolume setSelected:0];
  [(TSDAudioRep *)self p_teardownPlayerController];
}

- (void)willBeginReadMode
{
  if ([(TSDAudioRep *)self p_isPlaying])
  {
    playerController = [(TSDAudioRep *)self playerController];

    [(TSKAVPlayerController *)playerController setPlaying:0];
  }
}

- (BOOL)hitPlayPauseButtonWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  p_shouldShowPlayPauseLayers = [(TSDAudioRep *)self p_shouldShowPlayPauseLayers];
  if (p_shouldShowPlayPauseLayers)
  {
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] convertUnscaledToBoundsPoint:x, y];
    -[TSKAVPlayerController convertPoint:fromLayer:](self->mPlayerController, "convertPoint:fromLayer:", [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](-[TSDRep interactiveCanvasController](self "interactiveCanvasController")], v7, v8);
    v10 = v9;
    v12 = v11;
    [(TSKAVPlayerController *)self->mPlayerController bounds];
    v17 = v10;
    v18 = v12;

    LOBYTE(p_shouldShowPlayPauseLayers) = CGRectContainsPoint(*&v13, *&v17);
  }

  return p_shouldShowPlayPauseLayers;
}

- (void)updatePlayButtonForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(TSDAudioRep *)self p_shouldShowPlayPauseLayers])
  {
    v6 = [(TSDAudioRep *)self hitPlayPauseButtonWithPoint:x, y];
    p_isPlaying = [(TSDAudioRep *)self p_isPlaying];

    [(TSDAudioRep *)self p_updateButtonForPlaying:p_isPlaying pressed:v6];
  }
}

- (id)hitRepChrome:(CGPoint)chrome
{
  y = chrome.y;
  x = chrome.x;
  v19.receiver = self;
  v19.super_class = TSDAudioRep;
  v6 = [(TSDRep *)&v19 hitRepChrome:?];
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
    [*&self->mDynamicVolume hudFrame];
    [(TSDInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledRect:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(TSDRep *)self convertNaturalPointToUnscaledCanvas:x, y];
    v20.x = v16;
    v20.y = v17;
    v21.origin.x = v9;
    v21.origin.y = v11;
    v21.size.width = v13;
    v21.size.height = v15;
    if (CGRectContainsPoint(v21, v20))
    {
      return self;
    }
  }

  return v6;
}

- (BOOL)p_isPlaying
{
  height = self->super.mLastPictureFrameLayerRect.size.height;
  if (height != 0.0)
  {
    LOBYTE(height) = [*&height isPlaying];
  }

  return LOBYTE(height);
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = TSDAudioRep;
  [(TSDMediaRep *)&v5 processChangedProperty:?];
  if (*&self->super.mLastPictureFrameLayerRect.size.height)
  {
    if (property <= 534)
    {
      if (property == 532)
      {
        [(TSDAudioRep *)self p_teardownPlayerController];
        [(TSDAudioRep *)self p_setupPlayerControllerIfNecessary];
      }

      else if (property == 534)
      {
        [(TSDAudioRep *)self p_updateStartTime];
      }
    }

    else
    {
      switch(property)
      {
        case 535:
          [(TSDAudioRep *)self p_updateEndTime];
          break;
        case 537:
          [(TSDAudioRep *)self p_updateRepeatMode];
          break;
        case 538:
          [(TSDAudioRep *)self p_updateVolume];
          break;
      }
    }
  }
}

- (void)p_updateRepeatMode
{
  v3 = TSKPlayerRepeatModeForMovieLoopOption([(TSDMovieInfo *)[(TSDAudioRep *)self movieInfo] loopOption]);
  height = self->super.mLastPictureFrameLayerRect.size.height;

  [*&height setRepeatMode:v3];
}

- (void)p_updateVolume
{
  [(TSDAudioRep *)self volume];
  height = self->super.mLastPictureFrameLayerRect.size.height;

  [*&height setVolume:?];
}

- (void)p_updateStartTime
{
  [(TSDMovieInfo *)[(TSDAudioRep *)self movieInfo] startTime];
  height = self->super.mLastPictureFrameLayerRect.size.height;

  [*&height setStartTime:?];
}

- (void)p_updateEndTime
{
  [(TSDMovieInfo *)[(TSDAudioRep *)self movieInfo] endTime];
  height = self->super.mLastPictureFrameLayerRect.size.height;

  [*&height setEndTime:?];
}

- (BOOL)shouldShowSelectionHighlight
{
  isLocked = [(TSDRep *)self isLocked];
  if (isLocked)
  {
    v5.receiver = self;
    v5.super_class = TSDAudioRep;
    LOBYTE(isLocked) = [(TSDStyledRep *)&v5 shouldShowSelectionHighlight];
  }

  return isLocked;
}

- (BOOL)p_isEditingAnimations
{
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(TSDInteractiveCanvasController *)interactiveCanvasController isEditingAnimations];
}

- (void)updateLayerGeometryFromLayout:(id)layout
{
  [(TSDRep *)self layerFrameInScaledCanvasRelativeToParent];
  v9 = TSDCenterOfRect(v5, v6, v7, v8);
  v11 = TSDRectWithCenterAndSize(v9, v10, 130.0);
  v15 = TSDRoundedRect(v11, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = TSDCenterOfRect(v15, v16, v18, v20);
  v24 = v23;
  [layout position];
  if (v26 != v22 || v25 != v24)
  {
    [layout setPosition:{v22, v24}];
  }

  [layout bounds];
  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  if (!CGRectEqualToRect(v32, v33))
  {
    [layout setBounds:{v15, v17, v19, v21}];
  }

  if ([(TSDAudioRep *)self p_shouldShowPlayPauseLayers])
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [layout position];
    v29 = v28 + 31.0;
    [layout position];
    [(TSKAVPlayerController *)self->mPlayerController setPosition:v29];
    [layout position];
    [(CALayer *)self->mPlayPauseButtonLayer setPosition:?];
    v30 = MEMORY[0x277CD9FF0];

    [v30 commit];
  }
}

- (CGRect)boundsForStandardKnobs
{
  v16.receiver = self;
  v16.super_class = TSDAudioRep;
  [(TSDRep *)&v16 boundsForStandardKnobs];
  v4 = v3;
  v6 = v5;
  [(TSDCanvas *)self->super.super.super.mCanvas viewScale];
  v7 = *&self->mDynamicVolume;
  v9 = 1.0 / v8;
  if (v7)
  {
    [v7 hudFrame];
    v11 = v9 * v10;
    v13 = v9 * v12;
  }

  else
  {
    v11 = v9 * 130.0;
    v13 = v9 * 66.0;
    v4 = v4 + (130.0 - v9 * 130.0) * 0.5;
    v6 = v6 + (66.0 - v9 * 66.0) * 0.5;
  }

  v14 = v4;
  v15 = v6;
  result.size.height = v13;
  result.size.width = v11;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)willBeginZooming
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v3 setDelegate:0];
  [v3 setDuration:0.15];
  LODWORD(v4) = 1.0;
  [v3 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v4)}];
  [v3 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allLayers = [(TSDRep *)self allLayers];
  v6 = [allLayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allLayers);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 setOpacity:0.0];
        [v10 addAnimation:v3 forKey:@"fade out"];
      }

      v7 = [allLayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didEndZooming
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v3 setDelegate:0];
  [v3 setDuration:0.15];
  [v3 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
  LODWORD(v4) = 1.0;
  [v3 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v4)}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allLayers = [(TSDRep *)self allLayers];
  v6 = [allLayers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allLayers);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        LODWORD(v7) = 1.0;
        [v11 setOpacity:v7];
        [v11 addAnimation:v3 forKey:@"fade in"];
      }

      v8 = [allLayers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(TSDRep *)self invalidateKnobPositions];
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(TSDAudioRep *)self boundsForStandardKnobs];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)p_updateButtonForPlaying:(BOOL)playing pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  playingCopy = playing;
  if ([(TSDAudioRep *)self p_isEditingAnimations]&& [(TSDRep *)self isSelected]&& playingCopy)
  {
    v7 = @"sf_canvas_audio_animation_pause-N";
    v8 = @"sf_canvas_audio_animation_pause-P";
    goto LABEL_15;
  }

  if ([(TSDAudioRep *)self p_isEditingAnimations]&& [(TSDRep *)self isSelected]&& !playingCopy)
  {
    v7 = @"sf_canvas_audio_animation_play-N";
    v8 = @"sf_canvas_audio_animation_play-P";
    goto LABEL_15;
  }

  if ([(TSDRep *)self isSelected]&& playingCopy)
  {
    v7 = @"sf_canvas_audio_selected_pause-N";
    v8 = @"sf_canvas_audio_selected_pause-P";
    goto LABEL_15;
  }

  if ([(TSDRep *)self isSelected]&& !playingCopy)
  {
    v7 = @"sf_canvas_audio_selected_play-N";
    v8 = @"sf_canvas_audio_selected_play-P";
LABEL_15:
    if (pressedCopy)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_18;
  }

  v11 = @"sf_canvas_audio_play-N";
  if (pressedCopy)
  {
    v11 = @"sf_canvas_audio_play-P";
  }

  v12 = @"sf_canvas_audio_pause-P";
  if (!pressedCopy)
  {
    v12 = @"sf_canvas_audio_pause-N";
  }

  if (playingCopy)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

LABEL_18:
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  -[CALayer setContents:](self->mPlayPauseButtonLayer, "setContents:", [objc_msgSend(MEMORY[0x277D6C2F8] imageNamed:v9 inBundle:{TSDBundle()), "CGImage"}]);
  v10 = MEMORY[0x277CD9FF0];

  [v10 commit];
}

- (float)volume
{
  if (BYTE4(self->mAudioImageLayer) == 1)
  {
    return *&self->mAudioImageLayer;
  }

  movieInfo = [(TSDAudioRep *)self movieInfo];

  [(TSDMovieInfo *)movieInfo volume];
  return result;
}

- (void)dynamicVolumeChangeDidBegin
{
  [(TSDAudioRep *)self volume];
  LODWORD(self->mAudioImageLayer) = v3;
  BYTE4(self->mAudioImageLayer) = 1;
}

- (void)p_setupPlayerControllerIfNecessary
{
  if (!*&self->super.mLastPictureFrameLayerRect.size.height)
  {
    v3 = objc_alloc(MEMORY[0x277CE6598]);
    *&self->super.mLastPictureFrameLayerRect.size.height = -[TSKAVPlayerController initWithPlayer:delegate:]([TSKAVPlayerController alloc], "initWithPlayer:delegate:", [v3 initWithPlayerItem:{objc_msgSend(MEMORY[0x277CE65B0], "playerItemWithAsset:", -[TSDMovieInfo makeAVAsset](-[TSDAudioRep movieInfo](self, "movieInfo"), "makeAVAsset"))}], self);
    [(TSDAudioRep *)self p_updateStartTime];
    [(TSDMovieInfo *)[(TSDAudioRep *)self movieInfo] endTime];
    if (v4 != 0.0)
    {
      [(TSDAudioRep *)self p_updateEndTime];
    }

    [(TSDAudioRep *)self p_updateRepeatMode];
    [(TSDAudioRep *)self p_updateVolume];
    [*&self->super.mLastPictureFrameLayerRect.size.height addObserver:self forKeyPath:@"playing" options:4 context:TSDAudioRepPlayerControllerPlayingObserverContext];
    height = self->super.mLastPictureFrameLayerRect.size.height;
    v6 = *&self->mDynamicVolume;

    [v6 setPlayerController:*&height];
  }
}

- (void)p_teardownPlayerController
{
  height = self->super.mLastPictureFrameLayerRect.size.height;
  if (height != 0.0)
  {
    if ([*&height isPlaying])
    {
      [*&self->super.mLastPictureFrameLayerRect.size.height setPlaying:0];
    }

    [*&self->mDynamicVolume setPlayerController:0];
    [*&self->super.mLastPictureFrameLayerRect.size.height removeObserver:self forKeyPath:@"playing"];
    [*&self->super.mLastPictureFrameLayerRect.size.height teardown];

    self->super.mLastPictureFrameLayerRect.size.height = 0.0;
  }
}

- (void)playerController:(id)controller playbackDidFailWithError:(id)error
{
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)interactiveCanvasController presentError:error completionHandler:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (TSDAudioRepPlayerControllerPlayingObserverContext == context)
  {
    if ([(TSKAVPlayerController *)[(TSDAudioRep *)self playerController:path] isPlaying]&& ![(TSDRep *)self isSelected])
    {
      [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor] setSelectionToRep:self];
    }

    if ([(TSDAudioRep *)self p_shouldShowPlayPauseLayers])
    {
      isPlaying = [(TSKAVPlayerController *)[(TSDAudioRep *)self playerController] isPlaying];

      [(TSDAudioRep *)self p_updateButtonForPlaying:isPlaying pressed:0];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSDAudioRep;
    [(TSDAudioRep *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end