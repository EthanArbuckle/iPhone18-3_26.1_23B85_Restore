@interface _UIFluidSliderInteraction
- ($0E0C902F25D72445DD01CB63E261F0E2)_lastDriverUpdate;
- (CGSize)_normalizedTrackSize;
- (NSString)description;
- (UIPanGestureRecognizer)_panGestureRecognizer;
- (UIView)view;
- (_UIFluidSliderDirectDriving)_panDriver;
- (_UIFluidSliderDirectDrivingDelegate)_directDrivingDelegate;
- (_UIFluidSliderDriving)_activeDriver;
- (_UIFluidSliderInteraction)initWithConfiguration:(id)a3 handler:(id)a4;
- (_UIFluidSliderVolumeButtonDriving)_volumeButtonDriver;
- (_UIPhysicalButtonInteraction)_volumeButtonInteraction;
- (double)_driftFactor;
- (double)_feedbackEpsilon;
- (double)_minSquishedWidthForWidth:(double)a3;
- (double)currentTrackLength;
- (double)maxValue;
- (double)minValue;
- (double)presentationValue;
- (double)value;
- (unint64_t)stepCount;
- (void)_animate:(id)a3 withSpring:(id)a4;
- (void)_cancelDriversExcludingDriver:(id)a3;
- (void)_issueUpdate;
- (void)_rebuildDrivers;
- (void)_removeAllDrivers;
- (void)_setDirectDrivingDelegate:(id)a3;
- (void)_setElasticity:(int64_t)a3;
- (void)_targetNewScale:(double)a3;
- (void)_targetNewValue:(double)a3;
- (void)didMoveToView:(id)a3;
- (void)fluidSliderDriver:(id)a3 didGenerateUpdate:(id *)a4;
- (void)setConfiguration:(id)a3;
- (void)setLocked:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setValue:(double)a3;
- (void)set_lastDriverUpdate:(id *)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIFluidSliderInteraction

- (void)_rebuildDrivers
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(_UIFluidSliderInteraction *)self view];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [(_UIFluidSliderInteraction *)self configuration];

  if (!v5)
  {
    return;
  }

  [(_UIFluidSliderInteraction *)self _removeAllDrivers];
  v6 = [(_UIFluidSliderInteraction *)self configuration];
  v7 = [v6 preferredInputMethods];

  v8 = [MEMORY[0x1E695DF70] array];
  if (v7)
  {
    [(_UIFluidSliderInteraction *)self _elasticity];
    v10 = objc_opt_new();
    WeakRetained = objc_loadWeakRetained(&self->_directDrivingDelegate);
    [v10 setDelegate:WeakRetained];

    [(_UIFluidSliderInteraction *)self set_panDriver:v10];
    [v8 addObject:v10];

    if ((v7 & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    [(_UIFluidSliderInteraction *)self set_volumeButtonDriver:0];
    goto LABEL_8;
  }

  [(_UIFluidSliderInteraction *)self set_panDriver:0];
  if ((v7 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = objc_opt_new();
  [(_UIFluidSliderInteraction *)self set_volumeButtonDriver:v9];
  [v8 addObject:v9];

LABEL_8:
  v12 = [(_UIFluidSliderInteraction *)self configuration];
  v13 = [v12 _customDrivers];
  [v8 addObjectsFromArray:v13];

  [(_UIFluidSliderInteraction *)self set_drivers:v8];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [(_UIFluidSliderInteraction *)self _drivers];
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        v20 = [(_UIFluidSliderInteraction *)self view];

        if (v20)
        {
          v21 = [(_UIFluidSliderInteraction *)self view];
          [v19 setView:v21];

          [v19 setDrivable:self];
        }

        v22 = [(_UIFluidSliderInteraction *)self configuration];

        if (v22)
        {
          [v19 setTrackAxis:{-[_UIFluidSliderInteraction _axis](self, "_axis")}];
          v23 = [(_UIFluidSliderInteraction *)self configuration];
          [v23 stretchAmount];
          v25 = v24;

          if (v25 < 1.0)
          {
            v26 = 0.0;
          }

          else
          {
            v26 = v25;
          }

          [v19 setStretchAmount:v26];
          v27 = [(_UIFluidSliderInteraction *)self configuration];
          [v27 velocityMultiplier];
          [v19 setVelocityMultiplier:?];
        }

        [v19 setEnabled:{-[_UIFluidSliderInteraction isUserInteractionEnabled](self, "isUserInteractionEnabled")}];
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);
  }

  v28 = [(_UIFluidSliderInteraction *)self stepCount]>> 1;
  v29 = [_UIFluidSliderFeedbackConductor alloc];
  v30 = [(_UIFluidSliderInteraction *)self view];
  v31 = [(_UIFluidSliderFeedbackConductor *)v29 initWithDetentCount:v28 view:v30 indirectFeedbackPlayer:0];
  [(_UIFluidSliderInteraction *)self set_feedbackConductor:v31];

  [(_UIFluidSliderInteraction *)self _feedbackEpsilon];
  v33 = v32;
  v34 = [(_UIFluidSliderInteraction *)self _feedbackConductor];
  [v34 setEpsilon:v33];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (double)_feedbackEpsilon
{
  v3 = [(_UIFluidSliderInteraction *)self view];
  v4 = [v3 traitCollection];
  [v4 displayScale];
  v6 = 1.0 / v5;
  [(_UIFluidSliderInteraction *)self _normalizedTrackSize];
  v8 = fmax(fmin(v6 / v7, 1.0), 0.0001);

  return v8;
}

- (CGSize)_normalizedTrackSize
{
  width = self->__normalizedTrackSize.width;
  height = self->__normalizedTrackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)value
{
  if ([(_UIFluidSliderInteraction *)self isLocked])
  {

    [(_UIFluidSliderInteraction *)self _lockedValue];
  }

  else
  {
    v4 = [(_UIFluidSliderInteraction *)self _animatedValue];
    [v4 value];
    v6 = fmax(fmin(v5, 1.0), 0.0);

    return v6;
  }

  return result;
}

- (_UIFluidSliderDirectDriving)_panDriver
{
  WeakRetained = objc_loadWeakRetained(&self->__panDriver);

  return WeakRetained;
}

- (void)_removeAllDrivers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(_UIFluidSliderInteraction *)self _drivers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setView:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (unint64_t)stepCount
{
  v2 = [(_UIFluidSliderInteraction *)self configuration];
  v3 = [v2 stepCount];

  return v3;
}

- (void)_issueUpdate
{
  v3 = [(_UIFluidSliderInteraction *)self _animatedValue];
  [v3 presentationValue];
  v5 = v4;

  v6 = [(_UIFluidSliderInteraction *)self _trackWidth];
  [v6 presentationValue];
  v8 = v7;

  v9 = [(_UIFluidSliderInteraction *)self _trackLength];
  [v9 presentationValue];
  v11 = v10;

  v12 = [(_UIFluidSliderInteraction *)self _elasticity];
  if (v12 != 2)
  {
    if (v12 != 1 || ([(_UIFluidSliderInteraction *)self _lastDriverUpdate], v92 == 1))
    {
      v5 = fmax(fmin(v5, 1.0), 0.0);
    }
  }

  v13 = fmax(v5 + -1.0, 0.0);
  if (v5 <= 0.0)
  {
    v13 = v5;
  }

  v14 = v11 * v13;
  v15 = -(v11 * v13);
  if (v11 * v13 >= 0.0)
  {
    v16 = v11 * v13;
  }

  else
  {
    v16 = -(v11 * v13);
  }

  [(_UIFluidSliderInteraction *)self _driftFactor];
  v18 = v11 + (1.0 - v17) * v16;
  if (v18 <= 0.0)
  {
    v27 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v19 = [(_UIFluidSliderInteraction *)self configuration];
    [v19 stretchAmount];
    v21 = v20;

    v22 = v21 < 1.0;
    v23 = 0.0;
    if (!v22)
    {
      v24 = [(_UIFluidSliderInteraction *)self configuration];
      [v24 stretchAmount];
      v23 = v14 / v25;

      if (v23 < 0.0)
      {
        v23 = -v23;
      }
    }

    [(_UIFluidSliderInteraction *)self _minSquishedWidthForWidth:v8];
    v27 = v8 * (1.0 - v23) + v23 * v26;
  }

  [(_UIFluidSliderInteraction *)self _driftFactor];
  v29 = (v28 + 0.5) * v15;
  v30 = [(_UIFluidSliderInteraction *)self view];
  v31 = [v30 effectiveUserInterfaceLayoutDirection];

  v32 = [(_UIFluidSliderInteraction *)self _axis];
  v33 = v32;
  v34 = -v29;
  if (v31 == 1)
  {
    v34 = v29;
  }

  if (v32 == 1)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v29;
  }

  ty = v35;
  if (v32 == 1)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0.0;
  }

  if (v32 == 1)
  {
    v37 = v27;
  }

  else
  {
    v37 = v18;
  }

  if (v32 != 1)
  {
    v18 = v27;
  }

  v38 = fmax(fmin(v5, 1.0), 0.0);
  v39 = [(_UIFluidSliderInteraction *)self configuration];
  [v39 neutralPosition];
  v41 = fmax(fmin(v40, 1.0), 0.0);

  v42 = v41;
  if (v38 >= v41)
  {
    v43 = v38;
  }

  else
  {
    v43 = v41;
  }

  v44 = v37 - v37 * v43;
  v45 = vabdd_f64(v42, v38);
  v46 = v37 * v45;
  v47 = v18 * v45;
  v48 = v18 * v42;
  v49 = v38 * v18;
  if (v38 >= v42)
  {
    v42 = v38;
  }

  else
  {
    v48 = v38 * v18;
  }

  v50 = v18 - v18 * v42;
  if (v31 == 1)
  {
    v49 = v50;
  }

  else
  {
    v50 = v48;
  }

  if (v33 == 1)
  {
    v51 = v49;
  }

  else
  {
    v51 = v18 * 0.5;
  }

  if (v33 == 1)
  {
    v52 = v37 * 0.5;
  }

  else
  {
    v52 = v37 - v44;
  }

  v79 = v52;
  if (v33 == 1)
  {
    v53 = v50;
  }

  else
  {
    v53 = 0.0;
  }

  if (v33 == 1)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = v44;
  }

  v83 = v54;
  v84 = v53;
  if (v33 == 1)
  {
    v55 = v47;
  }

  else
  {
    v55 = v18;
  }

  if (v33 == 1)
  {
    v56 = v37;
  }

  else
  {
    v56 = v46;
  }

  v82 = v56;
  [(_UIFluidSliderInteraction *)self _state];
  v91 = 0.0;
  v89 = 0u;
  v90 = 0u;
  [(_UIFluidSliderInteraction *)self _lastDriverUpdate];
  v57 = [(_UIFluidSliderInteraction *)self _activeDriver];

  if (v57)
  {
    v58 = 1;
    if (v90 == 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2;
    }

    v60 = 4;
    if (*(&v90 + 1) == 1)
    {
      v60 = 2;
    }

    if (*(&v90 + 1))
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    if (*(&v90 + 1) == 1)
    {
      v62 = 0;
    }

    else if ([(_UIFluidSliderInteraction *)self _state]&& [(_UIFluidSliderInteraction *)self _state]!= 2)
    {
      v62 = 0;
      v58 = 0;
    }

    else
    {
      [(_UIFluidSliderInteraction *)self value];
      if (fabs(v67) <= 2.22044605e-16)
      {
        v58 = 0;
        v62 = 1;
      }

      else
      {
        [(_UIFluidSliderInteraction *)self value];
        v58 = 0;
        v62 = fabs(v68 + -1.0) <= 2.22044605e-16;
      }
    }
  }

  else
  {
    v63 = 5;
    if (*(&v90 + 1) == 1)
    {
      v63 = 3;
    }

    if (*(&v90 + 1))
    {
      v61 = v63;
    }

    else
    {
      v61 = 1;
    }

    v64 = [(_UIFluidSliderInteraction *)self _animatedValue];
    [v64 value];
    v66 = vabdd_f64(v65, v5) > 2.22044605e-16;

    v62 = 0;
    v58 = 0;
    v59 = 2 * v66;
  }

  [(_UIFluidSliderInteraction *)self set_state:v59];
  v69 = [(_UIFluidSliderInteraction *)self _trackScale];
  [v69 presentationValue];
  v71 = v70;

  memset(&v88, 0, sizeof(v88));
  CGAffineTransformMakeScale(&v88, v71, v71);
  v86 = v88;
  CGAffineTransformTranslate(&v87, &v86, v36, ty);
  v88 = v87;
  v72 = objc_opt_new();
  v73 = [(_UIFluidSliderInteraction *)self isLocked];
  v74 = v38;
  if (v73)
  {
    [(_UIFluidSliderInteraction *)self _lockedValue];
  }

  [v72 setValue:v74];
  [v72 setTrackBounds:{0.0, 0.0, v18, v37}];
  v87 = v88;
  [v72 setTrackTransform:&v87];
  [v72 setBarFrame:{v84, v83, v55, v82}];
  [v72 setTracking:v58];
  [v72 setInteractionState:{-[_UIFluidSliderInteraction _state](self, "_state")}];
  [v72 setType:v61];
  if (v59)
  {
    v75 = v59 == 2 && vabdd_f64(v5, v38) > 2.22044605e-16;
  }

  else
  {
    v75 = 1;
  }

  [v72 setAtTarget:v75];
  [v72 set_unclampedValue:v5];
  v76 = [(_UIFluidSliderInteraction *)self _handler];
  (v76)[2](v76, v72);

  if ([(_UIFluidSliderInteraction *)self _feedbackEnabled]&& [(_UIFluidSliderInteraction *)self isUserInteractionEnabled]&& ![(_UIFluidSliderInteraction *)self isLocked])
  {
    v77 = [(_UIFluidSliderInteraction *)self _feedbackConductor];
    v78 = v91;
    [(_UIFluidSliderInteraction *)self _lastDriverUpdate];
    [v77 moveToValue:v85 snappingTarget:v62 withUpdateType:v5 atLocation:v78 forced:{v51, v80}];
  }
}

- (double)_driftFactor
{
  v2 = +[_UIFluidSliderSettingsDomain rootSettings];
  [v2 sliderDriftFactor];
  v4 = v3;

  return v4;
}

- ($0E0C902F25D72445DD01CB63E261F0E2)_lastDriverUpdate
{
  v3 = *&self[4].var4;
  *&retstr->var0 = *&self[4].var2;
  *&retstr->var2 = v3;
  retstr->var4 = self[5].var1;
  return self;
}

- (_UIFluidSliderDriving)_activeDriver
{
  WeakRetained = objc_loadWeakRetained(&self->__activeDriver);

  return WeakRetained;
}

- (_UIFluidSliderInteraction)initWithConfiguration:(id)a3 handler:(id)a4
{
  v25[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = _UIFluidSliderInteraction;
  v8 = [(_UIFluidSliderInteraction *)&v24 init];
  v9 = v8;
  if (v8)
  {
    *&v8->_feedbackEnabled = 257;
    v8->_elasticity = 2;
    v10 = objc_opt_new();
    [(_UIFluidSliderInteraction *)v9 set_animatedValue:v10];

    v11 = objc_opt_new();
    [(_UIFluidSliderInteraction *)v9 set_trackWidth:v11];

    v12 = objc_opt_new();
    [(_UIFluidSliderInteraction *)v9 set_trackLength:v12];

    v13 = objc_opt_new();
    [(_UIFluidSliderInteraction *)v9 set_trackScale:v13];

    v14 = [(_UIFluidSliderInteraction *)v9 _trackScale];
    [v14 setValue:1.0];

    v15 = [(_UIFluidSliderInteraction *)v9 _animatedValue];
    v25[0] = v15;
    v16 = [(_UIFluidSliderInteraction *)v9 _trackWidth];
    v25[1] = v16;
    v17 = [(_UIFluidSliderInteraction *)v9 _trackLength];
    v25[2] = v17;
    v18 = [(_UIFluidSliderInteraction *)v9 _trackScale];
    v25[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];

    objc_initWeak(&location, v9);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59___UIFluidSliderInteraction_initWithConfiguration_handler___block_invoke;
    v21[3] = &unk_1E70F5A28;
    objc_copyWeak(&v22, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v19 presentationValueChangedCallback:v21];
    [(_UIFluidSliderInteraction *)v9 set_handler:v7];
    [(_UIFluidSliderInteraction *)v9 setConfiguration:v6];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)setConfiguration:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a3;
  configuration = self->_configuration;
  v7 = v5;
  v8 = configuration;
  v9 = v8;
  if (v8 != v7)
  {
    if (v7 && v8)
    {
      v10 = [(_UIFluidSliderInteractionConfiguration *)v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_70;
      }
    }

    else
    {
    }

    v11 = self->_configuration;
    v12 = [(_UIFluidSliderInteractionConfiguration *)v7 copy];
    v13 = self->_configuration;
    self->_configuration = v12;

    if (!v11)
    {
      [(_UIFluidSliderInteraction *)self _rebuildDrivers];
      goto LABEL_22;
    }

    v14 = [(_UIFluidSliderInteractionConfiguration *)self->_configuration preferredInputMethods];
    if (v14 == [(_UIFluidSliderInteractionConfiguration *)v11 preferredInputMethods])
    {
      v15 = [(_UIFluidSliderInteractionConfiguration *)self->_configuration _customDrivers];
      v16 = [(_UIFluidSliderInteractionConfiguration *)v11 _customDrivers];
      v17 = v15;
      v18 = v16;
      v19 = v18;
      if (v17 == v18)
      {

LABEL_19:
        [(_UIFluidSliderInteractionConfiguration *)self->_configuration trackSize];
        v22 = v21;
        v24 = v23;
        [(_UIFluidSliderInteractionConfiguration *)v11 trackSize];
        if (v22 == v26 && v24 == v25)
        {
          v27 = 0;
          goto LABEL_39;
        }

LABEL_22:
        [(_UIFluidSliderInteractionConfiguration *)self->_configuration trackSize];
        v30 = v28 <= v29;
        if (v28 <= v29)
        {
          v31 = v28;
        }

        else
        {
          v31 = v29;
        }

        if (v28 > v29)
        {
          v29 = v28;
        }

        if (v30)
        {
          v32 = 2;
        }

        else
        {
          v32 = 1;
        }

        [(_UIFluidSliderInteraction *)self set_normalizedTrackSize:v31, v29];
        [(_UIFluidSliderInteraction *)self set_axis:v32];
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v33 = [(_UIFluidSliderInteraction *)self _drivers];
        v34 = [v33 countByEnumeratingWithState:&v77 objects:v83 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v78;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v78 != v36)
              {
                objc_enumerationMutation(v33);
              }

              [*(*(&v77 + 1) + 8 * i) setTrackAxis:{-[_UIFluidSliderInteraction _axis](self, "_axis")}];
            }

            v35 = [v33 countByEnumeratingWithState:&v77 objects:v83 count:16];
          }

          while (v35);
        }

        [(_UIFluidSliderInteraction *)self _feedbackEpsilon];
        v39 = v38;
        v40 = [(_UIFluidSliderInteraction *)self _feedbackConductor];
        [v40 setEpsilon:v39];

        if (!v11)
        {
LABEL_40:
          [(_UIFluidSliderInteractionConfiguration *)self->_configuration stretchAmount];
          if (v44 < 0.0)
          {
            v66 = [MEMORY[0x1E696AAA8] currentHandler];
            [v66 handleFailureInMethod:a2 object:self file:@"_UIFluidSliderInteraction.m" lineNumber:279 description:@"_UIFluidSliderInteractionConfiguration.stretchAmount must be a non-negative value!"];
          }

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v45 = [(_UIFluidSliderInteraction *)self _drivers];
          v46 = [v45 countByEnumeratingWithState:&v73 objects:v82 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v74;
            do
            {
              for (j = 0; j != v47; ++j)
              {
                if (*v74 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v73 + 1) + 8 * j);
                [(_UIFluidSliderInteractionConfiguration *)self->_configuration stretchAmount];
                if (v51 < 1.0)
                {
                  v51 = 0.0;
                }

                [v50 setStretchAmount:v51];
              }

              v47 = [v45 countByEnumeratingWithState:&v73 objects:v82 count:16];
            }

            while (v47);
          }

          if (!v11)
          {
LABEL_54:
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v55 = [(_UIFluidSliderInteraction *)self _drivers];
            v56 = [v55 countByEnumeratingWithState:&v69 objects:v81 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v70;
              do
              {
                for (k = 0; k != v57; ++k)
                {
                  if (*v70 != v58)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v60 = *(*(&v69 + 1) + 8 * k);
                  [(_UIFluidSliderInteractionConfiguration *)self->_configuration velocityMultiplier];
                  [v60 setVelocityMultiplier:?];
                }

                v57 = [v55 countByEnumeratingWithState:&v69 objects:v81 count:16];
              }

              while (v57);
            }

            v27 = 1;
            if (!v11)
            {
LABEL_63:
              if (![(_UIFluidSliderInteractionConfiguration *)self->_configuration stepCount])
              {
                v67 = [MEMORY[0x1E696AAA8] currentHandler];
                [v67 handleFailureInMethod:a2 object:self file:@"_UIFluidSliderInteraction.m" lineNumber:299 description:@"_UIFluidSliderInteractionConfiguration.stepCount must be non-zero!"];

                if (v27)
                {
                  goto LABEL_65;
                }

                goto LABEL_69;
              }

LABEL_64:
              if (v27)
              {
LABEL_65:
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = __46___UIFluidSliderInteraction_setConfiguration___block_invoke;
                aBlock[3] = &unk_1E70F3590;
                aBlock[4] = self;
                v62 = _Block_copy(aBlock);
                if (v11)
                {
                  v63 = +[_UIFluidSliderSettingsDomain rootSettings];
                  v64 = [v63 programmaticUpdate];
                  v65 = [v64 springAnimationBehavior];
                  [(_UIFluidSliderInteraction *)self _animate:v62 withSpring:v65];
                }

                else
                {
                  [UIView _performWithoutRetargetingAnimations:v62];
                }
              }

LABEL_69:

              goto LABEL_70;
            }

LABEL_62:
            v61 = [(_UIFluidSliderInteractionConfiguration *)self->_configuration stepCount];
            if (v61 == [(_UIFluidSliderInteractionConfiguration *)v11 stepCount])
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          v27 = 1;
LABEL_53:
          [(_UIFluidSliderInteractionConfiguration *)self->_configuration velocityMultiplier];
          v53 = v52;
          [(_UIFluidSliderInteractionConfiguration *)v11 velocityMultiplier];
          if (vabdd_f64(v53, v54) <= 2.22044605e-16)
          {
            goto LABEL_62;
          }

          goto LABEL_54;
        }

        v27 = 1;
LABEL_39:
        [(_UIFluidSliderInteractionConfiguration *)self->_configuration stretchAmount];
        v42 = v41;
        [(_UIFluidSliderInteractionConfiguration *)v11 stretchAmount];
        if (vabdd_f64(v42, v43) <= 2.22044605e-16)
        {
          goto LABEL_53;
        }

        goto LABEL_40;
      }

      if (v17 && v18)
      {
        v20 = [v17 isEqual:v18];

        if (v20)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    [(_UIFluidSliderInteraction *)self _rebuildDrivers];
    goto LABEL_19;
  }

LABEL_70:
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_userInteractionEnabled != a3)
  {
    self->_userInteractionEnabled = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(_UIFluidSliderInteraction *)self _drivers];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setEnabled:self->_userInteractionEnabled];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setLocked:(BOOL)a3
{
  if (self->_locked != a3)
  {
    if (a3)
    {
      [(_UIFluidSliderInteraction *)self value];
      [(_UIFluidSliderInteraction *)self set_lockedValue:?];
    }

    self->_locked = a3;
  }
}

- (void)willMoveToView:(id)a3
{
  [(_UIFluidSliderInteraction *)self _removeAllDrivers];
  [(_UIFluidSliderInteraction *)self set_feedbackConductor:0];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    [(_UIFluidSliderInteraction *)self _rebuildDrivers];
  }
}

- (void)_setDirectDrivingDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_directDrivingDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_directDrivingDelegate, obj);
    v5 = [(_UIFluidSliderInteraction *)self _panDriver];
    [v5 setDelegate:obj];
  }
}

- (void)setValue:(double)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(_UIFluidSliderInteraction *)self _activeDriver];

  if (!v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(_UIFluidSliderInteraction *)self _drivers];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v19 + 1) + 8 * v10++) stop];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  v11 = fmax(fmin(a3, 1.0), 0.0);
  [(_UIFluidSliderInteraction *)self set_lockedValue:v11];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38___UIFluidSliderInteraction_setValue___block_invoke;
  aBlock[3] = &unk_1E70F32F0;
  aBlock[4] = self;
  *&aBlock[5] = v11;
  v12 = _Block_copy(aBlock);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  [(_UIFluidSliderInteraction *)self set_lastDriverUpdate:v16];
  v13 = +[_UIFluidSliderSettingsDomain rootSettings];
  v14 = [v13 programmaticUpdate];
  v15 = [v14 springAnimationBehavior];
  [(_UIFluidSliderInteraction *)self _animate:v12 withSpring:v15];
}

- (double)presentationValue
{
  v2 = [(_UIFluidSliderInteraction *)self _animatedValue];
  [v2 presentationValue];
  v4 = v3;

  return v4;
}

- (double)currentTrackLength
{
  v2 = [(_UIFluidSliderInteraction *)self _trackLength];
  [v2 presentationValue];
  v4 = v3;

  return v4;
}

- (double)minValue
{
  v2 = [(_UIFluidSliderInteraction *)self configuration];
  [v2 minValue];
  v4 = v3;

  return v4;
}

- (double)maxValue
{
  v2 = [(_UIFluidSliderInteraction *)self configuration];
  [v2 maxValue];
  v4 = v3;

  return v4;
}

- (void)fluidSliderDriver:(id)a3 didGenerateUpdate:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *&a4->var2;
  *v26 = *&a4->var0;
  *&v26[16] = v7;
  var4 = a4->var4;
  [(_UIFluidSliderInteraction *)self set_lastDriverUpdate:v26];
  var2 = a4->var2;
  if (var2 == 1)
  {
    v9 = [(_UIFluidSliderInteraction *)self _activeDriver];

    if (v9 == v6)
    {
      goto LABEL_7;
    }

    [(_UIFluidSliderInteraction *)self _cancelDriversExcludingDriver:v6];
    v10 = v6;
    goto LABEL_4;
  }

  if (!var2)
  {
    v11 = [(_UIFluidSliderInteraction *)self _activeDriver];

    if (v11 == v6)
    {
      v10 = 0;
LABEL_4:
      [(_UIFluidSliderInteraction *)self set_activeDriver:v10];
    }
  }

LABEL_7:
  v12 = [(_UIFluidSliderInteraction *)self _activeDriver];
  v13 = v12;
  if (v12 == v6)
  {
  }

  else
  {
    v14 = [(_UIFluidSliderInteraction *)self _activeDriver];

    if (v14)
    {
      v15 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &qword_1ED49E3C0) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v6 name];
        var0 = a4->var0;
        v19 = @"NO";
        *v26 = 138412802;
        *&v26[4] = v17;
        if (var2 == 1)
        {
          v19 = @"YES";
        }

        *&v26[12] = 2048;
        *&v26[14] = var0;
        *&v26[22] = 2112;
        *&v26[24] = v19;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "[FluidSlider Update] Rejected: %@ | value: %.4f | isActive: %@", v26, 0x20u);
      }

      goto LABEL_19;
    }
  }

  v20 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &_MergedGlobals_1123) + 8);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = [v6 name];
    v23 = a4->var0;
    v24 = @"NO";
    *v26 = 138412802;
    *&v26[4] = v22;
    if (var2 == 1)
    {
      v24 = @"YES";
    }

    *&v26[12] = 2048;
    *&v26[14] = v23;
    *&v26[22] = 2112;
    *&v26[24] = v24;
    _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "[FluidSlider Update] Accepted: %@ | value: %.4f | isActive: %@", v26, 0x20u);
  }

  [(_UIFluidSliderInteraction *)self _targetNewValue:a4->var0, *v26];
LABEL_19:
  if ([(_UIFluidSliderInteraction *)self _shouldScaleOnIndirectInput])
  {
    var1 = 1.0;
    if ((a4->var2 - 1) <= 1)
    {
      var1 = a4->var1;
    }

    [(_UIFluidSliderInteraction *)self _targetNewScale:var1];
  }
}

- (void)_targetNewValue:(double)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45___UIFluidSliderInteraction__targetNewValue___block_invoke;
  v4[3] = &unk_1E70F32F0;
  v4[4] = self;
  *&v4[5] = a3;
  v3 = _Block_copy(v4);
  if (+[UIView _isInAnimationBlock](UIView, "_isInAnimationBlock") || !+[UIView areAnimationsEnabled])
  {
    v3[2](v3);
  }

  else
  {
    [UIView _performWithoutRetargetingAnimations:v3];
  }
}

- (void)_targetNewScale:(double)a3
{
  v5 = [(_UIFluidSliderInteraction *)self _trackScale];
  [v5 value];
  v7 = vabdd_f64(v6, a3);

  if (v7 > 2.22044605e-16)
  {
    v8 = [_UIFluidSliderSettingsDomain rootSettings:MEMORY[0x1E69E9820]];
    v9 = [v8 pressScale];
    v10 = [v9 springAnimationBehavior];
    [(_UIFluidSliderInteraction *)self _animate:&v11 withSpring:v10];
  }
}

- (void)_cancelDriversExcludingDriver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59___UIFluidSliderInteraction__cancelDriversExcludingDriver___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [UIView _performWithoutRetargetingAnimations:v6];
}

- (UIPanGestureRecognizer)_panGestureRecognizer
{
  v2 = [(_UIFluidSliderInteraction *)self _panDriver];
  v3 = [v2 panGestureRecognizer];

  return v3;
}

- (_UIPhysicalButtonInteraction)_volumeButtonInteraction
{
  v2 = [(_UIFluidSliderInteraction *)self _volumeButtonDriver];
  v3 = [v2 physicalButtonInteraction];

  return v3;
}

- (void)_setElasticity:(int64_t)a3
{
  if (self->_elasticity != a3)
  {
    self->_elasticity = a3;
    [(_UIFluidSliderInteraction *)self _rebuildDrivers];
  }
}

- (double)_minSquishedWidthForWidth:(double)a3
{
  v4 = +[_UIFluidSliderSettingsDomain rootSettings];
  [v4 squishFactor];
  v6 = v5;

  v7 = +[_UIFluidSliderSettingsDomain rootSettings];
  [v7 minSquishPoints];
  v9 = v8;

  result = v6 * a3;
  if (v6 * a3 >= a3 - v9)
  {
    return a3 - v9;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [(_UIFluidSliderInteraction *)self configuration];
    [v3 appendFormat:@"; configuration = %@", v5];

    if (![(_UIFluidSliderInteraction *)self isUserInteractionEnabled])
    {
      [v3 appendString:@"; userInteractionEnabled = NO"];
    }

    if (![(_UIFluidSliderInteraction *)self _feedbackEnabled])
    {
      [v3 appendString:@"; feedbackEnabled = NO"];
    }

    if ([(_UIFluidSliderInteraction *)self _elasticity]!= 2)
    {
      v6 = [(_UIFluidSliderInteraction *)self _elasticity];
      v7 = @"full";
      if (v6 == 1)
      {
        v7 = @"indirectOnly";
      }

      if (!v6)
      {
        v7 = @"none";
      }

      [v3 appendFormat:@"; elasticity = %@", v7];
    }
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)_animate:(id)a3 withSpring:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[UIView _isInRetargetableAnimationBlock])
  {
    v6[2](v6);
  }

  else if (+[UIView _isInAnimationBlock](UIView, "_isInAnimationBlock") || !+[UIView areAnimationsEnabled])
  {
    v6[2](v6);
    [(_UIFluidSliderInteraction *)self _issueUpdate];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49___UIFluidSliderInteraction__animate_withSpring___block_invoke;
    v8[3] = &unk_1E70F0F78;
    v9 = v6;
    [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v8 completion:0];
  }
}

- (_UIFluidSliderDirectDrivingDelegate)_directDrivingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_directDrivingDelegate);

  return WeakRetained;
}

- (_UIFluidSliderVolumeButtonDriving)_volumeButtonDriver
{
  WeakRetained = objc_loadWeakRetained(&self->__volumeButtonDriver);

  return WeakRetained;
}

- (void)set_lastDriverUpdate:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  self->currentSnappingTarget = a3->var4;
  *&self->value = v3;
  *&self->state = v4;
}

@end