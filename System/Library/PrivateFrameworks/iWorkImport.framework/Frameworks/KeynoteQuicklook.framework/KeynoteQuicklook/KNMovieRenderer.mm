@interface KNMovieRenderer
+ (id)movieInfoForMovieTimelineMovieIdentifier:(id)a3;
+ (id)movieTimelineMovieIdentifierForMovieInfo:(id)a3;
- (BOOL)addAnimationsAtLayerTime:(double)a3;
- (CALayer)offscreenVideoLayer;
- (CGImage)p_copyCurrentVideoFrameImage;
- (KNMovieRenderer)initWithAnimatedBuild:(id)a3 info:(id)a4 buildStage:(id)a5 animatedSlideView:(id)a6;
- (NSCopying)movieTimelineMovieIdentifier;
- (TSDMovieInfo)movieInfo;
- (void)animate;
- (void)applyMovieControl:(int64_t)a3;
- (void)dealloc;
- (void)interruptAndReset;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_applyActionEffect:(id)a3;
- (void)p_cancelPlaybackAtStartTime;
- (void)p_didEndMoviePlayback;
- (void)p_didStartMoviePlayback;
- (void)p_playbackDidFailWithError:(id)a3;
- (void)p_schedulePlaybackAtStartTime;
- (void)p_setupPlayerController;
- (void)p_setupReflectionAndMaskingOnMovieTexture:(id)a3 strokeTexture:(id)a4 reflectionMaskTexture:(id)a5 frameMaskTexture:(id)a6;
- (void)p_showVideoLayer;
- (void)p_startPlaybackAtStartTime;
- (void)p_teardownUpdatingTexture:(BOOL)a3;
- (void)pauseAnimations;
- (void)playbackDidStopForPlayerController:(id)a3;
- (void)registerForAmbientBuildStartCallback:(SEL)a3 target:(id)a4;
- (void)resumeAnimationsIfPaused;
- (void)setBuildInRenderer:(id)a3;
- (void)updateAnimationsForLayerTime:(double)a3;
@end

@implementation KNMovieRenderer

- (KNMovieRenderer)initWithAnimatedBuild:(id)a3 info:(id)a4 buildStage:(id)a5 animatedSlideView:(id)a6
{
  v7.receiver = self;
  v7.super_class = KNMovieRenderer;
  result = [(KNBuildRenderer *)&v7 initWithAnimatedBuild:a3 info:a4 buildStage:a5 animatedSlideView:a6];
  if (result)
  {
    *(result + 312) |= 0x80u;
    result->super._shouldUseMagicMoveTextures = 1;
  }

  return result;
}

- (void)dealloc
{
  objc_msgSend_teardown(self->_playerController, a2, v2);

  videoLayer = self->_videoLayer;
  if (videoLayer)
  {
    if ((*(self + 312) & 8) != 0)
    {
      objc_msgSend_removeObserver_forKeyPath_context_(videoLayer, v4, self, @"readyForDisplay", qword_280A3B740);
      *(self + 312) &= ~8u;
      videoLayer = self->_videoLayer;
    }

    objc_msgSend_removeFromSuperlayer(videoLayer, v4, v5);
  }

  v7.receiver = self;
  v7.super_class = KNMovieRenderer;
  [(KNBuildRenderer *)&v7 dealloc];
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  objc_msgSend_info(self, v3, v4);

  return TSUCheckedDynamicCast();
}

- (void)setBuildInRenderer:(id)a3
{
  if (objc_msgSend_buildInRenderer(self, a2, a3) != a3)
  {

    v5 = objc_alloc(MEMORY[0x277D81370]);
    self->_buildInRendererReference = objc_msgSend_initWithObject_(v5, v6, a3);
  }
}

- (void)animate
{
  *(self + 312) |= 2u;
  *(self + 312) |= 4u;
  objc_msgSend_p_setupPlayerController(self, a2, v2);
  v4 = CACurrentMediaTime();
  if (objc_msgSend_addAnimationsAtLayerTime_(self, v5, v6, v4))
  {

    MEMORY[0x2821F9670](self, sel_p_schedulePlaybackAtStartTime, v7);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_p_playbackDidFailWithError_, 0);
  }
}

- (BOOL)addAnimationsAtLayerTime:(double)a3
{
  v6 = objc_msgSend_movieInfo(self, a2, v3);
  v9 = objc_msgSend_movieData(v6, v7, v8);
  if (v6)
  {
    isReadable = objc_msgSend_isReadable(v9, v10, v11);
    if (isReadable)
    {
      self->_startTime = a3;
      objc_msgSend_p_setupVideoLayer(self, v13, v14);
      LOBYTE(isReadable) = 1;
    }
  }

  else
  {
    LOBYTE(isReadable) = 0;
  }

  return isReadable;
}

- (void)updateAnimationsForLayerTime:(double)a3
{
  if (self->_startTime <= a3)
  {
    objc_msgSend_p_startMoviePlaybackIfNeeded(self, a2, v3);
  }
}

- (void)pauseAnimations
{
  if (!self->super.super._areAnimationsPaused)
  {
    if (self->_playerController)
    {
      if (objc_msgSend_shouldAutomaticallyPlayMovies(self->super.super._session, a2, v2))
      {
        *(self + 313) = *(self + 313) & 0xFE | objc_msgSend_isPlaying(self->_playerController, v4, v5);
        objc_msgSend_setPlaying_(self->_playerController, v6, 0);
      }

      if ((*(self + 312) & 0x10) != 0)
      {
        objc_msgSend_p_unschedulePlaybackAtStartTime(self, v4, v5);
        self->_playbackAtStartTimePauseTime = CACurrentMediaTime();
      }
    }

    self->super.super._areAnimationsPaused = 1;
  }
}

- (void)resumeAnimationsIfPaused
{
  if (self->super.super._areAnimationsPaused)
  {
    self->super.super._areAnimationsPaused = 0;
    if (self->_playerController)
    {
      if (objc_msgSend_shouldAutomaticallyPlayMovies(self->super.super._session, a2, v2))
      {
        objc_msgSend_setPlaying_(self->_playerController, v4, *(self + 313) & 1);
        *(self + 313) &= ~1u;
      }

      if ((*(self + 312) & 0x10) != 0)
      {
        self->_playbackAtStartTimePauseOffset = CACurrentMediaTime() - self->_playbackAtStartTimePauseTime + self->_playbackAtStartTimePauseOffset;

        MEMORY[0x2821F9670](self, sel_p_schedulePlaybackAtStartTime, v5);
      }
    }
  }
}

- (void)interruptAndReset
{
  v42 = *MEMORY[0x277D85DE8];
  objc_msgSend_p_teardownUpdatingTexture_(self, a2, 0);
  session = self->super.super._session;
  info = self->super._info;
  v7 = objc_msgSend_canvas(self->super.super._ASV, v5, v6);
  v9 = objc_msgSend_repForInfo_onCanvas_(session, v8, info, v7);
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (v10)
  {
    objc_msgSend_setAlternatePosterImage_(v10, v11, 0);
    self->super._shouldUseMagicMoveTextures = 0;
    ASV = self->super.super._ASV;
    v15 = objc_msgSend_textureDescription(self, v13, v14);
    objc_msgSend_setTexture_forRep_forDescription_(ASV, v16, 0, v9, v15);
    self->super._shouldUseMagicMoveTextures = 1;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = objc_msgSend_model(self->super.super._ASV, v17, v18, 0);
    v22 = objc_msgSend_animatedBuilds(v19, v20, v21);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v37, v41, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v38;
      do
      {
        v29 = 0;
        do
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v37 + 1) + 8 * v29);
          v31 = objc_msgSend_model(self->super.super._ASV, v25, v26);
          v33 = objc_msgSend_rendererForAnimatedBuild_(v31, v32, v30);
          v34 = self->super._info;
          if (v34 == objc_msgSend_info(v33, v35, v36))
          {
            objc_msgSend_teardown(v33, v25, v26);
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v37, v41, 16);
      }

      while (v27);
    }
  }
}

- (void)registerForAmbientBuildStartCallback:(SEL)a3 target:(id)a4
{
  self->_movieStartCallbackTarget = a4;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  self->_movieStartCallbackSelector = v4;
}

- (void)p_didStartMoviePlayback
{
  *(self + 312) |= 1u;
  if ((*(self + 312) & 2) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      movieStartCallbackTarget = self->_movieStartCallbackTarget;
      movieStartCallbackSelector = self->_movieStartCallbackSelector;
      if (movieStartCallbackSelector)
      {
        objc_msgSend_performSelector_withObject_(movieStartCallbackTarget, v3, movieStartCallbackSelector, self);
      }

      else
      {
        objc_msgSend_performSelector_withObject_(movieStartCallbackTarget, v3, 0, self);
      }
    }

    *(self + 312) &= ~2u;
  }
}

- (void)p_didEndMoviePlayback
{
  v4 = *(self + 312);
  if ((v4 & 1) == 0)
  {
    objc_msgSend_p_didStartMoviePlayback(self, a2, v2);
  }

  if ((*(self + 312) & 4) != 0)
  {
    buildEndCallbackTarget = self->super._buildEndCallbackTarget;
    if (buildEndCallbackTarget)
    {
      buildEndCallbackSelector = self->super._buildEndCallbackSelector;
      if ((v4 & 2) != 0)
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
        objc_msgSend_performSelector_withObject_(buildEndCallbackTarget, a2, buildEndCallbackSelector, self);
      }

      else
      {
        objc_msgSend_performSelector_withObject_(buildEndCallbackTarget, a2, 0, self);
      }
    }

    *(self + 312) &= ~4u;
  }

  *(self + 312) &= ~1u;
}

- (void)p_setupPlayerController
{
  if (self->_playerController)
  {
    v2 = MEMORY[0x277D81150];
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNMovieRenderer p_setupPlayerController]");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMovieRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 381, 0, "expected nil value for '%{public}s'", "_playerController");
    v9 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v9, v7, v8);
  }
}

- (void)p_schedulePlaybackAtStartTime
{
  *(self + 312) |= 0x10u;
  if (self->super.super._areAnimationsPaused)
  {
    self->_playbackAtStartTimePauseTime = CACurrentMediaTime();
  }

  else
  {
    v4 = fmax(self->_startTime + self->_playbackAtStartTimePauseOffset - CACurrentMediaTime(), 0.0);

    objc_msgSend_performSelector_withObject_afterDelay_(self, v3, sel_p_startPlaybackAtStartTime, 0, v4);
  }
}

- (void)p_startPlaybackAtStartTime
{
  *(self + 312) &= ~0x10u;
  objc_msgSend_p_startMoviePlaybackIfNeeded(self, a2, v2);
  if ((*(self + 312) & 0x20) != 0)
  {
    v7 = *(self + 312);
    *(self + 312) = v7 & 0xDF;
    *(self + 312) &= ~0x40u;
    if ((v7 & 0x40) == 0)
    {
      return;
    }
  }

  else
  {
    shouldAutomaticallyPlayMovies = objc_msgSend_shouldAutomaticallyPlayMovies(self->super.super._session, v4, v5);
    *(self + 312) &= ~0x20u;
    *(self + 312) &= ~0x40u;
    if (!shouldAutomaticallyPlayMovies)
    {
      return;
    }
  }

  playerController = self->_playerController;

  objc_msgSend_setPlaying_(playerController, v4, 1);
}

- (void)p_cancelPlaybackAtStartTime
{
  objc_msgSend_p_unschedulePlaybackAtStartTime(self, a2, v2);
  *(self + 312) &= ~0x10u;
  *(self + 312) &= ~0x20u;
  *(self + 312) &= ~0x40u;
}

- (void)p_showVideoLayer
{
  v3 = self;
  v157 = *MEMORY[0x277D85DE8];
  if (!self->_videoLayer)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNMovieRenderer p_showVideoLayer]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMovieRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 591, 0, "invalid nil value for '%{public}s'", "_videoLayer");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = 0x277CD9000uLL;
  objc_msgSend_begin(MEMORY[0x277CD9FF0], a2, v2);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v12, 1);
  objc_msgSend_setSublayers_(v3->super._parentLayer, v13, 0);
  parentLayer = v3->super._parentLayer;
  v17 = objc_msgSend_layer(v3->super._textureSet, v15, v16);
  objc_msgSend_addSublayer_(parentLayer, v18, v17);
  objc_msgSend_textureAngle(v3->super._textureSet, v19, v20);
  v24 = fabs(v23) < 0.00999999978 || v23 == 0.0;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = objc_msgSend_visibleTexturesIncludingCaptions(v3->super._textureSet, v21, v22);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v152, v156, 16);
  if (!v28)
  {
    v102 = 0;
    v149 = 0;
LABEL_51:
    v103 = MEMORY[0x277D81150];
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[KNMovieRenderer p_showVideoLayer]");
    v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMovieRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v107, v104, v106, 678, 0, "invalid nil value for '%{public}s'", "movieObjectTexture");
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v109);
    v100 = 0;
    v101 = 1;
    goto LABEL_52;
  }

  v146 = 0;
  v29 = v3;
  v148 = 0;
  v149 = 0;
  v147 = 0;
  v30 = *MEMORY[0x277CBF3A8];
  v31 = *(MEMORY[0x277CBF3A8] + 8);
  v32 = *v153;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v153 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v152 + 1) + 8 * i);
      v35 = objc_msgSend_textureType(v34, v26, v27);
      v38 = 0;
      v39 = 1;
      if (v35 > 8)
      {
        if (v35 <= 12)
        {
          if ((v35 - 9) < 2)
          {
            goto LABEL_28;
          }

          if (v35 != 11)
          {
            if (v35 == 12)
            {
              v47 = objc_msgSend_layer(v34, v36, v37);
              objc_msgSend_setHidden_(v47, v48, 0);
              v38 = 0;
              v42 = 0;
              v149 = v34;
              goto LABEL_39;
            }

            goto LABEL_32;
          }

          v73 = objc_msgSend_layer(v34, v36, v37);
          objc_msgSend_setHidden_(v73, v74, 1);
        }

        else
        {
          if (v35 <= 14)
          {
            if (v35 != 13)
            {
              goto LABEL_28;
            }

            v56 = objc_msgSend_layer(v34, v36, v37);
            objc_msgSend_setHidden_(v56, v57, 0);
            v38 = 0;
            v42 = 1;
            v147 = v34;
            goto LABEL_39;
          }

          if ((v35 - 15) >= 2)
          {
            if (v35 == 17)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }

          v43 = objc_msgSend_layer(v34, v36, v37);
          objc_msgSend_setHidden_(v43, v44, 0);
          v39 = 0;
        }

        v38 = 0;
        v42 = 1;
        goto LABEL_39;
      }

      if (v35 <= 4)
      {
        if ((v35 - 2) < 3)
        {
          v40 = objc_msgSend_layer(v34, v36, v37);
          objc_msgSend_setHidden_(v40, v41, 0);
          v38 = 0;
          v42 = 0;
          goto LABEL_39;
        }

        if (v35 < 2)
        {
LABEL_28:
          v49 = MEMORY[0x277D81150];
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[KNMovieRenderer p_showVideoLayer]");
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNMovieRenderer.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 662, 0, "unexpected texture type for movie textures");
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
          v38 = 0;
          v42 = 0;
          v39 = 1;
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      if ((v35 - 6) < 2)
      {
        goto LABEL_28;
      }

      if (v35 != 5)
      {
        if (v35 == 8)
        {
          v45 = objc_msgSend_layer(v34, v36, v37);
          objc_msgSend_setHidden_(v45, v46, 0);
          v42 = 0;
          v38 = 1;
          v148 = v34;
          goto LABEL_39;
        }

LABEL_32:
        v42 = 0;
        goto LABEL_39;
      }

      v58 = objc_msgSend_layer(v34, v36, v37);
      objc_msgSend_setHidden_(v58, v59, 0);
      if (!v24)
      {
        objc_msgSend_frame(v34, v36, v37);
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v67 = v66;
        objc_msgSend_textureAngle(v29->super._textureSet, v68, v69);
        CGAffineTransformMakeRotation(&v151, -v70);
        v158.origin.x = v61;
        v158.origin.y = v63;
        v158.size.width = v65;
        v158.size.height = v67;
        CGRectApplyAffineTransform(v158, &v151);
        TSUMultiplySizeScalar();
        v30 = v71;
        v31 = v72;
      }

      v38 = 0;
      v42 = 0;
      v146 = v34;
LABEL_39:
      objc_msgSend_textureOpacity(v34, v36, v37);
      v76 = v75;
      v79 = objc_msgSend_layer(v34, v77, v78);
      *&v80 = v76;
      objc_msgSend_setOpacity_(v79, v81, v82, v80);
      if (((v24 | v42) & 1) == 0)
      {
        v83 = objc_msgSend_layer(v34, v26, v27);
        v84 = MEMORY[0x277CCABB0];
        objc_msgSend_textureAngle(v29->super._textureSet, v85, v86);
        v90 = objc_msgSend_numberWithDouble_(v84, v88, v89, -v87);
        objc_msgSend_setValue_forKeyPath_(v83, v91, v90, @"transform.rotation.z");
      }

      if (v38)
      {
        objc_msgSend_center(v29->super._textureSet, v26, v27);
        objc_msgSend_adjustAnchorRelativeToCenterOfRotation_atEventIndex_(v34, v92, 0x7FFFFFFFLL);
      }

      if (((v24 | v39) & 1) == 0)
      {
        objc_msgSend_offset(v34, v26, v27);
        v94 = v93 - v30;
        objc_msgSend_offset(v34, v95, v96);
        objc_msgSend_setOffset_(v34, v98, v99, v94, v97 - v31);
      }
    }

    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v152, v156, 16);
  }

  while (v28);
  v100 = v146;
  if (!v146)
  {
    v3 = v29;
    v11 = 0x277CD9000uLL;
    v102 = v147;
    v28 = v148;
    goto LABEL_51;
  }

  v101 = 0;
  v3 = v29;
  v11 = 0x277CD9000;
  v102 = v147;
  v28 = v148;
LABEL_52:
  v110 = objc_msgSend_layer(v100, v26, v27);
  objc_msgSend_setHidden_(v110, v111, 1);
  v114 = objc_msgSend_layer(v3->super._textureSet, v112, v113);
  v115 = MEMORY[0x277CCAE60];
  v118 = objc_msgSend_layer(v100, v116, v117);
  v120 = objc_msgSend_valueWithNonretainedObject_(v115, v119, v118);
  objc_msgSend_setValue_forKey_(v114, v121, v120, *MEMORY[0x277D805E0]);
  if (v102 | v28 && objc_msgSend_shouldShowVideoReflectionsAndMasks(v3->super.super._session, v122, v123))
  {
    objc_msgSend_p_setupReflectionAndMaskingOnMovieTexture_strokeTexture_reflectionMaskTexture_frameMaskTexture_(v3, v122, v100, v28, v102, v149);
  }

  else if ((v101 & 1) == 0)
  {
    v124 = objc_msgSend_layer(v3->super._textureSet, v122, v123);
    videoLayer = v3->_videoLayer;
    v128 = objc_msgSend_layer(v100, v126, v127);
    objc_msgSend_insertSublayer_above_(v124, v129, videoLayer, v128);
    v132 = objc_msgSend_layer(v100, v130, v131);
    objc_msgSend_setHidden_(v132, v133, 1);
  }

  v134 = objc_msgSend_layer(v3->super._textureSet, v122, v123);
  v136 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v135, v3->_videoLayer);
  objc_msgSend_setValue_forKey_(v134, v137, v136, *MEMORY[0x277D805E8]);
  objc_msgSend_commit(*(v11 + 4080), v138, v139);
  v142 = objc_msgSend_layer(v3->super._textureSet, v140, v141);
  objc_msgSend_setAlternateLayer_(v3->super._textureSet, v143, v142);
  objc_msgSend_p_didStartMoviePlayback(v3, v144, v145);
}

- (void)p_setupReflectionAndMaskingOnMovieTexture:(id)a3 strokeTexture:(id)a4 reflectionMaskTexture:(id)a5 frameMaskTexture:(id)a6
{
  v11 = objc_msgSend_layer(self->super._textureSet, a2, a3);
  objc_msgSend_frame(v11, v12, v13);
  if (a5)
  {
    v16 = objc_msgSend_layer(a5, v14, v15);
    objc_msgSend_frame(v16, v17, v18);
    v21 = objc_msgSend_layer(a5, v19, v20);
    objc_msgSend_frame(v21, v22, v23);
  }

  v24 = (a5 | a6);
  v25 = objc_msgSend_layer(self->super._textureSet, v14, v15);
  objc_msgSend_frame(v25, v26, v27);
  TSURectWithOriginAndSize();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (a5 | a6 && (v24 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v28, v29), objc_msgSend_setFrame_(v24, v38, v39, v31, v33, v35, v37), v24))
  {
    if (a6)
    {
      v40 = objc_msgSend_layer(a6, v28, v29);
      objc_msgSend_addSublayer_(v24, v41, v40);
    }

    else
    {
      v45 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v28, v29);
      v48 = objc_msgSend_blackColor(MEMORY[0x277D81180], v46, v47);
      v51 = objc_msgSend_CGColor(v48, v49, v50);
      objc_msgSend_setBackgroundColor_(v45, v52, v51);
      v55 = objc_msgSend_layer(self->super._textureSet, v53, v54);
      objc_msgSend_bounds(v55, v56, v57);
      objc_msgSend_setFrame_(v45, v58, v59);
      videoLayer = self->_videoLayer;
      if (videoLayer)
      {
        objc_msgSend_transform(videoLayer, v60, v61);
      }

      else
      {
        memset(&v137, 0, sizeof(v137));
      }

      v136 = v137;
      objc_msgSend_setTransform_(v45, v60, &v136);
      objc_msgSend_addSublayer_(v24, v63, v45);
    }

    if (a5)
    {
      v64 = objc_msgSend_layer(a5, v42, v43);
      objc_msgSend_addSublayer_(v24, v65, v64);
      v68 = objc_msgSend_layer(a5, v66, v67);
      objc_msgSend_setHidden_(v68, v69, 0);
    }

    objc_msgSend_setShouldRasterize_(v24, v42, 1);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v70 = objc_msgSend_layer(a3, v28, v29);
  objc_msgSend_setHidden_(v70, v71, 1);
  v74 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v72, v73);
  objc_msgSend_setFrame_(v74, v75, v76, v31, v33, v35, v37);
  if ((v44 & 1) == 0)
  {
    objc_msgSend_setMask_(v74, v77, v24);
  }

  if (a5)
  {
    v79 = objc_msgSend_layer(MEMORY[0x277CD9F48], v77, v78);
    v82 = objc_msgSend_layer(self->super._textureSet, v80, v81);
    objc_msgSend_bounds(v82, v83, v84);
    objc_msgSend_setFrame_(v79, v85, v86);
    objc_msgSend_addSublayer_(v79, v87, self->_videoLayer);
    if (a4)
    {
      v90 = objc_msgSend_layer(a4, v88, v89);
      objc_msgSend_addSublayer_(v79, v91, v90);
    }

    objc_msgSend_setInstanceCount_(v79, v88, 2);
    v94 = objc_msgSend_movieInfo(self, v92, v93);
    session = self->super.super._session;
    v98 = objc_msgSend_canvas(self->super.super._ASV, v96, v97);
    v100 = objc_msgSend_repForInfo_onCanvas_(session, v99, v94, v98);
    objc_msgSend_naturalBounds(v100, v101, v102);
    objc_msgSend_convertNaturalRectToUnscaledCanvas_(v100, v103, v104);
    v107 = objc_msgSend_canvas(self->super.super._ASV, v105, v106);
    objc_msgSend_viewScale(v107, v108, v109);
    TSUMultiplyRectScalar();
    v111 = v110;
    v114 = objc_msgSend_canvas(self->super.super._ASV, v112, v113);
    objc_msgSend_viewScale(v114, v115, v116);
    TSUAliasRound();
    v118 = v117;
    v121 = objc_msgSend_canvas(self->super.super._ASV, v119, v120);
    objc_msgSend_viewScale(v121, v122, v123);
    memset(&v136, 0, sizeof(v136));
    CATransform3DMakeTranslation(&v136, 0.0, v111 + v118 / v124, 0.0);
    v134 = v136;
    CATransform3DRotate(&v135, &v134, 3.14159265, 1.0, 0.0, 0.0);
    v136 = v135;
    objc_msgSend_setInstanceTransform_(v79, v125, &v135);
    objc_msgSend_addSublayer_(v74, v126, v79);
  }

  else
  {
    objc_msgSend_addSublayer_(v74, v77, self->_videoLayer);
  }

  v129 = objc_msgSend_layer(self->super._textureSet, v127, v128);
  v132 = objc_msgSend_layer(a3, v130, v131);
  objc_msgSend_insertSublayer_above_(v129, v133, v74, v132);
}

- (void)p_teardownUpdatingTexture:(BOOL)a3
{
  v124 = *MEMORY[0x277D85DE8];
  if ((*(self + 313) & 2) == 0)
  {
    v3 = a3;
    objc_msgSend_p_cancelPlaybackAtStartTime(self, a2, a3);
    if ((*(self + 312) & 8) != 0)
    {
      objc_msgSend_removeObserver_forKeyPath_context_(self->_videoLayer, v5, self, @"readyForDisplay", qword_280A3B740);
      *(self + 312) &= ~8u;
    }

    objc_msgSend_stopSynchronously(self->_playerController, v5, v6);
    v9 = objc_msgSend_layer(self->super._textureSet, v7, v8);
    objc_msgSend_setValue_forKey_(v9, v10, 0, *MEMORY[0x277D805E0]);
    v13 = objc_msgSend_layer(self->super._textureSet, v11, v12);
    objc_msgSend_setValue_forKey_(v13, v14, 0, *MEMORY[0x277D805E8]);
    objc_msgSend_setAlternateLayer_(self->super._textureSet, v15, 0);
    v18 = objc_msgSend_layer(self->super._textureSet, v16, v17);
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v21 = sub_275DB197C;
    v119 = sub_275DB197C;
    v120 = &unk_27A698A70;
    v121 = self;
    if (v18)
    {
      v22 = v18;
      if ((*(self + 312) & 1) != 0 || !self->_playerController && self->_videoLayer)
      {
        objc_msgSend_begin(MEMORY[0x277CD9FF0], v19, v20);
        objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v23, 1);
        v26 = objc_msgSend_movieInfo(self, v24, v25);
        session = self->super.super._session;
        info = self->super._info;
        v31 = objc_msgSend_canvas(self->super.super._ASV, v29, v30);
        v35 = objc_msgSend_repForInfo_onCanvas_(session, v32, info, v31);
        v36 = 0;
        v37 = 0;
        if (v3 && v35)
        {
          if ((objc_msgSend_isAudioOnly(v26, v33, v34) & 1) != 0 || (objc_msgSend_isStreaming(v26, v33, v34) & 1) != 0 || !objc_msgSend_isShowLayerVisible(self->super.super._session, v33, v34))
          {
            v37 = 0;
            v36 = 0;
          }

          else
          {
            v36 = objc_msgSend_p_copyCurrentVideoFrameImage(self, v33, v34);
            v37 = 1;
          }
        }

        v109 = v37;
        v107 = v36;
        v108 = v26;
        if (objc_msgSend_sublayers(v22, v33, v34) && v35 && (objc_msgSend_isAudioOnly(v26, v38, v39) & 1) == 0)
        {
          v40 = objc_msgSend_superlayer(self->_videoLayer, v38, v39);
          v43 = objc_msgSend_superlayer(v40, v41, v42);
          if (objc_msgSend_mask(v43, v44, v45))
          {
            v106 = v43;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v46 = objc_msgSend_visibleTextures(self->super._textureSet, v38, v39);
            v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v114, v123, 16);
            if (v48)
            {
              v51 = v48;
              v52 = *v115;
              do
              {
                for (i = 0; i != v51; ++i)
                {
                  if (*v115 != v52)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v54 = objc_msgSend_layer(*(*(&v114 + 1) + 8 * i), v49, v50);
                  objc_msgSend_addSublayer_(v22, v55, v54);
                }

                v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v114, v123, 16);
              }

              while (v51);
            }

            objc_msgSend_removeFromSuperlayer(v106, v49, v50);
          }

          else
          {
            videoLayer = self->_videoLayer;
            if (videoLayer)
            {
              objc_msgSend_removeFromSuperlayer(videoLayer, v38, v39);
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v98 = objc_msgSend_visibleTextures(self->super._textureSet, v96, v97);
              v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v110, v122, 16);
              if (v100)
              {
                v101 = v100;
                v102 = *v111;
                do
                {
                  for (j = 0; j != v101; ++j)
                  {
                    if (*v111 != v102)
                    {
                      objc_enumerationMutation(v98);
                    }

                    v104 = objc_msgSend_layer(*(*(&v110 + 1) + 8 * j), v38, v39);
                    objc_msgSend_setHidden_(v104, v105, 0);
                  }

                  v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v38, &v110, v122, 16);
                }

                while (v101);
              }
            }
          }
        }

        if (v109)
        {
          if (v107)
          {
            objc_opt_class();
            v56 = TSUCheckedDynamicCast();
            objc_msgSend_setAlternatePosterImage_(v56, v57, v107);
            CGImageRelease(v107);
          }

          self->super._shouldUseMagicMoveTextures = 0;
          self->super._isNonCachedTextureValid = 0;
          shouldRender = objc_msgSend_nonCachedTextureSetForRep_description_shouldRender_(self->super.super._ASV, v38, v35, 0, 1);
          ASV = self->super.super._ASV;
          v62 = objc_msgSend_textureDescription(self, v60, v61);
          objc_msgSend_setTexture_forRep_forDescription_(ASV, v63, shouldRender, v35, v62);
          self->super._shouldUseMagicMoveTextures = 1;
          if (shouldRender)
          {
            objc_msgSend_setCompletionBlock_(MEMORY[0x277CD9FF0], v38, v118);
            *(self + 313) |= 2u;
            objc_msgSend_setLayerGeometry(shouldRender, v64, v65);
            v68 = objc_msgSend_currentEventIndex(self->super.super._ASV, v66, v67);
            v71 = v68 + objc_msgSend_hasEventStarted(self->super.super._ASV, v69, v70);
            v74 = objc_msgSend_model(self->super.super._ASV, v72, v73);
            v76 = objc_msgSend_actionEffectForDrawable_atBeginningOfEvent_(v74, v75, v108, v71);
            v79 = objc_msgSend_animationContext(self->super.super._session, v77, v78);
            objc_msgSend_viewScale(v79, v80, v81);
            objc_msgSend_applyActionEffect_viewScale_isMagicMove_shouldBake_applyScaleOnly_ignoreScale_shouldCheckActionKeys_eventIndex_(shouldRender, v82, v76, 0, 0, 0, 0, 0, 0);
            v85 = objc_msgSend_superlayer(v22, v83, v84);
            v88 = objc_msgSend_layer(shouldRender, v86, v87);
            objc_msgSend_replaceSublayer_with_(v85, v89, v22, v88);
            objc_msgSend_teardown(self->super._textureSet, v90, v91);
            v92 = shouldRender;

            self->super._textureSet = shouldRender;
            objc_msgSend_commit(MEMORY[0x277CD9FF0], v93, v94);
            return;
          }
        }

        objc_msgSend_commit(MEMORY[0x277CD9FF0], v38, v39);
        v21 = v119;
      }
    }

    (v21)(v118);
  }
}

- (CGImage)p_copyCurrentVideoFrameImage
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_contents(self->_videoLayer, v3, v4);

    return CGImageRetain(v5);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return MEMORY[0x2821F9670](self, sel_p_copyCurrentVideoFrameImageUsingAVAssetImageGenerator, v7);
    }

    else
    {
      videoLayer = self->_videoLayer;

      return MEMORY[0x2821F9670](videoLayer, sel_newRasterizedImageRef, v7);
    }
  }
}

- (void)applyMovieControl:(int64_t)a3
{
  if (a3 == 1)
  {
    objc_msgSend_p_cancelPlaybackAtStartTime(self, a2, 1);
    if (self->_playerController)
    {
      objc_msgSend_p_startMoviePlaybackIfNeeded(self, v4, v5);
      v9 = objc_msgSend_isPlaying(self->_playerController, v6, v7) ^ 1;
      playerController = self->_playerController;

      objc_msgSend_setPlaying_(playerController, v8, v9);
    }

    else
    {
      *(self + 312) |= 0x20u;
      *(self + 312) ^= 0x40u;
    }

    return;
  }

  if (!self->_playerController)
  {
    return;
  }

  objc_msgSend_p_startMoviePlaybackIfNeeded(self, a2, a3);
  if (a3 > 5)
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        v21 = self->_playerController;

        MEMORY[0x2821F9670](v21, sel_seekToBeginning, v13);
      }

      else if (a3 == 8)
      {
        *(self + 312) &= ~0x80u;
        v14 = self->_playerController;

        MEMORY[0x2821F9670](v14, sel_seekToEnd, v13);
      }

      return;
    }

    objc_msgSend_setFastForwarding_(self->_playerController, v12, 0);
    v19 = self->_playerController;
    v20 = 0;
    goto LABEL_28;
  }

  if (a3 == 4)
  {
    isPlaying = objc_msgSend_isPlaying(self->_playerController, v12, v13);
    v19 = self->_playerController;
    if (isPlaying)
    {
      v20 = 1;
LABEL_28:

      MEMORY[0x2821F9670](v19, sel_setFastReversing_, v20);
      return;
    }

    MEMORY[0x2821F9670](v19, sel_seekBackwardByOneFrame, v22);
  }

  else if (a3 == 5)
  {
    v17 = objc_msgSend_isPlaying(self->_playerController, v12, v13);
    v18 = self->_playerController;
    if (v17)
    {

      objc_msgSend_setFastForwarding_(v18, v15, 1);
    }

    else
    {

      MEMORY[0x2821F9670](v18, sel_seekForwardByOneFrame, v16);
    }
  }
}

- (void)p_playbackDidFailWithError:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275DB1DBC;
  block[3] = &unk_27A698A70;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (qword_280A3B740 == a6)
  {
    v7 = objc_msgSend_objectForKey_(a5, a2, *MEMORY[0x277CCA2F0], a4);
    if (objc_msgSend_BOOLValue(v7, v8, v9))
    {
      objc_msgSend_removeObserver_forKeyPath_context_(self->_videoLayer, v10, self, @"readyForDisplay", qword_280A3B740);
      *(self + 312) &= ~8u;
      objc_msgSend_begin(MEMORY[0x277CD9FF0], v11, v12);
      objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v13, 1);
      objc_msgSend_p_showVideoLayer(self, v14, v15);
      v18 = MEMORY[0x277CD9FF0];

      objc_msgSend_commit(v18, v16, v17);
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = KNMovieRenderer;
    [(KNMovieRenderer *)&v19 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)p_applyActionEffect:(id)a3
{
  if (a3)
  {
    v5 = objc_msgSend_valueForKey_(a3, a2, *MEMORY[0x277D80110]);
    if (v5)
    {
      objc_msgSend_floatValue(v5, v6, v7);
      videoLayer = self->_videoLayer;
      v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v9, v10);
      objc_msgSend_setValue_forKeyPath_(videoLayer, v12, v11, @"transform.scale.xy");
    }

    v13 = objc_msgSend_valueForKey_(a3, v6, *MEMORY[0x277D80100]);
    if (v13)
    {
      objc_msgSend_doubleValue(v13, v14, v15);
      v17 = self->_videoLayer;
      v21 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v18, v19, v16 * 0.0174532925);

      objc_msgSend_setValue_forKeyPath_(v17, v20, v21, @"transform.rotation.z");
    }
  }
}

- (void)playbackDidStopForPlayerController:(id)a3
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v6 = objc_msgSend_BOOLForKey_(v4, v5, @"KNShowMovieHUDWhenMouseOver");
  if (*(self + 312) < 0 && (v6 & 1) == 0)
  {

    objc_msgSend_removeAnimationsAndFinish_(self, v7, 1);
  }
}

- (CALayer)offscreenVideoLayer
{
  if (self->_playerController)
  {
    return 0;
  }

  else
  {
    return self->_videoLayer;
  }
}

- (NSCopying)movieTimelineMovieIdentifier
{
  v3 = objc_msgSend_movieInfo(self, a2, v2);
  v4 = objc_opt_class();

  return MEMORY[0x2821F9670](v4, sel_movieTimelineMovieIdentifierForMovieInfo_, v3);
}

+ (id)movieTimelineMovieIdentifierForMovieInfo:(id)a3
{
  if (a3)
  {
    return objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], a2, a3);
  }

  else
  {
    return 0;
  }
}

+ (id)movieInfoForMovieTimelineMovieIdentifier:(id)a3
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v4 = result;
    objc_opt_class();
    objc_msgSend_nonretainedObjectValue(v4, v5, v6);

    return TSUDynamicCast();
  }

  return result;
}

@end