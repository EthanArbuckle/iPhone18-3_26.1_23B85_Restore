@interface UIKeyboardFlipTransitionView
- (UIKeyboardFlipTransitionView)initWithFrame:(CGRect)frame;
- (void)_delayedUpdateTransition;
- (void)_flipToFront:(BOOL)front animated:(BOOL)animated;
- (void)rebuildBackgroundTransition;
- (void)rebuildControlSlicesForKeyName:(id)name;
- (void)rebuildMoreIntlKeys;
- (void)setFrame:(CGRect)frame;
- (void)setShowingFrontFace:(BOOL)face;
- (void)updateMoreIntlKey:(id)key asStart:(BOOL)start withRect:(CGRect)rect showIntl:(BOOL)intl showDictKey:(BOOL)dictKey;
@end

@implementation UIKeyboardFlipTransitionView

- (UIKeyboardFlipTransitionView)initWithFrame:(CGRect)frame
{
  v37.receiver = self;
  v37.super_class = UIKeyboardFlipTransitionView;
  v3 = [(UIView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setAnchorPoint:0.5, 0.5];
    layer = [MEMORY[0x1E6979398] layer];
    container = v4->_container;
    v4->_container = layer;

    [(UIView *)v4 anchorPoint];
    [(CALayer *)v4->_container setAnchorPoint:?];
    layer2 = [MEMORY[0x1E6979398] layer];
    frontFace = v4->_frontFace;
    v4->_frontFace = layer2;

    layer3 = [MEMORY[0x1E6979398] layer];
    backFace = v4->_backFace;
    v4->_backFace = layer3;

    [(UIKeyboardSplitTransitionView *)v4 initializeLayers];
    v11 = v4->_frontFace;
    backgroundLayers = [(UIKeyboardSplitTransitionView *)v4 backgroundLayers];
    v13 = [backgroundLayers objectAtIndex:0];
    [(CALayer *)v11 addSublayer:v13];

    v14 = v4->_backFace;
    backgroundLayers2 = [(UIKeyboardSplitTransitionView *)v4 backgroundLayers];
    v16 = [backgroundLayers2 objectAtIndex:1];
    [(CALayer *)v14 addSublayer:v16];

    v17 = v4->_backFace;
    backgroundLayers3 = [(UIKeyboardSplitTransitionView *)v4 backgroundLayers];
    v19 = [backgroundLayers3 objectAtIndex:2];
    [(CALayer *)v17 addSublayer:v19];

    layer4 = [MEMORY[0x1E6979398] layer];
    frontDarkening = v4->_frontDarkening;
    v4->_frontDarkening = layer4;

    v22 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v4->_frontDarkening, "setBackgroundColor:", [v22 CGColor]);

    layer5 = [MEMORY[0x1E6979398] layer];
    backDarkening = v4->_backDarkening;
    v4->_backDarkening = layer5;

    v25 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v4->_backDarkening, "setBackgroundColor:", [v25 CGColor]);

    layer6 = [MEMORY[0x1E6979398] layer];
    backDarkeningLeft = v4->_backDarkeningLeft;
    v4->_backDarkeningLeft = layer6;

    v28 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v4->_backDarkeningLeft, "setBackgroundColor:", [v28 CGColor]);

    layer7 = [MEMORY[0x1E6979398] layer];
    backDarkeningRight = v4->_backDarkeningRight;
    v4->_backDarkeningRight = layer7;

    v31 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v4->_backDarkeningRight, "setBackgroundColor:", [v31 CGColor]);

    [(CALayer *)v4->_frontFace addSublayer:v4->_frontDarkening];
    [(CALayer *)v4->_backFace addSublayer:v4->_backDarkening];
    [(CALayer *)v4->_backFace addSublayer:v4->_backDarkeningLeft];
    [(CALayer *)v4->_backFace addSublayer:v4->_backDarkeningRight];
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    controlKeys = v4->_controlKeys;
    v4->_controlKeys = v32;

    layer8 = [(UIView *)v4 layer];
    [layer8 addSublayer:v4->_container];

    [(CALayer *)v4->_container addSublayer:v4->_frontFace];
    [(CALayer *)v4->_container addSublayer:v4->_backFace];
    v35 = v4;
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectIsEmpty(frame))
  {
    v12.receiver = self;
    v12.super_class = UIKeyboardFlipTransitionView;
    [(UIKeyboardSplitTransitionView *)&v12 setFrame:x, y, width, height];
    [(UIView *)self frame];
    [(UIView *)self setCenter:width * 0.5, v8 * 0.5];
    [(UIView *)self bounds];
    [(CALayer *)self->_container setBounds:?];
    layer = [(UIView *)self layer];
    [layer position];
    [(CALayer *)self->_container setPosition:?];

    [(CALayer *)self->_container setPerspectiveDistance:width];
    sublayers = [(CALayer *)self->_container sublayers];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__UIKeyboardFlipTransitionView_setFrame___block_invoke;
    v11[3] = &unk_1E70F5BE0;
    v11[4] = self;
    [sublayers enumerateObjectsUsingBlock:v11];
  }
}

void __41__UIKeyboardFlipTransitionView_setFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[73] != v3 && v4[74] != v3 && v4[75] != v3 && v4[76] != v3)
  {
    v5 = v3;
    [v3 setAnchorPoint:{0.5, 0.5}];
    [*(*(a1 + 32) + 560) bounds];
    [v5 setBounds:?];
    [*(*(a1 + 32) + 560) position];
    [v5 setPosition:?];
    v3 = v5;
  }
}

- (void)_flipToFront:(BOOL)front animated:(BOOL)animated
{
  frontCopy = front;
  v5 = *(MEMORY[0x1E69792E8] + 80);
  v82 = v5;
  v84 = *(MEMORY[0x1E69792E8] + 64);
  if (animated)
  {
    v6 = 0.4;
  }

  else
  {
    v6 = 0.0;
  }

  *&v93.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v93.m33 = v5;
  v79 = *(MEMORY[0x1E69792E8] + 112);
  *&v93.m41 = *(MEMORY[0x1E69792E8] + 96);
  v80 = *&v93.m41;
  *&v93.m43 = v79;
  v76 = *(MEMORY[0x1E69792E8] + 16);
  *&v93.m11 = *MEMORY[0x1E69792E8];
  v77 = *&v93.m11;
  *&v93.m13 = v76;
  v73 = *(MEMORY[0x1E69792E8] + 48);
  *&v93.m21 = *(MEMORY[0x1E69792E8] + 32);
  v74 = *&v93.m21;
  *&v93.m23 = v73;
  memset(&v92, 0, sizeof(v92));
  CATransform3DMakeRotation(&v92, 1.57079633, 1.0, 0.0, 0.0);
  memset(&v91, 0, sizeof(v91));
  CATransform3DMakeRotation(&v91, 3.14159265, 1.0, 0.0, 0.0);
  *&v90.m31 = v84;
  *&v90.m33 = v82;
  *&v90.m41 = v80;
  *&v90.m43 = v79;
  *&v90.m11 = v77;
  *&v90.m13 = v76;
  *&v90.m21 = v74;
  *&v90.m23 = v73;
  memset(&v89, 0, sizeof(v89));
  CATransform3DMakeRotation(&v89, -1.57079633, 1.0, 0.0, 0.0);
  memset(&v88, 0, sizeof(v88));
  CATransform3DMakeRotation(&v88, -3.14159265, 1.0, 0.0, 0.0);
  v72 = frontCopy;
  if (frontCopy)
  {
    v93 = v91;
    v7 = &v91;
  }

  else
  {
    v90 = v88;
    v7 = &v88;
  }

  *&v7->m31 = v84;
  *&v7->m33 = v82;
  *&v7->m41 = v80;
  *&v7->m43 = v79;
  *&v7->m11 = v77;
  *&v7->m13 = v76;
  *&v7->m21 = v74;
  *&v7->m23 = v73;
  v8 = MEMORY[0x1E695DEC8];
  v87 = v93;
  v9 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v87];
  v87 = v92;
  v10 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v87];
  v87 = v91;
  v11 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v87];
  v12 = [v8 arrayWithObjects:{v9, v10, v11, 0}];

  v13 = MEMORY[0x1E695DEC8];
  v87 = v90;
  v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v87];
  v87 = v89;
  v15 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v87];
  v87 = v88;
  v16 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v87];
  v17 = [v13 arrayWithObjects:{v14, v15, v16, 0}];

  v18 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  [v18 setRemovedOnCompletion:0];
  v19 = *MEMORY[0x1E69797E8];
  v75 = *MEMORY[0x1E69797E8];
  [v18 setFillMode:*MEMORY[0x1E69797E8]];
  [v18 setDuration:v6];
  [v18 setCalculationMode:@"cubic"];
  v20 = MEMORY[0x1E695DEC8];
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  LODWORD(v22) = 0.5;
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  LODWORD(v24) = 1.0;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v26 = [v20 arrayWithObjects:{v21, v23, v25, 0}];
  [v18 setKeyTimes:v26];

  v85 = v12;
  [v18 setValues:v12];
  [(CALayer *)self->_frontFace addAnimation:v18 forKey:@"front flip animation"];
  v27 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  [v27 setRemovedOnCompletion:0];
  [v27 setFillMode:v19];
  [v27 setDuration:v6];
  [v27 setCalculationMode:@"cubic"];
  v81 = v18;
  keyTimes = [v18 keyTimes];
  [v27 setKeyTimes:keyTimes];

  v83 = v17;
  [v27 setValues:v17];
  v78 = v27;
  [(CALayer *)self->_backFace addAnimation:v27 forKey:@"back flip animation"];
  v29 = MEMORY[0x1E695DEC8];
  v30 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  LODWORD(v31) = 0.5;
  v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
  LODWORD(v33) = 1056964776;
  v34 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
  LODWORD(v35) = 1.0;
  v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  v37 = [v29 arrayWithObjects:{v30, v32, v34, v36, 0}];

  v38 = [MEMORY[0x1E6979390] animationWithKeyPath:@"hidden"];
  [v38 setRemovedOnCompletion:0];
  [v38 setFillMode:v75];
  [v38 setDuration:v6];
  [v38 setCalculationMode:@"cubic"];
  [v38 setKeyTimes:v37];
  v39 = MEMORY[0x1E695DEC8];
  v40 = [MEMORY[0x1E696AD98] numberWithBool:v72];
  *&v41 = v72;
  v42 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
  *&v43 = (v72 ^ 1);
  v44 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
  *&v45 = (v72 ^ 1);
  v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
  v47 = [v39 arrayWithObjects:{v40, v42, v44, v46, 0}];
  [v38 setValues:v47];

  [(CALayer *)self->_frontFace addAnimation:v38 forKey:@"front hidden animation"];
  v48 = [MEMORY[0x1E6979390] animationWithKeyPath:@"hidden"];
  [v48 setRemovedOnCompletion:0];
  [v48 setFillMode:v75];
  [v48 setDuration:v6];
  [v48 setCalculationMode:@"cubic"];
  [v48 setKeyTimes:v37];
  v49 = MEMORY[0x1E695DEC8];
  *&v50 = (v72 ^ 1);
  v51 = [MEMORY[0x1E696AD98] numberWithFloat:v50];
  *&v52 = (v72 ^ 1);
  v53 = [MEMORY[0x1E696AD98] numberWithFloat:v52];
  *&v54 = v72;
  v55 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
  *&v56 = v72;
  v57 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
  v58 = [v49 arrayWithObjects:{v51, v53, v55, v57, 0}];
  [v48 setValues:v58];

  [(CALayer *)self->_backFace addAnimation:v48 forKey:@"back hidden animation"];
  v59 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v59 setRemovedOnCompletion:0];
  [v59 setFillMode:v75];
  [v59 setDuration:v6];
  [v59 setCalculationMode:@"cubic"];
  [v59 setKeyTimes:v37];
  v60 = MEMORY[0x1E695DEC8];
  v61 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  LODWORD(v62) = 1053609165;
  v63 = [MEMORY[0x1E696AD98] numberWithFloat:v62];
  LODWORD(v64) = 1053609165;
  v65 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
  v66 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  v67 = [v60 arrayWithObjects:{v61, v63, v65, v66, 0}];
  [v59 setValues:v67];

  [(CALayer *)self->_frontDarkening addAnimation:v59 forKey:@"darkening animation"];
  [(CALayer *)self->_frontDarkening addAnimation:v38 forKey:@"front hidden animation"];
  if (self->super._centerFilled)
  {
    p_backDarkening = &self->_backDarkening;
    backDarkening = self->_backDarkening;
    v70 = @"darkening animation";
    v71 = v59;
  }

  else
  {
    [(CALayer *)self->_backDarkeningLeft addAnimation:v59 forKey:@"darkening animation"];
    p_backDarkening = &self->_backDarkeningRight;
    [(CALayer *)self->_backDarkeningRight addAnimation:v59 forKey:@"darkening animation"];
    backDarkening = self->_backDarkeningLeft;
    v70 = @"back hidden animation";
    v71 = v48;
  }

  [(CALayer *)backDarkening addAnimation:v71 forKey:v70];
  [(CALayer *)*p_backDarkening addAnimation:v48 forKey:@"back hidden animation"];
}

- (void)setShowingFrontFace:(BOOL)face
{
  if (self->_showingFrontFace != face)
  {
    self->_showingFrontFace = face;
    [UIKeyboardFlipTransitionView _flipToFront:"_flipToFront:animated:" animated:?];
  }
}

- (void)rebuildBackgroundTransition
{
  backgroundLayers = [(UIKeyboardSplitTransitionView *)self backgroundLayers];
  v46 = [backgroundLayers objectAtIndex:0];

  [(CALayer *)self->_frontFace insertSublayer:v46 atIndex:0];
  backgroundLayers2 = [(UIKeyboardSplitTransitionView *)self backgroundLayers];
  v5 = [backgroundLayers2 objectAtIndex:1];

  backgroundLayers3 = [(UIKeyboardSplitTransitionView *)self backgroundLayers];
  v7 = [backgroundLayers3 objectAtIndex:2];

  centerFilled = self->super._centerFilled;
  v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v9 preferencesActions];
  [preferencesActions rivenSizeFactor:9.0];
  v12 = -v11;
  if (centerFilled)
  {
    p_backFace = &self->_backFace;
    [(CALayer *)self->_backFace frame];
    v15 = v14;
    v16 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v16 preferencesActions];
    [preferencesActions2 rivenSizeFactor:9.0];
    v19 = v15 + v18 + v18;
    [(UIKeyboardSliceSet *)self->super._sliceSet endRect];
    [v5 setBounds:{v12, 0.0, v19}];

    v20 = v5;
    v21 = v5;
  }

  else
  {
    [(UIKeyboardSliceSet *)self->super._sliceSet leftWidth];
    v23 = v22;
    v24 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions3 = [v24 preferencesActions];
    [preferencesActions3 rivenSizeFactor:9.0];
    v27 = v23 + v26;
    [(UIKeyboardSliceSet *)self->super._sliceSet endRect];
    [v5 setBounds:{v12, 0.0, v27}];

    [(UIKeyboardSliceSet *)self->super._sliceSet rightWidth];
    v29 = v28;
    v30 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions4 = [v30 preferencesActions];
    [preferencesActions4 rivenSizeFactor:9.0];
    v33 = v29 + v32;
    [(UIKeyboardSliceSet *)self->super._sliceSet endRect];
    [v7 setBounds:{0.0, 0.0, v33}];

    p_backFace = &self->_backFace;
    v20 = v5;
    [(CALayer *)self->_backFace insertSublayer:v5 atIndex:0];
    v21 = v7;
  }

  [(CALayer *)*p_backFace insertSublayer:v21 atIndex:0];
  [(CALayer *)self->_frontFace frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions5 = [v42 preferencesActions];
  [preferencesActions5 rivenSizeFactor:9.0];
  v45 = -v44;
  v48.origin.x = v35;
  v48.origin.y = v37;
  v48.size.width = v39;
  v48.size.height = v41;
  v49 = CGRectInset(v48, v45, 0.0);
  [(CALayer *)self->_frontDarkening setFrame:v49.origin.x, v49.origin.y, v49.size.width, v49.size.height];

  [(UIKeyboardSliceSet *)self->super._sliceSet endRect];
  [(CALayer *)self->_backDarkening setFrame:?];
  [v20 frame];
  [(CALayer *)self->_backDarkeningLeft setFrame:?];
  [v7 frame];
  [(CALayer *)self->_backDarkeningRight setFrame:?];
  [(CALayer *)self->_backDarkening setHidden:!self->super._centerFilled];
  [(CALayer *)self->_backDarkeningLeft setHidden:self->super._centerFilled];
  [(CALayer *)self->_backDarkeningRight setHidden:self->super._centerFilled];
  [(CALayer *)self->_frontFace addSublayer:self->_frontDarkening];
  [(CALayer *)self->_backFace addSublayer:self->_backDarkening];
  [(CALayer *)self->_backFace addSublayer:self->_backDarkeningLeft];
  [(CALayer *)self->_backFace addSublayer:self->_backDarkeningRight];
}

- (void)rebuildControlSlicesForKeyName:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  controlKeys = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v6 = [controlKeys objectForKey:nameCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithObject:v6];

    v6 = v7;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        endToken = [v13 endToken];
        v15 = endToken;
        if (endToken)
        {
          startToken = endToken;
        }

        else
        {
          startToken = [v13 startToken];
        }

        v17 = startToken;

        controlKeys = self->_controlKeys;
        name = [v17 name];
        v20 = [(NSMutableDictionary *)controlKeys objectForKeyedSubscript:name];

        v21 = [v20 objectForKeyedSubscript:v17];
        [v21 setContents:{-[UIKeyboardSplitTransitionView keyImageWithToken:](self, "keyImageWithToken:", v17)}];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

- (void)updateMoreIntlKey:(id)key asStart:(BOOL)start withRect:(CGRect)rect showIntl:(BOOL)intl showDictKey:(BOOL)dictKey
{
  dictKeyCopy = dictKey;
  intlCopy = intl;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  keyCopy = key;
  controlKeys = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v16 = [controlKeys objectForKey:keyCopy];

  if (start)
  {
    [v16 startToken];
  }

  else
  {
    [v16 endToken];
  }
  v17 = ;
  v18 = [(NSMutableDictionary *)self->_controlKeys objectForKeyedSubscript:keyCopy];
  v19 = [v18 objectForKeyedSubscript:v17];

  [v17 setSize:{width, height}];
  [v19 setFrame:{x, y, width, height}];
  [v16 setStartRect:{x, y, width, height}];
  [v19 setContents:{-[UIKeyboardSplitTransitionView keyImageWithToken:](self, "keyImageWithToken:", v17)}];
  if ([keyCopy hasSuffix:@"International-Key"])
  {
    [v19 setHidden:!intlCopy];
  }

  if ([keyCopy hasSuffix:@"Dictation-Key"])
  {
    [v19 setHidden:!dictKeyCopy];
  }
}

- (void)rebuildMoreIntlKeys
{
  v69 = *MEMORY[0x1E69E9840];
  showIntlKey = [(UIKeyboardSplitTransitionView *)self showIntlKey];
  showDictationKey = [(UIKeyboardSplitTransitionView *)self showDictationKey];
  if (showDictationKey)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = showIntlKey;
  v6 = v4 | showIntlKey;
  controlKeys = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v8 = [controlKeys objectForKey:@"MoreIntlStartNames"];

  if (!v8)
  {
    controlKeys2 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
    v8 = [controlKeys2 objectForKey:@"MoreIntlNames"];
  }

  controlKeys3 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v11 = [controlKeys3 objectForKey:@"MoreIntlStartLeftAligned"];
  v12 = v6 | (16 * (v11 != 0));

  controlKeys4 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v14 = [controlKeys4 objectForKey:@"MoreIntlStarts"];
  v57 = [UIKBTree shapesForControlKeyShapes:v14 options:v12 | 4u];

  controlKeys5 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v16 = [controlKeys5 objectForKey:@"MoreIntlEndNames"];

  if (!v16)
  {
    controlKeys6 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
    v16 = [controlKeys6 objectForKey:@"MoreIntlNames"];
  }

  v56 = v16;
  controlKeys7 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v19 = [controlKeys7 objectForKey:@"MoreIntlEndLeftAligned"];
  v20 = v6 | (16 * (v19 != 0));

  controlKeys8 = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
  v22 = [controlKeys8 objectForKey:@"MoreIntlEnds"];
  0xCu = [UIKBTree shapesForControlKeyShapes:v22 options:v20 | 0xCu];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v24 = v8;
  v25 = [v24 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v64;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v64 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v63 + 1) + 8 * i);
        v30 = [v24 objectForKey:v29];
        if (([v30 hasSuffix:@"Unlabeled-Space-Key"] & 1) == 0)
        {
          v31 = [v57 objectForKey:v29];
          [v31 paddedFrame];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;

          [(UIKeyboardFlipTransitionView *)self updateMoreIntlKey:v30 asStart:1 withRect:v5 showIntl:showDictationKey showDictKey:v33, v35, v37, v39];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v26);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v40 = v56;
  v41 = [v40 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v60;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v60 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v59 + 1) + 8 * j);
        v46 = [v40 objectForKey:v45];
        v47 = [0xCu objectForKey:v45];
        [v47 paddedFrame];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;

        [(UIKeyboardFlipTransitionView *)self updateMoreIntlKey:v46 asStart:0 withRect:v5 showIntl:showDictationKey showDictKey:v49, v51, v53, v55];
      }

      v42 = [v40 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v42);
  }

  *&self->_rebuildFlags &= ~4u;
}

- (void)_delayedUpdateTransition
{
  if ([(UIView *)self isHidden]&& self->super._sliceSet)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(UIKeyboardSliceSet *)self->super._sliceSet startRect];
    [(UIKeyboardFlipTransitionView *)self setFrame:?];
    v3 = +[UIKeyboardImpl activeInstance];
    self->super._centerFilled = [v3 centerFilled];

    v4 = +[UIKeyboardImpl activeInstance];
    showsCandidateBar = [v4 showsCandidateBar];

    if (+[UIKeyboardImpl isSplit])
    {
      controlKeys = [(UIKeyboardSliceSet *)self->super._sliceSet controlKeys];
      v7 = [controlKeys objectForKey:@"Candidate-Selection"];
      v8 = v7 != 0;

      centerFilled = self->super._centerFilled;
      if (v8 || !centerFilled)
      {
        v10 = v8 && centerFilled;
      }

      else
      {
        v10 = showsCandidateBar ^ 1;
      }
    }

    else
    {
      v10 = self->super._centerFilled & (showsCandidateBar ^ 1);
    }

    self->super._centerFilled = v10 & 1;
    [(UIKeyboardFlipTransitionView *)self rebuildTransition];
    [(UIKeyboardFlipTransitionView *)self rebuildMoreIntlKeys];
    rebuildFlags = self->_rebuildFlags;
    if (rebuildFlags)
    {
      [(UIKeyboardFlipTransitionView *)self rebuildShiftSlices];
      rebuildFlags = self->_rebuildFlags;
    }

    if ((rebuildFlags & 2) != 0)
    {
      [(UIKeyboardFlipTransitionView *)self rebuildReturnSlices];
    }

    [MEMORY[0x1E6979518] commit];
    self->super._isRebuilding = 0;
  }
}

@end