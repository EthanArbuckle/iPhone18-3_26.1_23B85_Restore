@interface UIKBKeyViewAnimator
+ (id)normalizedAnimationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5;
+ (id)normalizedUnwindAnimationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 offset:(double)a6;
+ (id)normalizedUnwindAnimationWithKeyPath:(id)a3 originallyFromValue:(id)a4 toValue:(id)a5 offset:(double)a6;
+ (id)normalizedUnwindOpacityAnimationWithKeyPath:(id)a3 originallyFromValue:(id)a4 toValue:(id)a5 offset:(double)a6;
- (CGRect)primaryGlyphNormalizedExitRect;
- (CGRect)secondaryGlyphNormalizedExitRect;
- (Class)_keyViewClassForSpecialtyKey:(id)a3 screenTraits:(id)a4;
- (Class)keyViewClassForKey:(id)a3 renderTraits:(id)a4 screenTraits:(id)a5;
- (double)delayedDeactivationTimeForKeyView:(id)a3;
- (id)keycapAlternateDualStringTransform:(id)a3;
- (id)keycapAlternateTransform:(id)a3;
- (id)keycapMeshTransformFromRect:(CGRect)a3 toRect:(CGRect)a4;
- (id)keycapMeshTransformFromRect:(CGRect)a3 toRect:(CGRect)a4 scale:(double)a5;
- (id)keycapPrimaryDualStringTransform:(id)a3;
- (id)keycapPrimaryExitTransform;
- (void)_fadeInKeyView:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)_fadeOutKeyView:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)endTransitionForKeyView:(id)a3;
- (void)transitionEndedForKeyView:(id)a3 alternateCount:(unint64_t)a4;
- (void)transitionKeyView:(id)a3 fromState:(int)a4 toState:(int)a5 completion:(id)a6;
- (void)transitionOutKeyView:(id)a3 fromState:(int)a4 toState:(int)a5 completion:(id)a6;
- (void)transitionStartedForKeyView:(id)a3 alternateCount:(unint64_t)a4 toLeft:(BOOL)a5;
- (void)updateTransitionForKeyView:(id)a3 normalizedDragSize:(CGSize)a4;
@end

@implementation UIKBKeyViewAnimator

- (Class)_keyViewClassForSpecialtyKey:(id)a3 screenTraits:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 displayType];
  v8 = 0;
  if (v7 > 35)
  {
    if (v7 == 36)
    {
      if (!+[UIKeyboard isRemoteEmojiCollectionViewEnabled](UIKeyboard, "isRemoteEmojiCollectionViewEnabled") && (!_UIApplicationIsStickerPickerService() || +[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService]))
      {
        if (v6)
        {
          v12 = [v6 idiom];
        }

        else
        {
          v14 = +[UIDevice currentDevice];
          v12 = [v14 userInterfaceIdiom];
        }

        v10 = [UIKeyboardEmojiKeyDisplayController classForInputView:v12];
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 != 37)
      {
        goto LABEL_16;
      }

      if (!+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
      {
        if (v6)
        {
          v9 = [v6 idiom];
        }

        else
        {
          v13 = +[UIDevice currentDevice];
          v9 = [v13 userInterfaceIdiom];
        }

        v10 = [UIKeyboardEmojiKeyDisplayController classForCategoryControl:v9];
        goto LABEL_15;
      }
    }
  }

  else if (v7 == 1)
  {
    [v5 rendering];
  }

  else if (v7 != 12)
  {
    goto LABEL_16;
  }

  v10 = objc_opt_class();
LABEL_15:
  v8 = v10;
LABEL_16:

  return v8;
}

- (Class)keyViewClassForKey:(id)a3 renderTraits:(id)a4 screenTraits:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 blendForm] == 3)
  {
    v11 = [v9 controlOpacities] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  if ([v9 blurBlending] & 1) != 0 || (objc_msgSend(v9, "variantTraits"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "blurBlending") | v11, v12, (v13) || (v17 = -[UIKBKeyViewAnimator _keyViewClassForSpecialtyKey:screenTraits:](self, "_keyViewClassForSpecialtyKey:screenTraits:", v8, v10)) == 0)
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

- (double)delayedDeactivationTimeForKeyView:(id)a3
{
  v3 = a3;
  v4 = [v3 key];
  if ([v4 displayTypeHint] == 10)
  {
    v5 = [v3 layerForRenderFlags:4];
    v6 = [v5 animationForKey:@"pan opacity"];

    if (v6)
    {
      [v3 endingTransitionDuration];
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

- (void)_fadeOutKeyView:(id)a3 duration:(double)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__UIKBKeyViewAnimator__fadeOutKeyView_duration_completion___block_invoke;
  aBlock[3] = &unk_1E7101F90;
  v9 = v7;
  v20 = v9;
  v21 = 0;
  v22 = a4 > 0.0;
  v10 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__UIKBKeyViewAnimator__fadeOutKeyView_duration_completion___block_invoke_2;
  v14[3] = &unk_1E7114198;
  v11 = v9;
  v15 = v11;
  v17 = 0;
  v12 = v8;
  v16 = v12;
  v18 = a4 > 0.0;
  v13 = _Block_copy(v14);
  if (a4 == 0.0)
  {
    v10[2](v10);
    v13[2](v13, 1);
  }

  else
  {
    [UIView animateWithDuration:50331648 delay:v10 options:v13 animations:a4 completion:0.0];
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

- (void)_fadeInKeyView:(id)a3 duration:(double)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v7 setAlpha:0.0];
  if (a4 <= 0.0)
  {
    [v7 setAlpha:1.0];
    if (v8)
    {
      v8[2](v8, 1);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__UIKBKeyViewAnimator__fadeInKeyView_duration_completion___block_invoke;
    v11[3] = &unk_1E70F3590;
    v12 = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__UIKBKeyViewAnimator__fadeInKeyView_duration_completion___block_invoke_2;
    v9[3] = &unk_1E70F3608;
    v10 = v8;
    [UIView animateWithDuration:50331648 delay:v11 options:v9 animations:a4 completion:0.0];
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

- (id)keycapMeshTransformFromRect:(CGRect)a3 toRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  [(UIKBKeyViewAnimator *)self keyScale];
  v14 = v13;
  v15 = 2.0;
  if (v14 > 0.0)
  {
    [(UIKBKeyViewAnimator *)self keyScale];
  }

  return [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:v11 toRect:v10 scale:v9, v8, x, y, width, height, *&v15];
}

- (id)keycapMeshTransformFromRect:(CGRect)a3 toRect:(CGRect)a4 scale:(double)a5
{
  v45 = *MEMORY[0x1E69E9840];
  if (a5 != 1.0)
  {
    v5 = (a5 + -1.0) * 0.5;
    a3.origin.x = 1.0 / a5 * (a3.origin.x + v5);
    a3.origin.y = 1.0 / a5 * (a3.origin.y + v5);
    a3.size.width = a3.size.width * (1.0 / a5);
    a3.size.height = a3.size.height * (1.0 / a5);
    a4.origin.x = 1.0 / a5 * (a4.origin.x + v5);
    a4.origin.y = 1.0 / a5 * (a4.origin.y + v5);
    a4.size.width = a4.size.width * (1.0 / a5);
    a4.size.height = a4.size.height * (1.0 / a5);
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
  x = a3.origin.x;
  y = a3.origin.y;
  v17 = a4.origin.x;
  v18 = a4.origin.y;
  v19 = 0x3FE0000000000000;
  v20 = a3.origin.x + a3.size.width;
  v21 = a3.origin.y;
  v22 = a4.origin.x + a4.size.width;
  v23 = a4.origin.y;
  v24 = 0x3FE0000000000000;
  v25 = a3.origin.x + a3.size.width;
  v26 = a3.origin.y + a3.size.height;
  v27 = a4.origin.x + a4.size.width;
  v28 = a4.origin.y + a4.size.height;
  v29 = 0x3FE0000000000000;
  v30 = a3.origin.x;
  v31 = a3.origin.y + a3.size.height;
  v32 = a4.origin.x;
  v33 = a4.origin.y + a4.size.height;
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

- (id)keycapPrimaryDualStringTransform:(id)a3
{
  v4 = a3;
  v5 = [v4 keyplane];
  v6 = [v5 visualStyling] & 0x3F;

  if (v6 == 23)
  {
    v7 = [v4 factory];
    v8 = [v4 key];
    v9 = [v4 keyplane];
    [v7 dualStringKeyBottomTextOffset:v8 keyplane:v9];
    v11 = v10;
    v13 = v12;

    v14 = [v4 key];
    [v14 frame];
    v16 = v11 / v15 + 0.115;

    v17 = [v4 key];
    [v17 frame];
    v19 = v13 / v18 + 0.28;

    v20 = [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28, 0.77, 0.44, v16, v19, 0.77, 0.44];
  }

  else
  {
    v21 = [v4 isDynamicKey];
    v22 = 2.0;
    if (v21)
    {
      v22 = 1.0;
    }

    v20 = [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28 scale:0.77, 0.44, 0.115, 0.38, 0.77, 0.44, *&v22];
  }

  v23 = v20;

  return v23;
}

- (id)keycapAlternateTransform:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [v5 secondaryDisplayStrings];
  v7 = [v6 firstObject];
  v8 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:v8] == 0x7FFFFFFFFFFFFFFFLL;

  v10 = dbl_18A67EEB0[v9];
  LODWORD(v5) = [v4 isDynamicKey];

  v11 = 2.0;
  if (v5)
  {
    v11 = 1.0;
  }

  return [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28 scale:0.77, 0.44, 0.25, 0.13, 0.5, v10, *&v11];
}

- (id)keycapAlternateDualStringTransform:(id)a3
{
  v4 = a3;
  v5 = [v4 keyplane];
  v6 = [v5 visualStyling] & 0x3F;

  if (v6 == 23)
  {
    v7 = [v4 factory];
    v8 = [v4 key];
    v9 = [v4 keyplane];
    [v7 dualStringKeyTopTextOffset:v8 keyplane:v9];
    v11 = v10;
    v13 = v12;

    v14 = [v4 key];
    [v14 frame];
    v16 = v11 / v15 + 0.115;

    v17 = [v4 key];
    [v17 frame];
    v19 = v13 / v18 + 0.28;

    v20 = [(UIKBKeyViewAnimator *)self keycapMeshTransformFromRect:0.115 toRect:0.28, 0.77, 0.44, v16, v19, 0.77, 0.44];
  }

  else
  {
    v21 = [v4 isDynamicKey];
    v22 = 2.0;
    if (v21)
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

+ (id)normalizedAnimationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5
{
  v7 = MEMORY[0x1E6979318];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 animationWithKeyPath:v10];
  [v11 setBeginTime:1.0e-100];
  LODWORD(v7) = [v10 isEqualToString:@"opacity"];

  v12 = 0.4;
  if (!v7)
  {
    v12 = 1.0;
  }

  [v11 setDuration:v12];
  [v11 setFillMode:*MEMORY[0x1E69797E0]];
  [v11 setRemovedOnCompletion:0];
  [v11 setFromValue:v9];

  [v11 setToValue:v8];

  return v11;
}

+ (id)normalizedUnwindAnimationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 offset:(double)a6
{
  v9 = MEMORY[0x1E6979318];
  v10 = a5;
  v11 = a4;
  v12 = [v9 animationWithKeyPath:a3];
  [v12 setTimeOffset:(1.0 - a6) * 0.150000006];
  [v12 setDuration:0.150000006];
  [v12 setFillMode:*MEMORY[0x1E69797E0]];
  [v12 setRemovedOnCompletion:1];
  [v12 setFromValue:v11];

  [v12 setToValue:v10];

  return v12;
}

+ (id)normalizedUnwindOpacityAnimationWithKeyPath:(id)a3 originallyFromValue:(id)a4 toValue:(id)a5 offset:(double)a6
{
  v18[3] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E6979390];
  v10 = a5;
  v11 = a4;
  v12 = [v9 animationWithKeyPath:a3];
  v18[0] = v10;
  v18[1] = v10;
  v18[2] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [v12 setValues:v13];

  [v12 setKeyTimes:&unk_1EFE2C508];
  v14 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v17[0] = v14;
  v17[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  [v12 setTimingFunctions:v15];
  [v12 setTimeOffset:(1.0 - a6) * 0.200000003];
  [v12 setDuration:0.200000003];
  [v12 setFillMode:*MEMORY[0x1E69797E0]];
  [v12 setRemovedOnCompletion:1];

  return v12;
}

+ (id)normalizedUnwindAnimationWithKeyPath:(id)a3 originallyFromValue:(id)a4 toValue:(id)a5 offset:(double)a6
{
  v9 = MEMORY[0x1E6979318];
  v10 = a5;
  v11 = a4;
  v12 = [v9 animationWithKeyPath:a3];
  v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v12 setTimingFunction:v13];

  [v12 setTimeOffset:(1.0 - a6) * 0.200000003];
  [v12 setDuration:0.200000003];
  [v12 setFillMode:*MEMORY[0x1E69797E0]];
  [v12 setRemovedOnCompletion:1];
  [v12 setFromValue:v10];

  [v12 setToValue:v11];

  return v12;
}

- (void)transitionKeyView:(id)a3 fromState:(int)a4 toState:(int)a5 completion:(id)a6
{
  v37 = a3;
  v10 = a6;
  v11 = [v37 key];
  v12 = [v37 isDynamicKey];
  v13 = 2.0;
  if (v12)
  {
    v13 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v13];
  if ([v11 displayTypeHint] == 10)
  {
    v14 = [v11 displayType];
    if (a4 != 4 && a5 == 4)
    {
      v15 = v14;
      v16 = [v37 layerForRenderFlags:4];
      if (v15 == 7)
      {
        [(UIKBKeyViewAnimator *)self keycapPrimaryDualStringTransform:v37];
      }

      else
      {
        [(UIKBKeyViewAnimator *)self keycapPrimaryTransform];
      }
      v17 = ;
      [v16 setMeshTransform:v17];

      [v16 setShouldRasterize:1];
      v18 = [v11 secondaryRepresentedStrings];
      v19 = [v18 count];

      if (v19 == 1)
      {
        v20 = [v37 layerForRenderFlags:16];
        v22 = v20;
        if (v15 == 7)
        {
          LODWORD(v21) = 1.0;
          [v20 setOpacity:v21];
          v23 = [(UIKBKeyViewAnimator *)self keycapAlternateDualStringTransform:v37];
        }

        else
        {
          v33 = [v37 renderConfig];
          v34 = [v33 lightKeyboard];
          LODWORD(v35) = 1050253722;
          if (v34)
          {
            *&v35 = 0.25;
          }

          [v22 setOpacity:v35];

          v23 = [(UIKBKeyViewAnimator *)self keycapAlternateTransform:v37];
        }

        v36 = v23;
        [v22 setMeshTransform:v23];

        [v22 setShouldRasterize:1];
      }

      else
      {
        v24 = [v11 secondaryRepresentedStrings];
        v25 = [v24 count];

        if (v25 != 2)
        {
LABEL_25:

          goto LABEL_26;
        }

        v22 = [v37 layerForRenderFlags:16];
        v26 = [v37 renderConfig];
        if ([v26 lightKeyboard])
        {
          *&v27 = 0.25;
        }

        else
        {
          *&v27 = 0.3;
        }

        [v22 setOpacity:v27];

        v28 = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
        [v22 setMeshTransform:v28];

        [v22 setShouldRasterize:1];
        v29 = [v37 layerForRenderFlags:32];
        v30 = [v37 renderConfig];
        if ([v30 lightKeyboard])
        {
          *&v31 = 0.25;
        }

        else
        {
          *&v31 = 0.3;
        }

        [v29 setOpacity:v31];

        v32 = [(UIKBKeyViewAnimator *)self keycapRightTransform];
        [v29 setMeshTransform:v32];

        [v29 setShouldRasterize:1];
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  if (v10)
  {
    v10[2](v10, 1);
  }
}

- (void)transitionOutKeyView:(id)a3 fromState:(int)a4 toState:(int)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [v11 key];
  v13 = 0.0;
  v14 = v12;
  if (a4 != 4 && a4 > a5 && [v12 interactionType] != 20 && (objc_msgSend(v14, "displayType") == 13 || objc_msgSend(v14, "displayType") == 5))
  {
    v13 = 0.5;
  }

  [v11 changeBackgroundToActiveIfNecessary];
  [(UIKBKeyViewAnimator *)self _fadeOutKeyView:v11 duration:v10 completion:v13];
}

- (void)transitionStartedForKeyView:(id)a3 alternateCount:(unint64_t)a4 toLeft:(BOOL)a5
{
  v5 = a5;
  v67 = a3;
  v8 = [v67 layerForRenderFlags:4];
  v9 = [v67 isDynamicKey];
  v10 = 2.0;
  if (v9)
  {
    v10 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v10];
  v11 = [v8 animationForKey:@"pan transform"];

  if (a4 != 1 || v11)
  {
    if (a4 != 2)
    {
      goto LABEL_40;
    }

    v18 = [v8 animationForKey:@"pan transform left"];

    v19 = [v8 animationForKey:@"pan transform right"];

    v20 = !v19 || v5;
    v21 = v18 && v5;
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

    v12 = [v67 layerForRenderFlags:16];
    v23 = [v67 layerForRenderFlags:32];
    [v8 setShouldRasterize:0];
    [v12 setShouldRasterize:0];
    [v23 setShouldRasterize:0];
    [v8 setSpeed:0.0];
    [v12 setSpeed:0.0];
    v65 = v23;
    [v23 setSpeed:0.0];
    v66 = [objc_opt_class() normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE2E6F8 toValue:&unk_1EFE310F0];
    v24 = [(UIKBKeyViewAnimator *)self keycapPrimaryTransform];
    v63 = v24;
    if (v5)
    {
      v62 = [(UIKBKeyViewAnimator *)self keycapLeftSelectPrimaryTransform];
      v25 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v24 toValue:v62];
      v26 = objc_opt_class();
      v27 = MEMORY[0x1E696AD98];
      v28 = [v67 renderConfig];
      if ([v28 lightKeyboard])
      {
        v29 = 0.25;
      }

      else
      {
        v29 = 0.3;
      }

      v30 = [v27 numberWithDouble:v29];
      v31 = [v26 normalizedAnimationWithKeyPath:@"opacity" fromValue:v30 toValue:&unk_1EFE2E6F8];

      v32 = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
      v60 = [(UIKBKeyViewAnimator *)self keycapLeftSelectLeftTransform];
      v61 = v32;
      v33 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v32 toValue:v60];
      v34 = objc_opt_class();
      v35 = MEMORY[0x1E696AD98];
      v36 = [v67 renderConfig];
      if ([v36 lightKeyboard])
      {
        v37 = 0.25;
      }

      else
      {
        v37 = 0.3;
      }

      v38 = [v35 numberWithDouble:v37];
      v39 = [v34 normalizedAnimationWithKeyPath:@"opacity" fromValue:v38 toValue:&unk_1EFE310F0];

      v40 = [(UIKBKeyViewAnimator *)self keycapRightTransform];
      v41 = [(UIKBKeyViewAnimator *)self keycapLeftSelectRightTransform];
      v42 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v40 toValue:v41];
      v43 = @"pan transform left";
    }

    else
    {
      v62 = [(UIKBKeyViewAnimator *)self keycapRightSelectPrimaryTransform];
      v25 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v24 toValue:v62];
      v49 = objc_opt_class();
      v50 = MEMORY[0x1E696AD98];
      v51 = [v67 renderConfig];
      if ([v51 lightKeyboard])
      {
        v52 = 0.25;
      }

      else
      {
        v52 = 0.3;
      }

      v53 = [v50 numberWithDouble:v52];
      v31 = [v49 normalizedAnimationWithKeyPath:@"opacity" fromValue:v53 toValue:&unk_1EFE310F0];

      v54 = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
      v60 = [(UIKBKeyViewAnimator *)self keycapRightSelectLeftTransform];
      v61 = v54;
      v33 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v54 toValue:v60];
      v55 = objc_opt_class();
      v56 = MEMORY[0x1E696AD98];
      v57 = [v67 renderConfig];
      if ([v57 lightKeyboard])
      {
        v58 = 0.25;
      }

      else
      {
        v58 = 0.3;
      }

      v59 = [v56 numberWithDouble:v58];
      v39 = [v55 normalizedAnimationWithKeyPath:@"opacity" fromValue:v59 toValue:&unk_1EFE2E6F8];

      v40 = [(UIKBKeyViewAnimator *)self keycapRightTransform];
      v41 = [(UIKBKeyViewAnimator *)self keycapRightSelectRightTransform];
      v42 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v40 toValue:v41];
      v43 = @"pan transform right";
    }

    [v8 addAnimation:v66 forKey:@"pan opacity"];
    [v8 addAnimation:v25 forKey:v43];
    [v12 addAnimation:v31 forKey:@"pan opacity"];
    [v12 addAnimation:v33 forKey:@"pan transform"];
    v48 = v65;
    [v65 addAnimation:v39 forKey:@"pan opacity"];
    [v65 addAnimation:v42 forKey:@"pan transform"];
  }

  else
  {
    v12 = [v67 layerForRenderFlags:16];
    [v8 setShouldRasterize:0];
    [v12 setShouldRasterize:0];
    [v8 setSpeed:0.0];
    [v12 setSpeed:0.0];
    v13 = [v67 key];
    v14 = [v13 displayType];

    v15 = 1.0;
    if (v14 != 7)
    {
      v16 = [v67 renderConfig];
      if ([v16 lightKeyboard])
      {
        v15 = 0.25;
      }

      else
      {
        v15 = 0.3;
      }
    }

    v17 = [objc_opt_class() normalizedAnimationWithKeyPath:@"opacity" fromValue:&unk_1EFE2E6F8 toValue:&unk_1EFE310F0];
    if (v14 == 7)
    {
      [(UIKBKeyViewAnimator *)self keycapPrimaryDualStringTransform:v67];
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

    if (v14 == 7)
    {
      [(UIKBKeyViewAnimator *)self keycapAlternateDualStringTransform:v67];
    }

    else
    {
      [(UIKBKeyViewAnimator *)self keycapAlternateTransform:v67];
    }
    v39 = ;
    v42 = [(UIKBKeyViewAnimator *)self keycapNullTransform];
    v47 = [objc_opt_class() normalizedAnimationWithKeyPath:@"meshTransform" fromValue:v39 toValue:v42];
    [v8 addAnimation:v17 forKey:@"pan opacity"];
    [v8 addAnimation:v31 forKey:@"pan transform"];
    [v12 addAnimation:v33 forKey:@"pan opacity"];
    v48 = v17;
    [v12 addAnimation:v47 forKey:@"pan transform"];

    v25 = v64;
  }

LABEL_40:
}

- (void)transitionEndedForKeyView:(id)a3 alternateCount:(unint64_t)a4
{
  v83 = a3;
  v6 = [v83 layerForRenderFlags:4];
  [v6 timeOffset];
  [v83 setEndingTransitionDuration:v7 * 0.200000003];
  v8 = [v83 isDynamicKey];
  v9 = 2.0;
  if (v8)
  {
    v9 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v9];
  v10 = [v6 animationForKey:@"pan transform"];

  if (a4 == 1 && v10)
  {
    [v83 changeBackgroundToEnabled];
    v11 = [v83 layerForRenderFlags:16];
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
    v17 = [v83 key];
    v18 = [v17 displayType];

    v19 = 1.0;
    if (v18 != 7)
    {
      v20 = [v83 renderConfig];
      if ([v20 lightKeyboard])
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
    if (v18 == 7)
    {
      [(UIKBKeyViewAnimator *)self keycapPrimaryDualStringTransform:v83];
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

    if (v18 == 7)
    {
      [(UIKBKeyViewAnimator *)self keycapAlternateDualStringTransform:v83];
    }

    else
    {
      [(UIKBKeyViewAnimator *)self keycapAlternateTransform:v83];
    }
    v49 = ;
    v53 = [(UIKBKeyViewAnimator *)self keycapNullTransform];
    v60 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v49 toValue:v53 offset:v15];
    [v6 addAnimation:v21 forKey:@"pan opacity"];
    [v6 addAnimation:v57 forKey:@"pan transform"];
    v61 = v79;
    [v79 addAnimation:v43 forKey:@"pan opacity"];
    [v79 addAnimation:v60 forKey:@"pan transform"];

    v62 = v82;
    goto LABEL_27;
  }

  if (a4 == 2)
  {
    v22 = [v6 animationForKey:@"pan transform left"];

    v23 = [v6 animationForKey:@"pan transform right"];
    v24 = v22 | v23;

    if (v24)
    {
      v25 = [v83 layerForRenderFlags:16];
      v26 = [v83 layerForRenderFlags:32];
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
      v35 = [(UIKBKeyViewAnimator *)self keycapPrimaryTransform];
      v74 = v26;
      if (v22)
      {
        v76 = [(UIKBKeyViewAnimator *)self keycapLeftSelectPrimaryTransform];
        v77 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v35 toValue:v76 offset:v28];
        v36 = objc_opt_class();
        v37 = MEMORY[0x1E696AD98];
        v38 = [v83 renderConfig];
        if ([v38 lightKeyboard])
        {
          v39 = 0.25;
        }

        else
        {
          v39 = 0.3;
        }

        v40 = [v37 numberWithDouble:v39];
        v75 = [v36 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v40 toValue:&unk_1EFE2E6F8 offset:v30];

        v41 = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
        v42 = [(UIKBKeyViewAnimator *)self keycapLeftSelectLeftTransform];
        v43 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v41 toValue:v42 offset:v30];
        v44 = objc_opt_class();
        v45 = MEMORY[0x1E696AD98];
        v46 = [v83 renderConfig];
        if ([v46 lightKeyboard])
        {
          v47 = 0.25;
        }

        else
        {
          v47 = 0.3;
        }

        v48 = [v45 numberWithDouble:v47];
        v49 = [v44 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v48 toValue:&unk_1EFE310F0 offset:v32];

        v50 = [(UIKBKeyViewAnimator *)self keycapRightTransform];
        v51 = [(UIKBKeyViewAnimator *)self keycapLeftSelectRightTransform];
        v52 = v77;
        v53 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v50 toValue:v51 offset:v32];
        v54 = @"pan transform left";
      }

      else
      {
        v76 = [(UIKBKeyViewAnimator *)self keycapRightSelectPrimaryTransform];
        v52 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v35 toValue:v76 offset:v28];
        v63 = objc_opt_class();
        v64 = MEMORY[0x1E696AD98];
        v65 = [v83 renderConfig];
        if ([v65 lightKeyboard])
        {
          v66 = 0.25;
        }

        else
        {
          v66 = 0.3;
        }

        v67 = [v64 numberWithDouble:v66];
        v75 = [v63 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v67 toValue:&unk_1EFE310F0 offset:v30];

        v41 = [(UIKBKeyViewAnimator *)self keycapLeftTransform];
        v42 = [(UIKBKeyViewAnimator *)self keycapRightSelectLeftTransform];
        v43 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v41 toValue:v42 offset:v30];
        v68 = objc_opt_class();
        v69 = MEMORY[0x1E696AD98];
        v70 = [v83 renderConfig];
        if ([v70 lightKeyboard])
        {
          v71 = 0.25;
        }

        else
        {
          v71 = 0.3;
        }

        v72 = [v69 numberWithDouble:v71];
        v49 = [v68 normalizedUnwindOpacityAnimationWithKeyPath:@"opacity" originallyFromValue:v72 toValue:&unk_1EFE2E6F8 offset:v32];

        v50 = [(UIKBKeyViewAnimator *)self keycapRightTransform];
        v51 = [(UIKBKeyViewAnimator *)self keycapRightSelectRightTransform];
        v53 = [objc_opt_class() normalizedUnwindAnimationWithKeyPath:@"meshTransform" originallyFromValue:v50 toValue:v51 offset:v32];
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
      [v74 addAnimation:v53 forKey:@"pan transform"];
      v57 = v75;
      v56 = v78;
LABEL_27:
    }
  }
}

- (void)updateTransitionForKeyView:(id)a3 normalizedDragSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v21 = a3;
  v7 = [v21 key];
  v8 = [v21 isDynamicKey];
  v9 = 2.0;
  if (v8)
  {
    v9 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v9];
  if ([v7 displayTypeHint] == 10)
  {
    v10 = [v7 secondaryRepresentedStrings];
    v11 = [v10 count];

    if (v11 == 2)
    {
      v12 = [v21 layerForRenderFlags:4];
      v13 = [v21 layerForRenderFlags:16];
      v16 = [v21 layerForRenderFlags:32];
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

      [(UIKBKeyViewAnimator *)self transitionStartedForKeyView:v21 alternateCount:2 toLeft:width < 0.0];
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

      v12 = [v21 layerForRenderFlags:4];
      v13 = [v21 layerForRenderFlags:16];
      [(UIKBKeyViewAnimator *)self transitionStartedForKeyView:v21 alternateCount:1 toLeft:0];
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

- (void)endTransitionForKeyView:(id)a3
{
  v9 = a3;
  v4 = [v9 key];
  v5 = [v9 isDynamicKey];
  v6 = 2.0;
  if (v5)
  {
    v6 = 1.0;
  }

  [(UIKBKeyViewAnimator *)self setKeyScale:v6];
  if ([v4 displayTypeHint] == 10)
  {
    v7 = [v4 secondaryRepresentedStrings];
    v8 = [v7 count];

    if (v8)
    {
      [(UIKBKeyViewAnimator *)self transitionEndedForKeyView:v9 alternateCount:v8];
    }
  }
}

@end