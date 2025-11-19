@interface KNWebVideoRenderer
- (KNBuildRenderer)buildInRenderer;
- (void)animate;
- (void)forceRemoveAnimations;
- (void)interruptAndReset;
- (void)p_didFailWithError:(id)a3;
- (void)p_didStartVideo;
- (void)p_didStopVideo;
- (void)p_scheduleVideoAtStartTime;
- (void)p_startVideo;
- (void)p_stopVideo;
- (void)pauseAnimations;
- (void)registerForAmbientBuildStartCallback:(SEL)a3 target:(id)a4;
- (void)removeAnimationsAndFinish:(BOOL)a3;
- (void)resumeAnimationsIfPaused;
- (void)stopAnimations;
- (void)updateAnimationsForLayerTime:(double)a3;
@end

@implementation KNWebVideoRenderer

- (void)animate
{
  self->_needsToSendAmbientBuildStartCallback = 1;
  self->_needsToSendBuildEndCallback = 1;
  v3 = CACurrentMediaTime();
  if (objc_msgSend_addAnimationsAtLayerTime_(self, v4, v5, v3))
  {

    MEMORY[0x2821F9670](self, sel_p_scheduleVideoAtStartTime, v6);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_p_didFailWithError_, 0);
  }
}

- (void)updateAnimationsForLayerTime:(double)a3
{
  if (self->_startTime <= a3)
  {
    (MEMORY[0x2821F9670])(self, sel_p_startVideo);
  }
}

- (void)removeAnimationsAndFinish:(BOOL)a3
{
  objc_msgSend_p_stopVideo(self, a2, a3);

  MEMORY[0x2821F9670](self, sel_p_didStopVideo, v4);
}

- (void)forceRemoveAnimations
{
  objc_msgSend_p_stopVideo(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_p_didStopVideo, v4);
}

- (void)stopAnimations
{
  objc_msgSend_p_stopVideo(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_p_didStopVideo, v4);
}

- (void)pauseAnimations
{
  if (!self->_animationsPaused)
  {
    if (self->_needsVideoAtStartTime)
    {
      objc_msgSend_p_unscheduleVideoAtStartTime(self, a2, v2);
      self->_playbackAtStartTimePauseTime = CACurrentMediaTime();
    }

    self->_animationsPaused = 1;
  }
}

- (void)resumeAnimationsIfPaused
{
  if (self->_animationsPaused)
  {
    self->_animationsPaused = 0;
    if (self->_needsVideoAtStartTime)
    {
      self->_playbackAtStartTimePauseOffset = CACurrentMediaTime() - self->_playbackAtStartTimePauseTime + self->_playbackAtStartTimePauseOffset;

      MEMORY[0x2821F9670](self, sel_p_scheduleVideoAtStartTime, v3);
    }
  }
}

- (void)interruptAndReset
{
  objc_msgSend_p_stopVideo(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_p_didStopVideo, v4);
}

- (void)registerForAmbientBuildStartCallback:(SEL)a3 target:(id)a4
{
  objc_storeWeak(&self->_ambientBuildStartCallbackTarget, a4);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  self->_ambientBuildCallbackSelector = v6;
}

- (void)p_didStartVideo
{
  self->_hasAmbientBuildStarted = 1;
  if (self->_needsToSendAmbientBuildStartCallback)
  {
    WeakRetained = objc_loadWeakRetained(&self->_ambientBuildStartCallbackTarget);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_ambientBuildStartCallbackTarget);
      v6 = v5;
      ambientBuildCallbackSelector = self->_ambientBuildCallbackSelector;
      if (ambientBuildCallbackSelector)
      {
        [v5 ambientBuildCallbackSelector];
      }

      else
      {
        [v5 0];
      }
    }

    self->_needsToSendAmbientBuildStartCallback = 0;
  }
}

- (void)p_didStopVideo
{
  needsToSendAmbientBuildStartCallback = self->_needsToSendAmbientBuildStartCallback;
  if (!self->_hasAmbientBuildStarted)
  {
    objc_msgSend_p_didStartVideo(self, a2, v2);
  }

  if (self->_needsToSendBuildEndCallback)
  {
    buildEndCallbackTarget = self->super._buildEndCallbackTarget;
    if (buildEndCallbackTarget)
    {
      buildEndCallbackSelector = self->super._buildEndCallbackSelector;
      if (needsToSendAmbientBuildStartCallback)
      {
        if (buildEndCallbackSelector)
        {
          objc_msgSend_performSelector_withObject_afterDelay_(buildEndCallbackTarget, a2, buildEndCallbackSelector, self, 0.0);
        }

        else
        {
          objc_msgSend_performSelector_withObject_afterDelay_(buildEndCallbackTarget, a2, 0, self, 0.0);
        }
      }

      else if (buildEndCallbackSelector)
      {
        [buildEndCallbackTarget buildEndCallbackSelector];
      }

      else
      {
        [buildEndCallbackTarget 0];
      }
    }

    self->_needsToSendBuildEndCallback = 0;
  }

  self->_hasAmbientBuildStarted = 0;
}

- (void)p_startVideo
{
  v4 = objc_msgSend_buildInRenderer(self, a2, v2);
  v9 = v4;
  if (!v4)
  {
    v4 = self;
  }

  v7 = objc_msgSend_textureSet(v4, v5, v6);
  posterImageTextureSet = self->_posterImageTextureSet;
  self->_posterImageTextureSet = v7;
}

- (void)p_stopVideo
{
  objc_msgSend_p_cancelVideoAtStartTime(self, a2, v2);
  posterImageTextureSet = self->_posterImageTextureSet;
  self->_posterImageTextureSet = 0;
}

- (void)p_scheduleVideoAtStartTime
{
  self->_needsVideoAtStartTime = 1;
  if (self->_animationsPaused)
  {
    self->_playbackAtStartTimePauseTime = CACurrentMediaTime();
  }

  else
  {
    v4 = fmax(self->_startTime + self->_playbackAtStartTimePauseOffset - CACurrentMediaTime(), 0.0);

    objc_msgSend_performSelector_withObject_afterDelay_(self, v3, sel_p_showVideoAtStartTime, 0, v4);
  }
}

- (void)p_didFailWithError:(id)a3
{
  objc_msgSend_p_stopVideo(self, a2, a3);

  MEMORY[0x2821F9670](self, sel_p_didStopVideo, v4);
}

- (KNBuildRenderer)buildInRenderer
{
  WeakRetained = objc_loadWeakRetained(&self->_buildInRenderer);

  return WeakRetained;
}

@end