@interface SUPurchaseAnimator
+ (void)performHopAnimationForView:(id)a3 relativeToView:(id)a4 finalAlpha:(float)a5 scale:(float)a6;
+ (void)performHopAnimationForView:(id)a3 relativeToView:(id)a4 tabBarController:(id)a5 finalAlpha:(float)a6 scale:(float)a7;
@end

@implementation SUPurchaseAnimator

+ (void)performHopAnimationForView:(id)a3 relativeToView:(id)a4 finalAlpha:(float)a5 scale:(float)a6
{
  v11 = +[SUClientDispatch tabBarController];
  *&v12 = a5;
  *&v13 = a6;

  [a1 performHopAnimationForView:a3 relativeToView:a4 tabBarController:v11 finalAlpha:v12 scale:v13];
}

+ (void)performHopAnimationForView:(id)a3 relativeToView:(id)a4 tabBarController:(id)a5 finalAlpha:(float)a6 scale:(float)a7
{
  v13 = [a5 view];
  if (a3)
  {
    v14 = v13;
    if (v13)
    {
      v53 = a6;
      [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      [v14 bounds];
      v51 = v16;
      v52 = v15;
      [a3 frame];
      [v14 convertRect:a4 fromView:?];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [a3 setFrame:?];
      [v14 addSubview:a3];
      v25 = [a5 tabBar];
      [v25 bounds];
      v27 = v26;
      v54 = v28;
      v29 = [objc_msgSend(v25 "items")];
      v50 = v27;
      v30 = v27 / v29;
      v31 = floorf(v30);
      v32 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
      if (v32 == 1)
      {
        v33 = 30.0;
      }

      else
      {
        v33 = 0.0;
      }

      if (v32 == 1)
      {
        v31 = 80.0;
      }

      if (a7 < 0.0)
      {
        v34 = v22 / v31;
        if (v22 / v31 >= v24 / v54)
        {
          v34 = v24 / v54;
        }

        a7 = v34;
      }

      v35 = [MEMORY[0x1E6979390] animation];
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, v18 + ceil(v22 * 0.5), v20 + ceil(v24 * 0.5));
      objc_opt_class();
      v37 = 0x7FFFFFFFFFFFFFFFLL;
      if (objc_opt_isKindOfClass())
      {
        v37 = [a5 indexOfViewControllerWithSectionType:2];
        if (v37 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = [a5 indexOfViewControllerWithSectionType:6];
        }
      }

      if (v29 - 1 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v29 - 1;
      }

      v39 = v22 * a7;
      v40 = floorf(v39);
      v41 = (v50 - v29 * v31 - (v29 - 1) * v33) * 0.5;
      v42 = (v33 + v31) * v38;
      v43 = v40 * 0.5 + (v31 - v40) * 0.5;
      v44 = floorf(v41) + floorf(v42) + floorf(v43);
      v45 = v52 + v51 - v54 * 0.5;
      CGPathAddQuadCurveToPoint(Mutable, 0, v44, 0.0, v44, floorf(v45));
      [v35 setKeyPath:@"position"];
      v46 = MEMORY[0x1E695DEC8];
      v47 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      LODWORD(v48) = 1.0;
      [v35 setKeyTimes:{objc_msgSend(v46, "arrayWithObjects:", v47, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v48), 0)}];
      [v35 setPath:Mutable];
      [v35 setDuration:0.5];
      [v35 setCalculationMode:*MEMORY[0x1E69795A8]];
      [v35 setFillMode:@"frozen"];
      [v35 setRemovedOnCompletion:0];
      v49 = [[SUPurchaseAnimationDelegate alloc] initWithView:a3];
      [v35 setDelegate:v49];

      [objc_msgSend(a3 "layer")];
      CGPathRelease(Mutable);
      [MEMORY[0x1E69DD250] beginAnimations:0];
      [MEMORY[0x1E69DD250] setAnimationDuration:0.5];
      [a3 transform];
      v55 = v57;
      CGAffineTransformScale(&v56, &v55, a7, a7);
      v57 = v56;
      [a3 setTransform:&v56];
      [a3 setAlpha:v53];
      [MEMORY[0x1E69DD250] endAnimations];
    }
  }
}

@end