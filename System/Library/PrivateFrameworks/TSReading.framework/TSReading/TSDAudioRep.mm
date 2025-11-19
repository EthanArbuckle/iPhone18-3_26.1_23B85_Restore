@interface TSDAudioRep
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)hitPlayPauseButtonWithPoint:(CGPoint)a3;
- (BOOL)p_isEditingAnimations;
- (BOOL)p_isPlaying;
- (BOOL)shouldShowSelectionHighlight;
- (CGRect)boundsForStandardKnobs;
- (TSDAudioRep)initWithLayout:(id)a3 canvas:(id)a4;
- (TSDMovieInfo)movieInfo;
- (float)volume;
- (id)hitRepChrome:(CGPoint)a3;
- (void)becameNotSelected;
- (void)becameSelected;
- (void)dealloc;
- (void)didEndZooming;
- (void)dynamicVolumeChangeDidBegin;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_setupPlayerControllerIfNecessary;
- (void)p_teardownPlayerController;
- (void)p_updateButtonForPlaying:(BOOL)a3 pressed:(BOOL)a4;
- (void)p_updateEndTime;
- (void)p_updateRepeatMode;
- (void)p_updateStartTime;
- (void)p_updateVolume;
- (void)playerController:(id)a3 playbackDidFailWithError:(id)a4;
- (void)processChangedProperty:(int)a3;
- (void)updateLayerGeometryFromLayout:(id)a3;
- (void)updatePlayButtonForPoint:(CGPoint)a3;
- (void)willBeRemoved;
- (void)willBeginReadMode;
- (void)willBeginZooming;
- (void)willUpdateLayer:(id)a3;
@end

@implementation TSDAudioRep

- (TSDAudioRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSDAudioRep;
  v4 = [(TSDRep *)&v7 initWithLayout:a3 canvas:a4];
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

- (void)willUpdateLayer:(id)a3
{
  if ([(TSDAudioRep *)self p_shouldShowPlayPauseLayers])
  {
    if (!self->mPlayerController)
    {
      v5 = [MEMORY[0x277CD9ED0] layer];
      self->mPlayerController = v5;
      [(TSKAVPlayerController *)v5 setBounds:TSDRectWithSize()];
      [a3 contentsScale];
      [(TSKAVPlayerController *)self->mPlayerController setContentsScale:?];
      [a3 addSublayer:self->mPlayerController];
    }

    if (!self->mPlayPauseButtonLayer)
    {
      v6 = [MEMORY[0x277CD9ED0] layer];
      self->mPlayPauseButtonLayer = v6;
      [(CALayer *)v6 setBounds:TSDRectWithSize()];
      [a3 position];
      [(CALayer *)self->mPlayPauseButtonLayer setPosition:?];
      [a3 contentsScale];
      [(CALayer *)self->mPlayPauseButtonLayer setContentsScale:?];
      [a3 addSublayer:self->mPlayPauseButtonLayer];
    }

    v7 = [(TSDAudioRep *)self p_isPlaying];

    [(TSDAudioRep *)self p_updateButtonForPlaying:v7 pressed:0];
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
    v3 = [(TSDAudioRep *)self playerController];

    [(TSKAVPlayerController *)v3 setPlaying:0];
  }
}

- (BOOL)hitPlayPauseButtonWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(TSDAudioRep *)self p_shouldShowPlayPauseLayers];
  if (v6)
  {
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] convertUnscaledToBoundsPoint:x, y];
    -[TSKAVPlayerController convertPoint:fromLayer:](self->mPlayerController, "convertPoint:fromLayer:", [-[TSDCanvasLayerHosting canvasView](-[TSDInteractiveCanvasController layerHost](-[TSDRep interactiveCanvasController](self "interactiveCanvasController")], v7, v8);
    v10 = v9;
    v12 = v11;
    [(TSKAVPlayerController *)self->mPlayerController bounds];
    v17 = v10;
    v18 = v12;

    LOBYTE(v6) = CGRectContainsPoint(*&v13, *&v17);
  }

  return v6;
}

- (void)updatePlayButtonForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(TSDAudioRep *)self p_shouldShowPlayPauseLayers])
  {
    v6 = [(TSDAudioRep *)self hitPlayPauseButtonWithPoint:x, y];
    v7 = [(TSDAudioRep *)self p_isPlaying];

    [(TSDAudioRep *)self p_updateButtonForPlaying:v7 pressed:v6];
  }
}

- (id)hitRepChrome:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19.receiver = self;
  v19.super_class = TSDAudioRep;
  v6 = [(TSDRep *)&v19 hitRepChrome:?];
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    v7 = [(TSDRep *)self interactiveCanvasController];
    [*&self->mDynamicVolume hudFrame];
    [(TSDInteractiveCanvasController *)v7 convertBoundsToUnscaledRect:?];
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

- (void)processChangedProperty:(int)a3
{
  v5.receiver = self;
  v5.super_class = TSDAudioRep;
  [(TSDMediaRep *)&v5 processChangedProperty:?];
  if (*&self->super.mLastPictureFrameLayerRect.size.height)
  {
    if (a3 <= 534)
    {
      if (a3 == 532)
      {
        [(TSDAudioRep *)self p_teardownPlayerController];
        [(TSDAudioRep *)self p_setupPlayerControllerIfNecessary];
      }

      else if (a3 == 534)
      {
        [(TSDAudioRep *)self p_updateStartTime];
      }
    }

    else
    {
      switch(a3)
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
  v3 = [(TSDRep *)self isLocked];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = TSDAudioRep;
    LOBYTE(v3) = [(TSDStyledRep *)&v5 shouldShowSelectionHighlight];
  }

  return v3;
}

- (BOOL)p_isEditingAnimations
{
  v2 = [(TSDRep *)self interactiveCanvasController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(TSDInteractiveCanvasController *)v2 isEditingAnimations];
}

- (void)updateLayerGeometryFromLayout:(id)a3
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
  [a3 position];
  if (v26 != v22 || v25 != v24)
  {
    [a3 setPosition:{v22, v24}];
  }

  [a3 bounds];
  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  if (!CGRectEqualToRect(v32, v33))
  {
    [a3 setBounds:{v15, v17, v19, v21}];
  }

  if ([(TSDAudioRep *)self p_shouldShowPlayPauseLayers])
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [a3 position];
    v29 = v28 + 31.0;
    [a3 position];
    [(TSKAVPlayerController *)self->mPlayerController setPosition:v29];
    [a3 position];
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
  v5 = [(TSDRep *)self allLayers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 setOpacity:0.0];
        [v10 addAnimation:v3 forKey:@"fade out"];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v5 = [(TSDRep *)self allLayers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        LODWORD(v7) = 1.0;
        [v11 setOpacity:v7];
        [v11 addAnimation:v3 forKey:@"fade in"];
      }

      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(TSDRep *)self invalidateKnobPositions];
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSDAudioRep *)self boundsForStandardKnobs];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)p_updateButtonForPlaying:(BOOL)a3 pressed:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(TSDAudioRep *)self p_isEditingAnimations]&& [(TSDRep *)self isSelected]&& v5)
  {
    v7 = @"sf_canvas_audio_animation_pause-N";
    v8 = @"sf_canvas_audio_animation_pause-P";
    goto LABEL_15;
  }

  if ([(TSDAudioRep *)self p_isEditingAnimations]&& [(TSDRep *)self isSelected]&& !v5)
  {
    v7 = @"sf_canvas_audio_animation_play-N";
    v8 = @"sf_canvas_audio_animation_play-P";
    goto LABEL_15;
  }

  if ([(TSDRep *)self isSelected]&& v5)
  {
    v7 = @"sf_canvas_audio_selected_pause-N";
    v8 = @"sf_canvas_audio_selected_pause-P";
    goto LABEL_15;
  }

  if ([(TSDRep *)self isSelected]&& !v5)
  {
    v7 = @"sf_canvas_audio_selected_play-N";
    v8 = @"sf_canvas_audio_selected_play-P";
LABEL_15:
    if (v4)
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
  if (v4)
  {
    v11 = @"sf_canvas_audio_play-P";
  }

  v12 = @"sf_canvas_audio_pause-P";
  if (!v4)
  {
    v12 = @"sf_canvas_audio_pause-N";
  }

  if (v5)
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

  v5 = [(TSDAudioRep *)self movieInfo];

  [(TSDMovieInfo *)v5 volume];
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

- (void)playerController:(id)a3 playbackDidFailWithError:(id)a4
{
  v5 = [(TSDRep *)self interactiveCanvasController];

  [(TSDInteractiveCanvasController *)v5 presentError:a4 completionHandler:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (TSDAudioRepPlayerControllerPlayingObserverContext == a6)
  {
    if ([(TSKAVPlayerController *)[(TSDAudioRep *)self playerController:a3] isPlaying]&& ![(TSDRep *)self isSelected])
    {
      [(TSDCanvasEditor *)[(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] canvasEditor] setSelectionToRep:self];
    }

    if ([(TSDAudioRep *)self p_shouldShowPlayPauseLayers])
    {
      v7 = [(TSKAVPlayerController *)[(TSDAudioRep *)self playerController] isPlaying];

      [(TSDAudioRep *)self p_updateButtonForPlaying:v7 pressed:0];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSDAudioRep;
    [(TSDAudioRep *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end