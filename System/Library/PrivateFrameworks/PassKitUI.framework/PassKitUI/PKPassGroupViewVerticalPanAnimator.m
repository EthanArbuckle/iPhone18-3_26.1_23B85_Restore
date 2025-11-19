@interface PKPassGroupViewVerticalPanAnimator
- (double)currentTouchPosition;
- (id)initWithGroupView:(void *)a3 gestureRecognizer:(void *)a4 updater:;
- (uint64_t)createAnimationWithInitialVelocity:(uint64_t)a1;
- (uint64_t)layoutViewsWithY:(uint64_t)result;
- (uint64_t)updateRecognizingWithAllowed:(uint64_t)result;
- (uint64_t)updateUpdating;
- (void)beginPanningFromStartingTouchPosition:(double)a3 to:(double)a4 anchoredAt:(double)a5 scalingFrom:(double)a6 to:(double)a7;
- (void)dealloc;
- (void)dismissWithStartVelocity:(double)a3 completion:;
- (void)invalidate;
- (void)setDismissAnimation:(uint64_t)a1;
@end

@implementation PKPassGroupViewVerticalPanAnimator

- (id)initWithGroupView:(void *)a3 gestureRecognizer:(void *)a4 updater:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (a1 && v8 && v9 && v10)
  {
    v25.receiver = a1;
    v25.super_class = PKPassGroupViewVerticalPanAnimator;
    v13 = objc_msgSendSuper2(&v25, sel_init);
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 13, a2);
      objc_storeStrong(v14 + 14, a3);
      v15 = _Block_copy(v11);
      v16 = v14[1];
      v14[1] = v15;

      [v8 anchorPoint];
      v14[19] = v17;
      v14[20] = v18;
      v14[2] = 0x3FF0000000000000;
      __asm { FMOV            V0.2D, #1.0 }

      *(v14 + 15) = _Q0;
      v14[10] = 0;
      v14[11] = 0;
      [v14[13] addGestureRecognizer:v14[14]];
    }

    a1 = v14;
    v12 = a1;
  }

  return v12;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(PKPassGroupViewVerticalPanAnimator *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = PKPassGroupViewVerticalPanAnimator;
  [(PKPassGroupViewVerticalPanAnimator *)&v3 dealloc];
}

- (void)invalidate
{
  if (a1)
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a1 + 96) = 1;
      [*(a1 + 112) setEnabled:0];
      [*(a1 + 104) removeGestureRecognizer:*(a1 + 112)];
      v2 = *(a1 + 8);
      *(a1 + 8) = 0;

      [(PKPassGroupViewVerticalPanAnimator *)a1 setDismissAnimation:?];
      if (*(a1 + 97) == 1)
      {
        *(a1 + 97) = 0;
        v3 = *(a1 + 72);

        MEMORY[0x1EEE4E390](a1 + 40, v3);
      }
    }
  }
}

- (void)setDismissAnimation:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 32);
    if (v5 != v4)
    {
      v6 = v4;
      if (v5)
      {
        [v5 stop];
        objc_storeStrong((a1 + 32), a2);
        if (!*(a1 + 32))
        {
          [*(a1 + 104) clearPageControlAlphaOverride];
        }
      }

      else
      {
        objc_storeStrong((a1 + 32), a2);
      }

      [(PKPassGroupViewVerticalPanAnimator *)a1 updateUpdating];
      v4 = v6;
    }
  }
}

- (double)currentTouchPosition
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 104) center];
  v3 = v2;
  v4 = *(a1 + 16);
  [*(a1 + 104) bounds];
  v6 = v5;
  [*(a1 + 104) anchorPoint];
  return v3 + (*(a1 + 152) - v7) * (v4 * v6);
}

- (void)beginPanningFromStartingTouchPosition:(double)a3 to:(double)a4 anchoredAt:(double)a5 scalingFrom:(double)a6 to:(double)a7
{
  if (a1)
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      [*(a1 + 104) center];
      *(a1 + 136) = v18;
      *(a1 + 144) = v19;
      *(a1 + 152) = a6;
      *(a1 + 160) = a7;
      *(a1 + 168) = a2;
      *(a1 + 176) = a3;
      *(a1 + 184) = a4;
      *(a1 + 192) = a5;
      *(a1 + 16) = a8;
      *(a1 + 120) = a8;
      *(a1 + 128) = a9;
      *(a1 + 80) = log(a8);
      *(a1 + 88) = log(a9);
    }
  }
}

- (uint64_t)updateRecognizingWithAllowed:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (a2)
    {
      result = [*(result + 112) state];
      v3 = (result - 1) < 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(v2 + 24) != v3)
    {
      *(v2 + 24) = v3;

      return [(PKPassGroupViewVerticalPanAnimator *)v2 updateUpdating];
    }
  }

  return result;
}

- (uint64_t)updateUpdating
{
  if (result)
  {
    if ((*(result + 24) & 1) != 0 || *(result + 32))
    {
      v1 = *(result + 96);
      if (*(result + 97) == (v1 ^ 1))
      {
        return result;
      }

      *(result + 97) = v1 ^ 1;
      if ((v1 & 1) == 0)
      {
        *(result + 40) = xmmword_1BE116F10;
        v2 = result + 40;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
        *(v2 + 32) = 2162689;
        return MEMORY[0x1EEE4E388]();
      }

      return MEMORY[0x1EEE4E390](result + 40, *(result + 72));
    }

    if (*(result + 97))
    {
      *(result + 97) = 0;
      return MEMORY[0x1EEE4E390](result + 40, *(result + 72));
    }
  }

  return result;
}

- (uint64_t)layoutViewsWithY:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 104) center];
    v5 = v4;
    v6 = *(v3 + 16);
    [*(v3 + 104) bounds];
    v8 = v7;
    [*(v3 + 104) anchorPoint];
    v9 = v6 * v8;
    v11 = *(v3 + 152) - v10;
    v12 = *(v3 + 176);
    v34 = *(v3 + 168);
    v13 = *(v3 + 192) - v12;
    v14 = fmin(fmax((a2 - v12) / v13, 0.0), 1.0);
    v15 = fmax(v14 / -0.05 + 1.0, 0.0);
    v36 = a2 - v12;
    if (v12 >= a2)
    {
      v17 = *(v3 + 120);
    }

    else
    {
      v16 = fmin(fmax((a2 - v12) / (v13 * 0.35), 0.0), 1.0);
      v17 = exp(v16 * *(v3 + 88) + (1.0 - v16) * *(v3 + 80));
    }

    v18 = v5 + v11 * v9;
    v19 = fmin(v15, 1.0);
    memset(&v39, 0, sizeof(v39));
    if (v17 == 1.0)
    {
      v20 = *(MEMORY[0x1E69792E8] + 80);
      *&v39.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v39.m33 = v20;
      v21 = *(MEMORY[0x1E69792E8] + 112);
      *&v39.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v39.m43 = v21;
      v22 = *(MEMORY[0x1E69792E8] + 16);
      *&v39.m11 = *MEMORY[0x1E69792E8];
      *&v39.m13 = v22;
      v23 = *(MEMORY[0x1E69792E8] + 48);
      *&v39.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v39.m23 = v23;
    }

    else
    {
      CATransform3DMakeScale(&v39, v17, v17, 1.0);
    }

    [*(v3 + 104) bounds];
    v25 = v24;
    v27 = v26;
    [*(v3 + 104) anchorPoint];
    v28 = *(v3 + 160);
    v30 = v18 - (*(v3 + 152) - v29) * (v17 * v25);
    *(v3 + 16) = v17;
    v32 = *(v3 + 104);
    v33 = a2 - (v28 - v31) * (v17 * v27);
    v38 = v39;
    [v32 setTransform3D:&v38];
    [*(v3 + 104) setCenter:{v30, v33}];
    if (([*(v3 + 104) overridePageControlAlpha:v19] & 1) == 0)
    {
      [*(v3 + 104) updatePageControlFrameAnimated:0];
    }

    [*(v3 + 104) updateToStackWithProgress:v14 originalPosition:{*(v3 + 136), *(v3 + 144)}];
    result = *(v3 + 8);
    if (result)
    {
      return (*(result + 16))(result, v3, v30, v33, v17, v18 - v35, v37);
    }
  }

  return result;
}

- (void)dismissWithStartVelocity:(double)a3 completion:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (a1[96] == 1)
    {
      if (v5)
      {
        (*(v5 + 2))(v5, 1);
      }
    }

    else
    {
      v7 = [(PKPassGroupViewVerticalPanAnimator *)a1 createAnimationWithInitialVelocity:a3];
      [(PKPassGroupViewVerticalPanAnimator *)a1 setDismissAnimation:v7];
      objc_initWeak(&location, a1);
      objc_initWeak(&from, v7);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __74__PKPassGroupViewVerticalPanAnimator_dismissWithStartVelocity_completion___block_invoke;
      v12[3] = &unk_1E80252F0;
      objc_copyWeak(&v13, &location);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __74__PKPassGroupViewVerticalPanAnimator_dismissWithStartVelocity_completion___block_invoke_2;
      v8[3] = &unk_1E8025318;
      objc_copyWeak(&v10, &location);
      objc_copyWeak(&v11, &from);
      v9 = v6;
      [v7 runWithValueApplier:v12 completion:v8];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

- (uint64_t)createAnimationWithInitialVelocity:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    [*(a1 + 104) center];
    v5 = v4;
    v6 = *(v2 + 16);
    [*(v2 + 104) bounds];
    v8 = v7;
    [*(v2 + 104) anchorPoint];
    v10 = v5 + (*(v2 + 160) - v9) * (v6 * v8);
    v11 = *(v2 + 192);
    v12 = objc_alloc(MEMORY[0x1E69DD4A0]);
    v2 = [v12 initWithValue:v10 velocity:a2 unitSize:*MEMORY[0x1E69DE8A0]];
    v13 = [MEMORY[0x1E69DD490] upperBoundary:2 ofType:v11];
    [v2 addActiveValue:v13];
    v14 = [MEMORY[0x1E69DD490] activeValue:0 ofType:v11];
    [v14 _setBoundaryPull:0.06];
    [v2 addActiveValue:v14];
    [v2 setFriction:0.200000003];
  }

  return v2;
}

void __74__PKPassGroupViewVerticalPanAnimator_dismissWithStartVelocity_completion___block_invoke(uint64_t a1, double a2, double a3)
{
  v5 = objc_autoreleasePoolPush();
  objc_copyWeak(&to, (a1 + 32));
  v6 = objc_loadWeakRetained(&to);

  if (v6)
  {
    v7 = objc_loadWeakRetained(&to);
    [(PKPassGroupViewVerticalPanAnimator *)v7 layoutViewsWithY:a3];
  }

  objc_destroyWeak(&to);
  objc_autoreleasePoolPop(v5);
}

void __74__PKPassGroupViewVerticalPanAnimator_dismissWithStartVelocity_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && WeakRetained[4] == v4)
  {
    [(PKPassGroupViewVerticalPanAnimator *)WeakRetained setDismissAnimation:?];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }
}

@end