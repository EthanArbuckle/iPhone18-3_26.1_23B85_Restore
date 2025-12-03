@interface UIKBKeyViewAnimator
+ (id)normalizedAnimationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue;
+ (id)normalizedUnwindAnimationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue offset:(double)offset;
+ (id)normalizedUnwindAnimationWithKeyPath:(id)path originallyFromValue:(id)value toValue:(id)toValue offset:(double)offset;
+ (id)normalizedUnwindOpacityAnimationWithKeyPath:(id)path originallyFromValue:(id)value toValue:(id)toValue offset:(double)offset;
- (CGRect)primaryGlyphNormalizedExitRect;
- (CGRect)secondaryGlyphNormalizedExitRect;
- (Class)_keyViewClassForSpecialtyKey:(id)key screenTraits:(id)traits;
- (Class)keyViewClassForKey:(id)key renderTraits:(id)traits screenTraits:(id)screenTraits;
- (double)delayedDeactivationTimeForKeyView:(id)view;
- (id)keycapAlternateDualStringTransform:(id)transform;
- (id)keycapAlternateTransform:(id)transform;
- (id)keycapMeshTransformFromRect:(CGRect)rect toRect:(CGRect)toRect;
- (id)keycapMeshTransformFromRect:(CGRect)rect toRect:(CGRect)toRect scale:(double)scale;
- (id)keycapPrimaryDualStringTransform:(id)transform;
- (id)keycapPrimaryExitTransform;
- (void)_fadeInKeyView:(id)view duration:(double)duration completion:(id)completion;
- (void)_fadeOutKeyView:(id)view duration:(double)duration completion:(id)completion;
- (void)endTransitionForKeyView:(id)view;
- (void)transitionEndedForKeyView:(id)view alternateCount:(unint64_t)count;
- (void)transitionKeyView:(id)view fromState:(int)state toState:(int)toState completion:(id)completion;
- (void)transitionOutKeyView:(id)view fromState:(int)state toState:(int)toState completion:(id)completion;
- (void)transitionStartedForKeyView:(id)view alternateCount:(unint64_t)count toLeft:(BOOL)left;
- (void)updateTransitionForKeyView:(id)view normalizedDragSize:(CGSize)size;
@end

@implementation UIKBKeyViewAnimator

- (Class)_keyViewClassForSpecialtyKey:(id)key screenTraits:(id)traits
{
  keyCopy = key;
  traitsCopy = traits;
  displayType = [keyCopy displayType];
  v8 = 0;
  if (displayType > 35)
  {
    if (displayType == 36)
    {
      if (!+[UIKeyboard isRemoteEmojiCollectionViewEnabled](UIKeyboard, "isRemoteEmojiCollectionViewEnabled") && (!_UIApplicationIsStickerPickerService() || +[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService]))
      {
        if (traitsCopy)
        {
          idiom = [traitsCopy idiom];
        }

        else
        {
          v14 = +[UIDevice currentDevice];
          idiom = [v14 userInterfaceIdiom];
        }

        v10 = [UIKeyboardEmojiKeyDisplayController classForInputView:idiom];
        goto LABEL_15;
      }
    }

    else
    {
      if (displayType != 37)
      {
        goto LABEL_16;
      }

      if (!+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
      {
        if (traitsCopy)
        {
          idiom2 = [traitsCopy idiom];
        }

        else
        {
          v13 = +[UIDevice currentDevice];
          idiom2 = [v13 userInterfaceIdiom];
        }

        v10 = [UIKeyboardEmojiKeyDisplayController classForCategoryControl:idiom2];
        goto LABEL_15;
      }
    }
  }

  else if (displayType == 1)
  {
    [keyCopy rendering];
  }

  else if (displayType != 12)
  {
    goto LABEL_16;
  }

  v10 = objc_opt_class();
LABEL_15:
  v8 = v10;
LABEL_16:

  return v8;
}

- (Class)keyViewClassForKey:(id)key renderTraits:(id)traits screenTraits:(id)screenTraits
{
  keyCopy = key;
  traitsCopy = traits;
  screenTraitsCopy = screenTraits;
  if ([traitsCopy blendForm] == 3)
  {
    v11 = [traitsCopy controlOpacities] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  if ([traitsCopy blurBlending] & 1) != 0 || (objc_msgSend(traitsCopy, "variantTraits"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "blurBlending") | v11, v12, (v13) || (v17 = -[UIKBKeyViewAnimator _keyViewClassForSpecialtyKey:screenTraits:](self, "_keyViewClassForSpecialtyKey:screenTraits:", keyCopy, screenTraitsCopy)) == 0)
  {
    v14 = objc_opt_class();
  }

  else
  {
    v14 = v17;
  }

  v15 = v14;

  return v15;
}

- (double)delayedDeactivationTimeForKeyView:(id)view
{
  viewCopy = view;
  v4 = [viewCopy key];
  if ([v4 displayTypeHint] == 10)
  {
    v5 = [viewCopy layerForRenderFlags:4];
    v6 = [v5 animationForKey:@"pan opacity"];

    if (v6)
    {
      [viewCopy endingTransitionDuration];
      v8 = v7;
    }

    else
    {
      v8 = 0.059;
    }
  }

  else
  {
    v8 = 0.059;
  }

  return v8;
}

- (void)_fadeOutKeyView:(id)view duration:(double)duration completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__UIKBKeyViewAnimator__fadeOutKeyView_duration_completion___block_invoke;
  aBlock[3] = &unk_1E7101F90;
  v9 = viewCopy;
  v20 = v9;
  v21 = 0;
  v22 = duration > 0.0;
  v10 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__UIKBKeyViewAnimator__fadeOutKeyView_duration_completion___block_invoke_2;
  v14[3] = &unk_1E7114198;
  v11 = v9;
  v15 = v11;
  v17 = 0;
  v12 = completionCopy;
  v16 = v12;
  v18 = duration > 0.0;
  v13 = _Block_copy(v14);
  if (duration == 0.0)
  {
    v10[2](v10);
    v13[2](v13, 1);
  }

  else
  {
    [UIView animateWithDuration:50331648 delay:v10 options:v13 animations:duration completion:0.0];
  }
}

void __59__UIKBKeyViewAnimator__fadeOutKeyView_duration_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) popupMenu];
    v3 = [v2 isVisible];

    if (v3)
    {
      v4 = [*(a1 + 32) popupMenu];
      [v4 setAlpha:0.0];
    }
  }
}

void __59__UIKBKeyViewAnimator__fadeOutKeyView_duration_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEndingTransitionDuration:0.0];
  [*(a1 + 32) alpha];
  if (fabs(v2) == fabs(*(a1 + 48)))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 1);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) popupMenu];
    [v4 alpha];
    v6 = v5;

    if (v6 == 0.0)
    {
      v7 = [*(a1 + 32) popupMenu];
      [v7 setAlpha:1.0];

      v8 = [*(a1 + 32) popupMenu];
      [v8 hide];
    }
  }
}

- (void)_fadeInKeyView:(id)view duration:(double)duration completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  [viewCopy setAlpha:0.0];
  if (duration <= 0.0)
  {
    [viewCopy setAlpha:1.0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__UIKBKeyViewAnimator__fadeInKeyView_duration_completion___block_invoke;
    v11[3] = &unk_1E70F3590;
    v12 = viewCopy;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__UIKBKeyViewAnimator__fadeInKeyView_duration_completion___block_invoke_2;
    v9[3] = &unk_1E70F3608;
    v10 = completionCopy;
    [UIView animateWithDuration:50331648 delay:v11 options:v9 animations:duration completion:0.0];
  }
}

uint64_t __58__UIKBKeyViewAnimator__fadeInKeyView_duration_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (CGRect)primaryGlyphNormalizedExitRect
{
  v2 = 0.89;
  v3 = 0.5;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v2;
  result.origin.x = v3;
  return result;
}

- (CGRect)secondaryGlyphNormalizedExitRect
{
  v2 = 0.13;
  v3 = 0.5;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v2;
  result.origin.x = v3;
  return result;
}

- (id)keycapMeshTransformFromRect:(CGRect)rect toRect:(CGRect)toRect
{
  height = toRect.size.height;
  width = toRect.size.width;
  y = toRect.origin.y;
  x = toRect.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  [(UIKBKeyViewAnimator *)self keyScale];
  v14 = v13;
  v15 = 2.0;
  if (v14 > 0.0)
  {
    [(UIKBKeyViewAnimator *)self keyScale];
  }

  return [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:v11 toRect:v10 scale:v9, v8, x, y, width, height, *&v15];
}

- (id)keycapMeshTransformFromRect:(CGRect)rect toRect:(CGRect)toRect scale:(double)scale
{
  v45 = *MEMORY[0x1E69E9840];
  if (scale != 1.0)
  {
    v5 = (scale + -1.0) * 0.5;
    rect.origin.x = 1.0 / scale * (rect.origin.x + v5);
    rect.origin.y = 1.0 / scale * (rect.origin.y + v5);
    rect.size.width = rect.size.width * (1.0 / scale);
    rect.size.height = rect.size.height * (1.0 / scale);
    toRect.origin.x = 1.0 / scale * (toRect.origin.x + v5);
    toRect.origin.y = 1.0 / scale * (toRect.origin.y + v5);
    toRect.size.width = toRect.size.width * (1.0 / scale);
    toRect.size.height = toRect.size.height * (1.0 / scale);
  }

  memset(v14, 0, 32);
  v14[2] = xmmword_18A67EE50;
  v14[3] = xmmword_18A64B720;
  __asm { FMOV            V17.2D, #1.0 }

  v14[4] = xmmword_18A67BA20;
  v14[5] = _Q17;
  v14[6] = _Q17;
  v14[7] = xmmword_18A659030;
  v14[8] = xmmword_18A64B730;
  v14[9] = xmmword_18A655850;
  x = rect.origin.x;
  y = rect.origin.y;
  v17 = toRect.origin.x;
  v18 = toRect.origin.y;
  v19 = 0x3FE0000000000000;
  v20 = rect.origin.x + rect.size.width;
  v21 = rect.origin.y;
  v22 = toRect.origin.x + toRect.size.width;
  v23 = toRect.origin.y;
  v24 = 0x3FE0000000000000;
  v25 = rect.origin.x + rect.size.width;
  v26 = rect.origin.y + rect.size.height;
  v27 = toRect.origin.x + toRect.size.width;
  v28 = toRect.origin.y + toRect.size.height;
  v29 = 0x3FE0000000000000;
  v30 = rect.origin.x;
  v31 = rect.origin.y + rect.size.height;
  v32 = toRect.origin.x;
  v33 = toRect.origin.y + toRect.size.height;
  v34 = 0x3FE0000000000000;
  v11.i64[0] = 0x80000000800000;
  v11.i64[1] = 0x80000000800000;
  v35 = xmmword_18A67EE60;
  v36 = vnegq_f32(v11);
  v37 = xmmword_18A67EE70;
  v38 = v36;
  v39 = xmmword_18A67EE80;
  v40 = v36;
  v41 = xmmword_18A67EE90;
  v42 = v36;
  v43 = xmmword_18A67EEA0;
  v44 = v36;
  v12 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:8 vertices:v14 faceCount:5 faces:&v35 depthNormalization:*MEMORY[0x1E6979700]];

  return v12;
}

- (id)keycapPrimaryDualStringTransform:(id)transform
{
  transformCopy = transform;
  keyplane = [transformCopy keyplane];
  v6 = [keyplane visualStyling] & 0x3F;

  if (v6 == 23)
  {
    factory = [transformCopy factory];
    v8 = [transformCopy key];
    keyplane2 = [transformCopy keyplane];
    [factory dualStringKeyBottomTextOffset:v8 keyplane:keyplane2];
    v11 = v10;
    v13 = v12;

    v14 = [transformCopy key];
    [v14 frame];
    v16 = v11 / v15 + 0.115;

    v17 = [transformCopy key];
    [v17 frame];
    v19 = v13 / v18 + 0.28;

    v20 = [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28, 0.77, 0.44, v16, v19, 0.77, 0.44];
  }

  else
  {
    isDynamicKey = [transformCopy isDynamicKey];
    v22 = 2.0;
    if (isDynamicKey)
    {
      v22 = 1.0;
    }

    v20 = [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28 scale:0.77, 0.44, 0.115, 0.38, 0.77, 0.44, *&v22];
  }

  v23 = v20;

  return v23;
}

- (id)keycapAlternateTransform:(id)transform
{
  transformCopy = transform;
  v5 = [transformCopy key];
  secondaryDisplayStrings = [v5 secondaryDisplayStrings];
  firstObject = [secondaryDisplayStrings firstObject];
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v9 = [firstObject rangeOfCharacterFromSet:decimalDigitCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;

  v10 = dbl_18A67EEB0[v9];
  LODWORD(v5) = [transformCopy isDynamicKey];

  v11 = 2.0;
  if (v5)
  {
    v11 = 1.0;
  }

  return [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28 scale:0.77, 0.44, 0.25, 0.13, 0.5, v10, *&v11];
}

- (id)keycapAlternateDualStringTransform:(id)transform
{
  transformCopy = transform;
  keyplane = [transformCopy keyplane];
  v6 = [keyplane visualStyling] & 0x3F;

  if (v6 == 23)
  {
    factory = [transformCopy factory];
    v8 = [transformCopy key];
    keyplane2 = [transformCopy keyplane];
    [factory dualStringKeyTopTextOffset:v8 keyplane:keyplane2];
    v11 = v10;
    v13 = v12;

    v14 = [transformCopy key];
    [v14 frame];
    v16 = v11 / v15 + 0.115;

    v17 = [transformCopy key];
    [v17 frame];
    v19 = v13 / v18 + 0.28;

    v20 = [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28, 0.77, 0.44, v16, v19, 0.77, 0.44];
  }

  else
  {
    isDynamicKey = [transformCopy isDynamicKey];
    v22 = 2.0;
    if (isDynamicKey)
    {
      v22 = 1.0;
    }

    v20 = [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28 scale:0.77, 0.44, 0.115, 0.135, 0.77, 0.44, *&v22];
  }

  v23 = v20;

  return v23;
}

- (id)keycapPrimaryExitTransform
{
  [(UIKBKeyViewAnimator *)self primaryGlyphNormalizedExitRect];

  return [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28, 0.77, 0.44, v3, v4, v5, v6];
}

+ (id)normalizedAnimationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue
{
  v7 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  pathCopy = path;
  v11 = [v7 animationWithKeyPath:pathCopy];
  [v11 setBeginTime:1.0e-100];
  LODWORD(v7) = [pathCopy isEqualToString:@"opacity"];

  v12 = 0.4;
  if (!v7)
  {
    v12 = 1.0;
  }

  [v11 setDuration:v12];
  [v11 setFillMode:*MEMORY[0x1E69797E0]];
  [v11 setRemovedOnCompletion:0];
  [v11 setFromValue:valueCopy];

  [v11 setToValue:toValueCopy];

  return v11;
}

+ (id)normalizedUnwindAnimationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue offset:(double)offset
{
  v9 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  v12 = [v9 animationWithKeyPath:path];
  [v12 setTimeOffset:(1.0 - offset) * 0.150000006];
  [v12 setDuration:0.150000006];
  [v12 setFillMode:*MEMORY[0x1E69797E0]];
  [v12 setRemovedOnCompletion:1];
  [v12 setFromValue:valueCopy];

  [v12 setToValue:toValueCopy];

  return v12;
}

+ (id)normalizedUnwindOpacityAnimationWithKeyPath:(id)path originallyFromValue:(id)value toValue:(id)toValue offset:(double)offset
{
  v18[3] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E6979390];
  toValueCopy = toValue;
  valueCopy = value;
  v12 = [v9 animationWithKeyPath:path];
  v18[0] = toValueCopy;
  v18[1] = toValueCopy;
  v18[2] = valueCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [v12 setValues:v13];

  [v12 setKeyTimes:&unk_1EFE2C508];
  v14 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v17[0] = v14;
  v17[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  [v12 setTimingFunctions:v15];
  [v12 setTimeOffset:(1.0 - offset) * 0.200000003];
  [v12 setDuration:0.200000003];
  [v12 setFillMode:*MEMORY[0x1E69797E0]];
  [v12 setRemovedOnCompletion:1];

  return v12;
}

+ (id)normalizedUnwindAnimationWithKeyPath:(id)path originallyFromValue:(id)value toValue:(id)toValue offset:(double)offset
{
  v9 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  v12 = [v9 animationWithKeyPath:path];
  v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v12 setTimingFunction:v13];

  [v12 setTimeOffset:(1.0 - offset) * 0.200000003];
  [v12 setDuration:0.200000003];
  [v12 setFillMode:*MEMORY[0x1E69797E0]];
  [v12 setRemovedOnCompletion:1];
  [v12 setFromValue:toValueCopy];

  [v12 setToValue:valueCopy];

  return v12;
}

- (void)transitionKeyView:(id)view fromState:(int)state toState:(int)toState completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v11 = [viewCopy key];
  isDynamicKey = [viewCopy isDynamicKey];
  v13 = 2.0;
  if (isDynamicKey)
  {
    v13 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v13];
  if ([v11 displayTypeHint] == 10)
  {
    displayType = [v11 displayType];
    if (state != 4 && toState == 4)
    {
      v15 = displayType;
      v16 = [viewCopy layerForRenderFlags:4];
      if (v15 == 7)
      {
        [(UIKBKeyViewAnimator *)self keycapPrimaryDualStringTransform:viewCopy];
      }

      else
      {
        [(UIKBKeyViewAnimator *)self keycapPrimaryTransform];
      }
      v17 = ;
      [v16 setMeshTransform:v17];

      [v16 setShouldRasterize:1];
      secondaryRepresentedStrings = [v11 secondaryRepresentedStrings];
      v19 = [secondaryRepresentedStrings count];

      if (v19 == 1)
      {
        v20 = [viewCopy layerForRenderFlags:16];
        v22 = v20;
        if (v15 == 7)
        {
          LODWORD(v21) = 1.0;
          [v20 setOpacity:v21];
          v23 = [(UIKBKeyViewAnimator *)self keycapAlternateDualStringTransform:viewCopy];
        }

        else
        {
          renderConfig = [viewCopy renderConfig];
          lightKeyboard = [renderConfig lightKeyboard];
          LODWORD(v35) = 1050253722;
          if (lightKeyboard)
          {
            *&v35 = 0.25;
          }

          [v22 setOpacity:v35];

          v23 = [(UIKBKeyViewAnimator *)self keycapAlternateTransform:viewCopy];
        }

        v36 = v23;
        [v22 setMeshTransform:v23];

        [v22 setShouldRasterize:1];
      }

      else
      {
        secondaryRepresentedStrings2 = [v11 secondaryRepresentedStrings];
        v25 = [secondaryRepresentedStrings2 count];

        if (v25 != 2)
        {
LABEL_25:

          goto LABEL_26;
        }

        v22 = [viewCopy layerForRenderFlags:16];
        renderConfig2 = [viewCopy renderConfig];
        if ([renderConfig2 lightKeyboard])
        {
          *&v27 = 0.25;
        }

        else
        {
          *&v27 = 0.3;
        }

        [v22 setOpacity:v27];

        keycapLeftTransform = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
        [v22 setMeshTransform:keycapLeftTransform];

        [v22 setShouldRasterize:1];
        v29 = [viewCopy layerForRenderFlags:32];
        renderConfig3 = [viewCopy renderConfig];
        if ([renderConfig3 lightKeyboard])
        {
          *&v31 = 0.25;
        }

        else
        {
          *&v31 = 0.3;
        }

        [v29 setOpacity:v31];

        keycapRightTransform = [(UIKBKeyViewAnimator *)self keycapRightTransform];
        [v29 setMeshTransform:keycapRightTransform];

        [v29 setShouldRasterize:1];
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)transitionOutKeyView:(id)view fromState:(int)state toState:(int)toState completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  v12 = [viewCopy key];
  v13 = 0.0;
  v14 = v12;
  if (state != 4 && state > toState && [v12 interactionType] != 20 && (objc_msgSend(v14, "displayType") == 13 || objc_msgSend(v14, "displayType") == 5))
  {
    v13 = 0.5;
  }

  [viewCopy changeBackgroundToActiveIfNecessary];
  [(UIKBKeyViewAnimator *)self _fadeOutKeyView:viewCopy duration:completionCopy completion:v13];
}

- (void)transitionStartedForKeyView:(id)view alternateCount:(unint64_t)count toLeft:(BOOL)left
{
  leftCopy = left;
  viewCopy = view;
  v8 = [viewCopy layerForRenderFlags:4];
  isDynamicKey = [viewCopy isDynamicKey];
  v10 = 2.0;
  if (isDynamicKey)
  {
    v10 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v10];
  v11 = [v8 animationForKey:@"pan transform"];

  if (count != 1 || v11)
  {
    if (count != 2)
    {
      goto LABEL_40;
    }

    v18 = [v8 animationForKey:@"pan transform left"];

    v19 = [v8 animationForKey:@"pan transform right"];

    v20 = !v19 || leftCopy;
    v21 = v18 && leftCopy;
    if (v21 || !v20)
    {
      goto LABEL_40;
    }

    if (v18 | v19)
    {
      if (v18)
      {
        v22 = @"pan transform left";
      }

      else
      {
        v22 = @"pan transform right";
      }

      [v8 removeAnimationForKey:v22];
    }

    v12 = [viewCopy layerForRenderFlags:16];
    v23 = [viewCopy layerForRenderFlags:32];
    [v8 setShouldRasterize:0];
    [v12 setShouldRasterize:0];
    [v23 setShouldRasterize:0];
    [v8 setSpeed:0.0];
    [v12 setSpeed:0.0];
    v65 = v23;
    [v23 setSpeed:0.0];
    v66 = [objc_opt_class() normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE2E6F8 toValue:&unk_1EFE310F0];
    keycapPrimaryTransform = [(UIKBKeyViewAnimator *)self keycapPrimaryTransform];
    v63 = keycapPrimaryTransform;
    if (leftCopy)
    {
      keycapLeftSelectPrimaryTransform = [(UIKBKeyViewAnimator *)self keycapLeftSelectPrimaryTransform];
      v25 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:keycapPrimaryTransform toValue:keycapLeftSelectPrimaryTransform];
      v26 = objc_opt_class();
      v27 = MEMORY[0x1E696AD98];
      renderConfig = [viewCopy renderConfig];
      if ([renderConfig lightKeyboard])
      {
        v29 = 0.25;
      }

      else
      {
        v29 = 0.3;
      }

      v30 = [v27 numberWithDouble:v29];
      v31 = [v26 normalizedAnimationWithKeyPath:@"opacity" fromValue:v30 toValue:&unk_1EFE2E6F8];

      keycapLeftTransform = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
      keycapLeftSelectLeftTransform = [(UIKBKeyViewAnimator *)self keycapLeftSelectLeftTransform];
      v61 = keycapLeftTransform;
      v33 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:keycapLeftTransform toValue:keycapLeftSelectLeftTransform];
      v34 = objc_opt_class();
      v35 = MEMORY[0x1E696AD98];
      renderConfig2 = [viewCopy renderConfig];
      if ([renderConfig2 lightKeyboard])
      {
        v37 = 0.25;
      }

      else
      {
        v37 = 0.3;
      }

      v38 = [v35 numberWithDouble:v37];
      v39 = [v34 normalizedAnimationWithKeyPath:@"opacity" fromValue:v38 toValue:&unk_1EFE310F0];

      keycapRightTransform = [(UIKBKeyViewAnimator *)self keycapRightTransform];
      keycapLeftSelectRightTransform = [(UIKBKeyViewAnimator *)self keycapLeftSelectRightTransform];
      keycapNullTransform = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:keycapRightTransform toValue:keycapLeftSelectRightTransform];
      v43 = @"pan transform left";
    }

    else
    {
      keycapLeftSelectPrimaryTransform = [(UIKBKeyViewAnimator *)self keycapRightSelectPrimaryTransform];
      v25 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:keycapPrimaryTransform toValue:keycapLeftSelectPrimaryTransform];
      v49 = objc_opt_class();
      v50 = MEMORY[0x1E696AD98];
      renderConfig3 = [viewCopy renderConfig];
      if ([renderConfig3 lightKeyboard])
      {
        v52 = 0.25;
      }

      else
      {
        v52 = 0.3;
      }

      v53 = [v50 numberWithDouble:v52];
      v31 = [v49 normalizedAnimationWithKeyPath:@"opacity" fromValue:v53 toValue:&unk_1EFE310F0];

      keycapLeftTransform2 = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
      keycapLeftSelectLeftTransform = [(UIKBKeyViewAnimator *)self keycapRightSelectLeftTransform];
      v61 = keycapLeftTransform2;
      v33 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:keycapLeftTransform2 toValue:keycapLeftSelectLeftTransform];
      v55 = objc_opt_class();
      v56 = MEMORY[0x1E696AD98];
      renderConfig4 = [viewCopy renderConfig];
      if ([renderConfig4 lightKeyboard])
      {
        v58 = 0.25;
      }

      else
      {
        v58 = 0.3;
      }

      v59 = [v56 numberWithDouble:v58];
      v39 = [v55 normalizedAnimationWithKeyPath:@"opacity" fromValue:v59 toValue:&unk_1EFE2E6F8];

      keycapRightTransform = [(UIKBKeyViewAnimator *)self keycapRightTransform];
      keycapLeftSelectRightTransform = [(UIKBKeyViewAnimator *)self keycapRightSelectRightTransform];
      keycapNullTransform = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:keycapRightTransform toValue:keycapLeftSelectRightTransform];
      v43 = @"pan transform right";
    }

    [v8 addAnimation:v66 forKey:@"pan opacity"];
    [v8 addAnimation:v25 forKey:v43];
    [v12 addAnimation:v31 forKey:@"pan opacity"];
    [v12 addAnimation:v33 forKey:@"pan transform"];
    v48 = v65;
    [v65 addAnimation:v39 forKey:@"pan opacity"];
    [v65 addAnimation:keycapNullTransform forKey:@"pan transform"];
  }

  else
  {
    v12 = [viewCopy layerForRenderFlags:16];
    [v8 setShouldRasterize:0];
    [v12 setShouldRasterize:0];
    [v8 setSpeed:0.0];
    [v12 setSpeed:0.0];
    v13 = [viewCopy key];
    displayType = [v13 displayType];

    v15 = 1.0;
    if (displayType != 7)
    {
      renderConfig5 = [viewCopy renderConfig];
      if ([renderConfig5 lightKeyboard])
      {
        v15 = 0.25;
      }

      else
      {
        v15 = 0.3;
      }
    }

    v17 = [objc_opt_class() normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE2E6F8 toValue:&unk_1EFE310F0];
    if (displayType == 7)
    {
      [(UIKBKeyViewAnimator *)self keycapPrimaryDualStringTransform:viewCopy];
    }

    else
    {
      [(UIKBKeyViewAnimator *)self keycapPrimaryTransform];
    }
    v44 = ;
    [(UIKBKeyViewAnimator *)self keycapPrimaryExitTransform];
    v64 = v66 = v44;
    v31 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v44 toValue:v64];
    v45 = objc_opt_class();
    v46 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v33 = [v45 normalizedAnimationWithKeyPath:@"opacity" fromValue:v46 toValue:&unk_1EFE2E6F8];

    if (displayType == 7)
    {
      [(UIKBKeyViewAnimator *)self keycapAlternateDualStringTransform:viewCopy];
    }

    else
    {
      [(UIKBKeyViewAnimator *)self keycapAlternateTransform:viewCopy];
    }
    v39 = ;
    keycapNullTransform = [(UIKBKeyViewAnimator *)self keycapNullTransform];
    v47 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v39 toValue:keycapNullTransform];
    [v8 addAnimation:v17 forKey:@"pan opacity"];
    [v8 addAnimation:v31 forKey:@"pan transform"];
    [v12 addAnimation:v33 forKey:@"pan opacity"];
    v48 = v17;
    [v12 addAnimation:v47 forKey:@"pan transform"];

    v25 = v64;
  }

LABEL_40:
}

- (void)transitionEndedForKeyView:(id)view alternateCount:(unint64_t)count
{
  viewCopy = view;
  v6 = [viewCopy layerForRenderFlags:4];
  [v6 timeOffset];
  [viewCopy setEndingTransitionDuration:v7 * 0.200000003];
  isDynamicKey = [viewCopy isDynamicKey];
  v9 = 2.0;
  if (isDynamicKey)
  {
    v9 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v9];
  v10 = [v6 animationForKey:@"pan transform"];

  if (count == 1 && v10)
  {
    [viewCopy changeBackgroundToEnabled];
    v11 = [viewCopy layerForRenderFlags:16];
    [v6 setShouldRasterize:1];
    [v11 setShouldRasterize:1];
    [v6 timeOffset];
    v13 = v12;
    [v11 timeOffset];
    v15 = v14;
    LODWORD(v14) = 1.0;
    [v6 setSpeed:v14];
    LODWORD(v16) = 1.0;
    [v11 setSpeed:v16];
    [v6 setTimeOffset:0.0];
    [v11 setTimeOffset:0.0];
    v17 = [viewCopy key];
    displayType = [v17 displayType];

    v19 = 1.0;
    if (displayType != 7)
    {
      renderConfig = [viewCopy renderConfig];
      if ([renderConfig lightKeyboard])
      {
        v19 = 0.25;
      }

      else
      {
        v19 = 0.3;
      }
    }

    v79 = v11;
    v21 = [objc_opt_class() normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:&unk_1EFE2E6F8 toValue:&unk_1EFE310F0 offset:v13];
    if (displayType == 7)
    {
      [(UIKBKeyViewAnimator *)self keycapPrimaryDualStringTransform:viewCopy];
    }

    else
    {
      [(UIKBKeyViewAnimator *)self keycapPrimaryTransform];
    }
    v55 = ;
    [(UIKBKeyViewAnimator *)self keycapPrimaryExitTransform];
    v56 = v82 = v55;
    v57 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v55 toValue:v56 offset:v13];
    v58 = objc_opt_class();
    v59 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    v43 = [v58 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v59 toValue:&unk_1EFE2E6F8 offset:v15];

    if (displayType == 7)
    {
      [(UIKBKeyViewAnimator *)self keycapAlternateDualStringTransform:viewCopy];
    }

    else
    {
      [(UIKBKeyViewAnimator *)self keycapAlternateTransform:viewCopy];
    }
    v49 = ;
    keycapNullTransform = [(UIKBKeyViewAnimator *)self keycapNullTransform];
    v60 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v49 toValue:keycapNullTransform offset:v15];
    [v6 addAnimation:v21 forKey:@"pan opacity"];
    [v6 addAnimation:v57 forKey:@"pan transform"];
    v61 = v79;
    [v79 addAnimation:v43 forKey:@"pan opacity"];
    [v79 addAnimation:v60 forKey:@"pan transform"];

    v62 = v82;
    goto LABEL_27;
  }

  if (count == 2)
  {
    v22 = [v6 animationForKey:@"pan transform left"];

    v23 = [v6 animationForKey:@"pan transform right"];
    v24 = v22 | v23;

    if (v24)
    {
      v25 = [viewCopy layerForRenderFlags:16];
      v26 = [viewCopy layerForRenderFlags:32];
      [v6 setShouldRasterize:1];
      [v25 setShouldRasterize:1];
      [v26 setShouldRasterize:1];
      [v6 timeOffset];
      v28 = v27;
      [v25 timeOffset];
      v30 = v29;
      [v26 timeOffset];
      v32 = v31;
      LODWORD(v31) = 1.0;
      [v6 setSpeed:v31];
      LODWORD(v33) = 1.0;
      [v25 setSpeed:v33];
      LODWORD(v34) = 1.0;
      [v26 setSpeed:v34];
      [v6 setTimeOffset:0.0];
      v80 = v25;
      [v25 setTimeOffset:0.0];
      [v26 setTimeOffset:0.0];
      v81 = [objc_opt_class() normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:&unk_1EFE2E6F8 toValue:&unk_1EFE310F0 offset:v28];
      keycapPrimaryTransform = [(UIKBKeyViewAnimator *)self keycapPrimaryTransform];
      v74 = v26;
      if (v22)
      {
        keycapLeftSelectPrimaryTransform = [(UIKBKeyViewAnimator *)self keycapLeftSelectPrimaryTransform];
        v77 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:keycapPrimaryTransform toValue:keycapLeftSelectPrimaryTransform offset:v28];
        v36 = objc_opt_class();
        v37 = MEMORY[0x1E696AD98];
        renderConfig2 = [viewCopy renderConfig];
        if ([renderConfig2 lightKeyboard])
        {
          v39 = 0.25;
        }

        else
        {
          v39 = 0.3;
        }

        v40 = [v37 numberWithDouble:v39];
        v75 = [v36 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v40 toValue:&unk_1EFE2E6F8 offset:v30];

        keycapLeftTransform = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
        keycapLeftSelectLeftTransform = [(UIKBKeyViewAnimator *)self keycapLeftSelectLeftTransform];
        v43 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:keycapLeftTransform toValue:keycapLeftSelectLeftTransform offset:v30];
        v44 = objc_opt_class();
        v45 = MEMORY[0x1E696AD98];
        renderConfig3 = [viewCopy renderConfig];
        if ([renderConfig3 lightKeyboard])
        {
          v47 = 0.25;
        }

        else
        {
          v47 = 0.3;
        }

        v48 = [v45 numberWithDouble:v47];
        v49 = [v44 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v48 toValue:&unk_1EFE310F0 offset:v32];

        keycapRightTransform = [(UIKBKeyViewAnimator *)self keycapRightTransform];
        keycapLeftSelectRightTransform = [(UIKBKeyViewAnimator *)self keycapLeftSelectRightTransform];
        v52 = v77;
        keycapNullTransform = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:keycapRightTransform toValue:keycapLeftSelectRightTransform offset:v32];
        v54 = @"pan transform left";
      }

      else
      {
        keycapLeftSelectPrimaryTransform = [(UIKBKeyViewAnimator *)self keycapRightSelectPrimaryTransform];
        v52 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:keycapPrimaryTransform toValue:keycapLeftSelectPrimaryTransform offset:v28];
        v63 = objc_opt_class();
        v64 = MEMORY[0x1E696AD98];
        renderConfig4 = [viewCopy renderConfig];
        if ([renderConfig4 lightKeyboard])
        {
          v66 = 0.25;
        }

        else
        {
          v66 = 0.3;
        }

        v67 = [v64 numberWithDouble:v66];
        v75 = [v63 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v67 toValue:&unk_1EFE310F0 offset:v30];

        keycapLeftTransform = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
        keycapLeftSelectLeftTransform = [(UIKBKeyViewAnimator *)self keycapRightSelectLeftTransform];
        v43 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:keycapLeftTransform toValue:keycapLeftSelectLeftTransform offset:v30];
        v68 = objc_opt_class();
        v69 = MEMORY[0x1E696AD98];
        renderConfig5 = [viewCopy renderConfig];
        if ([renderConfig5 lightKeyboard])
        {
          v71 = 0.25;
        }

        else
        {
          v71 = 0.3;
        }

        v72 = [v69 numberWithDouble:v71];
        v49 = [v68 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v72 toValue:&unk_1EFE2E6F8 offset:v32];

        keycapRightTransform = [(UIKBKeyViewAnimator *)self keycapRightTransform];
        keycapLeftSelectRightTransform = [(UIKBKeyViewAnimator *)self keycapRightSelectRightTransform];
        keycapNullTransform = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:keycapRightTransform toValue:keycapLeftSelectRightTransform offset:v32];
        v54 = @"pan transform right";
      }

      v78 = v52;

      v62 = v81;
      [v6 addAnimation:v81 forKey:@"pan opacity"];
      [v6 addAnimation:v52 forKey:v54];
      [v80 addAnimation:v75 forKey:@"pan opacity"];
      [v80 addAnimation:v43 forKey:@"pan transform"];
      v21 = v74;
      v61 = v80;
      [v74 addAnimation:v49 forKey:@"pan opacity"];
      [v74 addAnimation:keycapNullTransform forKey:@"pan transform"];
      v57 = v75;
      v56 = v78;
LABEL_27:
    }
  }
}

- (void)updateTransitionForKeyView:(id)view normalizedDragSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v7 = [viewCopy key];
  isDynamicKey = [viewCopy isDynamicKey];
  v9 = 2.0;
  if (isDynamicKey)
  {
    v9 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v9];
  if ([v7 displayTypeHint] == 10)
  {
    secondaryRepresentedStrings = [v7 secondaryRepresentedStrings];
    v11 = [secondaryRepresentedStrings count];

    if (v11 == 2)
    {
      v12 = [viewCopy layerForRenderFlags:4];
      v13 = [viewCopy layerForRenderFlags:16];
      v16 = [viewCopy layerForRenderFlags:32];
      v17 = -width;
      if (width >= 0.0)
      {
        v17 = width;
      }

      v18 = fmin((v17 + -0.07) / 0.3, 1.0);
      if (v18 < 0.0)
      {
        v18 = 0.0;
      }

      v19 = fmin(height + -0.07 + height + -0.07, 1.0);
      if (v19 < 0.0)
      {
        v19 = 0.0;
      }

      if (v18 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      [(UIKBKeyViewAnimator *)self transitionStartedForKeyView:viewCopy alternateCount:2 toLeft:width < 0.0];
      [v12 setTimeOffset:v20];
      [v13 setTimeOffset:v20];
      [v16 setTimeOffset:v20];
    }

    else
    {
      if (v11 != 1)
      {
        goto LABEL_21;
      }

      v12 = [viewCopy layerForRenderFlags:4];
      v13 = [viewCopy layerForRenderFlags:16];
      [(UIKBKeyViewAnimator *)self transitionStartedForKeyView:viewCopy alternateCount:1 toLeft:0];
      v14 = fmin(height + -0.07 + height + -0.07, 1.0);
      if (v14 >= 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      [v12 setTimeOffset:v15];
      [v13 setTimeOffset:v15];
    }
  }

LABEL_21:
}

- (void)endTransitionForKeyView:(id)view
{
  viewCopy = view;
  v4 = [viewCopy key];
  isDynamicKey = [viewCopy isDynamicKey];
  v6 = 2.0;
  if (isDynamicKey)
  {
    v6 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v6];
  if ([v4 displayTypeHint] == 10)
  {
    secondaryRepresentedStrings = [v4 secondaryRepresentedStrings];
    v8 = [secondaryRepresentedStrings count];

    if (v8)
    {
      [(UIKBKeyViewAnimator *)self transitionEndedForKeyView:viewCopy alternateCount:v8];
    }
  }
}

@end