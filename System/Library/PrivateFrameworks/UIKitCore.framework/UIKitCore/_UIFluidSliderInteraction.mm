@interface _UIFluidSliderInteraction
- ($0E0C902F25D72445DD01CB63E261F0E2)_lastDriverUpdate;
- (CGSize)_normalizedTrackSize;
- (NSString)description;
- (UIPanGestureRecognizer)_panGestureRecognizer;
- (UIView)view;
- (_UIFluidSliderDirectDriving)_panDriver;
- (_UIFluidSliderDirectDrivingDelegate)_directDrivingDelegate;
- (_UIFluidSliderDriving)_activeDriver;
- (_UIFluidSliderInteraction)initWithConfiguration:(id)configuration handler:(id)handler;
- (_UIFluidSliderVolumeButtonDriving)_volumeButtonDriver;
- (_UIPhysicalButtonInteraction)_volumeButtonInteraction;
- (double)_driftFactor;
- (double)_feedbackEpsilon;
- (double)_minSquishedWidthForWidth:(double)width;
- (double)currentTrackLength;
- (double)maxValue;
- (double)minValue;
- (double)presentationValue;
- (double)value;
- (unint64_t)stepCount;
- (void)_animate:(id)_animate withSpring:(id)spring;
- (void)_cancelDriversExcludingDriver:(id)driver;
- (void)_issueUpdate;
- (void)_rebuildDrivers;
- (void)_removeAllDrivers;
- (void)_setDirectDrivingDelegate:(id)delegate;
- (void)_setElasticity:(int64_t)elasticity;
- (void)_targetNewScale:(double)scale;
- (void)_targetNewValue:(double)value;
- (void)didMoveToView:(id)view;
- (void)fluidSliderDriver:(id)driver didGenerateUpdate:(id *)update;
- (void)setConfiguration:(id)configuration;
- (void)setLocked:(BOOL)locked;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setValue:(double)value;
- (void)set_lastDriverUpdate:(id *)update;
- (void)willMoveToView:(id)view;
@end

@implementation _UIFluidSliderInteraction

- (void)_rebuildDrivers
{
  v40 = *MEMORY[0x1E69E9840];
  view = [(_UIFluidSliderInteraction *)self view];
  if (!view)
  {
    return;
  }

  v4 = view;
  configuration = [(_UIFluidSliderInteraction *)self configuration];

  if (!configuration)
  {
    return;
  }

  [(_UIFluidSliderInteraction *)self _removeAllDrivers];
  configuration2 = [(_UIFluidSliderInteraction *)self configuration];
  preferredInputMethods = [configuration2 preferredInputMethods];

  array = [MEMORY[0x1E695DF70] array];
  if (preferredInputMethods)
  {
    [(_UIFluidSliderInteraction *)self _elasticity];
    v10 = objc_opt_new();
    WeakRetained = objc_loadWeakRetained(&self->_directDrivingDelegate);
    [v10 setDelegate:WeakRetained];

    [(_UIFluidSliderInteraction *)self set_panDriver:v10];
    [array addObject:v10];

    if ((preferredInputMethods & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    [(_UIFluidSliderInteraction *)self set_volumeButtonDriver:0];
    goto LABEL_8;
  }

  [(_UIFluidSliderInteraction *)self set_panDriver:0];
  if ((preferredInputMethods & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = objc_opt_new();
  [(_UIFluidSliderInteraction *)self set_volumeButtonDriver:v9];
  [array addObject:v9];

LABEL_8:
  configuration3 = [(_UIFluidSliderInteraction *)self configuration];
  _customDrivers = [configuration3 _customDrivers];
  [array addObjectsFromArray:_customDrivers];

  [(_UIFluidSliderInteraction *)self set_drivers:array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  _drivers = [(_UIFluidSliderInteraction *)self _drivers];
  v15 = [_drivers countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(_drivers);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        view2 = [(_UIFluidSliderInteraction *)self view];

        if (view2)
        {
          view3 = [(_UIFluidSliderInteraction *)self view];
          [v19 setView:view3];

          [v19 setDrivable:self];
        }

        configuration4 = [(_UIFluidSliderInteraction *)self configuration];

        if (configuration4)
        {
          [v19 setTrackAxis:{-[_UIFluidSliderInteraction _axis](self, "_axis")}];
          configuration5 = [(_UIFluidSliderInteraction *)self configuration];
          [configuration5 stretchAmount];
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
          configuration6 = [(_UIFluidSliderInteraction *)self configuration];
          [configuration6 velocityMultiplier];
          [v19 setVelocityMultiplier:?];
        }

        [v19 setEnabled:{-[_UIFluidSliderInteraction isUserInteractionEnabled](self, "isUserInteractionEnabled")}];
      }

      v16 = [_drivers countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);
  }

  v28 = [(_UIFluidSliderInteraction *)self stepCount]>> 1;
  v29 = [_UIFluidSliderFeedbackConductor alloc];
  view4 = [(_UIFluidSliderInteraction *)self view];
  v31 = [(_UIFluidSliderFeedbackConductor *)v29 initWithDetentCount:v28 view:view4 indirectFeedbackPlayer:0];
  [(_UIFluidSliderInteraction *)self set_feedbackConductor:v31];

  [(_UIFluidSliderInteraction *)self _feedbackEpsilon];
  v33 = v32;
  _feedbackConductor = [(_UIFluidSliderInteraction *)self _feedbackConductor];
  [_feedbackConductor setEpsilon:v33];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (double)_feedbackEpsilon
{
  view = [(_UIFluidSliderInteraction *)self view];
  traitCollection = [view traitCollection];
  [traitCollection displayScale];
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
    _animatedValue = [(_UIFluidSliderInteraction *)self _animatedValue];
    [_animatedValue value];
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
  _drivers = [(_UIFluidSliderInteraction *)self _drivers];
  v3 = [_drivers countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(_drivers);
        }

        [*(*(&v7 + 1) + 8 * v6++) setView:0];
      }

      while (v4 != v6);
      v4 = [_drivers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (unint64_t)stepCount
{
  configuration = [(_UIFluidSliderInteraction *)self configuration];
  stepCount = [configuration stepCount];

  return stepCount;
}

- (void)_issueUpdate
{
  _animatedValue = [(_UIFluidSliderInteraction *)self _animatedValue];
  [_animatedValue presentationValue];
  v5 = v4;

  _trackWidth = [(_UIFluidSliderInteraction *)self _trackWidth];
  [_trackWidth presentationValue];
  v8 = v7;

  _trackLength = [(_UIFluidSliderInteraction *)self _trackLength];
  [_trackLength presentationValue];
  v11 = v10;

  _elasticity = [(_UIFluidSliderInteraction *)self _elasticity];
  if (_elasticity != 2)
  {
    if (_elasticity != 1 || ([(_UIFluidSliderInteraction *)self _lastDriverUpdate], v92 == 1))
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
    configuration = [(_UIFluidSliderInteraction *)self configuration];
    [configuration stretchAmount];
    v21 = v20;

    v22 = v21 < 1.0;
    v23 = 0.0;
    if (!v22)
    {
      configuration2 = [(_UIFluidSliderInteraction *)self configuration];
      [configuration2 stretchAmount];
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
  view = [(_UIFluidSliderInteraction *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  _axis = [(_UIFluidSliderInteraction *)self _axis];
  v33 = _axis;
  v34 = -v29;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v34 = v29;
  }

  if (_axis == 1)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v29;
  }

  ty = v35;
  if (_axis == 1)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0.0;
  }

  if (_axis == 1)
  {
    v37 = v27;
  }

  else
  {
    v37 = v18;
  }

  if (_axis != 1)
  {
    v18 = v27;
  }

  v38 = fmax(fmin(v5, 1.0), 0.0);
  configuration3 = [(_UIFluidSliderInteraction *)self configuration];
  [configuration3 neutralPosition];
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
  if (effectiveUserInterfaceLayoutDirection == 1)
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
  _activeDriver = [(_UIFluidSliderInteraction *)self _activeDriver];

  if (_activeDriver)
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

    _animatedValue2 = [(_UIFluidSliderInteraction *)self _animatedValue];
    [_animatedValue2 value];
    v66 = vabdd_f64(v65, v5) > 2.22044605e-16;

    v62 = 0;
    v58 = 0;
    v59 = 2 * v66;
  }

  [(_UIFluidSliderInteraction *)self set_state:v59];
  _trackScale = [(_UIFluidSliderInteraction *)self _trackScale];
  [_trackScale presentationValue];
  v71 = v70;

  memset(&v88, 0, sizeof(v88));
  CGAffineTransformMakeScale(&v88, v71, v71);
  v86 = v88;
  CGAffineTransformTranslate(&v87, &v86, v36, ty);
  v88 = v87;
  v72 = objc_opt_new();
  isLocked = [(_UIFluidSliderInteraction *)self isLocked];
  v74 = v38;
  if (isLocked)
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
  _handler = [(_UIFluidSliderInteraction *)self _handler];
  (_handler)[2](_handler, v72);

  if ([(_UIFluidSliderInteraction *)self _feedbackEnabled]&& [(_UIFluidSliderInteraction *)self isUserInteractionEnabled]&& ![(_UIFluidSliderInteraction *)self isLocked])
  {
    _feedbackConductor = [(_UIFluidSliderInteraction *)self _feedbackConductor];
    v78 = v91;
    [(_UIFluidSliderInteraction *)self _lastDriverUpdate];
    [_feedbackConductor moveToValue:v85 snappingTarget:v62 withUpdateType:v5 atLocation:v78 forced:{v51, v80}];
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

- (_UIFluidSliderInteraction)initWithConfiguration:(id)configuration handler:(id)handler
{
  v25[4] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
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

    _trackScale = [(_UIFluidSliderInteraction *)v9 _trackScale];
    [_trackScale setValue:1.0];

    _animatedValue = [(_UIFluidSliderInteraction *)v9 _animatedValue];
    v25[0] = _animatedValue;
    _trackWidth = [(_UIFluidSliderInteraction *)v9 _trackWidth];
    v25[1] = _trackWidth;
    _trackLength = [(_UIFluidSliderInteraction *)v9 _trackLength];
    v25[2] = _trackLength;
    _trackScale2 = [(_UIFluidSliderInteraction *)v9 _trackScale];
    v25[3] = _trackScale2;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];

    objc_initWeak(&location, v9);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59___UIFluidSliderInteraction_initWithConfiguration_handler___block_invoke;
    v21[3] = &unk_1E70F5A28;
    objc_copyWeak(&v22, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v19 presentationValueChangedCallback:v21];
    [(_UIFluidSliderInteraction *)v9 set_handler:handlerCopy];
    [(_UIFluidSliderInteraction *)v9 setConfiguration:configurationCopy];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)setConfiguration:(id)configuration
{
  v84 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  configuration = self->_configuration;
  v7 = configurationCopy;
  configurationCopy2 = configuration;
  v9 = configurationCopy2;
  if (configurationCopy2 != v7)
  {
    if (v7 && configurationCopy2)
    {
      v10 = [(_UIFluidSliderInteractionConfiguration *)v7 isEqual:configurationCopy2];

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

    preferredInputMethods = [(_UIFluidSliderInteractionConfiguration *)self->_configuration preferredInputMethods];
    if (preferredInputMethods == [(_UIFluidSliderInteractionConfiguration *)v11 preferredInputMethods])
    {
      _customDrivers = [(_UIFluidSliderInteractionConfiguration *)self->_configuration _customDrivers];
      _customDrivers2 = [(_UIFluidSliderInteractionConfiguration *)v11 _customDrivers];
      v17 = _customDrivers;
      v18 = _customDrivers2;
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
        _drivers = [(_UIFluidSliderInteraction *)self _drivers];
        v34 = [_drivers countByEnumeratingWithState:&v77 objects:v83 count:16];
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
                objc_enumerationMutation(_drivers);
              }

              [*(*(&v77 + 1) + 8 * i) setTrackAxis:{-[_UIFluidSliderInteraction _axis](self, "_axis")}];
            }

            v35 = [_drivers countByEnumeratingWithState:&v77 objects:v83 count:16];
          }

          while (v35);
        }

        [(_UIFluidSliderInteraction *)self _feedbackEpsilon];
        v39 = v38;
        _feedbackConductor = [(_UIFluidSliderInteraction *)self _feedbackConductor];
        [_feedbackConductor setEpsilon:v39];

        if (!v11)
        {
LABEL_40:
          [(_UIFluidSliderInteractionConfiguration *)self->_configuration stretchAmount];
          if (v44 < 0.0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFluidSliderInteraction.m" lineNumber:279 description:@"_UIFluidSliderInteractionConfiguration.stretchAmount must be a non-negative value!"];
          }

          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          _drivers2 = [(_UIFluidSliderInteraction *)self _drivers];
          v46 = [_drivers2 countByEnumeratingWithState:&v73 objects:v82 count:16];
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
                  objc_enumerationMutation(_drivers2);
                }

                v50 = *(*(&v73 + 1) + 8 * j);
                [(_UIFluidSliderInteractionConfiguration *)self->_configuration stretchAmount];
                if (v51 < 1.0)
                {
                  v51 = 0.0;
                }

                [v50 setStretchAmount:v51];
              }

              v47 = [_drivers2 countByEnumeratingWithState:&v73 objects:v82 count:16];
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
            _drivers3 = [(_UIFluidSliderInteraction *)self _drivers];
            v56 = [_drivers3 countByEnumeratingWithState:&v69 objects:v81 count:16];
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
                    objc_enumerationMutation(_drivers3);
                  }

                  v60 = *(*(&v69 + 1) + 8 * k);
                  [(_UIFluidSliderInteractionConfiguration *)self->_configuration velocityMultiplier];
                  [v60 setVelocityMultiplier:?];
                }

                v57 = [_drivers3 countByEnumeratingWithState:&v69 objects:v81 count:16];
              }

              while (v57);
            }

            v27 = 1;
            if (!v11)
            {
LABEL_63:
              if (![(_UIFluidSliderInteractionConfiguration *)self->_configuration stepCount])
              {
                currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFluidSliderInteraction.m" lineNumber:299 description:@"_UIFluidSliderInteractionConfiguration.stepCount must be non-zero!"];

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
                  programmaticUpdate = [v63 programmaticUpdate];
                  springAnimationBehavior = [programmaticUpdate springAnimationBehavior];
                  [(_UIFluidSliderInteraction *)self _animate:v62 withSpring:springAnimationBehavior];
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
            stepCount = [(_UIFluidSliderInteractionConfiguration *)self->_configuration stepCount];
            if (stepCount == [(_UIFluidSliderInteractionConfiguration *)v11 stepCount])
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

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_userInteractionEnabled != enabled)
  {
    self->_userInteractionEnabled = enabled;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    _drivers = [(_UIFluidSliderInteraction *)self _drivers];
    v5 = [_drivers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(_drivers);
          }

          [*(*(&v9 + 1) + 8 * v8++) setEnabled:self->_userInteractionEnabled];
        }

        while (v6 != v8);
        v6 = [_drivers countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setLocked:(BOOL)locked
{
  if (self->_locked != locked)
  {
    if (locked)
    {
      [(_UIFluidSliderInteraction *)self value];
      [(_UIFluidSliderInteraction *)self set_lockedValue:?];
    }

    self->_locked = locked;
  }
}

- (void)willMoveToView:(id)view
{
  [(_UIFluidSliderInteraction *)self _removeAllDrivers];
  [(_UIFluidSliderInteraction *)self set_feedbackConductor:0];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    [(_UIFluidSliderInteraction *)self _rebuildDrivers];
  }
}

- (void)_setDirectDrivingDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_directDrivingDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_directDrivingDelegate, obj);
    _panDriver = [(_UIFluidSliderInteraction *)self _panDriver];
    [_panDriver setDelegate:obj];
  }
}

- (void)setValue:(double)value
{
  v24 = *MEMORY[0x1E69E9840];
  _activeDriver = [(_UIFluidSliderInteraction *)self _activeDriver];

  if (!_activeDriver)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    _drivers = [(_UIFluidSliderInteraction *)self _drivers];
    v7 = [_drivers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(_drivers);
          }

          [*(*(&v19 + 1) + 8 * v10++) stop];
        }

        while (v8 != v10);
        v8 = [_drivers countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  v11 = fmax(fmin(value, 1.0), 0.0);
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
  programmaticUpdate = [v13 programmaticUpdate];
  springAnimationBehavior = [programmaticUpdate springAnimationBehavior];
  [(_UIFluidSliderInteraction *)self _animate:v12 withSpring:springAnimationBehavior];
}

- (double)presentationValue
{
  _animatedValue = [(_UIFluidSliderInteraction *)self _animatedValue];
  [_animatedValue presentationValue];
  v4 = v3;

  return v4;
}

- (double)currentTrackLength
{
  _trackLength = [(_UIFluidSliderInteraction *)self _trackLength];
  [_trackLength presentationValue];
  v4 = v3;

  return v4;
}

- (double)minValue
{
  configuration = [(_UIFluidSliderInteraction *)self configuration];
  [configuration minValue];
  v4 = v3;

  return v4;
}

- (double)maxValue
{
  configuration = [(_UIFluidSliderInteraction *)self configuration];
  [configuration maxValue];
  v4 = v3;

  return v4;
}

- (void)fluidSliderDriver:(id)driver didGenerateUpdate:(id *)update
{
  v28 = *MEMORY[0x1E69E9840];
  driverCopy = driver;
  v7 = *&update->var2;
  *v26 = *&update->var0;
  *&v26[16] = v7;
  var4 = update->var4;
  [(_UIFluidSliderInteraction *)self set_lastDriverUpdate:v26];
  var2 = update->var2;
  if (var2 == 1)
  {
    _activeDriver = [(_UIFluidSliderInteraction *)self _activeDriver];

    if (_activeDriver == driverCopy)
    {
      goto LABEL_7;
    }

    [(_UIFluidSliderInteraction *)self _cancelDriversExcludingDriver:driverCopy];
    v10 = driverCopy;
    goto LABEL_4;
  }

  if (!var2)
  {
    _activeDriver2 = [(_UIFluidSliderInteraction *)self _activeDriver];

    if (_activeDriver2 == driverCopy)
    {
      v10 = 0;
LABEL_4:
      [(_UIFluidSliderInteraction *)self set_activeDriver:v10];
    }
  }

LABEL_7:
  _activeDriver3 = [(_UIFluidSliderInteraction *)self _activeDriver];
  v13 = _activeDriver3;
  if (_activeDriver3 == driverCopy)
  {
  }

  else
  {
    _activeDriver4 = [(_UIFluidSliderInteraction *)self _activeDriver];

    if (_activeDriver4)
    {
      v15 = *(__UILogGetCategoryCachedImpl("FluidSliderInteraction", &qword_1ED49E3C0) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        name = [driverCopy name];
        var0 = update->var0;
        v19 = @"NO";
        *v26 = 138412802;
        *&v26[4] = name;
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
    name2 = [driverCopy name];
    v23 = update->var0;
    v24 = @"NO";
    *v26 = 138412802;
    *&v26[4] = name2;
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

  [(_UIFluidSliderInteraction *)self _targetNewValue:update->var0, *v26];
LABEL_19:
  if ([(_UIFluidSliderInteraction *)self _shouldScaleOnIndirectInput])
  {
    var1 = 1.0;
    if ((update->var2 - 1) <= 1)
    {
      var1 = update->var1;
    }

    [(_UIFluidSliderInteraction *)self _targetNewScale:var1];
  }
}

- (void)_targetNewValue:(double)value
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45___UIFluidSliderInteraction__targetNewValue___block_invoke;
  v4[3] = &unk_1E70F32F0;
  v4[4] = self;
  *&v4[5] = value;
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

- (void)_targetNewScale:(double)scale
{
  _trackScale = [(_UIFluidSliderInteraction *)self _trackScale];
  [_trackScale value];
  v7 = vabdd_f64(v6, scale);

  if (v7 > 2.22044605e-16)
  {
    v8 = [_UIFluidSliderSettingsDomain rootSettings:MEMORY[0x1E69E9820]];
    pressScale = [v8 pressScale];
    springAnimationBehavior = [pressScale springAnimationBehavior];
    [(_UIFluidSliderInteraction *)self _animate:&v11 withSpring:springAnimationBehavior];
  }
}

- (void)_cancelDriversExcludingDriver:(id)driver
{
  driverCopy = driver;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59___UIFluidSliderInteraction__cancelDriversExcludingDriver___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = driverCopy;
  v5 = driverCopy;
  [UIView _performWithoutRetargetingAnimations:v6];
}

- (UIPanGestureRecognizer)_panGestureRecognizer
{
  _panDriver = [(_UIFluidSliderInteraction *)self _panDriver];
  panGestureRecognizer = [_panDriver panGestureRecognizer];

  return panGestureRecognizer;
}

- (_UIPhysicalButtonInteraction)_volumeButtonInteraction
{
  _volumeButtonDriver = [(_UIFluidSliderInteraction *)self _volumeButtonDriver];
  physicalButtonInteraction = [_volumeButtonDriver physicalButtonInteraction];

  return physicalButtonInteraction;
}

- (void)_setElasticity:(int64_t)elasticity
{
  if (self->_elasticity != elasticity)
  {
    self->_elasticity = elasticity;
    [(_UIFluidSliderInteraction *)self _rebuildDrivers];
  }
}

- (double)_minSquishedWidthForWidth:(double)width
{
  v4 = +[_UIFluidSliderSettingsDomain rootSettings];
  [v4 squishFactor];
  v6 = v5;

  v7 = +[_UIFluidSliderSettingsDomain rootSettings];
  [v7 minSquishPoints];
  v9 = v8;

  result = v6 * width;
  if (v6 * width >= width - v9)
  {
    return width - v9;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  if (os_variant_has_internal_diagnostics())
  {
    configuration = [(_UIFluidSliderInteraction *)self configuration];
    [v3 appendFormat:@"; configuration = %@", configuration];

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
      _elasticity = [(_UIFluidSliderInteraction *)self _elasticity];
      v7 = @"full";
      if (_elasticity == 1)
      {
        v7 = @"indirectOnly";
      }

      if (!_elasticity)
      {
        v7 = @"none";
      }

      [v3 appendFormat:@"; elasticity = %@", v7];
    }
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)_animate:(id)_animate withSpring:(id)spring
{
  _animateCopy = _animate;
  springCopy = spring;
  if (+[UIView _isInRetargetableAnimationBlock])
  {
    _animateCopy[2](_animateCopy);
  }

  else if (+[UIView _isInAnimationBlock](UIView, "_isInAnimationBlock") || !+[UIView areAnimationsEnabled])
  {
    _animateCopy[2](_animateCopy);
    [(_UIFluidSliderInteraction *)self _issueUpdate];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49___UIFluidSliderInteraction__animate_withSpring___block_invoke;
    v8[3] = &unk_1E70F0F78;
    v9 = _animateCopy;
    [UIView _animateUsingSpringBehavior:springCopy tracking:0 animations:v8 completion:0];
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

- (void)set_lastDriverUpdate:(id *)update
{
  v3 = *&update->var0;
  v4 = *&update->var2;
  self->currentSnappingTarget = update->var4;
  *&self->value = v3;
  *&self->state = v4;
}

@end