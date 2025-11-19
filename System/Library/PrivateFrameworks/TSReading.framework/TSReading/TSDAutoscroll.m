@interface TSDAutoscroll
+ (void)startAutoscroll:(id)a3 unscaledPoint:(CGPoint)a4;
- (BOOL)startAutoscroll:(id)a3 unscaledPoint:(CGPoint)a4 directions:(int)a5 repeatInterval:(double)a6;
- (CGPoint)lastAutoscrollDelta;
- (CGPoint)point;
- (unint64_t)p_deltaForCount:(unint64_t)a3;
- (void)dealloc;
- (void)invalidate;
- (void)p_cleanup;
- (void)setTarget:(id)a3;
- (void)timerFired:(id)a3;
@end

@implementation TSDAutoscroll

- (void)dealloc
{
  self->mTarget = 0;
  [(TSDAutoscroll *)self p_cleanup];
  v3.receiver = self;
  v3.super_class = TSDAutoscroll;
  [(TSDAutoscroll *)&v3 dealloc];
}

- (void)setTarget:(id)a3
{
  mTarget = self->mTarget;
  if (mTarget != a3)
  {

    self->mTarget = a3;
  }
}

+ (void)startAutoscroll:(id)a3 unscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [a3 icc];
  [v7 viewScale];
  v9 = 20.0 / v8;
  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [a3 unscaledStartAutoscrollThreshold];
    v11 = v10;
    [v7 viewScale];
    v9 = v11 / v12;
  }

  [v7 visibleUnscaledRectForAutoscroll];
  v57 = CGRectInset(v56, v9, v9);
  v13 = v57.origin.x;
  v14 = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  v55.x = x;
  v55.y = y;
  if (CGRectContainsPoint(v57, v55) || ![v7 allowAutoscroll])
  {
    goto LABEL_45;
  }

  if (![a3 autoscroll])
  {
    v17 = objc_alloc_init(TSDAutoscroll);
    [a3 setAutoscroll:v17];
  }

  v18 = [objc_msgSend(v7 "canvasView")];
  [v7 contentOffset];
  v53 = v19;
  v52 = v20;
  [objc_msgSend(objc_msgSend(v7 "layerHost")];
  v22 = v21;
  v24 = v23;
  [v7 viewScale];
  v50 = TSDMultiplySizeScalar(v22, v24, 1.0 / v25);
  v51 = v26;
  [v18 scrollableAreaBounds];
  v28 = v27;
  v30 = v29;
  [v7 viewScale];
  v32 = TSDMultiplySizeScalar(v28, v30, 1.0 / v31);
  v34 = v33;
  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v35 = [a3 allowedAutoscrollDirections];
  }

  else
  {
    v35 = 15;
  }

  v36 = [v7 allowNegativeAutoscroll];
  v37 = v36;
  v38 = v53;
  if (v53 > 0.0)
  {
    v39 = 1;
  }

  else
  {
    v39 = v36;
  }

  if ((v35 & 1) != 0 && v39 && (v58.origin.x = v13, v58.origin.y = v14, v58.size.width = width, v58.size.height = height, MinX = CGRectGetMinX(v58), v38 = v53, x < MinX))
  {
    v41 = 0;
    v42 = 1;
  }

  else
  {
    v42 = 0;
    if (v38 >= 0.0)
    {
      v43 = 1;
    }

    else
    {
      v43 = v37;
    }

    v41 = 1;
    if ((v35 & 2) != 0 && v43)
    {
      v44 = v38 < v50 - v32;
      v45 = v52;
      if (v44)
      {
        v59.origin.x = v13;
        v59.origin.y = v14;
        v59.size.width = width;
        v59.size.height = height;
        if (x >= CGRectGetMaxX(v59))
        {
          v41 = 0;
          v42 = 2;
        }

        else
        {
          v42 = 0;
        }
      }

      goto LABEL_30;
    }
  }

  v45 = v52;
LABEL_30:
  if (v45 > 0.0)
  {
    v46 = 1;
  }

  else
  {
    v46 = v37;
  }

  if ((v35 & 4) != 0)
  {
    if (v46)
    {
      v60.origin.x = v13;
      v60.origin.y = v14;
      v60.size.width = width;
      v60.size.height = height;
      if (y < CGRectGetMinY(v60))
      {
        v42 = v42 | 4;
        goto LABEL_49;
      }
    }
  }

  if (v45 >= 0.0)
  {
    v47 = 1;
  }

  else
  {
    v47 = v37;
  }

  if ((v35 & 8) != 0)
  {
    if (v47)
    {
      if (v45 < v51 - v34)
      {
        v61.origin.x = v13;
        v61.origin.y = v14;
        v61.size.width = width;
        v61.size.height = height;
        if (y >= CGRectGetMaxY(v61))
        {
          v42 = v42 | 8;
          goto LABEL_49;
        }
      }
    }
  }

  if ((v41 & 1) == 0)
  {
LABEL_49:
    [objc_msgSend(a3 "autoscroll")];
    v49 = [objc_msgSend(v7 "layerHost")];
    [v7 convertUnscaledToBoundsPoint:{x, y}];
    [v49 convertPoint:0 toView:?];

    [a3 setAutoscrollPoint:?];
    return;
  }

LABEL_45:
  v48 = [a3 autoscroll];

  [v48 invalidate];
}

- (BOOL)startAutoscroll:(id)a3 unscaledPoint:(CGPoint)a4 directions:(int)a5 repeatInterval:(double)a6
{
  v7 = *&a5;
  y = a4.y;
  x = a4.x;
  if (self->mTimer && [(TSDAutoscroll *)self target]== a3)
  {
    [(TSDAutoscroll *)self point];
    if (v13 == x && v12 == y && [(TSDAutoscroll *)self directions]== v7)
    {
      [(TSDAutoscroll *)self repeatInterval];
      if (v15 == a6)
      {
        return 1;
      }
    }
  }

  v17 = objc_opt_respondsToSelector();
  v18 = a6 == 0.0 || v7 == 0;
  if (v18 || (v17 & 1) == 0)
  {
    [(TSDAutoscroll *)self invalidate];
    return 0;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:0.0];
    mTimer = self->mTimer;
    if (mTimer)
    {
      [(NSTimer *)mTimer setFireDate:v19];
    }

    else
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->mLastFired = v21;
      self->mTimer = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v19 interval:self target:sel_timerFired_ selector:0 userInfo:1 repeats:a6];
      [objc_msgSend(MEMORY[0x277CBEB88] "currentRunLoop")];
    }

    if ([(TSDAutoscroll *)self directions]!= v7)
    {
      [(TSDAutoscroll *)self setCount:0];
    }

    [(TSDAutoscroll *)self setTarget:a3];
    [(TSDAutoscroll *)self setPoint:x, y];
    [(TSDAutoscroll *)self setDirections:v7];
    [(TSDAutoscroll *)self setRepeatInterval:a6];
    v16 = 1;
    [(TSDAutoscroll *)self setActive:1];
  }

  return v16;
}

- (void)p_cleanup
{
  mTimer = self->mTimer;
  if (mTimer)
  {
    self->mTimer = 0;
    [(NSTimer *)mTimer invalidate];
  }

  [(TSDAutoscrollDelegate *)[(TSDAutoscroll *)self target] autoscrollWillNotStart];
  [(TSDAutoscroll *)self setTarget:0];
  [(TSDAutoscroll *)self setPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(TSDAutoscroll *)self setDirections:0];
  [(TSDAutoscroll *)self setRepeatInterval:0.0];
  [(TSDAutoscroll *)self setActive:0];

  [(TSDAutoscroll *)self setCount:0];
}

- (void)invalidate
{
  if (pthread_main_np())
  {

    [(TSDAutoscroll *)self p_cleanup];
  }

  else
  {

    [(TSDAutoscroll *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (unint64_t)p_deltaForCount:(unint64_t)a3
{
  if (self->mTarget && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(TSDAutoscrollDelegate *)self->mTarget maximumAutoscrollDeltaForCount:a3];
  }

  else
  {
    v5 = 48.0;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6 - self->mLastFired;
  [(TSDAutoscroll *)self repeatInterval];
  result = (v5 * (v7 / v8));
  if (a3 <= 0x18)
  {
    return ((1.0 / (26 - a3)) * result);
  }

  return result;
}

- (void)timerFired:(id)a3
{
  [(TSDAutoscroll *)self setCount:[(TSDAutoscroll *)self count]+ 1];
  if ([(TSDAutoscroll *)self targetIsAutoscrolling])
  {
    return;
  }

  v4 = [(TSDAutoscrollDelegate *)self->mTarget icc];
  v5 = [objc_msgSend(v4 "canvasView")];
  [v4 contentOffset];
  v7 = v6;
  v9 = v8;
  [objc_msgSend(objc_msgSend(v4 "layerHost")];
  v11 = v10;
  v13 = v12;
  [v4 viewScale];
  v15 = v14;
  [objc_msgSend(objc_msgSend(v4 "layerHost")];
  v16 = 1.0 / v15;
  v19 = TSDMultiplySizeScalar(v17, v18, v16);
  v49 = v20;
  [v5 bounds];
  v23 = TSDMultiplySizeScalar(v21, v22, v16);
  v25 = v24;
  v26 = TSDMultiplyPointScalar(v13, v11, v16);
  v28 = v27;
  v29 = [(TSDAutoscroll *)self directions];
  if (self->mTarget)
  {
    if (objc_opt_respondsToSelector())
    {
      v30 = [(TSDAutoscrollDelegate *)self->mTarget allowedAutoscrollDirections];
      if ((v29 & ~v30) != 0)
      {
        self->mCount = 0;
        [(TSDAutoscroll *)self setDirections:v30 & v29];
        v29 = [(TSDAutoscroll *)self directions];
      }
    }
  }

  v31 = [(TSDAutoscroll *)self p_deltaForCount:[(TSDAutoscroll *)self count]];
  if ((v29 & 1) == 0)
  {
    if ((v29 & 2) != 0)
    {
      v32 = v19 - v23 + v26;
      if (v7 < v32)
      {
        v33 = v7 + v31;
        v34 = v32;
        v35 = fminf(v33, v34);
        goto LABEL_12;
      }

      v29 = v29 & 0xFFFFFFFC;
    }

LABEL_18:
    v38 = v7;
    if ((v29 & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (v7 <= v26)
  {
    v29 = v29 & 0xFFFFFFFE;
    goto LABEL_18;
  }

  v36 = v7 - v31;
  v37 = v26;
  v35 = fmaxf(v36, v37);
LABEL_12:
  v38 = v35;
  if ((v29 & 4) != 0)
  {
LABEL_13:
    if (v9 > v28)
    {
      v39 = v9 - v31;
      v40 = v28;
      v41 = fmaxf(v39, v40);
LABEL_22:
      v45 = v41;
      goto LABEL_25;
    }

    v29 = v29 & 0xFFFFFFFB;
    goto LABEL_24;
  }

LABEL_19:
  if ((v29 & 8) != 0)
  {
    v42 = v49 - v25 + v28;
    if (v9 < v42)
    {
      v43 = v9 + v31;
      v44 = v42;
      v41 = fminf(v43, v44);
      goto LABEL_22;
    }

    v29 = v29 & 0xFFFFFFF3;
  }

LABEL_24:
  v45 = v9;
  if (!v29)
  {

    [(TSDAutoscroll *)self invalidate];
    return;
  }

LABEL_25:
  [(TSDAutoscroll *)self target];
  if (objc_opt_respondsToSelector())
  {
    [(TSDAutoscroll *)self setTargetIsAutoscrolling:1];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __28__TSDAutoscroll_timerFired___block_invoke;
    v50[3] = &unk_279D47708;
    v50[4] = self;
    v50[5] = v4;
    if (([(TSDAutoscrollDelegate *)[(TSDAutoscroll *)self target] autoscrollWithDirection:v29 proposedContentOffset:v50 completionBlock:v38, v45]& 1) != 0)
    {
      return;
    }

    [(TSDAutoscroll *)self setTargetIsAutoscrolling:0];
  }

  [v4 setContentOffset:0 animated:{v38, v45}];
  v46 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v46 interactiveCanvasController:v4 didScrollForAutoscroll:self];
  }

  self->mLastAutoscrollDelta.x = TSDSubtractPoints(v38, v45, v7);
  self->mLastAutoscrollDelta.y = v47;
  [(TSDAutoscrollDelegate *)self->mTarget updateAfterAutoscroll:self];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->mLastFired = v48;
}

uint64_t __28__TSDAutoscroll_timerFired___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTargetIsAutoscrolling:0];
  v2 = [*(a1 + 40) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 interactiveCanvasController:*(a1 + 40) didScrollForAutoscroll:*(a1 + 32)];
  }

  v3 = *(*(a1 + 32) + 8);

  return [v3 updateAfterAutoscroll:?];
}

- (CGPoint)point
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastAutoscrollDelta
{
  x = self->mLastAutoscrollDelta.x;
  y = self->mLastAutoscrollDelta.y;
  result.y = y;
  result.x = x;
  return result;
}

@end