@interface UIPointerContentEffect
@end

@implementation UIPointerContentEffect

void __48___UIPointerContentEffect_initWithStyle_region___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFromState:objc_msgSend(WeakRetained toState:{"state"), objc_msgSend(WeakRetained, "state")}];
}

void __47___UIPointerContentEffect_setPressed_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) platterView];
  [v2 setPressed:v1];
}

void __43___UIPointerContentEffect_setLiftProgress___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) liftProgressProperty];
  [v2 setValue:v1];
}

void __52___UIPointerContentEffect__updateFromState_toState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") + 1}];
  v2 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v2;
  v8[2] = *(a1 + 80);
  [*(a1 + 40) setTransform:v8];
  [*(a1 + 40) setTintViewScale:*(a1 + 96)];
  v3 = *(a1 + 112);
  if (*(a1 + 104) != v3)
  {
    v4 = *(a1 + 32);
    if (v3 == 1)
    {
      v5 = [v4 exitAnimator];
      [v5 performAllCompletions:0];

      [*(a1 + 32) entranceAnimator];
    }

    else
    {
      v6 = [v4 entranceAnimator];
      [v6 performAllCompletions:0];

      [*(a1 + 32) exitAnimator];
    }
    v7 = ;
    [v7 performAllAnimations];
  }
}

void __52___UIPointerContentEffect__updateFromState_toState___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") - 1}];
  [*(a1 + 32) animationCount];
  if (![*(a1 + 32) animationCount])
  {
    v2 = [*(a1 + 32) state];
    v3 = *(a1 + 32);
    if (v2 == 1)
    {
      v11 = [v3 entranceAnimator];
      [v11 performAllCompletions:1];
    }

    else
    {
      v4 = [v3 exitAnimator];
      [v4 performAllCompletions:1];

      v5 = *(a1 + 32);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke_3;
      v16[3] = &unk_1E70F3590;
      v16[4] = v5;
      [v5 _modifyEffectContainerViewHierarchy:v16 waitForCACommit:0];
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [*(a1 + 32) completions];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            (*(*(*(&v12 + 1) + 8 * i) + 16))();
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v8);
      }
    }
  }
}

uint64_t __52___UIPointerContentEffect__updateFromState_toState___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") + 1}];
  v2 = *(a1 + 64);
  if (v2 != 1)
  {
    v3 = 0.0;
    [*(a1 + 48) setAlpha:0.0];
    goto LABEL_12;
  }

  v3 = 0.0;
  if (([*(a1 + 40) options] & 0x10) != 0)
  {
    [*(a1 + 32) liftProgress];
    v3 = v4 + (1.0 - v4) * 0.0;
  }

  if (([*(a1 + 40) options] & 0x10000) != 0)
  {
    [*(a1 + 48) setAlpha:1.0];
    v5 = [*(a1 + 32) style];
    v6 = [v5 targetedPreview];
    v7 = [v6 view];

    v8 = [v7 traitCollection];
    if ([v8 _monochromaticTreatment])
    {
      v9 = [v7 _definesTintColor];

      if ((v9 & 1) == 0)
      {
        v10 = +[UIColor labelColor];
LABEL_11:
        v11 = v10;
        [*(a1 + 48) setTintColor:v10];

        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [v7 tintColor];
    goto LABEL_11;
  }

LABEL_12:
  v12 = v2 != 1;
  v13 = [*(a1 + 56) targetedPreview];
  v14 = [v13 view];
  v15 = [v14 _isResolvedBackgroundGlass];

  v16 = 0.0;
  if (!v15)
  {
    v16 = v3;
  }

  [*(a1 + 56) setShadowAlpha:v16];
  v17 = *(a1 + 56);

  return [v17 setTintDisabled:v12];
}

uint64_t __52___UIPointerContentEffect__updateFromState_toState___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) targetedPreview];
  v3 = [v2 target];
  v4 = [v3 container];
  v5 = [*(a1 + 32) pointerShape];
  [v5 rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 40) superview];
  [v4 convertRect:v14 toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16 + v20 * 0.5;
  v24 = v18 + v22 * 0.5;
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&v33.a = *MEMORY[0x1E695EFD0];
  *&v33.c = v25;
  *&v33.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (*(a1 + 56) == 1)
  {
    CGAffineTransformMakeTranslation(&v32, *(a1 + 64), *(a1 + 72));
    v26 = v32.tx + v23 * v32.a + v24 * v32.c;
    v24 = v32.ty + v23 * v32.b + v24 * v32.d;
    [*(a1 + 40) setBounds:{0.0, 0.0, v20, v22}];
    v27 = [*(a1 + 32) pointerShape];
    [v27 effectiveCornerRadius];
    [*(a1 + 40) _setCornerRadius:?];

    [*(a1 + 48) _currentAnimatedLiftProgress];
    v29 = v28;
    [*(a1 + 32) contentScale];
    CGAffineTransformMakeScale(&v33, v29 + (1.0 - v29) * (1.0 / v30), v29 + (1.0 - v29) * (1.0 / v30));
    v23 = v26;
  }

  [*(a1 + 40) setCenter:{v23, v24}];
  v32 = v33;
  return [*(a1 + 40) setTransform:&v32];
}

void __52___UIPointerContentEffect__updateFromState_toState___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __UIPTR_HFR_block_invoke;
  v3[3] = &unk_1E70F0F78;
  v4 = v1;
  v2 = v1;
  [UIView _modifyAnimationsByDecomposingGeometricTypes:1 animations:v3];
}

void __70___UIPointerContentEffect__commitPointerStyleToArbiterWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_copyWeak(&to, (a1 + 40));
  v13 = objc_loadWeakRetained(&to);
  v14 = [v13 platterView];

  v15 = objc_loadWeakRetained(&to);
  [v15 setPointerPortal:v9];

  v16 = objc_loadWeakRetained(&to);
  [v16 setLumaSamplingBackdrop:v12];

  v17 = [*(a1 + 32) targetedPreview];
  v18 = [v17 target];
  v19 = [v18 container];

  v20 = objc_loadWeakRetained(&to);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __70___UIPointerContentEffect__commitPointerStyleToArbiterWithCompletion___block_invoke_2;
  v26[3] = &unk_1E711B1F8;
  v21 = v19;
  v27 = v21;
  v22 = v12;
  v28 = v22;
  v23 = v9;
  v29 = v23;
  objc_copyWeak(&v30, &to);
  [v20 _modifyEffectContainerViewHierarchy:v26 waitForCACommit:0];

  if (v10)
  {
    [v14 setSpecularOptions:{(objc_msgSend(*(a1 + 32), "options") >> 10) & 4 | (objc_msgSend(*(a1 + 32), "options") >> 1) & 1}];
    [v14 setSpecularHighlight:v10];
  }

  if (v11)
  {
    v24 = [v14 layer];
    v25 = [v11 createAnimation];
    [v24 addAnimation:v25 forKey:@"_UIPointerContentEffect.pointerMatchMove"];
  }

  objc_destroyWeak(&v30);

  objc_destroyWeak(&to);
}

void __70___UIPointerContentEffect__commitPointerStyleToArbiterWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(a1 + 40)];
  [*(a1 + 32) addSubview:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _ensureRelativeEffectViewOrderInContainer];
}

void __55___UIPointerContentEffect__createAndInstallPlatterView__block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) target];
  v2 = [v3 container];
  [v2 addSubview:*(a1 + 40)];
}

void __74___UIPointerContentEffect_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 platterView];
  [v2 _anchorPlatterView:v3 toPreview:*(a1 + 40) updateBounds:1];
}

uint64_t __79___UIPointerContentEffect__modifyEffectContainerViewHierarchy_waitForCACommit___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 8) = 0;
  return result;
}

@end