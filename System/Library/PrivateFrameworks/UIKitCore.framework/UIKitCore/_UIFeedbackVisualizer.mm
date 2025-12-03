@interface _UIFeedbackVisualizer
+ (id)sharedVisualizer;
- (_UIFeedbackVisualizer)init;
- (id)_colorForEngine:(id)engine;
- (id)_colorForEngineState:(int64_t)state;
- (id)_colorForFeedback:(id)feedback;
- (id)_monogramForEngine:(id)engine;
- (id)engineLayersForEngine:(id)engine;
- (id)visualFeedbackWindowForScene:(id)scene;
- (void)_showVisualForFeedback:(id)feedback;
- (void)_updateEngine:(id)engine;
- (void)cancelVisualForFeedback:(id)feedback;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)showVisualForFeedback:(id)feedback withDelay:(double)delay;
@end

@implementation _UIFeedbackVisualizer

+ (id)sharedVisualizer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___UIFeedbackVisualizer_sharedVisualizer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_1084 != -1)
  {
    dispatch_once(&_MergedGlobals_1084, block);
  }

  v2 = qword_1ED49DC50;

  return v2;
}

- (id)visualFeedbackWindowForScene:(id)scene
{
  v20 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (sceneCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_feedbackWindows;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          windowScene = [v10 windowScene];

          if (windowScene == sceneCopy)
          {
            v12 = v10;

            goto LABEL_13;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = [[_UIFeedbackVisualizerWindow alloc] initWithWindowScene:sceneCopy];
    screen = [sceneCopy screen];
    [screen _referenceBounds];
    [(UIWindow *)v12 setFrame:?];

    [(UIView *)v12 setUserInteractionEnabled:0];
    [(UIView *)v12 setBackgroundColor:0];
    [(UIWindow *)v12 setWindowLevel:2200.0];
    [(UIWindow *)v12 setHidden:0];
    [(NSMutableArray *)self->_feedbackWindows addObject:v12];
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)engineLayersForEngine:(id)engine
{
  v33 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_feedbackWindows;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        engineLayers = [v10 engineLayers];
        layer = [engineLayers objectForKey:engineCopy];

        if (layer)
        {
          [array addObject:layer];
        }

        else
        {
          layer = [MEMORY[0x1E6979398] layer];
          v13 = [(_UIFeedbackVisualizer *)self _colorForEngine:engineCopy];
          [layer setBorderColor:{objc_msgSend(v13, "CGColor")}];

          [layer setBorderWidth:4.0];
          [layer setBounds:{0.0, 0.0, 32.0, 32.0}];
          [layer setCornerRadius:16.0];
          LODWORD(v14) = 1063675494;
          [layer setOpacity:v14];
          [v10 safeAreaInsets];
          if (v15 <= 0.0)
          {
            v16 = 24.0;
          }

          else
          {
            v16 = v15 + 16.0;
          }

          engineLayers2 = [v10 engineLayers];
          v18 = [engineLayers2 count];

          if ([UIApp _isSpringBoard])
          {
            layer2 = [v10 layer];
            [layer2 bounds];
            v20 = CGRectGetWidth(v35) - (v18 * 40.0 + 24.0);
          }

          else
          {
            v20 = v18 * 40.0 + 24.0;
          }

          [layer setPosition:{v20, v16}];
          layer3 = [MEMORY[0x1E6979508] layer];
          v22 = [(_UIFeedbackVisualizer *)self _monogramForEngine:engineCopy];
          [layer3 setString:v22];

          [layer3 setFontSize:6.4];
          [layer3 setAlignmentMode:@"center"];
          [layer3 setContentsGravity:@"center"];
          [layer3 setContentsScale:3.0];
          [layer3 setFrame:{4.0, 10.6666667, 24.0, 10.6666667}];
          v23 = +[UIColor whiteColor];
          [layer3 setForegroundColor:{objc_msgSend(v23, "CGColor")}];

          [layer addSublayer:layer3];
          layer4 = [v10 layer];
          [layer4 addSublayer:layer];

          engineLayers3 = [v10 engineLayers];
          [engineLayers3 setObject:layer forKey:engineCopy];
        }
      }

      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  return array;
}

- (_UIFeedbackVisualizer)init
{
  v6.receiver = self;
  v6.super_class = _UIFeedbackVisualizer;
  v2 = [(_UIFeedbackVisualizer *)&v6 init];
  array = [MEMORY[0x1E695DF70] array];
  feedbackWindows = v2->_feedbackWindows;
  v2->_feedbackWindows = array;

  return v2;
}

- (id)_monogramForEngine:(id)engine
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 length];
  if ([v4 hasPrefix:@"_UIFeedback"])
  {
    v5 -= 11;
    v6 = 11;
  }

  else
  {
    v6 = 0;
  }

  if ([v4 hasSuffix:@"Engine"])
  {
    v7 = v6 - 6;
  }

  else
  {
    v7 = v6;
  }

  v8 = [MEMORY[0x1E696AD60] stringWithCapacity:4];
  v9 = 6;
  do
  {
    uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    v11 = [v4 rangeOfCharacterFromSet:uppercaseLetterCharacterSet options:0 range:{v7, v5}];
    v13 = v12;

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v14 = [v4 substringWithRange:{v11, v13}];
    [v8 appendString:v14];

    v5 += v7 + ~v11;
    if (!v5)
    {
      break;
    }

    v7 = v11 + 1;
    --v9;
  }

  while (v9);

  return v8;
}

- (id)_colorForEngine:(id)engine
{
  v24[3] = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  v5 = _colorForEngine__sampleFeedbacks;
  if (!_colorForEngine__sampleFeedbacks)
  {
    v6 = [_UIDiscreteFeedback discreteFeedbackForType:0];
    v24[0] = v6;
    v7 = [_UIDiscreteFeedback discreteFeedbackForType:1000];
    v24[1] = v7;
    v8 = [_UIDiscreteFeedback discreteFeedbackForType:1001];
    v24[2] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
    v10 = _colorForEngine__sampleFeedbacks;
    _colorForEngine__sampleFeedbacks = v9;

    v5 = _colorForEngine__sampleFeedbacks;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([objc_opt_class() _supportsPlayingFeedback:{v16, v19}])
        {
          v17 = [(_UIFeedbackVisualizer *)self _colorForFeedback:v16];

          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = +[UIColor blackColor];
LABEL_13:

  return v17;
}

- (id)_colorForEngineState:(int64_t)state
{
  if (state <= 2)
  {
    if (state)
    {
      if (state == 1)
      {
        v3 = 0.6;
      }

      else
      {
        if (state != 2)
        {
          goto LABEL_18;
        }

        v3 = 0.9;
      }

      v5 = 0.2;
      v6 = 1.0;
      v4 = v3;
      goto LABEL_17;
    }

    v3 = 0.3;
    v6 = 1.0;
    v4 = 0.3;
    goto LABEL_16;
  }

  if (state == 3)
  {
    v4 = 0.6;
LABEL_15:
    v3 = 0.2;
    v6 = 1.0;
LABEL_16:
    v5 = v3;
    goto LABEL_17;
  }

  if (state == 4)
  {
    v4 = 0.9;
    goto LABEL_15;
  }

  if (state != 5)
  {
    goto LABEL_18;
  }

  v3 = 0.2;
  v4 = 0.6;
  v5 = 0.8;
  v6 = 1.0;
LABEL_17:
  self = [UIColor colorWithRed:v3 green:v4 blue:v5 alpha:v6];
LABEL_18:

  return self;
}

- (id)_colorForFeedback:(id)feedback
{
  feedbackCopy = feedback;
  if ([feedbackCopy _effectiveEventType])
  {
    v4 = 0.3;
  }

  else
  {
    v4 = 0.1;
  }

  _effectiveSystemSoundID = [feedbackCopy _effectiveSystemSoundID];
  if (_effectiveSystemSoundID == _UISystemSoundIDNone)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = 0.3;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = 0.3;
  }

  else
  {
    v8 = 0.1;
  }

  return [UIColor colorWithRed:v8 green:v6 blue:v4 alpha:1.0];
}

- (void)_updateEngine:(id)engine
{
  v19 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  _state = [engineCopy _state];
  v6 = [(_UIFeedbackVisualizer *)self engineLayersForEngine:engineCopy];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [(_UIFeedbackVisualizer *)self _colorForEngineState:_state, v14];
        [v12 setBackgroundColor:{objc_msgSend(v13, "CGColor")}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)showVisualForFeedback:(id)feedback withDelay:(double)delay
{
  feedbackCopy = feedback;
  v7 = feedbackCopy;
  if (delay <= 0.0)
  {
    [(_UIFeedbackVisualizer *)self _showVisualForFeedback:feedbackCopy];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__80;
    v19 = __Block_byref_object_dispose__80;
    v20 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57___UIFeedbackVisualizer_showVisualForFeedback_withDelay___block_invoke;
    v12[3] = &unk_1E70FEE78;
    v12[4] = self;
    v8 = feedbackCopy;
    v13 = v8;
    v14 = &v15;
    v9 = _UIFeedbackPreciseDispatchAfter(0, v12, delay);
    v10 = v16[5];
    v16[5] = v9;

    visualizerSources = [v8 visualizerSources];
    [visualizerSources addObject:v16[5]];

    _Block_object_dispose(&v15, 8);
  }
}

- (void)cancelVisualForFeedback:(id)feedback
{
  v15 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  visualizerSources = [feedbackCopy visualizerSources];
  v5 = [visualizerSources countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(visualizerSources);
        }

        dispatch_source_cancel(*(*(&v10 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [visualizerSources countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  visualizerSources2 = [feedbackCopy visualizerSources];
  [visualizerSources2 removeAllObjects];
}

- (void)_showVisualForFeedback:(id)feedback
{
  v51[3] = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  _playableProtocol = [feedbackCopy _playableProtocol];

  if (_playableProtocol == &unk_1EFFA51C0)
  {
    _view = [feedbackCopy _view];
    window = [_view window];
    windowScene = [window windowScene];

    v9 = [(_UIFeedbackVisualizer *)self visualFeedbackWindowForScene:windowScene];
    v10 = v9;
    if (v9)
    {
      layer = [v9 layer];
      [feedbackCopy _location];
      v13 = v12;
      v15 = v14;
      _view2 = [feedbackCopy _view];
      if (!_view2)
      {
        _view2 = v10;
      }

      v17 = v10;
      v18 = v17;
      v47 = v17;
      v48 = windowScene;
      if (v13 == 1.79769313e308 && v15 == 1.79769313e308)
      {
        [_view2 bounds];
        [v18 convertRect:_view2 fromCoordinateSpace:?];
        x = v52.origin.x;
        y = v52.origin.y;
        width = v52.size.width;
        height = v52.size.height;
        MidX = CGRectGetMidX(v52);
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        MidY = CGRectGetMidY(v53);
      }

      else
      {
        [v17 convertPoint:_view2 fromCoordinateSpace:{v13, v15}];
        MidX = v25;
      }

      [layer convertPoint:0 fromLayer:{MidX, MidY}];
      v27 = v26;
      v29 = v28;
      v30 = [(_UIFeedbackVisualizer *)self _colorForFeedback:feedbackCopy];
      [feedbackCopy hapticParameters];
      v31 = layer;
      v32 = v46 = layer;
      [v32 _effectiveVolume];
      v34 = v33 * 256.0 + 64.0;

      layer2 = [MEMORY[0x1E6979398] layer];
      [layer2 setBackgroundColor:{objc_msgSend(v30, "CGColor")}];
      [layer2 setBounds:{0.0, 0.0, 64.0, 64.0}];
      [layer2 setPosition:{v27, v29}];
      [layer2 setCornerRadius:32.0];
      [v31 addSublayer:layer2];
      [MEMORY[0x1E6979518] begin];
      v36 = MEMORY[0x1E6979518];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __48___UIFeedbackVisualizer__showVisualForFeedback___block_invoke;
      v49[3] = &unk_1E70F3590;
      v50 = layer2;
      v37 = layer2;
      [v36 setCompletionBlock:v49];
      v38 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
      v39 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v34, v34}];
      [v38 setToValue:v39];

      v40 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
      v41 = [MEMORY[0x1E696AD98] numberWithDouble:v34 * 0.5];
      [v40 setToValue:v41];

      v42 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v42 setToValue:&unk_1EFE2E388];
      animation = [MEMORY[0x1E6979308] animation];
      [animation setDuration:0.3];
      v44 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      [animation setTimingFunction:v44];

      [animation setRemovedOnCompletion:0];
      [animation setFillMode:*MEMORY[0x1E69797E8]];
      v51[0] = v38;
      v51[1] = v40;
      v51[2] = v42;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
      [animation setAnimations:v45];

      [v37 addAnimation:animation forKey:@"animation"];
      [MEMORY[0x1E6979518] commit];

      windowScene = v48;
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"state"])
  {
    v9 = objectCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72___UIFeedbackVisualizer_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

@end