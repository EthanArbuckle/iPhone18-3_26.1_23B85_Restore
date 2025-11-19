@interface _UIFeedbackVisualizer
+ (id)sharedVisualizer;
- (_UIFeedbackVisualizer)init;
- (id)_colorForEngine:(id)a3;
- (id)_colorForEngineState:(int64_t)a3;
- (id)_colorForFeedback:(id)a3;
- (id)_monogramForEngine:(id)a3;
- (id)engineLayersForEngine:(id)a3;
- (id)visualFeedbackWindowForScene:(id)a3;
- (void)_showVisualForFeedback:(id)a3;
- (void)_updateEngine:(id)a3;
- (void)cancelVisualForFeedback:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)showVisualForFeedback:(id)a3 withDelay:(double)a4;
@end

@implementation _UIFeedbackVisualizer

+ (id)sharedVisualizer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___UIFeedbackVisualizer_sharedVisualizer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_1084 != -1)
  {
    dispatch_once(&_MergedGlobals_1084, block);
  }

  v2 = qword_1ED49DC50;

  return v2;
}

- (id)visualFeedbackWindowForScene:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
          v11 = [v10 windowScene];

          if (v11 == v4)
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

    v12 = [[_UIFeedbackVisualizerWindow alloc] initWithWindowScene:v4];
    v13 = [v4 screen];
    [v13 _referenceBounds];
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

- (id)engineLayersForEngine:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
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
        v11 = [v10 engineLayers];
        v12 = [v11 objectForKey:v4];

        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          v12 = [MEMORY[0x1E6979398] layer];
          v13 = [(_UIFeedbackVisualizer *)self _colorForEngine:v4];
          [v12 setBorderColor:{objc_msgSend(v13, "CGColor")}];

          [v12 setBorderWidth:4.0];
          [v12 setBounds:{0.0, 0.0, 32.0, 32.0}];
          [v12 setCornerRadius:16.0];
          LODWORD(v14) = 1063675494;
          [v12 setOpacity:v14];
          [v10 safeAreaInsets];
          if (v15 <= 0.0)
          {
            v16 = 24.0;
          }

          else
          {
            v16 = v15 + 16.0;
          }

          v17 = [v10 engineLayers];
          v18 = [v17 count];

          if ([UIApp _isSpringBoard])
          {
            v19 = [v10 layer];
            [v19 bounds];
            v20 = CGRectGetWidth(v35) - (v18 * 40.0 + 24.0);
          }

          else
          {
            v20 = v18 * 40.0 + 24.0;
          }

          [v12 setPosition:{v20, v16}];
          v21 = [MEMORY[0x1E6979508] layer];
          v22 = [(_UIFeedbackVisualizer *)self _monogramForEngine:v4];
          [v21 setString:v22];

          [v21 setFontSize:6.4];
          [v21 setAlignmentMode:@"center"];
          [v21 setContentsGravity:@"center"];
          [v21 setContentsScale:3.0];
          [v21 setFrame:{4.0, 10.6666667, 24.0, 10.6666667}];
          v23 = +[UIColor whiteColor];
          [v21 setForegroundColor:{objc_msgSend(v23, "CGColor")}];

          [v12 addSublayer:v21];
          v24 = [v10 layer];
          [v24 addSublayer:v12];

          v25 = [v10 engineLayers];
          [v25 setObject:v12 forKey:v4];
        }
      }

      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  return v5;
}

- (_UIFeedbackVisualizer)init
{
  v6.receiver = self;
  v6.super_class = _UIFeedbackVisualizer;
  v2 = [(_UIFeedbackVisualizer *)&v6 init];
  v3 = [MEMORY[0x1E695DF70] array];
  feedbackWindows = v2->_feedbackWindows;
  v2->_feedbackWindows = v3;

  return v2;
}

- (id)_monogramForEngine:(id)a3
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
    v10 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    v11 = [v4 rangeOfCharacterFromSet:v10 options:0 range:{v7, v5}];
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

- (id)_colorForEngine:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (id)_colorForEngineState:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = 0.6;
      }

      else
      {
        if (a3 != 2)
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

  if (a3 == 3)
  {
    v4 = 0.6;
LABEL_15:
    v3 = 0.2;
    v6 = 1.0;
LABEL_16:
    v5 = v3;
    goto LABEL_17;
  }

  if (a3 == 4)
  {
    v4 = 0.9;
    goto LABEL_15;
  }

  if (a3 != 5)
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

- (id)_colorForFeedback:(id)a3
{
  v3 = a3;
  if ([v3 _effectiveEventType])
  {
    v4 = 0.3;
  }

  else
  {
    v4 = 0.1;
  }

  v5 = [v3 _effectiveSystemSoundID];
  if (v5 == _UISystemSoundIDNone)
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

- (void)_updateEngine:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _state];
  v6 = [(_UIFeedbackVisualizer *)self engineLayersForEngine:v4];
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
        v13 = [(_UIFeedbackVisualizer *)self _colorForEngineState:v5, v14];
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

- (void)showVisualForFeedback:(id)a3 withDelay:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 0.0)
  {
    [(_UIFeedbackVisualizer *)self _showVisualForFeedback:v6];
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
    v8 = v6;
    v13 = v8;
    v14 = &v15;
    v9 = _UIFeedbackPreciseDispatchAfter(0, v12, a4);
    v10 = v16[5];
    v16[5] = v9;

    v11 = [v8 visualizerSources];
    [v11 addObject:v16[5]];

    _Block_object_dispose(&v15, 8);
  }
}

- (void)cancelVisualForFeedback:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 visualizerSources];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        dispatch_source_cancel(*(*(&v10 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [v3 visualizerSources];
  [v9 removeAllObjects];
}

- (void)_showVisualForFeedback:(id)a3
{
  v51[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _playableProtocol];

  if (v5 == &unk_1EFFA51C0)
  {
    v6 = [v4 _view];
    v7 = [v6 window];
    v8 = [v7 windowScene];

    v9 = [(_UIFeedbackVisualizer *)self visualFeedbackWindowForScene:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 layer];
      [v4 _location];
      v13 = v12;
      v15 = v14;
      v16 = [v4 _view];
      if (!v16)
      {
        v16 = v10;
      }

      v17 = v10;
      v18 = v17;
      v47 = v17;
      v48 = v8;
      if (v13 == 1.79769313e308 && v15 == 1.79769313e308)
      {
        [v16 bounds];
        [v18 convertRect:v16 fromCoordinateSpace:?];
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
        [v17 convertPoint:v16 fromCoordinateSpace:{v13, v15}];
        MidX = v25;
      }

      [v11 convertPoint:0 fromLayer:{MidX, MidY}];
      v27 = v26;
      v29 = v28;
      v30 = [(_UIFeedbackVisualizer *)self _colorForFeedback:v4];
      [v4 hapticParameters];
      v31 = v11;
      v32 = v46 = v11;
      [v32 _effectiveVolume];
      v34 = v33 * 256.0 + 64.0;

      v35 = [MEMORY[0x1E6979398] layer];
      [v35 setBackgroundColor:{objc_msgSend(v30, "CGColor")}];
      [v35 setBounds:{0.0, 0.0, 64.0, 64.0}];
      [v35 setPosition:{v27, v29}];
      [v35 setCornerRadius:32.0];
      [v31 addSublayer:v35];
      [MEMORY[0x1E6979518] begin];
      v36 = MEMORY[0x1E6979518];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __48___UIFeedbackVisualizer__showVisualForFeedback___block_invoke;
      v49[3] = &unk_1E70F3590;
      v50 = v35;
      v37 = v35;
      [v36 setCompletionBlock:v49];
      v38 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
      v39 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v34, v34}];
      [v38 setToValue:v39];

      v40 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
      v41 = [MEMORY[0x1E696AD98] numberWithDouble:v34 * 0.5];
      [v40 setToValue:v41];

      v42 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v42 setToValue:&unk_1EFE2E388];
      v43 = [MEMORY[0x1E6979308] animation];
      [v43 setDuration:0.3];
      v44 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      [v43 setTimingFunction:v44];

      [v43 setRemovedOnCompletion:0];
      [v43 setFillMode:*MEMORY[0x1E69797E8]];
      v51[0] = v38;
      v51[1] = v40;
      v51[2] = v42;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
      [v43 setAnimations:v45];

      [v37 addAnimation:v43 forKey:@"animation"];
      [MEMORY[0x1E6979518] commit];

      v8 = v48;
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if ([a3 isEqualToString:@"state"])
  {
    v9 = v8;
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