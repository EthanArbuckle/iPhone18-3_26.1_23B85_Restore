@interface PUTransitionViewAnimator
- (CGPoint)_desiredTranslation;
- (CGPoint)anchorPoint;
- (CGPoint)currentTranslation;
- (CGRect)_targetAspectRatioSourceFrame;
- (CGRect)sourceFrame;
- (CGRect)targetFrame;
- (PUTransitionViewAnimator)initWithView:(id)view sourceFrame:(CGRect)frame targetFrame:(CGRect)targetFrame anchorPoint:(CGPoint)point shouldUseTargetAspectRatio:(BOOL)ratio rampUpDuration:(double)duration direction:(unint64_t)direction;
- (PUTransitionViewAnimatorDelegate)delegate;
- (void)_endWithTranslationVelocity:(CGPoint)velocity rotationVelocity:(double)rotationVelocity scaleVelocity:(double)scaleVelocity shouldBounce:(BOOL)bounce finish:(BOOL)finish animated:(BOOL)animated;
- (void)_setAutoUpdating:(BOOL)updating;
- (void)_update;
- (void)_updateAutoUpdateDisplayLink;
- (void)setDelegate:(id)delegate;
- (void)updateWithTranslation:(CGPoint)translation rotation:(double)rotation scale:(double)scale;
@end

@implementation PUTransitionViewAnimator

- (CGRect)_targetAspectRatioSourceFrame
{
  x = self->__targetAspectRatioSourceFrame.origin.x;
  y = self->__targetAspectRatioSourceFrame.origin.y;
  width = self->__targetAspectRatioSourceFrame.size.width;
  height = self->__targetAspectRatioSourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)_desiredTranslation
{
  x = self->__desiredTranslation.x;
  y = self->__desiredTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)targetFrame
{
  x = self->_targetFrame.origin.x;
  y = self->_targetFrame.origin.y;
  width = self->_targetFrame.size.width;
  height = self->_targetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sourceFrame
{
  x = self->_sourceFrame.origin.x;
  y = self->_sourceFrame.origin.y;
  width = self->_sourceFrame.size.width;
  height = self->_sourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)currentTranslation
{
  x = self->_currentTranslation.x;
  y = self->_currentTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUTransitionViewAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_endWithTranslationVelocity:(CGPoint)velocity rotationVelocity:(double)rotationVelocity scaleVelocity:(double)scaleVelocity shouldBounce:(BOOL)bounce finish:(BOOL)finish animated:(BOOL)animated
{
  animatedCopy = animated;
  finishCopy = finish;
  x = velocity.x;
  y = velocity.y;
  if (![(PUTransitionViewAnimator *)self _isEnding])
  {
    [(PUTransitionViewAnimator *)self _setEnding:1];
    [(PUTransitionViewAnimator *)self _setAutoUpdating:0];
    appliesScaleViaTransform = [(PUTransitionViewAnimator *)self appliesScaleViaTransform];
    v14 = objc_alloc_init(MEMORY[0x1E69DD498]);
    [(PUTransitionViewAnimator *)self progress];
    v15 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:? initialVelocity:? targetValue:? stiffness:? dampingFactor:? epsilon:?];
    [v14 addAnimation:v15];
    view = [(PUTransitionViewAnimator *)self view];
    [view px_screenScale];
    v18 = v17;

    [(PUTransitionViewAnimator *)self currentTranslation];
    v81 = v19;
    v82 = v20;
    if (finishCopy)
    {
      [(PUTransitionViewAnimator *)self anchorPoint];
      v22 = v21;
      v74 = v23;
      v75 = v21;
      [(PUTransitionViewAnimator *)self _targetAspectRatioSourceFrame];
      v25 = v24;
      v27 = v26;
      v77 = y;
      v29 = v28;
      v31 = v30;
      [(PUTransitionViewAnimator *)self targetFrame];
      v33 = v32;
      v70 = v34;
      v71 = v32;
      v36 = v35;
      v79 = v37;
      v106.origin.x = v25;
      v106.origin.y = v27;
      v106.size.width = v29;
      v106.size.height = v31;
      v76 = v18;
      v38 = v22 - CGRectGetMinX(v106);
      v107.origin.x = v25;
      v107.origin.y = v27;
      v107.size.width = v29;
      v107.size.height = v31;
      v72 = v38 / CGRectGetWidth(v107);
      v108.origin.x = v33;
      v108.origin.y = v36;
      v108.size.width = v70;
      v108.size.height = v79;
      Width = CGRectGetWidth(v108);
      v109.origin.x = v33;
      v109.origin.y = v36;
      v109.size.width = v70;
      v109.size.height = v79;
      v73 = CGRectGetMinX(v109) + v72 * Width;
      v110.origin.x = v25;
      v110.origin.y = v27;
      v110.size.width = v29;
      v110.size.height = v31;
      v39 = v74 - CGRectGetMinY(v110);
      v111.origin.x = v25;
      v111.origin.y = v27;
      v111.size.width = v29;
      v111.size.height = v31;
      y = v77;
      v40 = v39 / CGRectGetHeight(v111);
      v112.origin.x = v71;
      v112.origin.y = v36;
      v112.size.width = v70;
      v112.size.height = v79;
      Height = CGRectGetHeight(v112);
      v113.origin.x = v71;
      v113.origin.y = v36;
      v113.size.width = v70;
      v113.size.height = v79;
      v42 = CGRectGetMinY(v113) + v40 * Height;
      v18 = v76;
      *&v105 = v73 - v75;
      *(&v105 + 1) = v42 - v74;
    }

    else
    {
      v105 = *MEMORY[0x1E695EFF8];
    }

    delegate = [(PUTransitionViewAnimator *)self delegate];
    v44 = delegate;
    if ((*&self->_delegateFlags & 2) != 0)
    {
      [delegate transitionViewAnimatorWillEnd:self withTargetTranslation:&v105];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __116__PUTransitionViewAnimator__endWithTranslationVelocity_rotationVelocity_scaleVelocity_shouldBounce_finish_animated___block_invoke;
    aBlock[3] = &unk_1E7B805E8;
    aBlock[4] = self;
    v45 = v44;
    v103 = v45;
    v104 = finishCopy;
    v46 = _Block_copy(aBlock);
    v47 = v46;
    if (animatedCopy)
    {
      v78 = v46;
      v80 = appliesScaleViaTransform;
      v48 = 0.5 / v18;
      v49 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:v81 initialVelocity:x targetValue:*&v105 stiffness:200.0 dampingFactor:1.0 epsilon:0.5 / v18];
      v50 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:v82 initialVelocity:y targetValue:*(&v105 + 1) stiffness:200.0 dampingFactor:1.0 epsilon:0.5 / v18];
      v83 = v49;
      [v14 addAnimation:v49];
      [v14 addAnimation:v50];
      [(PUTransitionViewAnimator *)self _currentRotation];
        ;
      }

        ;
      }

      v52 = 1.0;
      v53 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:? initialVelocity:? targetValue:? stiffness:? dampingFactor:? epsilon:?];
      [v14 addAnimation:v53];
      [(PUTransitionViewAnimator *)self _currentScale];
      v55 = v54;
      v56 = 1.0;
      if (finishCopy)
      {
        [(PUTransitionViewAnimator *)self _targetScale];
        v56 = v57;
      }

      if (bounce && v56 > v55)
      {
        v52 = 0.67;
      }

      [(PUTransitionViewAnimator *)self sourceFrame];
      v58 = CGRectGetWidth(v114);
      [(PUTransitionViewAnimator *)self sourceFrame];
      v59 = CGRectGetHeight(v115);
      if (v58 >= v59)
      {
        v59 = v58;
      }

      v60 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:v55 initialVelocity:scaleVelocity targetValue:v56 stiffness:200.0 dampingFactor:v52 epsilon:v48 / v59];
      [v14 addAnimation:v60];
      v61 = objc_alloc_init(PUThresholdCrossingCountValueFilter);
      [(PUThresholdCrossingCountValueFilter *)v61 setThresholdValue:v56];
      [(PUThresholdCrossingCountValueFilter *)v61 setMaximumCrossingCount:2];
      [(PUTransitionViewAnimator *)self _currentSizeMixFactor];
      v62 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:? initialVelocity:? targetValue:? stiffness:? dampingFactor:? epsilon:?];
      [v14 addAnimation:v62];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __116__PUTransitionViewAnimator__endWithTranslationVelocity_rotationVelocity_scaleVelocity_shouldBounce_finish_animated___block_invoke_2;
      v89[3] = &unk_1E7B7F568;
      v90 = i;
      v91 = v83;
      v92 = v50;
      v93 = v53;
      v94 = v60;
      v95 = v62;
      v99 = v105;
      v100 = v56;
      v96 = v61;
      selfCopy = self;
      v101 = v80;
      v98 = v45;
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __116__PUTransitionViewAnimator__endWithTranslationVelocity_rotationVelocity_scaleVelocity_shouldBounce_finish_animated___block_invoke_3;
      v87[3] = &unk_1E7B7FA80;
      v47 = v78;
      v88 = v78;
      v63 = v61;
      v64 = v62;
      v65 = v60;
      v66 = v53;
      v67 = v50;
      v68 = v83;
      [v14 runWithGroupApplier:v89 completion:v87];

      v15 = i;
    }

    else
    {
      (*(v46 + 2))(v46);
    }
  }
}

uint64_t __116__PUTransitionViewAnimator__endWithTranslationVelocity_rotationVelocity_scaleVelocity_shouldBounce_finish_animated___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 8) & 4) != 0)
  {
    return [*(result + 40) transitionViewAnimatorDidEnd:? finished:?];
  }

  return result;
}

void __116__PUTransitionViewAnimator__endWithTranslationVelocity_rotationVelocity_scaleVelocity_shouldBounce_finish_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) value];
  v37 = v2;
  [*(a1 + 40) value];
  v4 = v3;
  [*(a1 + 48) value];
  v6 = v5;
  [*(a1 + 56) value];
  v8 = v7;
  [*(a1 + 64) value];
  v10 = v9;
  [*(a1 + 72) value];
  v12 = v11;
  if ([*(a1 + 40) state] == 3)
  {
    v4 = *(a1 + 104);
  }

  if ([*(a1 + 48) state] == 3)
  {
    v6 = *(a1 + 112);
  }

  if ([*(a1 + 64) state] == 3)
  {
    v13 = *(a1 + 120);
  }

  else
  {
    [*(a1 + 80) setInputValue:v10];
    [*(a1 + 80) outputValue];
    v13 = v14;
  }

  [*(a1 + 88) sourceFrame];
  UIRectGetCenter();
  v16 = v15;
  v18 = v17;
  [*(a1 + 88) anchorPoint];
  if (*(a1 + 128))
  {
    v21 = v13;
  }

  else
  {
    v21 = 1.0;
  }

  memset(&v39, 0, sizeof(v39));
  [*(a1 + 88) sourceFrame];
  v23 = v22;
  v25 = v24;
  [*(a1 + 88) _targetAspectRatioSourceFrame];
  width = v26 * v12 + (1.0 - v12) * v23;
  height = v28 * v12 + (1.0 - v12) * v25;
  x = *MEMORY[0x1E695EFF8];
  y = *(MEMORY[0x1E695EFF8] + 8);
  if ((*(a1 + 128) & 1) == 0)
  {
    CGAffineTransformMakeScale(&v38, v13, v13);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v41 = CGRectApplyAffineTransform(v40, &v38);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
  }

  [*(a1 + 88) _setProgress:v37];
  [*(a1 + 88) _targetScale];
  if (v32 == 1.0)
  {
    v34 = [*(a1 + 88) direction];
    v33 = 1.0;
    if (v13 <= 1.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = 1.0;
    }

    if (v13 >= 1.0)
    {
      v33 = 0.0;
    }

    if (!v34)
    {
      v33 = v35;
    }
  }

  else
  {
    v33 = (v13 + -1.0) / (v32 + -1.0);
  }

  [*(a1 + 88) _setUnfilteredProgress:v33];
  [*(a1 + 88) _setCurrentTranslation:{v4, v6}];
  v36 = [*(a1 + 88) view];
  [v36 setBounds:{x, y, width, height}];
  v38 = v39;
  [v36 setTransform:&v38];
  if (*(*(a1 + 88) + 8))
  {
    [*(a1 + 96) transitionViewAnimatorDidUpdate:?];
  }
}

- (void)_updateAutoUpdateDisplayLink
{
  _isAutoUpdating = [(PUTransitionViewAnimator *)self _isAutoUpdating];
  _autoUpdateDisplayLink = [(PUTransitionViewAnimator *)self _autoUpdateDisplayLink];
  v5 = !_isAutoUpdating;
  if (_isAutoUpdating && !_autoUpdateDisplayLink)
  {
    v7 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__autoUpdate_];
    [(PUTransitionViewAnimator *)self _setAutoUpdateDisplayLink:v7];
    [v7 setPaused:0];
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v7 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

LABEL_8:
    _autoUpdateDisplayLink = v7;
    goto LABEL_9;
  }

  if (!_autoUpdateDisplayLink)
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v7 = _autoUpdateDisplayLink;
    [_autoUpdateDisplayLink setPaused:1];
    [v7 invalidate];
    [(PUTransitionViewAnimator *)self _setAutoUpdateDisplayLink:0];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_setAutoUpdating:(BOOL)updating
{
  if (*(&self->__isEnding + 3) != updating)
  {
    *(&self->__isEnding + 3) = updating;
    [(PUTransitionViewAnimator *)self _updateAutoUpdateDisplayLink];
  }
}

- (void)_update
{
  appliesScaleViaTransform = [(PUTransitionViewAnimator *)self appliesScaleViaTransform];
  [(PUTransitionViewAnimator *)self _desiredTranslation];
  v5 = v4;
  v7 = v6;
  [(PUTransitionViewAnimator *)self _desiredRotation];
  v9 = v8;
  [(PUTransitionViewAnimator *)self _desiredScale];
  v11 = v10;
  [(PUTransitionViewAnimator *)self _desiredSizeMixFactor];
  v13 = v12;
  _rampUpFilter = [(PUTransitionViewAnimator *)self _rampUpFilter];
  [_rampUpFilter outputValue];
  v46 = *MEMORY[0x1E695EFF8];
  y = *(MEMORY[0x1E695EFF8] + 8);
  v45 = v15;
  if (v15 < 1.0)
  {
    v5 = v5 * v15 + (1.0 - v15) * *MEMORY[0x1E695EFF8];
    v7 = v7 * v15 + (1.0 - v15) * *(MEMORY[0x1E695EFF8] + 8);
    v9 = v9 * v15 + (1.0 - v15) * 0.0;
    v11 = 1.0 - v15 + v11 * v15;
    v13 = v13 * v15 + (1.0 - v15) * 0.0;
  }

  [(PUTransitionViewAnimator *)self _setCurrentTranslation:v5, v7];
  [(PUTransitionViewAnimator *)self _setCurrentRotation:v9];
  [(PUTransitionViewAnimator *)self _setCurrentScale:v11];
  [(PUTransitionViewAnimator *)self _setCurrentSizeMixFactor:v13];
  [(PUTransitionViewAnimator *)self anchorPoint];
  v17 = v16;
  v19 = v18;
  [(PUTransitionViewAnimator *)self sourceFrame];
  UIRectGetCenter();
  if (appliesScaleViaTransform)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1.0;
  }

  memset(&v49, 0, sizeof(v49));
  [(PUTransitionViewAnimator *)self sourceFrame:PUAffineTransformWithAnchorPointTranslationRotationScale(&v49];
  v24 = v23;
  v26 = v25;
  [(PUTransitionViewAnimator *)self _targetAspectRatioSourceFrame];
  width = v27 * v13 + (1.0 - v13) * v24;
  height = v29 * v13 + (1.0 - v13) * v26;
  if (appliesScaleViaTransform)
  {
    x = v46;
  }

  else
  {
    CGAffineTransformMakeScale(&v48, v11, v11);
    v50.origin.x = v46;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v51 = CGRectApplyAffineTransform(v50, &v48);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
  }

  [(PUTransitionViewAnimator *)self _targetScale];
  if (v32 == 1.0)
  {
    direction = [(PUTransitionViewAnimator *)self direction];
    v35 = 0.0;
    if (v11 <= 1.0)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = 1.0;
    }

    if (v11 < 1.0)
    {
      v35 = 1.0;
    }

    if (direction)
    {
      v33 = v35;
    }

    else
    {
      v33 = v36;
    }
  }

  else
  {
    v33 = (v11 + -1.0) / (v32 + -1.0);
  }

  v37 = [(PUTransitionViewAnimator *)self _progressFilter:1.0];
  [v37 setInputValue:v33];
  [v37 outputValue];
  v39 = v38;
  [(PUTransitionViewAnimator *)self _setProgress:?];
  [(PUTransitionViewAnimator *)self _setUnfilteredProgress:v33];
  v40 = v39 != v33 || v45 < 1.0;
  _shouldFinishFilter = [(PUTransitionViewAnimator *)self _shouldFinishFilter];
  [_shouldFinishFilter setInputValue:v33];
  [_shouldFinishFilter outputValue];
  [(PUTransitionViewAnimator *)self _setShouldFinish:v42 >= 0.0];
  view = [(PUTransitionViewAnimator *)self view];
  [view setBounds:{x, y, width, height}];
  v48 = v49;
  [view setTransform:&v48];
  if (*&self->_delegateFlags)
  {
    delegate = [(PUTransitionViewAnimator *)self delegate];
    [delegate transitionViewAnimatorDidUpdate:self];
  }

  if (!v40 || [(PUTransitionViewAnimator *)self autoUpdates])
  {
    [(PUTransitionViewAnimator *)self _setAutoUpdating:v40];
  }
}

- (void)updateWithTranslation:(CGPoint)translation rotation:(double)rotation scale:(double)scale
{
  y = translation.y;
  x = translation.x;
  if (![(PUTransitionViewAnimator *)self _isEnding])
  {
    [(PUTransitionViewAnimator *)self _setDesiredTranslation:x, y];
    [(PUTransitionViewAnimator *)self _setDesiredRotation:rotation];
    [(PUTransitionViewAnimator *)self _setDesiredScale:scale];
    if (![(PUTransitionViewAnimator *)self _isAutoUpdating])
    {

      [(PUTransitionViewAnimator *)self _update];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v5;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v7;
}

- (PUTransitionViewAnimator)initWithView:(id)view sourceFrame:(CGRect)frame targetFrame:(CGRect)targetFrame anchorPoint:(CGPoint)point shouldUseTargetAspectRatio:(BOOL)ratio rampUpDuration:(double)duration direction:(unint64_t)direction
{
  y = point.y;
  x = point.x;
  height = targetFrame.size.height;
  width = targetFrame.size.width;
  v13 = targetFrame.origin.y;
  v14 = targetFrame.origin.x;
  v15 = frame.size.height;
  v16 = frame.size.width;
  v55 = frame.origin.y;
  v17 = frame.origin.x;
  v60[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v58.receiver = self;
  v58.super_class = PUTransitionViewAnimator;
  v20 = [(PUTransitionViewAnimator *)&v58 init];
  v21 = v20;
  if (v20)
  {
    v56 = v14;
    v57 = v13;
    [(PUTransitionViewAnimator *)v20 setAutoUpdates:1];
    [(PUTransitionViewAnimator *)v21 setAppliesScaleViaTransform:1];
    [(PUTransitionViewAnimator *)v21 _setView:viewCopy];
    [(PUTransitionViewAnimator *)v21 _setSourceFrame:v17, v55, v16, v15];
    [(PUTransitionViewAnimator *)v21 _setTargetFrame:v14, v13, width, height];
    [(PUTransitionViewAnimator *)v21 _setAnchorPoint:duration, v61];
    [(PUTransitionViewAnimator *)v21 _setShouldUseTargetAspectRatio:*&x];
    [(PUTransitionViewAnimator *)v21 _setRampUpDuration:v62];
    [(PUTransitionViewAnimator *)v21 _setDirection:*&y];
    [(PUTransitionViewAnimator *)v21 _setCurrentScale:1.0];
    [(PUTransitionViewAnimator *)v21 _setShouldFinish:1];
    v22 = 0.0;
    if (LODWORD(x))
    {
      v22 = 1.0;
    }

    [(PUTransitionViewAnimator *)v21 _setDesiredSizeMixFactor:v22];
    v63.origin.x = v14;
    v63.origin.y = v13;
    v63.size.width = width;
    v63.size.height = height;
    v51 = v16;
    v53 = v15;
    if (CGRectIsEmpty(v63))
    {
      v23 = v15;
      v24 = v16;
      v25 = v55;
      v26 = v17;
      v27 = v17;
    }

    else
    {
      v27 = v17;
      v64.origin.x = v14;
      v64.origin.y = v13;
      v64.size.width = width;
      v64.size.height = height;
      v28 = CGRectGetWidth(v64);
      v65.origin.x = v14;
      v65.origin.y = v13;
      v65.size.width = width;
      v65.size.height = height;
      v29 = v28 / CGRectGetHeight(v65);
      if (y == 0.0)
      {
        v30 = PURectWithAspectRatioFillingRect(v29, v27, v55, v16, v15);
      }

      else
      {
        v30 = PURectWithAspectRatioFittingRect(v29, v27, v55, v16, v15);
      }

      v26 = v30;
      v25 = v31;
      v24 = v32;
      v23 = v33;
    }

    [(PUTransitionViewAnimator *)v21 _setTargetAspectRatioSourceFrame:v26, v25, v24, v23, *&v51, *&v53];
    v66.origin.x = v56;
    v66.origin.y = v57;
    v66.size.width = width;
    v66.size.height = height;
    IsEmpty = CGRectIsEmpty(v66);
    v35 = 1.0;
    if (!IsEmpty)
    {
      v67.origin.x = v26;
      v67.origin.y = v25;
      v67.size.width = v24;
      v67.size.height = v23;
      v36 = CGRectGetWidth(v67);
      v68.origin.x = v27;
      v68.origin.y = v55;
      v68.size.width = v52;
      v68.size.height = v54;
      if (v36 == CGRectGetWidth(v68))
      {
        v69.origin.x = v56;
        v69.origin.y = v57;
        v69.size.width = width;
        v69.size.height = height;
        v37 = CGRectGetWidth(v69);
        v70.origin.x = v27;
        v70.origin.y = v55;
        v70.size.width = v52;
        v70.size.height = v54;
        v38 = CGRectGetWidth(v70);
      }

      else
      {
        v71.origin.x = v56;
        v71.origin.y = v57;
        v71.size.width = width;
        v71.size.height = height;
        v37 = CGRectGetHeight(v71);
        v72.origin.x = v27;
        v72.origin.y = v55;
        v72.size.width = v52;
        v72.size.height = v54;
        v38 = CGRectGetHeight(v72);
      }

      v35 = v37 / v38;
    }

    [(PUTransitionViewAnimator *)v21 _setTargetScale:v35];
    if (v62 <= 0.0)
    {
      v39 = objc_alloc_init(PUValueFilter);
    }

    else
    {
      v39 = objc_alloc_init(PUMaximumChangeRateValueFilter);
      UIAnimationDragCoefficient();
      [(PUMaximumChangeRateValueFilter *)v39 setMaximumChangeRate:1.0 / (v40 * v62)];
    }

    [(PUDynamicValueFilter *)v39 setInputValue:1.0];
    [(PUTransitionViewAnimator *)v21 _setRampUpFilter:v39];
    v41 = objc_alloc_init(PUClampValueFilter);
    [(PUClampValueFilter *)v41 setMinimumValue:0.0];
    [(PUClampValueFilter *)v41 setMaximumValue:1.0];
    v42 = objc_alloc_init(PUMaximumChangeRateValueFilter);
    UIAnimationDragCoefficient();
    [(PUMaximumChangeRateValueFilter *)v42 setMaximumChangeRate:3.33333333 / v43];
    v44 = objc_alloc_init(PUGroupValueFilter);
    v60[0] = v41;
    v60[1] = v42;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    [(PUGroupValueFilter *)v44 setFilters:v45];

    [(PUTransitionViewAnimator *)v21 _setProgressFilter:v44];
    v46 = objc_alloc_init(PUClampValueFilter);
    [(PUClampValueFilter *)v46 setMinimumValue:0.0];
    [(PUClampValueFilter *)v46 setMaximumValue:1.0];
    v47 = objc_alloc_init(PUChangeDirectionValueFilter);
    [(PUChangeDirectionValueFilter *)v47 setMinimumChangeValue:0.05];
    v48 = objc_alloc_init(PUGroupValueFilter);
    v59[0] = v46;
    v59[1] = v47;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    [(PUGroupValueFilter *)v48 setFilters:v49];

    [(PUTransitionViewAnimator *)v21 _setShouldFinishFilter:v48];
  }

  return v21;
}

@end