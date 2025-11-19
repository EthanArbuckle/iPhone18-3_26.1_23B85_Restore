@interface SXMoveInComponentAnimationHandler
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)startAnimation;
- (void)updateAnimationWithFactor:(double)a3;
@end

@implementation SXMoveInComponentAnimationHandler

- (void)prepareAnimation
{
  v45.receiver = self;
  v45.super_class = SXMoveInComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v45 prepareAnimation];
  v3 = [(SXComponentAnimationHandler *)self component];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    v4 = [v3 layer];
    v5 = *(MEMORY[0x1E69792E8] + 80);
    *&v44.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v44.m33 = v5;
    v6 = *(MEMORY[0x1E69792E8] + 112);
    *&v44.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v44.m43 = v6;
    v7 = *(MEMORY[0x1E69792E8] + 16);
    *&v44.m11 = *MEMORY[0x1E69792E8];
    *&v44.m13 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 48);
    *&v44.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v44.m23 = v8;
    [v4 setTransform:&v44];
    goto LABEL_4;
  }

  v4 = [v3 viewport];
  [v3 absoluteFrame];
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  v39 = CGRectGetWidth(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  MinX = CGRectGetMinX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MinY = CGRectGetMinY(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v13 = CGRectGetMinX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v14 = CGRectGetHeight(v50);
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  MaxX = CGRectGetMaxX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v41 = CGRectGetMinY(v52);
  [v4 bounds];
  v15 = CGRectGetWidth(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v16 = v15 - CGRectGetMaxX(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v17 = CGRectGetHeight(v55);
  v18 = [v3 presentationDelegate];
  v19 = [v18 componentController];
  v20 = [v19 componentsInRect:{0.0, MinY, v13, v14}];
  v21 = [v20 count];

  v22 = [v3 presentationDelegate];
  v23 = [v22 componentController];
  v24 = [v23 componentsInRect:{MaxX, v41, v16, v17}];
  v25 = [v24 count];

  v26 = [(SXComponentAnimationHandler *)self animation];
  v27 = [v26 preferredStartingPosition];

  if (!v21 && v27 == 1)
  {
    goto LABEL_7;
  }

  v29 = [(SXComponentAnimationHandler *)self animation];
  v30 = [v29 preferredStartingPosition];

  if (!v25 && v30 == 2)
  {
    goto LABEL_28;
  }

  v31 = [(SXComponentAnimationHandler *)self animation];
  v32 = [v31 preferredStartingPosition];

  if (v32 || !v21)
  {
    if (!v32)
    {
LABEL_7:
      v28 = -(v39 + MinX);
      goto LABEL_29;
    }

    v33 = 2 * (v25 == 0);
  }

  else
  {
    if (!v25)
    {
      v33 = 2;
      goto LABEL_25;
    }

    v33 = 0;
  }

  if (v25)
  {
    v34 = v21 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (!v21)
  {
    v35 = 1;
  }

  if (v35)
  {
    v33 = v34;
  }

LABEL_25:
  if (v33 != 2)
  {
    if (v33 != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

LABEL_28:
  [v4 bounds];
  v36 = CGRectGetWidth(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v28 = v36 - CGRectGetMinX(v57);
LABEL_29:
  if (v28 != 0.0)
  {
    memset(&v44, 0, sizeof(v44));
    CATransform3DMakeTranslation(&v44, v28, 0.0, 0.0);
    v37 = [v3 layer];
    v43 = v44;
    [v37 setTransform:&v43];

    [(SXMoveInComponentAnimationHandler *)self setStartXOffset:v28];
  }

LABEL_4:
}

- (void)updateAnimationWithFactor:(double)a3
{
  v10.receiver = self;
  v10.super_class = SXMoveInComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v10 updateAnimationWithFactor:?];
  [(SXMoveInComponentAnimationHandler *)self startXOffset];
  memset(&v9, 0, sizeof(v9));
  CATransform3DMakeTranslation(&v9, (1.0 - a3) * v5, 0.0, 0.0);
  v6 = [(SXComponentAnimationHandler *)self component];
  v7 = [v6 layer];
  v8 = v9;
  [v7 setTransform:&v8];
}

- (void)startAnimation
{
  if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsReduceMotionEnabled())
  {
    v17.receiver = self;
    v17.super_class = SXMoveInComponentAnimationHandler;
    [(SXComponentAnimationHandler *)&v17 startAnimation];
    v3 = [(SXComponentAnimationHandler *)self component];
    v4 = [v3 layer];
    v5 = [v4 presentationLayer];

    v6 = [v5 valueForKeyPath:@"transform"];
    v7 = *(MEMORY[0x1E69792E8] + 80);
    v16[4] = *(MEMORY[0x1E69792E8] + 64);
    v16[5] = v7;
    v8 = *(MEMORY[0x1E69792E8] + 112);
    v16[6] = *(MEMORY[0x1E69792E8] + 96);
    v16[7] = v8;
    v9 = *(MEMORY[0x1E69792E8] + 16);
    v16[0] = *MEMORY[0x1E69792E8];
    v16[1] = v9;
    v10 = *(MEMORY[0x1E69792E8] + 48);
    v16[2] = *(MEMORY[0x1E69792E8] + 32);
    v16[3] = v10;
    v11 = [MEMORY[0x1E696B098] valueWithCATransform3D:v16];
    v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    [v12 setDelegate:self];
    [v12 setFromValue:v6];
    [v12 setToValue:v11];
    v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v12 setTimingFunction:v13];

    [v12 setFillMode:*MEMORY[0x1E69797E8]];
    [v12 setRemovedOnCompletion:0];
    [v12 setDuration:0.6];
    v14 = [(SXComponentAnimationHandler *)self component];
    v15 = [v14 layer];
    [v15 addAnimation:v12 forKey:@"moveIn"];
  }
}

- (void)finishAnimation
{
  v3 = [(SXComponentAnimationHandler *)self component];
  v4 = [v3 layer];
  [v4 removeAnimationForKey:@"moveIn"];

  v5 = [(SXComponentAnimationHandler *)self component];
  v6 = [v5 layer];
  v7 = *(MEMORY[0x1E69792E8] + 80);
  v12[4] = *(MEMORY[0x1E69792E8] + 64);
  v12[5] = v7;
  v8 = *(MEMORY[0x1E69792E8] + 112);
  v12[6] = *(MEMORY[0x1E69792E8] + 96);
  v12[7] = v8;
  v9 = *(MEMORY[0x1E69792E8] + 16);
  v12[0] = *MEMORY[0x1E69792E8];
  v12[1] = v9;
  v10 = *(MEMORY[0x1E69792E8] + 48);
  v12[2] = *(MEMORY[0x1E69792E8] + 32);
  v12[3] = v10;
  [v6 setTransform:v12];

  v11.receiver = self;
  v11.super_class = SXMoveInComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v11 finishAnimation];
}

@end