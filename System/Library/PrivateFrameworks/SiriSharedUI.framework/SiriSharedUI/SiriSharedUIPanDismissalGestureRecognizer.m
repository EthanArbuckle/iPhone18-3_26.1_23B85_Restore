@interface SiriSharedUIPanDismissalGestureRecognizer
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGPoint)initialPosition;
- (CGRect)_windowBounds;
- (SiriSharedUIPanDismissalGestureRecognizer)initWithDismissalDelegate:(id)a3 dismissalStyle:(int64_t)a4;
- (SiriSharedUIPanDismissalGestureRecognizer)initWithDismissalDelegate:(id)a3 dismissalStyle:(int64_t)a4 rtlProvider:(id)a5;
- (SiriSharedUIPanDismissalGestureRecognizerDelegate)dismissalDelegate;
- (double)_contentScaleFactor;
- (void)_handlePanWithRubberBandDownDismissUp:(id)a3 requiredDirection:(int64_t)a4;
- (void)_handlePanWithRubberBandUpDownDismissTrailing:(id)a3 requiredDirection:(int64_t)a4;
- (void)_updatePanGestureRecognizer:(id)a3 changedAnimations:(id)a4 endAnimations:(id)a5;
- (void)panGestureRecognizerDidPan:(id)a3;
@end

@implementation SiriSharedUIPanDismissalGestureRecognizer

- (SiriSharedUIPanDismissalGestureRecognizer)initWithDismissalDelegate:(id)a3 dismissalStyle:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SiriSharedUIPanDismissalGestureRecognizer;
  v7 = [(SiriSharedUIPanDismissalGestureRecognizer *)&v10 initWithTarget:self action:sel_panGestureRecognizerDidPan_];
  v8 = v7;
  if (v7)
  {
    [(SiriSharedUIPanDismissalGestureRecognizer *)v7 setDismissalDelegate:v6];
    [(SiriSharedUIPanDismissalGestureRecognizer *)v8 setDismissalStyle:a4];
    [(SiriSharedUIPanDismissalGestureRecognizer *)v8 setDelegate:v8];
    [(SiriSharedUIPanDismissalGestureRecognizer *)v8 _preventHighlightingUntilGestureFaills];
  }

  return v8;
}

- (SiriSharedUIPanDismissalGestureRecognizer)initWithDismissalDelegate:(id)a3 dismissalStyle:(int64_t)a4 rtlProvider:(id)a5
{
  v8 = a5;
  v9 = [(SiriSharedUIPanDismissalGestureRecognizer *)self initWithDismissalDelegate:a3 dismissalStyle:a4];
  if (v9)
  {
    v10 = [v8 copy];
    rtlProvider = v9->_rtlProvider;
    v9->_rtlProvider = v10;
  }

  return v9;
}

- (void)panGestureRecognizerDidPan:(id)a3
{
  v4 = a3;
  v5 = v4;
  dismissalStyle = self->_dismissalStyle;
  if (dismissalStyle == 2)
  {
    v7 = v4;
    v4 = [(SiriSharedUIPanDismissalGestureRecognizer *)self _handlePanWithRubberBandUpDownDismissTrailing:v4 requiredDirection:0];
  }

  else
  {
    if (dismissalStyle != 1)
    {
      goto LABEL_6;
    }

    v7 = v4;
    v4 = [(SiriSharedUIPanDismissalGestureRecognizer *)self _handlePanWithRubberBandDownDismissUp:v4 requiredDirection:1];
  }

  v5 = v7;
LABEL_6:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_handlePanWithRubberBandDownDismissUp:(id)a3 requiredDirection:(int64_t)a4
{
  v5 = a3;
  v6 = [(SiriSharedUIPanDismissalGestureRecognizer *)self view];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(SiriSharedUIPanDismissalGestureRecognizer *)self view];
  [v5 translationInView:v15];
  v17 = v16;
  v19 = v18;

  *&v31.origin.x = v8;
  *&v31.origin.y = v10;
  *&v31.size.width = v12;
  *&v31.size.height = v14;
  Height = CGRectGetHeight(v31);
  v21 = [(SiriSharedUIPanDismissalGestureRecognizer *)self view];
  [v5 velocityInView:v21];
  v24 = v23;
  v25 = v22;

  if ([v5 state] == 1)
  {
    *&self->_initialPosition.x = v8;
    *&self->_initialPosition.y = v10;
  }

  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __101__SiriSharedUIPanDismissalGestureRecognizer__handlePanWithRubberBandDownDismissUp_requiredDirection___block_invoke;
  v28[3] = &unk_278354970;
  objc_copyWeak(v29, &location);
  v29[1] = v8;
  v29[2] = v10;
  v29[3] = v12;
  v29[4] = v14;
  v29[5] = v17;
  v29[6] = v19;
  v29[7] = *&Height;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __101__SiriSharedUIPanDismissalGestureRecognizer__handlePanWithRubberBandDownDismissUp_requiredDirection___block_invoke_2;
  v26[3] = &unk_278354998;
  objc_copyWeak(v27, &location);
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v17;
  v27[4] = v19;
  v27[5] = v8;
  v27[6] = v10;
  v27[7] = v12;
  v27[8] = v14;
  v27[9] = *&Height;
  [(SiriSharedUIPanDismissalGestureRecognizer *)self _updatePanGestureRecognizer:v5 changedAnimations:v28 endAnimations:v26];
  objc_destroyWeak(v27);
  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
}

void __101__SiriSharedUIPanDismissalGestureRecognizer__handlePanWithRubberBandDownDismissUp_requiredDirection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 80);
    v16 = WeakRetained;
    v7 = [WeakRetained initialPosition];
    v9 = v8;
    v10 = *(a1 + 80);
    if (v6 > 0.0)
    {
      v10 = SiriSharedUIConstrainValueWithRubberBand(v7, v10, 220.0);
    }

    v11 = v9 + v10;
    v18.origin.x = v3;
    v18.origin.y = v11;
    v18.size.width = v4;
    v18.size.height = v5;
    v12 = fmin((CGRectGetMinY(v18) + *(a1 + 88)) / *(a1 + 88), 1.0);
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = [v16 view];
    [v14 setFrame:{v3, v11, v4, v5}];

    v15 = [v16 view];
    [v15 setAlpha:v13];

    WeakRetained = v16;
  }
}

void __101__SiriSharedUIPanDismissalGestureRecognizer__handlePanWithRubberBandDownDismissUp_requiredDirection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    v16 = WeakRetained;
    [WeakRetained _contentScaleFactor];
    v5 = -(SiriSharedUIProjectedTranslationWithVelocity(v3, v4) + *(a1 + 64));
    v6 = CGRectGetHeight(*(a1 + 72)) * 0.5;
    v7 = *(a1 + 72);
    v8 = *(a1 + 88);
    v9 = *(a1 + 96);
    if (v6 >= v5)
    {
      [v16 initialPosition];
      v10 = v12;
      v11 = 1.0;
    }

    else
    {
      v10 = -*(a1 + 104);
      v11 = 0.0;
    }

    v13 = [v16 view];
    [v13 setFrame:{v7, v10, v8, v9}];

    v14 = [v16 view];
    [v14 setAlpha:v11];

    v15 = [v16 dismissalDelegate];
    [v15 dismissalGestureRecognizerDidFinish:v16 shouldDismiss:v6 < v5];

    WeakRetained = v16;
  }
}

- (void)_handlePanWithRubberBandUpDownDismissTrailing:(id)a3 requiredDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(SiriSharedUIPanDismissalGestureRecognizer *)self view];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(SiriSharedUIPanDismissalGestureRecognizer *)self _windowBounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v40 = v9;
  v50.origin.x = v9;
  *&v50.origin.y = v11;
  *&v50.size.width = v13;
  *&v50.size.height = v15;
  Width = CGRectGetWidth(v50);
  v24 = [(SiriSharedUIPanDismissalGestureRecognizer *)self rtlProvider];
  if (!v24)
  {
    if (SiriSharedUILanguageIsRTL())
    {
      goto LABEL_3;
    }

LABEL_5:
    v51.origin.x = v17;
    v51.origin.y = v19;
    v51.size.width = v21;
    v51.size.height = v23;
    v28 = 0;
    v42 = CGRectGetWidth(v51) - Width;
    goto LABEL_6;
  }

  v25 = v24;
  v26 = [(SiriSharedUIPanDismissalGestureRecognizer *)self rtlProvider];
  v27 = v26[2]();

  if ((v27 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v42 = 0.0;
  v28 = 1;
LABEL_6:
  v29 = [(SiriSharedUIPanDismissalGestureRecognizer *)self view];
  [v6 velocityInView:v29];
  v31 = v30;
  v33 = v32;

  v34 = [(SiriSharedUIPanDismissalGestureRecognizer *)self view];
  [v6 translationInView:v34];
  v36 = v35;
  v38 = v37;

  if ([v6 state] == 1 && (v39 = fabs(*&v33) > fabs(*&v31), self->_initialDirection = v39, self->_initialPosition.x = v40, *&self->_initialPosition.y = v11, v39 != a4))
  {
    [v6 setState:4];
  }

  else
  {
    objc_initWeak(&location, self);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __109__SiriSharedUIPanDismissalGestureRecognizer__handlePanWithRubberBandUpDownDismissTrailing_requiredDirection___block_invoke;
    v46[3] = &unk_2783549C0;
    objc_copyWeak(v47, &location);
    v47[1] = *&v40;
    v47[2] = v11;
    v47[3] = v13;
    v47[4] = v15;
    v47[5] = v36;
    v47[6] = v38;
    v48 = v28;
    v47[7] = *&v42;
    v47[8] = *&Width;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __109__SiriSharedUIPanDismissalGestureRecognizer__handlePanWithRubberBandUpDownDismissTrailing_requiredDirection___block_invoke_2;
    v43[3] = &unk_2783549E8;
    objc_copyWeak(v44, &location);
    v44[1] = *&v40;
    v44[2] = v11;
    v44[3] = v13;
    v44[4] = v15;
    v44[5] = v31;
    v44[6] = v33;
    v44[7] = v36;
    v44[8] = v38;
    v45 = v28;
    v44[9] = *&Width;
    v44[10] = *&v42;
    [(SiriSharedUIPanDismissalGestureRecognizer *)self _updatePanGestureRecognizer:v6 changedAnimations:v46 endAnimations:v43];
    objc_destroyWeak(v44);
    objc_destroyWeak(v47);
    objc_destroyWeak(&location);
  }
}

void __109__SiriSharedUIPanDismissalGestureRecognizer__handlePanWithRubberBandUpDownDismissTrailing_requiredDirection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v24 = WeakRetained;
    v7 = [WeakRetained initialDirection];
    if (v7)
    {
      if (v7 == 1)
      {
        if (*(a1 + 80) <= 0.0)
        {
          v8 = -1.0;
        }

        else
        {
          v8 = 1.0;
        }

        v9 = [v24 initialPosition];
        v11 = v10;
        v12 = SiriSharedUIConstrainValueWithRubberBand(v9, fabs(*(a1 + 80)), 220.0);
        v13 = v24;
        v4 = v11 + v8 * v12;
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0.0;
      if (((*(a1 + 72) > 0.0) ^ *(a1 + 104)))
      {
        v15 = *(a1 + 72);
      }

      else
      {
        v15 = 0.0;
      }

      [v24 initialPosition];
      v3 = v15 + v16;
      v26.origin.x = v3;
      v26.origin.y = v4;
      v26.size.width = v5;
      v26.size.height = v6;
      MinX = CGRectGetMinX(v26);
      v18 = *(a1 + 88);
      v19 = v18 - MinX;
      v20 = MinX - v18;
      if (*(a1 + 104))
      {
        v20 = v19;
      }

      v21 = fmin((*(a1 + 96) - v20) / *(a1 + 96), 1.0);
      if (v21 >= 0.0)
      {
        v14 = v21;
      }

      v22 = [v24 view];
      [v22 setAlpha:v14];
    }

    v13 = v24;
LABEL_17:
    v23 = [v13 view];
    [v23 setFrame:{v3, v4, v5, v6}];

    WeakRetained = v24;
  }
}

void __109__SiriSharedUIPanDismissalGestureRecognizer__handlePanWithRubberBandUpDownDismissTrailing_requiredDirection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v24 = WeakRetained;
    v7 = [WeakRetained initialDirection];
    if (v7)
    {
      if (v7 == 1)
      {
        [v24 initialPosition];
        v3 = v8;
      }

      v9 = 0;
      goto LABEL_14;
    }

    v10 = *(a1 + 72);
    [v24 _contentScaleFactor];
    v12 = SiriSharedUIProjectedTranslationWithVelocity(v10, v11) + *(a1 + 88);
    v13 = *(a1 + 120);
    v14 = *(a1 + 104);
    [v24 initialPosition];
    v3 = v15;
    if (v13 == 1)
    {
      if (v12 >= v14 * -0.5)
      {
LABEL_8:
        v9 = 0;
        v4 = *(a1 + 112);
        v16 = 1.0;
LABEL_13:
        v21 = [v24 view];
        [v21 setAlpha:v16];

LABEL_14:
        v22 = [v24 view];
        [v22 setFrame:{v4, v3, v5, v6}];

        v23 = [v24 dismissalDelegate];
        [v23 dismissalGestureRecognizerDidFinish:v24 shouldDismiss:v9];

        WeakRetained = v24;
        goto LABEL_15;
      }
    }

    else if (v12 <= v14 * 0.5)
    {
      goto LABEL_8;
    }

    v18 = *(a1 + 104);
    v17 = *(a1 + 112);
    v19 = v17 + v18;
    v16 = 0.0;
    v20 = v17 - v18;
    v9 = 1;
    if (*(a1 + 120) == 1)
    {
      v4 = v20;
    }

    else
    {
      v4 = v19;
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)_updatePanGestureRecognizer:(id)a3 changedAnimations:(id)a4 endAnimations:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if ([v10 state] == 2)
  {
    [(SiriSharedUIPanDismissalGestureRecognizer *)self _runAnimationsWithPreferredStyle:v8];
  }

  if ([v10 state] == 3 || objc_msgSend(v10, "state") == 4)
  {
    [(SiriSharedUIPanDismissalGestureRecognizer *)self _runAnimationsWithPreferredStyle:v9];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(SiriSharedUIPanDismissalGestureRecognizer *)self dismissalDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SiriSharedUIPanDismissalGestureRecognizer *)self dismissalDelegate];
    v9 = [v8 shouldBeginDismissalGestureRecognizer:self withTouch:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (double)_contentScaleFactor
{
  v2 = [(SiriSharedUIPanDismissalGestureRecognizer *)self view];
  [v2 contentScaleFactor];
  v4 = v3;

  return v4;
}

- (CGRect)_windowBounds
{
  v2 = [(SiriSharedUIPanDismissalGestureRecognizer *)self view];
  v3 = [v2 window];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (SiriSharedUIPanDismissalGestureRecognizerDelegate)dismissalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissalDelegate);

  return WeakRetained;
}

- (CGPoint)initialPosition
{
  x = self->_initialPosition.x;
  y = self->_initialPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end