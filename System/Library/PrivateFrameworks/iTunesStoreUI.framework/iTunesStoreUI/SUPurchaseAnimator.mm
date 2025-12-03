@interface SUPurchaseAnimator
+ (void)performHopAnimationForView:(id)view relativeToView:(id)toView finalAlpha:(float)alpha scale:(float)scale;
+ (void)performHopAnimationForView:(id)view relativeToView:(id)toView tabBarController:(id)controller finalAlpha:(float)alpha scale:(float)scale;
@end

@implementation SUPurchaseAnimator

+ (void)performHopAnimationForView:(id)view relativeToView:(id)toView finalAlpha:(float)alpha scale:(float)scale
{
  v11 = +[SUClientDispatch tabBarController];
  *&v12 = alpha;
  *&v13 = scale;

  [self performHopAnimationForView:view relativeToView:toView tabBarController:v11 finalAlpha:v12 scale:v13];
}

+ (void)performHopAnimationForView:(id)view relativeToView:(id)toView tabBarController:(id)controller finalAlpha:(float)alpha scale:(float)scale
{
  view = [controller view];
  if (view)
  {
    v14 = view;
    if (view)
    {
      alphaCopy = alpha;
      [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      [v14 bounds];
      v51 = v16;
      v52 = v15;
      [view frame];
      [v14 convertRect:toView fromView:?];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [view setFrame:?];
      [v14 addSubview:view];
      tabBar = [controller tabBar];
      [tabBar bounds];
      v27 = v26;
      v54 = v28;
      v29 = [objc_msgSend(tabBar "items")];
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

      if (scale < 0.0)
      {
        v34 = v22 / v31;
        if (v22 / v31 >= v24 / v54)
        {
          v34 = v24 / v54;
        }

        scale = v34;
      }

      animation = [MEMORY[0x1E6979390] animation];
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, v18 + ceil(v22 * 0.5), v20 + ceil(v24 * 0.5));
      objc_opt_class();
      v37 = 0x7FFFFFFFFFFFFFFFLL;
      if (objc_opt_isKindOfClass())
      {
        v37 = [controller indexOfViewControllerWithSectionType:2];
        if (v37 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = [controller indexOfViewControllerWithSectionType:6];
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

      v39 = v22 * scale;
      v40 = floorf(v39);
      v41 = (v50 - v29 * v31 - (v29 - 1) * v33) * 0.5;
      v42 = (v33 + v31) * v38;
      v43 = v40 * 0.5 + (v31 - v40) * 0.5;
      v44 = floorf(v41) + floorf(v42) + floorf(v43);
      v45 = v52 + v51 - v54 * 0.5;
      CGPathAddQuadCurveToPoint(Mutable, 0, v44, 0.0, v44, floorf(v45));
      [animation setKeyPath:@"position"];
      v46 = MEMORY[0x1E695DEC8];
      v47 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      LODWORD(v48) = 1.0;
      [animation setKeyTimes:{objc_msgSend(v46, "arrayWithObjects:", v47, objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v48), 0)}];
      [animation setPath:Mutable];
      [animation setDuration:0.5];
      [animation setCalculationMode:*MEMORY[0x1E69795A8]];
      [animation setFillMode:@"frozen"];
      [animation setRemovedOnCompletion:0];
      v49 = [[SUPurchaseAnimationDelegate alloc] initWithView:view];
      [animation setDelegate:v49];

      [objc_msgSend(view "layer")];
      CGPathRelease(Mutable);
      [MEMORY[0x1E69DD250] beginAnimations:0];
      [MEMORY[0x1E69DD250] setAnimationDuration:0.5];
      [view transform];
      v55 = v57;
      CGAffineTransformScale(&v56, &v55, scale, scale);
      v57 = v56;
      [view setTransform:&v56];
      [view setAlpha:alphaCopy];
      [MEMORY[0x1E69DD250] endAnimations];
    }
  }
}

@end